uint64_t RGBAf_sample_WF(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v86 = *(result + 80);
  v87 = *(result + 64);
  v88 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = (*(result + 152) - 16);
  v12 = *(result + 144) - 1;
  v13 = *(result + 260) - 1;
  v14 = *(result + 256) - 1;
  v15 = v5 + (v13 * v7) + 4 * v14;
  v85 = *(result + 188);
  v16 = v4 + (v13 * v6) + 4 * v14 - 4;
  v89 = *(result + 72);
  while (1)
  {
LABEL_2:
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v87;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v88;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_39;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v87;
        v26 = v24 | v85;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v89 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_39;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v87;
      v26 = v20 | v85;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v85;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_39:
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

  if (a2 <= v86)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v86;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_39;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v85;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v26 < 0x400000)
  {
    goto LABEL_39;
  }

  v37 = v27 >> 32;
  v38 = v4 + SHIDWORD(v27) * v6;
  v39 = (v32 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  if (v5)
  {
    v43 = v5 + v37 * v7 + v39;
    v44 = *(result + 40);
    if (v15 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v15;
    }

    if (v45 >= v44)
    {
      v44 = v45;
    }

    v46 = COERCE_FLOAT(bswap32(*v44));
  }

  else
  {
    v43 = 0;
    v46 = 1.0;
  }

  v47 = COERCE_FLOAT(bswap32(*v42));
  if (v8)
  {
    v48 = *(v8 + (v33 | v25));
LABEL_67:
    v62 = v48 & 0xF;
    v63 = HIBYTE(v48) & 3;
    if (v62 == 1)
    {
      v82 = (v40 + SBYTE1(v48) * v6);
      if (v16 < v82)
      {
        v82 = v16;
      }

      if (v82 < v41)
      {
        v82 = v41;
      }

      v78 = COERCE_FLOAT(bswap32(*v82));
      v79 = 1.0;
      if (v5)
      {
        v83 = (v43 + SBYTE1(v48) * v7);
        if (v15 < v83)
        {
          v83 = v15;
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
          v64 = v40 + 4 * SBYTE2(v48);
          if (v16 >= v64)
          {
            v65 = (v40 + 4 * SBYTE2(v48));
          }

          else
          {
            v65 = v16;
          }

          if (v65 < v41)
          {
            v65 = v41;
          }

          v66 = COERCE_FLOAT(bswap32(*v65));
          v67 = (v64 + SBYTE1(v48) * v6);
          if (v16 < v67)
          {
            v67 = v16;
          }

          if (v67 < v41)
          {
            v67 = v41;
          }

          v68 = COERCE_FLOAT(bswap32(*v67));
          v69 = 1.0;
          v70 = 1.0;
          if (v5)
          {
            v71 = v43 + 4 * SBYTE2(v48);
            v72 = *(result + 40);
            if (v15 >= v71)
            {
              v73 = (v43 + 4 * SBYTE2(v48));
            }

            else
            {
              v73 = v15;
            }

            if (v73 < v72)
            {
              v73 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v73));
            v74 = (v71 + SBYTE1(v48) * v7);
            if (v15 < v74)
            {
              v74 = v15;
            }

            if (v74 < v72)
            {
              v74 = *(result + 40);
            }

            v69 = COERCE_FLOAT(bswap32(*v74));
          }

          v75 = interpolate_waf[2 * v63 + 1];
          v76 = interpolate_waf[2 * ((v48 >> 28) & 3) + 1];
          v47 = (((v47 - (v47 * v75)) + (v66 * v75)) - (((v47 - (v47 * v75)) + (v66 * v75)) * v76)) + (((v66 - (v66 * v75)) + (v68 * v75)) * v76);
          v46 = (((v46 - (v46 * v75)) + (v70 * v75)) - (((v46 - (v46 * v75)) + (v70 * v75)) * v76)) + (((v70 - (v70 * v75)) + (v69 * v75)) * v76);
        }

        goto LABEL_44;
      }

      v77 = (v40 + 4 * SBYTE2(v48));
      if (v16 < v77)
      {
        v77 = v16;
      }

      if (v77 < v41)
      {
        v77 = v41;
      }

      v78 = COERCE_FLOAT(bswap32(*v77));
      v79 = 1.0;
      if (v5)
      {
        v80 = (v43 + 4 * SBYTE2(v48));
        if (v15 < v80)
        {
          v80 = v15;
        }

        if (v80 < *(result + 40))
        {
          v80 = *(result + 40);
        }

        v79 = COERCE_FLOAT(bswap32(*v80));
      }

      v81 = &interpolate_waf[2 * ((v48 >> 28) & 3)];
    }

    v84 = v81[1];
    v47 = (v47 - (v47 * v84)) + (v78 * v84);
    v46 = (v46 - (v46 * v84)) + (v79 * v84);
  }

LABEL_44:
  v11[4] = v47;
  v11[5] = v47;
  v11[6] = v47;
  v11[7] = v46;
  *(v12 + 1) = v26 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    v50 = v11 + 11;
    v51 = a4 - 1;
    a2 += v10;
    v52 = v86 - a2;
    a3 += v9;
    v53 = v88 - a3;
    --a4;
    while (1)
    {
      v54 = v12 + v49 + 1;
      v11 = v50 - 7;
      if (((a2 - v87) | v52 | (a3 - v89) | v53) < 0)
      {
        break;
      }

      v55 = v4 + SHIDWORD(a3) * v6;
      v56 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v55 + v56;
      v41 = *(result + 32);
      if (v16 >= v55 + v56)
      {
        v57 = (v55 + v56);
      }

      else
      {
        v57 = v16;
      }

      if (v57 < v41)
      {
        v57 = *(result + 32);
      }

      if (v5)
      {
        v43 = v5 + SHIDWORD(a3) * v7 + v56;
        v58 = *(result + 40);
        if (v15 >= v43)
        {
          v59 = v43;
        }

        else
        {
          v59 = v15;
        }

        if (v59 >= v58)
        {
          v58 = v59;
        }

        v46 = COERCE_FLOAT(bswap32(*v58));
      }

      else
      {
        v46 = 1.0;
      }

      v60 = bswap32(*v57);
      if (v8)
      {
        v48 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v48 & 0xF) != 0)
        {
          v47 = *&v60;
          v26 = -1;
          v12 = v54;
          goto LABEL_67;
        }
      }

      --a4;
      *(v50 - 2) = v60;
      *(v50 - 1) = v60;
      v61 = v12 + v49++;
      *(v50 - 3) = v60;
      *v50 = v46;
      v50 += 4;
      a2 += v10;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      *(v61 + 2) = -1;
      if (v51 == v49)
      {
        return result;
      }
    }

    v12 += v49 + 1;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_Wf(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v9 = *(result + 72);
  v84 = *(result + 80);
  v85 = *(result + 64);
  v86 = *(result + 88);
  v11 = *(result + 112);
  v10 = *(result + 120);
  v12 = (*(result + 152) - 16);
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256) - 1;
  v16 = v5 + (v14 * v7) + 4 * v15;
  v83 = *(result + 188);
  v17 = v4 + (v14 * v6) + 4 * v15 - 4;
  while (1)
  {
LABEL_2:
    if (a3 >= v9)
    {
      if (a3 <= v86)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v86;
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

        v27 = v25 | v83;
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

      v27 = v21 | v83;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v85)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v85 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v83;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v11;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v84)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_26;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v84;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_40;
  }

  if (v36 < v34)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v83;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_40;
  }

  v37 = v28 >> 32;
  v38 = v4 + SHIDWORD(v28) * v6;
  v39 = (v32 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v17 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v17;
  }

  if (v42 >= v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = *(result + 32);
  }

  if (v5)
  {
    v44 = v5 + v37 * v7 + v39;
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

    v47 = *v45;
  }

  else
  {
    v44 = 0;
    v47 = 1.0;
  }

  v48 = *v43;
  if (v8)
  {
    v49 = *(v8 + (v33 | v26));
LABEL_68:
    v60 = v49 & 0xF;
    v61 = HIBYTE(v49) & 3;
    if (v60 == 1)
    {
      v80 = (v40 + SBYTE1(v49) * v6);
      if (v17 < v80)
      {
        v80 = v17;
      }

      if (v80 < v41)
      {
        v80 = v41;
      }

      v76 = *v80;
      v77 = 1.0;
      if (v5)
      {
        v81 = (v44 + SBYTE1(v49) * v7);
        if (v16 < v81)
        {
          v81 = v16;
        }

        if (v81 < *(result + 40))
        {
          v81 = *(result + 40);
        }

        v77 = *v81;
      }

      v79 = &interpolate_waf[2 * v61];
    }

    else
    {
      if (v60 != 2)
      {
        if (v60 == 3)
        {
          v62 = v40 + 4 * SBYTE2(v49);
          if (v17 >= v62)
          {
            v63 = (v40 + 4 * SBYTE2(v49));
          }

          else
          {
            v63 = v17;
          }

          if (v63 < v41)
          {
            v63 = v41;
          }

          v64 = *v63;
          v65 = (v62 + SBYTE1(v49) * v6);
          if (v17 < v65)
          {
            v65 = v17;
          }

          if (v65 < v41)
          {
            v65 = v41;
          }

          v66 = *v65;
          v67 = 1.0;
          v68 = 1.0;
          if (v5)
          {
            v69 = v44 + 4 * SBYTE2(v49);
            v70 = *(result + 40);
            if (v16 >= v69)
            {
              v71 = (v44 + 4 * SBYTE2(v49));
            }

            else
            {
              v71 = v16;
            }

            if (v71 < v70)
            {
              v71 = *(result + 40);
            }

            v68 = *v71;
            v72 = (v69 + SBYTE1(v49) * v7);
            if (v16 < v72)
            {
              v72 = v16;
            }

            if (v72 < v70)
            {
              v72 = *(result + 40);
            }

            v67 = *v72;
          }

          v73 = interpolate_waf[2 * v61 + 1];
          v74 = interpolate_waf[2 * ((v49 >> 28) & 3) + 1];
          v48 = (((v48 - (v48 * v73)) + (v64 * v73)) - (((v48 - (v48 * v73)) + (v64 * v73)) * v74)) + (((v64 - (v64 * v73)) + (v66 * v73)) * v74);
          v47 = (((v47 - (v47 * v73)) + (v68 * v73)) - (((v47 - (v47 * v73)) + (v68 * v73)) * v74)) + (((v68 - (v68 * v73)) + (v67 * v73)) * v74);
        }

        goto LABEL_45;
      }

      v75 = (v40 + 4 * SBYTE2(v49));
      if (v17 < v75)
      {
        v75 = v17;
      }

      if (v75 < v41)
      {
        v75 = v41;
      }

      v76 = *v75;
      v77 = 1.0;
      if (v5)
      {
        v78 = (v44 + 4 * SBYTE2(v49));
        if (v16 < v78)
        {
          v78 = v16;
        }

        if (v78 < *(result + 40))
        {
          v78 = *(result + 40);
        }

        v77 = *v78;
      }

      v79 = &interpolate_waf[2 * ((v49 >> 28) & 3)];
    }

    v82 = v79[1];
    v48 = (v48 - (v48 * v82)) + (v76 * v82);
    v47 = (v47 - (v47 * v82)) + (v77 * v82);
  }

LABEL_45:
  v12[4] = v48;
  v12[5] = v48;
  v12[6] = v48;
  v12[7] = v47;
  *(v13 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    v51 = v12 + 11;
    a3 += v10;
    v52 = v86 - a3;
    a2 += v11;
    v53 = v84 - a2;
    while ((((a2 - v85) | v53 | (a3 - v9) | v52) & 0x8000000000000000) == 0)
    {
      v54 = v4 + SHIDWORD(a3) * v6;
      v55 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v54 + v55;
      v41 = *(result + 32);
      if (v17 >= v54 + v55)
      {
        v56 = (v54 + v55);
      }

      else
      {
        v56 = v17;
      }

      if (v56 < v41)
      {
        v56 = *(result + 32);
      }

      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v55;
        v57 = *(result + 40);
        if (v16 >= v44)
        {
          v58 = v44;
        }

        else
        {
          v58 = v16;
        }

        if (v58 >= v57)
        {
          v57 = v58;
        }

        v47 = *v57;
      }

      else
      {
        v47 = 1.0;
      }

      v48 = *v56;
      if (v8)
      {
        v49 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 = v51 - 7;
          a4 += ~v50;
          v27 = -1;
          goto LABEL_68;
        }
      }

      *(v51 - 3) = v48;
      *(v51 - 2) = v48;
      v59 = v13 + v50++;
      *(v51 - 1) = v48;
      *v51 = v47;
      v51 += 4;
      v52 -= v10;
      a2 += v11;
      v53 -= v11;
      a3 += v10;
      *(v59 + 2) = -1;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 = v51 - 7;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBF(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 72);
  v69 = *(result + 80);
  v70 = *(result + 64);
  v71 = *(result + 88);
  v15 = *(result + 112);
  v16 = *(result + 120);
  v17 = *(result + 152) - 16;
  v18 = *(result + 144) - 1;
  v19 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  v68 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v14)
    {
      if (a3 <= v71)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v71;
        v26 = v25 - a3 + (v24 >> 1);
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

        v29 = v27 | v68;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v14 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v68;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v70)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v70 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v68;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v15;
    a3 += v16;
    v17 += 16;
    *++v18 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v69)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v69;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_34;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v68;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_34;
  }

  v39 = v34 >> 32;
  v40 = v11 + SHIDWORD(v30) * v12;
  v41 = v40 + 12 * v39;
  v42 = *(result + 32);
  if (v19 >= v41)
  {
    v43 = (v40 + 12 * v39);
  }

  else
  {
    v43 = v19;
  }

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  v44 = vrev32_s8(*v43);
  v45 = COERCE_FLOAT(bswap32(v43[1].u32[0]));
  if (!v13)
  {
    goto LABEL_36;
  }

  v46 = *(v13 + (v35 | v28));
LABEL_52:
  v58 = v46 & 0xF;
  v59 = HIBYTE(v46) & 3;
  if (v58 == 1)
  {
    v66 = (v41 + SBYTE1(v46) * v12);
    if (v19 < v66)
    {
      v66 = v19;
    }

    if (v66 < v42)
    {
      v66 = v42;
    }

    v67 = COERCE_FLOAT(bswap32(v66[1].u32[0]));
    goto LABEL_75;
  }

  if (v58 == 2)
  {
    v66 = (v41 + 12 * SBYTE2(v46));
    if (v19 < v66)
    {
      v66 = v19;
    }

    if (v66 < v42)
    {
      v66 = v42;
    }

    v67 = COERCE_FLOAT(bswap32(v66[1].u32[0]));
    v59 = (v46 >> 28) & 3;
LABEL_75:
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v59 + 3];
    a10 = COERCE_DOUBLE(vrev32_s8(*v66));
    v44 = vmla_n_f32(vmls_lane_f32(v44, v44, *&a9, 0), *&a10, *&a9);
    v45 = (v45 - (v45 * *&a9)) + (v67 * *&a9);
    v47 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v58 != 3)
  {
LABEL_36:
    v47 = 1.0;
    goto LABEL_37;
  }

  v60 = v41 + 12 * SBYTE2(v46);
  if (v19 >= v60)
  {
    v61 = (v41 + 12 * SBYTE2(v46));
  }

  else
  {
    v61 = v19;
  }

  if (v61 < v42)
  {
    v61 = v42;
  }

  v62 = COERCE_FLOAT(bswap32(v61[1].u32[0]));
  v63 = (v60 + SBYTE1(v46) * v12);
  if (v19 < v63)
  {
    v63 = v19;
  }

  if (v63 < v42)
  {
    v63 = v42;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v59 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v46 >> 28) & 3) + 3];
  v45 = (((v45 - (v45 * *&a10)) + (v62 * *&a10)) - (((v45 - (v45 * *&a10)) + (v62 * *&a10)) * *&a11)) + (((v62 - (v62 * *&a10)) + (COERCE_FLOAT(bswap32(v63[1].u32[0])) * *&a10)) * *&a11);
  v64 = vrev32_s8(*v61);
  v65 = vmla_n_f32(vmls_lane_f32(v44, v44, *&a10, 0), v64, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v64, v64, *&a10, 0), vrev32_s8(*v63), *&a10));
  v44 = vmla_n_f32(vmls_lane_f32(v65, v65, *&a11, 0), *&a9, *&a11);
  v47 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  *(v17 + 16) = v44;
  *(v17 + 24) = v45;
  *(v17 + 28) = v47;
  *(v18 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    v49 = (v17 + 44);
    a2 += v15;
    v50 = v69 - a2;
    a3 += v16;
    v51 = v71 - a3;
    v52 = --a4;
    while (1)
    {
      v53 = v18 + v48 + 1;
      v17 = (v49 - 7);
      if ((((a2 - v70) | v50 | (a3 - v14) | v51) & 0x8000000000000000) != 0)
      {
        break;
      }

      v54 = v11 + SHIDWORD(a3) * v12;
      v41 = v54 + 12 * SHIDWORD(a2);
      v42 = *(result + 32);
      if (v19 >= v41)
      {
        v55 = (v54 + 12 * SHIDWORD(a2));
      }

      else
      {
        v55 = v19;
      }

      if (v55 < v42)
      {
        v55 = *(result + 32);
      }

      v44 = vrev32_s8(*v55);
      v56 = bswap32(v55[1].u32[0]);
      if (v13)
      {
        v46 = *(v13 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v46 & 0xF) != 0)
        {
          v45 = *&v56;
          v29 = -1;
          v18 = v53;
          goto LABEL_52;
        }
      }

      --a4;
      *(v49 - 3) = v44;
      v57 = v18 + v48++;
      *(v49 - 1) = v56;
      *v49 = 1065353216;
      v49 += 4;
      a2 += v15;
      *(v57 + 2) = -1;
      v50 -= v15;
      a3 += v16;
      v51 -= v16;
      if (v52 == v48)
      {
        return result;
      }
    }

    v18 += v48 + 1;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBf(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
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
  v20 = *(result + 152) - 16;
  v21 = *(result + 144) - 1;
  v22 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  v66 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v15)
    {
      if (a3 <= v17)
      {
        v31 = (a3 >> 22) & 0x3C0;
        v32 = 0x3FFFFFFF;
        HIDWORD(v33) = HIDWORD(a3);
      }

      else
      {
        v27 = *(result + 216);
        v28 = *(result + 224) + v17;
        v29 = v28 - a3 + (v27 >> 1);
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

        v32 = v30 | v66;
        v33 = v28 - 0x1000000;
        v31 = 448;
      }
    }

    else
    {
      v23 = *(result + 216);
      v24 = v15 - *(result + 224);
      v25 = a3 - v24 + (v23 >> 1);
      if (v25 < 1)
      {
        goto LABEL_34;
      }

      if (v25 >= v23)
      {
        LODWORD(v26) = 0x3FFFFFFF;
      }

      else
      {
        v26 = (*(result + 232) * v25) >> 32;
      }

      v32 = v26 | v66;
      v33 = v24 + 0x1000000;
      v31 = 512;
    }

    if (a2 >= v14)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v14 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v32 = ((v32 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v66;
      }

      v37 = v35 + 0x1000000;
      v38 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v18;
    a3 += v19;
    v20 += 16;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v38 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_26;
  }

  v39 = *(result + 192);
  v40 = *(result + 200) + v16;
  v41 = v40 - a2 + (v39 >> 1);
  if (v41 < 1)
  {
    goto LABEL_34;
  }

  if (v41 < v39)
  {
    v32 = ((v32 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v66;
  }

  v37 = v40 - 0x1000000;
  v38 = 28;
LABEL_26:
  if (v32 < 0x400000)
  {
    goto LABEL_34;
  }

  v42 = v37 >> 32;
  v43 = v11 + SHIDWORD(v33) * v12;
  v44 = v43 + 12 * v42;
  v45 = *(result + 32);
  if (v22 >= v44)
  {
    v46 = (v43 + 12 * v42);
  }

  else
  {
    v46 = v22;
  }

  if (v46 < v45)
  {
    v46 = *(result + 32);
  }

  v47 = *v46;
  v48 = v46[1].f32[0];
  if (!v13)
  {
    goto LABEL_36;
  }

  v49 = *(v13 + (v38 | v31));
LABEL_52:
  v57 = v49 & 0xF;
  v58 = HIBYTE(v49) & 3;
  if (v57 == 1)
  {
    v65 = v44 + SBYTE1(v49) * v12;
    if (v22 < v65)
    {
      v65 = v22;
    }

    if (v65 < v45)
    {
      v65 = v45;
    }

    v64 = *(v65 + 8);
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v58 + 3];
    a10 = *v65;
    goto LABEL_75;
  }

  if (v57 == 2)
  {
    v63 = v44 + 12 * SBYTE2(v49);
    if (v22 < v63)
    {
      v63 = v22;
    }

    if (v63 < v45)
    {
      v63 = v45;
    }

    v64 = *(v63 + 8);
    LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v49 >> 28) & 3) + 3];
    a10 = *v63;
