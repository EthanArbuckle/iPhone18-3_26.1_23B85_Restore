unint64_t rgba32_image_mark_rgb48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v89 = *a2;
  v8 = *(a2 + 2);
  v88 = *(a2 + 3) - a5;
  v10 = *(a2 + 15);
  v9 = *(a2 + 16);
  v11 = *(a2 + 7);
  v85 = *(a2 + 9);
  v12 = *(a2 + 5) + v85 * a4;
  v13 = *(result + 32);
  v14 = v13 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v95 = result;
  v86 = v11;
  v87 = v10;
  if (*(result + 176))
  {
    v84 = *(a2 + 11);
    v82 = ~(-1 << v11);
    v83 = *(a2 + 13);
    v81 = v11 - 4;
    v15 = (v14 - 6);
    v79 = a5;
    v80 = -v10;
    v78 = v9 + 16 * a3 + 8;
    while (1)
    {
      v93 = a6;
      if (((v83 - v12) | (v12 - v84)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v12 & v82) >> v81) & 0xF;
        v17 = (v16 - 7) >= 9 ? v80 : v10;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v95 + 32) + (v12 >> v11) * v10;
      v91 = v12;
      if (v89 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v78;
        v21 = v79;
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

          v26 = *v25 | (*(v25 + 1) << 16);
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
            v38 = ((*v39 | (*(v39 + 1) << 16)) & v40) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = (v26 >> 8) & 0xFF0000 | (BYTE1(v26) << 24) | WORD2(v26) & 0xFF00 | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
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

        v30 = *v29 | (*(v29 + 1) << 16);
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

          v33 = *v32 | (*(v32 + 1) << 16);
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
          v26 = v26 - ((v35 & v26) >> v18) + ((v33 & v35) >> v18);
          v30 = v30 - ((v35 & v30) >> v18) + (((*v34 | (*(v34 + 1) << 16)) & v35) >> v18);
        }

        v36 = BLEND16_21891[v27];
        v37 = v26 - ((v36 & v26) >> v27);
        v38 = (v36 & v30) >> v27;
LABEL_40:
        v26 = v37 + v38;
        goto LABEL_41;
      }

LABEL_83:
      v10 = v87;
      v8 += v88;
      LOBYTE(v11) = v86;
      v12 = v91 + v85;
      --a6;
      if (v93 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v42 = v78;
    v41 = v79;
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

      v47 = *v46 | (*(v46 + 1) << 16);
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
        v59 = ((*v60 | (*(v60 + 1) << 16)) & v61) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v62 = (v47 >> 8) & 0xFF0000 | (BYTE1(v47) << 24) | WORD2(v47) & 0xFF00;
      v63 = v62 | 0xFF;
      if (v7 != 255)
      {
        result = PDM_21869(v62 | 0xFF, v7);
        v63 = result;
      }

      if (v63)
      {
        if (v63 == 255)
        {
          *v8 = v63;
        }

        else
        {
          result = DplusDM_21871(v8, v63, *v8, ~v63);
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

    v51 = *v50 | (*(v50 + 1) << 16);
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

      v54 = *v53 | (*(v53 + 1) << 16);
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
      v47 = v47 - ((v56 & v47) >> v18) + ((v54 & v56) >> v18);
      v51 = v51 - ((v56 & v51) >> v18) + (((*v55 | (*(v55 + 1) << 16)) & v56) >> v18);
    }

    v57 = BLEND16_21891[v48];
    v58 = v47 - ((v57 & v47) >> v48);
    v59 = (v57 & v51) >> v48;
LABEL_75:
    v47 = v58 + v59;
    goto LABEL_76;
  }

  v94 = (v9 + 16 * a3);
  v64 = v14 - 6;
  v92 = a5;
  do
  {
    v65 = v12;
    v66 = *(v95 + 32);
    v67 = &v66[(v12 >> v11) * v10];
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v68 = v94;
        v69 = v92;
        do
        {
          v70 = *v68;
          v68 += 2;
          v71 = &v67[v70];
          if (v64 < &v67[v70])
          {
            v71 = v64;
          }

          if (v71 < v66)
          {
            v71 = v66;
          }

          result = (*v71 << 16) & 0xFF000000 | (HIBYTE(*(v71 + 1)) << 16) | *(v71 + 2) | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
          }

          *v8++ = result;
          --v69;
        }

        while (v69);
      }
    }

    else
    {
      v72 = v94;
      v73 = v92;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = &v67[v74];
          if (v64 < &v67[v74])
          {
            v75 = v64;
          }

          if (v75 < *(v95 + 32))
          {
            v75 = *(v95 + 32);
          }

          v76 = (*v75 << 16) & 0xFF000000 | (HIBYTE(*(v75 + 1)) << 16) | *(v75 + 2);
          v77 = v76 | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(v76 | 0xFF, v7);
            v77 = result;
          }

          if (v77)
          {
            if (v77 == 255)
            {
              *v8 = v77;
            }

            else
            {
              result = DplusDM_21871(v8, v77, *v8, ~v77);
            }
          }

          ++v8;
          --v73;
        }

        while (v73);
      }
    }

    v10 = v87;
    v8 += v88;
    LOBYTE(v11) = v86;
    v12 = v65 + v85;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t rgba32_image_mark_RGB48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
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
  v97 = result;
  v88 = v11;
  v89 = v10;
  if (*(result + 176))
  {
    v86 = *(a2 + 11);
    v84 = ~(-1 << v11);
    v85 = *(a2 + 13);
    v83 = v11 - 4;
    v15 = (v14 - 6);
    v81 = a5;
    v82 = -v10;
    v80 = v9 + 16 * a3 + 8;
    while (1)
    {
      v95 = a6;
      if (((v85 - v12) | (v12 - v86)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v12 & v84) >> v83) & 0xF;
        v17 = (v16 - 7) >= 9 ? v82 : v10;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v97 + 32) + (v12 >> v11) * v10;
      v93 = v12;
      if (v91 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v80;
        v21 = v81;
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

          v26 = bswap32(v25[1]) & 0xFFFF0000 | ((bswap32(v25[2]) >> 16) << 32) | (bswap32(*v25) >> 16);
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
            v38 = ((bswap32(v39[1]) & 0xFFFF0000 | ((bswap32(v39[2]) >> 16) << 32) | (bswap32(*v39) >> 16)) & v40) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = (v26 >> 8) & 0xFF0000 | (BYTE1(v26) << 24) | WORD2(v26) & 0xFF00 | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
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

        v30 = bswap32(v29[1]) & 0xFFFF0000 | ((bswap32(v29[2]) >> 16) << 32) | (bswap32(*v29) >> 16);
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

          v33 = bswap32(v32[1]) & 0xFFFF0000 | ((bswap32(v32[2]) >> 16) << 32) | (bswap32(*v32) >> 16);
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
          v26 = v26 - ((v35 & v26) >> v18) + ((v33 & v35) >> v18);
          v30 = v30 - ((v35 & v30) >> v18) + (((bswap32(v34[1]) & 0xFFFF0000 | ((bswap32(v34[2]) >> 16) << 32) | (bswap32(*v34) >> 16)) & v35) >> v18);
        }

        v36 = BLEND16_21891[v27];
        v37 = v26 - ((v36 & v26) >> v27);
        v38 = (v36 & v30) >> v27;
LABEL_40:
        v26 = v37 + v38;
        goto LABEL_41;
      }

LABEL_83:
      v10 = v89;
      v8 += v90;
      LOBYTE(v11) = v88;
      v12 = v93 + v87;
      --a6;
      if (v95 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v42 = v80;
    v41 = v81;
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

      v47 = bswap32(v46[1]) & 0xFFFF0000 | ((bswap32(v46[2]) >> 16) << 32) | (bswap32(*v46) >> 16);
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
        v59 = ((bswap32(v60[1]) & 0xFFFF0000 | ((bswap32(v60[2]) >> 16) << 32) | (bswap32(*v60) >> 16)) & v61) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v62 = (v47 >> 8) & 0xFF0000 | (BYTE1(v47) << 24) | WORD2(v47) & 0xFF00;
      v63 = v62 | 0xFF;
      if (v7 != 255)
      {
        result = PDM_21869(v62 | 0xFF, v7);
        v63 = result;
      }

      if (v63)
      {
        if (v63 == 255)
        {
          *v8 = v63;
        }

        else
        {
          result = DplusDM_21871(v8, v63, *v8, ~v63);
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

    v51 = bswap32(v50[1]) & 0xFFFF0000 | ((bswap32(v50[2]) >> 16) << 32) | (bswap32(*v50) >> 16);
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

      v54 = bswap32(v53[1]) & 0xFFFF0000 | ((bswap32(v53[2]) >> 16) << 32) | (bswap32(*v53) >> 16);
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
      v47 = v47 - ((v56 & v47) >> v18) + ((v54 & v56) >> v18);
      v51 = v51 - ((v56 & v51) >> v18) + (((bswap32(v55[1]) & 0xFFFF0000 | ((bswap32(v55[2]) >> 16) << 32) | (bswap32(*v55) >> 16)) & v56) >> v18);
    }

    v57 = BLEND16_21891[v48];
    v58 = v47 - ((v57 & v47) >> v48);
    v59 = (v57 & v51) >> v48;
LABEL_75:
    v47 = v58 + v59;
    goto LABEL_76;
  }

  v96 = (v9 + 16 * a3);
  v64 = v14 - 6;
  v94 = a5;
  do
  {
    v65 = v12;
    v66 = *(v97 + 32);
    v67 = &v66[(v12 >> v11) * v10];
    if (v91 == 1)
    {
      if (a5 >= 1)
      {
        v68 = v96;
        v69 = v94;
        do
        {
          v70 = *v68;
          v68 += 2;
          v71 = &v67[v70];
          if (v64 < &v67[v70])
          {
            v71 = v64;
          }

          if (v71 < v66)
          {
            v71 = v66;
          }

          result = (*v71 << 24) | (v71[2] << 16) | (*(v71 + 2) << 8) | 0xFFu;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
          }

          *v8++ = result;
          --v69;
        }

        while (v69);
      }
    }

    else
    {
      v72 = v96;
      v73 = v94;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = &v67[v74];
          if (v64 < &v67[v74])
          {
            v75 = v64;
          }

          if (v75 < *(v97 + 32))
          {
            v75 = *(v97 + 32);
          }

          v76 = *v75;
          v77 = v75[2];
          v78 = *(v75 + 2);
          v79 = (v76 << 24) | (v77 << 16) | (v78 << 8) | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869((v76 << 24) | (v77 << 16) | (v78 << 8) | 0xFFu, v7);
            v79 = result;
          }

          if (v79)
          {
            if (v79 == 255)
            {
              *v8 = v79;
            }

            else
            {
              result = DplusDM_21871(v8, v79, *v8, ~v79);
            }
          }

          ++v8;
          --v73;
        }

        while (v73);
      }
    }

    v10 = v89;
    v8 += v90;
    LOBYTE(v11) = v88;
    v12 = v65 + v87;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t rgba32_image_mark_w16(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v88 = *a2;
  v7 = *(a2 + 2);
  v87 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v84 = *(a2 + 9);
  v11 = *(a2 + 5) + v84 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v93 = result;
  v89 = a5;
  v85 = v10;
  v86 = v9;
  if (*(result + 176))
  {
    v83 = *(a2 + 11);
    v81 = ~(-1 << v10);
    v82 = *(a2 + 13);
    v80 = v10 - 4;
    v14 = (v13 - 4);
    v78 = a5;
    v79 = -v9;
    v77 = v8 + 16 * a3 + 8;
    while (1)
    {
      if (((v82 - v11) | (v11 - v83)) < 0)
      {
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v15 = ((v11 & v81) >> v80) & 0xF;
        v16 = (v15 - 7) >= 9 ? v79 : v9;
        v17 = weights_21890[v15] & 0xF;
      }

      v18 = *(v93 + 32) + (v11 >> v10) * v9;
      v91 = a6;
      if (v88 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v19 = v77;
        v20 = v78;
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

          v25 = *v24;
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
            v37 = (v39 & *v38) >> v17;
            goto LABEL_40;
          }

LABEL_41:
          result = (16843008 * BYTE1(v25)) | 0xFFu;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
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

        v29 = *v28;
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

          v32 = *v31;
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
          LODWORD(v25) = v25 - ((v34 & v25) >> v17) + ((v34 & v32) >> v17);
          LODWORD(v29) = v29 - ((v34 & v29) >> v17) + ((v34 & *v33) >> v17);
        }

        v35 = BLEND16_21891[v26];
        v36 = v25 - ((v35 & v25) >> v26);
        v37 = (v35 & v29) >> v26;
LABEL_40:
        LOWORD(v25) = v36 + v37;
        goto LABEL_41;
      }

LABEL_83:
      v9 = v86;
      v7 += v87;
      LOBYTE(v10) = v85;
      v11 += v84;
      a6 = v91 - 1;
      a5 = v89;
      if (v91 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v41 = v77;
    v40 = v78;
    while (1)
    {
      v42 = *(v41 - 1);
      v43 = *v41;
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

      v46 = *v45;
      v47 = *v41 & 0xF;
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
        v58 = (v60 & *v59) >> v17;
        goto LABEL_75;
      }

LABEL_76:
      v61 = 16843008 * BYTE1(v46);
      v62 = v61 | 0xFF;
      if (v6 != 255)
      {
        result = PDM_21869(v61 | 0xFFu, v6);
        v62 = result;
      }

      if (v62)
      {
        if (v62 == 255)
        {
          *v7 = v62;
        }

        else
        {
          result = DplusDM_21871(v7, v62, *v7, ~v62);
        }
      }

      v41 += 2;
      ++v7;
      if (!--v40)
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

    v50 = *v49;
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

      v53 = *v52;
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
      LODWORD(v46) = v46 - ((v55 & v46) >> v17) + ((v55 & v53) >> v17);
      LODWORD(v50) = v50 - ((v55 & v50) >> v17) + ((v55 & *v54) >> v17);
    }

    v56 = BLEND16_21891[v47];
    v57 = v46 - ((v56 & v46) >> v47);
    v58 = (v56 & v50) >> v47;
LABEL_75:
    LOWORD(v46) = v57 + v58;
    goto LABEL_76;
  }

  v92 = (v8 + 16 * a3);
  v63 = v13 - 4;
  v90 = a5;
  do
  {
    v64 = *(v93 + 32);
    v65 = &v64[(v11 >> v10) * v9];
    v66 = a6;
    if (v88 == 1)
    {
      if (a5 >= 1)
      {
        v67 = v92;
        v68 = v90;
        do
        {
          v69 = *v67;
          v67 += 2;
          v70 = &v65[v69];
          if (v63 < &v65[v69])
          {
            v70 = v63;
          }

          if (v70 < v64)
          {
            v70 = v64;
          }

          result = (HIBYTE(*v70) << 16) | (HIBYTE(*v70) << 24) | *v70 | 0xFFu;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v7++ = result;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v71 = v92;
      v72 = v90;
      if (a5 >= 1)
      {
        do
        {
          v73 = *v71;
          v71 += 2;
          v74 = &v65[v73];
          if (v63 < &v65[v73])
          {
            v74 = v63;
          }

          if (v74 < *(v93 + 32))
          {
            v74 = *(v93 + 32);
          }

          v75 = (HIBYTE(*v74) << 16) | (HIBYTE(*v74) << 24) | *v74;
          v76 = v75 | 0xFF;
          if (v6 != 255)
          {
            result = PDM_21869(v75 | 0xFFu, v6);
            v76 = result;
          }

          if (v76)
          {
            if (v76 == 255)
            {
              *v7 = v76;
            }

            else
            {
              result = DplusDM_21871(v7, v76, *v7, ~v76);
            }
          }

          ++v7;
          --v72;
        }

        while (v72);
      }
    }

    v9 = v86;
    v7 += v87;
    LOBYTE(v10) = v85;
    v11 += v84;
    a6 = v66 - 1;
    a5 = v89;
  }

  while (v66 != 1);
  return result;
}

unint64_t rgba32_image_mark_W16(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
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
  v94 = result;
  v90 = a5;
  v86 = v10;
  v87 = v9;
  if (*(result + 176))
  {
    v84 = *(a2 + 11);
    v82 = ~(-1 << v10);
    v83 = *(a2 + 13);
    v81 = v10 - 4;
    v14 = (v13 - 4);
    v79 = a5;
    v80 = -v9;
    v78 = v8 + 16 * a3 + 8;
    while (1)
    {
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

      v18 = *(v94 + 32) + (v11 >> v10) * v9;
      v92 = a6;
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

          v25 = bswap32(*v24) >> 16;
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
            v37 = (v39 & (bswap32(*v38) >> 16)) >> v17;
            goto LABEL_40;
          }

LABEL_41:
          result = (16843008 * BYTE1(v25)) | 0xFFu;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
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

        v29 = bswap32(*v28) >> 16;
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

          v32 = bswap32(*v31) >> 16;
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
          LODWORD(v25) = v25 - ((v34 & v25) >> v17) + ((v34 & v32) >> v17);
          LODWORD(v29) = v29 - ((v34 & v29) >> v17) + ((v34 & (bswap32(*v33) >> 16)) >> v17);
        }

        v35 = BLEND16_21891[v26];
        v36 = v25 - ((v35 & v25) >> v26);
        v37 = (v35 & v29) >> v26;
LABEL_40:
        LOWORD(v25) = v36 + v37;
        goto LABEL_41;
      }

LABEL_83:
      v9 = v87;
      v7 += v88;
      LOBYTE(v10) = v86;
      v11 += v85;
      a6 = v92 - 1;
      a5 = v90;
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

      v46 = bswap32(*v45) >> 16;
      v47 = *v41 & 0xF;
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
        v58 = (v60 & (bswap32(*v59) >> 16)) >> v17;
        goto LABEL_75;
      }

LABEL_76:
      v61 = 16843008 * BYTE1(v46);
      v62 = v61 | 0xFF;
      if (v6 != 255)
      {
        result = PDM_21869(v61 | 0xFFu, v6);
        v62 = result;
      }

      if (v62)
      {
        if (v62 == 255)
        {
          *v7 = v62;
        }

        else
        {
          result = DplusDM_21871(v7, v62, *v7, ~v62);
        }
      }

      v41 += 2;
      ++v7;
      if (!--v40)
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

    v50 = bswap32(*v49) >> 16;
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

      v53 = bswap32(*v52) >> 16;
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
      LODWORD(v46) = v46 - ((v55 & v46) >> v17) + ((v55 & v53) >> v17);
      LODWORD(v50) = v50 - ((v55 & v50) >> v17) + ((v55 & (bswap32(*v54) >> 16)) >> v17);
    }

    v56 = BLEND16_21891[v47];
    v57 = v46 - ((v56 & v46) >> v47);
    v58 = (v56 & v50) >> v47;
