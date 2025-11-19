unint64_t argb32_image_mark_RGB32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
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

          v29 = bswap32(*v28);
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
            v40 = (bswap32(*v41) & v42) >> v21;
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

        v32 = bswap32(*v31);
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

      v50 = bswap32(*v49);
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
        v61 = (bswap32(*v62) & v63) >> v21;
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

    v53 = bswap32(*v52);
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

      v56 = bswap32(*v55);
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
      v53 = v53 - ((v58 & v53) >> v21) + ((bswap32(*v57) & v58) >> v21);
    }

    v59 = BLEND8_21892[*v44 & 0xF];
    v60 = v50 - ((v59 & v50) >> v51);
    v61 = (v59 & v53) >> v51;
LABEL_77:
    v50 = v60 + v61;
    goto LABEL_78;
  }

  v66 = (v15 - 4);
  v99 = a5;
  v100 = (v11 + 16 * a3);
  do
  {
    v67 = *(v97 + 32);
    v68 = v67 + (v14 >> v13) * v12;
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

          HIDWORD(v73) = __ROL4__(bswap32(*v72), v7) | v9;
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

          HIDWORD(v79) = __ROL4__(bswap32(*v77), v7) | v9;
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

unint64_t argb32_image_mark_RGB24(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
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
  v13 = &v12[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v93 = result;
  v85 = v10;
  v86 = v9;
  if (*(result + 176))
  {
    v82 = *(a2 + 11);
    v80 = ~(-1 << v10);
    v81 = *(a2 + 13);
    v79 = v10 - 4;
    v14 = v13 - 3;
    v77 = a5;
    v78 = -v9;
    v76 = v8 + 16 * a3 + 8;
    while (1)
    {
      v91 = a6;
      if (((v81 - v11) | (v11 - v82)) < 0)
      {
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v15 = ((v11 & v80) >> v79) & 0xF;
        v16 = (v15 - 7) >= 9 ? v78 : v9;
        v17 = weights_21890[v15] & 0xF;
      }

      v18 = *(v93 + 32) + (v11 >> v10) * v9;
      v89 = v11;
      if (v88 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v19 = v76;
        v20 = v77;
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

          v25 = (*v24 << 24) | (v24[1] << 16) | (v24[2] << 8);
          v26 = v22 & 0xF;
          if ((v22 & 0xF) != 0)
          {
            break;
          }

          if (v17)
          {
            v37 = (v23 + v16);
            if (v14 < v23 + v16)
            {
              v37 = v14;
            }

            if (v37 < v12)
            {
              v37 = v12;
            }

            v38 = BLEND8_21892[v17];
            v35 = v25 - ((v38 & v25) >> v17);
            v36 = (((*v37 << 24) | (v37[1] << 16) | (v37[2] << 8)) & v38) >> v17;
            goto LABEL_40;
          }

LABEL_41:
          result = (v25 >> 8) | 0xFF000000;
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

        v27 = (v23 + (v22 >> 4));
        if (v14 < v27)
        {
          v27 = v14;
        }

        if (v27 < v12)
        {
          v27 = v12;
        }

        v28 = (*v27 << 24) | (v27[1] << 16) | (v27[2] << 8);
        if (v17)
        {
          v29 = (v23 + v16);
          if (v14 >= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v14;
          }

          if (v30 < v12)
          {
            v30 = v12;
          }

          v31 = (*v30 << 24) | (v30[1] << 16) | (v30[2] << 8);
          v32 = &v29[v22 >> 4];
          if (v14 < v32)
          {
            v32 = v14;
          }

          if (v32 < v12)
          {
            v32 = v12;
          }

          v33 = BLEND8_21892[v17];
          v25 = v25 - ((v33 & v25) >> v17) + ((v33 & v31) >> v17);
          v28 = v28 - ((v33 & v28) >> v17) + ((((*v32 << 24) | (v32[1] << 16) | (v32[2] << 8)) & v33) >> v17);
        }

        v34 = BLEND8_21892[*v19 & 0xF];
        v35 = v25 - ((v34 & v25) >> v26);
        v36 = (v34 & v28) >> v26;
LABEL_40:
        v25 = v35 + v36;
        goto LABEL_41;
      }

LABEL_83:
      v9 = v86;
      v7 += v87;
      LOBYTE(v10) = v85;
      v11 = v89 + v84;
      a6 = v91 - 1;
      if (v91 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v39 = v76;
    v40 = v77;
    while (1)
    {
      v41 = *(v39 - 1);
      v42 = *v39;
      v43 = v18 + v41;
      if (v14 >= v18 + v41)
      {
        v44 = (v18 + v41);
      }

      else
      {
        v44 = v14;
      }

      if (v44 < v12)
      {
        v44 = v12;
      }

      v45 = (*v44 << 24) | (v44[1] << 16) | (v44[2] << 8);
      v46 = v42 & 0xF;
      if ((v42 & 0xF) != 0)
      {
        break;
      }

      if (v17)
      {
        v57 = (v43 + v16);
        if (v14 < v43 + v16)
        {
          v57 = v14;
        }

        if (v57 < v12)
        {
          v57 = v12;
        }

        v58 = BLEND8_21892[v17];
        v55 = v45 - ((v58 & v45) >> v17);
        v56 = (((*v57 << 24) | (v57[1] << 16) | (v57[2] << 8)) & v58) >> v17;
        goto LABEL_75;
      }

LABEL_76:
      v59 = (v45 >> 8) | 0xFF000000;
      if (v6 != 255)
      {
        result = PDM_15068((v45 >> 8) | 0xFF000000, v6);
        v59 = result;
      }

      if (HIBYTE(v59))
      {
        if (HIBYTE(v59) == 255)
        {
          *v7 = v59;
        }

        else
        {
          result = DplusDM_15070(v7, v59, *v7, ~v59 >> 24);
        }
      }

      v39 += 2;
      ++v7;
      if (!--v40)
      {
        goto LABEL_83;
      }
    }

    v47 = (v43 + (v42 >> 4));
    if (v14 < v47)
    {
      v47 = v14;
    }

    if (v47 < v12)
    {
      v47 = v12;
    }

    v48 = (*v47 << 24) | (v47[1] << 16) | (v47[2] << 8);
    if (v17)
    {
      v49 = (v43 + v16);
      if (v14 >= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v14;
      }

      if (v50 < v12)
      {
        v50 = v12;
      }

      v51 = (*v50 << 24) | (v50[1] << 16) | (v50[2] << 8);
      v52 = &v49[v42 >> 4];
      if (v14 < v52)
      {
        v52 = v14;
      }

      if (v52 < v12)
      {
        v52 = v12;
      }

      v53 = BLEND8_21892[v17];
      v45 = v45 - ((v53 & v45) >> v17) + ((v53 & v51) >> v17);
      v48 = v48 - ((v53 & v48) >> v17) + ((((*v52 << 24) | (v52[1] << 16) | (v52[2] << 8)) & v53) >> v17);
    }

    v54 = BLEND8_21892[*v39 & 0xF];
    v55 = v45 - ((v54 & v45) >> v46);
    v56 = (v54 & v48) >> v46;
LABEL_75:
    v45 = v55 + v56;
    goto LABEL_76;
  }

  v92 = (v8 + 16 * a3);
  v60 = v13 - 3;
  v90 = a5;
  do
  {
    v62 = v11;
    v63 = *(v93 + 32);
    v64 = &v63[(v11 >> v10) * v9];
    v65 = a6;
    if (v88 == 1)
    {
      if (a5 >= 1)
      {
        v66 = v92;
        v67 = v90;
        do
        {
          v68 = *v66;
          v66 += 2;
          v69 = &v64[v68];
          if (v60 < &v64[v68])
          {
            v69 = v60;
          }

          if (v69 < v63)
          {
            v69 = v63;
          }

          result = (*v69 << 16) | (v69[1] << 8) | v69[2] | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          *v7++ = result;
          --v67;
        }

        while (v67);
      }
    }

    else
    {
      v70 = v92;
      v71 = v90;
      if (a5 >= 1)
      {
        do
        {
          v72 = *v70;
          v70 += 2;
          v73 = &v64[v72];
          if (v60 < &v64[v72])
          {
            v73 = v60;
          }

          if (v73 < *(v93 + 32))
          {
            v73 = *(v93 + 32);
          }

          v74 = (*v73 << 16) | (v73[1] << 8) | v73[2];
          v75 = v74 | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(v74 | 0xFF000000, v6);
            v75 = result;
          }

          if (HIBYTE(v75))
          {
            if (HIBYTE(v75) == 255)
            {
              *v7 = v75;
            }

            else
            {
              result = DplusDM_15070(v7, v75, *v7, ~v75 >> 24);
            }
          }

          ++v7;
          --v71;
        }

        while (v71);
      }
    }

    v9 = v86;
    v7 += v87;
    LOBYTE(v10) = v85;
    v11 = v62 + v84;
    a6 = v65 - 1;
  }

  while (v65 != 1);
  return result;
}

unint64_t argb32_image_mark_W8(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
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
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v94 = result;
  v86 = v11;
  v87 = v10;
  if (*(result + 176))
  {
    v83 = *(a2 + 11);
    v81 = ~(-1 << v11);
    v82 = *(a2 + 13);
    v80 = v11 - 4;
    v15 = v14 - 4;
    v78 = a5;
    v79 = -v10;
    v77 = v9 + 16 * a3 + 8;
    while (1)
    {
      if (((v82 - v12) | (v12 - v83)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v12 & v81) >> v80) & 0xF;
        v17 = (v16 - 7) >= 9 ? v79 : v10;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v94 + 32) + (v12 >> v11) * v10;
      v92 = a6;
      v90 = v12;
      if (v89 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v77;
        v21 = v78;
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
            v37 = (v39 & *v38) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = v26 | (65792 * v26) | 0xFF000000;
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

        v28 = (v24 + (v23 >> 4));
        if (v15 < v28)
        {
          v28 = v15;
        }

        if (v28 < v13)
        {
          v28 = v13;
        }

        v29 = *v28;
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

          v32 = *v31;
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
      v10 = v87;
      v8 += v88;
      LOBYTE(v11) = v86;
      v12 = v90 + v85;
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

    v40 = v77;
    v41 = v78;
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

      v46 = *v45;
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
        v57 = (v59 & *v58) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v60 = v46 | (65792 * v46);
      v61 = v60 | 0xFF000000;
      if (v7 != 255)
      {
        result = PDM_15068(v60 | 0xFF000000, v7);
        v61 = result;
      }

      if (HIBYTE(v61))
      {
        if (HIBYTE(v61) == 255)
        {
          *v8 = v61;
        }

        else
        {
          result = DplusDM_15070(v8, v61, *v8, ~v61 >> 24);
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

    v49 = *v48;
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

      v52 = *v51;
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
      v49 = v49 - ((v54 & v49) >> v18) + ((v54 & *v53) >> v18);
    }

    v55 = BLEND8_21892[*v40 & 0xF];
    v56 = v46 - ((v55 & v46) >> v47);
    v57 = (v55 & v49) >> v47;
LABEL_75:
    v46 = v56 + v57;
    goto LABEL_76;
  }

  v93 = (v9 + 16 * a3);
  v62 = v14 - 4;
  v91 = a5;
  do
  {
    v64 = v12;
    v65 = *(v94 + 32);
    v66 = &v65[(v12 >> v11) * v10];
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
          v70 = &v66[v69];
          if (v62 < &v66[v69])
          {
            v70 = v62;
          }

          if (v70 < v65)
          {
            v70 = v65;
          }

          result = *v70 | (*v70 << 8) | (*v70 << 16) | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          *v8++ = result;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v71 = v93;
      v72 = v91;
      if (a5 >= 1)
      {
        do
        {
          v73 = *v71;
          v71 += 2;
          v74 = &v66[v73];
          if (v62 < &v66[v73])
          {
            v74 = v62;
          }

          if (v74 < *(v94 + 32))
          {
            v74 = *(v94 + 32);
          }

          v75 = *v74 | (*v74 << 8) | (*v74 << 16);
          v76 = v75 | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(v75 | 0xFF000000, v7);
            v76 = result;
          }

          if (HIBYTE(v76))
          {
            if (HIBYTE(v76) == 255)
            {
              *v8 = v76;
            }

            else
            {
              result = DplusDM_15070(v8, v76, *v8, ~v76 >> 24);
            }
          }

          ++v8;
          --v72;
        }

        while (v72);
      }
    }

    v10 = v87;
    v8 += v88;
    LOBYTE(v11) = v86;
    v12 = v64 + v85;
    --a6;
  }

  while (a6);
  return result;
}

_DWORD *DplusDAM(_DWORD *result, unsigned int a2, int a3, int a4, int a5)
{
  v5 = (BYTE1(a3) | (a4 << 16)) * a5 + 8388736;
  v6 = (((v5 >> 8) & 0xFF00FF) + v5) & 0xFF00FF00 | ((((((a3 & 0xFF00FFu) * a5 + 8388736) >> 8) & 0xFF00FF) + (a3 & 0xFF00FF) * a5 + 8388736) >> 8) & 0xFF00FF;
  v7 = (((v6 | (v6 << 40)) >> 8) & 0xFF00FF00FF00FFLL) + (((a2 | (a2 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  *result = ((((v7 & 0x100010001000100) - ((v7 & 0x100010001000100) >> 8)) | v7) & 0xFF00FF00FF00FFLL | (((((v7 & 0x100010001000100) - ((v7 & 0x100010001000100) >> 8)) | v7) & 0xFF00FF00FF00FFLL) << 40)) >> 32;
  return result;
}

_DWORD *DAM(_DWORD *result, int a2, unsigned __int8 a3, int a4)
{
  v4 = a2 & 0xFF00FF;
  v5 = a2 & 0xFFFFFF | (a3 << 24);
  v6 = ((v5 >> 8) & 0xFF00FF) * (a4 ^ 0xFF) + 8388736;
  v7 = (((v6 >> 8) & 0xFF00FF) + v6) & 0xFF00FF00 | (((((v4 * (a4 ^ 0xFFu) + 8388736) >> 8) & 0xFF00FF) + v4 * (a4 ^ 0xFF) + 8388736) >> 8) & 0xFF00FF;
  v8 = (((v5 | (v5 << 40)) >> 8) & 0xFF00FF00FF00FFLL | 0x100010001000100) - (((v7 | (v7 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  *result = (((v8 & 0x100010001000100) - ((v8 & 0x100010001000100uLL) >> 8)) & v8 | ((((v8 & 0x100010001000100) - ((v8 & 0x100010001000100uLL) >> 8)) & v8) << 40)) >> 32;
  return result;
}

unint64_t argb32_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 136);
  if (v2)
  {
    v439 = *(result + 4);
    v3 = v439;
    v461 = *(result + 8);
    v462 = *(result + 48);
    v5 = *(result + 88);
    v4 = *(result + 96);
    v6 = *(result + 28) >> 2;
    v7 = (*(result + 40) + 4 * v6 * *(result + 16) + 4 * *(result + 12));
    v8 = *(result + 124);
    v9 = (v2 + *(result + 108) * v8 + *(result + 104));
    v10 = *(result + 56);
    v11 = *(result + 60);
    v12 = *(result + 76);
    if (*(result + 1) << 8 != 256)
    {
      LODWORD(v13) = *(result + 64);
      v19 = *(result + 68);
      v20 = v12 >> 2;
      v21 = v4 != 0;
      v438 = v8 - v439;
      v437 = v6 - v439;
      if (v5)
      {
        v434 = 0;
        v22 = v13;
        v23 = v19;
        v435 = v5 + 4 * v20 * v19;
        v436 = v20;
        v24 = v5 + 4 * v20 * (v11 % v19);
        v14 = v24 + 4 * (v10 % v13);
        v25 = v24 + 4 * v13;
        v26 = 1;
        v460 = v14;
LABEL_16:
        v440 = v21;
        switch(a2)
        {
          case 0:
            do
            {
              v29 = v439;
              do
              {
                v30 = *v9;
                if (*v9)
                {
                  if (v30 == 255)
                  {
                    result = 0;
                  }

                  else
                  {
                    result = PDM_15068(*v7, v30 ^ 0xFFu);
                  }

                  *v7 = result;
                }

                v9 += v26;
                v7 += v26;
                --v29;
              }

              while (v29);
              v9 += v438;
              v7 += v437;
              --v461;
            }

            while (v461);
            return result;
          case 1:
            v200 = v462 == 0 || v21;
            v201 = -v22;
            v202 = -(v436 * v23);
            v203 = 4 * v26;
            if (v200)
            {
              do
              {
                v204 = v439;
                do
                {
                  v205 = *v9;
                  if (*v9)
                  {
                    if (v205 == 255)
                    {
                      *v7 = *v14;
                    }

                    else
                    {
                      result = DMplusDM_15069(v7, *v14, v205, *v7, v205 ^ 0xFFu);
                    }
                  }

                  v9 += v26;
                  v206 = v14 + 4 * v26;
                  if (v206 >= v25)
                  {
                    v207 = v201;
                  }

                  else
                  {
                    v207 = 0;
                  }

                  v14 = v206 + 4 * v207;
                  v7 = (v7 + v203);
                  --v204;
                }

                while (v204);
                v9 += v438;
                v7 += v437;
                v208 = v460;
                v209 = v460 + 4 * v436;
                if (v209 >= v435)
                {
                  v210 = v202;
                }

                else
                {
                  v210 = 0;
                }

                v211 = v209 + 4 * v210;
                v212 = v25 + 4 * v210 + 4 * v436;
                if (v434)
                {
                  v14 += 4 * v436;
                }

                else
                {
                  v25 = v212;
                  v208 = v211;
                  v14 = v211;
                }

                v44 = v461 == 1;
                v460 = v208;
                --v461;
              }

              while (!v44);
            }

            else
            {
              do
              {
                v213 = v439;
                do
                {
                  v214 = *v9;
                  if (*v9)
                  {
                    if (v214 == 255)
                    {
                      *v7 = *v14 | 0xFF000000;
                    }

                    else
                    {
                      result = DMplusDAM(v7, *v7, v214 ^ 0xFFu, *v14, 255, v214);
                    }
                  }

                  v9 += v26;
                  v215 = v14 + 4 * v26;
                  if (v215 >= v25)
                  {
                    v216 = v201;
                  }

                  else
                  {
                    v216 = 0;
                  }

                  v14 = v215 + 4 * v216;
                  v7 = (v7 + v203);
                  --v213;
                }

                while (v213);
                v9 += v438;
                v7 += v437;
                v217 = v460;
                v218 = v460 + 4 * v436;
                if (v218 >= v435)
                {
                  v219 = v202;
                }

                else
                {
                  v219 = 0;
                }

                v220 = v218 + 4 * v219;
                v221 = v25 + 4 * v219 + 4 * v436;
                if (v434)
                {
                  v14 += 4 * v436;
                }

                else
                {
                  v25 = v221;
                  v217 = v220;
                  v14 = v220;
                }

                v44 = v461 == 1;
                v460 = v217;
                --v461;
              }

              while (!v44);
            }

            return result;
          case 2:
            v149 = -v22;
            v150 = -(v436 * v23);
            while (1)
            {
              v151 = v439;
              do
              {
                v152 = *v9;
                if (!*v9)
                {
                  goto LABEL_232;
                }

                if (v152 == 255)
                {
                  v153 = *v14;
                  v154 = HIBYTE(*v14);
                  if (!v154)
                  {
                    goto LABEL_232;
                  }

                  if (v154 == 255)
                  {
                    *v7 = v153;
                    goto LABEL_232;
                  }
                }

                else
                {
                  result = PDM_15068(*v14, v152);
                  if (!BYTE3(result))
                  {
                    goto LABEL_232;
                  }

                  v153 = result;
                }

                result = DplusDM_15070(v7, v153, *v7, ~v153 >> 24);
LABEL_232:
                v9 += v26;
                v155 = v14 + 4 * v26;
                if (v155 >= v25)
                {
                  v156 = v149;
                }

                else
                {
                  v156 = 0;
                }

                v14 = v155 + 4 * v156;
                v7 += v26;
                --v151;
              }

              while (v151);
              v9 += v438;
              v7 += v437;
              v157 = v460;
              v158 = v460 + 4 * v436;
              if (v158 >= v435)
              {
                v159 = v150;
              }

              else
              {
                v159 = 0;
              }

              v160 = v158 + 4 * v159;
              v161 = v25 + 4 * v159 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v161;
                v157 = v160;
                v14 = v160;
              }

              v44 = v461 == 1;
              v460 = v157;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 3:
            v175 = -v22;
            v176 = -(v436 * v23);
            do
            {
              v177 = v439;
              do
              {
                v178 = *v9;
                if (*v9)
                {
                  if (v178 == 255)
                  {
                    v179 = HIBYTE(*v14);
                    if (!v21)
                    {
                      LOBYTE(v179) = -1;
                    }

                    result = DAM(v7, *v14, v179, *(v7 + 3));
                  }

                  else
                  {
                    v180 = HIBYTE(*v14);
                    if (!v21)
                    {
                      LOBYTE(v180) = -1;
                    }

                    result = DMplusDAM(v7, *v7, v178 ^ 0xFFu, *v14, v180, ((HIBYTE(*v7) * v178 + 128 + ((HIBYTE(*v7) * v178 + 128) >> 8)) >> 8));
                  }
                }

                v9 += v26;
                v181 = v14 + 4 * v26;
                if (v181 >= v25)
                {
                  v182 = v175;
                }

                else
                {
                  v182 = 0;
                }

                v14 = v181 + 4 * v182;
                v7 += v26;
                --v177;
              }

              while (v177);
              v9 += v438;
              v7 += v437;
              v183 = v460;
              v184 = v460 + 4 * v436;
              if (v184 >= v435)
              {
                v185 = v176;
              }

              else
              {
                v185 = 0;
              }

              v186 = v184 + 4 * v185;
              v187 = v25 + 4 * v185 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v187;
                v183 = v186;
                v14 = v186;
              }

              v44 = v461 == 1;
              v460 = v183;
              --v461;
            }

            while (!v44);
            return result;
          case 4:
            v85 = -v22;
            v86 = -(v436 * v23);
            do
            {
              v87 = v439;
              do
              {
                v88 = *v9;
                if (*v9)
                {
                  if (v88 == 255)
                  {
                    v89 = HIBYTE(*v14);
                    if (!v21)
                    {
                      LOBYTE(v89) = -1;
                    }

                    result = DAM(v7, *v14, v89, *(v7 + 3) ^ 0xFFu);
                  }

                  else
                  {
                    v90 = HIBYTE(*v14);
                    if (!v21)
                    {
                      LOBYTE(v90) = -1;
                    }

                    result = DMplusDAM(v7, *v7, v88 ^ 0xFFu, *v14, v90, (((~*v7 >> 24) * v88 + 128 + (((~*v7 >> 24) * v88 + 128) >> 8)) >> 8));
                  }
                }

                v9 += v26;
                v91 = v14 + 4 * v26;
                if (v91 >= v25)
                {
                  v92 = v85;
                }

                else
                {
                  v92 = 0;
                }

                v14 = v91 + 4 * v92;
                v7 += v26;
                --v87;
              }

              while (v87);
              v9 += v438;
              v7 += v437;
              v93 = v460;
              v94 = v460 + 4 * v436;
              if (v94 >= v435)
              {
                v95 = v86;
              }

              else
              {
                v95 = 0;
              }

              v96 = v94 + 4 * v95;
              v97 = v25 + 4 * v95 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v97;
                v93 = v96;
                v14 = v96;
              }

              v44 = v461 == 1;
              v460 = v93;
              --v461;
            }

            while (!v44);
            return result;
          case 5:
            v261 = -v22;
            v262 = -(v436 * v23);
            do
            {
              v263 = v439;
              do
              {
                if (*v9)
                {
                  v264 = PDM_15068(*v14, *v9);
                  result = DMplusDM_15069(v7, v264, HIBYTE(*v7), *v7, ~v264 >> 24);
                }

                v9 += v26;
                v265 = v14 + 4 * v26;
                if (v265 >= v25)
                {
                  v266 = v261;
                }

                else
                {
                  v266 = 0;
                }

                v14 = v265 + 4 * v266;
                v7 += v26;
                --v263;
              }

              while (v263);
              v9 += v438;
              v7 += v437;
              v267 = v460;
              v268 = v460 + 4 * v436;
              if (v268 >= v435)
              {
                v269 = v262;
              }

              else
              {
                v269 = 0;
              }

              v270 = v268 + 4 * v269;
              v271 = v25 + 4 * v269 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v271;
                v267 = v270;
                v14 = v270;
              }

              v44 = v461 == 1;
              v460 = v267;
              --v461;
            }

            while (!v44);
            return result;
          case 6:
            v298 = -v22;
            v464 = -(v436 * v23);
            do
            {
              v299 = v439;
              do
              {
                v300 = *v9;
                if (*v9 && ~HIBYTE(*v7))
                {
                  if (~HIBYTE(*v7) == 255)
                  {
                    v301 = HIBYTE(*v14);
                    if (!v21)
                    {
                      LOBYTE(v301) = -1;
                    }

                    result = DAM(v7, *v14, v301, v300);
                  }

                  else
                  {
                    v302 = HIBYTE(*v14);
                    if (!v21)
                    {
                      LOBYTE(v302) = -1;
                    }

                    result = DplusDAM(v7, *v7, *v14, v302, ((~HIBYTE(*v7) * v300 + 128 + ((~HIBYTE(*v7) * v300 + 128) >> 8)) >> 8));
                  }
                }

                v9 += v26;
                v303 = v14 + 4 * v26;
                if (v303 >= v25)
                {
                  v304 = v298;
                }

                else
                {
                  v304 = 0;
                }

                v14 = v303 + 4 * v304;
                v7 += v26;
                --v299;
              }

              while (v299);
              v9 += v438;
              v7 += v437;
              v305 = v460;
              v306 = v460 + 4 * v436;
              v307 = v464;
              if (v306 < v435)
              {
                v307 = 0;
              }

              v308 = v306 + 4 * v307;
              v309 = v25 + 4 * v307 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v309;
                v305 = v308;
                v14 = v308;
              }

              v44 = v461 == 1;
              v460 = v305;
              --v461;
            }

            while (!v44);
            return result;
          case 7:
            v188 = -v22;
            v189 = -(v436 * v23);
            do
            {
              v190 = v439;
              do
              {
                v191 = *v9;
                if (*v9)
                {
                  if (v191 == 255)
                  {
                    result = PDM_15068(*v7, *(v14 + 3));
                    *v7 = result;
                  }

                  else
                  {
                    v192 = *(v14 + 3) * v191 + 128;
                    result = DMplusDM_15069(v7, *v7, ((v192 + (v192 >> 8)) >> 8), *v7, v191 ^ 0xFFu);
                  }
                }

                v9 += v26;
                v193 = v14 + 4 * v26;
                if (v193 >= v25)
                {
                  v194 = v188;
                }

                else
                {
                  v194 = 0;
                }

                v14 = v193 + 4 * v194;
                v7 += v26;
                --v190;
              }

              while (v190);
              v9 += v438;
              v7 += v437;
              v195 = v460;
              v196 = v460 + 4 * v436;
              if (v196 >= v435)
              {
                v197 = v189;
              }

              else
              {
                v197 = 0;
              }

              v198 = v196 + 4 * v197;
              v199 = v25 + 4 * v197 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v199;
                v195 = v198;
                v14 = v198;
              }

              v44 = v461 == 1;
              v460 = v195;
              --v461;
            }

            while (!v44);
            return result;
          case 8:
            v334 = -v22;
            v465 = -(v436 * v23);
            do
            {
              v335 = v439;
              do
              {
                v336 = *v9;
                if (*v9)
                {
                  if (v336 == 255)
                  {
                    LOBYTE(v337) = *(v14 + 3);
                  }

                  else
                  {
                    v337 = (*(v14 + 3) * v336 + 128 + ((*(v14 + 3) * v336 + 128) >> 8)) >> 8;
                  }

                  result = PDM_15068(*v7, ~v337);
                  *v7 = result;
                }

                v9 += v26;
                v338 = v14 + 4 * v26;
                if (v338 >= v25)
                {
                  v339 = v334;
                }

                else
                {
                  v339 = 0;
                }

                v14 = v338 + 4 * v339;
                v7 += v26;
                --v335;
              }

              while (v335);
              v9 += v438;
              v7 += v437;
              v340 = v460;
              v341 = v460 + 4 * v436;
              v342 = v465;
              if (v341 < v435)
              {
                v342 = 0;
              }

              v343 = v341 + 4 * v342;
              v344 = v25 + 4 * v342 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v344;
                v340 = v343;
                v14 = v343;
              }

              v44 = v461 == 1;
              v460 = v340;
              --v461;
            }

            while (!v44);
            return result;
          case 9:
            v111 = -v22;
            v112 = -(v436 * v23);
            do
            {
              v113 = v439;
              do
              {
                v114 = *v9;
                if (*v9)
                {
                  v115 = PDM_15068(*v14, *v9);
                  result = DMplusDM_15069(v7, v115, ~*v7 >> 24, *v7, (~v114 + HIBYTE(v115)));
                }

                v9 += v26;
                v116 = v14 + 4 * v26;
                if (v116 >= v25)
                {
                  v117 = v111;
                }

                else
                {
                  v117 = 0;
                }

                v14 = v116 + 4 * v117;
                v7 += v26;
                --v113;
              }

              while (v113);
              v9 += v438;
              v7 += v437;
              v118 = v460;
              v119 = v460 + 4 * v436;
              if (v119 >= v435)
              {
                v120 = v112;
              }

              else
              {
                v120 = 0;
              }

              v121 = v119 + 4 * v120;
              v122 = v25 + 4 * v120 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v122;
                v118 = v121;
                v14 = v121;
              }

              v44 = v461 == 1;
              v460 = v118;
              --v461;
            }

            while (!v44);
            return result;
          case 10:
            v323 = -v22;
            v324 = -(v436 * v23);
            do
            {
              v325 = v439;
              do
              {
                if (*v9)
                {
                  v326 = PDM_15068(*v14, *v9);
                  result = DMplusDM_15069(v7, v326, ~*v7 >> 24, *v7, ~v326 >> 24);
                }

                v9 += v26;
                v327 = v14 + 4 * v26;
                if (v327 >= v25)
                {
                  v328 = v323;
                }

                else
                {
                  v328 = 0;
                }

                v14 = v327 + 4 * v328;
                v7 += v26;
                --v325;
              }

              while (v325);
              v9 += v438;
              v7 += v437;
              v329 = v460;
              v330 = v460 + 4 * v436;
              if (v330 >= v435)
              {
                v331 = v324;
              }

              else
              {
                v331 = 0;
              }

              v332 = v330 + 4 * v331;
              v333 = v25 + 4 * v331 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v333;
                v329 = v332;
                v14 = v332;
              }

              v44 = v461 == 1;
              v460 = v329;
              --v461;
            }

            while (!v44);
            return result;
          case 11:
            v71 = -v22;
            v72 = -(v436 * v23);
            do
            {
              v73 = v439;
              do
              {
                v74 = *v9;
                if (*v9)
                {
                  v75 = PDM_15068(*v14, *v9);
                  v76 = HIBYTE(*v7);
                  if (!v462)
                  {
                    LOBYTE(v76) = -1;
                  }

                  if (v440)
                  {
                    v77 = HIBYTE(v75);
                  }

                  else
                  {
                    v77 = v74;
                  }

                  result = DAplusdDA_15071(v7, *v7, v76, v75, v77);
                }

                v9 += v26;
                v78 = v14 + 4 * v26;
                if (v78 >= v25)
                {
                  v79 = v71;
                }

                else
                {
                  v79 = 0;
                }

                v14 = v78 + 4 * v79;
                v7 += v26;
                --v73;
              }

              while (v73);
              v9 += v438;
              v7 += v437;
              v80 = v460;
              v81 = v460 + 4 * v436;
              if (v81 >= v435)
              {
                v82 = v72;
              }

              else
              {
                v82 = 0;
              }

              v83 = v81 + 4 * v82;
              v84 = v25 + 4 * v82 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v84;
                v80 = v83;
                v14 = v83;
              }

              v44 = v461 == 1;
              v460 = v80;
              --v461;
            }

            while (!v44);
            return result;
          case 12:
            v98 = -v22;
            v463 = -(v436 * v23);
            do
            {
              v99 = v439;
              do
              {
                v100 = *v9;
                if (*v9)
                {
                  result = PDM_15068(*v14, *v9);
                  v101 = *v7;
                  v102 = BYTE3(result);
                  if (!v440)
                  {
                    v102 = v100;
                  }

                  v103 = ((v101 >> 8) & 0xFF00FF) + BYTE1(result) + (v102 << 16);
                  *v7 = (v103 << 8) & 0xFF00FF00 | ((v101 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF | (15 * (v103 & 0x1000100 | (((v101 & 0xFF00FF) + (result & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v103 & 0x1000100 | (((v101 & 0xFF00FF) + (result & 0xFF00FF)) >> 8) & 0x10001));
                }

                v9 += v26;
                v104 = v14 + 4 * v26;
                if (v104 >= v25)
                {
                  v105 = v98;
                }

                else
                {
                  v105 = 0;
                }

                v14 = v104 + 4 * v105;
                v7 += v26;
                --v99;
              }

              while (v99);
              v9 += v438;
              v7 += v437;
              v106 = v460;
              v107 = v460 + 4 * v436;
              v108 = v463;
              if (v107 < v435)
              {
                v108 = 0;
              }

              v109 = v107 + 4 * v108;
              v110 = v25 + 4 * v108 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v110;
                v106 = v109;
                v14 = v109;
              }

              v44 = v461 == 1;
              v460 = v106;
              --v461;
            }

            while (!v44);
            return result;
          case 13:
            v285 = -v22;
            v451 = -(v436 * v23);
            while (1)
            {
              v286 = v439;
              do
              {
                v287 = *v9;
                if (!*v9)
                {
                  goto LABEL_467;
                }

                result = PDM_15068(*v14, *v9);
                v288 = result;
                if (v21)
                {
                  v287 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_467;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v289 = 255;
LABEL_465:
                  result = PDAmultiplyPDA_15072(result, v289, v288, v287);
                  v290 = result;
                  goto LABEL_466;
                }

                v289 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_465;
                }

                v290 = v288 & 0xFFFFFF | (v287 << 24);
LABEL_466:
                *v7 = v290;
LABEL_467:
                v9 += v26;
                v291 = v14 + 4 * v26;
                if (v291 >= v25)
                {
                  v292 = v285;
                }

                else
                {
                  v292 = 0;
                }

                v14 = v291 + 4 * v292;
                v7 += v26;
                --v286;
              }

              while (v286);
              v9 += v438;
              v7 += v437;
              v293 = v460;
              v294 = v460 + 4 * v436;
              v295 = v451;
              if (v294 < v435)
              {
                v295 = 0;
              }

              v296 = v294 + 4 * v295;
              v297 = v25 + 4 * v295 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v297;
                v293 = v296;
                v14 = v296;
              }

              v44 = v461 == 1;
              v460 = v293;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 14:
            v58 = -v22;
            v443 = -(v436 * v23);
            while (1)
            {
              v59 = v439;
              do
              {
                v60 = *v9;
                if (!*v9)
                {
                  goto LABEL_84;
                }

                result = PDM_15068(*v14, *v9);
                v61 = result;
                if (v21)
                {
                  v60 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_84;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v62 = 255;
LABEL_82:
                  result = PDAscreenPDA_15073(result, v62, v61, v60);
                  v63 = result;
                  goto LABEL_83;
                }

                v62 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_82;
                }

                v63 = v61 & 0xFFFFFF | (v60 << 24);
LABEL_83:
                *v7 = v63;
LABEL_84:
                v9 += v26;
                v64 = v14 + 4 * v26;
                if (v64 >= v25)
                {
                  v65 = v58;
                }

                else
                {
                  v65 = 0;
                }

                v14 = v64 + 4 * v65;
                v7 += v26;
                --v59;
              }

              while (v59);
              v9 += v438;
              v7 += v437;
              v66 = v460;
              v67 = v460 + 4 * v436;
              v68 = v443;
              if (v67 < v435)
              {
                v68 = 0;
              }

              v69 = v67 + 4 * v68;
              v70 = v25 + 4 * v68 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v70;
                v66 = v69;
                v14 = v69;
              }

              v44 = v461 == 1;
              v460 = v66;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 15:
            v162 = -v22;
            v446 = -(v436 * v23);
            while (1)
            {
              v163 = v439;
              do
              {
                v164 = *v9;
                if (!*v9)
                {
                  goto LABEL_256;
                }

                result = PDM_15068(*v14, *v9);
                v165 = result;
                if (v21)
                {
                  v164 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_256;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v166 = 255;
LABEL_254:
                  result = PDAoverlayPDA_15074(result, v166, v165, v164);
                  v167 = result;
                  goto LABEL_255;
                }

                v166 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_254;
                }

                v167 = v165 & 0xFFFFFF | (v164 << 24);
LABEL_255:
                *v7 = v167;
LABEL_256:
                v9 += v26;
                v168 = v14 + 4 * v26;
                if (v168 >= v25)
                {
                  v169 = v162;
                }

                else
                {
                  v169 = 0;
                }

                v14 = v168 + 4 * v169;
                v7 += v26;
                --v163;
              }

              while (v163);
              v9 += v438;
              v7 += v437;
              v170 = v460;
              v171 = v460 + 4 * v436;
              v172 = v446;
              if (v171 < v435)
              {
                v172 = 0;
              }

              v173 = v171 + 4 * v172;
              v174 = v25 + 4 * v172 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v174;
                v170 = v173;
                v14 = v173;
              }

              v44 = v461 == 1;
              v460 = v170;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 16:
            v45 = -v22;
            v442 = -(v436 * v23);
            while (1)
            {
              v46 = v439;
              do
              {
                v47 = *v9;
                if (!*v9)
                {
                  goto LABEL_61;
                }

                result = PDM_15068(*v14, *v9);
                v48 = result;
                if (v21)
                {
                  v47 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_61;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v49 = 255;
LABEL_59:
                  result = PDAdarkenPDA_15076(result, v49, v48, v47);
                  v50 = result;
                  goto LABEL_60;
                }

                v49 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_59;
                }

                v50 = v48 & 0xFFFFFF | (v47 << 24);
LABEL_60:
                *v7 = v50;
LABEL_61:
                v9 += v26;
                v51 = v14 + 4 * v26;
                if (v51 >= v25)
                {
                  v52 = v45;
                }

                else
                {
                  v52 = 0;
                }

                v14 = v51 + 4 * v52;
                v7 += v26;
                --v46;
              }

              while (v46);
              v9 += v438;
              v7 += v437;
              v53 = v460;
              v54 = v460 + 4 * v436;
              v55 = v442;
              if (v54 < v435)
              {
                v55 = 0;
              }

              v56 = v54 + 4 * v55;
              v57 = v25 + 4 * v55 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v57;
                v53 = v56;
                v14 = v56;
              }

              v44 = v461 == 1;
              v460 = v53;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 17:
            v235 = -v22;
            v448 = -(v436 * v23);
            while (1)
            {
              v236 = v439;
              do
              {
                v237 = *v9;
                if (!*v9)
                {
                  goto LABEL_381;
                }

                result = PDM_15068(*v14, *v9);
                v238 = result;
                if (v21)
                {
                  v237 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_381;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v239 = 255;
LABEL_379:
                  result = PDAlightenPDA_15075(result, v239, v238, v237);
                  v240 = result;
                  goto LABEL_380;
                }

                v239 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_379;
                }

                v240 = v238 & 0xFFFFFF | (v237 << 24);
LABEL_380:
                *v7 = v240;
LABEL_381:
                v9 += v26;
                v241 = v14 + 4 * v26;
                if (v241 >= v25)
                {
                  v242 = v235;
                }

                else
                {
                  v242 = 0;
                }

                v14 = v241 + 4 * v242;
                v7 += v26;
                --v236;
              }

              while (v236);
              v9 += v438;
              v7 += v437;
              v243 = v460;
              v244 = v460 + 4 * v436;
              v245 = v448;
              if (v244 < v435)
              {
                v245 = 0;
              }

              v246 = v244 + 4 * v245;
              v247 = v25 + 4 * v245 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v247;
                v243 = v246;
                v14 = v246;
              }

              v44 = v461 == 1;
              v460 = v243;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 18:
            v310 = -v22;
            v452 = -(v436 * v23);
            while (1)
            {
              v311 = v439;
              do
              {
                v312 = *v9;
                if (!*v9)
                {
                  goto LABEL_513;
                }

                result = PDM_15068(*v14, *v9);
                v313 = result;
                if (v21)
                {
                  v312 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_513;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v314 = 255;
LABEL_511:
                  result = PDAcolordodgePDA_15077(result, v314, v313, v312);
                  v315 = result;
                  goto LABEL_512;
                }

                v314 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_511;
                }

                v315 = v313 & 0xFFFFFF | (v312 << 24);
LABEL_512:
                *v7 = v315;
LABEL_513:
                v9 += v26;
                v316 = v14 + 4 * v26;
                if (v316 >= v25)
                {
                  v317 = v310;
                }

                else
                {
                  v317 = 0;
                }

                v14 = v316 + 4 * v317;
                v7 += v26;
                --v311;
              }

              while (v311);
              v9 += v438;
              v7 += v437;
              v318 = v460;
              v319 = v460 + 4 * v436;
              v320 = v452;
              if (v319 < v435)
              {
                v320 = 0;
              }

              v321 = v319 + 4 * v320;
              v322 = v25 + 4 * v320 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v322;
                v318 = v321;
                v14 = v321;
              }

              v44 = v461 == 1;
              v460 = v318;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 19:
            v370 = -v22;
            v455 = -(v436 * v23);
            while (1)
            {
              v371 = v439;
              do
              {
                v372 = *v9;
                if (!*v9)
                {
                  goto LABEL_618;
                }

                result = PDM_15068(*v14, *v9);
                v373 = result;
                if (v21)
                {
                  v372 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_618;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v374 = 255;
LABEL_616:
                  result = PDAcolorburnPDA_15078(result, v374, v373, v372);
                  v375 = result;
                  goto LABEL_617;
                }

                v374 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_616;
                }

                v375 = v373 & 0xFFFFFF | (v372 << 24);
LABEL_617:
                *v7 = v375;
LABEL_618:
                v9 += v26;
                v376 = v14 + 4 * v26;
                if (v376 >= v25)
                {
                  v377 = v370;
                }

                else
                {
                  v377 = 0;
                }

                v14 = v376 + 4 * v377;
                v7 += v26;
                --v371;
              }

              while (v371);
              v9 += v438;
              v7 += v437;
              v378 = v460;
              v379 = v460 + 4 * v436;
              v380 = v455;
              if (v379 < v435)
              {
                v380 = 0;
              }

              v381 = v379 + 4 * v380;
              v382 = v25 + 4 * v380 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v382;
                v378 = v381;
                v14 = v381;
              }

              v44 = v461 == 1;
              v460 = v378;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 20:
            v248 = -v22;
            v449 = -(v436 * v23);
            while (1)
            {
              v249 = v439;
              do
              {
                v250 = *v9;
                if (!*v9)
                {
                  goto LABEL_404;
                }

                result = PDM_15068(*v14, *v9);
                v251 = result;
                if (v21)
                {
                  v250 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_404;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v252 = 255;
LABEL_402:
                  result = PDAsoftlightPDA_15080(result, v252, v251, v250);
                  v253 = result;
                  goto LABEL_403;
                }

                v252 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_402;
                }

                v253 = v251 & 0xFFFFFF | (v250 << 24);
LABEL_403:
                *v7 = v253;
LABEL_404:
                v9 += v26;
                v254 = v14 + 4 * v26;
                if (v254 >= v25)
                {
                  v255 = v248;
                }

                else
                {
                  v255 = 0;
                }

                v14 = v254 + 4 * v255;
                v7 += v26;
                --v249;
              }

              while (v249);
              v9 += v438;
              v7 += v437;
              v256 = v460;
              v257 = v460 + 4 * v436;
              v258 = v449;
              if (v257 < v435)
              {
                v258 = 0;
              }

              v259 = v257 + 4 * v258;
              v260 = v25 + 4 * v258 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v260;
                v256 = v259;
                v14 = v259;
              }

              v44 = v461 == 1;
              v460 = v256;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 21:
            v272 = -v22;
            v450 = -(v436 * v23);
            while (1)
            {
              v273 = v439;
              do
              {
                v274 = *v9;
                if (!*v9)
                {
                  goto LABEL_444;
                }

                result = PDM_15068(*v14, *v9);
                v275 = result;
                if (v21)
                {
                  v274 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_444;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v276 = 255;
LABEL_442:
                  result = PDAhardlightPDA_15079(result, v276, v275, v274);
                  v277 = result;
                  goto LABEL_443;
                }

                v276 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_442;
                }

                v277 = v275 & 0xFFFFFF | (v274 << 24);
LABEL_443:
                *v7 = v277;
LABEL_444:
                v9 += v26;
                v278 = v14 + 4 * v26;
                if (v278 >= v25)
                {
                  v279 = v272;
                }

                else
                {
                  v279 = 0;
                }

                v14 = v278 + 4 * v279;
                v7 += v26;
                --v273;
              }

              while (v273);
              v9 += v438;
              v7 += v437;
              v280 = v460;
              v281 = v460 + 4 * v436;
              v282 = v450;
              if (v281 < v435)
              {
                v282 = 0;
              }

              v283 = v281 + 4 * v282;
              v284 = v25 + 4 * v282 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v284;
                v280 = v283;
                v14 = v283;
              }

              v44 = v461 == 1;
              v460 = v280;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 22:
            v357 = -v22;
            v454 = -(v436 * v23);
            while (1)
            {
              v358 = v439;
              do
              {
                v359 = *v9;
                if (!*v9)
                {
                  goto LABEL_595;
                }

                result = PDM_15068(*v14, *v9);
                v360 = result;
                if (v21)
                {
                  v359 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_595;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v361 = 255;
LABEL_593:
                  result = PDAdifferencePDA_15081(result, v361, v360, v359);
                  v362 = result;
                  goto LABEL_594;
                }

                v361 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_593;
                }

                v362 = v360 & 0xFFFFFF | (v359 << 24);
LABEL_594:
                *v7 = v362;
LABEL_595:
                v9 += v26;
                v363 = v14 + 4 * v26;
                if (v363 >= v25)
                {
                  v364 = v357;
                }

                else
                {
                  v364 = 0;
                }

                v14 = v363 + 4 * v364;
                v7 += v26;
                --v358;
              }

              while (v358);
              v9 += v438;
              v7 += v437;
              v365 = v460;
              v366 = v460 + 4 * v436;
              v367 = v454;
              if (v366 < v435)
              {
                v367 = 0;
              }

              v368 = v366 + 4 * v367;
              v369 = v25 + 4 * v367 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v369;
                v365 = v368;
                v14 = v368;
              }

              v44 = v461 == 1;
              v460 = v365;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 23:
            v383 = -v22;
            v456 = -(v436 * v23);
            while (1)
            {
              v384 = v439;
              do
              {
                v385 = *v9;
                if (!*v9)
                {
                  goto LABEL_641;
                }

                result = PDM_15068(*v14, *v9);
                v386 = result;
                if (v21)
                {
                  v385 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_641;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v387 = 255;
LABEL_639:
                  result = PDAexclusionPDA_15082(result, v387, v386, v385);
                  v388 = result;
                  goto LABEL_640;
                }

                v387 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_639;
                }

                v388 = v386 & 0xFFFFFF | (v385 << 24);
LABEL_640:
                *v7 = v388;
LABEL_641:
                v9 += v26;
                v389 = v14 + 4 * v26;
                if (v389 >= v25)
                {
                  v390 = v383;
                }

                else
                {
                  v390 = 0;
                }

                v14 = v389 + 4 * v390;
                v7 += v26;
                --v384;
              }

              while (v384);
              v9 += v438;
              v7 += v437;
              v391 = v460;
              v392 = v460 + 4 * v436;
              v393 = v456;
              if (v392 < v435)
              {
                v393 = 0;
              }

              v394 = v392 + 4 * v393;
              v395 = v25 + 4 * v393 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v395;
                v391 = v394;
                v14 = v394;
              }

              v44 = v461 == 1;
              v460 = v391;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 24:
            v136 = -v22;
            v445 = -(v436 * v23);
            while (1)
            {
              v137 = v439;
              do
              {
                v138 = *v9;
                if (!*v9)
                {
                  goto LABEL_210;
                }

                result = PDM_15068(*v14, *v9);
                v139 = result;
                if (v21)
                {
                  v138 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_210;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v140 = 255;
LABEL_208:
                  result = PDAhuePDA_15083(result, v140, v139, v138);
                  v141 = result;
                  goto LABEL_209;
                }

                v140 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_208;
                }

                v141 = v139 & 0xFFFFFF | (v138 << 24);
LABEL_209:
                *v7 = v141;
LABEL_210:
                v9 += v26;
                v142 = v14 + 4 * v26;
                if (v142 >= v25)
                {
                  v143 = v136;
                }

                else
                {
                  v143 = 0;
                }

                v14 = v142 + 4 * v143;
                v7 += v26;
                --v137;
              }

              while (v137);
              v9 += v438;
              v7 += v437;
              v144 = v460;
              v145 = v460 + 4 * v436;
              v146 = v445;
              if (v145 < v435)
              {
                v146 = 0;
              }

              v147 = v145 + 4 * v146;
              v148 = v25 + 4 * v146 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v148;
                v144 = v147;
                v14 = v147;
              }

              v44 = v461 == 1;
              v460 = v144;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 25:
            v123 = -v22;
            v444 = -(v436 * v23);
            while (1)
            {
              v124 = v439;
              do
              {
                v125 = *v9;
                if (!*v9)
                {
                  goto LABEL_187;
                }

                result = PDM_15068(*v14, *v9);
                v126 = result;
                if (v21)
                {
                  v125 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_187;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v127 = 255;
LABEL_185:
                  result = PDAsaturationPDA_15084(result, v127, v126, v125);
                  v128 = result;
                  goto LABEL_186;
                }

                v127 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_185;
                }

                v128 = v126 & 0xFFFFFF | (v125 << 24);
LABEL_186:
                *v7 = v128;
LABEL_187:
                v9 += v26;
                v129 = v14 + 4 * v26;
                if (v129 >= v25)
                {
                  v130 = v123;
                }

                else
                {
                  v130 = 0;
                }

                v14 = v129 + 4 * v130;
                v7 += v26;
                --v124;
              }

              while (v124);
              v9 += v438;
              v7 += v437;
              v131 = v460;
              v132 = v460 + 4 * v436;
              v133 = v444;
              if (v132 < v435)
              {
                v133 = 0;
              }

              v134 = v132 + 4 * v133;
              v135 = v25 + 4 * v133 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v135;
                v131 = v134;
                v14 = v134;
              }

              v44 = v461 == 1;
              v460 = v131;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 26:
            v422 = -v22;
            v459 = -(v436 * v23);
            while (1)
            {
              v423 = v439;
              do
              {
                v424 = *v9;
                if (!*v9)
                {
                  goto LABEL_710;
                }

                result = PDM_15068(*v14, *v9);
                if (v21)
                {
                  v424 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_710;
                  }
                }

                v425 = *v7;
                if (!v462)
                {
                  v426 = 255;
LABEL_708:
                  result = PDAluminosityPDA_15085(result, v424, v425, v426);
                  goto LABEL_709;
                }

                v426 = HIBYTE(v425);
                if (HIBYTE(v425))
                {
                  goto LABEL_708;
                }

                result = result & 0xFFFFFF | (v424 << 24);
LABEL_709:
                *v7 = result;
LABEL_710:
                v9 += v26;
                v427 = v14 + 4 * v26;
                if (v427 >= v25)
                {
                  v428 = v422;
                }

                else
                {
                  v428 = 0;
                }

                v14 = v427 + 4 * v428;
                v7 += v26;
                --v423;
              }

              while (v423);
              v9 += v438;
              v7 += v437;
              v429 = v460;
              v430 = v460 + 4 * v436;
              v431 = v459;
              if (v430 < v435)
              {
                v431 = 0;
              }

              v432 = v430 + 4 * v431;
              v433 = v25 + 4 * v431 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v433;
                v429 = v432;
                v14 = v432;
              }

              v44 = v461 == 1;
              v460 = v429;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 27:
            v31 = -v22;
            v441 = -(v436 * v23);
            while (1)
            {
              v32 = v439;
              do
              {
                v33 = *v9;
                if (!*v9)
                {
                  goto LABEL_38;
                }

                result = PDM_15068(*v14, *v9);
                v34 = result;
                if (v21)
                {
                  v33 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_38;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v35 = 255;
LABEL_36:
                  result = PDAluminosityPDA_15085(result, v35, v34, v33);
                  v36 = result;
                  goto LABEL_37;
                }

                v35 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_36;
                }

                v36 = v34 & 0xFFFFFF | (v33 << 24);
LABEL_37:
                *v7 = v36;
LABEL_38:
                v9 += v26;
                v37 = v14 + 4 * v26;
                if (v37 >= v25)
                {
                  v38 = v31;
                }

                else
                {
                  v38 = 0;
                }

                v14 = v37 + 4 * v38;
                v7 += v26;
                --v32;
              }

              while (v32);
              v9 += v438;
              v7 += v437;
              v39 = v460;
              v40 = v460 + 4 * v436;
              v41 = v441;
              if (v40 < v435)
              {
                v41 = 0;
              }

              v42 = v40 + 4 * v41;
              v43 = v25 + 4 * v41 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v43;
                v39 = v42;
                v14 = v42;
              }

              v44 = v461 == 1;
              v460 = v39;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 28:
            v396 = -v22;
            v457 = -(v436 * v23);
            while (1)
            {
              v397 = v439;
              do
              {
                v398 = *v9;
                if (!*v9)
                {
                  goto LABEL_664;
                }

                result = PDM_15068(*v14, *v9);
                v399 = result;
                if (v21)
                {
                  v398 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_664;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v400 = 255;
LABEL_662:
                  result = PDAtranspose_huePDA_15086(result, v400, v399, v398);
                  v401 = result;
                  goto LABEL_663;
                }

                v400 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_662;
                }

                v401 = v399 & 0xFFFFFF | (v398 << 24);
LABEL_663:
                *v7 = v401;
LABEL_664:
                v9 += v26;
                v402 = v14 + 4 * v26;
                if (v402 >= v25)
                {
                  v403 = v396;
                }

                else
                {
                  v403 = 0;
                }

                v14 = v402 + 4 * v403;
                v7 += v26;
                --v397;
              }

              while (v397);
              v9 += v438;
              v7 += v437;
              v404 = v460;
              v405 = v460 + 4 * v436;
              v406 = v457;
              if (v405 < v435)
              {
                v406 = 0;
              }

              v407 = v405 + 4 * v406;
              v408 = v25 + 4 * v406 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v408;
                v404 = v407;
                v14 = v407;
              }

              v44 = v461 == 1;
              v460 = v404;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 29:
            v409 = -v22;
            v458 = -(v436 * v23);
            while (1)
            {
              v410 = v439;
              do
              {
                v411 = *v9;
                if (!*v9)
                {
                  goto LABEL_687;
                }

                result = PDM_15068(*v14, *v9);
                v412 = result;
                if (v21)
                {
                  v411 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_687;
                  }
                }

                result = *v7;
                if (!v462)
                {
                  v413 = 255;
LABEL_685:
                  result = PDAtranspose_saturationPDA_15087(result, v413, v412, v411);
                  v414 = result;
                  goto LABEL_686;
                }

                v413 = BYTE3(result);
                if (BYTE3(result))
                {
                  goto LABEL_685;
                }

                v414 = v412 & 0xFFFFFF | (v411 << 24);
LABEL_686:
                *v7 = v414;
LABEL_687:
                v9 += v26;
                v415 = v14 + 4 * v26;
                if (v415 >= v25)
                {
                  v416 = v409;
                }

                else
                {
                  v416 = 0;
                }

                v14 = v415 + 4 * v416;
                v7 += v26;
                --v410;
              }

              while (v410);
              v9 += v438;
              v7 += v437;
              v417 = v460;
              v418 = v460 + 4 * v436;
              v419 = v458;
              if (v418 < v435)
              {
                v419 = 0;
              }

              v420 = v418 + 4 * v419;
              v421 = v25 + 4 * v419 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v421;
                v417 = v420;
                v14 = v420;
              }

              v44 = v461 == 1;
              v460 = v417;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 30:
            v345 = -v22;
            v453 = -(v436 * v23);
            while (1)
            {
              v346 = v439;
              do
              {
                v347 = *v9;
                if (!*v9)
                {
                  goto LABEL_572;
                }

                result = PDM_15068(*v14, *v9);
                if (v21)
                {
                  v347 = BYTE3(result);
                  if (!BYTE3(result))
                  {
                    goto LABEL_572;
                  }
                }

                v348 = *v7;
                if (!v462)
                {
                  v349 = 255;
LABEL_570:
                  result = PDAtranspose_luminosityPDA_15088(result, v347, v348, v349);
                  goto LABEL_571;
                }

                v349 = HIBYTE(v348);
                if (HIBYTE(v348))
                {
                  goto LABEL_570;
                }

                result = result & 0xFFFFFF | (v347 << 24);
LABEL_571:
                *v7 = result;
LABEL_572:
                v9 += v26;
                v350 = v14 + 4 * v26;
                if (v350 >= v25)
                {
                  v351 = v345;
                }

                else
                {
                  v351 = 0;
                }

                v14 = v350 + 4 * v351;
                v7 += v26;
                --v346;
              }

              while (v346);
              v9 += v438;
              v7 += v437;
              v352 = v460;
              v353 = v460 + 4 * v436;
              v354 = v453;
              if (v353 < v435)
              {
                v354 = 0;
              }

              v355 = v353 + 4 * v354;
              v356 = v25 + 4 * v354 + 4 * v436;
              if (v434)
              {
                v14 += 4 * v436;
              }

              else
              {
                v25 = v356;
                v352 = v355;
                v14 = v355;
              }

              v44 = v461 == 1;
              v460 = v352;
              --v461;
              if (v44)
              {
                return result;
              }
            }

          case 31:
            v222 = -v22;
            v447 = -(v436 * v23);
            break;
          default:
            return result;
        }