LABEL_75:
    v47 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a9, 0), *&a10, *&a9);
    v48 = (v48 - (v48 * *&a9)) + (v64 * *&a9);
    v50 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v57 != 3)
  {
LABEL_36:
    v50 = 1.0;
    goto LABEL_37;
  }

  v59 = v44 + 12 * SBYTE2(v49);
  if (v22 >= v59)
  {
    v60 = (v44 + 12 * SBYTE2(v49));
  }

  else
  {
    v60 = v22;
  }

  if (v60 < v45)
  {
    v60 = v45;
  }

  v61 = (v59 + SBYTE1(v49) * v12);
  if (v22 < v61)
  {
    v61 = v22;
  }

  if (v61 < v45)
  {
    v61 = v45;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v58 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v49 >> 28) & 3) + 3];
  v48 = (((v48 - (v48 * *&a10)) + (v60[1].f32[0] * *&a10)) - (((v48 - (v48 * *&a10)) + (v60[1].f32[0] * *&a10)) * *&a11)) + (((v60[1].f32[0] - (v60[1].f32[0] * *&a10)) + (v61[1].f32[0] * *&a10)) * *&a11);
  v62 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a10, 0), *v60, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(*v60, *v60, *&a10, 0), *v61, *&a10));
  v47 = vmla_n_f32(vmls_lane_f32(v62, v62, *&a11, 0), *&a9, *&a11);
  v50 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  *(v20 + 16) = v47;
  *(v20 + 24) = v48;
  *(v20 + 28) = v50;
  *(v21 + 1) = v32 >> 22;
  if (a4 != 1)
  {
    v51 = 0;
    v52 = (v20 + 44);
    a2 += v18;
    v53 = v16 - a2;
    a3 += v19;
    v54 = v17 - a3;
    while ((((a2 - v14) | v53 | (a3 - v15) | v54) & 0x8000000000000000) == 0)
    {
      v44 = v11 + SHIDWORD(a3) * v12 + 12 * SHIDWORD(a2);
      v45 = *(result + 32);
      if (v22 >= v44)
      {
        v55 = v11 + SHIDWORD(a3) * v12 + 12 * SHIDWORD(a2);
      }

      else
      {
        v55 = v22;
      }

      if (v55 < v45)
      {
        v55 = *(result + 32);
      }

      v47 = *v55;
      v48 = *(v55 + 8);
      if (v13)
      {
        v49 = *(v13 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v49 & 0xF) != 0)
        {
          v21 += v51 + 1;
          v20 = (v52 - 7);
          a4 += ~v51;
          v32 = -1;
          goto LABEL_52;
        }
      }

      *(v52 - 3) = v47;
      *(v52 - 1) = v48;
      v56 = v21 + v51++;
      *v52 = 1.0;
      v52 += 4;
      a2 += v18;
      *(v56 + 2) = -1;
      v53 -= v18;
      a3 += v19;
      v54 -= v19;
      if (a4 - 1 == v51)
      {
        return result;
      }
    }

    v21 += v51 + 1;
    v20 = (v52 - 7);
    a4 += ~v51;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBAF_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10)
{
  v10 = *(result + 24);
  v11 = *(result + 112);
  v12 = *(result + 48);
  v13 = *(result + 56);
  if (v12)
  {
    v120 = *(result + 112);
    if (v11 > v12)
    {
      v120 = v11 % v12;
    }
  }

  else
  {
    v120 = 0;
  }

  v14 = *(result + 176);
  v15 = *(result + 32);
  v16 = *(result + 120);
  if (v13)
  {
    v17 = v16 % v13;
    if (v16 <= v13)
    {
      v17 = *(result + 120);
    }

    v119 = v17;
  }

  else
  {
    v119 = 0;
  }

  v115 = *(result + 80);
  v116 = *(result + 64);
  v117 = *(result + 88);
  v118 = *(result + 72);
  v114 = *(result + 188);
  v18 = *(result + 152) - 16;
  v19 = *(result + 144) - 1;
  v20 = *(result + 40);
  v21 = v15 + ((*(result + 260) - 1) * v10) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_11:
    if (a3 >= v118)
    {
      if (a3 <= v117)
      {
        v30 = 0;
        v31 = (a3 >> 22) & 0x3C0;
        v32 = 0x3FFFFFFF;
        v33 = a3;
      }

      else
      {
        v26 = *(result + 216);
        v27 = *(result + 224) + v117;
        v28 = v27 - a3 + (v26 >> 1);
        if (v28 < 1)
        {
          goto LABEL_51;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(result + 232) * v28) >> 32;
        }

        v32 = v114 | v29;
        v33 = v27 - 0x1000000;
        v30 = a3 - (v27 - 0x1000000);
        v31 = 448;
      }
    }

    else
    {
      v22 = *(result + 216);
      v23 = v118 - *(result + 224);
      v24 = a3 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_51;
      }

      if (v24 >= v22)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(result + 232) * v24) >> 32;
      }

      v32 = v114 | v25;
      v33 = v23 + 0x1000000;
      v30 = a3 - (v23 + 0x1000000);
      v31 = 512;
    }

    if (a2 >= v116)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v116 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v32 = ((v32 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v114;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
      goto LABEL_35;
    }

LABEL_51:
    --a4;
    a2 += v11;
    a3 += v16;
    v18 += 16;
    *++v19 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v115)
  {
    v38 = 0;
    v39 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_35;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v115;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_51;
  }

  if (v42 < v40)
  {
    v32 = ((v32 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v114;
  }

  v37 = v41 - 0x1000000;
  v38 = a2 - (v41 - 0x1000000);
  v39 = 28;
LABEL_35:
  if (v32 < 0x400000)
  {
    goto LABEL_51;
  }

  if (v12)
  {
    v43 = (v13 & ((v33 % v13) >> 63)) + v33 % v13;
    v44 = (v12 & ((v37 % v12) >> 63)) + v37 % v12;
    if (v43 >= v13)
    {
      v45 = v13;
    }

    else
    {
      v45 = 0;
    }

    v33 = v43 - v45;
    if (v44 >= v12)
    {
      v46 = v12;
    }

    else
    {
      v46 = 0;
    }

    v37 = v44 - v46;
    v30 += v33;
    v38 += v37;
  }

  v47 = v15 + SHIDWORD(v33) * v10;
  v48 = v37 >> 32;
  v49 = v47 + 16 * v48;
  v50 = *(result + 32);
  if (v21 >= v49)
  {
    v51 = (v47 + 16 * v48);
  }

  else
  {
    v51 = v21;
  }

  if (v51 < v50)
  {
    v51 = *(result + 32);
  }

  if (v20)
  {
    v52 = bswap32(v51[1].u32[1]);
  }

  else
  {
    v52 = 1.0;
  }

  *v53.f32 = vrev32_s8(*v51);
  v54.i64[0] = v53.i64[0];
  v54.i64[1] = __PAIR64__(v52, bswap32(v51[1].u32[0]));
  if (!v14)
  {
    goto LABEL_56;
  }

  v55 = *(v14 + (v39 | v31));
LABEL_83:
  v74 = v55 & 0xF;
  v75 = v55 >> 8;
  v76 = HIBYTE(v55) & 3;
  v53.i64[1] = v54.i64[1];
  switch(v74)
  {
    case 1:
      LODWORD(v107) = SBYTE1(v55);
      if (v12)
      {
        v108 = v75 << 56;
        v109 = v30 + (SBYTE1(v55) << 32);
        v110 = v13 & (v109 >> 63);
        if (v110 + v109 >= v13)
        {
          v111 = v13;
        }

        else
        {
          v111 = 0;
        }

        v107 = (v110 + (v108 >> 24) - v111) >> 32;
      }

      v112 = (v49 + v107 * v10);
      if (v21 < v112)
      {
        v112 = v21;
      }

      if (v112 >= v50)
      {
        v113 = v112;
      }

      else
      {
        v113 = v50;
      }

      *v103.f32 = vrev32_s8(*v113);
      v104 = bswap32(v113[1].u32[0]);
      v105 = 1.0;
      if (v20)
      {
        v105 = bswap32(v113[1].u32[1]);
      }

      v106 = &interpolate_rgbaf_21860[4 * v76];
      goto LABEL_133;
    case 2:
      v97 = SBYTE2(v55);
      if (v12)
      {
        v98 = v38 + (SBYTE2(v55) << 32);
        v99 = v12 & (v98 >> 63);
        if (v99 + v98 >= v12)
        {
          v100 = v12;
        }

        else
        {
          v100 = 0;
        }

        v97 = (v99 + ((HIWORD(v55) << 56) >> 24) - v100) >> 32;
      }

      v101 = (v49 + 16 * v97);
      if (v21 < v101)
      {
        v101 = v21;
      }

      if (v101 >= v50)
      {
        v102 = v101;
      }

      else
      {
        v102 = v50;
      }

      *v103.f32 = vrev32_s8(*v102);
      v104 = bswap32(v102[1].u32[0]);
      v105 = 1.0;
      if (v20)
      {
        v105 = bswap32(v102[1].u32[1]);
      }

      v106 = &interpolate_rgbaf_21860[4 * ((v55 >> 28) & 3)];
LABEL_133:
      a8.i32[0] = v106[3];
      v103.i64[1] = __PAIR64__(v105, v104);
      v96 = vmlaq_n_f32(vmlsq_lane_f32(v53, v53, *a8.f32, 0), v103, a8.f32[0]);
      goto LABEL_134;
    case 3:
      LODWORD(v77) = SBYTE1(v55);
      v78 = SBYTE2(v55);
      if (v12)
      {
        v79 = v75 << 56;
        v80 = HIWORD(v55) << 56;
        v81 = v30 + (v79 >> 24);
        v82 = v38 + (v80 >> 24);
        v83 = v13 & (v81 >> 63);
        v84 = v12 & (v82 >> 63);
        v85 = v84 + v82;
        if (v83 + v81 >= v13)
        {
          v86 = v13;
        }

        else
        {
          v86 = 0;
        }

        if (v85 >= v12)
        {
          v87 = v12;
        }

        else
        {
          v87 = 0;
        }

        v77 = (v83 + (v79 >> 24) - v86) >> 32;
        v78 = (v84 + (v80 >> 24) - v87) >> 32;
      }

      v88 = v77 * v10;
      v89 = (v49 + 16 * v78);
      if (v21 < v89)
      {
        v89 = v21;
      }

      if (v89 < v50)
      {
        v89 = v50;
      }

      *v90.f32 = vrev32_s8(*v89);
      v91 = bswap32(v89[1].u32[0]);
      v92 = 1.0;
      LODWORD(a9) = 1.0;
      if (v20)
      {
        LODWORD(a9) = bswap32(v89[1].u32[1]);
      }

      v93 = (v49 + v88 + 16 * v78);
      if (v21 < v93)
      {
        v93 = v21;
      }

      if (v93 < v50)
      {
        v93 = v50;
      }

      *a8.f32 = vrev32_s8(*v93);
      v94 = bswap32(v93[1].u32[0]);
      if (v20)
      {
        v92 = bswap32(v93[1].u32[1]);
      }

      LODWORD(a10) = interpolate_rgbaf_21860[4 * v76 + 3];
      v90.i64[1] = __PAIR64__(LODWORD(a9), v91);
      LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v55 >> 28) & 3) + 3];
      v95 = vmlaq_n_f32(vmlsq_lane_f32(v53, v53, *&a10, 0), v90, *&a10);
      a8.i64[1] = __PAIR64__(v92, v94);
      v96 = vmlaq_n_f32(vmlsq_lane_f32(v95, v95, *&a9, 0), vmlaq_n_f32(vmlsq_lane_f32(v90, v90, *&a10, 0), a8, *&a10), *&a9);
LABEL_134:
      v54 = v96;
      break;
  }

LABEL_56:
  *(v18 + 16) = v54;
  *(v19 + 1) = v32 >> 22;
  if (a4 != 1)
  {
    v56 = 0;
    v57 = (v18 + 44);
    a2 += v11;
    v58 = v115 - a2;
    a3 += v16;
    v59 = v117 - a3;
    v60 = --a4;
    while (1)
    {
      v61 = v19 + v56 + 1;
      v18 = (v57 - 7);
      if ((v59 | v58 | (a3 - v118) | (a2 - v116)) < 0)
      {
        break;
      }

      if (v12)
      {
        v62 = (v13 & ((v30 + v119) >> 63)) + v30 + v119;
        v63 = (v12 & ((v38 + v120) >> 63)) + v38 + v120;
        if (v62 >= v13)
        {
          v64 = v13;
        }

        else
        {
          v64 = 0;
        }

        v30 = v62 - v64;
        if (v63 >= v12)
        {
          v65 = v12;
        }

        else
        {
          v65 = 0;
        }

        v38 = v63 - v65;
        v66 = HIDWORD(v30);
        v67 = v38;
      }

      else
      {
        v66 = HIDWORD(a3);
        v67 = a2;
      }

      v68 = v15 + v66 * v10;
      v69 = v67 >> 32;
      v49 = v68 + 16 * v69;
      v50 = *(result + 32);
      if (v21 >= v49)
      {
        v70 = (v68 + 16 * v69);
      }

      else
      {
        v70 = v21;
      }

      if (v70 < v50)
      {
        v70 = *(result + 32);
      }

      if (v20)
      {
        v71 = bswap32(v70[1].u32[1]);
      }

      else
      {
        v71 = 1.0;
      }

      *v53.f32 = vrev32_s8(*v70);
      v72 = bswap32(v70[1].u32[0]);
      if (v14)
      {
        v55 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v55 & 0xF) != 0)
        {
          v54.i64[0] = v53.i64[0];
          v54.i64[1] = __PAIR64__(v71, v72);
          v32 = -1;
          v19 = v61;
          goto LABEL_83;
        }
      }

      --a4;
      *(v57 - 3) = v53.i64[0];
      *(v57 - 1) = v72;
      v73 = v19 + v56++;
      *v57 = v71;
      v57 += 4;
      a2 += v11;
      *(v73 + 2) = -1;
      v58 -= v11;
      a3 += v16;
      v59 -= v16;
      if (v60 == v56)
      {
        return result;
      }
    }

    v19 += v56 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t RGBAf_sample_RGBAf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = *(result + 24);
  v14 = *(result + 112);
  v15 = *(result + 48);
  v16 = *(result + 56);
  if (v15)
  {
    v125 = *(result + 112);
    if (v14 > v15)
    {
      v125 = v14 % v15;
    }
  }

  else
  {
    v125 = 0;
  }

  v17 = *(result + 176);
  v18 = *(result + 32);
  v19 = *(result + 120);
  if (v16)
  {
    v20 = v19 % v16;
    if (v19 <= v16)
    {
      v20 = *(result + 120);
    }

    v124 = v20;
  }

  else
  {
    v124 = 0;
  }

  v120 = *(result + 80);
  v121 = *(result + 64);
  v122 = *(result + 88);
  v123 = *(result + 72);
  v119 = *(result + 188);
  v21 = *(result + 152) - 16;
  v22 = *(result + 144) - 1;
  v23 = *(result + 40);
  v24 = v18 + ((*(result + 260) - 1) * v13) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_11:
    if (a3 >= v123)
    {
      if (a3 <= v122)
      {
        v33 = 0;
        v34 = (a3 >> 22) & 0x3C0;
        v35 = 0x3FFFFFFF;
        v36 = a3;
      }

      else
      {
        v29 = *(result + 216);
        v30 = *(result + 224) + v122;
        v31 = v30 - a3 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_51;
        }

        if (v31 >= v29)
        {
          LODWORD(v32) = 0x3FFFFFFF;
        }

        else
        {
          v32 = (*(result + 232) * v31) >> 32;
        }

        v35 = v119 | v32;
        v36 = v30 - 0x1000000;
        v33 = a3 - (v30 - 0x1000000);
        v34 = 448;
      }
    }

    else
    {
      v25 = *(result + 216);
      v26 = v123 - *(result + 224);
      v27 = a3 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_51;
      }

      if (v27 >= v25)
      {
        LODWORD(v28) = 0x3FFFFFFF;
      }

      else
      {
        v28 = (*(result + 232) * v27) >> 32;
      }

      v35 = v119 | v28;
      v36 = v26 + 0x1000000;
      v33 = a3 - (v26 + 0x1000000);
      v34 = 512;
    }

    if (a2 >= v121)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v121 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v35 = ((v35 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v119;
      }

      v40 = v38 + 0x1000000;
      v41 = a2 - (v38 + 0x1000000);
      v42 = 32;
      goto LABEL_35;
    }

LABEL_51:
    --a4;
    a2 += v14;
    a3 += v19;
    v21 += 16;
    *++v22 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v120)
  {
    v41 = 0;
    v42 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_35;
  }

  v43 = *(result + 192);
  v44 = *(result + 200) + v120;
  v45 = v44 - a2 + (v43 >> 1);
  if (v45 < 1)
  {
    goto LABEL_51;
  }

  if (v45 < v43)
  {
    v35 = ((v35 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v119;
  }

  v40 = v44 - 0x1000000;
  v41 = a2 - (v44 - 0x1000000);
  v42 = 28;
LABEL_35:
  if (v35 < 0x400000)
  {
    goto LABEL_51;
  }

  if (v15)
  {
    v46 = (v16 & ((v36 % v16) >> 63)) + v36 % v16;
    v47 = (v15 & ((v40 % v15) >> 63)) + v40 % v15;
    if (v46 >= v16)
    {
      v48 = v16;
    }

    else
    {
      v48 = 0;
    }

    v36 = v46 - v48;
    if (v47 >= v15)
    {
      v49 = v15;
    }

    else
    {
      v49 = 0;
    }

    v40 = v47 - v49;
    v33 += v36;
    v41 += v40;
  }

  v50 = v18 + SHIDWORD(v36) * v13;
  v51 = v40 >> 32;
  v52 = v50 + 16 * v51;
  v53 = *(result + 32);
  if (v24 >= v52)
  {
    v54 = v50 + 16 * v51;
  }

  else
  {
    v54 = v24;
  }

  if (v54 < v53)
  {
    v54 = *(result + 32);
  }

  if (v23)
  {
    v55 = *(v54 + 12);
  }

  else
  {
    v55 = 1.0;
  }

  v56.i64[0] = *v54;
  v56.i32[2] = *(v54 + 8);
  v56.f32[3] = v55;
  if (v17)
  {
    v57 = *(v17 + (v42 | v34));
LABEL_84:
    v77 = v57 & 0xF;
    v78 = v57 >> 8;
    v79 = HIBYTE(v57) & 3;
    if (v77 == 1)
    {
      LODWORD(v110) = SBYTE1(v57);
      if (v15)
      {
        v111 = v78 << 56;
        v112 = v33 + (v78 << 32);
        v113 = v16 & (v112 >> 63);
        if (v113 + v112 >= v16)
        {
          v114 = v16;
        }

        else
        {
          v114 = 0;
        }

        v110 = (v113 + (v111 >> 24) - v114) >> 32;
      }

      v115 = v52 + v110 * v13;
      if (v24 < v115)
      {
        v115 = v24;
      }

      if (v115 >= v53)
      {
        v116 = v115;
      }

      else
      {
        v116 = v53;
      }

      v106.i64[0] = *v116;
      v107 = *(v116 + 8);
      v108 = 1.0;
      if (v23)
      {
        v108 = *(v116 + 12);
      }

      v109 = &interpolate_rgbaf_21860[4 * v79];
    }

    else
    {
      if (v77 != 2)
      {
        if (v77 == 3)
        {
          LODWORD(v80) = SBYTE1(v57);
          v81 = SBYTE2(v57);
          if (v15)
          {
            v82 = v78 << 56;
            v83 = v33 + (v82 >> 24);
            v84 = v41 + (SBYTE2(v57) << 32);
            v85 = v16 & (v83 >> 63);
            v86 = v15 & (v84 >> 63);
            v87 = v86 + v84;
            if (v85 + v83 >= v16)
            {
              v88 = v16;
            }

            else
            {
              v88 = 0;
            }

            if (v87 >= v15)
            {
              v89 = v15;
            }

            else
            {
              v89 = 0;
            }

            v80 = (v85 + (v82 >> 24) - v88) >> 32;
            v81 = (v86 + ((HIWORD(v57) << 56) >> 24) - v89) >> 32;
          }

          v90 = v80 * v13;
          v91 = 16 * v81;
          v92 = v52 + 16 * v81;
          if (v24 < v92)
          {
            v92 = v24;
          }

          if (v92 >= v53)
          {
            v93 = v92;
          }

          else
          {
            v93 = v53;
          }

          v94.i64[0] = *v93;
          if (v23)
          {
            v95 = *(v93 + 12);
            v96 = v52 + v90 + v91;
            if (v24 < v96)
            {
              v96 = v24;
            }

            if (v96 < v53)
            {
              v96 = v53;
            }

            v97.i64[0] = *v96;
            v98 = *(v96 + 8);
            v99 = *(v96 + 12);
          }

          else
          {
            v117 = v52 + v90 + v91;
            if (v24 < v117)
            {
              v117 = v24;
            }

            if (v117 < v53)
            {
              v117 = v53;
            }

            v97.i64[0] = *v117;
            v98 = *(v117 + 8);
            v95 = 1.0;
            v99 = 1.0;
          }

          LODWORD(a12) = interpolate_rgbaf_21860[4 * (HIBYTE(v57) & 3) + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v57 >> 28) & 3) + 3];
          v94.i64[1] = __PAIR64__(LODWORD(v95), *(v93 + 8));
          v118 = vmlaq_n_f32(vmlsq_lane_f32(v56, v56, *&a12, 0), v94, *&a12);
          v97.i64[1] = __PAIR64__(LODWORD(v99), v98);
          v56 = vmlaq_n_f32(vmlsq_lane_f32(v118, v118, v12, 0), vmlaq_n_f32(vmlsq_lane_f32(v94, v94, *&a12, 0), v97, *&a12), v12.f32[0]);
        }

        goto LABEL_56;
      }

      v100 = SBYTE2(v57);
      if (v15)
      {
        v101 = v41 + (SBYTE2(v57) << 32);
        v102 = v15 & (v101 >> 63);
        if (v102 + v101 >= v15)
        {
          v103 = v15;
        }

        else
        {
          v103 = 0;
        }

        v100 = (v102 + ((HIWORD(v57) << 56) >> 24) - v103) >> 32;
      }

      v104 = v52 + 16 * v100;
      if (v24 < v104)
      {
        v104 = v24;
      }

      if (v104 >= v53)
      {
        v105 = v104;
      }

      else
      {
        v105 = v53;
      }

      v106.i64[0] = *v105;
      v107 = *(v105 + 8);
      v108 = 1.0;
      if (v23)
      {
        v108 = *(v105 + 12);
      }

      v109 = &interpolate_rgbaf_21860[4 * ((v57 >> 28) & 3)];
    }

    LODWORD(a9) = v109[3];
    v106.i64[1] = __PAIR64__(LODWORD(v108), v107);
    v56 = vmlaq_n_f32(vmlsq_lane_f32(v56, v56, *&a9, 0), v106, *&a9);
  }