LABEL_75:
    LOWORD(v46) = v57 + v58;
    goto LABEL_76;
  }

  v93 = (v8 + 16 * a3);
  v63 = v13 - 4;
  v91 = a5;
  do
  {
    v64 = *(v94 + 32);
    v65 = &v64[(v11 >> v10) * v9];
    v66 = a6;
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v67 = v93;
        v68 = v91;
        do
        {
          v69 = *v67;
          v67 += 2;
          v70 = &v65[v69];
          if (v63 < &v65[v69])
          {
            v70 = v63;
          }

          if (v70 < v64)
          {
            v70 = v64;
          }

          v71 = bswap32(*v70);
          result = (HIBYTE(v71) << 16) | (HIBYTE(v71) << 24) | HIWORD(v71) | 0xFF;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v7++ = result;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v72 = v93;
      v73 = v91;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = &v65[v74];
          if (v63 < &v65[v74])
          {
            v75 = v63;
          }

          if (v75 < *(v94 + 32))
          {
            v75 = *(v94 + 32);
          }

          v76 = bswap32(*v75);
          v77 = (HIBYTE(v76) << 16) | (HIBYTE(v76) << 24) | HIWORD(v76) | 0xFF;
          if (v6 != 255)
          {
            result = PDM_21869((HIBYTE(v76) << 16) | (HIBYTE(v76) << 24) | HIWORD(v76) | 0xFF, v6);
            v77 = result;
          }

          if (v77)
          {
            if (v77 == 255)
            {
              *v7 = v77;
            }

            else
            {
              result = DplusDM_21871(v7, v77, *v7, ~v77);
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
    a6 = v66 - 1;
    a5 = v90;
  }

  while (v66 != 1);
  return result;
}

unint64_t rgba32_image_mark_rgb32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = a2[1];
  v89 = *a2;
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
  v88 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v85 = *(a2 + 9);
  v14 = *(a2 + 5) + v85 * a4;
  v15 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v95 = result;
  v90 = a5;
  v86 = v13;
  v87 = v12;
  if (*(result + 176))
  {
    v82 = ~(-1 << v13);
    v83 = *(a2 + 13);
    v84 = *(a2 + 11);
    v81 = v13 - 4;
    v80 = -v12;
    v16 = (v15 - 4);
    v78 = v11 + 16 * a3 + 8;
    v79 = a5;
    while (1)
    {
      if (((v83 - v14) | (v14 - v84)) < 0)
      {
        v21 = 0;
        v96 = 0;
      }

      else
      {
        v17 = ((v14 & v82) >> v81) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v80;
        if (!v19)
        {
          v20 = v12;
        }

        v96 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v95 + 32) + (v14 >> v13) * v12;
      v93 = a6;
      v91 = v14;
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
            v41 = (v27 + v96);
            if (v16 < v27 + v96)
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
          result = __ROL4__(v29, v7) | v9;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
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
          v33 = (v27 + v96);
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
      v12 = v87;
      v10 += v88;
      LOBYTE(v13) = v86;
      v14 = v91 + v85;
      a6 = v93 - 1;
      a5 = v90;
      if (v93 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v43 = v78;
    v44 = v79;
    while (1)
    {
      v45 = *(v43 - 1);
      v46 = *v43;
      v47 = v22 + v45;
      if (v16 >= v22 + v45)
      {
        v48 = (v22 + v45);
      }

      else
      {
        v48 = v16;
      }

      if (v48 < v8)
      {
        v48 = v8;
      }

      v49 = *v48;
      v50 = v46 & 0xF;
      if ((v46 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v61 = (v47 + v96);
        if (v16 < v47 + v96)
        {
          v61 = v16;
        }

        if (v61 < v8)
        {
          v61 = v8;
        }

        v62 = BLEND8_21892[v21];
        v59 = v49 - ((v62 & v49) >> v21);
        v60 = (v62 & *v61) >> v21;
        goto LABEL_77;
      }

LABEL_78:
      v63 = __ROL4__(v49, v7);
      v64 = v63 | v9;
      if (v6 != 255)
      {
        result = PDM_21869(v63 | v9, v6);
        v64 = result;
      }

      if (v64)
      {
        if (v64 == 255)
        {
          *v10 = v64;
        }

        else
        {
          result = DplusDM_21871(v10, v64, *v10, ~v64);
        }
      }

      v43 += 2;
      ++v10;
      if (!--v44)
      {
        goto LABEL_85;
      }
    }

    v51 = (v47 + (v46 >> 4));
    if (v16 < v51)
    {
      v51 = v16;
    }

    if (v51 < v8)
    {
      v51 = v8;
    }

    v52 = *v51;
    if (v21)
    {
      v53 = (v47 + v96);
      if (v16 >= v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = v16;
      }

      if (v54 < v8)
      {
        v54 = v8;
      }

      v55 = *v54;
      v56 = (v53 + (v46 >> 4));
      if (v16 < v56)
      {
        v56 = v16;
      }

      if (v56 < v8)
      {
        v56 = v8;
      }

      v57 = BLEND8_21892[v21];
      v49 = v49 - ((v57 & v49) >> v21) + ((v57 & v55) >> v21);
      v52 = v52 - ((v57 & v52) >> v21) + ((v57 & *v56) >> v21);
    }

    v58 = BLEND8_21892[*v43 & 0xF];
    v59 = v49 - ((v58 & v49) >> v50);
    v60 = (v58 & v52) >> v50;
LABEL_77:
    v49 = v59 + v60;
    goto LABEL_78;
  }

  v65 = v15 - 4;
  v97 = a5;
  v98 = (v11 + 16 * a3);
  do
  {
    v66 = *(v95 + 32);
    v67 = &v66[(v14 >> v13) * v12];
    v94 = a6;
    v92 = v14;
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v68 = v97;
        v69 = v98;
        do
        {
          v70 = *v69;
          v69 += 2;
          v71 = &v67[v70];
          if (v65 < &v67[v70])
          {
            v71 = v65;
          }

          if (v71 < v66)
          {
            v71 = v66;
          }

          result = __ROL4__(*v71, v7) | v9;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v10++ = result;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v72 = v97;
      v73 = v98;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v73;
          v73 += 2;
          v75 = &v67[v74];
          if (v65 < &v67[v74])
          {
            v75 = v65;
          }

          if (v75 < *(v95 + 32))
          {
            v75 = *(v95 + 32);
          }

          v76 = __ROL4__(*v75, v7);
          v77 = v76 | v9;
          if (v6 != 255)
          {
            result = PDM_21869(v76 | v9, v6);
            v77 = result;
          }

          if (v77)
          {
            if (v77 == 255)
            {
              *v10 = v77;
            }

            else
            {
              result = DplusDM_21871(v10, v77, *v10, ~v77);
            }
          }

          ++v10;
          --v72;
        }

        while (v72);
      }
    }

    v12 = v87;
    v10 += v88;
    LOBYTE(v13) = v86;
    v14 = v92 + v85;
    a6 = v94 - 1;
    a5 = v90;
  }

  while (v94 != 1);
  return result;
}

unint64_t rgba32_image_mark_RGB32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = a2[1];
  v89 = *a2;
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
  v88 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v85 = *(a2 + 9);
  v14 = *(a2 + 5) + v85 * a4;
  v15 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v95 = result;
  v90 = a5;
  v86 = v13;
  v87 = v12;
  if (*(result + 176))
  {
    v82 = ~(-1 << v13);
    v83 = *(a2 + 13);
    v84 = *(a2 + 11);
    v81 = v13 - 4;
    v80 = -v12;
    v16 = (v15 - 4);
    v78 = v11 + 16 * a3 + 8;
    v79 = a5;
    while (1)
    {
      if (((v83 - v14) | (v14 - v84)) < 0)
      {
        v21 = 0;
        v96 = 0;
      }

      else
      {
        v17 = ((v14 & v82) >> v81) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v80;
        if (!v19)
        {
          v20 = v12;
        }

        v96 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v95 + 32) + (v14 >> v13) * v12;
      v93 = a6;
      v91 = v14;
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

          v29 = bswap32(*v28);
          v30 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v41 = (v27 + v96);
            if (v16 < v27 + v96)
            {
              v41 = v16;
            }

            if (v41 < v8)
            {
              v41 = v8;
            }

            v42 = BLEND8_21892[v21];
            v39 = v29 - ((v42 & v29) >> v21);
            v40 = (bswap32(*v41) & v42) >> v21;
            goto LABEL_42;
          }

LABEL_43:
          result = __ROL4__(v29, v7) | v9;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
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

        v32 = bswap32(*v31);
        if (v21)
        {
          v33 = (v27 + v96);
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

          v35 = bswap32(*v34);
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
          v32 = v32 - ((v37 & v32) >> v21) + ((bswap32(*v36) & v37) >> v21);
        }

        v38 = BLEND8_21892[*v23 & 0xF];
        v39 = v29 - ((v38 & v29) >> v30);
        v40 = (v38 & v32) >> v30;
LABEL_42:
        v29 = v39 + v40;
        goto LABEL_43;
      }

LABEL_85:
      v12 = v87;
      v10 += v88;
      LOBYTE(v13) = v86;
      v14 = v91 + v85;
      a6 = v93 - 1;
      a5 = v90;
      if (v93 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v43 = v78;
    v44 = v79;
    while (1)
    {
      v45 = *(v43 - 1);
      v46 = *v43;
      v47 = v22 + v45;
      if (v16 >= v22 + v45)
      {
        v48 = (v22 + v45);
      }

      else
      {
        v48 = v16;
      }

      if (v48 < v8)
      {
        v48 = v8;
      }

      v49 = bswap32(*v48);
      v50 = v46 & 0xF;
      if ((v46 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v61 = (v47 + v96);
        if (v16 < v47 + v96)
        {
          v61 = v16;
        }

        if (v61 < v8)
        {
          v61 = v8;
        }

        v62 = BLEND8_21892[v21];
        v59 = v49 - ((v62 & v49) >> v21);
        v60 = (bswap32(*v61) & v62) >> v21;
        goto LABEL_77;
      }

LABEL_78:
      v63 = __ROL4__(v49, v7);
      v64 = v63 | v9;
      if (v6 != 255)
      {
        result = PDM_21869(v63 | v9, v6);
        v64 = result;
      }

      if (v64)
      {
        if (v64 == 255)
        {
          *v10 = v64;
        }

        else
        {
          result = DplusDM_21871(v10, v64, *v10, ~v64);
        }
      }

      v43 += 2;
      ++v10;
      if (!--v44)
      {
        goto LABEL_85;
      }
    }

    v51 = (v47 + (v46 >> 4));
    if (v16 < v51)
    {
      v51 = v16;
    }

    if (v51 < v8)
    {
      v51 = v8;
    }

    v52 = bswap32(*v51);
    if (v21)
    {
      v53 = (v47 + v96);
      if (v16 >= v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = v16;
      }

      if (v54 < v8)
      {
        v54 = v8;
      }

      v55 = bswap32(*v54);
      v56 = (v53 + (v46 >> 4));
      if (v16 < v56)
      {
        v56 = v16;
      }

      if (v56 < v8)
      {
        v56 = v8;
      }

      v57 = BLEND8_21892[v21];
      v49 = v49 - ((v57 & v49) >> v21) + ((v57 & v55) >> v21);
      v52 = v52 - ((v57 & v52) >> v21) + ((bswap32(*v56) & v57) >> v21);
    }

    v58 = BLEND8_21892[*v43 & 0xF];
    v59 = v49 - ((v58 & v49) >> v50);
    v60 = (v58 & v52) >> v50;
LABEL_77:
    v49 = v59 + v60;
    goto LABEL_78;
  }

  v65 = (v15 - 4);
  v97 = a5;
  v98 = (v11 + 16 * a3);
  do
  {
    v66 = *(v95 + 32);
    v67 = v66 + (v14 >> v13) * v12;
    v94 = a6;
    v92 = v14;
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v68 = v97;
        v69 = v98;
        do
        {
          v70 = *v69;
          v69 += 2;
          v71 = &v67[v70];
          if (v65 < &v67[v70])
          {
            v71 = v65;
          }

          if (v71 < v66)
          {
            v71 = v66;
          }

          result = __ROL4__(bswap32(*v71), v7) | v9;
          if (v6 != 255)
          {
            result = PDM_21869(result, v6);
          }

          *v10++ = result;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v72 = v97;
      v73 = v98;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v73;
          v73 += 2;
          v75 = &v67[v74];
          if (v65 < &v67[v74])
          {
            v75 = v65;
          }

          if (v75 < *(v95 + 32))
          {
            v75 = *(v95 + 32);
          }

          v76 = __ROL4__(bswap32(*v75), v7);
          v77 = v76 | v9;
          if (v6 != 255)
          {
            result = PDM_21869(v76 | v9, v6);
            v77 = result;
          }

          if (v77)
          {
            if (v77 == 255)
            {
              *v10 = v77;
            }

            else
            {
              result = DplusDM_21871(v10, v77, *v10, ~v77);
            }
          }

          ++v10;
          --v72;
        }

        while (v72);
      }
    }

    v12 = v87;
    v10 += v88;
    LOBYTE(v13) = v86;
    v14 = v92 + v85;
    a6 = v94 - 1;
    a5 = v90;
  }

  while (v94 != 1);
  return result;
}