LABEL_348:
        v223 = v439;
        while (1)
        {
          v224 = *v9;
          if (*v9)
          {
            result = PDM_15068(*v14, *v9);
            v225 = result;
            if (!v21)
            {
              break;
            }

            v224 = BYTE3(result);
            if (BYTE3(result))
            {
              break;
            }
          }

LABEL_358:
          v9 += v26;
          v228 = v14 + 4 * v26;
          if (v228 >= v25)
          {
            v229 = v222;
          }

          else
          {
            v229 = 0;
          }

          v14 = v228 + 4 * v229;
          v7 += v26;
          if (!--v223)
          {
            v9 += v438;
            v7 += v437;
            v230 = v460;
            v231 = v460 + 4 * v436;
            v232 = v447;
            if (v231 < v435)
            {
              v232 = 0;
            }

            v233 = v231 + 4 * v232;
            v234 = v25 + 4 * v232 + 4 * v436;
            if (v434)
            {
              v14 += 4 * v436;
            }

            else
            {
              v25 = v234;
              v230 = v233;
              v14 = v233;
            }

            v44 = v461 == 1;
            v460 = v230;
            --v461;
            if (v44)
            {
              return result;
            }

            goto LABEL_348;
          }
        }

        result = *v7;
        if (v462)
        {
          v226 = BYTE3(result);
          if (!BYTE3(result))
          {
            v227 = v225 & 0xFFFFFF | (v224 << 24);
LABEL_357:
            *v7 = v227;
            goto LABEL_358;
          }
        }

        else
        {
          v226 = 255;
        }

        result = PDAtranspose_luminosityPDA_15088(result, v226, v225, v224);
        v227 = result;
        goto LABEL_357;
      }

      v14 = 0;
      v25 = 0;
      v26 = 1;
      v27 = *(result + 68);