LABEL_56:
  *(v21 + 16) = v56;
  *(v22 + 1) = v35 >> 22;
  if (a4 != 1)
  {
    v58 = 0;
    v59 = (v21 + 44);
    v60 = a4 - 1;
    a2 += v14;
    v61 = v120 - a2;
    a3 += v19;
    v62 = v122 - a3;
    --a4;
    while (1)
    {
      v63 = v22 + v58 + 1;
      v21 = (v59 - 7);
      if ((v62 | v61 | (a3 - v123) | (a2 - v121)) < 0)
      {
        break;
      }

      if (v15)
      {
        v64 = (v16 & ((v33 + v124) >> 63)) + v33 + v124;
        v65 = (v15 & ((v41 + v125) >> 63)) + v41 + v125;
        if (v64 >= v16)
        {
          v66 = v16;
        }

        else
        {
          v66 = 0;
        }

        v33 = v64 - v66;
        if (v65 >= v15)
        {
          v67 = v15;
        }

        else
        {
          v67 = 0;
        }

        v41 = v65 - v67;
        v68 = HIDWORD(v33);
        v69 = v65 - v67;
      }

      else
      {
        v68 = HIDWORD(a3);
        v69 = a2;
      }

      v70 = v18 + v68 * v13;
      v71 = v69 >> 32;
      v52 = v70 + 16 * v71;
      v53 = *(result + 32);
      if (v24 >= v52)
      {
        v72 = v70 + 16 * v71;
      }

      else
      {
        v72 = v24;
      }

      if (v72 >= v53)
      {
        v73 = v72;
      }

      else
      {
        v73 = *(result + 32);
      }

      if (v23)
      {
        v74 = *(v73 + 12);
      }

      else
      {
        v74 = 1.0;
      }

      v56.i64[0] = *v73;
      v75 = *(v73 + 8);
      if (v17)
      {
        v57 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v57 & 0xF) != 0)
        {
          v56.i64[1] = __PAIR64__(LODWORD(v74), v75);
          v35 = -1;
          v22 = v63;
          goto LABEL_84;
        }
      }

      --a4;
      *(v59 - 3) = v56.i64[0];
      v76 = v22 + v58++;
      *(v59 - 1) = v75;
      *v59 = LODWORD(v74);
      v59 += 4;
      a2 += v14;
      *(v76 + 2) = -1;
      v61 -= v14;
      a3 += v19;
      v62 -= v19;
      if (v60 == v58)
      {
        return result;
      }
    }

    v22 += v58 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t RGBAf_sample_CMYKF(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 32);
  v14 = *(result + 40);
  v15 = *(result + 24);
  v16 = *(result + 28);
  v17 = *(result + 176);
  v18 = *(result + 72);
  v96 = *(result + 80);
  v98 = *(result + 88);
  v20 = *(result + 112);
  v19 = *(result + 120);
  v21 = (*(result + 152) - 16);
  v22 = *(result + 144) - 1;
  v23 = *(result + 260) - 1;
  v24 = *(result + 256) - 1;
  v25 = v14 + (v23 * v16) + 4 * v24;
  v26 = v13 + (v23 * v15) + 16 * v24 - 16;
  v95 = *(result + 188);
  v97 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v98)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        v37 = a3;
        v38 = v97;
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v98;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_40;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v38 = v97;
        v36 = v34 | v95;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v18 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_40;
      }

      if (v29 >= v27)
      {
        LODWORD(v30) = 0x3FFFFFFF;
      }

      else
      {
        v30 = (*(result + 232) * v29) >> 32;
      }

      v38 = v97;
      v36 = v30 | v95;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v38)
    {
      break;
    }

    v39 = *(result + 192);
    v40 = v38 - *(result + 200);
    v41 = a2 - v40 + (v39 >> 1);
    if (v41 >= 1)
    {
      if (v41 < v39)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v95;
      }

      v42 = v40 + 0x1000000;
      v43 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v20;
    a3 += v19;
    v21 += 2;
    *++v22 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v96)
  {
    v43 = (a2 >> 26) & 0x3C;
    v42 = a2;
    goto LABEL_26;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v96;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_40;
  }

  if (v46 < v44)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v95;
  }

  v42 = v45 - 0x1000000;
  v43 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_40;
  }

  v47 = v37 >> 32;
  v48 = v13 + SHIDWORD(v37) * v15;
  v49 = (v42 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v48 + 4 * v49;
  v51 = *(result + 32);
  if (v26 >= v50)
  {
    v52 = (v48 + 4 * v49);
  }

  else
  {
    v52 = v26;
  }

  if (v52 >= v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = *(result + 32);
  }

  if (v14)
  {
    v54 = v14 + v47 * v16 + v49;
    v55 = *(result + 40);
    if (v25 >= v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = v25;
    }

    if (v56 >= v55)
    {
      v55 = v56;
    }

    LODWORD(a5) = bswap32(*v55);
  }

  else
  {
    v54 = 0;
    LODWORD(a5) = 1.0;
  }

  v57 = vrev32_s8(*v53);
  v58 = vrev32_s8(v53[1]);
  if (v17)
  {
    v59 = *(v17 + (v43 | v35));
LABEL_68:
    v69 = v59 & 0xF;
    v70 = HIBYTE(v59) & 3;
    if (v69 == 1)
    {
      v93 = (v50 + SBYTE1(v59) * v15);
      if (v26 < v93)
      {
        v93 = v26;
      }

      if (v93 < v51)
      {
        v93 = v51;
      }

      v88 = vrev32_s8(*v93);
      v89 = vrev32_s8(v93[1]);
      v90 = 1.0;
      if (v14)
      {
        v94 = (v54 + SBYTE1(v59) * v16);
        if (v25 < v94)
        {
          v94 = v25;
        }

        if (v94 < *(result + 40))
        {
          v94 = *(result + 40);
        }

        v90 = COERCE_FLOAT(bswap32(*v94));
      }

      v92 = &interpolate_cmykaf[5 * v70];
    }

    else
    {
      if (v69 != 2)
      {
        if (v69 == 3)
        {
          v71 = HIWORD(v59) << 56;
          v72 = v50 + (v71 >> 52);
          if (v26 >= v72)
          {
            v73 = (v50 + (v71 >> 52));
          }

          else
          {
            v73 = v26;
          }

          if (v73 < v51)
          {
            v73 = v51;
          }

          v74 = v72 + SBYTE1(v59) * v15;
          if (v26 < v74)
          {
            v74 = v26;
          }

          if (v74 < v51)
          {
            v74 = v51;
          }

          v75 = vrev32_s8(*v73);
          a11 = *(v74 + 8);
          v76 = vrev32_s8(*v74);
          v77 = vrev32_s8(v73[1]);
          v78 = vrev32_s8(*&a11);
          v79 = 1.0;
          LODWORD(a11) = 1.0;
          if (v14)
          {
            v80 = v54 + (v71 >> 54);
            v81 = *(result + 40);
            if (v25 >= v80)
            {
              v82 = (v54 + (v71 >> 54));
            }

            else
            {
              v82 = v25;
            }

            if (v82 < v81)
            {
              v82 = *(result + 40);
            }

            LODWORD(a11) = bswap32(*v82);
            v83 = (v80 + SBYTE1(v59) * v16);
            if (v25 < v83)
            {
              v83 = v25;
            }

            if (v83 < v81)
            {
              v83 = *(result + 40);
            }

            v79 = COERCE_FLOAT(bswap32(*v83));
          }

          v11.i32[0] = interpolate_cmykaf[5 * v70 + 4];
          v12.i32[0] = interpolate_cmykaf[5 * ((v59 >> 28) & 3) + 4];
          v84 = vmla_n_f32(vmls_lane_f32(v57, v57, v11, 0), v75, v11.f32[0]);
          v57 = vmla_n_f32(vmls_lane_f32(v84, v84, v12, 0), vmla_n_f32(vmls_lane_f32(v75, v75, v11, 0), v76, v11.f32[0]), v12.f32[0]);
          v85 = vmla_n_f32(vmls_lane_f32(v58, v58, v11, 0), v77, v11.f32[0]);
          v58 = vmla_n_f32(vmls_lane_f32(v85, v85, v12, 0), vmla_n_f32(vmls_lane_f32(v77, v77, v11, 0), v78, v11.f32[0]), v12.f32[0]);
          *&a5 = (((*&a5 - (*&a5 * v11.f32[0])) + (*&a11 * v11.f32[0])) - (((*&a5 - (*&a5 * v11.f32[0])) + (*&a11 * v11.f32[0])) * v12.f32[0])) + (((*&a11 - (*&a11 * v11.f32[0])) + (v79 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_45;
      }

      v86 = HIWORD(v59) << 56;
      v87 = (v50 + (v86 >> 52));
      if (v26 < v87)
      {
        v87 = v26;
      }

      if (v87 < v51)
      {
        v87 = v51;
      }

      v88 = vrev32_s8(*v87);
      v89 = vrev32_s8(v87[1]);
      v90 = 1.0;
      if (v14)
      {
        v91 = (v54 + (v86 >> 54));
        if (v25 < v91)
        {
          v91 = v25;
        }

        if (v91 < *(result + 40))
        {
          v91 = *(result + 40);
        }

        v90 = COERCE_FLOAT(bswap32(*v91));
      }

      v92 = &interpolate_cmykaf[5 * ((v59 >> 28) & 3)];
    }

    LODWORD(a11) = v92[4];
    v57 = vmla_n_f32(vmls_lane_f32(v57, v57, *&a11, 0), v88, *&a11);
    v58 = vmla_n_f32(vmls_lane_f32(v58, v58, *&a11, 0), v89, *&a11);
    *&a5 = (*&a5 - (*&a5 * *&a11)) + (v90 * *&a11);
  }

LABEL_45:
  v21[2] = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v57), vdup_lane_s32(v58, 1));
  v21[3].f32[0] = (*&a5 - v58.f32[0]) - v58.f32[1];
  v21[3].i32[1] = LODWORD(a5);
  *(v22 + 1) = v36 >> 22;
  if (a4 != 1)
  {
    v60 = 0;
    v61 = &v21[5] + 1;
    a2 += v20;
    v62 = v96 - a2;
    a3 += v19;
    v63 = v98 - a3;
    while (((v63 | v62 | (a3 - v18) | (a2 - v97)) & 0x8000000000000000) == 0)
    {
      v64 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v13 + SHIDWORD(a3) * v15 + 4 * v64;
      v51 = *(result + 32);
      if (v26 >= v50)
      {
        v65 = (v13 + SHIDWORD(a3) * v15 + 4 * v64);
      }

      else
      {
        v65 = v26;
      }

      if (v65 < v51)
      {
        v65 = *(result + 32);
      }

      if (v14)
      {
        v54 = v14 + SHIDWORD(a3) * v16 + v64;
        v66 = *(result + 40);
        if (v25 >= v54)
        {
          v67 = v54;
        }

        else
        {
          v67 = v25;
        }

        if (v67 >= v66)
        {
          v66 = v67;
        }

        LODWORD(a5) = bswap32(*v66);
      }

      else
      {
        LODWORD(a5) = 1.0;
      }

      v57 = vrev32_s8(*v65);
      v58 = vrev32_s8(v65[1]);
      if (v17)
      {
        v59 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v59 & 0xF) != 0)
        {
          v22 += v60 + 1;
          v21 = (v61 - 7);
          a4 += ~v60;
          v36 = -1;
          goto LABEL_68;
        }
      }

      *(v61 - 3) = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v57), vdup_lane_s32(v58, 1));
      *(v61 - 1) = (*&a5 - v58.f32[0]) - v58.f32[1];
      *v61 = *&a5;
      v68 = v22 + v60++;
      v61 += 4;
      a2 += v20;
      *(v68 + 2) = -1;
      v62 -= v20;
      a3 += v19;
      v63 -= v19;
      if (a4 - 1 == v60)
      {
        return result;
      }
    }

    v22 += v60 + 1;
    v21 = (v61 - 7);
    a4 += ~v60;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t RGBAf_sample_CMYKf(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 32);
  v14 = *(result + 40);
  v15 = *(result + 24);
  v16 = *(result + 28);
  v17 = *(result + 176);
  v18 = *(result + 72);
  v97 = *(result + 80);
  v99 = *(result + 88);
  v20 = *(result + 112);
  v19 = *(result + 120);
  v21 = (*(result + 152) - 16);
  v22 = *(result + 144) - 1;
  v23 = *(result + 260) - 1;
  v24 = *(result + 256) - 1;
  v25 = v14 + (v23 * v16) + 4 * v24;
  v26 = v13 + (v23 * v15) + 16 * v24 - 16;
  v96 = *(result + 188);
  v98 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v99)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        v37 = a3;
        v38 = v98;
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v99;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_40;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v38 = v98;
        v36 = v34 | v96;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v18 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_40;
      }

      if (v29 >= v27)
      {
        LODWORD(v30) = 0x3FFFFFFF;
      }

      else
      {
        v30 = (*(result + 232) * v29) >> 32;
      }

      v38 = v98;
      v36 = v30 | v96;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v38)
    {
      break;
    }

    v39 = *(result + 192);
    v40 = v38 - *(result + 200);
    v41 = a2 - v40 + (v39 >> 1);
    if (v41 >= 1)
    {
      if (v41 < v39)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v96;
      }

      v42 = v40 + 0x1000000;
      v43 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v20;
    a3 += v19;
    v21 += 2;
    *++v22 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v43 = (a2 >> 26) & 0x3C;
    v42 = a2;
    goto LABEL_26;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v97;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_40;
  }

  if (v46 < v44)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v96;
  }

  v42 = v45 - 0x1000000;
  v43 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_40;
  }

  v47 = v37 >> 32;
  v48 = v13 + SHIDWORD(v37) * v15;
  v49 = (v42 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v48 + 4 * v49;
  v51 = *(result + 32);
  if (v26 >= v50)
  {
    v52 = (v48 + 4 * v49);
  }

  else
  {
    v52 = v26;
  }

  if (v52 >= v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = *(result + 32);
  }

  if (v14)
  {
    v54 = v14 + v47 * v16 + v49;
    v55 = *(result + 40);
    if (v25 >= v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = v25;
    }

    if (v56 >= v55)
    {
      v55 = v56;
    }

    LODWORD(a5) = *v55;
  }

  else
  {
    v54 = 0;
    LODWORD(a5) = 1.0;
  }

  v58 = *v53;
  v57 = v53[1];
  if (v17)
  {
    v59 = *(v17 + (v43 | v35));
LABEL_68:
    v69 = v59 & 0xF;
    v70 = HIBYTE(v59) & 3;
    if (v69 == 1)
    {
      v94 = (v50 + SBYTE1(v59) * v15);
      if (v26 < v94)
      {
        v94 = v26;
      }

      if (v94 < v51)
      {
        v94 = v51;
      }

      v90 = *v94;
      v89 = v94[1];
      v91 = 1.0;
      if (v14)
      {
        v95 = (v54 + SBYTE1(v59) * v16);
        if (v25 < v95)
        {
          v95 = v25;
        }

        if (v95 < *(result + 40))
        {
          v95 = *(result + 40);
        }

        v91 = *v95;
      }

      v93 = &interpolate_cmykaf[5 * v70];
    }

    else
    {
      if (v69 != 2)
      {
        if (v69 == 3)
        {
          v71 = HIWORD(v59) << 56;
          v72 = v50 + (v71 >> 52);
          if (v26 >= v72)
          {
            v73 = (v50 + (v71 >> 52));
          }

          else
          {
            v73 = v26;
          }

          if (v73 < v51)
          {
            v73 = v51;
          }

          v74 = (v72 + SBYTE1(v59) * v15);
          if (v26 < v74)
          {
            v74 = v26;
          }

          if (v74 < v51)
          {
            v74 = v51;
          }

          v76 = *v73;
          v75 = v73[1];
          v78 = *v74;
          v77 = v74[1];
          v79 = 1.0;
          v80 = 1.0;
          if (v14)
          {
            v81 = v54 + (v71 >> 54);
            v82 = *(result + 40);
            if (v25 >= v81)
            {
              v83 = (v54 + (v71 >> 54));
            }

            else
            {
              v83 = v25;
            }

            if (v83 < v82)
            {
              v83 = *(result + 40);
            }

            v80 = *v83;
            v84 = (v81 + SBYTE1(v59) * v16);
            if (v25 < v84)
            {
              v84 = v25;
            }

            if (v84 < v82)
            {
              v84 = *(result + 40);
            }

            v79 = *v84;
          }

          v11.i32[0] = interpolate_cmykaf[5 * v70 + 4];
          v12.i32[0] = interpolate_cmykaf[5 * ((v59 >> 28) & 3) + 4];
          v85 = vmla_n_f32(vmls_lane_f32(v58, v58, v11, 0), v76, v11.f32[0]);
          v58 = vmla_n_f32(vmls_lane_f32(v85, v85, v12, 0), vmla_n_f32(vmls_lane_f32(v76, v76, v11, 0), v78, v11.f32[0]), v12.f32[0]);
          v86 = vmla_n_f32(vmls_lane_f32(v57, v57, v11, 0), v75, v11.f32[0]);
          v57 = vmla_n_f32(vmls_lane_f32(v86, v86, v12, 0), vmla_n_f32(vmls_lane_f32(v75, v75, v11, 0), v77, v11.f32[0]), v12.f32[0]);
          *&a5 = (((*&a5 - (*&a5 * v11.f32[0])) + (v80 * v11.f32[0])) - (((*&a5 - (*&a5 * v11.f32[0])) + (v80 * v11.f32[0])) * v12.f32[0])) + (((v80 - (v80 * v11.f32[0])) + (v79 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_45;
      }

      v87 = HIWORD(v59) << 56;
      v88 = (v50 + (v87 >> 52));
      if (v26 < v88)
      {
        v88 = v26;
      }

      if (v88 < v51)
      {
        v88 = v51;
      }

      v90 = *v88;
      v89 = v88[1];
      v91 = 1.0;
      if (v14)
      {
        v92 = (v54 + (v87 >> 54));
        if (v25 < v92)
        {
          v92 = v25;
        }

        if (v92 < *(result + 40))
        {
          v92 = *(result + 40);
        }

        v91 = *v92;
      }

      v93 = &interpolate_cmykaf[5 * ((v59 >> 28) & 3)];
    }

    LODWORD(a11) = v93[4];
    v58 = vmla_n_f32(vmls_lane_f32(v58, v58, *&a11, 0), v90, *&a11);
    v57 = vmla_n_f32(vmls_lane_f32(v57, v57, *&a11, 0), v89, *&a11);
    *&a5 = (*&a5 - (*&a5 * *&a11)) + (v91 * *&a11);
  }

LABEL_45:
  v21[2] = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v58), vdup_lane_s32(v57, 1));
  v21[3].f32[0] = (*&a5 - v57.f32[0]) - v57.f32[1];
  v21[3].i32[1] = LODWORD(a5);
  *(v22 + 1) = v36 >> 22;
  if (a4 != 1)
  {
    v60 = 0;
    v61 = &v21[5] + 1;
    a2 += v20;
    v62 = v97 - a2;
    a3 += v19;
    v63 = v99 - a3;
    while (((v63 | v62 | (a3 - v18) | (a2 - v98)) & 0x8000000000000000) == 0)
    {
      v64 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v13 + SHIDWORD(a3) * v15 + 4 * v64;
      v51 = *(result + 32);
      if (v26 >= v50)
      {
        v65 = (v13 + SHIDWORD(a3) * v15 + 4 * v64);
      }

      else
      {
        v65 = v26;
      }

      if (v65 < v51)
      {
        v65 = *(result + 32);
      }

      if (v14)
      {
        v54 = v14 + SHIDWORD(a3) * v16 + v64;
        v66 = *(result + 40);
        if (v25 >= v54)
        {
          v67 = v54;
        }

        else
        {
          v67 = v25;
        }

        if (v67 >= v66)
        {
          v66 = v67;
        }

        LODWORD(a5) = *v66;
      }

      else
      {
        LODWORD(a5) = 1.0;
      }

      v58 = *v65;
      v57 = v65[1];
      if (v17)
      {
        v59 = *(v17 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v59 & 0xF) != 0)
        {
          v22 += v60 + 1;
          v21 = (v61 - 7);
          a4 += ~v60;
          v36 = -1;
          goto LABEL_68;
        }
      }

      *(v61 - 3) = vsub_f32(vsub_f32(vdup_lane_s32(*&a5, 0), v58), vdup_lane_s32(v57, 1));
      *(v61 - 1) = (*&a5 - v57.f32[0]) - v57.f32[1];
      *v61 = *&a5;
      v68 = v22 + v60++;
      v61 += 4;
      a2 += v20;
      *(v68 + 2) = -1;
      v62 -= v20;
      a3 += v19;
      v63 -= v19;
      if (a4 - 1 == v60)
      {
        return result;
      }
    }

    v22 += v60 + 1;
    v21 = (v61 - 7);
    a4 += ~v60;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

float32x2_t *RGBAf_pattern(uint64_t a1, float32x2_t *a2, unsigned int a3, int a4, float32x2_t *a5, float a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v15 = *(*a1 + 64);
  LODWORD(a9) = *v15;
  LODWORD(a12) = v15[1];
  if (a2 && a3 > 0xF || (v22 = a9, v23 = a12, v16 = malloc_type_malloc(0x40uLL, 0x1080040E00A32E4uLL), a9 = v22, a12 = v23, (a2 = v16) != 0))
  {
    if (*&a9 <= a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = *&a9;
    }

    if (*&a12 < a6)
    {
      v17 = *&a12;
    }

    if (a5)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        *&a9 = v17 * a5->f32[0];
        break;
      case 4:
        LODWORD(a8) = a5[2].i32[0];
        v19 = vmul_n_f32(vsub_f32(vsub_f32(vdup_lane_s32(*&a12, 0), *a5), vdup_lane_s32(*&a8, 0)), v17);
        *&a8 = (*&a12 - a5[1].f32[0]) - *&a8;
        goto LABEL_17;
      case 3:
        v19 = vmul_n_f32(*a5, v17);
        LODWORD(a8) = a5[1].i32[0];
LABEL_17:
        *&a9 = v17 * *&a8;
LABEL_20:
        *a2->f32 = xmmword_18439CB10;
        a2[3].i32[0] = 0;
        a2[2] = 1;
        a2[6] = v19;
        if (v17 >= *&a12)
        {
          v20 = 0;
        }

        else
        {
          v20 = a2 + 6;
        }

        a2[4] = &a2[6];
        a2[5] = v20;
        a2[7].i32[0] = LODWORD(a9);
        a2[7].f32[1] = v17;
        return a2;
    }

    v19 = vdup_lane_s32(*&a9, 0);
    goto LABEL_20;
  }

  return a2;
}

uint64_t RGBAf_mark_inner(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v779 = *MEMORY[0x1E69E9840];
  v18 = *(v3 + 96);
  v19 = *(v3 + 48);
  v20 = *(*(v2 + 56) + 16 * *v3 + 8 * (v18 == 0) + 4 * (v19 == 0));
  if (v20 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = v3;
  v762 = *(v3 + 4);
  v23 = v762 - 1;
  if (v762 < 1)
  {
    return 0;
  }

  v743 = *(*(v2 + 56) + 16 * *v3 + 8 * (v18 == 0) + 4 * (v19 == 0));
  v24 = *(v3 + 8);
  v25 = (v24 - 1);
  if (v24 < 1)
  {
    return 0;
  }

  v26 = v2;
  v27 = *(v3 + 136);
  if ((*v3 & 0xFF0000) == 0x50000 || !v27)
  {
    v29 = *v3 & 0xFF00;
    v742 = v3;
    if (v29 == 1024)
    {
      v30 = *(v3 + 4);
      v778[0] = v30;
      v768[0] = v24;
      v31 = *(v3 + 28);
      v32 = **(v3 + 88);
      v33 = v32.f32[3];
      *&v13 = 1.0 - v32.f32[3];
      v34 = *(v3 + 12);
      v35 = v31 >> 4;
      v36 = *(v3 + 40) + 16 * (v31 >> 4) * *(v3 + 16);
      v37 = v36 + 16 * v34;
      v763 = v13;
      v765 = v32;
      if (v27)
      {
        shape_enum_clip_alloc(v2, v3, v27, 1, 1, 1, *(v3 + 104), *(v3 + 108), v762, v24);
        v39 = v38;
        v40 = v743;
        if (!v38)
        {
          return 1;
        }

        goto LABEL_1211;
      }

      v39 = 0;
      v63 = (v36 + 16 * v34);
      v40 = v20;
LABEL_951:
      v563 = v35 - v30;
      switch(v40)
      {
        case 0:
          v564 = v768[0];
          v565 = 16 * v30;
          v566 = v31 & 0xFFFFFFF0;
          goto LABEL_1217;
        case 1:
          v640 = *(v742 + 88);
          if (v640)
          {
            CGSFillDRAM64(v63, v31 & 0xFFFFFFF0, 16 * v30, v768[0], v640, 16, 16, 1, 0, 0);
            if (!v39)
            {
              return 1;
            }

            goto LABEL_1210;
          }

          v564 = v768[0];
          v566 = v31 & 0xFFFFFFF0;
          v565 = 16 * v30;
LABEL_1217:
          CGBlt_fillBytes(v565, v564, 0, v63, v566);
          if (v39)
          {
            goto LABEL_1210;
          }

          return 1;
        case 2:
          v622 = v768[0];
          v623 = vdupq_lane_s32(*&v13, 0);
          do
          {
            if (v30 < 4)
            {
              v627 = v30;
            }

            else
            {
              v624 = (v30 >> 2) + 1;
              do
              {
                v625 = vmlaq_f32(v32, v623, v63[1]);
                *v63 = vmlaq_f32(v32, v623, *v63);
                v63[1] = v625;
                v626 = vmlaq_f32(v32, v623, v63[3]);
                v63[2] = vmlaq_f32(v32, v623, v63[2]);
                v63[3] = v626;
                v63 += 4;
                --v624;
              }

              while (v624 > 1);
              v627 = v30 & 3;
            }

            if (v627 >= 1)
            {
              v628 = v627 + 1;
              do
              {
                *v63 = vmlaq_f32(v32, v623, *v63);
                ++v63;
                --v628;
              }

              while (v628 > 1);
            }

            v63 += v563;
            --v622;
          }

          while (v622);
          goto LABEL_1196;
        case 3:
          v634 = v768[0];
          v635 = vextq_s8(v32, v32, 8uLL).u64[0];
          do
          {
            v636 = v30;
            do
            {
              v637 = v63->f32[3];
              if (v637 <= 0.0)
              {
                v63->i64[0] = 0;
                v63->i64[1] = 0;
              }

              else if (v637 >= 1.0)
              {
                v63->i64[0] = v32.i64[0];
                v63->i64[1] = v635;
              }

              else
              {
                *v63 = vmulq_n_f32(v32, v637);
              }

              ++v63;
              --v636;
            }

            while (v636);
            v63 += v563;
            --v634;
          }

          while (v634);
          goto LABEL_1196;
        case 4:
          v597 = v768[0];
          v598 = vextq_s8(v32, v32, 8uLL).u64[0];
          do
          {
            v599 = v30;
            do
            {
              v600 = 1.0 - v63->f32[3];
              if (v600 <= 0.0)
              {
                v63->i64[0] = 0;
                v63->i64[1] = 0;
              }

              else if (v600 >= 1.0)
              {
                v63->i64[0] = v32.i64[0];
                v63->i64[1] = v598;
              }

              else
              {
                *v63 = vmulq_n_f32(v32, v600);
              }

              ++v63;
              --v599;
            }

            while (v599);
            v63 += v563;
            --v597;
          }

          while (v597);
          goto LABEL_1196;
        case 5:
          v652 = v768[0];
          do
          {
            v653 = v30;
            do
            {
              *v63 = vmlaq_laneq_f32(vmulq_n_f32(*v63, *&v13), v32, *v63, 3);
              ++v63;
              --v653;
            }

            while (v653);
            v63 += v563;
            --v652;
          }

          while (v652);
          goto LABEL_1196;
        case 6:
          v664 = v768[0];
          while (1)
          {
            v665 = v30;
            do
            {
              v666 = v63->f32[3];
              v667 = 1.0 - v666;
              if ((1.0 - v666) >= 1.0)
              {
                v63->i64[0] = v32.i64[0];
                v63->i32[2] = v32.i32[2];
                v668 = v33;
              }

              else
              {
                if (v667 <= 0.0)
                {
                  goto LABEL_1138;
                }

                *v63->f32 = vmla_n_f32(*v63->f32, *v32.f32, v667);
                v63->f32[2] = v63->f32[2] + (v32.f32[2] * v667);
                v668 = v666 + (v33 * v667);
              }

              v63->f32[3] = v668;
LABEL_1138:
              ++v63;
              --v665;
            }

            while (v665);
            v63 += v563;
            if (!--v664)
            {
              goto LABEL_1196;
            }
          }

        case 7:
          v638 = v768[0];
          do
          {
            v639 = v30;
            do
            {
              *v63 = vmulq_laneq_f32(*v63, v32, 3);
              ++v63;
              --v639;
            }

            while (v639);
            v63 += v563;
            --v638;
          }

          while (v638);
          goto LABEL_1196;
        case 8:
          v676 = v768[0];
          do
          {
            v677 = v30;
            do
            {
              *v63 = vmulq_n_f32(*v63, *&v13);
              ++v63;
              --v677;
            }

            while (v677);
            v63 += v563;
            --v676;
          }

          while (v676);
          goto LABEL_1196;
        case 9:
          v604 = v768[0];
          do
          {
            v605 = v30;
            do
            {
              *v63 = vmlaq_n_f32(vmulq_laneq_f32(*v63, v32, 3), v32, 1.0 - COERCE_FLOAT(HIDWORD(*v63)));
              ++v63;
              --v605;
            }

            while (v605);
            v63 += v563;
            --v604;
          }

          while (v604);
          goto LABEL_1196;
        case 10:
          v674 = v768[0];
          do
          {
            v675 = v30;
            do
            {
              *v63 = vmlaq_n_f32(vmulq_n_f32(*v63, *&v13), v32, 1.0 - COERCE_FLOAT(HIDWORD(*v63)));
              ++v63;
              --v675;
            }

            while (v675);
            v63 += v563;
            --v674;
          }

          while (v674);
          goto LABEL_1196;
        case 11:
          v588 = v33 - v32.f32[0];
          v589 = v33 + 1.0;
          if ((v33 + 1.0) > 1.0)
          {
            v589 = 1.0;
          }

          v590 = v768[0];
          do
          {
            v591 = v30;
            do
            {
              if (v19)
              {
                v592 = v63->f32[3];
                v593 = v33 + v592;
                if ((v33 + v592) > 1.0)
                {
                  v593 = 1.0;
                }

                v594 = v592 - v63->f32[1];
                v595 = v593 - (v588 + (v592 - v63->f32[0]));
              }

              else
              {
                v592 = 1.0;
                v594 = 1.0 - v63->f32[1];
                v595 = v589 - (v588 + (1.0 - v63->f32[0]));
                v593 = v589;
              }

              v596 = v63->f32[2];
              v63->f32[0] = v595;
              v63->f32[1] = v593 - ((v33 - v32.f32[1]) + v594);
              v63->f32[2] = v593 - ((v33 - v32.f32[2]) + (v592 - v596));
              v63->f32[3] = v593;
              ++v63;
              --v591;
            }

            while (v591);
            v63 += v563;
            --v590;
          }

          while (v590);
          goto LABEL_1196;
        case 12:
          v601 = v768[0];
          do
          {
            v602 = v30;
            do
            {
              *v63->f32 = vadd_f32(*v32.f32, *v63->f32);
              v603 = v33 + v63->f32[3];
              if (v603 > 1.0)
              {
                v603 = 1.0;
              }

              v63->f32[2] = v32.f32[2] + v63->f32[2];
              v63->f32[3] = v603;
              ++v63;
              --v602;
            }

            while (v602);
            v63 += v563;
            --v601;
          }

          while (v601);
          goto LABEL_1196;
        case 13:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v659 = v32.i32[2];
          v660 = v768[0];
          while (1)
          {
            v661 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v662 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v659;
                  *&v13 = v33;
                  goto LABEL_1128;
                }
              }

              else
              {
                v662 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v663 = PDAmultiplyPDA(v63->f32[0], v11, v12, v13, v662, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v659)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v663;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_1128:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v661;
            }

            while (v661);
            v63 += v563;
            if (!--v660)
            {
              goto LABEL_1208;
            }
          }

        case 14:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v580 = v768[0];
          v581 = vextq_s8(v32, v32, 8uLL).u64[0];
          __asm { FMOV            V1.2S, #1.0 }

          while (1)
          {
            v583 = v30;
            do
            {
              if (v19)
              {
                v584 = v63->f32[3];
                if (v584 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i64[1] = v581;
                  goto LABEL_983;
                }
              }

              else
              {
                v584 = 1.0;
              }

              v585.i64[0] = v63->i64[0];
              *v586.f32 = vsub_f32(_D1, *v63->f32);
              v587 = v32;
              v587.f32[3] = -v584;
              v586.i32[3] = HIDWORD(v581);
              v586.f32[2] = 1.0 - v63->f32[2];
              v585.i32[2] = v63->i32[2];
              v585.f32[3] = v33 + v584;
              *v63 = vmlaq_f32(v585, v586, v587);
LABEL_983:
              ++v63;
              --v583;
            }

            while (v583);
            v63 += v563;
            if (!--v580)
            {
              goto LABEL_1196;
            }
          }

        case 15:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v629 = v32.i32[2];
          v630 = v768[0];
          while (1)
          {
            v631 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v632 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v629;
                  *&v13 = v33;
                  goto LABEL_1061;
                }
              }

              else
              {
                v632 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v633 = PDAoverlayPDA(v63->f32[0], v11, v12, v13, v632, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v629)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v633;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_1061:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v631;
            }

            while (v631);
            v63 += v563;
            if (!--v630)
            {
              goto LABEL_1208;
            }
          }

        case 16:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v575 = v32.i32[2];
          v576 = v768[0];
          while (1)
          {
            v577 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v578 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v575;
                  *&v13 = v33;
                  goto LABEL_972;
                }
              }

              else
              {
                v578 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v579 = PDAdarkenPDA(v63->f32[0], v11, v12, v13, v578, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v575)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v579;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_972:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v577;
            }

            while (v577);
            v63 += v563;
            if (!--v576)
            {
              goto LABEL_1208;
            }
          }

        case 17:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v641 = v32.i32[2];
          v642 = v768[0];
          while (1)
          {
            v643 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v644 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v641;
                  *&v13 = v33;
                  goto LABEL_1090;
                }
              }

              else
              {
                v644 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v645 = PDAlightenPDA(v63->f32[0], v11, v12, v13, v644, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v641)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v645;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_1090:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v643;
            }

            while (v643);
            v63 += v563;
            if (!--v642)
            {
              goto LABEL_1208;
            }
          }

        case 18:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v669 = v32.i32[2];
          v670 = v768[0];
          while (1)
          {
            v671 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v672 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v669;
                  *&v13 = v33;
                  goto LABEL_1149;
                }
              }

              else
              {
                v672 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v673 = PDAcolordodgePDA(v63->f32[0], v11, v12, v13, v672, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v669)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v673;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_1149:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v671;
            }

            while (v671);
            v63 += v563;
            if (!--v670)
            {
              goto LABEL_1208;
            }
          }

        case 19:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v691 = v32.i32[2];
          v692 = v768[0];
          while (1)
          {
            v693 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v694 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v691;
                  *&v13 = v33;
                  goto LABEL_1183;
                }
              }

              else
              {
                v694 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v695 = PDAcolorburnPDA(v63->f32[0], v11, v12, v13, v694, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v691)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v695;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_1183:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v693;
            }

            while (v693);
            v63 += v563;
            if (!--v692)
            {
              goto LABEL_1208;
            }
          }

        case 20:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v646 = v32.u32[1];
          v647 = v32.i32[2];
          v648 = v768[0];
          while (1)
          {
            v649 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                LODWORD(v14) = v63->i32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v647;
                  *&v13 = v33;
                  goto LABEL_1101;
                }
              }

              else
              {
                LODWORD(v14) = 1.0;
              }

              LODWORD(v12) = v63->i32[2];
              v650 = PDAsoftlightPDA(v63->f32[0], v63->f32[1], v12, *&v13, v14, v15, v16, v17, v2, v3, v4, v5, v6, v7, v8, v9, v32.f32[0], v646, __SPAIR64__(LODWORD(v33), v647), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v650;
              v63->i32[1] = v651;
              v63->i32[2] = LODWORD(v12);
LABEL_1101:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v649;
            }

            while (v649);
            v63 += v563;
            if (!--v648)
            {
              goto LABEL_1208;
            }
          }

        case 21:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v654 = v32.i32[2];
          v655 = v768[0];
          while (1)
          {
            v656 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v657 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v654;
                  *&v13 = v33;
                  goto LABEL_1117;
                }
              }

              else
              {
                v657 = 1.0;
              }

              LODWORD(v11) = v63->i32[1];
              LODWORD(v12) = v63->i32[2];
              v658 = PDAhardlightPDA(v63->f32[0], v11, v12, v13, v657, v15, v16, v17, v32.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v33), v654)), v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v658;
              v63->i32[1] = LODWORD(v11);
              v63->i32[2] = LODWORD(v12);