unint64_t rgba32_image_mark_RGB24(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v86 = *a2;
  v8 = *(a2 + 2);
  v85 = *(a2 + 3) - a5;
  v10 = *(a2 + 15);
  v9 = *(a2 + 16);
  v11 = *(a2 + 7);
  v82 = *(a2 + 9);
  v12 = *(a2 + 5) + v82 * a4;
  v13 = *(result + 32);
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v92 = result;
  v83 = v11;
  v84 = v10;
  if (*(result + 176))
  {
    v81 = *(a2 + 11);
    v79 = ~(-1 << v11);
    v80 = *(a2 + 13);
    v78 = v11 - 4;
    v15 = v14 - 3;
    v76 = a5;
    v77 = -v10;
    v75 = v9 + 16 * a3 + 8;
    while (1)
    {
      v90 = a6;
      if (((v80 - v12) | (v12 - v81)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v12 & v79) >> v78) & 0xF;
        v17 = (v16 - 7) >= 9 ? v77 : v10;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v92 + 32) + (v12 >> v11) * v10;
      v88 = v12;
      if (v86 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v75;
        v21 = v76;
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

          v26 = (*v25 << 24) | (v25[1] << 16) | (v25[2] << 8);
          v27 = v23 & 0xF;
          if ((v23 & 0xF) != 0)
          {
            break;
          }

          if (v18)
          {
            v38 = (v24 + v17);
            if (v15 < v24 + v17)
            {
              v38 = v15;
            }

            if (v38 < v13)
            {
              v38 = v13;
            }

            v39 = BLEND8_21892[v18];
            v36 = v26 - ((v39 & v26) >> v18);
            v37 = (((*v38 << 24) | (v38[1] << 16) | (v38[2] << 8)) & v39) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = v26 | 0xFFu;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
          }

          v20 += 2;
          *v8++ = result;
          if (!--v21)
          {
            goto LABEL_83;
          }
        }

        v28 = (v24 + (v23 >> 4));
        if (v15 < v28)
        {
          v28 = v15;
        }

        if (v28 < v13)
        {
          v28 = v13;
        }

        v29 = (*v28 << 24) | (v28[1] << 16) | (v28[2] << 8);
        if (v18)
        {
          v30 = (v24 + v17);
          if (v15 >= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v15;
          }

          if (v31 < v13)
          {
            v31 = v13;
          }

          v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
          v33 = &v30[v23 >> 4];
          if (v15 < v33)
          {
            v33 = v15;
          }

          if (v33 < v13)
          {
            v33 = v13;
          }

          v34 = BLEND8_21892[v18];
          v26 = v26 - ((v34 & v26) >> v18) + ((v34 & v32) >> v18);
          v29 = v29 - ((v34 & v29) >> v18) + ((((*v33 << 24) | (v33[1] << 16) | (v33[2] << 8)) & v34) >> v18);
        }

        v35 = BLEND8_21892[*v20 & 0xF];
        v36 = v26 - ((v35 & v26) >> v27);
        v37 = (v35 & v29) >> v27;
LABEL_40:
        v26 = v36 + v37;
        goto LABEL_41;
      }

LABEL_83:
      v10 = v84;
      v8 += v85;
      LOBYTE(v11) = v83;
      v12 = v88 + v82;
      a6 = v90 - 1;
      if (v90 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v40 = v75;
    v41 = v76;
    while (1)
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v19 + v42;
      if (v15 >= v19 + v42)
      {
        v45 = (v19 + v42);
      }

      else
      {
        v45 = v15;
      }

      if (v45 < v13)
      {
        v45 = v13;
      }

      v46 = (*v45 << 24) | (v45[1] << 16) | (v45[2] << 8);
      v47 = v43 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v18)
      {
        v58 = (v44 + v17);
        if (v15 < v44 + v17)
        {
          v58 = v15;
        }

        if (v58 < v13)
        {
          v58 = v13;
        }

        v59 = BLEND8_21892[v18];
        v56 = v46 - ((v59 & v46) >> v18);
        v57 = (((*v58 << 24) | (v58[1] << 16) | (v58[2] << 8)) & v59) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v60 = v46 | 0xFF;
      if (v7 != 255)
      {
        result = PDM_21869(v46 | 0xFFu, v7);
        v60 = result;
      }

      if (v60)
      {
        if (v60 == 255)
        {
          *v8 = v60;
        }

        else
        {
          result = DplusDM_21871(v8, v60, *v8, ~v60);
        }
      }

      v40 += 2;
      ++v8;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v48 = (v44 + (v43 >> 4));
    if (v15 < v48)
    {
      v48 = v15;
    }

    if (v48 < v13)
    {
      v48 = v13;
    }

    v49 = (*v48 << 24) | (v48[1] << 16) | (v48[2] << 8);
    if (v18)
    {
      v50 = (v44 + v17);
      if (v15 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v15;
      }

      if (v51 < v13)
      {
        v51 = v13;
      }

      v52 = (*v51 << 24) | (v51[1] << 16) | (v51[2] << 8);
      v53 = &v50[v43 >> 4];
      if (v15 < v53)
      {
        v53 = v15;
      }

      if (v53 < v13)
      {
        v53 = v13;
      }

      v54 = BLEND8_21892[v18];
      v46 = v46 - ((v54 & v46) >> v18) + ((v54 & v52) >> v18);
      v49 = v49 - ((v54 & v49) >> v18) + ((((*v53 << 24) | (v53[1] << 16) | (v53[2] << 8)) & v54) >> v18);
    }

    v55 = BLEND8_21892[*v40 & 0xF];
    v56 = v46 - ((v55 & v46) >> v47);
    v57 = (v55 & v49) >> v47;
LABEL_75:
    v46 = v56 + v57;
    goto LABEL_76;
  }

  v91 = (v9 + 16 * a3);
  v61 = v14 - 3;
  v89 = a5;
  do
  {
    v62 = v12;
    v63 = *(v92 + 32);
    v64 = &v63[(v12 >> v11) * v10];
    if (v86 == 1)
    {
      if (a5 >= 1)
      {
        v65 = v91;
        v66 = v89;
        do
        {
          v67 = *v65;
          v65 += 2;
          v68 = &v64[v67];
          if (v61 < &v64[v67])
          {
            v68 = v61;
          }

          if (v68 < v63)
          {
            v68 = v63;
          }

          result = (v68[1] << 16) | (*v68 << 24) | (v68[2] << 8) | 0xFFu;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
          }

          *v8++ = result;
          --v66;
        }

        while (v66);
      }
    }

    else
    {
      v69 = v91;
      v70 = v89;
      if (a5 >= 1)
      {
        do
        {
          v71 = *v69;
          v69 += 2;
          v72 = &v64[v71];
          if (v61 < &v64[v71])
          {
            v72 = v61;
          }

          if (v72 < *(v92 + 32))
          {
            v72 = *(v92 + 32);
          }

          v73 = (v72[1] << 16) | (*v72 << 24) | (v72[2] << 8);
          v74 = v73 | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(v73 | 0xFFu, v7);
            v74 = result;
          }

          if (v74)
          {
            if (v74 == 255)
            {
              *v8 = v74;
            }

            else
            {
              result = DplusDM_21871(v8, v74, *v8, ~v74);
            }
          }

          ++v8;
          --v70;
        }

        while (v70);
      }
    }

    v10 = v84;
    v8 += v85;
    LOBYTE(v11) = v83;
    v12 = v62 + v82;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t rgba32_image_mark_W8(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v86 = *a2;
  v8 = *(a2 + 2);
  v85 = *(a2 + 3) - a5;
  v9 = *(a2 + 16);
  v10 = *(a2 + 7);
  v82 = *(a2 + 9);
  v11 = *(a2 + 5) + v82 * a4;
  v12 = *(result + 32);
  v13 = &v12[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v92 = result;
  v83 = v10;
  v84 = *(a2 + 15);
  if (*(result + 176))
  {
    v81 = *(a2 + 11);
    v79 = ~(-1 << v10);
    v80 = *(a2 + 13);
    v78 = v10 - 4;
    v14 = v13 - 4;
    v76 = a5;
    v77 = -*(a2 + 15);
    v75 = v9 + 16 * a3 + 8;
    while (1)
    {
      v90 = a6;
      if (((v80 - v11) | (v11 - v81)) < 0)
      {
        v18 = 0;
        v17 = 0;
        v16 = v84;
      }

      else
      {
        v15 = ((v11 & v79) >> v78) & 0xF;
        v16 = v84;
        v17 = (v15 - 7) >= 9 ? v77 : v84;
        v18 = weights_21890[v15] & 0xF;
      }

      v88 = v11;
      v19 = *(v92 + 32) + (v11 >> v83) * v16;
      if (v86 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v75;
        v21 = v76;
        while (1)
        {
          v22 = *(v20 - 1);
          v23 = *v20;
          v24 = v19 + v22;
          if (v14 >= v19 + v22)
          {
            v25 = (v19 + v22);
          }

          else
          {
            v25 = v14;
          }

          if (v25 < v12)
          {
            v25 = v12;
          }

          v26 = *v25;
          v27 = v23 & 0xF;
          if ((v23 & 0xF) != 0)
          {
            break;
          }

          if (v18)
          {
            v38 = (v24 + v17);
            if (v14 < v24 + v17)
            {
              v38 = v14;
            }

            if (v38 < v12)
            {
              v38 = v12;
            }

            v39 = BLEND8_21892[v18];
            v36 = v26 - ((v39 & v26) >> v18);
            v37 = (v39 & *v38) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = (v26 << 24) | (v26 << 16) | (v26 << 8) | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
          }

          v20 += 2;
          *v8++ = result;
          if (!--v21)
          {
            goto LABEL_83;
          }
        }

        v28 = (v24 + (v23 >> 4));
        if (v14 < v28)
        {
          v28 = v14;
        }

        if (v28 < v12)
        {
          v28 = v12;
        }

        v29 = *v28;
        if (v18)
        {
          v30 = (v24 + v17);
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

          v32 = *v31;
          v33 = &v30[v23 >> 4];
          if (v14 < v33)
          {
            v33 = v14;
          }

          if (v33 < v12)
          {
            v33 = v12;
          }

          v34 = BLEND8_21892[v18];
          v26 = v26 - ((v34 & v26) >> v18) + ((v34 & v32) >> v18);
          v29 = v29 - ((v34 & v29) >> v18) + ((v34 & *v33) >> v18);
        }

        v35 = BLEND8_21892[*v20 & 0xF];
        v36 = v26 - ((v35 & v26) >> v27);
        v37 = (v35 & v29) >> v27;
LABEL_40:
        v26 = v36 + v37;
        goto LABEL_41;
      }

LABEL_83:
      v8 += v85;
      v11 = v88 + v82;
      a6 = v90 - 1;
      if (v90 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v40 = v75;
    v41 = v76;
    while (1)
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v19 + v42;
      if (v14 >= v19 + v42)
      {
        v45 = (v19 + v42);
      }

      else
      {
        v45 = v14;
      }

      if (v45 < v12)
      {
        v45 = v12;
      }

      v46 = *v45;
      v47 = v43 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v18)
      {
        v58 = (v44 + v17);
        if (v14 < v44 + v17)
        {
          v58 = v14;
        }

        if (v58 < v12)
        {
          v58 = v12;
        }

        v59 = BLEND8_21892[v18];
        v56 = v46 - ((v59 & v46) >> v18);
        v57 = (v59 & *v58) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v60 = (v46 << 24) | (v46 << 16) | (v46 << 8) | 0xFF;
      if (v7 != 255)
      {
        result = PDM_21869((v46 << 24) | (v46 << 16) | (v46 << 8) | 0xFF, v7);
        v60 = result;
      }

      if (v60)
      {
        if (v60 == 255)
        {
          *v8 = v60;
        }

        else
        {
          result = DplusDM_21871(v8, v60, *v8, ~v60);
        }
      }

      v40 += 2;
      ++v8;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v48 = (v44 + (v43 >> 4));
    if (v14 < v48)
    {
      v48 = v14;
    }

    if (v48 < v12)
    {
      v48 = v12;
    }

    v49 = *v48;
    if (v18)
    {
      v50 = (v44 + v17);
      if (v14 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v14;
      }

      if (v51 < v12)
      {
        v51 = v12;
      }

      v52 = *v51;
      v53 = &v50[v43 >> 4];
      if (v14 < v53)
      {
        v53 = v14;
      }

      if (v53 < v12)
      {
        v53 = v12;
      }

      v54 = BLEND8_21892[v18];
      v46 = v46 - ((v54 & v46) >> v18) + ((v54 & v52) >> v18);
      v49 = v49 - ((v54 & v49) >> v18) + ((v54 & *v53) >> v18);
    }

    v55 = BLEND8_21892[*v40 & 0xF];
    v56 = v46 - ((v55 & v46) >> v47);
    v57 = (v55 & v49) >> v47;
LABEL_75:
    v46 = v56 + v57;
    goto LABEL_76;
  }

  v61 = v13 - 4;
  v91 = (v9 + 16 * a3);
  v89 = a5;
  do
  {
    v62 = v11;
    v63 = *(v92 + 32);
    v64 = &v63[(v11 >> v83) * v84];
    if (v86 == 1)
    {
      if (a5 >= 1)
      {
        v65 = v91;
        v66 = v89;
        do
        {
          v67 = *v65;
          v65 += 2;
          v68 = &v64[v67];
          if (v61 < &v64[v67])
          {
            v68 = v61;
          }

          if (v68 < v63)
          {
            v68 = v63;
          }

          result = (16843008 * *v68) | 0xFFu;
          if (v7 != 255)
          {
            result = PDM_21869(result, v7);
          }

          *v8++ = result;
          --v66;
        }

        while (v66);
      }
    }

    else
    {
      v69 = v91;
      v70 = v89;
      if (a5 >= 1)
      {
        do
        {
          v71 = *v69;
          v69 += 2;
          v72 = &v64[v71];
          if (v61 < &v64[v71])
          {
            v72 = v61;
          }

          if (v72 < *(v92 + 32))
          {
            v72 = *(v92 + 32);
          }

          v73 = 16843008 * *v72;
          v74 = v73 | 0xFF;
          if (v7 != 255)
          {
            result = PDM_21869(v73 | 0xFFu, v7);
            v74 = result;
          }

          if (v74)
          {
            if (v74 == 255)
            {
              *v8 = v74;
            }

            else
            {
              result = DplusDM_21871(v8, v74, *v8, ~v74);
            }
          }

          ++v8;
          --v70;
        }

        while (v70);
      }
    }

    v8 += v85;
    v11 = v62 + v82;
    --a6;
  }

  while (a6);
  return result;
}

_DWORD *DplusDAM_21893(_DWORD *result, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = ((((((a3 & 0xFF0000 | a4) * a5 + 8388736) >> 8) & 0xFF00FF) + (a3 & 0xFF0000 | a4) * a5 + 8388736) >> 8) & 0xFF00FF | ((((((a3 >> 8) & 0xFF00FF) * a5 + 8388736) >> 8) & 0xFF00FF) + ((a3 >> 8) & 0xFF00FF) * a5 + 8388736) & 0xFF00FF00;
  v6 = (((v5 | (v5 << 40)) >> 8) & 0xFF00FF00FF00FFLL) + (((a2 | (a2 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  *result = ((((v6 & 0x100010001000100) - ((v6 & 0x100010001000100) >> 8)) | v6) & 0xFF00FF00FF00FFLL | (((((v6 & 0x100010001000100) - ((v6 & 0x100010001000100) >> 8)) | v6) & 0xFF00FF00FF00FFLL) << 40)) >> 32;
  return result;
}

_DWORD *DAM_21894(_DWORD *result, unsigned int a2, int a3, int a4)
{
  v4 = ((a2 >> 8) & 0xFF00FF) * (a4 ^ 0xFF) + 8388736;
  v5 = (a2 & 0xFF0000 | a3 & 0xFF00FF) * (a4 ^ 0xFF) + 8388736;
  v6 = ((((v5 >> 8) & 0xFF00FF) + v5) >> 8) & 0xFF00FF | (((v4 >> 8) & 0xFF00FF) + v4) & 0xFF00FF00;
  v7 = (((a2 & 0xFFFFFF00 | a3 | ((a2 & 0xFFFFFF00 | a3) << 40)) >> 8) & 0xFF00FF00FF00FFLL | 0x100010001000100) - (((v6 | (v6 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  *result = (((v7 & 0x100010001000100) - ((v7 & 0x100010001000100) >> 8)) & v7 | ((((v7 & 0x100010001000100) - ((v7 & 0x100010001000100) >> 8)) & v7) << 40)) >> 32;
  return result;
}

void rgba32_mark_pixelmask(uint64_t a1, int a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v442 = *(a1 + 4);
    v3 = v442;
    v464 = *(a1 + 8);
    v465 = *(a1 + 48);
    v5 = *(a1 + 88);
    v4 = *(a1 + 96);
    v6 = *(a1 + 28) >> 2;
    v7 = (*(a1 + 40) + 4 * v6 * *(a1 + 16) + 4 * *(a1 + 12));
    v8 = *(a1 + 124);
    v9 = (v2 + *(a1 + 108) * v8 + *(a1 + 104));
    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v12 = *(a1 + 76);
    if (*(a1 + 1) << 8 != 256)
    {
      LODWORD(v13) = *(a1 + 64);
      v19 = *(a1 + 68);
      v20 = v12 >> 2;
      v21 = v4 != 0;
      v441 = v8 - v442;
      v440 = v6 - v442;
      if (v5)
      {
        v437 = 0;
        v22 = v13;
        v23 = v19;
        v438 = v5 + 4 * v20 * v19;
        v439 = v20;
        v24 = v5 + 4 * v20 * (v11 % v19);
        v14 = (v24 + 4 * (v10 % v13));
        v25 = v24 + 4 * v13;
        v26 = 1;
        v463 = v14;
LABEL_16:
        v443 = v21;
        switch(a2)
        {
          case 0:
            do
            {
              v29 = v442;
              do
              {
                v30 = *v9;
                if (*v9)
                {
                  if (v30 == 255)
                  {
                    v31 = 0;
                  }

                  else
                  {
                    v31 = PDM_21869(*v7, v30 ^ 0xFFu);
                  }

                  *v7 = v31;
                }

                v9 += v26;
                v7 += v26;
                --v29;
              }

              while (v29);
              v9 += v441;
              v7 += v440;
              --v464;
            }

            while (v464);
            return;
          case 1:
            v201 = v465 == 0 || v21;
            v202 = -v22;
            v203 = -(v439 * v23);
            v204 = 4 * v26;
            if (v201)
            {
              do
              {
                v205 = v442;
                do
                {
                  v206 = *v9;
                  if (*v9)
                  {
                    if (v206 == 255)
                    {
                      *v7 = *v14;
                    }

                    else
                    {
                      DMplusDM_21870(v7, *v14, v206, *v7, v206 ^ 0xFF);
                    }
                  }

                  v9 += v26;
                  v207 = &v14[v26];
                  if (v207 >= v25)
                  {
                    v208 = v202;
                  }

                  else
                  {
                    v208 = 0;
                  }

                  v14 = &v207[v208];
                  v7 = (v7 + v204);
                  --v205;
                }

                while (v205);
                v9 += v441;
                v7 += v440;
                v209 = v463;
                v210 = &v463[v439];
                if (v210 >= v438)
                {
                  v211 = v203;
                }

                else
                {
                  v211 = 0;
                }

                v212 = &v210[v211];
                v213 = v25 + 4 * v211 + 4 * v439;
                if (v437)
                {
                  v14 += v439;
                }

                else
                {
                  v25 = v213;
                  v209 = v212;
                  v14 = v212;
                }

                v45 = v464 == 1;
                v463 = v209;
                --v464;
              }

              while (!v45);
            }

            else
            {
              do
              {
                v214 = v442;
                do
                {
                  v215 = *v9;
                  if (*v9)
                  {
                    if (v215 == 255)
                    {
                      *v7 = *v14 | 0xFF;
                    }

                    else
                    {
                      DMplusDAM_21895(v7, *v7, v215 ^ 0xFF, *v14, 0xFFu, v215);
                    }
                  }

                  v9 += v26;
                  v216 = &v14[v26];
                  if (v216 >= v25)
                  {
                    v217 = v202;
                  }

                  else
                  {
                    v217 = 0;
                  }

                  v14 = &v216[v217];
                  v7 = (v7 + v204);
                  --v214;
                }

                while (v214);
                v9 += v441;
                v7 += v440;
                v218 = v463;
                v219 = &v463[v439];
                if (v219 >= v438)
                {
                  v220 = v203;
                }

                else
                {
                  v220 = 0;
                }

                v221 = &v219[v220];
                v222 = v25 + 4 * v220 + 4 * v439;
                if (v437)
                {
                  v14 += v439;
                }

                else
                {
                  v25 = v222;
                  v218 = v221;
                  v14 = v221;
                }

                v45 = v464 == 1;
                v463 = v218;
                --v464;
              }

              while (!v45);
            }

            return;
          case 2:
            v151 = -v22;
            v152 = -(v439 * v23);
            while (1)
            {
              v153 = v442;
              do
              {
                v154 = *v9;
                if (!*v9)
                {
                  goto LABEL_234;
                }

                if (v154 == 255)
                {
                  v155 = *v14;
                  if (!*v14)
                  {
                    goto LABEL_234;
                  }

                  if (*v14 == 255)
                  {
                    *v7 = v155;
                    goto LABEL_234;
                  }
                }

                else
                {
                  v156 = PDM_21869(*v14, v154);
                  if (!v156)
                  {
                    goto LABEL_234;
                  }

                  v155 = v156;
                }

                DplusDM_21871(v7, v155, *v7, ~v155);
LABEL_234:
                v9 += v26;
                v157 = &v14[v26];
                if (v157 >= v25)
                {
                  v158 = v151;
                }

                else
                {
                  v158 = 0;
                }

                v14 = &v157[v158];
                v7 += v26;
                --v153;
              }

              while (v153);
              v9 += v441;
              v7 += v440;
              v159 = v463;
              v160 = &v463[v439];
              if (v160 >= v438)
              {
                v161 = v152;
              }

              else
              {
                v161 = 0;
              }

              v162 = &v160[v161];
              v163 = v25 + 4 * v161 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v163;
                v159 = v162;
                v14 = v162;
              }

              v45 = v464 == 1;
              v463 = v159;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 3:
            v177 = -v22;
            v178 = -(v439 * v23);
            do
            {
              v179 = v442;
              do
              {
                v180 = *v9;
                if (*v9)
                {
                  if (v180 == 255)
                  {
                    if (v21)
                    {
                      v181 = *v14;
                    }

                    else
                    {
                      v181 = -1;
                    }

                    DAM_21894(v7, *v14, v181, *v7);
                  }

                  else
                  {
                    if (v21)
                    {
                      v182 = *v14;
                    }

                    else
                    {
                      v182 = -1;
                    }

                    DMplusDAM_21895(v7, *v7, v180 ^ 0xFF, *v14, v182, (*v7 * v180 + 128 + ((*v7 * v180 + 128) >> 8)) >> 8);
                  }
                }

                v9 += v26;
                v183 = &v14[v26];
                if (v183 >= v25)
                {
                  v184 = v177;
                }

                else
                {
                  v184 = 0;
                }

                v14 = &v183[v184];
                v7 += v26;
                --v179;
              }

              while (v179);
              v9 += v441;
              v7 += v440;
              v185 = v463;
              v186 = &v463[v439];
              if (v186 >= v438)
              {
                v187 = v178;
              }

              else
              {
                v187 = 0;
              }

              v188 = &v186[v187];
              v189 = v25 + 4 * v187 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v189;
                v185 = v188;
                v14 = v188;
              }

              v45 = v464 == 1;
              v463 = v185;
              --v464;
            }

            while (!v45);
            return;
          case 4:
            v87 = -v22;
            v466 = -(v439 * v23);
            do
            {
              v88 = v442;
              do
              {
                v89 = *v9;
                if (*v9)
                {
                  if (v89 == 255)
                  {
                    if (v21)
                    {
                      v90 = *v14;
                    }

                    else
                    {
                      v90 = -1;
                    }

                    DAM_21894(v7, *v14, v90, *v7 ^ 0xFF);
                  }

                  else
                  {
                    if (v21)
                    {
                      v91 = *v14;
                    }

                    else
                    {
                      v91 = -1;
                    }

                    DMplusDAM_21895(v7, *v7, v89 ^ 0xFF, *v14, v91, (~*v7 * v89 + 128 + ((~*v7 * v89 + 128) >> 8)) >> 8);
                  }
                }

                v9 += v26;
                v92 = &v14[v26];
                if (v92 >= v25)
                {
                  v93 = v87;
                }

                else
                {
                  v93 = 0;
                }

                v14 = &v92[v93];
                v7 += v26;
                --v88;
              }

              while (v88);
              v9 += v441;
              v7 += v440;
              v94 = v463;
              v95 = &v463[v439];
              v96 = v466;
              if (v95 < v438)
              {
                v96 = 0;
              }

              v97 = &v95[v96];
              v98 = v25 + 4 * v96 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v98;
                v94 = v97;
                v14 = v97;
              }

              v45 = v464 == 1;
              v463 = v94;
              --v464;
            }

            while (!v45);
            return;
          case 5:
            v262 = -v22;
            v263 = -(v439 * v23);
            do
            {
              v264 = v442;
              do
              {
                if (*v9)
                {
                  v265 = PDM_21869(*v14, *v9);
                  DMplusDM_21870(v7, v265, *v7, *v7, ~v265);
                }

                v9 += v26;
                v266 = &v14[v26];
                if (v266 >= v25)
                {
                  v267 = v262;
                }

                else
                {
                  v267 = 0;
                }

                v14 = &v266[v267];
                v7 += v26;
                --v264;
              }

              while (v264);
              v9 += v441;
              v7 += v440;
              v268 = v463;
              v269 = &v463[v439];
              if (v269 >= v438)
              {
                v270 = v263;
              }

              else
              {
                v270 = 0;
              }

              v271 = &v269[v270];
              v272 = v25 + 4 * v270 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v272;
                v268 = v271;
                v14 = v271;
              }

              v45 = v464 == 1;
              v463 = v268;
              --v464;
            }

            while (!v45);
            return;
          case 6:
            v299 = -v22;
            v469 = -(v439 * v23);
            do
            {
              v300 = v442;
              do
              {
                v301 = *v9;
                if (*v9 && *v7 != 0xFF)
                {
                  if (~*v7 == 255)
                  {
                    if (v21)
                    {
                      v302 = *v14;
                    }

                    else
                    {
                      v302 = -1;
                    }

                    DAM_21894(v7, *v14, v302, v301);
                  }

                  else
                  {
                    if (v21)
                    {
                      v303 = *v14;
                    }

                    else
                    {
                      v303 = -1;
                    }

                    DplusDAM_21893(v7, *v7, *v14, v303, (~*v7 * v301 + 128 + ((~*v7 * v301 + 128) >> 8)) >> 8);
                  }
                }

                v9 += v26;
                v304 = &v14[v26];
                if (v304 >= v25)
                {
                  v305 = v299;
                }

                else
                {
                  v305 = 0;
                }

                v14 = &v304[v305];
                v7 += v26;
                --v300;
              }

              while (v300);
              v9 += v441;
              v7 += v440;
              v306 = v463;
              v307 = &v463[v439];
              v308 = v469;
              if (v307 < v438)
              {
                v308 = 0;
              }

              v309 = &v307[v308];
              v310 = v25 + 4 * v308 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v310;
                v306 = v309;
                v14 = v309;
              }

              v45 = v464 == 1;
              v463 = v306;
              --v464;
            }

            while (!v45);
            return;
          case 7:
            v190 = -v22;
            v191 = -(v439 * v23);
            do
            {
              v192 = v442;
              do
              {
                v193 = *v9;
                if (*v9)
                {
                  if (v193 == 255)
                  {
                    *v7 = PDM_21869(*v7, *v14);
                  }

                  else
                  {
                    DMplusDM_21870(v7, *v7, (*v14 * v193 + 128 + ((*v14 * v193 + 128) >> 8)) >> 8, *v7, v193 ^ 0xFF);
                  }
                }

                v9 += v26;
                v194 = &v14[v26];
                if (v194 >= v25)
                {
                  v195 = v190;
                }

                else
                {
                  v195 = 0;
                }

                v14 = &v194[v195];
                v7 += v26;
                --v192;
              }

              while (v192);
              v9 += v441;
              v7 += v440;
              v196 = v463;
              v197 = &v463[v439];
              if (v197 >= v438)
              {
                v198 = v191;
              }

              else
              {
                v198 = 0;
              }

              v199 = &v197[v198];
              v200 = v25 + 4 * v198 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v200;
                v196 = v199;
                v14 = v199;
              }

              v45 = v464 == 1;
              v463 = v196;
              --v464;
            }

            while (!v45);
            return;
          case 8:
            v335 = -v22;
            v470 = -(v439 * v23);
            do
            {
              v336 = v442;
              do
              {
                v337 = *v9;
                if (*v9)
                {
                  if (v337 == 255)
                  {
                    v338 = *v14;
                  }

                  else
                  {
                    v338 = (*v14 * v337 + 128 + ((*v14 * v337 + 128) >> 8)) >> 8;
                  }

                  *v7 = PDM_21869(*v7, ~v338);
                }

                v9 += v26;
                v339 = &v14[v26];
                if (v339 >= v25)
                {
                  v340 = v335;
                }

                else
                {
                  v340 = 0;
                }

                v14 = &v339[v340];
                v7 += v26;
                --v336;
              }

              while (v336);
              v9 += v441;
              v7 += v440;
              v341 = v463;
              v342 = &v463[v439];
              v343 = v470;
              if (v342 < v438)
              {
                v343 = 0;
              }

              v344 = &v342[v343];
              v345 = v25 + 4 * v343 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v345;
                v341 = v344;
                v14 = v344;
              }

              v45 = v464 == 1;
              v463 = v341;
              --v464;
            }

            while (!v45);
            return;
          case 9:
            v114 = -v22;
            v468 = -(v439 * v23);
            do
            {
              v115 = v442;
              do
              {
                v116 = *v9;
                if (*v9)
                {
                  v117 = PDM_21869(*v14, *v9);
                  DMplusDM_21870(v7, v117, ~*v7, *v7, (v117 + ~v116));
                }

                v9 += v26;
                v118 = &v14[v26];
                if (v118 >= v25)
                {
                  v119 = v114;
                }

                else
                {
                  v119 = 0;
                }

                v14 = &v118[v119];
                v7 += v26;
                --v115;
              }

              while (v115);
              v9 += v441;
              v7 += v440;
              v120 = v463;
              v121 = &v463[v439];
              v122 = v468;
              if (v121 < v438)
              {
                v122 = 0;
              }

              v123 = &v121[v122];
              v124 = v25 + 4 * v122 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v124;
                v120 = v123;
                v14 = v123;
              }

              v45 = v464 == 1;
              v463 = v120;
              --v464;
            }

            while (!v45);
            return;
          case 10:
            v324 = -v22;
            v325 = -(v439 * v23);
            do
            {
              v326 = v442;
              do
              {
                if (*v9)
                {
                  v327 = PDM_21869(*v14, *v9);
                  DMplusDM_21870(v7, v327, ~*v7, *v7, ~v327);
                }

                v9 += v26;
                v328 = &v14[v26];
                if (v328 >= v25)
                {
                  v329 = v324;
                }

                else
                {
                  v329 = 0;
                }

                v14 = &v328[v329];
                v7 += v26;
                --v326;
              }

              while (v326);
              v9 += v441;
              v7 += v440;
              v330 = v463;
              v331 = &v463[v439];
              if (v331 >= v438)
              {
                v332 = v325;
              }

              else
              {
                v332 = 0;
              }

              v333 = &v331[v332];
              v334 = v25 + 4 * v332 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v334;
                v330 = v333;
                v14 = v333;
              }

              v45 = v464 == 1;
              v463 = v330;
              --v464;
            }

            while (!v45);
            return;
          case 11:
            v72 = -v22;
            v73 = -(v439 * v23);
            do
            {
              v74 = v442;
              do
              {
                v75 = *v9;
                if (*v9)
                {
                  v76 = PDM_21869(*v14, *v9);
                  if (v465)
                  {
                    v78 = *v7;
                  }

                  else
                  {
                    v78 = -1;
                  }

                  if (v443)
                  {
                    v79 = v76;
                  }

                  else
                  {
                    v79 = v75;
                  }

                  DAplusdDA_21872(v7, *v7, v78, v76, v79, v77);
                }

                v9 += v26;
                v80 = &v14[v26];
                if (v80 >= v25)
                {
                  v81 = v72;
                }

                else
                {
                  v81 = 0;
                }

                v14 = &v80[v81];
                v7 += v26;
                --v74;
              }

              while (v74);
              v9 += v441;
              v7 += v440;
              v82 = v463;
              v83 = &v463[v439];
              if (v83 >= v438)
              {
                v84 = v73;
              }

              else
              {
                v84 = 0;
              }

              v85 = &v83[v84];
              v86 = v25 + 4 * v84 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v86;
                v82 = v85;
                v14 = v85;
              }

              v45 = v464 == 1;
              v463 = v82;
              --v464;
            }

            while (!v45);
            return;
          case 12:
            v99 = -v22;
            v467 = -(v439 * v23);
            do
            {
              v100 = v442;
              do
              {
                v101 = *v9;
                if (*v9)
                {
                  v102 = PDM_21869(*v14, *v9);
                  v103 = *v7;
                  if (v443)
                  {
                    v104 = v102;
                  }

                  else
                  {
                    v104 = v101;
                  }

                  v105 = ((v103 >> 8) & 0xFF00FF) + ((v102 >> 8) & 0xFF00FF);
                  v106 = (v102 & 0xFF0000 | v104) + (v103 & 0xFF00FF);
                  *v7 = (v105 << 8) & 0xFF00FF00 | v106 & 0xFF00FF | (15 * ((v106 >> 8) & 0x10001 | v105 & 0x1000100)) | (240 * ((v106 >> 8) & 0x10001 | v105 & 0x1000100));
                }

                v9 += v26;
                v107 = &v14[v26];
                if (v107 >= v25)
                {
                  v108 = v99;
                }

                else
                {
                  v108 = 0;
                }

                v14 = &v107[v108];
                v7 += v26;
                --v100;
              }

              while (v100);
              v9 += v441;
              v7 += v440;
              v109 = v463;
              v110 = &v463[v439];
              v111 = v467;
              if (v110 < v438)
              {
                v111 = 0;
              }

              v112 = &v110[v111];
              v113 = v25 + 4 * v111 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v113;
                v109 = v112;
                v14 = v112;
              }

              v45 = v464 == 1;
              v463 = v109;
              --v464;
            }

            while (!v45);
            return;
          case 13:
            v286 = -v22;
            v454 = -(v439 * v23);
            while (1)
            {
              v287 = v442;
              do
              {
                v288 = *v9;
                if (!*v9)
                {
                  goto LABEL_471;
                }

                v289 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v288 = v289;
                  if (!v289)
                  {
                    goto LABEL_471;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v290) = -1;
LABEL_469:
                  v291 = PDAmultiplyPDA_21873(*v7, v290, v289, v288);
                  goto LABEL_470;
                }

                v290 = *v7;
                if (*v7)
                {
                  goto LABEL_469;
                }

                v291 = v289 & 0xFFFFFF00 | v288;
LABEL_470:
                *v7 = v291;
LABEL_471:
                v9 += v26;
                v292 = &v14[v26];
                if (v292 >= v25)
                {
                  v293 = v286;
                }

                else
                {
                  v293 = 0;
                }

                v14 = &v292[v293];
                v7 += v26;
                --v287;
              }

              while (v287);
              v9 += v441;
              v7 += v440;
              v294 = v463;
              v295 = &v463[v439];
              v296 = v454;
              if (v295 < v438)
              {
                v296 = 0;
              }

              v297 = &v295[v296];
              v298 = v25 + 4 * v296 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v298;
                v294 = v297;
                v14 = v297;
              }

              v45 = v464 == 1;
              v463 = v294;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 14:
            v59 = -v22;
            v446 = -(v439 * v23);
            while (1)
            {
              v60 = v442;
              do
              {
                v61 = *v9;
                if (!*v9)
                {
                  goto LABEL_84;
                }

                v62 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v61 = v62;
                  if (!v62)
                  {
                    goto LABEL_84;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v63) = -1;
LABEL_82:
                  v64 = PDAscreenPDA_21874(*v7, v63, v62, v61);
                  goto LABEL_83;
                }

                v63 = *v7;
                if (*v7)
                {
                  goto LABEL_82;
                }

                v64 = v62 & 0xFFFFFF00 | v61;
LABEL_83:
                *v7 = v64;
LABEL_84:
                v9 += v26;
                v65 = &v14[v26];
                if (v65 >= v25)
                {
                  v66 = v59;
                }

                else
                {
                  v66 = 0;
                }

                v14 = &v65[v66];
                v7 += v26;
                --v60;
              }

              while (v60);
              v9 += v441;
              v7 += v440;
              v67 = v463;
              v68 = &v463[v439];
              v69 = v446;
              if (v68 < v438)
              {
                v69 = 0;
              }

              v70 = &v68[v69];
              v71 = v25 + 4 * v69 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v71;
                v67 = v70;
                v14 = v70;
              }

              v45 = v464 == 1;
              v463 = v67;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 15:
            v164 = -v22;
            v449 = -(v439 * v23);
            while (1)
            {
              v165 = v442;
              do
              {
                v166 = *v9;
                if (!*v9)
                {
                  goto LABEL_258;
                }

                v167 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v166 = v167;
                  if (!v167)
                  {
                    goto LABEL_258;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v168) = -1;
LABEL_256:
                  v169 = PDAoverlayPDA_21875(*v7, v168, v167, v166);
                  goto LABEL_257;
                }

                v168 = *v7;
                if (*v7)
                {
                  goto LABEL_256;
                }

                v169 = v167 & 0xFFFFFF00 | v166;
LABEL_257:
                *v7 = v169;
LABEL_258:
                v9 += v26;
                v170 = &v14[v26];
                if (v170 >= v25)
                {
                  v171 = v164;
                }

                else
                {
                  v171 = 0;
                }

                v14 = &v170[v171];
                v7 += v26;
                --v165;
              }

              while (v165);
              v9 += v441;
              v7 += v440;
              v172 = v463;
              v173 = &v463[v439];
              v174 = v449;
              if (v173 < v438)
              {
                v174 = 0;
              }

              v175 = &v173[v174];
              v176 = v25 + 4 * v174 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v176;
                v172 = v175;
                v14 = v175;
              }

              v45 = v464 == 1;
              v463 = v172;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 16:
            v46 = -v22;
            v445 = -(v439 * v23);
            while (1)
            {
              v47 = v442;
              do
              {
                v48 = *v9;
                if (!*v9)
                {
                  goto LABEL_61;
                }

                v49 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v48 = v49;
                  if (!v49)
                  {
                    goto LABEL_61;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v50) = -1;
LABEL_59:
                  v51 = PDAdarkenPDA_21877(*v7, v50, v49, v48);
                  goto LABEL_60;
                }

                v50 = *v7;
                if (*v7)
                {
                  goto LABEL_59;
                }

                v51 = v49 & 0xFFFFFF00 | v48;
LABEL_60:
                *v7 = v51;
LABEL_61:
                v9 += v26;
                v52 = &v14[v26];
                if (v52 >= v25)
                {
                  v53 = v46;
                }

                else
                {
                  v53 = 0;
                }

                v14 = &v52[v53];
                v7 += v26;
                --v47;
              }

              while (v47);
              v9 += v441;
              v7 += v440;
              v54 = v463;
              v55 = &v463[v439];
              v56 = v445;
              if (v55 < v438)
              {
                v56 = 0;
              }

              v57 = &v55[v56];
              v58 = v25 + 4 * v56 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v58;
                v54 = v57;
                v14 = v57;
              }

              v45 = v464 == 1;
              v463 = v54;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 17:
            v236 = -v22;
            v451 = -(v439 * v23);
            while (1)
            {
              v237 = v442;
              do
              {
                v238 = *v9;
                if (!*v9)
                {
                  goto LABEL_385;
                }

                v239 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v238 = v239;
                  if (!v239)
                  {
                    goto LABEL_385;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v240) = -1;
LABEL_383:
                  v241 = PDAlightenPDA_21876(*v7, v240, v239, v238);
                  goto LABEL_384;
                }

                v240 = *v7;
                if (*v7)
                {
                  goto LABEL_383;
                }

                v241 = v239 & 0xFFFFFF00 | v238;
LABEL_384:
                *v7 = v241;
LABEL_385:
                v9 += v26;
                v242 = &v14[v26];
                if (v242 >= v25)
                {
                  v243 = v236;
                }

                else
                {
                  v243 = 0;
                }

                v14 = &v242[v243];
                v7 += v26;
                --v237;
              }

              while (v237);
              v9 += v441;
              v7 += v440;
              v244 = v463;
              v245 = &v463[v439];
              v246 = v451;
              if (v245 < v438)
              {
                v246 = 0;
              }

              v247 = &v245[v246];
              v248 = v25 + 4 * v246 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v248;
                v244 = v247;
                v14 = v247;
              }

              v45 = v464 == 1;
              v463 = v244;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 18:
            v311 = -v22;
            v455 = -(v439 * v23);
            while (1)
            {
              v312 = v442;
              do
              {
                v313 = *v9;
                if (!*v9)
                {
                  goto LABEL_519;
                }

                v314 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v313 = v314;
                  if (!v314)
                  {
                    goto LABEL_519;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v315) = -1;
LABEL_517:
                  v316 = PDAcolordodgePDA_21878(*v7, v315, v314, v313);
                  goto LABEL_518;
                }

                v315 = *v7;
                if (*v7)
                {
                  goto LABEL_517;
                }

                v316 = v314 & 0xFFFFFF00 | v313;
LABEL_518:
                *v7 = v316;
LABEL_519:
                v9 += v26;
                v317 = &v14[v26];
                if (v317 >= v25)
                {
                  v318 = v311;
                }

                else
                {
                  v318 = 0;
                }

                v14 = &v317[v318];
                v7 += v26;
                --v312;
              }

              while (v312);
              v9 += v441;
              v7 += v440;
              v319 = v463;
              v320 = &v463[v439];
              v321 = v455;
              if (v320 < v438)
              {
                v321 = 0;
              }

              v322 = &v320[v321];
              v323 = v25 + 4 * v321 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v323;
                v319 = v322;
                v14 = v322;
              }

              v45 = v464 == 1;
              v463 = v319;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 19:
            v372 = -v22;
            v458 = -(v439 * v23);
            while (1)
            {
              v373 = v442;
              do
              {
                v374 = *v9;
                if (!*v9)
                {
                  goto LABEL_624;
                }

                v375 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v374 = v375;
                  if (!v375)
                  {
                    goto LABEL_624;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v376) = -1;
LABEL_622:
                  v377 = PDAcolorburnPDA_21879(*v7, v376, v375, v374);
                  goto LABEL_623;
                }

                v376 = *v7;
                if (*v7)
                {
                  goto LABEL_622;
                }

                v377 = v375 & 0xFFFFFF00 | v374;
LABEL_623:
                *v7 = v377;
LABEL_624:
                v9 += v26;
                v378 = &v14[v26];
                if (v378 >= v25)
                {
                  v379 = v372;
                }

                else
                {
                  v379 = 0;
                }

                v14 = &v378[v379];
                v7 += v26;
                --v373;
              }

              while (v373);
              v9 += v441;
              v7 += v440;
              v380 = v463;
              v381 = &v463[v439];
              v382 = v458;
              if (v381 < v438)
              {
                v382 = 0;
              }

              v383 = &v381[v382];
              v384 = v25 + 4 * v382 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v384;
                v380 = v383;
                v14 = v383;
              }

              v45 = v464 == 1;
              v463 = v380;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 20:
            v249 = -v22;
            v452 = -(v439 * v23);
            while (1)
            {
              v250 = v442;
              do
              {
                v251 = *v9;
                if (!*v9)
                {
                  goto LABEL_408;
                }

                v252 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v251 = v252;
                  if (!v252)
                  {
                    goto LABEL_408;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v253) = -1;
LABEL_406:
                  v254 = PDAsoftlightPDA_21881(*v7, v253, v252, v251);
                  goto LABEL_407;
                }

                v253 = *v7;
                if (*v7)
                {
                  goto LABEL_406;
                }

                v254 = v252 & 0xFFFFFF00 | v251;
LABEL_407:
                *v7 = v254;
LABEL_408:
                v9 += v26;
                v255 = &v14[v26];
                if (v255 >= v25)
                {
                  v256 = v249;
                }

                else
                {
                  v256 = 0;
                }

                v14 = &v255[v256];
                v7 += v26;
                --v250;
              }

              while (v250);
              v9 += v441;
              v7 += v440;
              v257 = v463;
              v258 = &v463[v439];
              v259 = v452;
              if (v258 < v438)
              {
                v259 = 0;
              }

              v260 = &v258[v259];
              v261 = v25 + 4 * v259 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v261;
                v257 = v260;
                v14 = v260;
              }

              v45 = v464 == 1;
              v463 = v257;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 21:
            v273 = -v22;
            v453 = -(v439 * v23);
            while (1)
            {
              v274 = v442;
              do
              {
                v275 = *v9;
                if (!*v9)
                {
                  goto LABEL_448;
                }

                v276 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v275 = v276;
                  if (!v276)
                  {
                    goto LABEL_448;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v277) = -1;
LABEL_446:
                  v278 = PDAhardlightPDA_21880(*v7, v277, v276, v275);
                  goto LABEL_447;
                }

                v277 = *v7;
                if (*v7)
                {
                  goto LABEL_446;
                }

                v278 = v276 & 0xFFFFFF00 | v275;
LABEL_447:
                *v7 = v278;
LABEL_448:
                v9 += v26;
                v279 = &v14[v26];
                if (v279 >= v25)
                {
                  v280 = v273;
                }

                else
                {
                  v280 = 0;
                }

                v14 = &v279[v280];
                v7 += v26;
                --v274;
              }

              while (v274);
              v9 += v441;
              v7 += v440;
              v281 = v463;
              v282 = &v463[v439];
              v283 = v453;
              if (v282 < v438)
              {
                v283 = 0;
              }

              v284 = &v282[v283];
              v285 = v25 + 4 * v283 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v285;
                v281 = v284;
                v14 = v284;
              }

              v45 = v464 == 1;
              v463 = v281;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 22:
            v359 = -v22;
            v457 = -(v439 * v23);
            while (1)
            {
              v360 = v442;
              do
              {
                v361 = *v9;
                if (!*v9)
                {
                  goto LABEL_601;
                }

                v362 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v361 = v362;
                  if (!v362)
                  {
                    goto LABEL_601;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v363) = -1;
LABEL_599:
                  v364 = PDAdifferencePDA_21882(*v7, v363, v362, v361);
                  goto LABEL_600;
                }

                v363 = *v7;
                if (*v7)
                {
                  goto LABEL_599;
                }

                v364 = v362 & 0xFFFFFF00 | v361;
LABEL_600:
                *v7 = v364;
LABEL_601:
                v9 += v26;
                v365 = &v14[v26];
                if (v365 >= v25)
                {
                  v366 = v359;
                }

                else
                {
                  v366 = 0;
                }

                v14 = &v365[v366];
                v7 += v26;
                --v360;
              }

              while (v360);
              v9 += v441;
              v7 += v440;
              v367 = v463;
              v368 = &v463[v439];
              v369 = v457;
              if (v368 < v438)
              {
                v369 = 0;
              }

              v370 = &v368[v369];
              v371 = v25 + 4 * v369 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v371;
                v367 = v370;
                v14 = v370;
              }

              v45 = v464 == 1;
              v463 = v367;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 23:
            v385 = -v22;
            v459 = -(v439 * v23);
            while (1)
            {
              v386 = v442;
              do
              {
                v387 = *v9;
                if (!*v9)
                {
                  goto LABEL_647;
                }

                v388 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v387 = v388;
                  if (!v388)
                  {
                    goto LABEL_647;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v389) = -1;
LABEL_645:
                  v390 = PDAexclusionPDA_21883(*v7, v389, v388, v387);
                  goto LABEL_646;
                }

                v389 = *v7;
                if (*v7)
                {
                  goto LABEL_645;
                }

                v390 = v388 & 0xFFFFFF00 | v387;
LABEL_646:
                *v7 = v390;
LABEL_647:
                v9 += v26;
                v391 = &v14[v26];
                if (v391 >= v25)
                {
                  v392 = v385;
                }

                else
                {
                  v392 = 0;
                }

                v14 = &v391[v392];
                v7 += v26;
                --v386;
              }

              while (v386);
              v9 += v441;
              v7 += v440;
              v393 = v463;
              v394 = &v463[v439];
              v395 = v459;
              if (v394 < v438)
              {
                v395 = 0;
              }

              v396 = &v394[v395];
              v397 = v25 + 4 * v395 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v397;
                v393 = v396;
                v14 = v396;
              }

              v45 = v464 == 1;
              v463 = v393;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 24:
            v138 = -v22;
            v448 = -(v439 * v23);
            while (1)
            {
              v139 = v442;
              do
              {
                v140 = *v9;
                if (!*v9)
                {
                  goto LABEL_212;
                }

                v141 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v140 = v141;
                  if (!v141)
                  {
                    goto LABEL_212;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v142) = -1;
LABEL_210:
                  v143 = PDAhuePDA_21884(*v7, v142, v141, v140);
                  goto LABEL_211;
                }

                v142 = *v7;
                if (*v7)
                {
                  goto LABEL_210;
                }

                v143 = v141 & 0xFFFFFF00 | v140;
LABEL_211:
                *v7 = v143;
LABEL_212:
                v9 += v26;
                v144 = &v14[v26];
                if (v144 >= v25)
                {
                  v145 = v138;
                }

                else
                {
                  v145 = 0;
                }

                v14 = &v144[v145];
                v7 += v26;
                --v139;
              }

              while (v139);
              v9 += v441;
              v7 += v440;
              v146 = v463;
              v147 = &v463[v439];
              v148 = v448;
              if (v147 < v438)
              {
                v148 = 0;
              }

              v149 = &v147[v148];
              v150 = v25 + 4 * v148 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v150;
                v146 = v149;
                v14 = v149;
              }

              v45 = v464 == 1;
              v463 = v146;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 25:
            v125 = -v22;
            v447 = -(v439 * v23);
            while (1)
            {
              v126 = v442;
              do
              {
                v127 = *v9;
                if (!*v9)
                {
                  goto LABEL_189;
                }

                v128 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v127 = v128;
                  if (!v128)
                  {
                    goto LABEL_189;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v129) = -1;
LABEL_187:
                  v130 = PDAsaturationPDA_21885(*v7, v129, v128, v127);
                  goto LABEL_188;
                }

                v129 = *v7;
                if (*v7)
                {
                  goto LABEL_187;
                }

                v130 = v128 & 0xFFFFFF00 | v127;
LABEL_188:
                *v7 = v130;
LABEL_189:
                v9 += v26;
                v131 = &v14[v26];
                if (v131 >= v25)
                {
                  v132 = v125;
                }

                else
                {
                  v132 = 0;
                }

                v14 = &v131[v132];
                v7 += v26;
                --v126;
              }

              while (v126);
              v9 += v441;
              v7 += v440;
              v133 = v463;
              v134 = &v463[v439];
              v135 = v447;
              if (v134 < v438)
              {
                v135 = 0;
              }

              v136 = &v134[v135];
              v137 = v25 + 4 * v135 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v137;
                v133 = v136;
                v14 = v136;
              }

              v45 = v464 == 1;
              v463 = v133;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 26:
            v424 = -v22;
            v462 = -(v439 * v23);
            while (1)
            {
              v425 = v442;
              do
              {
                v426 = *v9;
                if (!*v9)
                {
                  goto LABEL_716;
                }

                v427 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v426 = v427;
                  if (!v427)
                  {
                    goto LABEL_716;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v428) = -1;
LABEL_714:
                  v429 = PDAluminosityPDA_21886(v427, v426, *v7, v428);
                  goto LABEL_715;
                }

                v428 = *v7;
                if (*v7)
                {
                  goto LABEL_714;
                }

                v429 = v427 & 0xFFFFFF00 | v426;
LABEL_715:
                *v7 = v429;
LABEL_716:
                v9 += v26;
                v430 = &v14[v26];
                if (v430 >= v25)
                {
                  v431 = v424;
                }

                else
                {
                  v431 = 0;
                }

                v14 = &v430[v431];
                v7 += v26;
                --v425;
              }

              while (v425);
              v9 += v441;
              v7 += v440;
              v432 = v463;
              v433 = &v463[v439];
              v434 = v462;
              if (v433 < v438)
              {
                v434 = 0;
              }

              v435 = &v433[v434];
              v436 = v25 + 4 * v434 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v436;
                v432 = v435;
                v14 = v435;
              }

              v45 = v464 == 1;
              v463 = v432;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 27:
            v32 = -v22;
            v444 = -(v439 * v23);
            while (1)
            {
              v33 = v442;
              do
              {
                v34 = *v9;
                if (!*v9)
                {
                  goto LABEL_38;
                }

                v35 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v34 = v35;
                  if (!v35)
                  {
                    goto LABEL_38;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v36) = -1;
LABEL_36:
                  v37 = PDAluminosityPDA_21886(*v7, v36, v35, v34);
                  goto LABEL_37;
                }

                v36 = *v7;
                if (*v7)
                {
                  goto LABEL_36;
                }

                v37 = v35 & 0xFFFFFF00 | v34;
LABEL_37:
                *v7 = v37;
LABEL_38:
                v9 += v26;
                v38 = &v14[v26];
                if (v38 >= v25)
                {
                  v39 = v32;
                }

                else
                {
                  v39 = 0;
                }

                v14 = &v38[v39];
                v7 += v26;
                --v33;
              }

              while (v33);
              v9 += v441;
              v7 += v440;
              v40 = v463;
              v41 = &v463[v439];
              v42 = v444;
              if (v41 < v438)
              {
                v42 = 0;
              }

              v43 = &v41[v42];
              v44 = v25 + 4 * v42 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v44;
                v40 = v43;
                v14 = v43;
              }

              v45 = v464 == 1;
              v463 = v40;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 28:
            v398 = -v22;
            v460 = -(v439 * v23);
            while (1)
            {
              v399 = v442;
              do
              {
                v400 = *v9;
                if (!*v9)
                {
                  goto LABEL_670;
                }

                v401 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v400 = v401;
                  if (!v401)
                  {
                    goto LABEL_670;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v402) = -1;
LABEL_668:
                  v403 = PDAtranspose_huePDA_21887(*v7, v402, v401, v400);
                  goto LABEL_669;
                }

                v402 = *v7;
                if (*v7)
                {
                  goto LABEL_668;
                }

                v403 = v401 & 0xFFFFFF00 | v400;
LABEL_669:
                *v7 = v403;
LABEL_670:
                v9 += v26;
                v404 = &v14[v26];
                if (v404 >= v25)
                {
                  v405 = v398;
                }

                else
                {
                  v405 = 0;
                }

                v14 = &v404[v405];
                v7 += v26;
                --v399;
              }

              while (v399);
              v9 += v441;
              v7 += v440;
              v406 = v463;
              v407 = &v463[v439];
              v408 = v460;
              if (v407 < v438)
              {
                v408 = 0;
              }

              v409 = &v407[v408];
              v410 = v25 + 4 * v408 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v410;
                v406 = v409;
                v14 = v409;
              }

              v45 = v464 == 1;
              v463 = v406;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 29:
            v411 = -v22;
            v461 = -(v439 * v23);
            while (1)
            {
              v412 = v442;
              do
              {
                v413 = *v9;
                if (!*v9)
                {
                  goto LABEL_693;
                }

                v414 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v413 = v414;
                  if (!v414)
                  {
                    goto LABEL_693;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v415) = -1;
LABEL_691:
                  v416 = PDAtranspose_saturationPDA_21888(*v7, v415, v414, v413);
                  goto LABEL_692;
                }

                v415 = *v7;
                if (*v7)
                {
                  goto LABEL_691;
                }

                v416 = v414 & 0xFFFFFF00 | v413;
LABEL_692:
                *v7 = v416;
LABEL_693:
                v9 += v26;
                v417 = &v14[v26];
                if (v417 >= v25)
                {
                  v418 = v411;
                }

                else
                {
                  v418 = 0;
                }

                v14 = &v417[v418];
                v7 += v26;
                --v412;
              }

              while (v412);
              v9 += v441;
              v7 += v440;
              v419 = v463;
              v420 = &v463[v439];
              v421 = v461;
              if (v420 < v438)
              {
                v421 = 0;
              }

              v422 = &v420[v421];
              v423 = v25 + 4 * v421 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v423;
                v419 = v422;
                v14 = v422;
              }

              v45 = v464 == 1;
              v463 = v419;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 30:
            v346 = -v22;
            v456 = -(v439 * v23);
            while (1)
            {
              v347 = v442;
              do
              {
                v348 = *v9;
                if (!*v9)
                {
                  goto LABEL_578;
                }

                v349 = PDM_21869(*v14, *v9);
                if (v21)
                {
                  v348 = v349;
                  if (!v349)
                  {
                    goto LABEL_578;
                  }
                }

                if (!v465)
                {
                  LOBYTE(v350) = -1;
LABEL_576:
                  v351 = PDAtranspose_luminosityPDA_21889(v349, v348, *v7, v350);
                  goto LABEL_577;
                }

                v350 = *v7;
                if (*v7)
                {
                  goto LABEL_576;
                }

                v351 = v349 & 0xFFFFFF00 | v348;
LABEL_577:
                *v7 = v351;
LABEL_578:
                v9 += v26;
                v352 = &v14[v26];
                if (v352 >= v25)
                {
                  v353 = v346;
                }

                else
                {
                  v353 = 0;
                }

                v14 = &v352[v353];
                v7 += v26;
                --v347;
              }

              while (v347);
              v9 += v441;
              v7 += v440;
              v354 = v463;
              v355 = &v463[v439];
              v356 = v456;
              if (v355 < v438)
              {
                v356 = 0;
              }

              v357 = &v355[v356];
              v358 = v25 + 4 * v356 + 4 * v439;
              if (v437)
              {
                v14 += v439;
              }

              else
              {
                v25 = v358;
                v354 = v357;
                v14 = v357;
              }

              v45 = v464 == 1;
              v463 = v354;
              --v464;
              if (v45)
              {
                return;
              }
            }

          case 31:
            v223 = -v22;
            v450 = -(v439 * v23);
            break;
          default:
            return;
        }