LABEL_15:
      v460 = 0;
      v435 = 0;
      v436 = v20 - v3;
      v22 = v13;
      v23 = v27;
      v434 = 1;
      goto LABEL_16;
    }

    v13 = v12 >> 2;
    v14 = v5 + 4 * (v12 >> 2) * v11 + 4 * v10;
    if (v12 >> 2 != v6)
    {
      v18 = 1;
LABEL_14:
      v27 = 0;
      v3 = v18 * v439;
      v21 = v4 != 0;
      v438 = v8 - v3;
      v437 = v6 - v3;
      v26 = v18;
      v25 = -1;
      v20 = v13;
      goto LABEL_15;
    }

    v15 = (v7 - v14) >> 2;
    if (v15 >= 1)
    {
      if (v15 <= v439)
      {
        v28 = v439 - 1;
        v7 += v28;
        v14 += 4 * v28;
        v9 += v28;
        v18 = -1;
        goto LABEL_13;
      }

      v16 = *(result + 8) - 1;
      v17 = v14 + 4 * v6 * v16;
      if (v7 <= v17 + 4 * v439 - 4)
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
    v13 = *(result + 28) >> 2;
    goto LABEL_14;
  }

  return result;
}

void argb32_mark_constdeep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 88);
  if (v9)
  {
    v10 = *v9;
  }

  else
  {
    v10 = -16777216;
  }

  v164 = *(a2 + 28);
  v11 = *(a2 + 40) + v164 * *(a2 + 16) + 4 * *(a2 + 12);
  v163 = *(a2 + 124);
  v12 = *(a2 + 136) + v163 * *(a2 + 108) + 2 * *(a2 + 104);
  if (*(a2 + 48))
  {
    v13 = *(a2 + 152);
    v14 = *(a2 + 144);
    if (v13 && v14 == 2.0)
    {
      v15 = PIXELCONSTANT_15092(*(a1 + 64), *v13, *(v13 + 8), *(v13 + 16));
      v16 = *(a2 + 4);
      v17 = *(a2 + 8);
      v165 = v17;
      if (HIBYTE(v10) == 255)
      {
        if (v17 >= 1)
        {
          v18 = 0;
          v19 = (BYTE2(v10) * BYTE2(v10) + 128 + ((BYTE2(v10) * BYTE2(v10) + 128) >> 8)) >> 8;
          v20 = (BYTE1(v10) * BYTE1(v10) + 128 + ((BYTE1(v10) * BYTE1(v10) + 128) >> 8)) >> 8;
          v21 = (v10 * v10 + 128 + ((v10 * v10 + 128) >> 8)) >> 8;
          do
          {
            if (v16 >= 1)
            {
              v22 = 0;
              do
              {
                v23 = *(v12 + 2 * v22);
                if (*(v12 + 2 * v22))
                {
                  v24 = *(v11 + 4 * v22);
                  v25 = ((v15 | (v15 << 24)) & 0xFF00FF00FF00FFLL) * (~v24 >> 24) + 0x80008000800080;
                  v26 = ((((v25 >> 8) & 0xFF00FF00FF00FFLL) + v25) >> 8) & 0xFF00FF00FF00FFLL;
                  v27 = v24 + ((v26 >> 24) | v26);
                  v28 = vand_s8(vshl_u32(vdup_n_s32(v27), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                  v29 = (v24 + (BYTE3(v26) | v26));
                  v30 = HIBYTE(v27);
                  v31 = v29;
                  v32 = v28;
                  if (v30 - 1 <= 0xFD)
                  {
                    v32 = vshr_n_u32(vmul_s32(v28, vdup_n_s32(v33)), 8uLL);
                    v31 = (v29 * v33) >> 8;
                  }

                  v34 = vmul_s32(v32, v32);
                  v38 = ((256 - ((v36 * v36) >> 8)) * v30 - ((v36 * v36) >> 8) + ((v36 * v36) >> 8 << 8)) >> 8;
                  v41 = (v40 + (v40 >> 8)) >> 8;
                  if (v35 <= v36)
                  {
                    v35 = v36;
                  }

                  if (v35 > v37)
                  {
                    v37 = v35;
                  }

                  v42 = 256 - v37;
                  v34.i8[0] = *v39;
                  v43 = vmla_s32(0x8000000080, vdup_n_s32(v38), vand_s8(v34, 0xFF000000FFLL));
                  v44 = vshl_u32(vmax_s32(vsub_s32(vshr_n_u32(vsra_n_u32(v43, v43, 8uLL), 8uLL), vshr_n_s32(vmul_s32(vdup_n_s32(v42), v28), 8uLL)), 0), 0x800000010);
                  v45 = (v41 - ((v42 * v29) >> 8)) & ~((v41 - ((v42 * v29) >> 8)) >> 31) | (((v38 - ((v42 * v30) >> 8)) & ~((v38 - ((v42 * v30) >> 8)) >> 31)) << 24) | v44.i32[0] | v44.i32[1];
                  v46 = ((v24 | (v24 << 24)) & 0xFF00FF00FF00FFLL) * (~v45 >> 24) + 0x80008000800080;
                  v47 = ((((v46 >> 8) & 0xFF00FF00FF00FFLL) + v46) >> 8) & 0xFF00FF00FF00FFLL;
                  *(v11 + 4 * v22) = v45 + ((v47 >> 24) | v47);
                }

                ++v22;
              }

              while (v16 != v22);
            }

            v11 += v164;
            v12 += v163;
            ++v18;
          }

          while (v18 != v17);
        }
      }

      else if (v17 >= 1)
      {
        v124 = 0;
        v125 = (v15 | (v15 << 24)) & 0xFF00FF00FF00FFLL;
        do
        {
          if (v16 >= 1)
          {
            v126 = 0;
            do
            {
              v127 = *(v12 + 2 * v126);
              if (*(v12 + 2 * v126))
              {
                v128 = *(v11 + 4 * v126);
                v129 = v125 * (~v128 >> 24) + 0x80008000800080;
                v130 = ((((v129 >> 8) & 0xFF00FF00FF00FFLL) + v129) >> 8) & 0xFF00FF00FF00FFLL;
                v131 = v128 + ((v130 >> 24) | v130);
                v132 = ((v131 | (v131 << 24)) & 0xFF00FF00FF00FFLL) * (~v10 >> 24) + 0x80008000800080;
                v133 = ((((v132 >> 8) & 0xFF00FF00FF00FFLL) + v132) >> 8) & 0xFF00FF00FF00FFLL;
                LODWORD(v133) = v10 + ((v133 >> 24) | v133);
                v134 = BYTE2(v133);
                v135 = BYTE1(v133);
                v136 = v133;
                v137 = BYTE3(v133);
                if (v137 - 1 <= 0xFD)
                {
                  v134 = (v134 * v138) >> 8;
                  v135 = (v135 * v138) >> 8;
                  v136 = (v136 * v138) >> 8;
                }

                v139 = vand_s8(vshl_u32(vdup_n_s32(v131), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                v140 = v131;
                v141 = BYTE3(v131);
                v142 = v140;
                v143 = v139;
                if (v141 - 1 <= 0xFD)
                {
                  v143 = vshr_n_u32(vmul_s32(v139, vdup_n_s32(v144)), 8uLL);
                  v142 = (v140 * v144) >> 8;
                }

                v145 = vmul_s32(v143, v143);
                v149 = (((v147 * v147) >> 8) * v137 + (256 - ((v147 * v147) >> 8)) * v141) >> 8;
                v152 = (v149 * v150 + 128 + ((v149 * v150 + 128) >> 8)) >> 8;
                if (v146 <= v147)
                {
                  v153 = v147;
                }

                else
                {
                  v153 = v146;
                }

                if (v153 > v148)
                {
                  v148 = v153;
                }

                v154 = 256 - v148;
                v145.i8[4] = *v151;
                v155 = vmla_s32(0x8000000080, vdup_n_s32(v149), vand_s8(v145, 0xFF000000FFLL));
                v156 = vshl_u32(vmax_s32(vsub_s32(vshr_n_u32(vsra_n_u32(v155, v155, 8uLL), 8uLL), vshr_n_s32(vmul_s32(vdup_n_s32(v154), v139), 8uLL)), 0), 0x800000010);
                v157 = (v152 - ((v154 * v140) >> 8)) & ~((v152 - ((v154 * v140) >> 8)) >> 31) | (((v149 - ((v154 * v141) >> 8)) & ~((v149 - ((v154 * v141) >> 8)) >> 31)) << 24) | v156.i32[0] | v156.i32[1];
                v158 = ((v128 | (v128 << 24)) & 0xFF00FF00FF00FFLL) * (~v157 >> 24) + 0x80008000800080;
                v159 = ((((v158 >> 8) & 0xFF00FF00FF00FFLL) + v158) >> 8) & 0xFF00FF00FF00FFLL;
                *(v11 + 4 * v126) = v157 + ((v159 >> 24) | v159);
              }

              ++v126;
            }

            while (v16 != v126);
          }

          v11 += v164;
          v12 += v163;
          ++v124;
        }

        while (v124 != v165);
      }

      return;
    }

    v73 = *(a2 + 4);
    v161 = *(a2 + 8);
    mask_table = get_mask_table(a1, a2, a3, a4, a5, a6, a7, a8);
    v75 = mask_table;
    v76 = HIBYTE(v10);
    v77 = BYTE2(v10);
    v78 = v10;
    v79 = BYTE1(v10);
    if (v76)
    {
      v80 = *(mask_table + 2 * v76 + 512);
      v77 = (BYTE2(v10) * v80 + 128) >> 8;
      v79 = (BYTE1(v10) * v80 + 128) >> 8;
      v78 = (v10 * v80 + 128) >> 8;
    }

    v81 = *(mask_table + 2 * v76);
    v59 = gamma_table_create(v14);
    if (v161 < 1)
    {
      goto LABEL_75;
    }

    v82 = 0;
    v83 = v59 + 16;
    v84 = *&v59[2 * v77 + 16];
    v85 = *&v59[2 * v79 + 16];
    v86 = *&v59[2 * v78 + 16];
    v160 = v59;
    v87 = v59 + 2066;
    v88 = v75 + 3074;
    do
    {
      v162 = v82;
      if (v73 >= 1)
      {
        v89 = 0;
        do
        {
          v90 = *(v12 + 2 * v89);
          if (*(v12 + 2 * v89))
          {
            v91 = *(v11 + 4 * v89);
            v92 = v91 >> 24;
            v93 = BYTE2(v91);
            v94 = BYTE1(v91);
            v95 = *(v11 + 4 * v89);
            if (HIBYTE(*(v11 + 4 * v89)))
            {
              v99 = *(v75 + 512 + 2 * v92);
              v96 = (BYTE2(v91) * v99 + 128) >> 8;
              v97 = (v94 * v99 + 128) >> 8;
              v98 = (v95 * v99 + 128) >> 8;
            }

            else
            {
              v96 = BYTE2(v91);
              v97 = v94;
              v98 = *(v11 + 4 * v89);
            }

            v100 = (v90 >> 2) & 0xF8;
            v101 = *(v75 + 2 * (((v100 + 16) * v100) >> 8));
            v102 = *(v75 + 2 * ((v90 >> 7) & 0xF8 | (((v90 >> 7) & 0xF8) >> 5)));
            v103 = *(v75 + 2 * (v100 | (v100 >> 5)));
            v104 = *(v75 + 2 * ((8 * (v90 & 0x1F)) | ((8 * (v90 & 0x1F)) >> 5)));
            v105 = *(v75 + 2 * v92);
            if (v96 >= 0x400)
            {
              v106 = 1024;
            }

            else
            {
              v106 = v96;
            }

            if (v97 >= 0x400)
            {
              v107 = 1024;
            }

            else
            {
              v107 = v97;
            }

            if (v98 >= 0x400)
            {
              v108 = 1024;
            }

            else
            {
              v108 = v98;
            }

            v109 = *&v83[2 * v106];
            v110 = *&v83[2 * v107] * v105 + 512;
            v111 = *&v83[2 * v108] * v105 + 512;
            v112 = v101 - ((v105 * v101 + 512) >> 10) + v105;
            v113 = (((v84 - ((v109 * v105 + 512) >> 10)) * v102 + 512) >> 10) + ((v109 * v105 + 512) >> 10);
            v114 = (((v85 - (v110 >> 10)) * v103 + 512) >> 10) + (v110 >> 10);
            v115 = (((v86 - (v111 >> 10)) * v104 + 512) >> 10) + (v111 >> 10);
            if (v112 >= 1)
            {
              v116 = *(v75 + 1024 + 2 * v112);
              v113 = (v113 * v116 + 512) >> 10;
              v114 = (v114 * v116 + 512) >> 10;
              v115 = (v115 * v116 + 512) >> 10;
            }

            if (v113 >= 1024)
            {
              v117 = 1024;
            }

            else
            {
              v117 = v113;
            }

            if (v114 >= 1024)
            {
              v118 = 1024;
            }

            else
            {
              v118 = v114;
            }

            if (v115 >= 1024)
            {
              v119 = 1024;
            }

            else
            {
              v119 = v115;
            }

            v120 = v92 + (((*(v88 + v112) - v92) * v81 + 512) >> 10);
            v121 = v93 + (((*(v88 + ((v112 * *&v87[2 * v117] + 512) >> 10)) - v93) * v81 + 512) >> 10);
            v122 = v94 + (((*(v88 + ((v112 * *&v87[2 * v118] + 512) >> 10)) - v94) * v81 + 512) >> 10);
            v123 = v95 + (((*(v88 + ((v112 * *&v87[2 * v119] + 512) >> 10)) - v95) * v81 + 512) >> 10);
            if (v120 < v121)
            {
              v121 = v120;
            }

            if (v120 < v122)
            {
              v122 = v120;
            }

            if (v120 < v123)
            {
              v123 = v120;
            }

            *(v11 + 4 * v89) = (v121 << 16) | (v120 << 24) | (v122 << 8) | v123;
          }

          ++v89;
        }

        while (v73 != v89);
      }

      v12 += v163;
      v11 += v164;
      v82 = v162 + 1;
    }

    while (v162 + 1 != v161);
    v59 = v160;
    if (v160)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v48 = *(a2 + 4);
    v49 = *(a2 + 8);
    v50 = *(a2 + 144);
    v51 = get_mask_table(a1, a2, a3, a4, a5, a6, a7, a8);
    v52 = v51;
    v53 = HIBYTE(v10);
    v54 = BYTE2(v10);
    v55 = v10;
    v56 = BYTE1(v10);
    if (v53)
    {
      v57 = *(v51 + 2 * v53 + 512);
      v54 = (BYTE2(v10) * v57 + 128) >> 8;
      v56 = (BYTE1(v10) * v57 + 128) >> 8;
      v55 = (v10 * v57 + 128) >> 8;
    }

    v58 = *(v51 + 2 * v53);
    v59 = gamma_table_create(v50);
    if (v49 < 1)
    {
      goto LABEL_75;
    }

    v60 = 0;
    v61 = v59 + 16;
    v62 = *&v59[2 * v54 + 16];
    v63 = *&v59[2 * v56 + 16];
    v64 = *&v59[2 * v55 + 16];
    do
    {
      if (v48 >= 1)
      {
        v67 = 0;
        do
        {
          if (*(v12 + 2 * v67))
          {
            v69 = *(v11 + 4 * v67);
            v70 = *&v61[2 * *(v52 + 2 * BYTE2(v69))];
            v71 = *&v61[2 * *(v52 + 2 * BYTE1(v69))];
            v72 = *&v61[2 * *(v52 + 2 * v69)];
            v65 = v59 + 2066;
            v66 = v52 + 3074;
            v68 = *(v12 + 2 * v67);
            *(v11 + 4 * v67) = ((BYTE2(v69) + (((*(v66 + *&v65[2 * v70 + 2 * (((v62 - v70) * *(v52 + 2 * ((v68 >> 7) & 0xF8 | (((v68 >> 7) & 0xF8) >> 5))) + 512) >> 10)]) - BYTE2(v69)) * v58 + 512) >> 10)) << 16) | ((BYTE1(v69) + (((*(v66 + *&v65[2 * v71 + 2 * (((v63 - v71) * *(v52 + 2 * ((v68 >> 2) & 0xF8 | (((v68 >> 2) & 0xF8) >> 5))) + 512) >> 10)]) - BYTE1(v69)) * v58 + 512) >> 10)) << 8) | (v69 + (((*(v66 + *&v65[2 * v72 + 2 * (((v64 - v72) * *(v52 + 2 * ((8 * (v68 & 0x1F)) | ((8 * (v68 & 0x1F)) >> 5))) + 512) >> 10)]) - v69) * v58 + 512) >> 10)) | 0xFF000000;
          }

          ++v67;
        }

        while (v48 != v67);
      }

      v12 += v163;
      v11 += v164;
      ++v60;
    }

    while (v60 != v49);
    if (v59)
    {
LABEL_75:
      if (atomic_fetch_add_explicit(v59, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {

        free(v59);
      }
    }
  }
}

void argb32_mark_pixeldeep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v127 = *(a2 + 28);
  v124 = *(a2 + 40);
  v8 = v124 + v127 * *(a2 + 16) + 4 * *(a2 + 12);
  v126 = *(a2 + 124);
  v9 = *(a2 + 136) + v126 * *(a2 + 108) + 2 * *(a2 + 104);
  v10 = *(a2 + 64);
  v11 = *(a2 + 56);
  if (*(a2 + 1) << 8 == 512)
  {
    v11 %= v10;
    v12 = *(a2 + 60) % *(a2 + 68);
  }

  else
  {
    v12 = *(a2 + 60);
  }

  v129 = v12;
  v125 = *(a2 + 68);
  v13 = *(a2 + 152);
  v14 = *(a2 + 144);
  v136 = *(a2 + 64);
  v120 = v11;
  if (v13 && v14 == 2.0 && (v14 = 2.0, *(a2 + 48)))
  {
    v134 = *(a2 + 8);
    if (v134 >= 1)
    {
      v131 = *(a2 + 76);
      v132 = *(a2 + 88);
      v15 = *(a2 + 4);
      v16 = PIXELCONSTANT_15092(*(a1 + 64), *v13, *(v13 + 8), *(v13 + 16));
      v17 = 0;
      v18 = (v16 | (v16 << 24)) & 0xFF00FF00FF00FFLL;
      do
      {
        if (v15 >= 1)
        {
          v19 = 0;
          v20 = v120;
          do
          {
            v21 = *(v9 + 2 * v19);
            if (*(v9 + 2 * v19))
            {
              v22 = *(v132 + v131 * v129 + 4 * v20);
              v23 = *(v8 + 4 * v19);
              v24 = v18 * (~v23 >> 24) + 0x80008000800080;
              v25 = ((((v24 >> 8) & 0xFF00FF00FF00FFLL) + v24) >> 8) & 0xFF00FF00FF00FFLL;
              v26 = v23 + ((v25 >> 24) | v25);
              v27 = ((v26 | (v26 << 24)) & 0xFF00FF00FF00FFLL) * (~v22 >> 24) + 0x80008000800080;
              v28 = ((((v27 >> 8) & 0xFF00FF00FF00FFLL) + v27) >> 8) & 0xFF00FF00FF00FFLL;
              v29 = v22 + ((v28 >> 24) | v28);
              v30 = BYTE2(v29);
              v31 = BYTE1(v29);
              v32 = v29;
              v33 = HIBYTE(v29);
              if (v33 - 1 <= 0xFD)
              {
                v30 = (v30 * v34) >> 8;
                v31 = (v31 * v34) >> 8;
                v32 = (v32 * v34) >> 8;
              }

              v35 = vand_s8(vshl_u32(vdup_n_s32(v26), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
              v36 = v26;
              v37 = BYTE3(v26);
              v38 = v36;
              v39 = v35;
              if (v37 - 1 <= 0xFD)
              {
                v39 = vshr_n_u32(vmul_s32(v35, vdup_n_s32(v40)), 8uLL);
                v38 = (v36 * v40) >> 8;
              }

              v41 = vmul_s32(v39, v39);
              v45 = (((v43 * v43) >> 8) * v33 + (256 - ((v43 * v43) >> 8)) * v37) >> 8;
              v49 = (v48 + (v48 >> 8)) >> 8;
              if (v42 <= v43)
              {
                v50 = v43;
              }

              else
              {
                v50 = v42;
              }

              if (v50 > v44)
              {
                v44 = v50;
              }

              v51 = 256 - v44;
              v41.i8[0] = *v46;
              v41.i8[4] = *v47;
              v52 = vmla_s32(0x8000000080, vdup_n_s32(v45), vand_s8(v41, 0xFF000000FFLL));
              v53 = vshl_u32(vmax_s32(vsub_s32(vshr_n_u32(vsra_n_u32(v52, v52, 8uLL), 8uLL), vshr_n_s32(vmul_s32(vdup_n_s32(v51), v35), 8uLL)), 0), 0x800000010);
              v54 = (v49 - ((v51 * v36) >> 8)) & ~((v49 - ((v51 * v36) >> 8)) >> 31) | (((v45 - ((v51 * v37) >> 8)) & ~((v45 - ((v51 * v37) >> 8)) >> 31)) << 24) | v53.i32[0] | v53.i32[1];
              v55 = ((v23 | (v23 << 24)) & 0xFF00FF00FF00FFLL) * (~v54 >> 24) + 0x80008000800080;
              v56 = ((((v55 >> 8) & 0xFF00FF00FF00FFLL) + v55) >> 8) & 0xFF00FF00FF00FFLL;
              *(v8 + 4 * v19) = v54 + ((v56 >> 24) | v56);
              LODWORD(v10) = v136;
            }

            if (v20 + 1 < v10)
            {
              ++v20;
            }

            else
            {
              v20 = 0;
            }

            ++v19;
          }

          while (v15 != v19);
        }

        v8 += v127;
        v9 += v126;
        if (v129 + 1 < v125)
        {
          v57 = v129 + 1;
        }

        else
        {
          v57 = 0;
        }

        LODWORD(v129) = v57;
        ++v17;
      }

      while (v17 != v134);
    }
  }

  else
  {
    v122 = *(a2 + 76);
    v123 = *(a2 + 88);
    v59 = *(a2 + 4);
    v58 = *(a2 + 8);
    mask_table = get_mask_table(a1, a2, a3, a4, a5, a6, a7, a8);
    v119 = gamma_table_create(v14);
    v121 = v58;
    v61 = v129;
    if (v58 >= 1)
    {
      v62 = 0;
      v133 = mask_table + 512;
      v63 = v119 + 16;
      v64 = v119 + 2066;
      v65 = mask_table + 3074;
      do
      {
        v128 = v62;
        v130 = v61;
        v135 = v123 + v61 * v122;
        if (v124)
        {
          if (v59 >= 1)
          {
            v66 = 0;
            v67 = v120;
            do
            {
              v68 = *(v9 + 2 * v66);
              if (*(v9 + 2 * v66))
              {
                v69 = *(v135 + 4 * v67);
                if (v67 + 1 < v10)
                {
                  ++v67;
                }

                else
                {
                  v67 = 0;
                }

                v70 = v69 >> 24;
                v71 = vand_s8(vshl_u32(vdup_n_s32(v69), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                v72 = v69;
                if (BYTE3(v69))
                {
                  v73 = *(v133 + 2 * v70);
                  v71 = vshr_n_u32(vmla_s32(0x8000000080, v71, vdup_n_s32(v73)), 8uLL);
                  v72 = (v72 * v73 + 128) >> 8;
                }

                v74 = *(v8 + 4 * v66);
                v75 = v74 >> 24;
                v76 = BYTE2(v74);
                v77 = BYTE1(v74);
                v78 = *(v8 + 4 * v66);
                if (HIBYTE(*(v8 + 4 * v66)))
                {
                  v82 = *(v133 + 2 * v75);
                  v79 = (v76 * v82 + 128) >> 8;
                  v80 = (v77 * v82 + 128) >> 8;
                  v81 = (v78 * v82 + 128) >> 8;
                }

                else
                {
                  v79 = BYTE2(v74);
                  v80 = BYTE1(v74);
                  v81 = *(v8 + 4 * v66);
                }

                v83 = (v68 >> 2) & 0xF8;
                v84 = *(mask_table + 2 * (((v83 + 16) * v83) >> 8));
                v85 = *(mask_table + 2 * ((v68 >> 7) & 0xF8 | (((v68 >> 7) & 0xF8) >> 5)));
                v86 = *(mask_table + 2 * (v83 | (v83 >> 5)));
                v87 = *(mask_table + 2 * ((8 * (v68 & 0x1F)) | ((8 * (v68 & 0x1F)) >> 5)));
                v88 = *&v63[2 * v72];
                v89 = *(mask_table + 2 * v75);
                if (v79 >= 0x400)
                {
                  v79 = 1024;
                }

                if (v80 >= 0x400)
                {
                  v80 = 1024;
                }

                if (v81 >= 0x400)
                {
                  v81 = 1024;
                }

                v90 = *&v63[2 * v79] * v89 + 512;
                v91 = *&v63[2 * v80] * v89 + 512;
                v92 = *&v63[2 * v81] * v89 + 512;
                v93 = v84 - ((v89 * v84 + 512) >> 10) + v89;
                v94 = (((*&v63[2 * v71.u32[0]] - (v90 >> 10)) * v85 + 512) >> 10) + (v90 >> 10);
                v95 = (((*&v63[2 * v71.u32[1]] - (v91 >> 10)) * v86 + 512) >> 10) + (v91 >> 10);
                v96 = (((v88 - (v92 >> 10)) * v87 + 512) >> 10) + (v92 >> 10);
                if (v93 >= 1)
                {
                  v97 = *(mask_table + 1024 + 2 * v93);
                  v94 = (v94 * v97 + 512) >> 10;
                  v95 = (v95 * v97 + 512) >> 10;
                  v96 = (v96 * v97 + 512) >> 10;
                }

                v98 = *(mask_table + 2 * v70);
                if (v94 >= 1024)
                {
                  v99 = 1024;
                }

                else
                {
                  v99 = v94;
                }

                if (v95 >= 1024)
                {
                  v100 = 1024;
                }

                else
                {
                  v100 = v95;
                }

                if (v96 >= 1024)
                {
                  v101 = 1024;
                }

                else
                {
                  v101 = v96;
                }

                v102 = v75 + (((*(v65 + v93) - v75) * v98 + 512) >> 10);
                v103 = v76 + (((*(v65 + ((v93 * *&v64[2 * v99] + 512) >> 10)) - v76) * v98 + 512) >> 10);
                v104 = v77 + (((*(v65 + ((v93 * *&v64[2 * v100] + 512) >> 10)) - v77) * v98 + 512) >> 10);
                v105 = v78 + (((*(v65 + ((v93 * *&v64[2 * v101] + 512) >> 10)) - v78) * v98 + 512) >> 10);
                if (v102 < v103)
                {
                  v103 = v102;
                }

                if (v102 < v104)
                {
                  v104 = v102;
                }

                if (v102 < v105)
                {
                  v105 = v102;
                }

                *(v8 + 4 * v66) = (v103 << 16) | (v102 << 24) | (v104 << 8) | v105;
                v10 = v136;
              }

              else if (v67 + 1 < v10)
              {
                ++v67;
              }

              else
              {
                v67 = 0;
              }

              ++v66;
            }

            while (v59 != v66);
          }
        }

        else if (v59 >= 1)
        {
          v106 = 0;
          v107 = v120;
          do
          {
            if (*(v9 + 2 * v106))
            {
              v109 = *(v135 + 4 * v107);
              if (v107 + 1 < v10)
              {
                ++v107;
              }

              else
              {
                v107 = 0;
              }

              v110 = v109 >> 24;
              v111 = vand_s8(vshl_u32(vdup_n_s32(v109), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
              v112 = v109;
              if (BYTE3(v109))
              {
                v113 = *(v133 + 2 * v110);
                v111 = vshr_n_u32(vmla_s32(0x8000000080, v111, vdup_n_s32(v113)), 8uLL);
                v112 = (v112 * v113 + 128) >> 8;
              }

              v114 = *(mask_table + 2 * v110);
              v115 = *(v8 + 4 * v106);
              v116 = *&v63[2 * *(mask_table + 2 * BYTE2(v115))];
              v117 = *&v63[2 * *(mask_table + 2 * BYTE1(v115))];
              v118 = *&v63[2 * *(mask_table + 2 * v115)];
              v108 = *(v9 + 2 * v106);
              *(v8 + 4 * v106) = ((BYTE2(v115) + (((*(v65 + *&v64[2 * v116 + 2 * (((*&v63[2 * v111.u32[0]] - v116) * *(mask_table + 2 * ((v108 >> 7) & 0xF8 | (((v108 >> 7) & 0xF8) >> 5))) + 512) >> 10)]) - BYTE2(v115)) * v114 + 512) >> 10)) << 16) | ((BYTE1(v115) + (((*(v65 + *&v64[2 * v117 + 2 * (((*&v63[2 * v111.u32[1]] - v117) * *(mask_table + 2 * ((v108 >> 2) & 0xF8 | (((v108 >> 2) & 0xF8) >> 5))) + 512) >> 10)]) - BYTE1(v115)) * v114 + 512) >> 10)) << 8) | (v115 + (((*(v65 + *&v64[2 * v118 + 2 * (((*&v63[2 * v112] - v118) * *(mask_table + 2 * ((8 * (v108 & 0x1F)) | ((8 * (v108 & 0x1F)) >> 5))) + 512) >> 10)]) - v115) * v114 + 512) >> 10)) | 0xFF000000;
            }

            else if (v107 + 1 < v10)
            {
              ++v107;
            }

            else
            {
              v107 = 0;
            }

            ++v106;
          }

          while (v59 != v106);
        }

        v9 += v126;
        if (v130 + 1 < v125)
        {
          v61 = v130 + 1;
        }

        else
        {
          v61 = 0;
        }

        v8 += v127;
        v62 = v128 + 1;
      }

      while (v128 + 1 != v121);
    }

    if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {

      free(v119);
    }
  }
}

void argb32_mark_bits(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + 112);
  v7 = *(v2 + 116);
  v8 = (v6 + 15) & 0xFFFFFFF0;
  v9 = v8 * v7;
  if (v9 <= 4096)
  {
    v10 = v20;
  }

  else
  {
    v10 = malloc_type_malloc(v9, 0x97CEE3C3uLL);
    if (!v10)
    {
      return;
    }
  }

  CGSConvertBitsToMask(*(v5 + 136), *(v5 + 124), v10, v8, v6, v7, *(v5 + 128));
  v11 = *(v5 + 112);
  v16[6] = *(v5 + 96);
  v17 = v11;
  v12 = *(v5 + 144);
  v18 = *(v5 + 128);
  v19 = v12;
  v13 = *(v5 + 48);
  v16[2] = *(v5 + 32);
  v16[3] = v13;
  v14 = *(v5 + 80);
  v16[4] = *(v5 + 64);
  v16[5] = v14;
  v15 = *(v5 + 16);
  v16[0] = *v5;
  v16[1] = v15;
  HIDWORD(v17) = (v6 + 15) & 0xFFFFFFF0;
  *(&v18 + 1) = v10;
  if (BYTE1(v16[0]) << 8 == 1024)
  {
    argb32_mark_constmask(v16, v4);
  }

  else
  {
    argb32_mark_pixelmask(v16, v4);
  }

  if (v10 != v20)
  {
    free(v10);
  }
}

uint64_t PIXELCONSTANT_15092(float *a1, int a2, float *a3, float a4)
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

  return (v10 << 16) | ((v7 + v8) << 24) | (v11 << 8) | v12;
}

unsigned int *DMplusDAM(unsigned int *result, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v6 = (BYTE1(a4) * a6) + (BYTE1(a2) * a3);
  v7 = (((BYTE1(a4) | (a5 << 16)) * a6) >> 16) + ((((a2 >> 8) & 0xFF00FF) * a3) >> 16);
  if (v6 >= 0xFE79)
  {
    v6 = 65145;
  }

  if (v7 >= 0xFE79)
  {
    v7 = 65145;
  }

  v8 = (a2 & 0xFF00FF) * a3;
  v9 = (a4 * a6) + v8;
  v10 = (((a4 & 0xFF00FFu) * a6) >> 16) + HIWORD(v8);
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

  *result = (((((v6 | (v7 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v6 | (v7 << 16)) + 8388736) & 0xFF00FF00 | ((((((v11 | (v12 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v11 | (v12 << 16)) + 8388736) >> 8) & 0xFF00FF;
  return result;
}

uint64_t RGBA32_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
      result = (v32 + v31[1]) & 0xFF00 | ((v32 + *v31) >> 8) | (((v32 + v31[2]) >> 8) << 16) & 0xFFFFFF | (((v32 + v31[3]) >> 8) << 24);
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

void RGBA32_shade_conic_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    *v17++ = (v24 * v29[2] + (v30 << 8) + v28 * v27[2]) & 0xFF0000 | (v30 + ((v24 * v29[1] + v28 * v27[1]) >> 8)) & 0xFF00 | ((v30 + ((v24 * *v29 + v28 * *v27) >> 8)) >> 8) | (((v30 + ((v24 * v29[3] + v28 * v27[3]) >> 8)) >> 8) << 24);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void RGBA32_shade_radial_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
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
            *v30 = (v67 + v66->u16[1]) & 0xFF00 | ((v67 + v66->i16[0]) >> 8) | (((v67 + v66->i16[2]) >> 8) << 16) & 0xFFFFFF | (((v67 + v66->i16[3]) >> 8) << 24);
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
            v92 = v32;
            if (v32)
            {
LABEL_80:
              v93 = *(v39 + a2);
              *v30 = (v93 + v92->u16[1]) & 0xFF00 | ((v93 + v92->i16[0]) >> 8) | (((v93 + v92->i16[2]) >> 8) << 16) & 0xFFFFFF | (((v93 + v92->i16[3]) >> 8) << 24);
              LOBYTE(v92) = -1;
            }

            if (v78 <= 1.0)
            {
              if (v80 < 0)
              {
                goto LABEL_88;
              }

              v94 = (4 * v80);
            }

            else if (v78 > v26 || (v94 = (4 * v25), v25 < 0))
            {
LABEL_88:
              if (!v32)
              {
                v98 = 0;
                goto LABEL_92;
              }

              v95 = *v32;
              v96 = v37;
              goto LABEL_90;
            }

            v95 = *(v33 + 2 * v94);
            v96 = v37;
LABEL_90:
            v87 = vaddw_u16(vdupq_n_s32(*(v39 + v96)), v95);
            goto LABEL_91;
          }

          v92 = (v33 + 2 * v82);
          goto LABEL_80;
        }

        v84 = (v33 + 8 * v79);
        v85 = *(v33 + 8 * v80);
        v86 = *(v39 + a2);
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v85);
        *v30 = (v86 + v84[1]) & 0xFF00 | ((v86 + *v84) >> 8) | (((v86 + v84[2]) >> 8) << 16) & 0xFFFFFF | (((v86 + v84[3]) >> 8) << 24);
      }

      else
      {
        if (v25 < 0)
        {
          if (!v32)
          {
            v98 = 0;
            LOBYTE(v92) = 0;
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
        v91 = v88.i16[2] + v89;
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v83);
        *v88.i8 = vand_s8(vshl_u32(vadd_s32(vdup_n_s32(v89), *&vextq_s8(v88, v88, 8uLL)), 0x1000000008), 0xFF00000000FF0000);
        *v30 = v91 & 0xFF00 | HIBYTE(v90) | v88.i32[0] | v88.i32[1];
      }

      LOBYTE(v92) = -1;
LABEL_91:
      v97 = vand_s8(vshl_u32(*&vextq_s8(v87, v87, 8uLL), 0x1000000008), 0xFF00000000FF0000);
      *(v30 + 4) = v87.i16[2] & 0xFF00 | v87.u8[1] | v97.i32[0] | v97.i32[1];
      v98 = -1;
LABEL_92:
      v17 = v12 + v73;
      LOBYTE(a2) = (a2 + 1) & v40;
      LOBYTE(v37) = (v37 + 1) & v40;
      v30 += 8;
      *v29 = v92;
      v29[1] = v98;
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
    v99 = (v33 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v100 = v99;
    }

    else
    {
      v100 = v32;
    }

    v101 = vdup_n_s32(*v100);
    v102 = vdup_n_s32(v100[1]);
    v103 = vdup_n_s32(v100[2]);
    v104 = vdup_n_s32(v100[3]);
    v105 = a4 + 4;
    do
    {
      v106 = (v39 + a2);
      a2 = (a2 + 1) & v40;
      LOBYTE(a12) = *v106;
      BYTE4(a12) = *(v39 + v37);
      v107 = vand_s8(*&a12, 0xFF000000FFLL);
      v108 = vorr_s8(vorr_s8((*&vshr_n_u32(vadd_s32(v101, v107), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), vand_s8(vadd_s32(v102, v107), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v103, v107), 8uLL), 0xFF000000FF0000), (*&vshl_n_s32(vadd_s32(v104, v107), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
      *v30 = v108;
      v37 = (v37 + 1) & v40;
      v108.i8[0] = *(v39 + a2);
      v108.i8[4] = *(v39 + v37);
      v109 = vand_s8(v108, 0xFF000000FFLL);
      a12 = COERCE_DOUBLE(vorr_s8(vorr_s8((*&vshr_n_u32(vadd_s32(v101, v109), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), vand_s8(vadd_s32(v102, v109), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v103, v109), 8uLL), 0xFF000000FF0000), (*&vshl_n_s32(vadd_s32(v104, v109), 0x10uLL) & 0xFF00FFFFFF00FFFFLL))));
      *(v30 + 8) = a12;
      *v29 = -1;
      v29 += 4;
      v30 += 16;
      v105 -= 4;
    }

    while (v105 > 4);
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

void RGBA32_mark_image_RGB24(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v38 = a2;
  v10 = *(a1 + 28);
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
      goto LABEL_28;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v42 = 0;
  if ((v11 & 0x80000000) != 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertRGB888toRGBA8888", 160, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v11);
  }

  while (1)
  {
    if ((v12 & 0x80000000) != 0)
    {
      _CGHandleAssert("CGSConvertRGB888toRGBA8888", 160, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v12);
    }

    v19 = *(a1 + 76);
    v20 = *(a1 + 88) + v19 * (a3 + v18 * v8) + 3 * (v17 + v38);
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
      v30 = malloc_type_malloc((v26 * v12), 0xCF3530DCuLL);
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
              v36 = v35[2];
              *v33 = *v35;
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
      v44.data = v29;
      v44.height = v12;
      v44.width = v11;
      v44.rowBytes = v28;
      v43.data = v27;
      v43.height = v12;
      v43.width = v11;
      v43.rowBytes = v26;
      vImageConvert_RGB888toRGBA8888(&v44, 0, 0xFFu, &v43, 0, 0);
      if (!v16)
      {
        return;
      }
    }

LABEL_28:
    if (!shape_enum_clip_next(v16, &v42 + 1, &v42, &v41, &v40))
    {
      break;
    }

    v18 = v42;
    v17 = HIDWORD(v42);
    v12 = v40;
    v11 = v41;
    if ((v41 & 0x80000000) != 0)
    {
      goto LABEL_4;
    }
  }

  free(v16);
}

void RGBA32_mark_image_RGB48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    _CGHandleAssert("CGSConvertRGB16toRGBA8888", 534, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v11);
  }

  while (1)
  {
    if (v12 < 0)
    {
      _CGHandleAssert("CGSConvertRGB16toRGBA8888", 534, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v12);
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
        v28 = malloc_type_malloc(v12 * v26, 0x2F315438uLL);
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
            v34 = v33[2];
            v35 = v33[4];
            *v31 = *v33;
            v31[1] = v34;
            v31[2] = v35;
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

void RGBA32_mark_image_rgb48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    _CGHandleAssert("CGSConvertrgb16toRGBA8888", 1030, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v11);
  }

  while (1)
  {
    if (v12 < 0)
    {
      _CGHandleAssert("CGSConvertrgb16toRGBA8888", 1030, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v12);
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
        v28 = malloc_type_malloc(v12 * v26, 0xC7D9576BuLL);
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
            *v32 = v35;
            v32[1] = v36;
            v32[2] = v37;
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

void RGBA32_mark_image_RGBA64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
                v36 = vorrq_s8(vorrq_s8((*&vshrq_n_u32(v35, 8uLL) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vandq_s8(v35, v25)), vorrq_s8((*&vshlq_n_s32(v31, 0x10uLL) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)), vandq_s8(v32, v26)));
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
                v44 = (*v30 >> 8) & 0xFF00 | *v30 | (v30[1] << 16) & 0xFFFFFF | (BYTE2(v30[1]) << 24);
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
        _CGHandleAssert("CGSConvertRGBA16toRGBA8888", 568, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v9);
      }

      if (v10 < 0)
      {
        _CGHandleAssert("CGSConvertRGBA16toRGBA8888", 568, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v10);
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
          v52 = malloc_type_malloc(v10 * v47, 0xDF96828FuLL);
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
              v57 = v56[2];
              v58 = v56[4];
              v59 = v56[6];
              if (!v45)
              {
                v59 = -1;
              }

              *v54 = *v56;
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

void RGBA32_mark_image_rgba64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        v23 = -16777216;
      }

      if (v10 >= 1)
      {
        v24 = vdupq_n_s32(v23);
        v25.i64[0] = 0xFF0000FF00;
        v25.i64[1] = 0xFF0000FF00;
        v26.i64[0] = 0xFF00000000FFLL;
        v26.i64[1] = 0xFF00000000FFLL;
        v27.i64[0] = 0xFF000000FF000000;
        v27.i64[1] = 0xFF000000FF000000;
        v28.i64[0] = 0xFF000000FFLL;
        v28.i64[1] = 0xFF000000FFLL;
        v29.i64[0] = 0x1000100010001;
        v29.i64[1] = 0x1000100010001;
        do
        {
          v30 = v9;
          v31 = v21;
          v32 = v18;
          if (v9 >= 4)
          {
            do
            {
              v33.i32[0] = v32[1];
              v33.i32[1] = v32[3];
              v33.i32[2] = v32[5];
              v33.i32[3] = v32[7];
              v34 = vshrq_n_u32(v33, 0x18uLL);
              v35 = vaddvq_s32(v34);
              if (v35)
              {
                v36.i32[0] = *v32;
                v36.i32[1] = v32[2];
                v36.i32[2] = v32[4];
                v36.i32[3] = v32[6];
                v37 = vorrq_s8(vorrq_s8(vandq_s8(vshlq_u32(v36, xmmword_18439CD40), v25), vandq_s8(vshlq_u32(v36, xmmword_18439CD50), v26)), vorrq_s8(vandq_s8(v33, v27), (*&vshlq_n_s32(v33, 8uLL) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
                if (v35 != 1020)
                {
                  v38 = veorq_s8(v34, v28);
                  v39.i16[0] = v31->u8[0];
                  v39.i16[1] = BYTE2(v31->u32[0]);
                  v39.i16[2] = BYTE4(v31->i64[0]);
                  v39.i16[3] = BYTE6(v31->i64[0]);
                  v39.i16[4] = v31->i64[1];
                  v39.i16[5] = BYTE2(v31->i64[1]);
                  v39.i16[6] = BYTE12(*v31);
                  v39.i16[7] = BYTE14(*v31);
                  v40 = vmulq_s32((*&vshrq_n_u32(*v31, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v38);
                  v41 = vmulq_s32(v39, v38);
                  v37 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v41, v29), (*&vshrq_n_u32(v41, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v37, (*&vaddq_s32(vaddq_s32(v40, v29), (*&vshrq_n_u32(v40, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v31 = vorrq_s8(v37, v24);
              }

              v32 += 8;
              ++v31;
              v42 = v30 > 7;
              v30 -= 4;
            }

            while (v42);
          }

          if (v30 >= 1)
          {
            v43 = v30 + 1;
            do
            {
              v44 = v32[1];
              v45 = HIBYTE(v44);
              if (HIBYTE(v44))
              {
                v46 = HIWORD(*v32) & 0xFF00 | BYTE1(*v32) | v44 & 0xFF000000 | (BYTE1(v44) << 16);
                if (v45 != 255)
                {
                  v46 += ((((v31->i32[0] & 0xFF00FF) * (v45 ^ 0xFF) + 65537 + ((((v31->i32[0] & 0xFF00FF) * (v45 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v31->i32[0] >> 8) & 0xFF00FF) * (v45 ^ 0xFF) + 65537 + (((((v31->i32[0] >> 8) & 0xFF00FF) * (v45 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v31->i32[0] = v46 | v23;
              }

              v32 += 2;
              v31 = (v31 + 4);
              --v43;
            }

            while (v43 > 1);
          }

          v18 += v22;
          v21 += v64;
          v42 = v10-- <= 1;
        }

        while (!v42);
      }
    }

    else
    {
      v47 = 0;
      if (v20)
      {
        v47 = *(a1 + 96) != 0;
      }

      if (v9 < 0)
      {
        _CGHandleAssert("CGSConvertrgba16toRGBA8888", 1089, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v9);
      }

      if (v10 < 0)
      {
        _CGHandleAssert("CGSConvertrgba16toRGBA8888", 1089, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v10);
      }

      v48 = v10 - 1;
      if (v64 < 0)
      {
        v18 += v48 * v22;
        LODWORD(v22) = -v22;
        v49 = -v64;
        v21 += v48 * v64;
      }

      else
      {
        v49 = v64;
      }

      v50 = v18 + ((v22 * v48) & (v22 >> 31));
      v51 = v21;
      if (v50 <= &v21[v10 * v49])
      {
        v52 = v22 >= 0 ? v22 : -v22;
        v51 = v21;
        if (v50 + (v52 * v10) >= v21)
        {
          v53 = v49;
          v54 = malloc_type_malloc(v10 * v49, 0xBEF95A55uLL);
          v49 = v53;
          v51 = v54;
        }
      }

      if (v10)
      {
        v55 = 0;
        v56 = (v18 + 3);
        do
        {
          if (v9)
          {
            v57 = &v51[v55 * v49];
            v58 = v56;
            v59 = v9;
            do
            {
              v60 = *v58;
              v61 = v58[2];
              v62 = v58[4];
              if (!v47)
              {
                v62 = -1;
              }

              *v57 = *(v58 - 2);
              v57[1] = v60;
              v57[2] = v61;
              v57[3] = v62;
              v57 += 4;
              v58 += 8;
              --v59;
            }

            while (v59);
          }

          ++v55;
          v56 += v22;
        }

        while (v55 != v10);
      }

      v8 = a5;
      if (v51 != v21)
      {
        CGBlt_copyBytes(4 * v9, v10, v51, v21, v49, v49);
        free(v51);
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

void *PDFDestinationSetGetDestination(uint64_t *a1, void *key)
{
  Value = 0;
  if (a1 && key)
  {
    Mutable = a1[1];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &destCallbacks);
      a1[1] = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (!Value)
    {
      v6 = *a1;
      Value = malloc_type_calloc(1uLL, 0x28uLL, 0x102004065753CD5uLL);
      __CFSetLastAllocationEventName();
      if (Value)
      {
        *Value = v6;
        Value[1] = PDFXRefTableAddObject(*(v6 + 504));
      }

      CFDictionarySetValue(a1[1], key, Value);
    }
  }

  return Value;
}

void emitDestination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && *(a2 + 16))
  {
    PDFDocumentBeginObject(*a2, *(a2 + 8), a3, a4, a5, a6, a7, a8);
    PDFDocumentPrintf(*a2, "[ ", v9, v10, v11, v12, v13, v14, v34);
    PDFDocumentPrintReference(*a2, "%R", *(a2 + 16), v15, v16, v17, v18, v19);
    PDFDocumentPrintf(*a2, " /XYZ %f %f 0 ]", v20, v21, v22, v23, v24, v25, *(a2 + 24));
    v33 = *a2;

    PDFDocumentEndObject(v33, v26, v27, v28, v29, v30, v31, v32);
  }
}

void CGPDFFontMutatorRelease(char *a1)
{
  if (a1)
  {
    for (i = 544; i != 2592; i += 8)
    {
      free(*&a1[i]);
    }

    v3 = 0;
    v4 = a1 + 2592;
    do
    {
      for (j = 0; j != 128; j += 8)
      {
        v6 = *&v4[j];
        if (v6)
        {
          CFRelease(v6);
        }
      }

      ++v3;
      v4 += 128;
    }

    while (v3 != 16);

    free(a1);
  }
}

double *create_agars()
{
  agar_HelveticaLTMM = agar_create("HelveticaLTMM");
  result = agar_create("TimesLTMM");
  agar_TimesLTMM = result;
  return result;
}

double *agar_create(char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  __CFSetLastAllocationEventName();
  if (!v2)
  {
    return v2;
  }

  v3 = CGFontCreateWithName(a1);
  *(v2 + 8) = v3;
  if (!v3)
  {
LABEL_17:
    free(v2);
    return 0;
  }

  v4 = CGFontCopyVariationAxes(v3);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if (!get_range(v2 + 4, v4, @"Weight"))
  {
    CFRelease(v5);
    goto LABEL_14;
  }

  range = get_range(v2 + 6, v5, @"Width");
  CFRelease(v5);
  v7 = *(v2 + 8);
  if (!range)
  {
    goto LABEL_15;
  }

  *v2 = get_stemv(v7, v2[4], v2[6]);
  v2[1] = get_stemv(*(v2 + 8), v2[5], v2[6]);
  v2[2] = get_stemv(*(v2 + 8), v2[4], v2[7]);
  stemv = get_stemv(*(v2 + 8), v2[5], v2[7]);
  v2[3] = stemv;
  if (*v2 == v2[1])
  {
    v9 = v2[2];
    if (v9 == stemv && *v2 == v9)
    {
      pdf_error("FAILED to create agar for %s.", a1);
LABEL_14:
      v7 = *(v2 + 8);
LABEL_15:
      if (v7)
      {
        CFRelease(v7);
      }

      goto LABEL_17;
    }
  }

  return v2;
}

BOOL get_range(void *a1, CFArrayRef theArray, const void *a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      Value = CFDictionaryGetValue(ValueAtIndex, @"kCGFontVariationAxisName");
      if (CFEqual(Value, a3))
      {
        break;
      }

      v9 = ++v8 < v7;
      if (v7 == v8)
      {
        return 0;
      }
    }

    v13 = 0;
    CGCFDictionaryGetFloat(ValueAtIndex, @"kCGFontVariationAxisMinValue", &v13);
    *a1 = v13;
    CGCFDictionaryGetFloat(ValueAtIndex, @"kCGFontVariationAxisMaxValue", &v13);
    a1[1] = v13;
  }

  else
  {
    return 0;
  }

  return v9;
}

CGFontRef get_stemv(CGFont *a1, double a2, double a3)
{
  result = create_font_variant(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    memset(v6, 0, sizeof(v6));
    Descriptor = CGFontGetDescriptor(result, v6);
    CFRelease(v4);
    if (Descriptor)
    {
      return *&v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGFontRef create_font_variant(CGFont *a1, double a2, double a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGCFDictionarySetFloat(Mutable, @"Weight", a2);
  CGCFDictionarySetFloat(Mutable, @"Width", a3);
  CopyWithVariations = CGFontCreateCopyWithVariations(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return CopyWithVariations;
}

void CGPDFFontMutatorGetMutation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 2 * a2 + 32);
  v7 = *a1;
  if (*a1)
  {
    v7 = v7[4];
  }

  pdf_log("Mutating glyph %hu (code %d) in %s.\n", v6, a2, v7);
  os_unfair_lock_lock((a1 + 4640));
  v8 = a1 + 544;
  v9 = *(a1 + 544 + 8 * v5);
  if (!v9)
  {
    Advances = CGPDFFontGetAdvances(*a1);
    HorizontalAdvance = CGPDFAdvancesGetHorizontalAdvance(Advances, v5);
    v9 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
    __CFSetLastAllocationEventName();
    if (!v9)
    {
LABEL_67:
      *(v8 + 8 * v5) = v9;
      goto LABEL_68;
    }

    v12 = HorizontalAdvance;
    v13 = *(a1 + 24);
    advance = get_advance(*(v13 + 64), v6, *(v13 + 32), *(v13 + 48));
    v15 = get_advance(*(v13 + 64), v6, *(v13 + 40), *(v13 + 48));
    v16 = get_advance(*(v13 + 64), v6, *(v13 + 32), *(v13 + 56));
    v17 = get_advance(*(v13 + 64), v6, *(v13 + 40), *(v13 + 56));
    if (!HorizontalAdvance)
    {
      *(v9 + 1) = xmmword_18439C630;
      v32 = 0.0;
      v33 = 0.0;
LABEL_64:
      v53 = vcvtmd_s64_f64(v32 * 15.0 + 0.5);
      v54 = vcvtmd_s64_f64(v33 * 15.0 + 0.5);
      v55 = a1 + (v53 << 7) + 8 * v54;
      font_variant = *(v55 + 2592);
      v8 = a1 + 544;
      if (!font_variant)
      {
        v57 = (v55 + 2592);
        font_variant = create_font_variant(*(v13 + 64), *(v13 + 32) + v53 / 15.0 * (*(v13 + 40) - *(v13 + 32)), *(v13 + 48) + v54 / 15.0 * (*(v13 + 56) - *(v13 + 48)));
        *v57 = font_variant;
      }

      *v9 = font_variant;
      goto LABEL_67;
    }

    v18 = *(a1 + 8);
    v19 = v12;
    v20 = v18 - *v13;
    v21 = -v20;
    v22 = *(v13 + 16) - *v13;
    v23 = *(v13 + 8) - *v13;
    v24 = *(v13 + 24) - *v13 - v23 - v22;
    v25 = advance;
    v26 = v12 - advance;
    v27 = (v16 - advance);
    v28 = (v15 - advance);
    v29 = (v17 - advance) - v28 - v27;
    if (v24 == 0.0)
    {
      if (v22 == 0.0)
      {
        v30 = v20 / v23;
        v31 = (v26 * v23 + v21 * v28) / (v29 * v20 + v23 * v27);
      }

      else
      {
        v30 = (v26 * v22 + v21 * v27) / (v29 * v20 + v28 * v22);
        v31 = v20 / v22;
      }

      v32 = v30;
      v33 = v31;
      goto LABEL_14;
    }

    if (v24 * v21 == v22 * v23)
    {
      v32 = -v22 / v24;
      v33 = (v26 * v24 + v28 * v22) / (v24 * v27 - v29 * v22);
      v30 = (v26 * v24 + v23 * v27) / (v24 * v28 - v29 * v23);
      v31 = -v23 / v24;
    }

    else
    {
      v42 = -v24;
      if (v29 * -v26 == v28 * v27)
      {
        v32 = -v27 / v29;
        v43 = v29 * v20;
        v33 = (v29 * v20 + v23 * v27) / (v27 * v42 + v29 * v22);
        v30 = (v43 + v28 * v22) / (v28 * v42 + v29 * v23);
        v31 = -v28 / v29;
      }

      else
      {
        v48 = v28 * v42 + v29 * v23;
        v49 = v23 * v27 - v28 * v22 + v29 * v21 + v24 * v26;
        v50 = v26 * v22 + v27 * v21;
        if (v48 == 0.0)
        {
          v30 = -v50 / v49;
          v32 = v30;
        }

        else
        {
          v63 = v50 * (v48 * -4.0) + v49 * v49;
          if (v63 < 0.0)
          {
            v64 = v17;
            pdf_error("No solutions possible.\n");
            v17 = v64;
            v30 = -1.0;
            v32 = -1.0;
            v31 = -1.0;
            v33 = -1.0;
            goto LABEL_14;
          }

          v65 = sqrt(v63);
          v66 = v48 + v48;
          v32 = (v65 - v49) / (v48 + v48);
          v30 = (-v49 - v65) / v66;
        }

        v67 = v22 + v24 * v30;
        if (v67 == 0.0)
        {
          v33 = -(v28 * v32 - v26) / (v27 + v29 * v32);
          v31 = -(v28 * v30 - v26) / (v27 + v29 * v30);
        }

        else
        {
          v33 = -(v21 + v23 * v32) / (v22 + v24 * v32);
          v31 = -(v21 + v23 * v30) / v67;
        }
      }
    }

LABEL_14:
    v34 = v32 < 0.0 || v32 > 1.0;
    if (!v34 && ((v35 = 1.0, v33 >= 0.0) ? (v36 = v33 > 1.0) : (v36 = 1), !v36) || (v30 >= 0.0 ? (v37 = v30 > 1.0) : (v37 = 1), !v37 && (v31 >= 0.0 ? (v38 = v31 > 1.0) : (v38 = 1), v32 = v30, v33 = v31, v35 = 1.0, !v38)))
    {
LABEL_58:
      v51 = (v19 - (v33 * ((1.0 - v32) * v16) + v32 * v17 * v33 + v32 * v15 * (1.0 - v33) + (1.0 - v32) * v25 * (1.0 - v33))) * 0.5;
      if (fabs(v51) < 0.001 || v51 < 0.0)
      {
        v51 = 0.0;
      }

      v9[1] = v35;
      v9[2] = v51;
      goto LABEL_64;
    }

    v39 = *(v13 + 24);
    if (v39 >= v18)
    {
      v44 = *(v13 + 16);
      if (v44 > v18)
      {
        v32 = 0.0;
        if (v25 >= v19)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = 1.0;
          if (v15 != advance && v15 > v19)
          {
            v33 = v26 / v28;
          }
        }

        goto LABEL_56;
      }

      v32 = (v18 - v44) / (v39 - v44);
      v45 = v25 + v32 * v27;
      v33 = 0.0;
      if (v45 < v19)
      {
        v46 = v15 + v32 * (v17 - v15);
        v33 = 1.0;
        if (v46 > v19 && v45 != v46)
        {
          v40 = v19 - v45;
          v41 = v46 - v45;
          goto LABEL_51;
        }
      }
    }

    else
    {
      if (v16 >= v19)
      {
        v33 = 0.0;
        v32 = 1.0;
        goto LABEL_56;
      }

      v32 = 1.0;
      if (v17 != v16 && v17 > v19)
      {
        v40 = v19 - v16;
        v41 = (v17 - v16);
LABEL_51:
        v33 = v40 / v41;
        goto LABEL_56;
      }

      v33 = 1.0;
    }

LABEL_56:
    v35 = 1.0;
    if (v19 / (v32 * v28 + v29 * v32 * v33 + v27 * v33 + v25) <= 1.0)
    {
      v35 = v19 / (v32 * v28 + v29 * v32 * v33 + v27 * v33 + v25);
    }

    goto LABEL_58;
  }

LABEL_68:
  os_unfair_lock_unlock((a1 + 4640));
  v58 = *(a1 + 16);
  v59 = v9[1];
  v60 = v9[2];
  *(a3 + 56) = *v9;
  *a3 = v6;
  if (v59 == 1.0 && v58 == 0.0 && v60 == 0.0)
  {
    v61 = 1;
  }

  else
  {
    v62 = tan(v58);
    v61 = 0;
    *(a3 + 8) = v59;
    *(a3 + 16) = 0;
    *(a3 + 24) = v59 * v62;
    *(a3 + 32) = 0x3FF0000000000000;
    *(a3 + 40) = v59 * v60 / 1000.0;
    *(a3 + 48) = 0;
  }

  *(a3 + 2) = v61;
}

uint64_t get_advance(CGFont *a1, __int16 a2, double a3, double a4)
{
  v8 = a2;
  v7[0] = 0.0;
  v7[1] = 0.0;
  font_variant = create_font_variant(a1, a3, a4);
  v6[0] = 0x408F400000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x408F400000000000;
  v6[4] = 0;
  v6[5] = 0;
  CGFontGetGlyphAdvancesForStyle(font_variant, v6, 13, &v8, 1, v7);
  if (font_variant)
  {
    CFRelease(font_variant);
  }

  return v7[0];
}

void PDFFont::~PDFFont(PDFFont *this)
{
  *this = &unk_1EF23EF78;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void sub_184243A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<unsigned long>::destroy(*v15);
  if (*(v14 + 111) < 0)
  {
    operator delete(*(v14 + 88));
  }

  if (*(v14 + 87) < 0)
  {
    operator delete(*v16);
  }

  PDFFont::~PDFFont(v14);
  MEMORY[0x1865EE610]();
  _Unwind_Resume(a1);
}

uint64_t PDFFont::get_next_subset_name(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](v19);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v20, v7, v8);
  v9 = (a2 + 16);
  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = (a2 + 16);
  v12 = *(a2 + 16);
  do
  {
    v13 = std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a3);
    if ((v13 & 0x80u) == 0)
    {
      v11 = v12;
    }

    v12 = *(v12 + ((v13 >> 4) & 8));
  }

  while (v12);
  if (v11 == v9 || (std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v11 + 4) & 0x80) != 0)
  {
LABEL_14:
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a3, *(a3 + 8));
      v10 = *v9;
    }

    else
    {
      v25 = *a3;
    }

    v26 = 1;
LABEL_18:
    if (!v10)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, v10 + 4) & 0x80) != 0)
      {
        v10 = *v10;
        goto LABEL_18;
      }

      if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 4, &v25) & 0x80) == 0)
      {
        break;
      }

      v10 = v10[1];
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    v11 = v10;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  ++*(v11 + 14);
  MEMORY[0x1865EE470](&v20);
  v14 = std::stringbuf::view[abi:fe200100](&v21);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  a1[23] = v15;
  if (v15)
  {
    memmove(a1, v14, v15);
  }

  a1[v16] = 0;
  v19[0] = *MEMORY[0x1E69E54D8];
  v17 = *(MEMORY[0x1E69E54D8] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v20 = v17;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x1865EE5C0](&v24);
}

void sub_184243E2C(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CG::CGDLResourceType>,void *>>>::operator()[abi:fe200100](0, v18);
  operator delete(*(v19 - 112));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a3);
  MEMORY[0x1865EE5C0](va);
  _Unwind_Resume(a1);
}

void PDFFont::get_embedded_font_name(std::string *this, uint64_t a2)
{
  v4 = **(a2 + 8);
  if (v4 && (v5 = *(v4 + 360), *(v4 + 360) = v5 + 1, v5))
  {
    v6 = 5;
    v7 = v5;
    do
    {
      v8 = v7;
      v7 /= 0x1Au;
      __b.__r_.__value_.__s.__data_[v6] = v8 - 26 * v7 + 65;
      v10 = v6-- != 0;
    }

    while (v8 >= 0x1A && v10);
    v11 = v6 + 1;
    if (v8 >= 0x1A)
    {
      pdf_error("More font prefixes (%d) than digits for the tag", v5);
    }

    if (v11 < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LODWORD(v11) = 6;
  }

  memset(&__b, 65, v11);
LABEL_15:
  *(&v31.__r_.__value_.__s + 23) = 6;
  LODWORD(v31.__r_.__value_.__l.__data_) = __b.__r_.__value_.__l.__data_;
  WORD2(v31.__r_.__value_.__r.__words[0]) = WORD2(__b.__r_.__value_.__r.__words[0]);
  v31.__r_.__value_.__s.__data_[6] = 0;
  v12 = std::string::append(&v31, "+", 1uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (*(*(v14 + 16) + 152))(*(v14 + 112));
  }

  else
  {
    v15 = 0;
  }

  v16 = strlen(v15);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  __dst.__r_.__value_.__s.__data_[v17] = 0;
  v18 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __dst;
  }

  while (1)
  {
    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v21 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
    if (v21 < 8)
    {
      break;
    }

    v22 = 0;
    v23 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    do
    {
      if (p_str->__r_.__value_.__s.__data_[v22] - 91 < 0xFFFFFFE6)
      {
        goto LABEL_44;
      }

      ++v22;
    }

    while (v22 != 6);
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (__str.__r_.__value_.__l.__size_ < 6)
      {
LABEL_66:
        __break(1u);
        return;
      }
    }

    else
    {
      if (HIBYTE(__str.__r_.__value_.__r.__words[2]) <= 5u)
      {
        goto LABEL_66;
      }

      v23 = &__str;
    }

    if (v23->__r_.__value_.__s.__data_[6] != 43)
    {
      break;
    }

    std::string::basic_string(&__b, &__str, 7uLL, 0xFFFFFFFFFFFFFFFFLL, &v35);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = __b;
  }

LABEL_44:
  if (v18 < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((v19 & 0x80u) == 0)
  {
    v25 = &__str;
  }

  else
  {
    v25 = __str.__r_.__value_.__r.__words[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v26 = v19;
  }

  else
  {
    v26 = size;
  }

  v27 = std::string::append(&v32, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  this->__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&this->__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v29 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v29 & 0x80u) != 0)
  {
    v29 = this->__r_.__value_.__l.__size_;
  }

  if (v29 >= 0x3F)
  {
    std::string::basic_string(&__b, this, 0, 0x3EuLL, &__dst);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    *this = __b;
  }
}

void sub_1842441E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p)
{
  operator delete(__p);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

CFTypeRef PDFFont::create_embedded_font(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 16))(a1) != 1 && (v10 = a1[2]) != 0 && (explicit = atomic_load_explicit((v10 + 88), memory_order_acquire)) != 0 && (Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontData")) != 0)
  {

    return CFRetain(Property);
  }

  else
  {
    v14 = a1[2];
    v15 = (*(*a1 + 16))(a1);
    if (v14)
    {
      v16 = v15;
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v18 = *(*(v14 + 16) + 352);
      v19 = *(v14 + 112);

      return v18(v19, v16, v17, a3, a4, a5);
    }

    else
    {
      return 0;
    }
  }
}

void PDFFontAddGlyphsToLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(a4);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  (*(*a1 + 24))(a1, a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_184244464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *region_check(void *cf)
{
  if (cf)
  {
    v1 = cf;
    if (!cf[2])
    {
      return 0;
    }

    v2 = CFGetTypeID(cf);
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    if (v2 == __kCGRegionTypeID && (v3 = v1[2]) != 0 && *v3 == 0x80000000)
    {
      return (v3[1] > 0);
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

CFStringRef __CGRegionCopyFormattingDescription(void *a1, const __CFDictionary *a2)
{
  v4 = CGSGetRegionRectCount(a1);
  if (!v4)
  {
    v17 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v17, a2, @"#<CGRegion %p empty>", a1);
  }

  v5 = v4;
  memset(&rect, 0, sizeof(rect));
  BoundingBox = CGRegionGetBoundingBox(a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v13, 0);
  v15 = Mutable;
  if (v10 < 0.0 || v12 < 0.0)
  {
    v33.origin.x = BoundingBox;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = v12;
    v19 = CGRectStandardize(v33);
    v34.origin.x = BoundingBox;
    v34.origin.y = v8;
    v34.size.width = v10;
    v34.size.height = v12;
    v35 = CGRectStandardize(v34);
    y = v35.origin.y;
    v35.origin.x = BoundingBox;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v36 = CGRectStandardize(v35);
    v21 = v36.origin.x + v36.size.width;
    v36.origin.x = BoundingBox;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v37 = CGRectStandardize(v36);
    CFStringAppendFormat(v15, a2, @"#<CGSRegion %p [%g %g %g %g]", a1, v19, *&y, *&v21, v37.origin.y + v37.size.height);
    if (v5 == 1)
    {
      goto LABEL_29;
    }

    v38.origin.x = BoundingBox;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    v39 = CGRectStandardize(v38);
    v16 = v39.origin.y;
    goto LABEL_9;
  }

  CFStringAppendFormat(Mutable, a2, @"#<CGSRegion %p [%g %g %g %g]", a1, *&BoundingBox, *&v8, BoundingBox + v10, v8 + v12);
  v16 = v8;
  if (v5 != 1)
  {
LABEL_9:
    v22 = v16 + -1.0;
    v23 = CGRegionEnumeratorCreate(a1);
    while (1)
    {
      if (!CGRegionEnumeratorGetNextRect(v23, &rect.origin.x))
      {
        free(v23);
        CFStringAppend(v15, @"\n");
        CFStringAppendFormat(v15, a2, @"\t%6g []\n", *&v16);
        goto LABEL_29;
      }

      v25 = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
      v27 = fmin(rect.size.width, rect.size.height);
      v28 = v27 < 0.0;
      if (v27 >= 0.0)
      {
        if (rect.origin.y == v22)
        {
          goto LABEL_27;
        }

        CFStringAppend(v15, @"\n");
        v29 = v25;
      }

      else
      {
        v40 = CGRectStandardize(rect);
        if (v40.origin.y == v22)
        {
          goto LABEL_27;
        }

        CFStringAppend(v15, @"\n");
        v41.origin.x = rect.origin.x;
        v41.origin.y = v25;
        v41.size.width = width;
        v41.size.height = height;
        v42 = CGRectStandardize(v41);
        v29 = v42.origin.y;
      }

      if (v10 >= 0.0 && v16 >= 0.0)
      {
        break;
      }

      v43.origin.x = BoundingBox;
      v43.origin.y = v8;
      v43.size.width = v10;
      v43.size.height = v16;
      v42 = CGRectStandardize(v43);
      if (v29 > v30)
      {
        v44.origin.x = BoundingBox;
        v44.origin.y = v8;
        v44.size.width = v10;
        v44.size.height = v16;
        v42 = CGRectStandardize(v44);
        v16 = v31;
LABEL_22:
        CFStringAppendFormat(v15, a2, @"\t%6g []\n", v42.origin.x, v42.origin.y, v42.size.width, *&v16);
      }

LABEL_23:
      if (v28)
      {
        v45.origin.x = rect.origin.x;
        v45.origin.y = v25;
        v45.size.width = width;
        v45.size.height = height;
        v46 = CGRectStandardize(v45);
        CFStringAppendFormat(v15, a2, @"\t%6g ", v46.origin.x, *&v46.origin.y);
        v47.origin.x = rect.origin.x;
        v47.origin.y = v25;
        v47.size.width = width;
        v47.size.height = height;
        v48 = CGRectStandardize(v47);
        v22 = v48.origin.y;
      }

      else
      {
        CFStringAppendFormat(v15, a2, @"\t%6g ", v42.origin.x, *&v25);
        v22 = v25;
      }

      v16 = v25 + height;
LABEL_27:
      CFStringAppendFormat(v15, a2, @"[%g %g] ", *&rect.origin.x, rect.origin.x + width);
    }

    if (v29 <= v16)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_29:
  CFStringAppend(v15, @">");
  return v15;
}

double CGRegionGetBoundingBox(uint64_t a1)
{
  if (!a1)
  {
    return INFINITY;
  }

  v11 = 0;
  v10 = 0;
  v9 = 0;
  shape_bounds(*(a1 + 16), &v11 + 1, &v11, &v10, &v9);
  result = SHIDWORD(v11);
  v5 = v10 - SHIDWORD(v11);
  if (v5 < 0.0)
  {
    v7 = v10 - SHIDWORD(v11);
    _CGHandleAssert("CGRegionGetBoundingBox", 533, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "width >= 0", "width (%f) must be positive", v1, v2, v3, SLOBYTE(v7));
  }

  if (v5 > 4294967300.0)
  {
    _CGHandleAssert("CGRegionGetBoundingBox", 534, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "width <= UINT_MAX", "width (%f) too big", v1, v2, v3, SLOBYTE(v5));
  }

  v6 = v9 - v11;
  if (v6 < 0.0)
  {
    v8 = v9 - v11;
    _CGHandleAssert("CGRegionGetBoundingBox", 535, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "height >= 0", "height (%f) must be positive", v1, v2, v3, SLOBYTE(v8));
  }

  if (v6 > 4294967300.0)
  {
    _CGHandleAssert("CGRegionGetBoundingBox", 536, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "height <= UINT_MAX", "height (%f) too big", v1, v2, v3, SLOBYTE(v5));
  }

  return result;
}

void __CGRegionDeallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != (a1 + 24) && v2 != 0 && v2 != &the_empty_shape)
  {
    free(v2);
  }
}

uint64_t CGRegionGetTypeID()
{
  if (CGRegionGetTypeID_initOnce != -1)
  {
    dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
  }

  return __kCGRegionTypeID;
}

void *region_create_with_shape(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || a1 == &the_empty_shape)
  {
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    return &__kCGRegionEmptyRegion;
  }

  else
  {
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    result = CGTypeCreateInstance(__kCGRegionTypeID, 16, a3, a4, a5, a6, a7, a8);
    result[2] = a1;
  }

  return result;
}

void *CGRegionCreateEmptyRegion()
{
  if (CGRegionGetTypeID_initOnce != -1)
  {
    dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
  }

  return &__kCGRegionEmptyRegion;
}

void *region_create_with_bounds(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= a3 || (v8 = a4, a2 >= a4))
  {
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    return &__kCGRegionEmptyRegion;
  }

  else
  {
    v10 = a3;
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    result = CGTypeCreateInstance(__kCGRegionTypeID, 52, a3, a4, a5, a6, a7, a8);
    if (v8 >= 2147483646)
    {
      v13 = 2147483646;
    }

    else
    {
      v13 = v8;
    }

    if (a2 == 0x80000000 || a2 == -2147483647)
    {
      v14 = -2147483647;
    }

    else
    {
      v14 = a2;
    }

    result[3] = 0x280000000;
    *(result + 8) = v14;
    *(result + 9) = 4;
    *(result + 10) = a1;
    *(result + 11) = v10;
    *(result + 12) = v13;
    *(result + 52) = 0x7FFFFFFF00000002;
    result[2] = result + 3;
  }

  return result;
}

BOOL rect_to_bounds(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, double a5, double a6, double a7, double a8)
{
  v32 = CGRectStandardize(*&a5);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if (v32.size.width < 0.0 || v32.size.height < 0.0)
  {
    v33 = CGRectStandardize(v32);
    if (v33.size.width < 0.0078125)
    {
      goto LABEL_9;
    }

    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v32 = CGRectStandardize(v34);
  }

  else if (v32.size.width < 0.0078125)
  {
    goto LABEL_9;
  }

  if (v32.size.height >= 0.0078125)
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectInset(v35, 0.00390625, 0.00390625);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

LABEL_9:
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectIntegral(v37);
  v16 = v38.origin.x;
  v17 = v38.origin.y;
  v18 = v38.size.width;
  v19 = v38.size.height;
  if (v38.size.width < 0.0 || v38.size.height < 0.0)
  {
    v31 = CGRectStandardize(v38);
    v39.origin.x = v16;
    v39.origin.y = v17;
    v39.size.width = v18;
    v39.size.height = v19;
    v40 = CGRectStandardize(v39);
    v30 = v40.origin.x + v40.size.width;
    v40.origin.x = v16;
    v40.origin.y = v17;
    v40.size.width = v18;
    v40.size.height = v19;
    v41 = CGRectStandardize(v40);
    v29 = v41.origin.y;
    v41.origin.x = v16;
    v41.origin.y = v17;
    v41.size.width = v18;
    v41.size.height = v19;
    v42 = CGRectStandardize(v41);
    v21 = v29;
    v20 = v30;
    v22 = *&v31;
    v17 = v42.origin.y;
    v19 = v42.size.height;
  }

  else
  {
    v20 = v38.origin.x + v38.size.width;
    v21 = v38.origin.y;
    v22 = v38.origin.x;
  }

  v23.f64[0] = v21;
  v23.f64[1] = v17 + v19;
  v24.f64[0] = v22;
  v24.f64[1] = v20;
  v25 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
  v26 = vdupq_n_s64(0xC1E0000000000000);
  LODWORD(v25.f64[0]) = vuzp1_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgtq_f64(v24, v25), vcgtq_f64(v23, v25)))), COERCE_INT8X8_T(v17 + v19)).u32[0];
  HIDWORD(v25.f64[0]) = vuzp1_s8(COERCE_INT8X8_T(v17 + v19), vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgtq_f64(v26, v24), vcgtq_f64(v26, v23))))).i32[1];
  *&v24.f64[0] = vcltz_s8(vshl_n_s8(*&v25.f64[0], 7uLL));
  v27 = vand_s8(*&v24.f64[0], 0x8040201008040201);
  v27.i8[0] = vaddv_s8(v27);
  if (vminv_u8(*&v24.f64[0]))
  {
    *a1 = v22;
    *a3 = v20;
    *a2 = v21;
    *a4 = (v17 + v19);
  }

  else
  {
    *a4 = 0;
    *a2 = 0;
    *a3 = 0;
    *a1 = 0;
  }

  return v27.i32[0] == 255;
}

void *CGRegionCreateWithRect(double a1, double a2, double a3, double a4)
{
  if (a1 == INFINITY || a2 == INFINITY)
  {
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    return &__kCGRegionEmptyRegion;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    if (rect_to_bounds(&v17, &v15 + 1, &v16, &v15, a1, a2, a3, a4))
    {
      v11 = v17;
      v12 = HIDWORD(v15);
      v13 = v16;
      v14 = v15;

      return region_create_with_bounds(v11, v12, v13, v14, v7, v8, v9, v10);
    }

    else
    {
      return 0;
    }
  }
}

void *CGRegionCreateWithRects(double *a1, uint64_t a2)
{
  if (a1 && (v2 = a2) != 0)
  {
    if (a2 == 1)
    {
      v3 = *a1;
      v4 = a1[1];
      v5 = a1[2];
      v6 = a1[3];

      return CGRegionCreateWithRect(v3, v4, v5, v6);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v8 = a1 + 2;
      v9 = &the_empty_shape;
      do
      {
        if ((rect_to_bounds_19063(&v20 + 1, &v19 + 1, &v20, &v19, *(v8 - 2), *(v8 - 1), *v8, v8[1]) & 0x80000000) == 0)
        {
          v17 = shape_union_with_bounds(v9, SHIDWORD(v20), SHIDWORD(v19), v20, v19);
          if (v9 && v9 != &the_empty_shape)
          {
            free(v9);
          }

          v9 = v17;
        }

        v8 += 4;
        --v2;
      }

      while (v2);
      if (v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = &the_empty_shape;
      }

      return region_create_with_shape(v18, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    if (CGRegionGetTypeID_initOnce != -1)
    {
      dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
    }

    return &__kCGRegionEmptyRegion;
  }
}

void *CGRegionCreateWithBoundsBlock(uint64_t a1)
{
  v2 = &the_empty_shape;
LABEL_2:
  v3 = v2;
  while (1)
  {
    (*(a1 + 16))(&v13, a1);
    if (v13)
    {
      break;
    }

    if (SHIDWORD(v13) < v15 && v14 < v16)
    {
      v2 = shape_union_with_bounds(v2, SHIDWORD(v13), v14, v15, v16);
      if (v3)
      {
        if (v3 != &the_empty_shape)
        {
          free(v3);
        }
      }

      goto LABEL_2;
    }
  }

  return region_create_with_shape(v2, v4, v5, v6, v7, v8, v9, v10);
}

const __CFData *CGRegionCreateWithData(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v1);

    return CGRegionCreateWithBytes(BytePtr, Length);
  }

  return result;
}

void *CGRegionCreateWithBytes(_DWORD *a1, unint64_t a2)
{
  v4 = shape_data_valid(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = shape_alloc_data(v4, a1, a2);

  return region_create_with_shape(v5, v6, v7, v8, v9, v10, v11, v12);
}

CFTypeRef CGRegionCreateCopy(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void *CGRegionCreateWithOffset(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    return 0;
  }

  v11 = floor(a2 + 0.00390625);
  if (v11 < -2147483650.0)
  {
    return 0;
  }

  v12 = floor(a3 + 0.00390625);
  v13 = v11 > 2147483650.0 || v12 < -2147483650.0;
  if (v13 || v12 > 2147483650.0)
  {
    return 0;
  }

  v14 = v11;
  v15 = v12;
  if (v11 | v12)
  {
    v17 = *(a1 + 16);
    if (v17 == (a1 + 24))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 44);
      v28 = *(a1 + 48);
      v29 = *(a1 + 40) + v14;
      v30 = v26 + v15;
      v31 = v27 + v14;
      v32 = (v28 + v15);

      return region_create_with_bounds(v29, v30, v31, v32, a7, a8, a9, a10);
    }

    else
    {
      v18 = shape_offset(a1, v17, v14, v15);

      return region_create_with_shape(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {

    return CFRetain(a1);
  }
}

void *CGRegionCreateWithInset(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    return 0;
  }

  v11 = floor(a2 + 0.00390625);
  if (v11 < -2147483650.0)
  {
    return 0;
  }

  v12 = floor(a3 + 0.00390625);
  v13 = v11 > 2147483650.0 || v12 < -2147483650.0;
  if (v13 || v12 > 2147483650.0)
  {
    return 0;
  }

  v14 = v11;
  v15 = v12;
  if (v11 | v12)
  {
    v17 = *(a1 + 16);
    if (v17 == a1 + 24 && ((v18 = *(a1 + 32), v19 = *(a1 + 44), v20 = *(a1 + 48), a1 = (*(a1 + 40) + v14), v21 = (v19 - v14), v22 = v18 + v15, a1 < v21) ? (v23 = v22 < v20 - v15) : (v23 = 0), v23))
    {
      v32 = (v20 - v15);

      return region_create_with_bounds(a1, v22, v21, v32, a7, a8, a9, a10);
    }

    else
    {
      shape_inset(a1, v17, v14, v15);

      return region_create_with_shape(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  else
  {

    return CFRetain(a1);
  }
}

void *CGRegionCreateIntersectionWithRect(void *cf, double a2, double a3, double a4, double a5)
{
  if (cf)
  {
    if (a2 == INFINITY || a3 == INFINITY)
    {
      if (CGRegionGetTypeID_initOnce != -1)
      {
        dispatch_once(&CGRegionGetTypeID_initOnce, &__block_literal_global_15165);
      }

      return &__kCGRegionEmptyRegion;
    }

    else
    {
      v6 = cf;
      if (a2 == -8.98846567e307 && a3 == -8.98846567e307 && a4 == 1.79769313e308 && a5 == 1.79769313e308)
      {

        return CFRetain(cf);
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v10 = rect_to_bounds(&v20 + 1, &v20, &v19 + 1, &v19, a2, a3, a4, a5);
        if (v10)
        {
          v11 = shape_intersect_with_bounds(v10, v6[2], SHIDWORD(v20), v20, SHIDWORD(v19), v19);

          return region_create_with_shape(v11, v12, v13, v14, v15, v16, v17, v18);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return cf;
}

void *CGRegionCreateIntersectionWithRegion(int *a1, int *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !cf)
  {
    return 0;
  }

  v9 = *(a1 + 2);
  if (v9 == &the_empty_shape || *(v9 + 4 * *(v9 + 4)) == 0x7FFFFFFF)
  {

    return CFRetain(a1);
  }

  v11 = *(cf + 2);
  if (v11 == &the_empty_shape || *(v11 + 4 * *(v11 + 4)) == 0x7FFFFFFF)
  {
    a1 = cf;

    return CFRetain(a1);
  }

  if (v9 == a1 + 6 && v11 == cf + 6)
  {
    v12 = a1[8];
    v13 = a1[11];
    v14 = a1[12];
    v15 = cf[11];
    v16 = cf[12];
    if (a1[10] <= cf[10])
    {
      v17 = cf[10];
    }

    else
    {
      v17 = a1[10];
    }

    if (v12 <= cf[8])
    {
      v18 = cf[8];
    }

    else
    {
      v18 = v12;
    }

    if (v13 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v13;
    }

    if (v14 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

    return region_create_with_bounds(v17, v18, v19, v20, a5, a6, a7, a8);
  }

  else
  {
    v21 = shape_intersect(a1, v9, v11);

    return region_create_with_shape(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

void *CGRegionCreateUnionWithRect(int **cf, double a2, double a3, double a4, double a5)
{
  if (cf)
  {
    if (a2 == INFINITY || a3 == INFINITY)
    {

      return CFRetain(cf);
    }

    else
    {
      v17 = 0;
      v18 = 0;
      if (rect_to_bounds(&v18 + 1, &v18, &v17 + 1, &v17, a2, a3, a4, a5))
      {
        v9 = shape_union_with_bounds(cf[2], SHIDWORD(v18), v18, SHIDWORD(v17), v17);

        return region_create_with_shape(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {

    return CGRegionCreateWithRect(a2, a3, a4, a5);
  }
}

void *CGRegionCreateUnionWithRegion(void *a1, void *cf)
{
  if (!a1)
  {
    if (!cf)
    {
      return 0;
    }

LABEL_11:
    a1 = cf;

    return CFRetain(a1);
  }

  if (!cf)
  {
LABEL_7:

    return CFRetain(a1);
  }

  v4 = a1[2];
  if (v4 == &the_empty_shape || *(v4 + 4 * *(v4 + 4)) == 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  v5 = cf[2];
  if (v5 == &the_empty_shape || *(v5 + 4 * *(v5 + 4)) == 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v7 = shape_union(a1, v4, v5);

  return region_create_with_shape(v7, v8, v9, v10, v11, v12, v13, v14);
}

int **CGRegionCreateDifferenceWithRegion(int **result, uint64_t a2)
{
  if (result)
  {
    if (!a2 || (v3 = *(a2 + 16), v3 == &the_empty_shape) || v3[v3[1]] == 0x7FFFFFFF)
    {

      return CFRetain(result);
    }

    else
    {
      v4 = shape_difference(result, result[2], v3);

      return region_create_with_shape(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return result;
}

void *CGRegionCreateXORWithRegion(void *a1, void *cf)
{
  if (!a1)
  {
    if (!cf)
    {
      return 0;
    }

LABEL_11:
    a1 = cf;

    return CFRetain(a1);
  }

  if (!cf)
  {
LABEL_7:

    return CFRetain(a1);
  }

  v4 = a1[2];
  if (v4 == &the_empty_shape || *(v4 + 4 * *(v4 + 4)) == 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  v5 = cf[2];
  if (v5 == &the_empty_shape || *(v5 + 4 * *(v5 + 4)) == 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v7 = shape_xor(a1, v4, v5);

  return region_create_with_shape(v7, v8, v9, v10, v11, v12, v13, v14);
}

void *CGRegionCreateBySimplifyingRegion(void *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  v9 = cf[2];
  if (v9 == &the_empty_shape)
  {
    goto LABEL_36;
  }

  v10 = v9[1];
  if (v9[v10] == 0x7FFFFFFF || !v9)
  {
    goto LABEL_36;
  }

  if (*v9 != 0x80000000 || v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v14 = a2;
    v29[1] = 0;
    v27 = 0;
    v28 = 0;
    v15 = shape_bounds(v9, &v28, &v28 + 1, &v27 + 1, &v27);
    if (v15 >= 9)
    {
      if ((v14 & 1) == 0)
      {
        *&v31[0] = 0x280000000;
        *(&v31[0] + 1) = HIDWORD(v28) | 0x400000000;
        *&v31[1] = __PAIR64__(HIDWORD(v27), v28);
        DWORD2(v31[1]) = v27;
        *(&v31[1] + 12) = 0x7FFFFFFF00000002;
        v9 = shape_difference(v15, v31, v9);
      }

      v29[0] = 8;
      v29[2] = v31;
      v29[3] = v30;
      memset(v31, 0, sizeof(v31));
      memset(v30, 0, sizeof(v30));
      v16 = &v9[v9[1]];
      v17 = *v16;
      if (v17 != 0x7FFFFFFF)
      {
        do
        {
          v18 = v16[1];
          if (v16[v18] == 0x7FFFFFFF)
          {
            break;
          }

          HIDWORD(v28) = v17;
          v19 = &v16[v18];
          v20 = *v19;
          LODWORD(v27) = *v19;
          if (v18 == 2)
          {
            v21 = 2;
          }

          else
          {
            v22 = (v16 + 2);
            do
            {
              v23 = *v22;
              v24 = v22[1];
              v22 += 2;
              shape_accum_add(v29, v23, v17, v24, v20);
            }

            while (v22 != v19);
            v21 = v16[1];
            v20 = v16[v21];
          }

          v16 += v21;
          v17 = v20;
        }

        while (v20 != 0x7FFFFFFF);
      }

      if (v14)
      {
        v9 = shape_accum_shape(v29);
      }

      else
      {
        if (v9 && v9 != &the_empty_shape)
        {
          free(v9);
        }

        v25 = shape_accum_shape(v29);
        v26 = shape_bounds(v25, &v28, &v28 + 1, &v27 + 1, &v27);
        *&v31[0] = 0x280000000;
        *(&v31[0] + 1) = HIDWORD(v28) | 0x400000000;
        *&v31[1] = __PAIR64__(HIDWORD(v27), v28);
        DWORD2(v31[1]) = v27;
        *(&v31[1] + 12) = 0x7FFFFFFF00000002;
        v9 = shape_difference(v26, v31, v25);
        if (v25 && v25 != &the_empty_shape)
        {
          free(v25);
        }
      }
    }

    v12 = v9;
    v9 = cf[2];
  }

  if (v12 == v9)
  {
LABEL_36:

    return CFRetain(cf);
  }

  else
  {

    return region_create_with_shape(v12, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t *CGRegionCreateByTransformingRegion(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    return result;
  }

  v8 = result[2];
  if (v8 == &the_empty_shape || v8[v8[1]] == 0x7FFFFFFF)
  {
    goto LABEL_4;
  }

  v9 = a3;
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  if (*a2 == 1.0 && v10 == 0.0 && v12 == 0.0 && v13 == 1.0)
  {
    if (v14.f64[0] != 0.0 || v14.f64[1] != 0.0)
    {
      v16 = v14.f64[0];
      v17 = v16;
      v18 = v14.f64[1];
      v19 = v18;

      return CGRegionCreateWithOffset(result, v17, v19, a2, a3, a4, a5, a6, a7, a8);
    }

LABEL_4:

    return CFRetain(result);
  }

  v20.f64[0] = *a2;
  v20.f64[1] = *(a2 + 24);
  v21 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(vrndmq_f64(v20), v20), vceqq_f64(vrndmq_f64(v14), v14)))) & (v13 < 0.0);
  if (v11 <= 0.0)
  {
    v21 = 0;
  }

  if (v12 != 0.0)
  {
    v21 = 0;
  }

  if (v21 == 1 && v10 == 0.0)
  {
    v22 = shape_reverse_y(result[2], v11, v13, v14.f64[0], v14.f64[1]);
    goto LABEL_102;
  }

  v23 = 0;
  v24 = v8 + 2;
  v25 = v12 == 0.0 && v10 == 0.0;
  v26 = -v11;
  v27 = *(a2 + 40);
  v28 = &the_empty_shape;
  v70 = *a2;
  v71 = *(a2 + 32);
  v69 = *(a2 + 24);
  while (v8)
  {
    if (!v23)
    {
      while (1)
      {
        v8 = v24;
        v30 = v24[1];
        v24 += v30;
        v29 = *v24;
        if (*v24 == 0x7FFFFFFF)
        {
          goto LABEL_101;
        }

        v23 = v30 - 2;
        if (v30 != 2)
        {
          goto LABEL_36;
        }
      }
    }

    v29 = *v24;
LABEL_36:
    v31 = &v24[-v23];
    v33 = *v31;
    v32 = v31[1];
    v34 = *v8;
    v35 = v33;
    if (v25)
    {
      v36 = v14.f64[0] + v11 * v35;
      v37 = v14.f64[0] + v11 * v32;
      if (v36 <= v37)
      {
        v38 = v14.f64[0] + v11 * v35;
      }

      else
      {
        v38 = v14.f64[0] + v11 * v32;
      }

      if (v36 <= v37)
      {
        v36 = v14.f64[0] + v11 * v32;
      }

      v39 = v27 + v13 * v34;
      v40 = v27 + v13 * v29;
      if (v39 > v40)
      {
        v41 = v27 + v13 * v29;
      }

      else
      {
        v41 = v27 + v13 * v34;
      }

      if (v39 <= v40)
      {
        v39 = v27 + v13 * v29;
      }

      goto LABEL_90;
    }

    v42 = v32 - v33;
    v43 = v42;
    v44 = (v29 - v34);
    v45 = v14.f64[0] + v12 * v34 + v11 * v35;
    v46 = v27 + v13 * v34 + v10 * v35;
    v47 = v45 + v11 * v42;
    v48 = v46 + v10 * v42;
    if (v47 > v45)
    {
      v49 = v45 + v11 * v42;
    }

    else
    {
      v49 = v45;
    }

    if (v47 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v45 + v11 * v42;
    }

    if (v47 >= v45)
    {
      v45 = v49;
    }

    if (v48 > v46)
    {
      v51 = v46 + v10 * v42;
    }

    else
    {
      v51 = v46;
    }

    if (v48 >= v46)
    {
      v52 = v46;
    }

    else
    {
      v52 = v46 + v10 * v42;
    }

    if (v48 >= v46)
    {
      v53 = v51;
    }

    else
    {
      v53 = v46;
    }

    v54 = v47 + v12 * v44;
    v55 = v48 + v13 * v44;
    if (v54 > v45)
    {
      v56 = v54;
    }

    else
    {
      v56 = v45;
    }

    if (v54 >= v50)
    {
      v38 = v50;
    }

    else
    {
      v38 = v54;
    }

    if (v54 >= v50)
    {
      v57 = v56;
    }

    else
    {
      v57 = v45;
    }

    if (v55 > v53)
    {
      v58 = v55;
    }

    else
    {
      v58 = v53;
    }

    if (v55 >= v52)
    {
      v41 = v52;
    }

    else
    {
      v41 = v55;
    }

    if (v55 < v52)
    {
      v58 = v53;
    }

    v36 = v54 + v26 * v43;
    if (v36 >= v38)
    {
      if (v36 > v57)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v38 = v36;
    }

    v36 = v57;
LABEL_86:
    v39 = v55 + -v10 * v43;
    if (v39 < v41)
    {
      v41 = v39;
LABEL_89:
      v39 = v58;
      goto LABEL_90;
    }

    if (v39 <= v58)
    {
      goto LABEL_89;
    }

LABEL_90:
    v59 = ceil(v38 + -0.00390625);
    v60 = floor(v36 + 0.00390625);
    v61 = ceil(v41 + -0.00390625);
    v62 = floor(v39 + 0.00390625);
    v63 = floor(v38 + 0.00390625);
    v64 = ceil(v36 + -0.00390625);
    v65 = floor(v41 + 0.00390625);
    v66 = ceil(v39 + -0.00390625);
    if (v9 != 1)
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
    }

    a3 = v65;
    a4 = v64;
    a2 = v63;
    a5 = v66;
    if (a2 < a4 && a3 < a5)
    {
      v68 = shape_union_with_bounds(v28, a2, a3, a4, a5);
      if (v28 != &the_empty_shape)
      {
        free(v28);
      }

      v11 = v70;
      v14.f64[0] = v71;
      v13 = v69;
    }

    else
    {
      v68 = v28;
    }

    v23 -= 2;
    v28 = v68;
    if (!v68)
    {
      break;
    }
  }

LABEL_101:
  v22 = v28;
LABEL_102:

  return region_create_with_shape(v22, a2, a3, a4, a5, a6, a7, a8);
}

BOOL CGRegionIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  return v1 == &the_empty_shape || *(v1 + 4 * *(v1 + 4)) == 0x7FFFFFFF;
}

void *CGRegionCreateByScalingRegion(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2 <= 0.0)
  {
    _CGHandleAssert("CGRegionCreateByScalingRegion", 479, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "scale > 0", "scale %f must be positive", a7, a8, a9, SLOBYTE(a2));
  }

  if (!a1)
  {
    return 0;
  }

  v9 = a1[2];
  if (v9 == &the_empty_shape || (a2 != 1.0 ? (v10 = *(v9 + 4 * *(v9 + 4)) == 0x7FFFFFFF) : (v10 = 1), v10))
  {

    return CFRetain(a1);
  }

  else
  {
    v12 = vcvtd_n_s64_f64(a2, 8uLL);
    v13 = shape_length(a1[2]);
    if (v13 == 5)
    {
      v21 = vshr_n_s32(vmla_s32(0x100000001, *(v9 + 8), vdup_n_s32(v12)), 8uLL);
      if (vorr_s8(vdup_lane_s32(v21, 1), v21).u32[0])
      {
        v31 = v21;
        v22 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
        *v22 = 0x480000000;
        v22[1] = v31;
        *(v22 + 4) = 0x7FFFFFFF;
      }

      else
      {
        v22 = &the_empty_shape;
      }
    }

    else
    {
      v23 = malloc_type_malloc(0x38uLL, 0x1050040CAC2EC8CuLL);
      v24 = v23;
      *v23 = 0;
      *(v23 + 4) = xmmword_18439CC20;
      *(v23 + 20) = vneg_f32(0x100000001);
      *(v23 + 5) = 0;
      *(v23 + 6) = 0;
      *(v23 + 4) = 0;
      if (*(v9 + 4 * *(v9 + 4)) != 0x7FFFFFFF)
      {
        *(v23 + 1) = 0;
        *(v23 + 4) = v9;
        *(v23 + 5) = v9 + 8;
      }

      v32 = 0;
      v33 = 0;
      v22 = &the_empty_shape;
      while (1)
      {
        v25 = shape_enum_next(v24, &v33 + 1, &v33, &v32 + 1, &v32);
        if (!v25)
        {
          break;
        }

        v26 = (HIDWORD(v33) * v12 + 1) >> 8;
        v27 = (v33 * v12 + 1) >> 8;
        v33 = __PAIR64__(v26, v27);
        v28 = (HIDWORD(v32) * v12 + 255) >> 8;
        v29 = (v32 * v12 + 255) >> 8;
        v32 = __PAIR64__(v28, v29);
        if (v22 == &the_empty_shape)
        {
          v22 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
          *v22 = 0x280000000;
          *(v22 + 2) = v27;
          *(v22 + 3) = 4;
          *(v22 + 4) = v26;
          *(v22 + 5) = v28;
          *(v22 + 6) = v29;
          *(v22 + 28) = 0x7FFFFFFF00000002;
        }

        else
        {
          v34 = 0x280000000;
          v35 = v27;
          v36 = 4;
          v37 = v26;
          v38 = v28;
          v39 = v29;
          v40 = 0x7FFFFFFF00000002;
          v30 = shape_union(v25, v22, &v34);
          if (v22)
          {
            free(v22);
          }

          v22 = v30;
        }
      }

      free(v24);
    }

    return region_create_with_shape(v22, v14, v15, v16, v17, v18, v19, v20);
  }
}

CFTypeRef CGRegionRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGRegionRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGRegionEqualToRegion(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return 1;
    }

    v7 = *(a2 + 16);
LABEL_13:
    if (v7 != &the_empty_shape)
    {
      return *(v7 + 4 * *(v7 + 4)) == 0x7FFFFFFF;
    }

    return 1;
  }

  if (!a2)
  {
    v7 = *(a1 + 16);
    goto LABEL_13;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return 1;
  }

  if (v2 != &the_empty_shape)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 4 * v4);
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(v3 + 4);
      goto LABEL_17;
    }
  }

  if (v3 == &the_empty_shape)
  {
    return 1;
  }

  v6 = *(v3 + 4);
  if (*(v3 + 4 * v6) == 0x7FFFFFFF)
  {
    return 1;
  }

  v4 = *(v2 + 4);
  v5 = *(v2 + 4 * v4);
LABEL_17:
  v9 = (v2 + 4 * v4);
  v10 = (v3 + 4 * v6);
  while (2)
  {
    if (v5 == 0x7FFFFFFF)
    {
      v13 = *v10;
      v14 = 1;
LABEL_34:
      if (v13 != 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

LABEL_37:
      v25 = 1;
      return v14 ^ v25 ^ 1u;
    }

    v11 = v9[1];
    v12 = &v9[v11];
    v13 = *v10;
    v14 = *v12 == 0x7FFFFFFF;
    if (*v12 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    if (v13 == 0x7FFFFFFF)
    {
      v14 = 0;
      goto LABEL_37;
    }

    v15 = v10[1];
    v16 = &v10[v15];
    if (*v16 == 0x7FFFFFFF)
    {
      v14 = 0;
LABEL_39:
      v25 = v10[v10[1]] == 0x7FFFFFFF;
      return v14 ^ v25 ^ 1u;
    }

    result = 0;
    if (v5 == v13 && *v12 == *v16)
    {
      v5 = *v12;
      v17 = v9 + 3;
      v18 = 4 * v11 - 8;
      v19 = v10 + 3;
      v20 = 4 * v15 - 8;
      while (v18 && v20)
      {
        if (*(v17 - 1) == *(v19 - 1))
        {
          v22 = *v17;
          v17 += 2;
          v21 = v22;
          v23 = *v19;
          v19 += 2;
          v18 -= 8;
          v20 -= 8;
          if (v21 == v23)
          {
            continue;
          }
        }

        return 0;
      }

      result = 0;
      v24 = (v18 == 0) ^ (v20 == 0);
      v10 = v16;
      v9 = v12;
      if ((v24 & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t CGRegionIsValid(void *a1)
{
  if (a1)
  {
    return region_check(a1);
  }

  else
  {
    return 1;
  }
}

BOOL CGRegionContainsPoint(_BOOL8 result, double a2, double a3)
{
  if (result)
  {
    v3 = vcvtmd_s64_f64(a2);
    v4 = vcvtmd_s64_f64(a3);
    v5 = *(result + 16);
    if (v5 == result + 24)
    {
      return *(result + 44) > v3 && *(result + 48) > v4 && *(result + 40) <= v3 && *(result + 32) <= v4;
    }

    else
    {
      return shape_contains_point(v5, v3, v4) != 0;
    }
  }

  return result;
}

BOOL CGRegionContainsRect(_BOOL8 result, double a2, double a3, double a4, double a5)
{
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    result = rect_to_bounds(&v7 + 1, &v7, &v6 + 1, &v6, a2, a3, a4, a5);
    if (result)
    {
      return shape_contains_bounds(*(v5 + 16), SHIDWORD(v7), v7, SHIDWORD(v6), v6) != 0;
    }
  }

  return result;
}

uint64_t CGRegionContainsRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    _CGHandleAssert("assert_check_region", 46, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "r != NULL", "NULL region", a6, a7, a8, vars0);
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8)
  {
    v10 = v8 == &the_empty_shape;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v9 == &the_empty_shape;
  if (v11 || *v8 != 0x80000000)
  {
    return 0;
  }

  result = 0;
  if (v9)
  {
    v13 = v8[1];
    if (v13 >= 1)
    {
      if (*v9 == 0x80000000)
      {
        v14 = v9[1];
        if (v14 >= 1 && v8[v13] != 0x7FFFFFFF && v9[v14] != 0x7FFFFFFF)
        {
          if (v8 == v9)
          {
            return 1;
          }

          v17 = v9[2];
          v15 = v9 + 2;
          v16 = v17;
          v18 = v8 + 2;
          if (v17 == 0x7FFFFFFF)
          {
            return *v18 != 0x7FFFFFFF;
          }

LABEL_22:
          v19 = *v18;
          if (*v18 == 0x7FFFFFFF)
          {
            return *v18 != 0x7FFFFFFF;
          }

          v20 = v15[1];
          if (v20 == 2)
          {
            v21 = v15[2];
            v20 = 2;
            goto LABEL_25;
          }

          v22 = &v15[v20];
          v24 = *v22;
          v23 = (v22 - 1);
          v21 = v24;
          while (1)
          {
            v25 = v18[1];
            if (v25 == 2)
            {
              v19 = v18[2];
              v25 = 2;
            }

            else
            {
              if (v16 < v19)
              {
                return 0;
              }

              v26 = &v18[v25];
              v19 = *v26;
              if (v16 < *v26)
              {
                v27 = v18 + 2;
                v28 = v26 - 1;
                v29 = 0x80000000;
                v30 = v15;
                while (1)
                {
                  v31 = v30 + 2;
                  if ((v30 + 2) >= v23)
                  {
                    break;
                  }

                  v32 = v30[2];
                  if (v27 < v28)
                  {
                    while (v32 >= *v27)
                    {
                      v29 = v27[1];
                      if (v32 <= v29)
                      {
                        if (v30[3] > v29)
                        {
                          return 0;
                        }

                        goto LABEL_40;
                      }

                      v27 += 2;
                      if (v27 >= v28)
                      {
                        goto LABEL_40;
                      }
                    }

                    return 0;
                  }

LABEL_40:
                  v30 += 2;
                  if (v27 >= v28)
                  {
                    result = 0;
                    v30 = v31;
                    if (v32 > v29)
                    {
                      return result;
                    }
                  }
                }

                v16 = *v26;
                if (v21 > v19)
                {
                  goto LABEL_44;
                }

                if (v21 == v19)
                {
                  v18 += v25;
                }

LABEL_25:
                v15 += v20;
                v16 = v21;
                if (v21 == 0x7FFFFFFF)
                {
                  return *v18 != 0x7FFFFFFF;
                }

                goto LABEL_22;
              }
            }

LABEL_44:
            v18 += v25;
            if (v19 == 0x7FFFFFFF)
            {
              goto LABEL_25;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}