LABEL_1117:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v656;
            }

            while (v656);
            v63 += v563;
            if (!--v655)
            {
              goto LABEL_1208;
            }
          }

        case 22:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v678 = v768[0];
          while (1)
          {
            v679 = v30;
            do
            {
              if (v19)
              {
                v680 = v63->f32[3];
                if (v680 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v32.i32[2];
                  v681 = v33;
                  goto LABEL_1172;
                }
              }

              else
              {
                v680 = 1.0;
              }

              v682 = v63->f32[2];
              v683 = vmul_laneq_f32(*v63->f32, v32, 3);
              v684 = vmul_n_f32(*v32.f32, v680);
              v685 = vsub_f32(vadd_f32(*v63->f32, *v32.f32), v683);
              v686 = vsub_f32(v683, v684);
              v687 = vadd_f32(vsub_f32(v685, v684), vbsl_s8(vcltz_f32(v686), vneg_f32(v686), v686));
              v685.f32[0] = v682 + v32.f32[2];
              v688 = v682 * v33;
              v685.f32[0] = v685.f32[0] - v688;
              v689 = v688 - (v32.f32[2] * v680);
              v690 = v685.f32[0] - (v32.f32[2] * v680);
              if (v689 < 0.0)
              {
                v689 = -v689;
              }

              v681 = (v680 + v33) - (v680 * v33);
              *v63->f32 = v687;
              v63->f32[2] = v690 + v689;
LABEL_1172:
              v63->f32[3] = v681;
              ++v63;
              --v679;
            }

            while (v679);
            v63 += v563;
            if (!--v678)
            {
LABEL_1196:
              v768[0] = 0;
              if (!v39)
              {
                return 1;
              }

LABEL_1210:
              v767 = 0;
LABEL_1211:
              v2 = shape_enum_clip_next(v39, &v767 + 1, &v767, v778, v768);
              if (v2)
              {
                v63 = (v37 + 16 * v35 * v767 + 16 * SHIDWORD(v767));
                v30 = v778[0];
                v13 = v763;
                v32 = v765;
                goto LABEL_951;
              }

              v82 = v39;
LABEL_1214:
              free(v82);
              return 1;
            }
          }

        case 23:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v696 = v768[0];
          v697.i64[0] = 0x4000000040000000;
          v697.i32[2] = 0x40000000;
          v697.i32[3] = v32.i32[3];
          while (1)
          {
            v698 = v30;
            do
            {
              if (v19)
              {
                v699 = v63->f32[3];
                if (v699 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->i32[2] = v32.i32[2];
                  v63->f32[3] = v33;
                  goto LABEL_1194;
                }
              }

              else
              {
                v699 = 1.0;
              }

              v700.i64[0] = v63->i64[0];
              *v701.f32 = vmul_f32(*v32.f32, vneg_f32(*v63->f32));
              v700.i32[2] = v63->i32[2];
              v700.f32[3] = v699;
              v701.f32[2] = -(v700.f32[2] * v32.f32[2]);
              v701.f32[3] = -v699;
              *v63 = vmlaq_f32(vaddq_f32(v32, v700), v697, v701);
LABEL_1194:
              ++v63;
              --v698;
            }

            while (v698);
            v63 += v563;
            if (!--v696)
            {
              goto LABEL_1196;
            }
          }

        case 24:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v614 = v32.f32[1];
          v615 = v32.f32[2];
          v616 = v768[0];
          while (1)
          {
            v617 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v618 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->f32[2] = v615;
                  *&v13 = v33;
                  goto LABEL_1039;
                }
              }

              else
              {
                v618 = 1.0;
              }

              v619 = PDAhuePDA(v63->f32[0], v63->f32[1], v63->f32[2], v13, v618, v15, v16, v17, v32.f32[0], v614, v615, v33, v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v619;
              v63->i32[1] = v620;
              v63->i32[2] = v621;
LABEL_1039:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v617;
            }

            while (v617);
            v63 += v563;
            if (!--v616)
            {
              goto LABEL_1208;
            }
          }

        case 25:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v606 = v32.f32[1];
          v607 = v32.f32[2];
          v608 = v768[0];
          while (1)
          {
            v609 = v30;
            do
            {
              LODWORD(v13) = v63->i32[3];
              if (v19)
              {
                v610 = v63->f32[3];
                if (*&v13 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->f32[2] = v607;
                  *&v13 = v33;
                  goto LABEL_1028;
                }
              }

              else
              {
                v610 = 1.0;
              }

              v611 = PDAsaturationPDA(v63->f32[0], v63->f32[1], v63->f32[2], v13, v610, v15, v16, v17, v32.f32[0], v606, v607, v33, v33);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v611;
              v63->i32[1] = v612;
              v63->i32[2] = v613;
LABEL_1028:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v609;
            }

            while (v609);
            v63 += v563;
            if (!--v608)
            {
              goto LABEL_1208;
            }
          }

        case 26:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v702 = v32.f32[1];
          v703 = v32.f32[2];
          v704 = v768[0];
          while (1)
          {
            v705 = v30;
            do
            {
              if (v19)
              {
                v706 = v63->f32[3];
                if (v706 <= 0.0)
                {
                  v63->i64[0] = v32.i64[0];
                  v63->f32[2] = v703;
                  *&v13 = v33;
                  goto LABEL_1206;
                }
              }

              else
              {
                v706 = 1.0;
              }

              *&v13 = v33;
              v707 = PDAluminosityPDA(v32.f32[0], v702, v703, v13, v33, v15, v16, v17, COERCE_FLOAT(v63->i64[0]), COERCE_FLOAT(HIDWORD(v63->i64[0])), v63->f32[2], v63->f32[3], v706);
              v32.i64[0] = v765.i64[0];
              v63->f32[0] = v707;
              v63->i32[1] = v708;
              v63->i32[2] = v709;
LABEL_1206:
              v63->i32[3] = LODWORD(v13);
              ++v63;
              --v705;
            }

            while (v705);
            v63 += v563;
            if (!--v704)
            {
              goto LABEL_1208;
            }
          }

        case 27:
          if (v33 <= 0.0)
          {
            goto LABEL_1209;
          }

          v567 = v32.f32[1];
          v568 = v32.f32[2];
          v569 = v768[0];
          break;
        default:
          goto LABEL_1209;
      }