LABEL_352:
        v224 = v442;
        while (1)
        {
          v225 = *v9;
          if (*v9)
          {
            v226 = PDM_21869(*v14, *v9);
            if (!v21)
            {
              break;
            }

            v225 = v226;
            if (v226)
            {
              break;
            }
          }

LABEL_362:
          v9 += v26;
          v229 = &v14[v26];
          if (v229 >= v25)
          {
            v230 = v223;
          }

          else
          {
            v230 = 0;
          }

          v14 = &v229[v230];
          v7 += v26;
          if (!--v224)
          {
            v9 += v441;
            v7 += v440;
            v231 = v463;
            v232 = &v463[v439];
            v233 = v450;
            if (v232 < v438)
            {
              v233 = 0;
            }

            v234 = &v232[v233];
            v235 = v25 + 4 * v233 + 4 * v439;
            if (v437)
            {
              v14 += v439;
            }

            else
            {
              v25 = v235;
              v231 = v234;
              v14 = v234;
            }

            v45 = v464 == 1;
            v463 = v231;
            --v464;
            if (v45)
            {
              return;
            }

            goto LABEL_352;
          }
        }

        if (v465)
        {
          v227 = *v7;
          if (!*v7)
          {
            v228 = v226 & 0xFFFFFF00 | v225;
LABEL_361:
            *v7 = v228;
            goto LABEL_362;
          }
        }

        else
        {
          LOBYTE(v227) = -1;
        }

        v228 = PDAtranspose_luminosityPDA_21889(*v7, v227, v226, v225);
        goto LABEL_361;
      }

      v14 = 0;
      v25 = 0;
      v26 = 1;
      v27 = *(a1 + 68);
LABEL_15:
      v463 = 0;
      v438 = 0;
      v439 = v20 - v3;
      v22 = v13;
      v23 = v27;
      v437 = 1;
      goto LABEL_16;
    }

    v13 = v12 >> 2;
    v14 = (v5 + 4 * (v12 >> 2) * v11 + 4 * v10);
    if (v12 >> 2 != v6)
    {
      v18 = 1;
LABEL_14:
      v27 = 0;
      v3 = v18 * v442;
      v21 = v4 != 0;
      v441 = v8 - v3;
      v440 = v6 - v3;
      v26 = v18;
      v25 = -1;
      v20 = v13;
      goto LABEL_15;
    }

    v15 = v7 - v14;
    if (v15 >= 1)
    {
      if (v15 <= v442)
      {
        v28 = v442 - 1;
        v7 += v28;
        v14 += v28;
        v9 += v28;
        v18 = -1;
        goto LABEL_13;
      }

      v16 = *(a1 + 8) - 1;
      v17 = &v14[v6 * v16];
      if (v7 <= &v17[v442 - 1])
      {
        v7 += v6 * v16;
        v13 = -v6;
        v9 += v8 * v16;
        v8 = -v8;
        v18 = 1;
        v14 = v17;
        v6 = -v6;
        goto LABEL_14;
      }
    }

    v18 = 1;