LABEL_955:
      v570 = v30;
      while (1)
      {
        LODWORD(v13) = v63->i32[3];
        if (!v19)
        {
          break;
        }

        v571 = v63->f32[3];
        if (*&v13 > 0.0)
        {
          goto LABEL_960;
        }

        v63->i64[0] = v32.i64[0];
        v63->f32[2] = v568;
        *&v13 = v33;
LABEL_961:
        v63->i32[3] = LODWORD(v13);
        ++v63;
        if (!--v570)
        {
          v63 += v563;
          if (!--v569)
          {
LABEL_1208:
            v768[0] = 0;
            v40 = v743;
LABEL_1209:
            if (v39)
            {
              goto LABEL_1210;
            }

            return 1;
          }

          goto LABEL_955;
        }
      }

      v571 = 1.0;
LABEL_960:
      v572 = PDAluminosityPDA(v63->f32[0], v63->f32[1], v63->f32[2], v13, v571, v15, v16, v17, v32.f32[0], v567, v568, v33, v33);
      v32.i64[0] = v765.i64[0];
      v63->f32[0] = v572;
      v63->i32[1] = v573;
      v63->i32[2] = v574;
      goto LABEL_961;
    }

    v778[0] = *(v3 + 4);
    v768[0] = v24;
    v41 = *(v3 + 28);
    v42 = *(v3 + 40);
    v734 = *(v3 + 88);
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken, &__block_literal_global_9_13911);
    }

    v737 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result;
    v43 = v41 >> 4;
    v44 = v742;
    v728 = v19 != 0;
    v45 = v42 + 16 * (v41 >> 4) * *(v742 + 16) + 16 * *(v742 + 12);
    v46 = *(v742 + 104);
    v47 = *(v742 + 108);
    v48 = *(v742 + 76) >> 4;
    v729 = v26;
    v732 = *(v742 + 56);
    v733 = *(v742 + 60);
    if (v29 != 256)
    {
      LODWORD(v748) = *(v742 + 64);
      v58 = *(v742 + 76) >> 4;
      v745 = *(v742 + 68);
      v49 = v734;
      v59 = &v734[v48 * v745];
      v60 = v18 != 0;
      if (v27)
      {
        LODWORD(v5) = 1;
        v766 = v734;
        v61 = v734;
        v62 = v734;
LABEL_45:
        v744 = v5;
        v747 = v43;
        shape_enum_clip_alloc(v2, v3, v27, v5, v43, 1, v46, v47, v762, v24);
        v92 = v91;
        v89 = v743;
        v85 = v45;
        v86 = v58;
        if (!v91)
        {
          return 1;
        }

        while (2)
        {
          v2 = shape_enum_clip_next(v92, &v767 + 1, &v767, v778, v768);
          if (!v2)
          {
            v82 = v92;
            goto LABEL_1214;
          }

          v746 = v92;
          if (v59)
          {
            v44 = v742;
            v43 = v747;
            v87 = &v85[v747 * v767 + SHIDWORD(v767)];
            v49 = v61;
            v88 = v61 + 16 * v86 * ((v767 + *(v742 + 60)) % v745);
            v84 = v88 + 16 * ((HIDWORD(v767) + *(v742 + 56)) % v748);
            v62 = v88 + 16 * v748;
            v766 = v84;
            LODWORD(v762) = v778[0];
            LODWORD(v88) = v778[0];
            v732 = (HIDWORD(v767) + *(v742 + 56)) % v748;
            v733 = (v767 + *(v742 + 60)) % v745;
          }

          else
          {
            LODWORD(v762) = v778[0];
            LODWORD(v88) = v778[0] * v744;
            v43 = v747;
            v87 = &v85[v747 * v767 + HIDWORD(v767) * v744];
            v49 = v61;
            v84 = v61 + 16 * v767 * v748 + 16 * HIDWORD(v767) * v744;
            v86 = v748 - v778[0] * v744;
            v44 = v742;
          }

          v88 = v88;
LABEL_49:
          v747 = v43;
          v764 = v43 - v88;
          v761 = v86;
          switch(v89)
          {
            case 0:
              v61 = v49;
              v93 = &v87[-v762 + 1];
              v94 = v764 + v762;
              if (v744 < 0)
              {
                v94 = v764 - v762;
              }

              else
              {
                v93 = v87;
              }

              v95 = (v93 + 16 * ((v94 * (v768[0] - 1)) & (v94 >> 63)));
              if (v94 < 0)
              {
                v94 = -v94;
              }

              CGBlt_fillBytes(16 * v762, v768[0], 0, v95, 16 * v94);
              goto LABEL_847;
            case 1:
              v195 = *(v44 + 1);
              if (v195 == 2)
              {
                if (v762 >= 2 && (16 * v748) <= 0x40)
                {
                  LODWORD(v10) = 16 * v748;
                  v400 = vcnt_s8(*&v10);
                  v400.i16[0] = vaddlv_u8(v400);
                  if (v400.i32[0] <= 1u)
                  {
                    v61 = v49;
                    CGSFillDRAM64(v87, 16 * (v762 + v764), 16 * v762, v768[0], v49, 16 * v86, 16 * v748, v745, 16 * v732, v733);
                    goto LABEL_847;
                  }
                }

LABEL_624:
                v61 = v49;
                v401 = v768[0];
                if (v19 == 0 || v60)
                {
                  do
                  {
                    v402 = v762;
                    do
                    {
                      *v87 = *v84;
                      v403 = v84 + 16 * v744;
                      if (v403 >= v62)
                      {
                        v404 = -v748;
                      }

                      else
                      {
                        v404 = 0;
                      }

                      v84 = v403 + 16 * v404;
                      v87 += v744;
                      --v402;
                    }

                    while (v402);
                    v87 += v764;
                    v405 = v766;
                    v406 = &v766[v86];
                    if (v406 >= v59)
                    {
                      v407 = -(v86 * v745);
                    }

                    else
                    {
                      v407 = 0;
                    }

                    i64 = v406[v407].i64;
                    v409 = v62 + 16 * v407 + 16 * v86;
                    if (v59)
                    {
                      v62 = v409;
                      v405 = i64;
                    }

                    v766 = v405;
                    if (v59)
                    {
                      v84 = i64;
                    }

                    else
                    {
                      v84 += 16 * v86;
                    }

                    --v401;
                  }

                  while (v401);
                }

                else
                {
                  do
                  {
                    v410 = v762;
                    do
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                      v87->i32[3] = 1065353216;
                      v411 = v84 + 16 * v744;
                      if (v411 >= v62)
                      {
                        v412 = -v748;
                      }

                      else
                      {
                        v412 = 0;
                      }

                      v84 = v411 + 16 * v412;
                      v87 += v744;
                      --v410;
                    }

                    while (v410);
                    v87 += v764;
                    v413 = v766;
                    v414 = &v766[v86];
                    if (v414 >= v59)
                    {
                      v415 = -(v86 * v745);
                    }

                    else
                    {
                      v415 = 0;
                    }

                    v416 = v414[v415].i64;
                    v417 = v62 + 16 * v415 + 16 * v86;
                    if (v59)
                    {
                      v62 = v417;
                      v413 = v416;
                    }

                    v766 = v413;
                    if (v59)
                    {
                      v84 = v416;
                    }

                    else
                    {
                      v84 += 16 * v86;
                    }

                    --v401;
                  }

                  while (v401);
                }

                goto LABEL_846;
              }

              if (v195 != 1)
              {
                goto LABEL_624;
              }

              if (v19 != 0 && !v60)
              {
                v61 = v49;
                v490 = v768[0];
                do
                {
                  v491 = v762;
                  do
                  {
                    v87->i64[0] = *v84;
                    v87->i32[2] = *(v84 + 8);
                    v87->i32[3] = 1065353216;
                    v492 = v84 + 16 * v744;
                    if (v492 >= v62)
                    {
                      v493 = -v748;
                    }

                    else
                    {
                      v493 = 0;
                    }

                    v84 = v492 + 16 * v493;
                    v87 += v744;
                    --v491;
                  }

                  while (v491);
                  v87 += v764;
                  v494 = v766;
                  v495 = &v766[v86];
                  if (v495 >= v59)
                  {
                    v496 = -(v86 * v745);
                  }

                  else
                  {
                    v496 = 0;
                  }

                  v497 = v495[v496].i64;
                  v498 = v62 + 16 * v496 + 16 * v86;
                  if (v59)
                  {
                    v62 = v498;
                    v494 = v497;
                  }

                  v766 = v494;
                  if (v59)
                  {
                    v84 = v497;
                  }

                  else
                  {
                    v84 += 16 * v86;
                  }

                  --v490;
                }

                while (v490);
                goto LABEL_846;
              }

              v61 = v49;
              if (v744 < 0)
              {
                v196 = v86 - v762;
                v559 = 16 * v762 - 16;
                v84 -= v559;
                v197 = v764 - v762;
                v87 = (v87 - v559);
              }

              else
              {
                v196 = v86 + v762;
                v197 = v764 + v762;
              }

              v560 = v768[0] - 1;
              v561 = (v84 + 16 * ((v196 * v560) & (v196 >> 63)));
              if (v196 >= 0)
              {
                v86 = v196;
              }

              else
              {
                v86 = -v196;
              }

              if (v197 >= 0)
              {
                LODWORD(v562) = v197;
              }

              else
              {
                v562 = -v197;
              }

              CGBlt_copyBytes(16 * v762, v768[0], v561, &v87[(v197 * v560) & (v197 >> 63)], 16 * v86, 16 * v562);
LABEL_847:
              v92 = v746;
              if (!v746)
              {
                return 1;
              }

              v767 = 0;
              continue;
            case 2:
              if (v737)
              {
                v155 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  v156 = 32 * v744;
                  if ((*v729 & 0x30) != 0)
                  {
                    __asm { FMOV            V0.4S, #1.0 }

                    v161 = v62;
                    v162 = v766;
                    do
                    {
                      v163 = (v161 - v84) >> 4;
                      if (v163 >= v762)
                      {
                        v163 = v762;
                      }

                      v164 = v163;
                      if (v163 >= 2)
                      {
                        do
                        {
                          v165 = *(v84 + 16);
                          v166 = vdupq_laneq_s32(v165, 3);
                          v167 = vdupq_laneq_s32(*v84, 3);
                          v168 = vbslq_s8(vcgtzq_f32(v166), vaddq_f32(v165, vmlsq_f32(v87[1], vmaxnmq_f32(vminnmq_f32(v166, _Q0), 0), v87[1])), v87[1]);
                          *v87 = vbslq_s8(vcgtzq_f32(v167), vaddq_f32(*v84, vmlsq_f32(*v87, vmaxnmq_f32(vminnmq_f32(v167, _Q0), 0), *v87)), *v87);
                          v87[1] = v168;
                          v164 -= 2;
                          v84 += v156;
                          v87 = (v87 + v156);
                        }

                        while (v164 > 1);
                      }

                      for (i = v164 + v762 - v163; i; --i)
                      {
                        v170 = vdupq_laneq_s32(*v84, 3);
                        *v87 = vbslq_s8(vcgtzq_f32(v170), vaddq_f32(*v84, vmlsq_f32(*v87, vmaxnmq_f32(vminnmq_f32(v170, _Q0), 0), *v87)), *v87);
                        v171 = v84 + 16 * v744;
                        if (v171 >= v161)
                        {
                          v172 = -v748;
                        }

                        else
                        {
                          v172 = 0;
                        }

                        v84 = v171 + 16 * v172;
                        v87 += v744;
                      }

                      v87 += v764;
                      v173 = &v162[v86];
                      if (v173 >= v59)
                      {
                        v174 = -(v86 * v745);
                      }

                      else
                      {
                        v174 = 0;
                      }

                      v175 = v173 + 16 * v174;
                      v176 = v161 + 16 * v174 + 16 * v86;
                      if (v59)
                      {
                        v84 = v175;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v161 = v176;
                        v162 = v175;
                      }

                      _VF = __OFSUB__(v155--, 1);
                    }

                    while (!((v155 < 0) ^ _VF | (v155 == 0)));
                  }

                  else
                  {
                    __asm { FMOV            V0.4S, #1.0 }

                    v512 = v62;
                    v513 = v766;
                    do
                    {
                      v514 = (v512 - v84) >> 4;
                      if (v514 >= v762)
                      {
                        v514 = v762;
                      }

                      v515 = v514;
                      if (v514 >= 2)
                      {
                        do
                        {
                          v516 = vrev32q_s8(*(v84 + 16));
                          v517 = vrev32q_s8(*v84);
                          v518 = vrev32q_s8(v87[1]);
                          v519 = vrev32q_s8(*v87);
                          v520 = vdupq_laneq_s32(v517, 3);
                          v521 = vdupq_laneq_s32(v516, 3);
                          *v87 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v520), vaddq_f32(vmlsq_f32(v519, vmaxnmq_f32(vminnmq_f32(v520, _Q0), 0), v519), v517), v519));
                          v87[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v521), vaddq_f32(vmlsq_f32(v518, vmaxnmq_f32(vminnmq_f32(v521, _Q0), 0), v518), v516), v518));
                          v515 -= 2;
                          v84 += v156;
                          v87 = (v87 + v156);
                        }

                        while (v515 > 1);
                      }

                      for (j = v515 + v762 - v514; j; --j)
                      {
                        v523 = vrev32q_s8(*v84);
                        v524 = vrev32q_s8(*v87);
                        v525 = vdupq_laneq_s32(v523, 3);
                        *v87 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v525), vaddq_f32(vmlsq_f32(v524, vmaxnmq_f32(vminnmq_f32(v525, _Q0), 0), v524), v523), v524));
                        v526 = v84 + 16 * v744;
                        if (v526 >= v512)
                        {
                          v527 = -v748;
                        }

                        else
                        {
                          v527 = 0;
                        }

                        v84 = v526 + 16 * v527;
                        v87 += v744;
                      }

                      v87 += v764;
                      v528 = &v513[v86];
                      if (v528 >= v59)
                      {
                        v529 = -(v86 * v745);
                      }

                      else
                      {
                        v529 = 0;
                      }

                      v530 = v528 + 16 * v529;
                      v531 = v512 + 16 * v529 + 16 * v86;
                      if (v59)
                      {
                        v84 = v530;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v512 = v531;
                        v513 = v530;
                      }

                      _VF = __OFSUB__(v155--, 1);
                    }

                    while (!((v155 < 0) ^ _VF | (v155 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v155 = v768[0];
              }

              do
              {
                v301 = v762;
                do
                {
                  v302 = *(v84 + 12);
                  if (v302 >= 1.0)
                  {
                    v87->i64[0] = *v84;
                    v87->i32[2] = *(v84 + 8);
                    v87->f32[3] = v302;
                  }

                  else if (v302 > 0.0)
                  {
                    *v87 = vmlaq_n_f32(*v84, *v87, 1.0 - v302);
                  }

                  v303 = v84 + 16 * v744;
                  if (v303 >= v62)
                  {
                    v304 = -v748;
                  }

                  else
                  {
                    v304 = 0;
                  }

                  v84 = v303 + 16 * v304;
                  v87 += v744;
                  --v301;
                }

                while (v301);
                v87 += v764;
                v305 = v766;
                v306 = &v766[v86];
                if (v306 >= v59)
                {
                  v307 = -(v86 * v745);
                }

                else
                {
                  v307 = 0;
                }

                v308 = v306[v307].i64;
                v309 = v62 + 16 * v307 + 16 * v86;
                if (v59)
                {
                  v62 = v309;
                  v305 = v308;
                }

                v766 = v305;
                if (v59)
                {
                  v84 = v308;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v155;
              }

              while (v155);
              goto LABEL_846;
            case 3:
              if (v737)
              {
                v178 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  if ((*v729 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)3,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v60);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)3,_RGBAf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v60);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v178 = v768[0];
              }

              do
              {
                v310 = v762;
                do
                {
                  v311 = v87->f32[3];
                  if (v311 <= 0.0)
                  {
                    v87->i64[0] = 0;
                    v87->i64[1] = 0;
                  }

                  else
                  {
                    v312 = *v84;
                    if (v311 >= 1.0)
                    {
                      v87->f32[0] = v312;
                      *(v87->i64 + 4) = *(v84 + 4);
                      v314 = 1.0;
                      if (v60)
                      {
                        v314 = *(v84 + 12);
                      }
                    }

                    else
                    {
                      v87->f32[0] = v311 * v312;
                      *&v87->i32[1] = vmul_n_f32(*(v84 + 4), v311);
                      v313 = 1.0;
                      if (v60)
                      {
                        v313 = *(v84 + 12);
                      }

                      v314 = v311 * v313;
                    }

                    v87->f32[3] = v314;
                  }

                  v315 = v84 + 16 * v744;
                  if (v315 >= v62)
                  {
                    v316 = -v748;
                  }

                  else
                  {
                    v316 = 0;
                  }

                  v84 = v315 + 16 * v316;
                  v87 += v744;
                  --v310;
                }

                while (v310);
                v87 += v764;
                v317 = v766;
                v318 = &v766[v86];
                if (v318 >= v59)
                {
                  v319 = -(v86 * v745);
                }

                else
                {
                  v319 = 0;
                }

                v320 = v318[v319].i64;
                v321 = v62 + 16 * v319 + 16 * v86;
                if (v59)
                {
                  v62 = v321;
                  v317 = v320;
                }

                v766 = v317;
                if (v59)
                {
                  v84 = v320;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v178;
              }

              while (v178);
              goto LABEL_846;
            case 4:
              if (v737)
              {
                v111 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  if ((*v729 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)4,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v60);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)4,_RGBAf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v60);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v111 = v768[0];
              }

              do
              {
                v271 = v762;
                do
                {
                  v272 = 1.0 - v87->f32[3];
                  if (v272 <= 0.0)
                  {
                    v87->i64[0] = 0;
                    v87->i64[1] = 0;
                  }

                  else
                  {
                    v273 = *v84;
                    if (v272 >= 1.0)
                    {
                      v87->f32[0] = v273;
                      *(v87->i64 + 4) = *(v84 + 4);
                      v275 = 1.0;
                      if (v60)
                      {
                        v275 = *(v84 + 12);
                      }
                    }

                    else
                    {
                      v87->f32[0] = v272 * v273;
                      *&v87->i32[1] = vmul_n_f32(*(v84 + 4), v272);
                      v274 = 1.0;
                      if (v60)
                      {
                        v274 = *(v84 + 12);
                      }

                      v275 = v272 * v274;
                    }

                    v87->f32[3] = v275;
                  }

                  v276 = v84 + 16 * v744;
                  if (v276 >= v62)
                  {
                    v277 = -v748;
                  }

                  else
                  {
                    v277 = 0;
                  }

                  v84 = v276 + 16 * v277;
                  v87 += v744;
                  --v271;
                }

                while (v271);
                v87 += v764;
                v278 = v766;
                v279 = &v766[v86];
                if (v279 >= v59)
                {
                  v280 = -(v86 * v745);
                }

                else
                {
                  v280 = 0;
                }

                v281 = v279[v280].i64;
                v282 = v62 + 16 * v280 + 16 * v86;
                if (v59)
                {
                  v62 = v282;
                  v278 = v281;
                }

                v766 = v278;
                if (v59)
                {
                  v84 = v281;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v111;
              }

              while (v111);
              goto LABEL_846;
            case 5:
              if (v737)
              {
                v200 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)5,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, *v729);
                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v200 = v768[0];
              }

              do
              {
                v331 = v762;
                do
                {
                  *v87 = vmlaq_laneq_f32(vmulq_n_f32(*v87, 1.0 - COERCE_FLOAT(HIDWORD(*v84))), *v84, *v87, 3);
                  v332 = v84 + 16 * v744;
                  if (v332 >= v62)
                  {
                    v333 = -v748;
                  }

                  else
                  {
                    v333 = 0;
                  }

                  v84 = v332 + 16 * v333;
                  v87 += v744;
                  --v331;
                }

                while (v331);
                v87 += v764;
                v334 = v766;
                v335 = &v766[v86];
                if (v335 >= v59)
                {
                  v336 = -(v86 * v745);
                }

                else
                {
                  v336 = 0;
                }

                v337 = v335[v336].i64;
                v338 = v62 + 16 * v336 + 16 * v86;
                if (v59)
                {
                  v62 = v338;
                  v334 = v337;
                }

                v766 = v334;
                if (v59)
                {
                  v84 = v337;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v200;
              }

              while (v200);
              goto LABEL_846;
            case 6:
              if (v737)
              {
                v203 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  if ((*v729 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)6,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v60);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)6,_RGBAf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v60);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v203 = v768[0];
              }

              break;
            case 7:
              if (v737)
              {
                v179 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  v180 = 32 * v744;
                  v181 = 16 * v744;
                  __asm { FMOV            V0.4S, #1.0 }

                  if ((*v729 & 0x30) != 0)
                  {
                    v183 = v62;
                    v184 = v766;
                    do
                    {
                      v185 = (v183 - v84) >> 4;
                      if (v185 >= v762)
                      {
                        v185 = v762;
                      }

                      v186 = v185;
                      if (v185 >= 2)
                      {
                        do
                        {
                          v187 = vmulq_f32(v87[1], vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*(v84 + 16), 3), _Q0), 0));
                          *v87 = vmulq_f32(*v87, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v84, 3), _Q0), 0));
                          v87[1] = v187;
                          v186 -= 2;
                          v84 += v180;
                          v87 = (v87 + v180);
                        }

                        while (v186 > 1);
                      }

                      for (k = v186 + v762 - v185; k; --k)
                      {
                        *v87 = vmulq_f32(*v87, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v84, 3), _Q0), 0));
                        v189 = v84 + 16 * v744;
                        if (v189 >= v183)
                        {
                          v190 = -v748;
                        }

                        else
                        {
                          v190 = 0;
                        }

                        v84 = v189 + 16 * v190;
                        v87 = (v87 + v181);
                      }

                      v87 += v764;
                      v191 = &v184[v86];
                      if (v191 >= v59)
                      {
                        v192 = -(v86 * v745);
                      }

                      else
                      {
                        v192 = 0;
                      }

                      v193 = v191 + 16 * v192;
                      v194 = v183 + 16 * v192 + 16 * v86;
                      if (v59)
                      {
                        v84 = v193;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v183 = v194;
                        v184 = v193;
                      }

                      _VF = __OFSUB__(v179--, 1);
                    }

                    while (!((v179 < 0) ^ _VF | (v179 == 0)));
                  }

                  else
                  {
                    v532 = v62;
                    v533 = v766;
                    do
                    {
                      v534 = (v532 - v84) >> 4;
                      if (v534 >= v762)
                      {
                        v534 = v762;
                      }

                      v535 = v534;
                      if (v534 >= 2)
                      {
                        do
                        {
                          v536 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*(v84 + 16)), 3), _Q0), 0), vrev32q_s8(v87[1])));
                          *v87 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v84), 3), _Q0), 0), vrev32q_s8(*v87)));
                          v87[1] = v536;
                          v535 -= 2;
                          v84 += v180;
                          v87 = (v87 + v180);
                        }

                        while (v535 > 1);
                      }

                      for (m = v535 + v762 - v534; m; --m)
                      {
                        *v87 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v84), 3), _Q0), 0), vrev32q_s8(*v87)));
                        v538 = v84 + 16 * v744;
                        if (v538 >= v532)
                        {
                          v539 = -v748;
                        }

                        else
                        {
                          v539 = 0;
                        }

                        v84 = v538 + 16 * v539;
                        v87 = (v87 + v181);
                      }

                      v87 += v764;
                      v540 = &v533[v86];
                      if (v540 >= v59)
                      {
                        v541 = -(v86 * v745);
                      }

                      else
                      {
                        v541 = 0;
                      }

                      v542 = v540 + 16 * v541;
                      v543 = v532 + 16 * v541 + 16 * v86;
                      if (v59)
                      {
                        v84 = v542;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v532 = v543;
                        v533 = v542;
                      }

                      _VF = __OFSUB__(v179--, 1);
                    }

                    while (!((v179 < 0) ^ _VF | (v179 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v179 = v768[0];
              }

              do
              {
                v322 = v762;
                do
                {
                  v323 = *(v84 + 12);
                  if (v323 <= 0.0)
                  {
                    v87->i64[0] = 0;
                    v87->i64[1] = 0;
                  }

                  else if (v323 < 1.0)
                  {
                    *v87 = vmulq_n_f32(*v87, v323);
                  }

                  v324 = v84 + 16 * v744;
                  if (v324 >= v62)
                  {
                    v325 = -v748;
                  }

                  else
                  {
                    v325 = 0;
                  }

                  v84 = v324 + 16 * v325;
                  v87 += v744;
                  --v322;
                }

                while (v322);
                v87 += v764;
                v326 = v766;
                v327 = &v766[v86];
                if (v327 >= v59)
                {
                  v328 = -(v86 * v745);
                }

                else
                {
                  v328 = 0;
                }

                v329 = v327[v328].i64;
                v330 = v62 + 16 * v328 + 16 * v86;
                if (v59)
                {
                  v62 = v330;
                  v326 = v329;
                }

                v766 = v326;
                if (v59)
                {
                  v84 = v329;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v179;
              }

              while (v179);
              goto LABEL_846;
            case 8:
              if (v737)
              {
                v206 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  v207 = 32 * v744;
                  v208 = 16 * v744;
                  __asm { FMOV            V0.4S, #1.0 }

                  if ((*v729 & 0x30) != 0)
                  {
                    v210 = v62;
                    v211 = v766;
                    do
                    {
                      v212 = (v210 - v84) >> 4;
                      if (v212 >= v762)
                      {
                        v212 = v762;
                      }

                      v213 = v212;
                      if (v212 >= 2)
                      {
                        do
                        {
                          v214 = vmlsq_f32(v87[1], v87[1], vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*(v84 + 16), 3), _Q0), 0));
                          *v87 = vmlsq_f32(*v87, *v87, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v84, 3), _Q0), 0));
                          v87[1] = v214;
                          v213 -= 2;
                          v84 += v207;
                          v87 = (v87 + v207);
                        }

                        while (v213 > 1);
                      }

                      for (n = v213 + v762 - v212; n; --n)
                      {
                        *v87 = vmlsq_f32(*v87, *v87, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*v84, 3), _Q0), 0));
                        v216 = v84 + 16 * v744;
                        if (v216 >= v210)
                        {
                          v217 = -v748;
                        }

                        else
                        {
                          v217 = 0;
                        }

                        v84 = v216 + 16 * v217;
                        v87 = (v87 + v208);
                      }

                      v87 += v764;
                      v218 = &v211[v86];
                      if (v218 >= v59)
                      {
                        v219 = -(v86 * v745);
                      }

                      else
                      {
                        v219 = 0;
                      }

                      v220 = v218 + 16 * v219;
                      v221 = v210 + 16 * v219 + 16 * v86;
                      if (v59)
                      {
                        v84 = v220;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v210 = v221;
                        v211 = v220;
                      }

                      _VF = __OFSUB__(v206--, 1);
                    }

                    while (!((v206 < 0) ^ _VF | (v206 == 0)));
                  }

                  else
                  {
                    v544 = v62;
                    v545 = v766;
                    do
                    {
                      v546 = (v544 - v84) >> 4;
                      if (v546 >= v762)
                      {
                        v546 = v762;
                      }

                      v547 = v546;
                      if (v546 >= 2)
                      {
                        do
                        {
                          v548 = vrev32q_s8(v87[1]);
                          v549 = vrev32q_s8(*v87);
                          v550 = vrev32q_s8(vmlsq_f32(v548, v548, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*(v84 + 16)), 3), _Q0), 0)));
                          *v87 = vrev32q_s8(vmlsq_f32(v549, v549, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v84), 3), _Q0), 0)));
                          v87[1] = v550;
                          v547 -= 2;
                          v84 += v207;
                          v87 = (v87 + v207);
                        }

                        while (v547 > 1);
                      }

                      for (ii = v547 + v762 - v546; ii; --ii)
                      {
                        v552 = vrev32q_s8(*v87);
                        *v87 = vrev32q_s8(vmlsq_f32(v552, v552, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*v84), 3), _Q0), 0)));
                        v553 = v84 + 16 * v744;
                        if (v553 >= v544)
                        {
                          v554 = -v748;
                        }

                        else
                        {
                          v554 = 0;
                        }

                        v84 = v553 + 16 * v554;
                        v87 = (v87 + v208);
                      }

                      v87 += v764;
                      v555 = &v545[v86];
                      if (v555 >= v59)
                      {
                        v556 = -(v86 * v745);
                      }

                      else
                      {
                        v556 = 0;
                      }

                      v557 = v555 + 16 * v556;
                      v558 = v544 + 16 * v556 + 16 * v86;
                      if (v59)
                      {
                        v84 = v557;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v544 = v558;
                        v545 = v557;
                      }

                      _VF = __OFSUB__(v206--, 1);
                    }

                    while (!((v206 < 0) ^ _VF | (v206 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v206 = v768[0];
              }

              do
              {
                v359 = v762;
                do
                {
                  v360 = 1.0 - *(v84 + 12);
                  if (v360 <= 0.0)
                  {
                    v87->i64[0] = 0;
                    v87->i64[1] = 0;
                  }

                  else if (v360 < 1.0)
                  {
                    *v87 = vmulq_n_f32(*v87, v360);
                  }

                  v361 = v84 + 16 * v744;
                  if (v361 >= v62)
                  {
                    v362 = -v748;
                  }

                  else
                  {
                    v362 = 0;
                  }

                  v84 = v361 + 16 * v362;
                  v87 += v744;
                  --v359;
                }

                while (v359);
                v87 += v764;
                v363 = v766;
                v364 = &v766[v86];
                if (v364 >= v59)
                {
                  v365 = -(v86 * v745);
                }

                else
                {
                  v365 = 0;
                }

                v366 = v364[v365].i64;
                v367 = v62 + 16 * v365 + 16 * v86;
                if (v59)
                {
                  v62 = v367;
                  v363 = v366;
                }

                v766 = v363;
                if (v59)
                {
                  v84 = v366;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v206;
              }

              while (v206);
              goto LABEL_846;
            case 9:
              if (v737)
              {
                v130 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)9,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, *v729);
                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v130 = v768[0];
              }

              do
              {
                v293 = v762;
                do
                {
                  *v87 = vmlaq_n_f32(vmulq_laneq_f32(*v87, *v84, 3), *v84, 1.0 - COERCE_FLOAT(HIDWORD(*v87)));
                  v294 = v84 + 16 * v744;
                  if (v294 >= v62)
                  {
                    v295 = -v748;
                  }

                  else
                  {
                    v295 = 0;
                  }

                  v84 = v294 + 16 * v295;
                  v87 += v744;
                  --v293;
                }

                while (v293);
                v87 += v764;
                v296 = v766;
                v297 = &v766[v86];
                if (v297 >= v59)
                {
                  v298 = -(v86 * v745);
                }

                else
                {
                  v298 = 0;
                }

                v299 = v297[v298].i64;
                v300 = v62 + 16 * v298 + 16 * v86;
                if (v59)
                {
                  v62 = v300;
                  v296 = v299;
                }

                v766 = v296;
                if (v59)
                {
                  v84 = v299;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v130;
              }

              while (v130);
              goto LABEL_846;
            case 10:
              if (v737)
              {
                v205 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)10,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, *v729);
                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v205 = v768[0];
              }

              do
              {
                v351 = v762;
                do
                {
                  *v87 = vmlaq_n_f32(vmulq_n_f32(*v87, 1.0 - COERCE_FLOAT(HIDWORD(*v84))), *v84, 1.0 - COERCE_FLOAT(HIDWORD(*v87)));
                  v352 = v84 + 16 * v744;
                  if (v352 >= v62)
                  {
                    v353 = -v748;
                  }

                  else
                  {
                    v353 = 0;
                  }

                  v84 = v352 + 16 * v353;
                  v87 += v744;
                  --v351;
                }

                while (v351);
                v87 += v764;
                v354 = v766;
                v355 = &v766[v86];
                if (v355 >= v59)
                {
                  v356 = -(v86 * v745);
                }

                else
                {
                  v356 = 0;
                }

                v357 = v355[v356].i64;
                v358 = v62 + 16 * v356 + 16 * v86;
                if (v59)
                {
                  v62 = v358;
                  v354 = v357;
                }

                v766 = v354;
                if (v59)
                {
                  v84 = v357;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v205;
              }

              while (v205);
              goto LABEL_846;
            case 11:
              if (v737)
              {
                v110 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  if ((*v729 & 0x30) != 0)
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)11,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60);
                  }

                  else
                  {
                    vec::composite_pixelshape<(CGCompositeOperation)11,_RGBAf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60);
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v110 = v768[0];
              }

              do
              {
                v250 = v762;
                do
                {
                  v251 = 1.0;
                  v252 = 1.0;
                  if (v19)
                  {
                    v252 = v87->f32[3];
                  }

                  if (v60)
                  {
                    v251 = *(v84 + 12);
                  }

                  v253 = 1.0;
                  v254 = 1.0;
                  if (v19)
                  {
                    v254 = v87->f32[3];
                  }

                  if (v60)
                  {
                    v253 = *(v84 + 12);
                  }

                  v255 = v252 + v251;
                  v256 = 1.0;
                  if (v255 > 1.0)
                  {
                    v255 = 1.0;
                  }

                  v257 = 1.0;
                  if (v19)
                  {
                    v257 = v87->f32[3];
                  }

                  if (v60)
                  {
                    v256 = *(v84 + 12);
                  }

                  v258 = v87->f32[1];
                  v259 = v254 - v87->f32[0];
                  v260 = *(v84 + 4);
                  v87->f32[0] = v255 - (v259 + (v253 - *v84));
                  v261 = 1.0;
                  v262 = 1.0;
                  if (v19)
                  {
                    v262 = v87->f32[3];
                  }

                  if (v60)
                  {
                    v261 = *(v84 + 12);
                  }

                  v263 = (v262 - v87->f32[2]) + (v261 - *(v84 + 8));
                  v87->f32[3] = v255;
                  v87->f32[1] = v255 - ((v257 - v258) + (v256 - v260));
                  v87->f32[2] = v255 - v263;
                  v264 = v84 + 16 * v744;
                  if (v264 >= v62)
                  {
                    v265 = -v748;
                  }

                  else
                  {
                    v265 = 0;
                  }

                  v84 = v264 + 16 * v265;
                  v87 += v744;
                  --v250;
                }

                while (v250);
                v87 += v764;
                v266 = v766;
                v267 = &v766[v86];
                if (v267 >= v59)
                {
                  v268 = -(v86 * v745);
                }

                else
                {
                  v268 = 0;
                }

                v269 = v267[v268].i64;
                v270 = v62 + 16 * v268 + 16 * v86;
                if (v59)
                {
                  v62 = v270;
                  v266 = v269;
                }

                v766 = v266;
                if (v59)
                {
                  v84 = v269;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v110;
              }

              while (v110);
              goto LABEL_846;
            case 12:
              if (v737)
              {
                v112 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  v113.i64[0] = 0;
                  v113.i32[2] = 0;
                  v113.i32[3] = v60 - 1;
                  v114 = vmvnq_s8(v113);
                  v115 = vandq_s8(vdupq_n_s32(v60 - 1), xmmword_18439CB00);
                  v116 = 32 * v744;
                  if ((*v729 & 0x30) != 0)
                  {
                    v117 = v62;
                    v118 = v766;
                    do
                    {
                      v119 = (v117 - v84) >> 4;
                      if (v119 >= v762)
                      {
                        v119 = v762;
                      }

                      v120 = v119;
                      if (v119 >= 2)
                      {
                        do
                        {
                          v121 = vminnmq_f32(vaddq_f32(v87[1], vorrq_s8(vandq_s8(*(v84 + 16), v114), v115)), xmmword_18439C4B0);
                          *v87 = vminnmq_f32(vaddq_f32(*v87, vorrq_s8(vandq_s8(*v84, v114), v115)), xmmword_18439C4B0);
                          v87[1] = v121;
                          v120 -= 2;
                          v84 += v116;
                          v87 = (v87 + v116);
                        }

                        while (v120 > 1);
                      }

                      for (jj = v120 + v762 - v119; jj; --jj)
                      {
                        *v87 = vminnmq_f32(vaddq_f32(*v87, vorrq_s8(vandq_s8(*v84, v114), v115)), xmmword_18439C4B0);
                        v123 = v84 + 16 * v744;
                        if (v123 >= v117)
                        {
                          v124 = -v748;
                        }

                        else
                        {
                          v124 = 0;
                        }

                        v84 = v123 + 16 * v124;
                        v87 += v744;
                      }

                      v87 += v764;
                      v125 = &v118[v86];
                      if (v125 >= v59)
                      {
                        v126 = -(v86 * v745);
                      }

                      else
                      {
                        v126 = 0;
                      }

                      v127 = v125 + 16 * v126;
                      v128 = v117 + 16 * v126 + 16 * v86;
                      if (v59)
                      {
                        v84 = v127;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v117 = v128;
                        v118 = v127;
                      }

                      _VF = __OFSUB__(v112--, 1);
                    }

                    while (!((v112 < 0) ^ _VF | (v112 == 0)));
                  }

                  else
                  {
                    v499 = v62;
                    v500 = v766;
                    do
                    {
                      v501 = (v499 - v84) >> 4;
                      if (v501 >= v762)
                      {
                        v501 = v762;
                      }

                      v502 = v501;
                      if (v501 >= 2)
                      {
                        do
                        {
                          v503 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(v87[1]), vorrq_s8(vandq_s8(vrev32q_s8(*(v84 + 16)), v114), v115)), xmmword_18439C4B0));
                          *v87 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(*v87), vorrq_s8(vandq_s8(vrev32q_s8(*v84), v114), v115)), xmmword_18439C4B0));
                          v87[1] = v503;
                          v502 -= 2;
                          v84 += v116;
                          v87 = (v87 + v116);
                        }

                        while (v502 > 1);
                      }

                      for (kk = v502 + v762 - v501; kk; --kk)
                      {
                        *v87 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(*v87), vorrq_s8(vandq_s8(vrev32q_s8(*v84), v114), v115)), xmmword_18439C4B0));
                        v505 = v84 + 16 * v744;
                        if (v505 >= v499)
                        {
                          v506 = -v748;
                        }

                        else
                        {
                          v506 = 0;
                        }

                        v84 = v505 + 16 * v506;
                        v87 += v744;
                      }

                      v87 += v764;
                      v507 = &v500[v86];
                      if (v507 >= v59)
                      {
                        v508 = -(v86 * v745);
                      }

                      else
                      {
                        v508 = 0;
                      }

                      v509 = v507 + 16 * v508;
                      v510 = v499 + 16 * v508 + 16 * v86;
                      if (v59)
                      {
                        v84 = v509;
                      }

                      else
                      {
                        v84 += 16 * v86;
                      }

                      if (v59)
                      {
                        v499 = v510;
                        v500 = v509;
                      }

                      _VF = __OFSUB__(v112--, 1);
                    }

                    while (!((v112 < 0) ^ _VF | (v112 == 0)));
                  }

                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v112 = v768[0];
              }

              do
              {
                v283 = v762;
                do
                {
                  *v87->f32 = vadd_f32(*v87->f32, *v84);
                  v284 = 1.0;
                  if (v60)
                  {
                    v284 = *(v84 + 12);
                  }

                  v285 = v87->f32[3] + v284;
                  if (v285 > 1.0)
                  {
                    v285 = 1.0;
                  }

                  v87->f32[2] = v87->f32[2] + *(v84 + 8);
                  v87->f32[3] = v285;
                  v286 = v84 + 16 * v744;
                  if (v286 >= v62)
                  {
                    v287 = -v748;
                  }

                  else
                  {
                    v287 = 0;
                  }

                  v84 = v286 + 16 * v287;
                  v87 += v744;
                  --v283;
                }

                while (v283);
                v87 += v764;
                v288 = v766;
                v289 = &v766[v86];
                if (v289 >= v59)
                {
                  v290 = -(v86 * v745);
                }

                else
                {
                  v290 = 0;
                }

                v291 = v289[v290].i64;
                v292 = v62 + 16 * v290 + 16 * v86;
                if (v59)
                {
                  v62 = v292;
                  v288 = v291;
                }

                v766 = v288;
                if (v59)
                {
                  v84 = v291;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v112;
              }

              while (v112);
              goto LABEL_846;
            case 13:
              if (v737)
              {
                v202 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)13,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v202 = v768[0];
              }

              do
              {
                v758 = v202;
                v463 = v762;
                do
                {
                  v464 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v464 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v715) = LODWORD(v17);
                      v725 = *&v13;
                      LODWORD(v715) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAmultiplyPDA(v87->f32[0], v11, v12, v13, v464, v15, v16, v17, *v84, v715, v725);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v465 = v84 + 16 * v744;
                  if (v465 >= v62)
                  {
                    v466 = -v748;
                  }

                  else
                  {
                    v466 = 0;
                  }

                  v84 = v465 + 16 * v466;
                  v87 += v744;
                  --v463;
                }

                while (v463);
                v87 += v764;
                v467 = v766;
                v468 = &v766[v86];
                v469 = -(v86 * v745);
                if (v468 < v59)
                {
                  v469 = 0;
                }

                v470 = v468[v469].i64;
                v471 = v62 + 16 * v469 + 16 * v86;
                if (v59)
                {
                  v62 = v471;
                  v467 = v470;
                }

                v766 = v467;
                if (v59)
                {
                  v84 = v470;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v202 = v758 - 1;
              }

              while (v758 != 1);
              goto LABEL_830;
            case 14:
              if (v737)
              {
                v109 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)14,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v109 = v768[0];
              }

              __asm { FMOV            V1.2S, #1.0 }

              do
              {
                v239 = v762;
                do
                {
                  v240 = 1.0;
                  v241 = 1.0;
                  if (!v60 || (v241 = *(v84 + 12), v241 > 0.0))
                  {
                    if (v19 && (v240 = v87->f32[3], v240 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      v242 = v87->f32[2] + (*(v84 + 8) * (1.0 - v87->f32[2]));
                      v241 = (v241 + v240) - (v240 * v241);
                      *v87->f32 = vmla_f32(*v87->f32, vsub_f32(_D1, *v87->f32), *v84);
                      v87->f32[2] = v242;
                    }

                    v87->f32[3] = v241;
                  }

                  v243 = v84 + 16 * v744;
                  if (v243 >= v62)
                  {
                    v244 = -v748;
                  }

                  else
                  {
                    v244 = 0;
                  }

                  v84 = v243 + 16 * v244;
                  v87 += v744;
                  --v239;
                }

                while (v239);
                v87 += v764;
                v245 = v766;
                v246 = &v766[v86];
                if (v246 >= v59)
                {
                  v247 = -(v86 * v745);
                }

                else
                {
                  v247 = 0;
                }

                v248 = v246[v247].i64;
                v249 = v62 + 16 * v247 + 16 * v86;
                if (v59)
                {
                  v62 = v249;
                  v245 = v248;
                }

                v766 = v245;
                if (v59)
                {
                  v84 = v248;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v109;
              }

              while (v109);
              goto LABEL_846;
            case 15:
              if (v737)
              {
                v177 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)15,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v177 = v768[0];
              }

              do
              {
                v754 = v177;
                v427 = v762;
                do
                {
                  v428 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v428 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v712) = LODWORD(v17);
                      v722 = *&v13;
                      LODWORD(v712) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAoverlayPDA(v87->f32[0], v11, v12, v13, v428, v15, v16, v17, *v84, v712, v722);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v429 = v84 + 16 * v744;
                  if (v429 >= v62)
                  {
                    v430 = -v748;
                  }

                  else
                  {
                    v430 = 0;
                  }

                  v84 = v429 + 16 * v430;
                  v87 += v744;
                  --v427;
                }

                while (v427);
                v87 += v764;
                v431 = v766;
                v432 = &v766[v86];
                v433 = -(v86 * v745);
                if (v432 < v59)
                {
                  v433 = 0;
                }

                v434 = v432[v433].i64;
                v435 = v62 + 16 * v433 + 16 * v86;
                if (v59)
                {
                  v62 = v435;
                  v431 = v434;
                }

                v766 = v431;
                if (v59)
                {
                  v84 = v434;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v177 = v754 - 1;
              }

              while (v754 != 1);
              goto LABEL_830;
            case 16:
              if (v737)
              {
                v108 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)16,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v108 = v768[0];
              }

              do
              {
                v753 = v108;
                v418 = v762;
                do
                {
                  v419 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v419 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v711) = LODWORD(v17);
                      v721 = *&v13;
                      LODWORD(v711) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAdarkenPDA(v87->f32[0], v11, v12, v13, v419, v15, v16, v17, *v84, v711, v721);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v420 = v84 + 16 * v744;
                  if (v420 >= v62)
                  {
                    v421 = -v748;
                  }

                  else
                  {
                    v421 = 0;
                  }

                  v84 = v420 + 16 * v421;
                  v87 += v744;
                  --v418;
                }

                while (v418);
                v87 += v764;
                v422 = v766;
                v423 = &v766[v86];
                v424 = -(v86 * v745);
                if (v423 < v59)
                {
                  v424 = 0;
                }

                v425 = v423[v424].i64;
                v426 = v62 + 16 * v424 + 16 * v86;
                if (v59)
                {
                  v62 = v426;
                  v422 = v425;
                }

                v766 = v422;
                if (v59)
                {
                  v84 = v425;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v108 = v753 - 1;
              }

              while (v753 != 1);
              goto LABEL_830;
            case 17:
              if (v737)
              {
                v198 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)17,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v198 = v768[0];
              }

              do
              {
                v755 = v198;
                v436 = v762;
                do
                {
                  v437 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v437 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v713) = LODWORD(v17);
                      v723 = *&v13;
                      LODWORD(v713) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAlightenPDA(v87->f32[0], v11, v12, v13, v437, v15, v16, v17, *v84, v713, v723);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v438 = v84 + 16 * v744;
                  if (v438 >= v62)
                  {
                    v439 = -v748;
                  }

                  else
                  {
                    v439 = 0;
                  }

                  v84 = v438 + 16 * v439;
                  v87 += v744;
                  --v436;
                }

                while (v436);
                v87 += v764;
                v440 = v766;
                v441 = &v766[v86];
                v442 = -(v86 * v745);
                if (v441 < v59)
                {
                  v442 = 0;
                }

                v443 = v441[v442].i64;
                v444 = v62 + 16 * v442 + 16 * v86;
                if (v59)
                {
                  v62 = v444;
                  v440 = v443;
                }

                v766 = v440;
                if (v59)
                {
                  v84 = v443;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v198 = v755 - 1;
              }

              while (v755 != 1);
              goto LABEL_830;
            case 18:
              if (v737)
              {
                v204 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)18,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v204 = v768[0];
              }

              do
              {
                v759 = v204;
                v472 = v762;
                do
                {
                  v473 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v473 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v716) = LODWORD(v17);
                      v726 = *&v13;
                      LODWORD(v716) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAcolordodgePDA(v87->f32[0], v11, v12, v13, v473, v15, v16, v17, *v84, v716, v726);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v474 = v84 + 16 * v744;
                  if (v474 >= v62)
                  {
                    v475 = -v748;
                  }

                  else
                  {
                    v475 = 0;
                  }

                  v84 = v474 + 16 * v475;
                  v87 += v744;
                  --v472;
                }

                while (v472);
                v87 += v764;
                v476 = v766;
                v477 = &v766[v86];
                v478 = -(v86 * v745);
                if (v477 < v59)
                {
                  v478 = 0;
                }

                v479 = v477[v478].i64;
                v480 = v62 + 16 * v478 + 16 * v86;
                if (v59)
                {
                  v62 = v480;
                  v476 = v479;
                }

                v766 = v476;
                if (v59)
                {
                  v84 = v479;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v204 = v759 - 1;
              }

              while (v759 != 1);
              goto LABEL_830;
            case 19:
              if (v737)
              {
                v223 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)19,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v223 = v768[0];
              }

              do
              {
                v760 = v223;
                v481 = v762;
                do
                {
                  v482 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v482 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v717) = LODWORD(v17);
                      v727 = *&v13;
                      LODWORD(v717) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAcolorburnPDA(v87->f32[0], v11, v12, v13, v482, v15, v16, v17, *v84, v717, v727);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v483 = v84 + 16 * v744;
                  if (v483 >= v62)
                  {
                    v484 = -v748;
                  }

                  else
                  {
                    v484 = 0;
                  }

                  v84 = v483 + 16 * v484;
                  v87 += v744;
                  --v481;
                }

                while (v481);
                v87 += v764;
                v485 = v766;
                v486 = &v766[v86];
                v487 = -(v86 * v745);
                if (v486 < v59)
                {
                  v487 = 0;
                }

                v488 = v486[v487].i64;
                v489 = v62 + 16 * v487 + 16 * v86;
                if (v59)
                {
                  v62 = v489;
                  v485 = v488;
                }

                v766 = v485;
                if (v59)
                {
                  v84 = v488;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v223 = v760 - 1;
              }

              while (v760 != 1);
              goto LABEL_830;
            case 20:
              if (v737)
              {
                v199 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)20,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v199 = v768[0];
              }

              do
              {
                v756 = v199;
                v445 = v762;
                do
                {
                  LODWORD(v14) = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (LODWORD(v14) = v87->i32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      *&v710[8] = __PAIR64__(LODWORD(v13), LODWORD(v17));
                      *v710 = *(v84 + 4);
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAsoftlightPDA(v87->f32[0], v87->f32[1], v12, *&v13, v14, v15, v16, v17, v2, v3, v4, v5, v43, v7, v46, v47, *v84, *v710, *&v710[4], *&v710[12]);
                      v87->i32[1] = v446;
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v447 = v84 + 16 * v744;
                  if (v447 >= v62)
                  {
                    v448 = -v748;
                  }

                  else
                  {
                    v448 = 0;
                  }

                  v84 = v447 + 16 * v448;
                  v87 += v744;
                  --v445;
                }

                while (v445);
                v87 += v764;
                v449 = v766;
                v450 = &v766[v86];
                v451 = -(v86 * v745);
                if (v450 < v59)
                {
                  v451 = 0;
                }

                v452 = v450[v451].i64;
                v453 = v62 + 16 * v451 + 16 * v86;
                if (v59)
                {
                  v62 = v453;
                  v449 = v452;
                }

                v766 = v449;
                if (v59)
                {
                  v84 = v452;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v199 = v756 - 1;
              }

              while (v756 != 1);
              goto LABEL_830;
            case 21:
              if (v737)
              {
                v201 = v768[0];
                if (*(v44 + 132))
                {
                  v61 = v49;
                  composite_pixelshape<(CGCompositeOperation)21,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }

                v731 = v85;
                v736 = v49;
              }

              else
              {
                v731 = v85;
                v736 = v49;
                v201 = v768[0];
              }

              do
              {
                v757 = v201;
                v454 = v762;
                do
                {
                  v455 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v455 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v11) = v87->i32[1];
                      LODWORD(v12) = v87->i32[2];
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      HIDWORD(v714) = LODWORD(v17);
                      v724 = *&v13;
                      LODWORD(v714) = HIDWORD(*(v84 + 4));
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAhardlightPDA(v87->f32[0], v11, v12, v13, v455, v15, v16, v17, *v84, v714, v724);
                      v87->i32[1] = LODWORD(v11);
                      v87->i32[2] = LODWORD(v12);
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v456 = v84 + 16 * v744;
                  if (v456 >= v62)
                  {
                    v457 = -v748;
                  }

                  else
                  {
                    v457 = 0;
                  }

                  v84 = v456 + 16 * v457;
                  v87 += v744;
                  --v454;
                }

                while (v454);
                v87 += v764;
                v458 = v766;
                v459 = &v766[v86];
                v460 = -(v86 * v745);
                if (v459 < v59)
                {
                  v460 = 0;
                }

                v461 = v459[v460].i64;
                v462 = v62 + 16 * v460 + 16 * v86;
                if (v59)
                {
                  v62 = v462;
                  v458 = v461;
                }

                v766 = v458;
                if (v59)
                {
                  v84 = v461;
                }

                else
                {
                  v84 += 16 * v86;
                }

                v201 = v757 - 1;
              }

              while (v757 != 1);
LABEL_830:
              v768[0] = 0;
              v89 = v743;
              v61 = v736;
              v85 = v731;
              goto LABEL_847;
            case 22:
              if (v737)
              {
                v222 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)22,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v222 = v768[0];
              }

              do
              {
                v368 = v762;
                do
                {
                  v369 = 1.0;
                  v370 = 1.0;
                  if (!v60 || (v370 = *(v84 + 12), v370 > 0.0))
                  {
                    if (v19 && (v369 = v87->f32[3], v369 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      v371 = v87->f32[2];
                      v372 = *(v84 + 8);
                      v373 = vmul_n_f32(*v87->f32, v370);
                      v374 = vmul_n_f32(*v84, v369);
                      v375 = vsub_f32(vadd_f32(*v87->f32, *v84), v373);
                      v376 = vsub_f32(v373, v374);
                      v377 = vadd_f32(vsub_f32(v375, v374), vbsl_s8(vcltz_f32(v376), vneg_f32(v376), v376));
                      v374.f32[0] = v371 + v372;
                      v378 = v371 * v370;
                      v379 = v372 * v369;
                      v374.f32[0] = v374.f32[0] - v378;
                      v380 = v378 - v379;
                      v381 = v374.f32[0] - v379;
                      if (v380 < 0.0)
                      {
                        v380 = -v380;
                      }

                      v370 = (v369 + v370) - (v369 * v370);
                      *v87->f32 = v377;
                      v87->f32[2] = v381 + v380;
                    }

                    v87->f32[3] = v370;
                  }

                  v382 = v84 + 16 * v744;
                  if (v382 >= v62)
                  {
                    v383 = -v748;
                  }

                  else
                  {
                    v383 = 0;
                  }

                  v84 = v382 + 16 * v383;
                  v87 += v744;
                  --v368;
                }

                while (v368);
                v87 += v764;
                v384 = v766;
                v385 = &v766[v86];
                if (v385 >= v59)
                {
                  v386 = -(v86 * v745);
                }

                else
                {
                  v386 = 0;
                }

                v387 = v385[v386].i64;
                v388 = v62 + 16 * v386 + 16 * v86;
                if (v59)
                {
                  v62 = v388;
                  v384 = v387;
                }

                v766 = v384;
                if (v59)
                {
                  v84 = v387;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v222;
              }

              while (v222);
              goto LABEL_846;
            case 23:
              if (v737)
              {
                v224 = v768[0];
                v61 = v49;
                if (*(v44 + 132))
                {
                  composite_pixelshape<(CGCompositeOperation)23,_rgbaf_t>(v87, v764, v84, v86, v766, v745, v748, v62, v59, v762, v768[0], v744, v728, v60, *v729);
                  goto LABEL_847;
                }
              }

              else
              {
                v61 = v49;
                v224 = v768[0];
              }

              do
              {
                v389 = v762;
                do
                {
                  v390 = 1.0;
                  v391 = 1.0;
                  if (!v60 || (v391 = *(v84 + 12), v391 > 0.0))
                  {
                    if (v19 && (v390 = v87->f32[3], v390 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      v392 = (v87->f32[2] + *(v84 + 8)) + ((*(v84 + 8) * v87->f32[2]) * -2.0);
                      v391 = (v391 + v390) - (v390 * v391);
                      *v87->f32 = vmla_f32(vadd_f32(*v87->f32, *v84), 0xC0000000C0000000, vmul_f32(*v84, *v87->f32));
                      v87->f32[2] = v392;
                    }

                    v87->f32[3] = v391;
                  }

                  v393 = v84 + 16 * v744;
                  if (v393 >= v62)
                  {
                    v394 = -v748;
                  }

                  else
                  {
                    v394 = 0;
                  }

                  v84 = v393 + 16 * v394;
                  v87 += v744;
                  --v389;
                }

                while (v389);
                v87 += v764;
                v395 = v766;
                v396 = &v766[v86];
                if (v396 >= v59)
                {
                  v397 = -(v86 * v745);
                }

                else
                {
                  v397 = 0;
                }

                v398 = v396[v397].i64;
                v399 = v62 + 16 * v397 + 16 * v86;
                if (v59)
                {
                  v62 = v399;
                  v395 = v398;
                }

                v766 = v395;
                if (v59)
                {
                  v84 = v398;
                }

                else
                {
                  v84 += 16 * v86;
                }

                --v224;
              }

              while (v224);
              goto LABEL_846;
            case 24:
              v730 = v85;
              v735 = v49;
              v143 = v768[0];
              v740 = -(v86 * v745);
              do
              {
                v751 = v143;
                v144 = v762;
                do
                {
                  v145 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v145 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      v720 = *&v13;
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAhuePDA(v87->f32[0], v87->f32[1], v87->f32[2], v13, v145, v15, v16, v17, *v84, COERCE_FLOAT(*(v84 + 4)), COERCE_FLOAT(HIDWORD(*(v84 + 4))), *&v17, v720);
                      v87->i32[1] = v146;
                      v87->i32[2] = v147;
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v148 = v84 + 16 * v744;
                  if (v148 >= v62)
                  {
                    v149 = -v748;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  v84 = v148 + 16 * v149;
                  v87 += v744;
                  --v144;
                }

                while (v144);
                v87 += v764;
                v86 = v761;
                v150 = v766;
                v151 = &v766[v761];
                v152 = v740;
                if (v151 < v59)
                {
                  v152 = 0;
                }

                v153 = v151[v152].i64;
                v154 = v62 + 16 * v152 + 16 * v761;
                if (v59)
                {
                  v62 = v154;
                  v150 = v153;
                }

                v766 = v150;
                if (v59)
                {
                  v84 = v153;
                }

                else
                {
                  v84 += 16 * v761;
                }

                v143 = v751 - 1;
              }

              while (v751 != 1);
              goto LABEL_303;
            case 25:
              v730 = v85;
              v735 = v49;
              v131 = v768[0];
              v739 = -(v86 * v745);
              do
              {
                v750 = v131;
                v132 = v762;
                do
                {
                  v133 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v133 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      v719 = *&v13;
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAsaturationPDA(v87->f32[0], v87->f32[1], v87->f32[2], v13, v133, v15, v16, v17, *v84, COERCE_FLOAT(*(v84 + 4)), COERCE_FLOAT(HIDWORD(*(v84 + 4))), *&v17, v719);
                      v87->i32[1] = v134;
                      v87->i32[2] = v135;
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v136 = v84 + 16 * v744;
                  if (v136 >= v62)
                  {
                    v137 = -v748;
                  }

                  else
                  {
                    v137 = 0;
                  }

                  v84 = v136 + 16 * v137;
                  v87 += v744;
                  --v132;
                }

                while (v132);
                v87 += v764;
                v86 = v761;
                v138 = v766;
                v139 = &v766[v761];
                v140 = v739;
                if (v139 < v59)
                {
                  v140 = 0;
                }

                v141 = v139[v140].i64;
                v142 = v62 + 16 * v140 + 16 * v761;
                if (v59)
                {
                  v62 = v142;
                  v138 = v141;
                }

                v766 = v138;
                if (v59)
                {
                  v84 = v141;
                }

                else
                {
                  v84 += 16 * v761;
                }

                v131 = v750 - 1;
              }

              while (v750 != 1);
              goto LABEL_303;
            case 26:
              v730 = v85;
              v735 = v49;
              v225 = v768[0];
              v741 = -(v86 * v745);
              do
              {
                v752 = v225;
                v226 = v762;
                do
                {
                  LODWORD(v15) = 1.0;
                  v227 = 1.0;
                  if (!v60 || (v227 = *(v84 + 12), v227 > 0.0))
                  {
                    LODWORD(v16) = v87->i32[3];
                    if (v19 && (LODWORD(v15) = v87->i32[3], *&v16 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v13) = *(v84 + 12);
                      LODWORD(v17) = v87->i32[2];
                      v228 = PDAluminosityPDA(*v84, *(v84 + 4), *(v84 + 8), v13, v227, v15, v16, v17, COERCE_FLOAT(v87->i64[0]), COERCE_FLOAT(HIDWORD(v87->i64[0])), *&v17, v87->f32[3], *&v15);
                      v227 = *&v13;
                      v87->f32[0] = v228;
                      v87->i32[1] = v229;
                      v87->i32[2] = v230;
                    }

                    v87->f32[3] = v227;
                  }

                  v231 = v84 + 16 * v744;
                  if (v231 >= v62)
                  {
                    v232 = -v748;
                  }

                  else
                  {
                    v232 = 0;
                  }

                  v84 = v231 + 16 * v232;
                  v87 += v744;
                  --v226;
                }

                while (v226);
                v87 += v764;
                v86 = v761;
                v233 = v766;
                v234 = &v766[v761];
                v235 = v741;
                if (v234 < v59)
                {
                  v235 = 0;
                }

                v236 = v234[v235].i64;
                v237 = v62 + 16 * v235 + 16 * v761;
                if (v59)
                {
                  v62 = v237;
                  v233 = v236;
                }

                v766 = v233;
                if (v59)
                {
                  v84 = v236;
                }

                else
                {
                  v84 += 16 * v761;
                }

                v225 = v752 - 1;
              }

              while (v752 != 1);
              goto LABEL_303;
            case 27:
              v730 = v85;
              v735 = v49;
              v96 = v768[0];
              v738 = -(v86 * v745);
              do
              {
                v749 = v96;
                v97 = v762;
                do
                {
                  v98 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v60 || (LODWORD(v13) = *(v84 + 12), *&v13 > 0.0))
                  {
                    LODWORD(v15) = v87->i32[3];
                    if (v19 && (v98 = v87->f32[3], *&v15 <= 0.0))
                    {
                      v87->i64[0] = *v84;
                      v87->i32[2] = *(v84 + 8);
                    }

                    else
                    {
                      LODWORD(v16) = *v84;
                      LODWORD(v17) = *(v84 + 12);
                      v718 = *&v13;
                      LODWORD(v13) = v87->i32[3];
                      v87->f32[0] = PDAluminosityPDA(v87->f32[0], v87->f32[1], v87->f32[2], v13, v98, v15, v16, v17, *v84, COERCE_FLOAT(*(v84 + 4)), COERCE_FLOAT(HIDWORD(*(v84 + 4))), *&v17, v718);
                      v87->i32[1] = v99;
                      v87->i32[2] = v100;
                    }

                    v87->i32[3] = LODWORD(v13);
                  }

                  v101 = v84 + 16 * v744;
                  if (v101 >= v62)
                  {
                    v102 = -v748;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v84 = v101 + 16 * v102;
                  v87 += v744;
                  --v97;
                }

                while (v97);
                v87 += v764;
                v86 = v761;
                v103 = v766;
                v104 = &v766[v761];
                v105 = v738;
                if (v104 < v59)
                {
                  v105 = 0;
                }

                v106 = v104[v105].i64;
                v107 = v62 + 16 * v105 + 16 * v761;
                if (v59)
                {
                  v62 = v107;
                  v103 = v106;
                }

                v766 = v103;
                if (v59)
                {
                  v84 = v106;
                }

                else
                {
                  v84 += 16 * v761;
                }

                v96 = v749 - 1;
              }

              while (v749 != 1);
LABEL_303:
              v768[0] = 0;
              v89 = v743;
              v61 = v735;
              v85 = v730;
              goto LABEL_847;
            default:
              v61 = v49;
              goto LABEL_847;
          }

          break;
        }

LABEL_511:
        v339 = v762;
        while (1)
        {
          v340 = v87->f32[3];
          v341 = 1.0 - v340;
          if ((1.0 - v340) >= 1.0)
          {
            break;
          }

          if (v341 > 0.0)
          {
            *v87->f32 = vmla_n_f32(*v87->f32, *v84, v341);
            v87->f32[2] = v87->f32[2] + (*(v84 + 8) * v341);
            v342 = 1.0;
            if (v60)
            {
              v342 = *(v84 + 12);
            }

            v343 = v340 + (v342 * v341);
LABEL_519:
            v87->f32[3] = v343;
          }

          v344 = v84 + 16 * v744;
          if (v344 >= v62)
          {
            v345 = -v748;
          }

          else
          {
            v345 = 0;
          }

          v84 = v344 + 16 * v345;
          v87 += v744;
          if (!--v339)
          {
            v87 += v764;
            v346 = v766;
            v347 = &v766[v86];
            if (v347 >= v59)
            {
              v348 = -(v86 * v745);
            }

            else
            {
              v348 = 0;
            }

            v349 = v347[v348].i64;
            v350 = v62 + 16 * v348 + 16 * v86;
            if (v59)
            {
              v62 = v350;
              v346 = v349;
            }

            v766 = v346;
            if (v59)
            {
              v84 = v349;
            }

            else
            {
              v84 += 16 * v86;
            }

            if (!--v203)
            {
LABEL_846:
              v768[0] = 0;
              goto LABEL_847;
            }

            goto LABEL_511;
          }
        }

        v87->i64[0] = *v84;
        v87->i32[2] = *(v84 + 8);
        v343 = 1.0;
        if (v60)
        {
          v343 = *(v84 + 12);
        }

        goto LABEL_519;
      }

      if (v734)
      {
        v746 = 0;
        v83 = &v734[v48 * (v733 % v745)];
        v84 = v83[v732 % v748].i64;
        v62 = &v83[v748];
        v744 = 1;
        v766 = v84;
        v85 = v45;
        v86 = *(v742 + 76) >> 4;
        v87 = v85;
        v88 = v762;
        v732 %= v748;
        v733 %= v745;
        v89 = v743;
        goto LABEL_49;
      }

      v62 = 0;
      v744 = 1;
      v88 = v762;
      v89 = v743;
      v85 = v45;
      v90 = *(v742 + 76) >> 4;
LABEL_48:
      v59 = 0;
      v746 = 0;
      v766 = 0;
      v86 = v90 - v88;
      v84 = v49;
      v87 = v85;
      goto LABEL_49;
    }

    v49 = v734[v48 * *(v742 + 60) + *(v742 + 56)].i64;
    if (v48 == v43)
    {
      v50 = (v45 - v49) >> 4;
      if (v50 < 1)
      {
        goto LABEL_22;
      }

      if (v50 > v762)
      {
        v51 = v49 + 16 * v43 * v25;
        if (v45 <= v51 + 16 * v762 - 16)
        {
          v45 += 16 * v43 * v25;
          v43 = -v43;
          v5 = 1;
          v49 = v51;
          goto LABEL_42;
        }

LABEL_22:
        v5 = 1;
LABEL_42:
        v748 = v43;
        goto LABEL_43;
      }

      v45 += 16 * v23;
      v748 = v43;
      v49 += 16 * v23;
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
      v748 = *(v742 + 76) >> 4;
    }