LABEL_13:
    v13 = *(a1 + 28) >> 2;
    goto LABEL_14;
  }
}

unsigned int *DMplusDAM_21895(unsigned int *result, unsigned int a2, int a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = (BYTE1(a4) * a6) + (BYTE1(a2) * a3);
  v7 = ((((a4 >> 8) & 0xFF00FF) * a6) >> 16) + ((((a2 >> 8) & 0xFF00FF) * a3) >> 16);
  if (v6 >= 0xFE79)
  {
    v6 = 65145;
  }

  if (v7 >= 0xFE79)
  {
    v7 = 65145;
  }

  v8 = (a2 & 0xFF00FF) * a3;
  v9 = (a5 * a6) + v8;
  v10 = (((a4 & 0xFF0000 | a5) * a6) >> 16) + HIWORD(v8);
  if (v9 >= 0xFE79)
  {
    v11 = 65145;
  }

  else
  {
    v11 = v9;
  }

  if (v10 >= 0xFE79)
  {
    v12 = 65145;
  }

  else
  {
    v12 = v10;
  }

  *result = ((((((v11 | (v12 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v11 | (v12 << 16)) + 8388736) >> 8) & 0xFF00FF | (((((v6 | (v7 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v6 | (v7 << 16)) + 8388736) & 0xFF00FF00;
  return result;
}

uint64_t PIXELCONSTANT_21896(float *a1, int a2, float *a3, float a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5;
  if (v5 >= a4)
  {
    v6 = a4;
    if (v4 > a4)
    {
      v6 = *a1;
    }
  }

  v7 = a1[3];
  v8 = v6 * a1[2];
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (*a3 >= v4)
    {
      v4 = *a3;
    }

    if (*a3 > v5)
    {
      v4 = a1[1];
    }

    v10 = (v7 + (v4 * v8));
    v11 = v10;
    v12 = v10;
  }

  else
  {
    if (v9 == 4)
    {
      v19 = a3[4];
      v20 = *a3;
      v21 = a3[1];
      v22 = a3[2];
      if (v19 < v4)
      {
        v23 = *a1;
      }

      else
      {
        v23 = a3[4];
      }

      if (v19 <= v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = a1[1];
      }

      if (v20 < v4)
      {
        v25 = *a1;
      }

      else
      {
        v25 = *a3;
      }

      if (v20 <= v5)
      {
        v26 = v25;
      }

      else
      {
        v26 = a1[1];
      }

      if (v21 < v4)
      {
        v27 = *a1;
      }

      else
      {
        v27 = a3[1];
      }

      if (v21 <= v5)
      {
        v28 = v27;
      }

      else
      {
        v28 = a1[1];
      }

      if (v22 < v4)
      {
        v29 = *a1;
      }

      else
      {
        v29 = a3[2];
      }

      if (v22 <= v5)
      {
        v30 = v29;
      }

      else
      {
        v30 = a1[1];
      }

      v31 = (v5 - v26) - v24;
      v32 = (v5 - v28) - v24;
      v33 = (v5 - v30) - v24;
      v34 = v7 + (v31 * v8);
      if (v31 < v4)
      {
        v34 = *a1;
      }

      v35 = v7 + (v32 * v8);
      if (v32 < v4)
      {
        v35 = *a1;
      }

      if (v33 >= v4)
      {
        v4 = v7 + (v33 * v8);
      }

      v10 = v34;
      v11 = v35;
      goto LABEL_58;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v9 == 3)
    {
      v13 = a3[1];
      v14 = a3[2];
      if (*a3 < v4)
      {
        v15 = *a1;
      }

      else
      {
        v15 = *a3;
      }

      if (*a3 <= v5)
      {
        v16 = v15;
      }

      else
      {
        v16 = a1[1];
      }

      if (v13 < v4)
      {
        v17 = *a1;
      }

      else
      {
        v17 = a3[1];
      }

      if (v13 <= v5)
      {
        v18 = v17;
      }

      else
      {
        v18 = a1[1];
      }

      if (v14 >= v4)
      {
        v4 = a3[2];
      }

      if (v14 > v5)
      {
        v4 = a1[1];
      }

      v10 = (v7 + (v16 * v8));
      v11 = (v7 + (v18 * v8));
      v4 = v7 + (v4 * v8);
LABEL_58:
      v12 = v4;
    }
  }

  return (v7 + v8) | (v10 << 24) | (v11 << 16) | (v12 << 8);
}

uint64_t ARGB32_shade(uint64_t a1, __n128 a2)
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

  if (v11 >= 24 && *v7 == 134755144)
  {
    v11 += 4;
  }

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = ARGB32_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = ARGB32_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = ARGB32_shade_axial_RGB;
    }

    else
    {
      v14 = ARGB32_shade_custom_RGB;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 2, 3, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 480)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_30:
      _blt_shade_samples_16(v16, 2, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_32;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x24046928uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_30;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_32:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  rgba32_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void ARGB32_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v12 * (*(*(a1 + 272) + 4) * a2)));
  v14 = a1 + 368;
  v15 = *(a1 + 368);
  v16 = (a3 >> 4) & 0xF0;
  v17 = v15 + v16;
  if (v15)
  {
    v18 = v15 + v16;
  }

  else
  {
    v18 = a1 + 368;
  }

  if (v15)
  {
    v19 = 15;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 320);
  v26 = *(a1 + 324);
  v29 = a1 + 144;
  v27 = *(a1 + 144);
  v28 = *(v29 + 8);
  v30 = *(a1 + 376);
  v31 = *(a1 + 360);
  if (v12 != 0.0)
  {
    if (v15)
    {
      v37 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    while (1)
    {
      v38 = v25;
      if (v13 >= v23)
      {
        v38 = v26;
        if (v13 <= v24)
        {
          v38 = (v22 * (v13 - v21));
        }
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

      v39 = v30;
      if (v30)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v37) = (v37 + 1) & v19;
      v13 = v12 + v13;
      v28 += 4;
      *v27 = v39;
      v27 = (v27 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v39 = (v31 + 2 * (4 * v38));
LABEL_38:
    v40 = *(v18 + v37);
    *v28 = (v40 + *v39) & 0xFF00 | (((v40 + v39[1]) >> 8) << 16) & 0xFFFF00 | (((v40 + v39[2]) >> 8) << 24) | ((v40 + v39[3]) >> 8);
    LOBYTE(v39) = -1;
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (v15)
  {
    LODWORD(v33) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v15)
  {
    LODWORD(v34) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v15)
  {
    v35 = 15;
  }

  else
  {
    v35 = 0;
  }

  if (v13 >= v23)
  {
    v25 = v26;
    if (v13 <= v24)
    {
      v25 = (v22 * (v13 - v21));
    }
  }

  if ((v25 & 0x80000000) == 0 || v30)
  {
    v41 = (v31 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v30 = v41;
    }

    v42 = *v30;
    v43 = v30[1];
    v44 = v30[2];
    v45 = v30[3];
    if (v15)
    {
      v46 = vdup_n_s32(v42);
      v47 = vdup_n_s32(v43);
      v48 = a4 + 4;
      v49 = vdup_n_s32(v44);
      v50 = vdup_n_s32(v45);
      do
      {
        v51 = (v32 + v34);
        v34 = (v34 + 1) & v35;
        a12.i8[0] = *v51;
        a12.i8[4] = *(v32 + v33);
        v52 = vand_s8(a12, 0xFF000000FFLL);
        v53 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v47, v52), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v46, v52), 0xFF000000FF00)), vorr_s8((*&vshl_n_s32(vadd_s32(v49, v52), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v50, v52), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
        *v28 = v53;
        v33 = (v33 + 1) & v35;
        v53.i8[0] = *(v32 + v34);
        v53.i8[4] = *(v32 + v33);
        v54 = vand_s8(v53, 0xFF000000FFLL);
        a12 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v47, v54), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v46, v54), 0xFF000000FF00)), vorr_s8((*&vshl_n_s32(vadd_s32(v49, v54), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v50, v54), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
        *(v28 + 8) = *&a12;
        *v27++ = -1;
        v28 += 16;
        v48 -= 4;
      }

      while (v48 > 4);
    }

    else
    {
      v55 = vdupq_n_s32(v42 & 0xFF00 | (BYTE1(v43) << 16) & 0xFFFFFF | (BYTE1(v44) << 24) | (v45 >> 8));
      v56 = a4 + 4;
      do
      {
        *v28 = v55;
        v28 += 16;
        *v27++ = -1;
        v56 -= 4;
      }

      while (v56 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = a4;
    }

    bzero(v27, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t ARGB32_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
      result = (v32 + v31[1]) >> 8;
      *v27 = (v32 + *v31) & 0xFF00 | (((v32 + v31[1]) >> 8) << 16) & 0xFFFF00 | (((v32 + v31[2]) >> 8) << 24) | ((v32 + v31[3]) >> 8);
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

void ARGB32_shade_conic_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
  v32 = *(a1 + 336);
  v33 = *(a1 + 304);
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

  v31 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v33 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v31)) - v32);
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
    v28 = 255 - v24;
    v29 = (v16 + 8 * v26);
    v30 = *(v10 + v19);
    *v17++ = (v24 * v29[1] + (v30 << 8) + v28 * v27[1]) & 0xFF0000 | (v30 + ((v24 * *v29 + v28 * *v27) >> 8)) & 0xFF00 | (((v30 + ((v24 * v29[2] + v28 * v27[2]) >> 8)) >> 8) << 24) | ((v30 + ((v24 * v29[3] + v28 * v27[3]) >> 8)) >> 8);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void ARGB32_shade_radial_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
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
            *v30 = (v67 + v66->i16[0]) & 0xFF00 | (((v67 + v66->i16[1]) >> 8) << 16) & 0xFFFF00 | (((v67 + v66->i16[2]) >> 8) << 24) | ((v67 + v66->i16[3]) >> 8);
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
              *v30 = (v94 + v93->i16[0]) & 0xFF00 | (((v94 + v93->i16[1]) >> 8) << 16) & 0xFFFF00 | (((v94 + v93->i16[2]) >> 8) << 24) | ((v94 + v93->i16[3]) >> 8);
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
        *v30 = (v86 + *v84) & 0xFF00 | (((v86 + v84[1]) >> 8) << 16) & 0xFFFF00 | (((v86 + v84[2]) >> 8) << 24) | ((v86 + v84[3]) >> 8);
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
        v90 = v88.i16[0] + v89;
        v91 = (v88.i32[1] + v89) >> 8;
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v83);
        *v88.i8 = vadd_s32(vdup_n_s32(v89), *&vextq_s8(v88, v88, 8uLL));
        v92.i32[0] = vshl_u32(*v88.i8, 0x800000010).u32[0];
        v92.i32[1] = vshl_u32(*&v88, 0xFFFFFFF8FFFFFFF0).i32[1];
        *v88.i8 = vand_s8(v92, 0xFFFF000000);
        *v30 = v90 & 0xFF00 | (v91 << 16) | v88.i32[0] | v88.i32[1];
      }

      LOBYTE(v93) = -1;
LABEL_91:
      v98 = vextq_s8(v87, v87, 8uLL).u64[0];
      v99.i32[0] = vshl_u32(v98, 0x800000010).u32[0];
      v99.i32[1] = vshl_u32(v98, 0xFFFFFFF8FFFFFFF0).i32[1];
      v100 = vand_s8(v99, 0xFFFF000000);
      *(v30 + 4) = v87.i16[0] & 0xFF00 | (v87.u8[5] << 16) | v100.i32[0] | v100.i32[1];
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

    v104 = vdup_n_s32(v103[1]);
    v105 = vdup_n_s32(*v103);
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
      v111 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v104, v110), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v105, v110), 0xFF000000FF00)), vorr_s8((*&vshl_n_s32(vadd_s32(v106, v110), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v107, v110), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
      *v30 = v111;
      v37 = (v37 + 1) & v40;
      v111.i8[0] = *(v39 + a2);
      v111.i8[4] = *(v39 + v37);
      v112 = vand_s8(v111, 0xFF000000FFLL);
      a12 = COERCE_DOUBLE(vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v104, v112), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v105, v112), 0xFF000000FF00)), vorr_s8((*&vshl_n_s32(vadd_s32(v106, v112), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v107, v112), 8uLL) & 0xFFFFFEFFFFFFFEFFLL))));
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

uint64_t ARGB32_image(int **a1, unsigned __int8 *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a1;
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
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v47, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v30, v47) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *v6 != 134755144 || v8 <= 23;
  v20 = *a3;
  if (v19)
  {
    v21 = v8;
  }

  else
  {
    v21 = (v8 + 4);
  }

  DWORD2(v30) = *a3;
  HIDWORD(v30) = v18;
  if (v20 != 134755144)
  {
    v22 = SAMPLEINDEX(v20, v10, v11, v12, v13, v14, v15, v16);
    if (!v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v22 > 0xB)
    {
      if (v22 > 0x13)
      {
LABEL_35:
        v27 = 0;
LABEL_37:
        *&v30 = *&RGB8_image_sample[2 * v22 + 2];
        if (v30)
        {
          v28 = 134755224;
          goto LABEL_45;
        }

        if ((HIWORD(*a3) & 0x3Fu) <= 0x10)
        {
          *&v30 = *&RGB16_image_sample[2 * v22 + 2];
          if (v30)
          {
            v28 = 269497256;
            v29 = 8;
LABEL_44:
            LODWORD(v31) = v29;
LABEL_45:
            DWORD2(v30) = v28;
            if (v41)
            {
              v27 = 0;
            }

            if (v27 == 1 && (BYTE4(v31) & 0x77) == 0x73 && (v21 - 1) <= 1 && (a2[2] == 5 || !a2[2]))
            {
              if (v22 > 0xB)
              {
                if (v22 <= 0x13)
                {
                  if (v22 == 12 && v21 == 1)
                  {
                    v17.n128_u32[0] = *(a3 + 8);
                    if (v17.n128_f32[0] == 1.0)
                    {
                      rgba32_mark_image_W16(a2, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v23, v24, v25, v26);
                      return 1;
                    }
                  }

                  else if (v22 == 13 && v21 == 1)
                  {
                    v17.n128_u32[0] = *(a3 + 8);
                    if (v17.n128_f32[0] == 1.0)
                    {
                      rgba32_mark_image_w16(a2, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v23, v24, v25, v26);
                      return 1;
                    }
                  }

                  else if (v22 == 14 && v21 == 1)
                  {
                    v17.n128_u32[0] = *(a3 + 8);
                    if (v17.n128_f32[0] == 1.0)
                    {
                      ARGB32_mark_image_RGB48(a2, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v23, v24, v25, v26);
                      return 1;
                    }
                  }

                  else if (v22 == 15 && v21 == 1)
                  {
                    v17.n128_u32[0] = *(a3 + 8);
                    if (v17.n128_f32[0] == 1.0)
                    {
                      ARGB32_mark_image_rgb48(a2, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v23, v24, v25, v26);
                      return 1;
                    }
                  }

                  else if (v22 == 17)
                  {
                    v17.n128_u32[0] = *(a3 + 8);
                    if (v17.n128_f32[0] == 1.0)
                    {
                      ARGB32_mark_image_rgba64(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v24, v25, v26);
                      return 1;
                    }
                  }

                  else if (v22 == 16)
                  {
                    v17.n128_u32[0] = *(a3 + 8);
                    if (v17.n128_f32[0] == 1.0)
                    {
                      ARGB32_mark_image_RGBA64(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v24, v25, v26);
                      return 1;
                    }
                  }
                }
              }

              else if (v22 == 2 && v21 == 1)
              {
                v17.n128_u32[0] = *(a3 + 8);
                if (v17.n128_f32[0] == 1.0)
                {
                  rgba32_mark_image_W8(a2, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v23, v24, v25, v26);
                  return 1;
                }
              }

              else if (v22 == 5 && v21 == 1)
              {
                v17.n128_u32[0] = *(a3 + 8);
                if (v17.n128_f32[0] == 1.0)
                {
                  ARGB32_mark_image_RGB24(a2, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v23, v24, v25, v26);
                  return 1;
                }
              }

              else if (v22 > 7)
              {
                if (v22 == 8)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    rgba32_mark_image_rgbx32(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v24, v25, v26);
                    return 1;
                  }
                }

                else if (v22 == 9)
                {
                  v17.n128_u32[0] = *(a3 + 8);
                  if (v17.n128_f32[0] == 1.0)
                  {
                    rgba32_mark_image_RGBX32(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v24, v25, v26);
                    return 1;
                  }
                }
              }

              else if (v22 == 6)
              {
                v17.n128_u32[0] = *(a3 + 8);
                if (v17.n128_f32[0] == 1.0)
                {
                  rgba32_mark_image_xrgb32(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v24, v25, v26);
                  return 1;
                }
              }

              else if (v22 == 7)
              {
                v17.n128_u32[0] = *(a3 + 8);
                if (v17.n128_f32[0] == 1.0)
                {
                  rgba32_mark_image_XRGB32(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v24, v25, v26);
                  return 1;
                }
              }
            }

LABEL_60:
            rgba32_image_mark(a2, &v30, v21, v17);
            return 1;
          }
        }

        *&v30 = *&RGBF_image_sample[2 * v22 + 2];
        if (v30)
        {
          v28 = 538981289;
          v29 = 16;
          goto LABEL_44;
        }

        return 0xFFFFFFFFLL;
      }

      if (v22 - 14 < 4)
      {
LABEL_36:
        v27 = 1;
        goto LABEL_37;
      }

      if (v22 != 13 && v22 != 12)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v22 - 5 < 5)
      {
        goto LABEL_36;
      }

      if (v22 != 2)
      {
        goto LABEL_35;
      }
    }

    if (*(a2 + 12))
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v41 || (~DWORD1(v31) & 0xC3) != 0)
  {
    goto LABEL_59;
  }

  v17.n128_u32[0] = *(a3 + 8);
  if ((BYTE4(v31) & 4) != 0 || (v21 - 1) > 1 || v17.n128_f32[0] != 1.0)
  {
    if (v17.n128_f32[0] >= 1.0)
    {
      goto LABEL_58;
    }

LABEL_59:
    *&v30 = rgba32_sample_rgba32;
    goto LABEL_60;
  }

  if (a2[2] != 5 && a2[2])
  {
LABEL_58:
    if (!*(a3 + 24))
    {
      if ((BYTE4(v31) & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      rgba32_mark(a1, v17);
      return 1;
    }

    goto LABEL_59;
  }

  rgba32_mark_image(a2, v21, v36 >> SBYTE6(v31), *(&v36 + 1) >> SBYTE7(v31), *(&v38 + 1) >> SBYTE7(v31), v14, v15, v16);
  return 1;
}

void ARGB32_mark_image_RGB24(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    _CGHandleAssert("CGSConvertRGB888toARGB8888", 241, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, v11);
  }

  while (1)
  {
    if ((v12 & 0x80000000) != 0)
    {
      _CGHandleAssert("CGSConvertRGB888toARGB8888", 241, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, v12);
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
      v30 = malloc_type_malloc((v26 * v12), 0x37D3E7B2uLL);
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
              v37 = v35[2];
              *v33 = -1;
              *(v33 + 1) = v36;
              v33[3] = v37;
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
      vImageConvert_RGB888toARGB8888(&v45, 0, 0xFFu, &v44, 0, 0);
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

void ARGB32_mark_image_RGB48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a2;
  v9 = *(a1 + 28);
  v10 = v9;
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
      goto LABEL_24;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v43 = 0;
  if (v11 < 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertRGB16toARGB8888", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, v11);
  }

  while (1)
  {
    if (v12 < 0)
    {
      _CGHandleAssert("CGSConvertRGB16toARGB8888", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, v12);
    }

    v40 = v16;
    v19 = *(a1 + 76);
    v20 = *(a1 + 88) + v19 * (a3 + v18 * a4) + 6 * (v17 + v37);
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
        v28 = malloc_type_malloc(v12 * v26, 0x5A792547uLL);
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
            v36 = v33[4];
            *v31 = -1;
            v31[1] = v34;
            v31[2] = v35;
            v31[3] = v36;
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
    v16 = v40;
    if (!v40)
    {
      break;
    }

LABEL_24:
    if (!shape_enum_clip_next(v16, &v43 + 1, &v43, &v42, &v41))
    {

      free(v16);
      return;
    }

    v18 = v43;
    v17 = HIDWORD(v43);
    v12 = v41;
    v11 = v42;
    if (v42 < 0)
    {
      goto LABEL_4;
    }
  }
}

void ARGB32_mark_image_rgb48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    _CGHandleAssert("CGSConvertrgb16toARGB8888", 649, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, v11);
  }

  while (1)
  {
    if (v12 < 0)
    {
      _CGHandleAssert("CGSConvertrgb16toARGB8888", 649, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, v12);
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
        v28 = malloc_type_malloc(v12 * v26, 0x4D46BFA8uLL);
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
            *v32 = -1;
            v32[1] = v35;
            v32[2] = v36;
            v32[3] = v37;
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

void ARGB32_mark_image_RGBA64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        v23 = 255;
      }

      if (v10 >= 1)
      {
        v24 = vdupq_n_s32(v23);
        v25.i64[0] = 0xFF000000FF00;
        v25.i64[1] = 0xFF000000FF00;
        v26.i64[0] = 0xFF000000FF0000;
        v26.i64[1] = 0xFF000000FF0000;
        v27.i64[0] = 0xFF000000FFLL;
        v27.i64[1] = 0xFF000000FFLL;
        v28.i64[0] = 0x1000100010001;
        v28.i64[1] = 0x1000100010001;
        do
        {
          v29 = v9;
          v30 = v21;
          v31 = v18;
          if (v9 >= 4)
          {
            do
            {
              v32.i32[0] = v31[1];
              v32.i32[1] = v31[3];
              v32.i32[2] = v31[5];
              v32.i32[3] = v31[7];
              v33 = *&vshrq_n_u32(v32, 0x10uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
              v34 = vaddvq_s32(v33);
              if (v34)
              {
                v35.i32[0] = *v31;
                v35.i32[1] = v31[2];
                v35.i32[2] = v31[4];
                v35.i32[3] = v31[6];
                v36 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(v35, v26), vshlq_n_s32(v32, 0x18uLL)), vandq_s8(vshlq_n_s32(v35, 8uLL), v25)), v33);
                if (v34 != 1020)
                {
                  v37 = veorq_s8(v33, v27);
                  v38.i16[0] = v30->u8[0];
                  v38.i16[1] = BYTE2(v30->u32[0]);
                  v38.i16[2] = BYTE4(v30->i64[0]);
                  v38.i16[3] = BYTE6(v30->i64[0]);
                  v38.i16[4] = v30->i64[1];
                  v38.i16[5] = BYTE2(v30->i64[1]);
                  v38.i16[6] = BYTE12(*v30);
                  v38.i16[7] = BYTE14(*v30);
                  v39 = vmulq_s32((*&vshrq_n_u32(*v30, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v37);
                  v40 = vmulq_s32(v38, v37);
                  v36 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v40, v28), (*&vshrq_n_u32(v40, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v36, (*&vaddq_s32(vaddq_s32(v39, v28), (*&vshrq_n_u32(v39, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v30 = vorrq_s8(v36, v24);
              }

              v31 += 8;
              ++v30;
              v41 = v29 > 7;
              v29 -= 4;
            }

            while (v41);
          }

          if (v29 >= 1)
          {
            v42 = v29 + 1;
            do
            {
              v43 = v31[1];
              if (BYTE2(v43))
              {
                v44 = *v31 & 0xFF0000 | (*v31 << 8) | (v43 << 24) | BYTE2(v43);
                if (BYTE2(v43) != 255)
                {
                  v44 += ((((v30->i32[0] & 0xFF00FF) * (BYTE2(v43) ^ 0xFF) + 65537 + ((((v30->i32[0] & 0xFF00FF) * (BYTE2(v43) ^ 0xFFu)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v30->i32[0] >> 8) & 0xFF00FF) * (BYTE2(v43) ^ 0xFF) + 65537 + (((((v30->i32[0] >> 8) & 0xFF00FF) * (BYTE2(v43) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v30->i32[0] = v44 | v23;
              }

              v31 += 2;
              v30 = (v30 + 4);
              --v42;
            }

            while (v42 > 1);
          }

          v18 += v22;
          v21 += v62;
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
        _CGHandleAssert("CGSConvertRGBA16toARGB8888", 519, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, v9);
      }

      if (v10 < 0)
      {
        _CGHandleAssert("CGSConvertRGBA16toARGB8888", 519, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, v10);
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
          v52 = malloc_type_malloc(v10 * v47, 0xB9CF5009uLL);
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
              v59 = v56[4];
              v60 = v56[6];
              if (!v45)
              {
                v60 = -1;
              }

              *v54 = v60;
              v54[1] = v57;
              v54[2] = v58;
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

void ARGB32_mark_image_rgba64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v65 = a2;
  v64 = *(a1 + 28);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v70 = v10;
  v71 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 104);
    LODWORD(v72) = *(a1 + 108);
    HIDWORD(v72) = v12;
    shape_enum_clip_alloc(a1, a2, v11, 1, 1, 1, v12, v72, v9, v10);
    v14 = v13;
    if (v13)
    {
      goto LABEL_50;
    }
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v72 = 0;
  while (1)
  {
    v17 = *(a1 + 76);
    v18 = *(a1 + 88) + v17 * (a4 + v16 * v8) + 8 * (v15 + a3);
    v19 = *(a1 + 16) + v16;
    v20 = *(a1 + 48);
    v21 = (*(a1 + 40) + v19 * v64 + 4 * (*(a1 + 12) + v15));
    v22 = v17 * v8;
    v69 = v14;
    if (v65 == 2)
    {
      if (v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = 255;
      }

      if (v10 >= 1)
      {
        v24 = vdupq_n_s32(v23);
        v25.i64[0] = 0xFF000000FF00;
        v25.i64[1] = 0xFF000000FF00;
        v26.i64[0] = 0xFF000000FF0000;
        v26.i64[1] = 0xFF000000FF0000;
        v27.i64[0] = 0xFF000000FFLL;
        v27.i64[1] = 0xFF000000FFLL;
        v28.i64[0] = 0x1000100010001;
        v28.i64[1] = 0x1000100010001;
        do
        {
          v29 = v9;
          v30 = v21;
          v31 = v18;
          if (v9 >= 4)
          {
            do
            {
              v32.i32[0] = v31[1];
              v32.i32[1] = v31[3];
              v32.i32[2] = v31[5];
              v32.i32[3] = v31[7];
              v33 = vshrq_n_u32(v32, 0x18uLL);
              v34 = vaddvq_s32(v33);
              if (v34)
              {
                v35.i32[0] = *v31;
                v35.i32[1] = v31[2];
                v35.i32[2] = v31[4];
                v35.i32[3] = v31[6];
                v36 = vsraq_n_u32(vorrq_s8(vorrq_s8(vandq_s8(vshrq_n_u32(v35, 8uLL), v26), vandq_s8(v35, v25)), (*&vshlq_n_s32(v32, 0x10uLL) & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))), v32, 0x18uLL);
                if (v34 != 1020)
                {
                  v37 = veorq_s8(v33, v27);
                  v38.i16[0] = v30->u8[0];
                  v38.i16[1] = BYTE2(v30->u32[0]);
                  v38.i16[2] = BYTE4(v30->i64[0]);
                  v38.i16[3] = BYTE6(v30->i64[0]);
                  v38.i16[4] = v30->i64[1];
                  v38.i16[5] = BYTE2(v30->i64[1]);
                  v38.i16[6] = BYTE12(*v30);
                  v38.i16[7] = BYTE14(*v30);
                  v39 = vmulq_s32((*&vshrq_n_u32(*v30, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v37);
                  v40 = vmulq_s32(v38, v37);
                  v36 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v40, v28), (*&vshrq_n_u32(v40, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v36, (*&vaddq_s32(vaddq_s32(v39, v28), (*&vshrq_n_u32(v39, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v30 = vorrq_s8(v36, v24);
              }

              v31 += 8;
              ++v30;
              v41 = v29 > 7;
              v29 -= 4;
            }

            while (v41);
          }

          if (v29 >= 1)
          {
            v42 = v29 + 1;
            do
            {
              v43 = v31[1];
              v44 = HIBYTE(v43);
              if (HIBYTE(v43))
              {
                v45 = (*v31 >> 8) & 0xFF0000 | *v31 & 0xFF00 | (BYTE1(v43) << 24) | HIBYTE(v43);
                if (v44 != 255)
                {
                  v45 += ((((v30->i32[0] & 0xFF00FF) * (v44 ^ 0xFF) + 65537 + ((((v30->i32[0] & 0xFF00FF) * (v44 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v30->i32[0] >> 8) & 0xFF00FF) * (v44 ^ 0xFF) + 65537 + (((((v30->i32[0] >> 8) & 0xFF00FF) * (v44 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v30->i32[0] = v45 | v23;
              }

              v31 += 2;
              v30 = (v30 + 4);
              --v42;
            }

            while (v42 > 1);
          }

          v18 += v22;
          v21 += v64;
          v41 = v10-- <= 1;
        }

        while (!v41);
      }
    }

    else
    {
      v46 = 0;
      if (v20)
      {
        v46 = *(a1 + 96) != 0;
      }

      if (v9 < 0)
      {
        _CGHandleAssert("CGSConvertrgba16toARGB8888", 681, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, v9);
      }

      if (v10 < 0)
      {
        _CGHandleAssert("CGSConvertrgba16toARGB8888", 681, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, v10);
      }

      v47 = v10 - 1;
      if (v64 < 0)
      {
        v18 += v47 * v22;
        LODWORD(v22) = -v22;
        v48 = -v64;
        v21 += v47 * v64;
      }

      else
      {
        v48 = v64;
      }

      v49 = v18 + ((v22 * v47) & (v22 >> 31));
      v50 = v21;
      if (v49 <= &v21[v10 * v48])
      {
        v51 = v22 >= 0 ? v22 : -v22;
        v50 = v21;
        if (v49 + (v51 * v10) >= v21)
        {
          v52 = v48;
          v53 = malloc_type_malloc(v10 * v48, 0xC802CD76uLL);
          v48 = v52;
          v50 = v53;
        }
      }

      if (v10)
      {
        v54 = 0;
        v55 = (v18 + 3);
        do
        {
          if (v9)
          {
            v56 = &v50[v54 * v48];
            v57 = v55;
            v58 = v9;
            do
            {
              v59 = *(v57 - 2);
              v60 = *v57;
              v61 = v57[2];
              v62 = v57[4];
              if (!v46)
              {
                v62 = -1;
              }

              *v56 = v62;
              v56[1] = v59;
              v56[2] = v60;
              v56[3] = v61;
              v56 += 4;
              v57 += 8;
              --v58;
            }

            while (v58);
          }

          ++v54;
          v55 += v22;
        }

        while (v54 != v10);
      }

      v8 = a5;
      if (v50 != v21)
      {
        CGBlt_copyBytes(4 * v9, v10, v50, v21, v48, v48);
        free(v50);
      }
    }

    v14 = v69;
    if (!v69)
    {
      break;
    }

LABEL_50:
    if (!shape_enum_clip_next(v14, &v72 + 1, &v72, &v71, &v70))
    {

      free(v14);
      return;
    }

    v16 = v72;
    v15 = HIDWORD(v72);
    v10 = v70;
    v9 = v71;
  }
}

_DWORD *ARGB32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_21896(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8 & 0xFF00FF | (BYTE1(v8) << 24) | (HIBYTE(v8) << 8);
    *(a2 + 2) = 1;
    if (v8 == 0xFF)
    {
      v9 = 0;
    }

    else
    {
      v9 = (a2 + 12);
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

__int16 PDAmultiplyPDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H5 = a19;
  _H6 = a18;
  _H7 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S1, H1
    FCVT            S2, H2
    FCVT            S7, H7
    FCVT            S6, H6
    FCVT            S5, H5
  }

  v30 = _S0 * _S7;
  v31 = _S1 * _S6;
  v32 = _S2 * _S5;
  _S0 = (_S0 * _S7) + (_S0 * (1.0 - a20));
  _S1 = (_S1 * _S6) + (_S1 * (1.0 - a20));
  _S2 = (_S2 * _S5) + (_S2 * (1.0 - a20));
  if (a20 == 1.0)
  {
    _S0 = v30;
    _S1 = v31;
    _S2 = v32;
  }

  v36 = _S0 + (_S7 * (1.0 - a5));
  v37 = _S1 + (_S6 * (1.0 - a5));
  v38 = _S2 + (_S5 * (1.0 - a5));
  if (a5 != 1.0)
  {
    _S0 = v36;
    _S1 = v37;
    _S2 = v38;
  }

  _S3 = (a5 + a20) - (a5 * a20);
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
    FCVT            H2, S2
    FCVT            H3, S3
  }

  return result;
}

__int16 PDAoverlayPDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H5 = a19;
  _H6 = a18;
  _H7 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S1, H1
    FCVT            S2, H2
    FCVT            S7, H7
    FCVT            S6, H6
    FCVT            S5, H5
  }

  v30 = (_S0 * _S7) + (_S0 * _S7);
  v31 = (_S1 * _S6) + (_S1 * _S6);
  v32 = (_S2 * _S5) + (_S2 * _S5);
  v33 = a5 * a20;
  v34 = a5 * 0.5;
  v35 = (a5 * 0.5) <= _S0;
  v36 = a20 + 1.0;
  v37 = a5 + 1.0;
  v38 = ((((a5 + 1.0) * _S7) + (_S0 * (a20 + 1.0))) - v30) - (a5 * a20);
  v39 = 1.0 - a20;
  v40 = 1.0 - a5;
  _S0 = (((1.0 - a5) * _S7) + (_S0 * (1.0 - a20))) + v30;
  if (v35)
  {
    _S0 = v38;
  }

  v35 = v34 <= _S1;
  v42 = (((v37 * _S6) + (_S1 * v36)) - v31) - v33;
  _S1 = ((v40 * _S6) + (_S1 * v39)) + v31;
  if (v35)
  {
    _S1 = v42;
  }

  v35 = v34 <= _S2;
  v44 = (((v37 * _S5) + (_S2 * v36)) - v32) - v33;
  _S2 = ((v40 * _S5) + (_S2 * v39)) + v32;
  if (v35)
  {
    _S2 = v44;
  }

  _S3 = (a5 + a20) - v33;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
    FCVT            H2, S2
    FCVT            H3, S3
  }

  return result;
}

__int16 PDAlightenPDA@<H0>(__n128 _Q0@<Q0>, double a2@<D1>, double a3@<D2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, int a18, float a19)
{
  _H6 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S6, H6
  }

  v23 = _S0 * a19;
  if ((_S6 * a5) > (_S0 * a19))
  {
    v23 = _S6 * a5;
  }

  _S0 = v23 + (_S0 * (1.0 - a19));
  if (a19 == 1.0)
  {
    _S0 = v23;
  }

  v25 = _S0 + (_S6 * (1.0 - a5));
  if (a5 != 1.0)
  {
    _S0 = v25;
  }

  _S6 = (a5 + a19) - (a5 * a19);
  __asm
  {
    FCVT            H0, S0
    FCVT            H3, S6
  }

  return result;
}

__int16 PDAdarkenPDA@<H0>(__n128 _Q0@<Q0>, double a2@<D1>, double a3@<D2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, int a18, float a19)
{
  _H6 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S6, H6
  }

  v23 = _S0 * a19;
  if ((_S6 * a5) < (_S0 * a19))
  {
    v23 = _S6 * a5;
  }

  _S0 = v23 + (_S0 * (1.0 - a19));
  if (a19 == 1.0)
  {
    _S0 = v23;
  }

  v25 = _S0 + (_S6 * (1.0 - a5));
  if (a5 != 1.0)
  {
    _S0 = v25;
  }

  _S6 = (a5 + a19) - (a5 * a19);
  __asm
  {
    FCVT            H0, S0
    FCVT            H3, S6
  }

  return result;
}

__int16 PDAcolordodgePDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H16 = a18;
  _H5 = a17;
  __asm
  {
    FCVT            S6, H0
    FCVT            S5, H5
  }

  v25 = a20 * a20;
  v26 = 0.0;
  __asm { FCMP            H0, #0 }

  _S0 = 0.0;
  if (!_ZF)
  {
    _S0 = 1.0;
    if (_S5 != a20)
    {
      _S0 = (v25 * _S6) / (a20 - _S5);
    }
  }

  _H20 = a19;
  __asm
  {
    FCVT            S18, H1
    FCVT            S16, H16
    FCMP            H1, #0
  }

  if (!_ZF)
  {
    if (_S16 == a20)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = (v25 * _S18) / (a20 - _S16);
    }
  }

  __asm
  {
    FCVT            S19, H2
    FCVT            S1, H20
  }

  v35 = 0.0;
  __asm { FCMP            H2, #0 }

  if (!_ZF)
  {
    if (_S1 == a20)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = (v25 * _S19) / (a20 - _S1);
    }
  }

  v37 = _S0 + (_S6 * (1.0 - a20));
  v38 = v26 + (_S18 * (1.0 - a20));
  if (a20 == 1.0)
  {
    v39 = v26;
  }

  else
  {
    _S0 = v37;
    v39 = v38;
  }

  if (a20 == 1.0)
  {
    v40 = v35;
  }

  else
  {
    v40 = v35 + (_S19 * (1.0 - a20));
  }

  v41 = _S0 + (_S5 * (1.0 - a5));
  v42 = v39 + (_S16 * (1.0 - a5));
  v43 = v40 + (_S1 * (1.0 - a5));
  if (a5 == 1.0)
  {
    _S2 = v39;
  }

  else
  {
    _S0 = v41;
    _S2 = v42;
  }

  if (a5 == 1.0)
  {
    v43 = v40;
  }

  _S3 = (a5 + a20) - (a5 * a20);
  if (_S0 > _S3)
  {
    _S0 = (a5 + a20) - (a5 * a20);
  }

  if (_S2 > _S3)
  {
    _S2 = (a5 + a20) - (a5 * a20);
  }

  if (v43 <= _S3)
  {
    _S4 = v43;
  }

  else
  {
    _S4 = (a5 + a20) - (a5 * a20);
  }

  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S2
    FCVT            H2, S4
    FCVT            H3, S3
  }

  return result;
}

__int16 PDAcolorburnPDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H5 = a19;
  _H17 = a18;
  _H21 = a17;
  __asm
  {
    FCVT            S22, H0
    FCVT            S19, H1
    FCVT            S16, H2
    FCVT            S20, H21
    FCVT            S18, H17
    FCVT            S1, H5
  }

  v30 = (a5 * a20) + (_S22 * (1.0 - a20));
  v31 = (a5 * a20) + (_S19 * (1.0 - a20));
  if (a20 == 1.0)
  {
    v30 = a5 * a20;
    v31 = a5 * a20;
    v32 = a5 * a20;
  }

  else
  {
    v32 = (a5 * a20) + (_S16 * (1.0 - a20));
  }

  if (a5 == 1.0)
  {
    _S2 = v30;
  }

  else
  {
    _S2 = v30 + (_S20 * (1.0 - a5));
  }

  if (a5 == 1.0)
  {
    _S6 = v31;
  }

  else
  {
    _S6 = v31 + (_S18 * (1.0 - a5));
  }

  if (a5 == 1.0)
  {
    _S7 = v32;
  }

  else
  {
    _S7 = v32 + (_S1 * (1.0 - a5));
  }

  v36 = a5 - _S22;
  if (v36 != 0.0)
  {
    __asm { FCMP            H21, #0 }

    if (_ZF || (_S2 = _S2 - ((v36 * (a20 * a20)) / _S20), _S2 < 0.0))
    {
      _S2 = 0.0;
    }
  }

  v38 = a5 - _S19;
  if (v38 != 0.0)
  {
    __asm { FCMP            H17, #0 }

    if (_ZF || (_S6 = _S6 - ((v38 * (a20 * a20)) / _S18), _S6 < 0.0))
    {
      _S6 = 0.0;
    }
  }

  v40 = a5 - _S16;
  if (v40 != 0.0)
  {
    __asm { FCMP            H5, #0 }

    if (_ZF || (_S7 = _S7 - ((v40 * (a20 * a20)) / _S1), _S7 < 0.0))
    {
      _S7 = 0.0;
    }
  }

  _S3 = (a5 + a20) - (a5 * a20);
  __asm
  {
    FCVT            H0, S2
    FCVT            H1, S6
    FCVT            H2, S7
    FCVT            H3, S3
  }

  return result;
}

__int16 PDAhardlightPDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H5 = a19;
  _H6 = a18;
  _H7 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S1, H1
    FCVT            S2, H2
    FCVT            S7, H7
    FCVT            S6, H6
    FCVT            S5, H5
  }

  v30 = (_S0 * _S7) + (_S0 * _S7);
  v31 = (_S1 * _S6) + (_S1 * _S6);
  v32 = (_S2 * _S5) + (_S2 * _S5);
  v33 = a5 * a20;
  v34 = a20 * 0.5;
  v35 = 1.0 - a20;
  v36 = 1.0 - a5;
  v37 = (((1.0 - a5) * _S7) + (_S0 * (1.0 - a20))) + v30;
  v38 = a20 + 1.0;
  v39 = a5 + 1.0;
  _S0 = ((((a5 + 1.0) * _S7) + (_S0 * (a20 + 1.0))) - v30) - (a5 * a20);
  if ((a20 * 0.5) >= _S7)
  {
    _S0 = v37;
  }

  v41 = ((v36 * _S6) + (_S1 * v35)) + v31;
  _S1 = (((v39 * _S6) + (_S1 * v38)) - v31) - v33;
  if (v34 >= _S6)
  {
    _S1 = v41;
  }

  v43 = ((v36 * _S5) + (_S2 * v35)) + v32;
  _S2 = (((v39 * _S5) + (_S2 * v38)) - v32) - v33;
  if (v34 >= _S5)
  {
    _S2 = v43;
  }

  _S3 = (a5 + a20) - v33;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
    FCVT            H2, S2
    FCVT            H3, S3
  }

  return result;
}

__int16 PDAsoftlightPDA@<H0>(__n128 a1@<Q0>, float16x4_t a2@<D1>, __n128 _Q2@<Q2>, int32x2_t a4@<D3>, double a5@<D4>, double a6@<D5>, float16x4_t a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  *a4.i32 = a20;
  _H5 = a19;
  a7.i16[0] = a18;
  a2.i16[1] = a1.n128_u16[0];
  v20 = vcvtq_f32_f16(a2);
  __asm { FCVT            S2, H2 }

  a7.i16[1] = a17;
  v26 = vcvtq_f32_f16(a7).u64[0];
  __asm { FCVT            S5, H5 }

  v28 = 0.0;
  if (*&a5 == 0.0)
  {
    v31 = 0;
  }

  else
  {
    v29 = vmul_f32(*v20.f32, v26);
    v30 = vsub_f32(vadd_f32(v29, v29), vdiv_f32(vmul_f32(vmul_f32(*v20.f32, *v20.f32), vsub_f32(vadd_f32(v26, v26), vdup_lane_s32(a4, 0))), vdup_lane_s32(*&a5, 0)));
    v31 = vbic_s8(v30, vcltz_f32(v30));
    if ((((_S2 * _S5) + (_S2 * _S5)) - (((_S2 * _S2) * ((_S5 + _S5) - a20)) / *&a5)) >= 0.0)
    {
      v28 = ((_S2 * _S5) + (_S2 * _S5)) - (((_S2 * _S2) * ((_S5 + _S5) - a20)) / *&a5);
    }
  }

  _S2 = v28 + (_S2 * (1.0 - a20));
  if (a20 == 1.0)
  {
    _S2 = v28;
  }

  v33 = _S2 + (_S5 * (1.0 - *&a5));
  if (*&a5 != 1.0)
  {
    _S2 = v33;
  }

  _S3 = (*&a5 + a20) - (*&a5 * a20);
  *v20.f32 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a20 != 1.0), 0x1FuLL)), vmla_n_f32(v31, *v20.f32, 1.0 - a20), v31);
  *v20.f32 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*&a5 != 1.0), 0x1FuLL)), vmla_n_f32(*v20.f32, v26, 1.0 - *&a5), *v20.f32);
  __asm
  {
    FCVT            H2, S2
    FCVT            H3, S3
  }

  v20.i16[0] = vcvt_f16_f32(v20).i16[1];
  return v20.i16[0];
}

__int16 PDAdifferencePDA@<H0>(__n128 _Q0@<Q0>, double a2@<D1>, double a3@<D2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, int a18, float a19)
{
  _H6 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S6, H6
  }

  v23 = _S0 + _S6;
  v24 = _S0 * a19;
  v25 = _S6 * a5;
  v26 = v23 - v24;
  v27 = v24 - v25;
  v28 = v26 - v25;
  if (v27 < 0.0)
  {
    v27 = -v27;
  }

  _S0 = v28 + v27;
  _S6 = (a5 + a19) - (a5 * a19);
  __asm
  {
    FCVT            H0, S0
    FCVT            H3, S6
  }

  return result;
}

__int16 PDAhuePDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H5 = a19;
  _H6 = a18;
  _H7 = a17;
  v63 = *MEMORY[0x1E69E9840];
  __asm
  {
    FCVT            S16, H0
    FCVT            S1, H1
    FCVT            S0, H2
    FCVT            S2, H7
    FCVT            S17, H6
    FCVT            S5, H5
  }

  v30 = _S16 * a20;
  v31 = _S16 - (_S16 * a20);
  v32 = _S1 - (_S1 * a20);
  v33 = _S0 - (_S0 * a20);
  if (a20 == 1.0)
  {
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
  }

  else
  {
    _S0 = _S0 * a20;
  }

  if (a20 == 1.0)
  {
    v34 = _S1;
  }

  else
  {
    v34 = _S1 * a20;
  }

  if (a20 == 1.0)
  {
    v30 = _S16;
  }

  v35 = _S2 * a5;
  v36 = (v31 + _S2) - (_S2 * a5);
  v37 = (v32 + _S17) - (_S17 * a5);
  if (a5 == 1.0)
  {
    v35 = _S2;
  }

  else
  {
    _S17 = _S17 * a5;
  }

  if (a5 == 1.0)
  {
    v38 = _S5;
  }

  else
  {
    v38 = _S5 * a5;
  }

  if (a5 == 1.0)
  {
    v36 = v31;
    v39 = v32;
  }

  else
  {
    v39 = v37;
  }

  if (a5 == 1.0)
  {
    v40 = v33;
  }

  else
  {
    v40 = (v33 + _S5) - (_S5 * a5);
  }

  v60 = v35;
  v61 = _S17;
  v62 = v38;
  v41 = v35 < _S17;
  v42 = v35 >= _S17;
  if (v35 < _S17)
  {
    v43 = v35;
  }

  else
  {
    v43 = _S17;
  }

  if (v35 < _S17)
  {
    v35 = _S17;
  }

  if (v38 <= v35)
  {
    v44 = v42;
  }

  else
  {
    v44 = v41;
  }

  v45 = 2;
  if (v38 <= v35)
  {
    v46 = v41;
  }

  else
  {
    v46 = 2;
  }

  if (v38 < v43)
  {
    v47 = v41;
  }

  else
  {
    v45 = v42;
    v42 = v44;
    v47 = v46;
  }

  v48 = *(&v60 + v47);
  v49 = *(&v60 + v45);
  if (v48 <= v49)
  {
    *(&v60 + v47) = 0.0;
    *(&v60 + v42) = 0.0;
  }

  else
  {
    if (v30 >= v34)
    {
      v50 = v34;
    }

    else
    {
      v50 = v30;
    }

    if (v30 >= v34)
    {
      v51 = v30;
    }

    else
    {
      v51 = v34;
    }

    if (_S0 > v51)
    {
      v52 = _S0;
    }

    else
    {
      v52 = v51;
    }

    if (_S0 >= v50)
    {
      v51 = v52;
    }

    else
    {
      v50 = _S0;
    }

    v53 = v51 - v50;
    *(&v60 + v47) = v53;
    *(&v60 + v42) = (v53 / (v48 - v49)) * (*(&v60 + v42) - v49);
  }

  *(&v60 + v45) = 0.0;
  v54 = (((v34 - v61) * 0.59) + ((v30 - v60) * 0.3)) + ((_S0 - v62) * 0.11);
  _S3 = (a5 + a20) - (a5 * a20);
  _S1 = v36 + (v60 + v54);
  _S2 = v39 + (v61 + v54);
  _S4 = v40 + (v62 + v54);
  __asm
  {
    FCVT            H0, S1
    FCVT            H1, S2
    FCVT            H2, S4
    FCVT            H3, S3
  }

  return result;
}

__int16 PDAsaturationPDA@<H0>(__n128 _Q0@<Q0>, __n128 _Q1@<Q1>, __n128 _Q2@<Q2>, double a4@<D3>, float a5@<S4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, uint64_t a9@<X0>, uint64_t a10@<X1>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>, uint64_t a15@<X6>, uint64_t a16@<X7>, __int16 a17, __int16 a18, __int16 a19, float a20)
{
  _H7 = a19;
  _H6 = a18;
  _H16 = a17;
  v60 = *MEMORY[0x1E69E9840];
  __asm
  {
    FCVT            S5, H0
    FCVT            S1, H1
    FCVT            S0, H2
    FCVT            S2, H16
    FCVT            S6, H6
    FCVT            S7, H7
  }

  if (a20 == 1.0)
  {
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v30 = _S5 - (_S5 * a20);
    v31 = _S1 - (_S1 * a20);
    v32 = _S0 - (_S0 * a20);
    _S0 = _S0 * a20;
    _S1 = _S1 * a20;
    _S5 = _S5 * a20;
  }

  v33 = _S2 * a5;
  v34 = _S6 * a5;
  if (a5 == 1.0)
  {
    v33 = _S2;
    v34 = _S6;
    v35 = _S7;
  }

  else
  {
    v35 = _S7 * a5;
  }

  if (a5 == 1.0)
  {
    v36 = v30;
  }

  else
  {
    v36 = (v30 + _S2) - (_S2 * a5);
  }

  if (a5 == 1.0)
  {
    v37 = v31;
  }

  else
  {
    v37 = (v31 + _S6) - (_S6 * a5);
  }

  if (a5 == 1.0)
  {
    v38 = v32;
  }

  else
  {
    v38 = (v32 + _S7) - (_S7 * a5);
  }

  v57 = _S5;
  v58 = _S1;
  v59 = _S0;
  v39 = _S5 >= _S1;
  if (_S5 < _S1)
  {
    v40 = _S5;
  }

  else
  {
    v40 = _S1;
  }

  if (_S5 < _S1)
  {
    v41 = _S1;
  }

  else
  {
    v41 = _S5;
  }

  if (_S0 <= v41)
  {
    v42 = _S5 >= _S1;
  }

  else
  {
    v42 = _S5 < _S1;
  }

  v43 = 2;
  if (_S0 <= v41)
  {
    v44 = _S5 < _S1;
  }

  else
  {
    v44 = 2;
  }

  if (_S0 < v40)
  {
    v45 = _S5 < _S1;
  }

  else
  {
    v43 = _S5 >= _S1;
    v39 = v42;
    v45 = v44;
  }

  v46 = *(&v57 + v45);
  v47 = *(&v57 + v43);
  if (v46 <= v47)
  {
    *(&v57 + v45) = 0.0;
    *(&v57 + v39) = 0.0;
  }

  else
  {
    if (v33 >= v34)
    {
      v48 = v34;
    }

    else
    {
      v48 = v33;
    }

    if (v33 < v34)
    {
      v33 = v34;
    }

    if (v35 > v33)
    {
      v49 = v35;
    }

    else
    {
      v49 = v33;
    }

    if (v35 >= v48)
    {
      v35 = v48;
      v33 = v49;
    }

    v50 = v33 - v35;
    *(&v57 + v45) = v50;
    *(&v57 + v39) = (v50 / (v46 - v47)) * (*(&v57 + v39) - v47);
  }

  *(&v57 + v43) = 0.0;
  v51 = (((_S1 - v58) * 0.59) + ((_S5 - v57) * 0.3)) + ((_S0 - v59) * 0.11);
  _S3 = (a5 + a20) - (a5 * a20);
  _S1 = v36 + (v57 + v51);
  _S2 = v37 + (v58 + v51);
  _S4 = v38 + (v59 + v51);
  __asm
  {
    FCVT            H0, S1
    FCVT            H1, S2
    FCVT            H2, S4
    FCVT            H3, S3
  }

  return result;
}