LABEL_43:
    v60 = v18 != 0;
    if (v27)
    {
      v61 = v49;
      v745 = 0;
      v766 = 0;
      v59 = 0;
      v62 = -1;
      v58 = v748;
      goto LABEL_45;
    }

    v744 = v5;
    v745 = 0;
    v88 = v5 * v762;
    v62 = -1;
    v90 = v748;
    v89 = v743;
    v85 = v45;
    goto LABEL_48;
  }

  v28 = *(v3 + 128);
  if ((v28 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      RGBAf_mark_constmask(v3, v20, v4, v5, v6, v7, v28, v9, v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      RGBAf_mark_pixelmask(v2, v3, v20, v10, v11, v12, v13, v14, v15, v16, v17, v5, v6, v7, v28, v9);
    }
  }

  else
  {
    v52 = *(v3 + 112);
    v53 = *(v3 + 116);
    v54 = (v52 + 15) & 0xFFFFFFF0;
    v55 = v54 * v53;
    if (v55 <= 4096)
    {
      v57 = v778;
    }

    else
    {
      v56 = malloc_type_malloc(v55, 0x100004077774924uLL);
      if (!v56)
      {
        return 1;
      }

      v57 = v56;
      v27 = *(v22 + 136);
      LODWORD(v28) = *(v22 + 128);
    }

    CGSConvertBitsToMask(v27, *(v22 + 124), v57, v54, v52, v53, v28);
    v76 = *(v22 + 112);
    v774 = *(v22 + 96);
    v775 = v76;
    v77 = *(v22 + 144);
    v776 = *(v22 + 128);
    v777 = v77;
    v78 = *(v22 + 48);
    v770 = *(v22 + 32);
    v771 = v78;
    v79 = *(v22 + 80);
    v772 = *(v22 + 64);
    v773 = v79;
    v80 = *v22;
    v81 = *(v22 + 16);
    *v768 = *v22;
    v769 = v81;
    HIDWORD(v775) = (v52 + 15) & 0xFFFFFFF0;
    *(&v776 + 1) = v57;
    if (BYTE1(v768[0]) << 8 == 1024)
    {
      RGBAf_mark_constmask(v768, v743, v64, v65, v66, v67, v68, v69, *&v80, *&v81, v70, v71, v72, v73, v74, v75);
    }

    else
    {
      RGBAf_mark_pixelmask(v26, v768, v743, *&v80, *&v81, v70, v71, v72, v73, v74, v75, v65, v66, v67, v68, v69);
    }

    if (v57 != v778)
    {
      v82 = v57;
      goto LABEL_1214;
    }
  }

  return 1;
}

float PDAmultiplyPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v16 = a1 * a9;
  result = (a1 * a9) + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v16;
  }

  if (a5 != 1.0)
  {
    return result + (a9 * (1.0 - a5));
  }

  return result;
}

float PDAoverlayPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v16 = (a1 * a9) + (a1 * a9);
  v17 = a1 < (a5 * 0.5);
  v18 = ((((a5 + 1.0) * a9) + (a1 * (a11 + 1.0))) - v16) - (a5 * a11);
  result = (((1.0 - a5) * a9) + (a1 * (1.0 - a11))) + v16;
  if (!v17)
  {
    return v18;
  }

  return result;
}

float PDAlightenPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v16 = a1 * a11;
  if ((a9 * a5) > (a1 * a11))
  {
    v16 = a9 * a5;
  }

  result = v16 + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v16;
  }

  if (a5 != 1.0)
  {
    return result + (a9 * (1.0 - a5));
  }

  return result;
}

float PDAdarkenPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v16 = a1 * a11;
  if ((a9 * a5) < (a1 * a11))
  {
    v16 = a9 * a5;
  }

  result = v16 + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v16;
  }

  if (a5 != 1.0)
  {
    return result + (a9 * (1.0 - a5));
  }

  return result;
}

float PDAcolordodgePDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v16 = 0.0;
  if (a1 != 0.0)
  {
    v16 = 1.0;
    if (a9 != a11)
    {
      v16 = (a1 * (a11 * a11)) / (a11 - a9);
    }
  }

  result = v16 + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    result = v16;
  }

  if (a5 != 1.0)
  {
    result = result + (a9 * (1.0 - a5));
  }

  if (result > ((a5 + a11) - (a5 * a11)))
  {
    return (a5 + a11) - (a5 * a11);
  }

  return result;
}

float PDAcolorburnPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v17 = (a5 * a11) + (a1 * (1.0 - a11));
  if (a11 == 1.0)
  {
    v17 = a5 * a11;
  }

  if (a5 == 1.0)
  {
    result = v17;
  }

  else
  {
    result = v17 + (a9 * (1.0 - a5));
  }

  v19 = a5 - a1;
  if (v19 != 0.0)
  {
    if (a9 == 0.0)
    {
      return 0.0;
    }

    result = result - ((v19 * (a11 * a11)) / a9);
    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

float PDAhardlightPDA(float a1, double a2, double a3, double a4, float a5, double a6, double a7, double a8, float a9, double a10, float a11)
{
  v16 = (a1 * a9) + (a1 * a9);
  v17 = (((1.0 - a5) * a9) + (a1 * (1.0 - a11))) + v16;
  result = ((((a5 + 1.0) * a9) + (a1 * (a11 + 1.0))) - v16) - (a5 * a11);
  if (a9 <= (a11 * 0.5))
  {
    return v17;
  }

  return result;
}

float PDAsoftlightPDA(float a1, float a2, double a3, int32x2_t a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float a17, unsigned int a18, uint64_t a19, float a20)
{
  *a4.i32 = a20;
  if (*&a5 == 0.0)
  {
    v19.i32[1] = 0;
  }

  else
  {
    v17 = vmul_f32(__PAIR64__(LODWORD(a1), LODWORD(a2)), __PAIR64__(LODWORD(a17), a18));
    v18 = vsub_f32(vadd_f32(v17, v17), vdiv_f32(vmul_f32(vmul_f32(__PAIR64__(LODWORD(a1), LODWORD(a2)), __PAIR64__(LODWORD(a1), LODWORD(a2))), vsub_f32(vadd_f32(__PAIR64__(LODWORD(a17), a18), __PAIR64__(LODWORD(a17), a18)), vdup_lane_s32(a4, 0))), vdup_lane_s32(*&a5, 0)));
    v19 = vbic_s8(v18, vcltz_f32(v18));
  }

  result = *&v19.i32[1] + (a1 * (1.0 - a20));
  if (a20 == 1.0)
  {
    result = *&v19.i32[1];
  }

  if (*&a5 != 1.0)
  {
    return result + (a17 * (1.0 - *&a5));
  }

  return result;
}

float PDAhuePDA(float a1, float a2, float a3, double a4, float a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v18 = a10;
  v19 = a11;
  v42 = *MEMORY[0x1E69E9840];
  v20 = a1 * a13;
  v21 = a1 - (a1 * a13);
  if (a13 == 1.0)
  {
    v21 = 0.0;
  }

  else
  {
    a3 = a3 * a13;
  }

  if (a13 == 1.0)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2 * a13;
  }

  if (a13 == 1.0)
  {
    v20 = a1;
  }

  v23 = (a9 + v21) - (a9 * a5);
  if (a5 == 1.0)
  {
    v24 = a9;
  }

  else
  {
    v24 = a9 * a5;
  }

  if (a5 == 1.0)
  {
    v23 = v21;
  }

  else
  {
    v18 = a10 * a5;
    v19 = a11 * a5;
  }

  v39 = v24;
  v40 = v18;
  v41 = v19;
  v25 = v24 < v18;
  v26 = v24 >= v18;
  if (v24 < v18)
  {
    v27 = v24;
  }

  else
  {
    v27 = v18;
  }

  if (v24 >= v18)
  {
    v18 = v24;
  }

  if (v19 <= v18)
  {
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  v29 = 2;
  if (v19 <= v18)
  {
    v30 = v25;
  }

  else
  {
    v30 = 2;
  }

  if (v19 < v27)
  {
    v31 = v25;
  }

  else
  {
    v29 = v26;
    v26 = v28;
    v31 = v30;
  }

  v32 = *(&v39 + v31);
  v33 = *(&v39 + v29);
  if (v32 <= v33)
  {
    *(&v39 + v31) = 0.0;
    *(&v39 + v26) = 0.0;
  }

  else
  {
    if (v20 >= v22)
    {
      v34 = v22;
    }

    else
    {
      v34 = v20;
    }

    if (v20 >= v22)
    {
      v35 = v20;
    }

    else
    {
      v35 = v22;
    }

    if (a3 > v35)
    {
      v36 = a3;
    }

    else
    {
      v36 = v35;
    }

    if (a3 >= v34)
    {
      v35 = v36;
    }

    else
    {
      v34 = a3;
    }

    v37 = v35 - v34;
    *(&v39 + v31) = v37;
    *(&v39 + v26) = (v37 / (v32 - v33)) * (*(&v39 + v26) - v33);
  }

  *(&v39 + v29) = 0.0;
  return v23 + (v39 + ((((v22 - v40) * 0.59) + ((v20 - v39) * 0.3)) + ((a3 - v41) * 0.11)));
}

float PDAsaturationPDA(float a1, float a2, float a3, double a4, float a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a13 == 1.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a1 - (a1 * a13);
    a3 = a3 * a13;
    a2 = a2 * a13;
    a1 = a1 * a13;
  }

  v19 = a9 * a5;
  v20 = a10 * a5;
  if (a5 == 1.0)
  {
    v19 = a9;
    v20 = a10;
    v21 = a11;
  }

  else
  {
    v21 = a11 * a5;
  }

  if (a5 == 1.0)
  {
    v22 = v18;
  }

  else
  {
    v22 = (a9 + v18) - (a9 * a5);
  }

  v36 = a1;
  v37 = a2;
  v38 = a3;
  v23 = a1 >= a2;
  if (a1 < a2)
  {
    v24 = a1;
  }

  else
  {
    v24 = a2;
  }

  if (a1 < a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = a1;
  }

  if (a3 <= v25)
  {
    v26 = a1 >= a2;
  }

  else
  {
    v26 = a1 < a2;
  }

  v27 = 2;
  if (a3 <= v25)
  {
    v28 = a1 < a2;
  }

  else
  {
    v28 = 2;
  }

  if (a3 < v24)
  {
    v29 = a1 < a2;
  }

  else
  {
    v27 = a1 >= a2;
    v23 = v26;
    v29 = v28;
  }

  v30 = *(&v36 + v29);
  v31 = *(&v36 + v27);
  if (v30 <= v31)
  {
    *(&v36 + v29) = 0.0;
    *(&v36 + v23) = 0.0;
  }

  else
  {
    if (v19 >= v20)
    {
      v32 = v20;
    }

    else
    {
      v32 = v19;
    }

    if (v19 < v20)
    {
      v19 = v20;
    }

    if (v21 > v19)
    {
      v33 = v21;
    }

    else
    {
      v33 = v19;
    }

    if (v21 >= v32)
    {
      v21 = v32;
      v19 = v33;
    }

    v34 = v19 - v21;
    *(&v36 + v29) = v34;
    *(&v36 + v23) = (v34 / (v30 - v31)) * (*(&v36 + v23) - v31);
  }

  *(&v36 + v27) = 0.0;
  return v22 + (v36 + ((((a2 - v37) * 0.59) + ((a1 - v36) * 0.3)) + ((a3 - v38) * 0.11)));
}

float PDAluminosityPDA(float a1, float a2, float a3, double a4, float a5, double a6, double a7, double a8, float a9, float a10, float a11, float a12, float a13)
{
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a1 - (a1 * a13);
  if (a13 == 1.0)
  {
    v21 = 0.0;
  }

  else
  {
    a3 = a3 * a13;
  }

  if (a13 != 1.0)
  {
    a2 = a2 * a13;
    a1 = a1 * a13;
  }

  v22 = (a9 + v21) - (a9 * a5);
  if (a5 == 1.0)
  {
    v22 = v21;
  }

  else
  {
    v18 = a9 * a5;
    v19 = a10 * a5;
    v20 = a11 * a5;
  }

  return v22 + (a1 + ((((v19 - a2) * 0.59) + ((v18 - a1) * 0.3)) + ((v20 - a3) * 0.11)));
}

float32x4_t *composite_pixelshape<(CGCompositeOperation)5,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, char a13)
{
  v14 = 32 * a12;
  if ((a13 & 0x30) != 0)
  {
    do
    {
      v15 = (a8 - a3) >> 4;
      if (v15 >= a10)
      {
        v15 = a10;
      }

      v16 = v15;
      if (v15 >= 2)
      {
        do
        {
          v17 = vmlaq_laneq_f32(vmlsq_laneq_f32(result[1], result[1], a3[1], 3), a3[1], result[1], 3);
          *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), *a3, *result, 3);
          result[1] = v17;
          v16 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v16 > 1);
      }

      for (i = v16 + a10 - v15; i; --i)
      {
        *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), *a3, *result, 3);
        v19 = &a3[a12];
        if (v19 >= a8)
        {
          v20 = -a7;
        }

        else
        {
          v20 = 0;
        }

        a3 = &v19[v20];
        result += a12;
      }

      result += a2;
      v21 = &a5[a4];
      if (v21 >= a9)
      {
        v22 = -(a6 * a4);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21[v22];
      v24 = a8 + 16 * v22 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v23;
        a8 = v24;
        a5 = v23;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  else
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vrev32q_s8(a3[1]);
          v29 = vrev32q_s8(*a3);
          v30 = vrev32q_s8(result[1]);
          v31 = vrev32q_s8(*result);
          *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v31, v31, v29, 3), v29, v31, 3));
          result[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v30, v30, v28, 3), v28, v30, 3));
          v27 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v27 > 1);
      }

      for (j = v27 + a10 - v26; j; --j)
      {
        v33 = vrev32q_s8(*a3);
        v34 = vrev32q_s8(*result);
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v34, v34, v33, 3), v33, v34, 3));
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  return result;
}

float32x4_t *composite_pixelshape<(CGCompositeOperation)9,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, char a13)
{
  v14 = 32 * a12;
  if ((a13 & 0x30) != 0)
  {
    do
    {
      v15 = (a8 - a3) >> 4;
      if (v15 >= a10)
      {
        v15 = a10;
      }

      v16 = v15;
      if (v15 >= 2)
      {
        do
        {
          v17 = vmlaq_laneq_f32(vmlsq_laneq_f32(a3[1], a3[1], result[1], 3), result[1], a3[1], 3);
          *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), *result, *a3, 3);
          result[1] = v17;
          v16 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v16 > 1);
      }

      for (i = v16 + a10 - v15; i; --i)
      {
        *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), *result, *a3, 3);
        v19 = &a3[a12];
        if (v19 >= a8)
        {
          v20 = -a7;
        }

        else
        {
          v20 = 0;
        }

        a3 = &v19[v20];
        result += a12;
      }

      result += a2;
      v21 = &a5[a4];
      if (v21 >= a9)
      {
        v22 = -(a6 * a4);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v21[v22];
      v24 = a8 + 16 * v22 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v23;
        a8 = v24;
        a5 = v23;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  else
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vrev32q_s8(a3[1]);
          v29 = vrev32q_s8(*a3);
          v30 = vrev32q_s8(result[1]);
          v31 = vrev32q_s8(*result);
          *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v29, v29, v31, 3), v31, v29, 3));
          result[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v28, v28, v30, 3), v30, v28, 3));
          v27 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v27 > 1);
      }

      for (j = v27 + a10 - v26; j; --j)
      {
        v33 = vrev32q_s8(*a3);
        v34 = vrev32q_s8(*result);
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v33, v33, v34, 3), v34, v33, 3));
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v25 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v25 | (a11 == 0)));
  }

  return result;
}

float32x4_t *composite_pixelshape<(CGCompositeOperation)10,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, char a13)
{
  v14 = 32 * a12;
  if ((a13 & 0x30) != 0)
  {
    do
    {
      v15 = (a8 - a3) >> 4;
      if (v15 >= a10)
      {
        v15 = a10;
      }

      v16 = v15;
      if (v15 >= 2)
      {
        do
        {
          v17 = a3[1];
          v18 = result[1];
          *result = vaddq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), vmlsq_laneq_f32(*a3, *a3, *result, 3));
          result[1] = vaddq_f32(vmlsq_laneq_f32(v18, v18, v17, 3), vmlsq_laneq_f32(v17, v17, v18, 3));
          v16 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v16 > 1);
      }

      for (i = v16 + a10 - v15; i; --i)
      {
        *result = vaddq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), vmlsq_laneq_f32(*a3, *a3, *result, 3));
        v20 = &a3[a12];
        if (v20 >= a8)
        {
          v21 = -a7;
        }

        else
        {
          v21 = 0;
        }

        a3 = &v20[v21];
        result += a12;
      }

      result += a2;
      v22 = &a5[a4];
      if (v22 >= a9)
      {
        v23 = -(a6 * a4);
      }

      else
      {
        v23 = 0;
      }

      v24 = (v22 + 16 * v23);
      v25 = a8 + 16 * v23 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v24;
        a8 = v25;
        a5 = v24;
      }

      v26 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v26 | (a11 == 0)));
  }

  else
  {
    do
    {
      v27 = (a8 - a3) >> 4;
      if (v27 >= a10)
      {
        v27 = a10;
      }

      v28 = v27;
      if (v27 >= 2)
      {
        do
        {
          v29 = vrev32q_s8(a3[1]);
          v30 = vrev32q_s8(*a3);
          v31 = vrev32q_s8(result[1]);
          v32 = vrev32q_s8(*result);
          *result = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(v32, v32, v30, 3), vmlsq_laneq_f32(v30, v30, v32, 3)));
          result[1] = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(v31, v31, v29, 3), vmlsq_laneq_f32(v29, v29, v31, 3)));
          v28 -= 2;
          a3 = (a3 + v14);
          result = (result + v14);
        }

        while (v28 > 1);
      }

      for (j = v28 + a10 - v27; j; --j)
      {
        v34 = vrev32q_s8(*a3);
        v35 = vrev32q_s8(*result);
        *result = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(v35, v35, v34, 3), vmlsq_laneq_f32(v34, v34, v35, 3)));
        v36 = &a3[a12];
        if (v36 >= a8)
        {
          v37 = -a7;
        }

        else
        {
          v37 = 0;
        }

        a3 = &v36[v37];
        result += a12;
      }

      result += a2;
      v38 = &a5[a4];
      if (v38 >= a9)
      {
        v39 = -(a6 * a4);
      }

      else
      {
        v39 = 0;
      }

      v40 = (v38 + 16 * v39);
      v41 = a8 + 16 * v39 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v40;
        a8 = v41;
        a5 = v40;
      }

      v26 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v26 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)13,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v29 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          v30 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v31 = vorrq_s8(vandq_s8(*result, v23), v24);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v28, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v31, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v31, v31, v28, 3), vmlsq_laneq_f32(v28, v28, v31, 3)), v28, v31), v28), v31);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v29, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v30, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v30, v30, v29, 3), vmlsq_laneq_f32(v29, v29, v30, 3)), v29, v30), v29), v30);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v33 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v34 = vorrq_s8(vandq_s8(*result, v23), v24);
        *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v33, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v34, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v34, v34, v33, 3), vmlsq_laneq_f32(v33, v33, v34, 3)), v33, v34), v33), v34);
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  else
  {
    do
    {
      v42 = (a8 - a3) >> 4;
      if (v42 >= a10)
      {
        v42 = a10;
      }

      v43 = v42;
      if (v42 >= 2)
      {
        do
        {
          v44 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v45 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          v46 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v47 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v45, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v46, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v46, v46, v45, 3), vmlsq_laneq_f32(v45, v45, v46, 3)), v45, v46), v45), v46));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v44, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v47, v47, v44, 3), vmlsq_laneq_f32(v44, v44, v47, 3)), v44, v47), v44), v47));
          v43 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v43 > 1);
      }

      for (j = v43 + a10 - v42; j; --j)
      {
        v49 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v50 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v50, v50, v49, 3), vmlsq_laneq_f32(v49, v49, v50, 3)), v49, v50), v49), v50));
        v51 = &a3[a12];
        if (v51 >= a8)
        {
          v52 = -a7;
        }

        else
        {
          v52 = 0;
        }

        a3 = &v51[v52];
        result += a12;
      }

      result += a2;
      v53 = &a5[a4];
      if (v53 >= a9)
      {
        v54 = -(a6 * a4);
      }

      else
      {
        v54 = 0;
      }

      v55 = &v53[v54];
      v56 = a8 + 16 * v54 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v55;
        a8 = v56;
        a5 = v55;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  return result;
}