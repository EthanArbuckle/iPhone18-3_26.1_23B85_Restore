uint64_t A8_mark_pixelmask(uint64_t result, int a2)
{
  v2 = *(result + 136);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 4);
  v4 = *(result + 8);
  v5 = v3;
  v6 = *(result + 28);
  v8 = *(result + 88);
  v7 = *(result + 96);
  v9 = (*(result + 40) + *(result + 16) * v6 + *(result + 12));
  v10 = *(result + 124);
  v11 = (v2 + *(result + 108) * v10 + *(result + 104));
  v12 = *(result + 56);
  v13 = *(result + 60);
  v14 = *(result + 76);
  if (*(result + 1) << 8 == 256)
  {
    v15 = (v8 + v14 * v13 + v12);
    if (v14 == v6 && v9 - v15 >= 1)
    {
      if (v9 - v15 <= v3)
      {
        v62 = v3 - 1;
        v9 += v62;
        v15 += v62;
        v11 += v62;
        v18 = -1;
        goto LABEL_8;
      }

      v16 = v4 - 1;
      v17 = &v15[v14 * v16];
      if (v9 <= &v17[v3 - 1])
      {
        v9 += v6 * v16;
        v6 = -v6;
        v14 = -v14;
        v11 += v10 * v16;
        v10 = -v10;
        v18 = 1;
        v15 = v17;
        goto LABEL_8;
      }
    }

    v18 = 1;
LABEL_8:
    v19 = 0;
    v5 = v18 * v3;
    v20 = v7 != 0;
    v21 = v10 - v5;
    v22 = v6 - v5;
    v23 = v18;
    v24 = -1;
    v25 = v14;
    goto LABEL_12;
  }

  v26 = *(result + 64);
  v27 = *(result + 68);
  v20 = v7 != 0;
  v21 = v10 - v3;
  v22 = v6 - v3;
  if (v8)
  {
    v28 = 0;
    v29 = v26;
    v30 = v27;
    v31 = v8 + v27 * v14;
    v32 = v8 + v14 * (v13 % v27);
    v15 = (v32 + v12 % v26);
    v24 = v32 + v26;
    v23 = 1;
    v33 = v15;
    goto LABEL_13;
  }

  v24 = 0;
  v15 = 0;
  v23 = 1;
  v25 = *(result + 64);
  v19 = *(result + 68);
LABEL_12:
  v31 = 0;
  v33 = 0;
  v14 -= v5;
  v29 = v25;
  v30 = v19;
  v28 = 1;
LABEL_13:
  result = *(result + 48);
  switch(a2)
  {
    case 0:
      do
      {
        v45 = v3;
        do
        {
          v46 = *v11;
          if (*v11)
          {
            if (v46 == 255)
            {
              LOBYTE(v47) = 0;
            }

            else
            {
              v47 = *v9 - ((*v9 * v46 + ((*v9 * v46) >> 8) + 1) >> 8);
            }

            *v9 = v47;
          }

          v11 += v23;
          v9 += v23;
          --v45;
        }

        while (v45);
        v11 += v21;
        v9 += v22;
        --v4;
      }

      while (v4);
      return result;
    case 1:
      goto LABEL_46;
    case 2:
      goto LABEL_15;
    case 3:
      v97 = -v29;
      do
      {
        v98 = v3;
        do
        {
          v99 = *v11;
          if (*v11)
          {
            if (v99 == 255)
            {
              v100 = *v15 - (((*v9 ^ 0xFF) * *v15 + (((*v9 ^ 0xFF) * *v15) >> 8) + 1) >> 8);
            }

            else
            {
              v101 = *v9;
              v102 = (v101 * v99 + ((v101 * v99) >> 8) + 1) >> 8;
              v100 = (v101 * (v99 ^ 0xFF) + v102 * *v15 + ((v101 * (v99 ^ 0xFF) + v102 * *v15) >> 8) + 1) >> 8;
            }

            *v9 = v100;
          }

          v11 += v23;
          v9 += v23;
          v103 = &v15[v23];
          if (&v15[v23] >= v24)
          {
            v104 = v97;
          }

          else
          {
            v104 = 0;
          }

          v15 = &v103[v104];
          --v98;
        }

        while (v98);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v105 = -(v14 * v30);
        }

        else
        {
          v105 = 0;
        }

        result = &v33[v14 + v105];
        v106 = v24 + v14 + v105;
        v15 += v14;
        if (!v28)
        {
          v15 = result;
          v33 = result;
          v24 = v106;
        }

        --v4;
      }

      while (v4);
      return result;
    case 4:
      v70 = -v29;
      do
      {
        v71 = v3;
        do
        {
          v72 = *v11;
          if (*v11)
          {
            if (v72 == 255)
            {
              v73 = *v15 - ((*v9 * *v15 + ((*v9 * *v15) >> 8) + 1) >> 8);
            }

            else
            {
              v74 = *v9;
              v75 = ((v74 ^ 0xFF) * v72 + (((v74 ^ 0xFFu) * v72) >> 8) + 1) >> 8;
              v73 = (v74 * (v72 ^ 0xFF) + v75 * *v15 + ((v74 * (v72 ^ 0xFF) + v75 * *v15) >> 8) + 1) >> 8;
            }

            *v9 = v73;
          }

          v11 += v23;
          v9 += v23;
          v76 = &v15[v23];
          if (&v15[v23] >= v24)
          {
            v77 = v70;
          }

          else
          {
            v77 = 0;
          }

          v15 = &v76[v77];
          --v71;
        }

        while (v71);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v78 = -(v14 * v30);
        }

        else
        {
          v78 = 0;
        }

        result = &v33[v14 + v78];
        v79 = v24 + v14 + v78;
        v15 += v14;
        if (!v28)
        {
          v15 = result;
          v33 = result;
          v24 = v79;
        }

        --v4;
      }

      while (v4);
      return result;
    case 5:
      do
      {
        v116 = v3;
        do
        {
          if (*v11)
          {
            *v9 = (255 * *v9 + ((255 * *v9) >> 8) + 1) >> 8;
          }

          v11 += v23;
          v9 += v23;
          v117 = &v15[v23];
          if (&v15[v23] >= v24)
          {
            v118 = -v29;
          }

          else
          {
            v118 = 0;
          }

          v15 = &v117[v118];
          --v116;
        }

        while (v116);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v119 = -(v14 * v30);
        }

        else
        {
          v119 = 0;
        }

        result = &v33[v14 + v119];
        v120 = v24 + v14 + v119;
        v15 += v14;
        if (!v28)
        {
          v15 = result;
          v33 = result;
          v24 = v120;
        }

        --v4;
      }

      while (v4);
      return result;
    case 6:
      v121 = -(v14 * v30);
      result = 255;
      do
      {
        v122 = v3;
        do
        {
          v123 = *v11;
          if (*v11)
          {
            v124 = *v9;
            if (v124 != 0xFF)
            {
              if (~v124 == 255)
              {
                v125 = *v15 - ((*v15 * (v123 ^ 0xFF) + ((*v15 * (v123 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              else
              {
                v126 = ((~v124 * v123 + ((~v124 * v123) >> 8) + 1) >> 8) * *v15;
                v125 = v124 + ((v126 + (v126 >> 8) + 1) >> 8);
              }

              *v9 = v125;
            }
          }

          v11 += v23;
          v9 += v23;
          v127 = &v15[v23];
          if (v127 >= v24)
          {
            v128 = -v29;
          }

          else
          {
            v128 = 0;
          }

          v15 = &v127[v128];
          --v122;
        }

        while (v122);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v129 = v121;
        }

        else
        {
          v129 = 0;
        }

        v130 = &v33[v14 + v129];
        v131 = v24 + v14 + v129;
        v15 += v14;
        if (!v28)
        {
          v15 = v130;
          v33 = v130;
          v24 = v131;
        }

        --v4;
      }

      while (v4);
      return result;
    case 7:
      v107 = -(v14 * v30);
      do
      {
        v108 = v3;
        do
        {
          v109 = *v11;
          if (*v11)
          {
            if (v109 == 255)
            {
              v110 = *v9 - (((*v15 ^ 0xFF) * *v9 + (((*v15 ^ 0xFF) * *v9) >> 8) + 1) >> 8);
            }

            else
            {
              v111 = *v15 * v109 + ((*v15 * v109) >> 8) + 1;
              v110 = (((v109 ^ 0xFF) + (v111 >> 8)) * *v9 + ((((v109 ^ 0xFF) + (v111 >> 8)) * *v9) >> 8) + 1) >> 8;
            }

            *v9 = v110;
          }

          v11 += v23;
          v9 += v23;
          v112 = &v15[v23];
          if (&v15[v23] >= v24)
          {
            v113 = -v29;
          }

          else
          {
            v113 = 0;
          }

          v15 = &v112[v113];
          --v108;
        }

        while (v108);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v114 = v107;
        }

        else
        {
          v114 = 0;
        }

        result = &v33[v14 + v114];
        v115 = v24 + v14 + v114;
        v15 += v14;
        if (!v28)
        {
          v15 = result;
          v33 = result;
          v24 = v115;
        }

        --v4;
      }

      while (v4);
      return result;
    case 8:
      do
      {
        v139 = v3;
        do
        {
          v140 = *v11;
          if (*v11)
          {
            if (v140 == 255)
            {
              v141 = *v15;
            }

            else
            {
              v141 = (*v15 * v140 + ((*v15 * v140) >> 8) + 1) >> 8;
            }

            *v9 -= (v141 * *v9 + ((v141 * *v9) >> 8) + 1) >> 8;
          }

          v11 += v23;
          v9 += v23;
          v142 = &v15[v23];
          if (&v15[v23] >= v24)
          {
            v143 = -v29;
          }

          else
          {
            v143 = 0;
          }

          v15 = &v142[v143];
          --v139;
        }

        while (v139);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v144 = -(v14 * v30);
        }

        else
        {
          v144 = 0;
        }

        result = &v33[v14 + v144];
        v145 = v24 + v14 + v144;
        v15 += v14;
        if (!v28)
        {
          v15 = result;
          v33 = result;
          v24 = v145;
        }

        --v4;
      }

      while (v4);
      return result;
    case 9:
      v87 = -v29;
      result = 255;
      do
      {
        v88 = v3;
        do
        {
          v89 = *v11;
          if (*v11)
          {
            v90 = ~v89;
            v91 = *v15 - ((*v15 * ~v89 + ((*v15 * ~v89) >> 8) + 1) >> 8);
            *v9 = (v91 * (*v9 ^ 0xFF) + (v91 + v90) * *v9 + ((v91 * (*v9 ^ 0xFF) + (v91 + v90) * *v9) >> 8) + 1) >> 8;
          }

          v11 += v23;
          v9 += v23;
          v92 = &v15[v23];
          if (v92 >= v24)
          {
            v93 = v87;
          }

          else
          {
            v93 = 0;
          }

          v15 = &v92[v93];
          --v88;
        }

        while (v88);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v94 = -(v14 * v30);
        }

        else
        {
          v94 = 0;
        }

        v95 = &v33[v14 + v94];
        v96 = v24 + v14 + v94;
        v15 += v14;
        if (!v28)
        {
          v15 = v95;
          v33 = v95;
          v24 = v96;
        }

        --v4;
      }

      while (v4);
      return result;
    case 10:
      result = 255;
      do
      {
        v132 = v3;
        do
        {
          if (*v11)
          {
            v133 = *v15 - ((*v15 * (*v11 ^ 0xFF) + ((*v15 * (*v11 ^ 0xFFu)) >> 8) + 1) >> 8);
            *v9 = (v133 * (*v9 ^ 0xFF) + ~v133 * *v9 + ((v133 * (*v9 ^ 0xFF) + ~v133 * *v9) >> 8) + 1) >> 8;
          }

          v11 += v23;
          v9 += v23;
          v134 = &v15[v23];
          if (v134 >= v24)
          {
            v135 = -v29;
          }

          else
          {
            v135 = 0;
          }

          v15 = &v134[v135];
          --v132;
        }

        while (v132);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v136 = -(v14 * v30);
        }

        else
        {
          v136 = 0;
        }

        v137 = &v33[v14 + v136];
        v138 = v24 + v14 + v136;
        v15 += v14;
        if (!v28)
        {
          v15 = v137;
          v33 = v137;
          v24 = v138;
        }

        --v4;
      }

      while (v4);
      return result;
    case 11:
      result = 255;
      do
      {
        v63 = v3;
        do
        {
          if (*v11)
          {
            v64 = *v9 + (*v15 - ((*v15 * (*v11 ^ 0xFF) + ((*v15 * (*v11 ^ 0xFFu)) >> 8) + 1) >> 8));
            if (v64 >= 0xFF)
            {
              LOBYTE(v64) = -1;
            }

            *v9 = v64;
          }

          v11 += v23;
          v9 += v23;
          v65 = &v15[v23];
          if (v65 >= v24)
          {
            v66 = -v29;
          }

          else
          {
            v66 = 0;
          }

          v15 = &v65[v66];
          --v63;
        }

        while (v63);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v67 = -(v14 * v30);
        }

        else
        {
          v67 = 0;
        }

        v68 = &v33[v14 + v67];
        v69 = v24 + v14 + v67;
        v15 += v14;
        if (!v28)
        {
          v15 = v68;
          v33 = v68;
          v24 = v69;
        }

        --v4;
      }

      while (v4);
      return result;
    case 12:
      result = 255;
      do
      {
        v80 = v3;
        do
        {
          if (*v11)
          {
            v81 = *v9 + (*v15 - ((*v15 * (*v11 ^ 0xFF) + ((*v15 * (*v11 ^ 0xFFu)) >> 8) + 1) >> 8));
            if (v81 >= 0xFF)
            {
              LOBYTE(v81) = -1;
            }

            *v9 = v81;
          }

          v11 += v23;
          v9 += v23;
          v82 = &v15[v23];
          if (v82 >= v24)
          {
            v83 = -v29;
          }

          else
          {
            v83 = 0;
          }

          v15 = &v82[v83];
          --v80;
        }

        while (v80);
        v11 += v21;
        v9 += v22;
        if (&v33[v14] >= v31)
        {
          v84 = -(v14 * v30);
        }

        else
        {
          v84 = 0;
        }

        v85 = &v33[v14 + v84];
        v86 = v24 + v14 + v84;
        v15 += v14;
        if (!v28)
        {
          v15 = v85;
          v33 = v85;
          v24 = v86;
        }

        --v4;
      }

      while (v4);
      return result;
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      if (!v20)
      {
LABEL_46:
        if (result == 0 || v20)
        {
          do
          {
            v48 = v3;
            do
            {
              v49 = *v11;
              if (*v11)
              {
                if (v49 == 255)
                {
                  LOBYTE(v50) = *v15;
                }

                else
                {
                  v50 = (*v15 * v49 + *v9 * (v49 ^ 0xFF) + ((*v15 * v49 + *v9 * (v49 ^ 0xFFu)) >> 8) + 1) >> 8;
                }

                *v9 = v50;
              }

              v11 += v23;
              v9 += v23;
              v51 = &v15[v23];
              if (&v15[v23] >= v24)
              {
                v52 = -v29;
              }

              else
              {
                v52 = 0;
              }

              v15 = &v51[v52];
              --v48;
            }

            while (v48);
            v11 += v21;
            v9 += v22;
            if (&v33[v14] >= v31)
            {
              v53 = -(v14 * v30);
            }

            else
            {
              v53 = 0;
            }

            result = &v33[v14 + v53];
            v54 = v24 + v14 + v53;
            v15 += v14;
            if (!v28)
            {
              v15 = result;
              v33 = result;
              v24 = v54;
            }

            --v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v55 = v3;
            do
            {
              v56 = *v11;
              if (*v11)
              {
                if (v56 == 255)
                {
                  LOBYTE(v57) = *v15;
                }

                else
                {
                  v57 = (*v9 * (v56 ^ 0xFF) + *v15 * v56 + ((*v9 * (v56 ^ 0xFF) + *v15 * v56) >> 8) + 1) >> 8;
                }

                *v9 = v57;
              }

              v11 += v23;
              v9 += v23;
              v58 = &v15[v23];
              if (&v15[v23] >= v24)
              {
                v59 = -v29;
              }

              else
              {
                v59 = 0;
              }

              v15 = &v58[v59];
              --v55;
            }

            while (v55);
            v11 += v21;
            v9 += v22;
            if (&v33[v14] >= v31)
            {
              v60 = -(v14 * v30);
            }

            else
            {
              v60 = 0;
            }

            result = &v33[v14 + v60];
            v61 = v24 + v14 + v60;
            v15 += v14;
            if (!v28)
            {
              v15 = result;
              v33 = result;
              v24 = v61;
            }

            --v4;
          }

          while (v4);
        }

        return result;
      }

LABEL_15:
      v34 = -(v14 * v30);
      result = 255;
      break;
    default:
      return result;
  }

  do
  {
    v35 = v3;
    do
    {
      v36 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      if (v36 == 255)
      {
        v37 = *v15;
        if (!*v15)
        {
          goto LABEL_26;
        }

        if (v37 == 255)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v38 = *v15;
        v39 = v38 * (v36 ^ 0xFF) + ((v38 * (v36 ^ 0xFFu)) >> 8) + 1;
        if (v38 == BYTE1(v39))
        {
          goto LABEL_26;
        }

        v37 = v38 - (v39 >> 8);
      }

      v37 += (*v9 * ~v37 + ((*v9 * ~v37) >> 8) + 1) >> 8;
LABEL_25:
      *v9 = v37;
LABEL_26:
      v11 += v23;
      v9 += v23;
      v40 = &v15[v23];
      if (v40 >= v24)
      {
        v41 = -v29;
      }

      else
      {
        v41 = 0;
      }

      v15 = &v40[v41];
      --v35;
    }

    while (v35);
    v11 += v21;
    v9 += v22;
    if (&v33[v14] >= v31)
    {
      v42 = v34;
    }

    else
    {
      v42 = 0;
    }

    v43 = &v33[v14 + v42];
    v44 = v24 + v14 + v42;
    v15 += v14;
    if (!v28)
    {
      v15 = v43;
      v33 = v43;
      v24 = v44;
    }

    --v4;
  }

  while (v4);
  return result;
}

void A8_mark_image_OPAQUE(uint64_t a1, uint64_t a2, float a3)
{
  v4 = ((a3 * 255.0) + 0.5);
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v13 = v6;
  v14 = v5;
  v7 = *(a1 + 136);
  if (v7)
  {
    v8 = *(a1 + 104);
    LODWORD(v15) = *(a1 + 108);
    HIDWORD(v15) = v8;
    shape_enum_clip_alloc(a1, a2, v7, 1, 1, 1, v8, v15, v5, v6);
    v10 = v9;
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
  v12 = 0;
  v10 = 0;
  v15 = 0;
  while (1)
  {
    CGBlt_fillBytes(v5, v6, 16843009 * v4, (*(a1 + 40) + (*(a1 + 16) + v12) * *(a1 + 28) + *(a1 + 12) + v11), *(a1 + 28));
    if (!v10)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v10, &v15 + 1, &v15, &v14, &v13))
    {

      free(v10);
      return;
    }

    v12 = v15;
    v11 = HIDWORD(v15);
    v6 = v13;
    v5 = v14;
  }
}

void A8_mark_image_RGBA32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*(a1 + 96))
  {
    v9 = 0;
  }

  else
  {
    v9 = 16843009 * ((*(a2 + 8) * 255.0) + 0.5);
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 8);
  v39 = v11;
  v40 = v10;
  v12 = *(a1 + 136);
  if (v12)
  {
    v13 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v13;
    shape_enum_clip_alloc(a1, a2, v12, 1, 1, 1, v13, i, v10, v11);
    v15 = v14;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 0;
  v15 = 0;
  for (i = 0; ; v16 = HIDWORD(i))
  {
    v18 = *(a1 + 28);
    v19 = (*(a1 + 40) + (*(a1 + 16) + v17) * v18 + *(a1 + 12) + v16);
    v21 = v39;
    v20 = v40;
    if (*(a1 + 96))
    {
      if (v39 >= 1)
      {
        v22 = *(a1 + 76);
        v23 = v22 * a5;
        v24 = *(a1 + 88) + v22 * (a4 + v17 * a5) + 4 * (v16 + a3);
        do
        {
          v25 = v19;
          v26 = v20;
          v27 = v24;
          if (v20 >= 4)
          {
            v28 = 0;
            v29 = v20 + 4;
            v27 = v24;
            do
            {
              v30 = &v19[v28];
              v31 = v27[3];
              v32 = v27[7];
              v33 = v27[11];
              v34 = v27[15];
              v27 += 16;
              *v30 = v31;
              v30[1] = v32;
              v30[2] = v33;
              v30[3] = v34;
              v28 += 4;
              v29 -= 4;
            }

            while (v29 > 7);
            v25 = &v19[v28];
            v26 = v20 - v28;
          }

          if (v26 >= 1)
          {
            v35 = v27 + 3;
            v36 = v26 + 1;
            do
            {
              v37 = *v35;
              v35 += 4;
              *v25++ = v37;
              --v36;
            }

            while (v36 > 1);
          }

          v24 += v23;
          v19 += v18;
        }

        while (v21-- > 1);
      }

      if (!v15)
      {
        return;
      }
    }

    else
    {
      CGBlt_fillBytes(v40, v39, v9, v19, v18);
      if (!v15)
      {
        return;
      }
    }

LABEL_20:
    if (!shape_enum_clip_next(v15, &i + 1, &i, &v40, &v39))
    {
      break;
    }

    v17 = i;
  }

  free(v15);
}

void A8_mark_image_ARGB32(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*(a1 + 96))
  {
    v9 = 0;
  }

  else
  {
    v9 = 16843009 * ((*(a2 + 8) * 255.0) + 0.5);
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 8);
  v38 = v11;
  v39 = v10;
  v12 = *(a1 + 136);
  if (v12)
  {
    v13 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v13;
    shape_enum_clip_alloc(a1, a2, v12, 1, 1, 1, v13, i, v10, v11);
    v15 = v14;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 0;
  v15 = 0;
  for (i = 0; ; v16 = HIDWORD(i))
  {
    v18 = *(a1 + 28);
    v19 = (*(a1 + 40) + (*(a1 + 16) + v17) * v18 + *(a1 + 12) + v16);
    v21 = v38;
    v20 = v39;
    if (*(a1 + 96))
    {
      if (v38 >= 1)
      {
        v22 = *(a1 + 76);
        v23 = v22 * a5;
        v24 = *(a1 + 88) + v22 * (a4 + v17 * a5) + 4 * (v16 + a3);
        do
        {
          v25 = v19;
          v26 = v20;
          v27 = v24;
          if (v20 >= 4)
          {
            v28 = 0;
            v29 = v20 + 4;
            v27 = v24;
            do
            {
              v30 = &v19[v28];
              v31 = *v27;
              v32 = v27[4];
              v33 = v27[8];
              v34 = v27[12];
              v27 += 16;
              *v30 = v31;
              v30[1] = v32;
              v30[2] = v33;
              v30[3] = v34;
              v29 -= 4;
              v28 += 4;
            }

            while (v29 > 7);
            v26 = v20 - v28;
            v25 = &v19[v28];
          }

          if (v26 >= 1)
          {
            v35 = v26 + 1;
            do
            {
              v36 = *v27;
              v27 += 4;
              *v25++ = v36;
              --v35;
            }

            while (v35 > 1);
          }

          v24 += v23;
          v19 += v18;
        }

        while (v21-- > 1);
      }

      if (!v15)
      {
        return;
      }
    }

    else
    {
      CGBlt_fillBytes(v39, v38, v9, v19, v18);
      if (!v15)
      {
        return;
      }
    }

LABEL_20:
    if (!shape_enum_clip_next(v15, &i + 1, &i, &v39, &v38))
    {
      break;
    }

    v17 = i;
  }

  free(v15);
}

uint64_t A8_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = a2[1];
  v70 = *a2;
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
  v69 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v14 = *(a2 + 9);
  v15 = *(a2 + 5) + v14 * a4;
  v16 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * (*(result + 256) - 1)) >> 3);
  if (*(result + 176))
  {
    v68 = *(a2 + 11);
    v67 = *(a2 + 13);
    v17 = (v16 - 4);
    v66 = v11 + 16 * a3 + 8;
    do
    {
      if (((v67 - v15) | (v15 - v68)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        if (v18 - 7 >= 9)
        {
          v19 = -v12;
        }

        else
        {
          v19 = v12;
        }

        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(result + 32) + (v15 >> v13) * v12;
      if (v70 == 1)
      {
        if (a5 >= 1)
        {
          v22 = v66;
          v23 = a5;
          do
          {
            v24 = *(v22 - 1);
            v25 = *v22;
            v26 = v21 + v24;
            if (v17 >= v21 + v24)
            {
              v27 = (v21 + v24);
            }

            else
            {
              v27 = v17;
            }

            if (v8 > v27)
            {
              v27 = v8;
            }

            v28 = bswap32(*v27);
            if ((v25 & 0xF) != 0)
            {
              v29 = (v26 + (v25 >> 4));
              if (v17 < v29)
              {
                v29 = v17;
              }

              if (v8 > v29)
              {
                v29 = v8;
              }

              v30 = bswap32(*v29);
              if (v20)
              {
                v31 = (v26 + v19);
                if (v17 >= v31)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = v17;
                }

                if (v8 > v32)
                {
                  v32 = v8;
                }

                v33 = bswap32(*v32);
                v34 = (v31 + (v25 >> 4));
                if (v17 < v34)
                {
                  v34 = v17;
                }

                if (v8 > v34)
                {
                  v34 = v8;
                }

                v35 = BLEND8_21892[v20];
                v28 = v28 - ((v35 & v28) >> v20) + ((v35 & v33) >> v20);
                v30 = v30 - ((v35 & v30) >> v20) + ((bswap32(*v34) & v35) >> v20);
              }

              v28 = v28 - ((BLEND8_21892[*v22 & 0xF] & v28) >> (*v22 & 0xF)) + ((BLEND8_21892[*v22 & 0xF] & v30) >> (*v22 & 0xF));
            }

            else if (v20)
            {
              v36 = (v26 + v19);
              if (v17 < v26 + v19)
              {
                v36 = v17;
              }

              if (v8 > v36)
              {
                v36 = v8;
              }

              v28 = v28 - ((BLEND8_21892[v20] & v28) >> v20) + ((bswap32(*v36) & BLEND8_21892[v20]) >> v20);
            }

            v37 = __ROL4__(v28, v7) | v9;
            if (v6 != 255)
            {
              v37 = (v37 * v6 + ((v37 * v6) >> 8) + 1) >> 8;
            }

            v22 += 2;
            *v10++ = v37;
            --v23;
          }

          while (v23);
        }
      }

      else if (a5 >= 1)
      {
        v39 = v66;
        v38 = a5;
        do
        {
          v40 = *(v39 - 1);
          v41 = *v39;
          v42 = v21 + v40;
          if (v17 >= v21 + v40)
          {
            v43 = (v21 + v40);
          }

          else
          {
            v43 = v17;
          }

          if (v8 > v43)
          {
            v43 = v8;
          }

          v44 = bswap32(*v43);
          if ((v41 & 0xF) != 0)
          {
            v45 = (v42 + (v41 >> 4));
            if (v17 < v45)
            {
              v45 = v17;
            }

            if (v8 > v45)
            {
              v45 = v8;
            }

            v46 = bswap32(*v45);
            if (v20)
            {
              if (v17 >= v42 + v19)
              {
                v47 = (v42 + v19);
              }

              else
              {
                v47 = v17;
              }

              if (v8 > v47)
              {
                v47 = v8;
              }

              v48 = bswap32(*v47);
              v49 = (v42 + v19 + (v41 >> 4));
              if (v17 < v49)
              {
                v49 = v17;
              }

              if (v8 > v49)
              {
                v49 = v8;
              }

              v50 = BLEND8_21892[v20];
              v44 = v44 - ((v50 & v44) >> v20) + ((v50 & v48) >> v20);
              v46 = v46 - ((v50 & v46) >> v20) + ((bswap32(*v49) & v50) >> v20);
            }

            v44 = v44 - ((BLEND8_21892[*v39 & 0xF] & v44) >> (*v39 & 0xF)) + ((BLEND8_21892[*v39 & 0xF] & v46) >> (*v39 & 0xF));
          }

          else if (v20)
          {
            v51 = (v42 + v19);
            if (v17 < v42 + v19)
            {
              v51 = v17;
            }

            if (v8 > v51)
            {
              v51 = v8;
            }

            v44 = v44 - ((BLEND8_21892[v20] & v44) >> v20) + ((bswap32(*v51) & BLEND8_21892[v20]) >> v20);
          }

          v52 = __ROL4__(v44, v7) | v9;
          if (v6 != 255)
          {
            v52 = (v52 * v6 + ((v52 * v6) >> 8) + 1) >> 8;
          }

          if (v52)
          {
            if (v52 != 255)
            {
              v52 += (~v52 * *v10 + ((~v52 * *v10) >> 8) + 1) >> 8;
            }

            *v10 = v52;
          }

          v39 += 2;
          ++v10;
          --v38;
        }

        while (v38);
      }

      v10 += v69;
      v15 += v14;
      --a6;
    }

    while (a6);
  }

  else
  {
    v53 = (v11 + 16 * a3);
    v54 = (v16 - 4);
    do
    {
      v55 = *(result + 32) + (v15 >> v13) * v12;
      if (v70 == 1)
      {
        if (a5 >= 1)
        {
          v56 = v53;
          v57 = a5;
          do
          {
            v58 = *v56;
            v56 += 2;
            v59 = (v55 + v58);
            if (v54 < v55 + v58)
            {
              v59 = v54;
            }

            if (*(result + 32) > v59)
            {
              v59 = *(result + 32);
            }

            v60 = __ROL4__(bswap32(*v59), v7) | v9;
            if (v6 != 255)
            {
              v60 = (v60 * v6 + ((v60 * v6) >> 8) + 1) >> 8;
            }

            *v10++ = v60;
            --v57;
          }

          while (v57);
        }
      }

      else
      {
        v61 = v53;
        v62 = a5;
        if (a5 >= 1)
        {
          do
          {
            v63 = *v61;
            v61 += 2;
            v64 = (v55 + v63);
            if (v54 < v55 + v63)
            {
              v64 = v54;
            }

            if (*(result + 32) > v64)
            {
              v64 = *(result + 32);
            }

            v65 = __ROL4__(bswap32(*v64), v7) | v9;
            if (v6 != 255)
            {
              v65 = (v65 * v6 + ((v65 * v6) >> 8) + 1) >> 8;
            }

            if (v65)
            {
              if (v65 != 255)
              {
                v65 += (~v65 * *v10 + ((~v65 * *v10) >> 8) + 1) >> 8;
              }

              *v10 = v65;
            }

            ++v10;
            --v62;
          }

          while (v62);
        }
      }

      v10 += v69;
      v15 += v14;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t A8_image_mark_RGB24(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3) - a5;
  v10 = 255 * v6 + ((255 * v6) >> 8) + 1;
  v11 = v10 >> 8;
  v12 = (v10 >> 8) ^ 0xFF;
  if (v6 == 255)
  {
    LOBYTE(v11) = -1;
  }

  if (!*(result + 176))
  {
    while (1)
    {
      if (v7 == 1)
      {
        if (a5 >= 1)
        {
          v16 = a5;
          do
          {
            *v8++ = v11;
            --v16;
          }

          while (v16);
        }

        goto LABEL_30;
      }

      v17 = a5;
      if (a5 >= 1)
      {
        break;
      }

LABEL_30:
      v8 += v9;
      if (!--a6)
      {
        return result;
      }
    }

    while (v6 != 255)
    {
      if (v10 >= 0x100)
      {
        v18 = ((v12 * *v8 + ((v12 * *v8) >> 8) + 1) >> 8) + (v10 >> 8);
LABEL_28:
        *v8 = v18;
      }

      ++v8;
      if (!--v17)
      {
        goto LABEL_30;
      }
    }

    LOBYTE(v18) = -1;
    goto LABEL_28;
  }

  do
  {
    if (v7 != 1)
    {
      v14 = a5;
      if (a5 < 1)
      {
        goto LABEL_16;
      }

      while (v6 != 255)
      {
        if (v10 >= 0x100)
        {
          v15 = ((v12 * *v8 + ((v12 * *v8) >> 8) + 1) >> 8) + (v10 >> 8);
LABEL_14:
          *v8 = v15;
        }

        ++v8;
        if (!--v14)
        {
          goto LABEL_16;
        }
      }

      LOBYTE(v15) = -1;
      goto LABEL_14;
    }

    if (a5 >= 1)
    {
      v13 = a5;
      do
      {
        *v8++ = v11;
        --v13;
      }

      while (v13);
    }

LABEL_16:
    v8 += v9;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t A8_image_mark_W8(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3) - a5;
  v10 = 255 * v6 + ((255 * v6) >> 8) + 1;
  v11 = v10 >> 8;
  v12 = (v10 >> 8) ^ 0xFF;
  if (v6 == 255)
  {
    LOBYTE(v11) = -1;
  }

  if (!*(result + 176))
  {
    while (1)
    {
      if (v7 == 1)
      {
        if (a5 >= 1)
        {
          v16 = a5;
          do
          {
            *v8++ = v11;
            --v16;
          }

          while (v16);
        }

        goto LABEL_30;
      }

      v17 = a5;
      if (a5 >= 1)
      {
        break;
      }

LABEL_30:
      v8 += v9;
      if (!--a6)
      {
        return result;
      }
    }

    while (v6 != 255)
    {
      if (v10 >= 0x100)
      {
        v18 = ((v12 * *v8 + ((v12 * *v8) >> 8) + 1) >> 8) + (v10 >> 8);
LABEL_28:
        *v8 = v18;
      }

      ++v8;
      if (!--v17)
      {
        goto LABEL_30;
      }
    }

    LOBYTE(v18) = -1;
    goto LABEL_28;
  }

  do
  {
    if (v7 != 1)
    {
      v14 = a5;
      if (a5 < 1)
      {
        goto LABEL_16;
      }

      while (v6 != 255)
      {
        if (v10 >= 0x100)
        {
          v15 = ((v12 * *v8 + ((v12 * *v8) >> 8) + 1) >> 8) + (v10 >> 8);
LABEL_14:
          *v8 = v15;
        }

        ++v8;
        if (!--v14)
        {
          goto LABEL_16;
        }
      }

      LOBYTE(v15) = -1;
      goto LABEL_14;
    }

    if (a5 >= 1)
    {
      v13 = a5;
      do
      {
        *v8++ = v11;
        --v13;
      }

      while (v13);
    }

LABEL_16:
    v8 += v9;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t A8_shade_custom_A(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  v7 = v6 * a2;
  v8 = v6 * a3;
  v9 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), v8), v9, v7));
  v10 = *(result + 304);
  v11 = *(result + 336);
  v12 = *(result + 348);
  v13 = *(result + 344);
  v14 = *(result + 356);
  v16 = *(result + 144);
  v15 = *(result + 152);
  v18 = *(result + 368);
  v17 = *(result + 376);
  v19 = *(result + 48);
  v20 = result + 368;
  v21 = *(result + 360);
  v22 = v18 == 0;
  if (v18)
  {
    v20 = v18 + ((a3 >> 4) & 0xF0);
    v23 = (a2 >> 8) & 0xF;
  }

  else
  {
    v23 = 0;
  }

  v24 = 15;
  if (v22)
  {
    v24 = 0;
  }

  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v10, v25))), vmovn_s32(vcgtq_f32(v25, v10)))) & 1) == 0)
    {
      v26 = (v21 + 2 * (v14 * (*&a6.i32[1] - v12)) * v19 + 2 * (v13 * (*a6.i32 - v11)));
LABEL_10:
      *v15 = (*(v20 + v23) + *v26) >> 8;
      LOBYTE(v26) = -1;
      goto LABEL_11;
    }

    v26 = v17;
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_11:
    v23 = (v23 + 1) & v24;
    *a6.i8 = vadd_f32(v9, *a6.i8);
    ++v15;
    *v16++ = v26;
    --a4;
  }

  while (a4);
  return result;
}

void A8_shade_conic_A(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6)
{
  v7 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v7, *(*&a1[34] + 4) * a2));
  v8 = a1[42].f32[0];
  v9 = a1[43].f32[0];
  v10 = a1[38].f32[0];
  v12 = a1[18];
  v11 = a1[19];
  v14 = a1[45];
  v13 = a1[46];
  if (v13)
  {
    v15 = (*&v13 + ((a3 >> 4) & 0xF0));
  }

  else
  {
    v15 = a1 + 46;
  }

  if (v13)
  {
    v16 = (a2 >> 8) & 0xF;
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 15;
  }

  else
  {
    v17 = 0;
  }

  v18 = a1[38].f32[1] - v10;
  do
  {
    v27 = a6;
    v19 = v9 * ((v10 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v18)) - v8);
    v20 = vcvtms_s32_f32(v19);
    v21 = ceilf(v19);
    v22 = vcvtms_s32_f32(v9 + v19);
    v23 = ((v19 - floorf(v19)) * 255.0) + 0.5;
    if (v19 < 0.0)
    {
      v20 = v22;
    }

    v24 = v23;
    v25 = ceilf(v19 - v9);
    if (v19 <= v9)
    {
      v26 = v21;
    }

    else
    {
      v26 = v25;
    }

    a6.n128_u64[1] = v27.n128_u64[1];
    *v11++ = (v15->u8[v16] + ((v24 * *(*&v14 + 2 * v26) + (255 - v24) * *(*&v14 + 2 * v20)) >> 8)) >> 8;
    v16 = (v16 + 1) & v17;
    a6.n128_u64[0] = vadd_f32(v7, v27.n128_u64[0]);
    *v12++ = -1;
    --a4;
  }

  while (a4);
}

void A8_shade_radial_A(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v5 = *(a1 + 400);
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(*(a1 + 272) + 4);
  v9 = v8 * a2;
  v10 = v8 * a3;
  v11 = *(a1 + 296) + ((*(a1 + 288) * v10) + (v6 * v9));
  v12 = *(a1 + 300) + ((v10 * *(a1 + 292)) + (v7 * v9));
  v13 = *(a1 + 336);
  v14 = *(a1 + 344);
  v15 = *(a1 + 304);
  v16 = *(a1 + 308);
  v17 = *(a1 + 324);
  v18 = v5[2];
  v19 = v5[4];
  v20 = v5[5];
  v21 = v5[7];
  v24 = a1 + 144;
  v22 = *(a1 + 144);
  v23 = *(v24 + 8);
  v25 = *(a1 + 376);
  v26 = *(a1 + 360);
  v27 = (a2 >> 8) & 0xF;
  if (v18 != 0.0 || v21 != 0.0 || v7 != 0.0)
  {
    v37 = *(a1 + 320);
    v38 = v5[3];
    v39 = v5[6];
    v40 = v5[8];
    v41 = a1 + 368;
    v42 = *(a1 + 368);
    v43 = v42 + ((a3 >> 4) & 0xF0);
    v44 = v42 == 0;
    v45 = 15;
    if (v44)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v46 = (a2 >> 8) & 0xF;
    }

    if (!v44)
    {
      v41 = v43;
    }

    v47 = -v39;
    v48 = v16 - v15;
    while (1)
    {
      v49 = v47 + ((v11 + v11) * v18);
      v50 = ((v12 * v12) + (v11 * v11)) - v21;
      if (v20 == 0.0)
      {
        v57 = v50 / v49;
      }

      else
      {
        v51 = ((v20 * -4.0) * v50) + (v49 * v49);
        if (v51 < 0.0)
        {
          goto LABEL_53;
        }

        v52 = sqrtf(v51);
        v53 = v40 * (v49 - v52);
        v54 = v49 + v52;
        v55 = v40 * v54;
        v56 = (v40 * v54) <= v53;
        if ((v40 * v54) <= v53)
        {
          v57 = v40 * v54;
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
          v58 = v55 < v38;
LABEL_39:
          v59 = v37;
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
          v60 = v15 + (v55 * v48);
          goto LABEL_51;
        }

        if ((v17 & 0x80000000) == 0)
        {
          v59 = v17;
          if (v55 <= v19)
          {
LABEL_52:
            v61 = (v26 + 2 * v59);
LABEL_54:
            *v23 = (*(v41 + v46) + *v61) >> 8;
            LOBYTE(v61) = -1;
            goto LABEL_55;
          }
        }
      }

      if (v57 < 0.0)
      {
        v58 = v57 < v38;
        goto LABEL_39;
      }

      if (v57 > 1.0)
      {
        v59 = v17;
        if (v57 > v19)
        {
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      v60 = v15 + (v57 * v48);
LABEL_51:
      v59 = (v14 * (v60 - v13));
      if ((v59 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_53:
      v61 = v25;
      if (v25)
      {
        goto LABEL_54;
      }

LABEL_55:
      v46 = (v46 + 1) & v45;
      v11 = v6 + v11;
      v12 = v7 + v12;
      ++v23;
      *v22++ = v61;
      if (!--a4)
      {
        return;
      }
    }
  }

  v28 = a1 + 368;
  v29 = *(a1 + 368);
  v30 = v29 == 0;
  if (v29)
  {
    v31 = v29 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v31 = v28;
  }

  if (v30)
  {
    LODWORD(v32) = 0;
  }

  else
  {
    LODWORD(v32) = (BYTE1(a2) + 1) & 0xF;
  }

  if (v30)
  {
    LODWORD(v27) = 0;
    v33 = 0;
  }

  else
  {
    v33 = 15;
  }

  v34 = v12 * v12;
  v35 = -v20;
  if (v34 <= -v20)
  {
    v62 = fabsf(v5[8]);
    v63 = v20 * -4.0;
    v64 = v16 - v15;
    v65 = a4 + 2;
    while (1)
    {
      v66 = v34 + (v11 * v11);
      v67 = v6 + v11;
      v68 = v34 + (v67 * v67);
      if (v66 <= v35 || v68 <= v35)
      {
        v70 = sqrtf(v63 * v68);
        v71 = v62 * sqrtf(v63 * v66);
        v72 = v62 * v70;
        v73 = (v14 * ((v15 + (v71 * v64)) - v13));
        v74 = (v14 * ((v15 + ((v62 * v70) * v64)) - v13));
        if (v71 > 1.0 || v72 > 1.0)
        {
          if (v71 <= 1.0)
          {
            if ((v73 & 0x80000000) != 0)
            {
              goto LABEL_70;
            }
          }

          else if (v71 > v19 || (v73 = v17, (v17 & 0x80000000) != 0))
          {
LABEL_70:
            v73 = v25;
            if (!v25)
            {
LABEL_82:
              if (v72 <= 1.0)
              {
                if ((v74 & 0x80000000) != 0)
                {
                  goto LABEL_85;
                }
              }

              else if (v72 > v19 || (v74 = v17, (v17 & 0x80000000) != 0))
              {
LABEL_85:
                if (!v25)
                {
                  v80 = 0;
                  goto LABEL_91;
                }

                v78 = *v25;
                v79 = v32;
                goto LABEL_89;
              }

              v78 = *(v26 + 2 * v74);
              v79 = v32;
LABEL_89:
              v77 = *(v31 + v79) + v78;
              goto LABEL_90;
            }

LABEL_81:
            *v23 = (*(v31 + v27) + *v73) >> 8;
            LOBYTE(v73) = -1;
            goto LABEL_82;
          }

          v73 = v26 + 2 * v73;
          goto LABEL_81;
        }

        v77 = *(v31 + v32) + *(v26 + 2 * v74);
        LODWORD(v73) = (*(v31 + v27) + *(v26 + 2 * v73)) >> 8;
      }

      else
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (!v25)
          {
            v80 = 0;
            LOBYTE(v73) = 0;
            goto LABEL_91;
          }

          v76 = *v25;
        }

        else
        {
          v76 = *(v26 + 2 * v17);
        }

        v77 = *(v31 + v32) + v76;
        LODWORD(v73) = (*(v31 + v27) + v76) >> 8;
      }

      *v23 = v73;
      LOBYTE(v73) = -1;
LABEL_90:
      v23[1] = HIBYTE(v77);
      v80 = -1;
LABEL_91:
      v11 = v6 + v67;
      LOBYTE(v27) = (v27 + 1) & v33;
      LOBYTE(v32) = (v32 + 1) & v33;
      v23 += 2;
      *v22 = v73;
      v22[1] = v80;
      v22 += 2;
      v65 -= 2;
      if (v65 <= 2)
      {
        return;
      }
    }
  }

  if (v25 || (v17 & 0x80000000) == 0)
  {
    v81 = (v26 + 2 * v17);
    if ((v17 & 0x80000000) == 0)
    {
      v82 = v81;
    }

    else
    {
      v82 = v25;
    }

    v83 = *v82;
    v84 = a4 + 4;
    do
    {
      v85 = *(v31 + v32) + v83;
      *v23 = (*(v31 + v27) + v83) >> 8;
      v27 = (v27 + 1) & v33;
      v23[1] = HIBYTE(v85);
      v32 = (v32 + 1) & v33;
      v86 = *(v31 + v32) + v83;
      v23[2] = (*(v31 + v27) + v83) >> 8;
      v23[3] = HIBYTE(v86);
      *v22 = -1;
      v22 += 4;
      v23 += 4;
      v84 -= 4;
    }

    while (v84 > 4);
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

    bzero(v22, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

void CPPDFGraphicStateReleaseElements(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    CFRelease(v3);
  }

  CGColorSpaceRelease(*(a1 + 264));
  v4 = *(a1 + 272);
  if (v4)
  {
    CFRelease(v4);
  }

  CGColorSpaceRelease(*(a1 + 280));
  *(a1 + 280) = 0;
  v5 = *(a1 + 248);
}

uint64_t PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair::formatText(PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    PB::TextFormatter::format(a2, "flags");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 20))
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair::readFrom(PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v33 = (v24 + v23);
          v18 = v22 >= v23;
          v34 = v22 - v23;
          if (!v18)
          {
            v34 = 0;
          }

          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v36 = *v33;
            *(a2 + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_38:
              LODWORD(v27) = 0;
              goto LABEL_42;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_42:
        *(this + 4) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

void PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair::~PBFontNameAndDescriptorFlagsPair(PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair *this)
{
  PBPageLayoutPkg::PBFontNameAndDescriptorFlagsPair::~PBFontNameAndDescriptorFlagsPair(this);

  JUMPOUT(0x1865EE610);
}

{
  v2 = *(this + 1);
  *this = &unk_1EF242C18;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:fe200100](v2);
  }

  PB::Base::~Base(this);
}

atomic_uint *CGGlyphBitmapRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGGlyphBitmapRelease(void *a1)
{
  if (a1)
  {
    if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(a1);
    }
  }
}

void CGGlyphBitmapWriteToFile(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x401uLL);
  __filename = 0;
  if (CGGetTempDirPath_predicate != -1)
  {
    dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
  }

  snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, "glyphbitmap");
  v2 = "bmi=0x0.br2";
  v3 = *(a1 + 28);
  if (v3 == 16)
  {
    v2 = "bmi=0x00001000.br2";
  }

  asprintf(&__filename, "%s_%d_%d_w=%d,h=%d,rb=%d,cs=0,bpc=%d,%s", __str, *(a1 + 4), *(a1 + 36), *(a1 + 20), *(a1 + 24), *(a1 + 32), v3, v2);
  v4 = fopen(__filename, "w");
  free(__filename);
  if (v4)
  {
    fwrite((a1 + 40), *(a1 + 32), *(a1 + 24), v4);
    fclose(v4);
  }
}

void DoPdfForm(uint64_t a1, CGPDFStream *a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2056) <= 0xF9u && a2 != 0)
  {
    v5 = *(a2 + 6);
    if (v5)
    {
      CPPDFContextSaveGState(a1);
      value = 0;
      if (CGPDFDictionaryGetArray(v5, "Matrix", &value))
      {
        v8 = 0;
        v9 = v36;
        while (CGPDFArrayGetNumber(value, v8, v9))
        {
          ++v8;
          ++v9;
          if (v8 == 6)
          {
            v10 = *(a1 + 40);
            v11 = v10[1];
            v12 = v10[2];
            v13 = vmlaq_n_f64(vmulq_laneq_f64(v12, v37, 1), v11, v37.f64[0]);
            v14 = vaddq_f64(v10[3], vmlaq_n_f64(vmulq_laneq_f64(v12, v38, 1), v11, v38.f64[0]));
            v10[1] = vmlaq_n_f64(vmulq_laneq_f64(v12, *v36, 1), v11, v36[0]);
            v10[2] = v13;
            v10[3] = v14;
            break;
          }
        }
      }

      if (CGPDFDictionaryGetArray(v5, "BBox", &value))
      {
        v15 = 0;
        v16 = v36;
        while (CGPDFArrayGetNumber(value, v15, v16))
        {
          ++v15;
          ++v16;
          if (v15 == 4)
          {
            v17 = v36[0];
            v18 = v36[1];
            v19 = v37.f64[0] - v36[0];
            v20 = v37.f64[1] - v36[1];
            v21 = *(*(a1 + 40) + 64);
            Mutable = CGPathCreateMutable();
            v23 = *(a1 + 40);
            *(v23 + 64) = Mutable;
            v40.origin.x = v17;
            v40.origin.y = v18;
            v40.size.width = v19;
            v40.size.height = v20;
            CGPathAddRect(Mutable, (v23 + 16), v40);
            CPPDFContextAddClip(a1, 1);
            CPPDFContextAddPathToClip(a1, 0);
            v24 = *(a1 + 40);
            v25 = *(v24 + 64);
            if (v25)
            {
              CFRelease(v25);
              v24 = *(a1 + 40);
            }

            *(v24 + 64) = v21;
            break;
          }
        }
      }

      v26 = CGPDFOperatorTableCreate();
      v27 = v26;
      if (a3)
      {
        AddLazyPdfOperators();
      }

      else
      {
        AddPdfOperators(v26);
      }

      streamResources = 0;
      if (CGPDFDictionaryGetDictionary(v5, "Resources", &streamResources))
      {
        v28 = CGPDFContentStreamCreateWithStream(a2, streamResources, *(a1 + 56 + 8 * (*(a1 + 2056) - 1)));
        if (v28)
        {
          v29 = v28;
          v30 = *(a1 + 2056);
          *(a1 + 2056) = v30 + 1;
          *(a1 + 56 + 8 * v30) = v28;
          v31 = CGPDFScannerCreate(v28, v27, a1);
          if (v31)
          {
            v32 = v31;
            *(*(a1 + 40) + 8) = 1;
            CPPDFContextSaveGState(a1);
            *(*(a1 + 40) + 8) = 0;
            CGPDFScannerScan(v32);
            CPPDFContextRestoreGState(a1);
            v33 = *(a1 + 40);
            if (v33)
            {
              *(v33 + 8) = 0;
            }

            --*(a1 + 2056);
            CFRelease(v32);
          }

          CFRelease(v29);
        }
      }

      if (v27)
      {
        CFRelease(v27);
      }

      CPPDFContextRestoreGState(a1);
    }
  }
}

void SetColor(CGPDFScanner *a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 40);
  v6 = 264;
  if (a3)
  {
    v6 = 280;
  }

  BaseColorSpace = *(*(a2 + 40) + v6);
  if (CGColorSpaceGetModel(BaseColorSpace) == kCGColorSpaceModelPattern)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
    if (!BaseColorSpace)
    {
      v19 = v5;
      while (1)
      {
        v19 = *v19;
        if (!v19)
        {
          break;
        }

        if (*(v19 + 8) == 1)
        {
          v8 = v19[32];
          if (v8)
          {
            CFRetain(v19[32]);
          }

          goto LABEL_6;
        }
      }
    }

    v8 = 0;
LABEL_6:
    name[0] = 0;
    if (CGPDFScannerPopName(a1, name) && (v9 = *(a1 + 7)) != 0)
    {
      Resource = CGPDFContentStreamGetResource(v9, "Pattern", name[0]);
      if (!BaseColorSpace)
      {
        goto LABEL_18;
      }
    }

    else
    {
      Resource = 0;
      if (!BaseColorSpace)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    Resource = 0;
    v8 = 0;
    if (!BaseColorSpace)
    {
      goto LABEL_18;
    }
  }

  v11 = *(*(BaseColorSpace + 3) + 48);
  if (v11)
  {
    v12 = malloc_type_calloc(v11 + 1, 8uLL, 0x100004000313F17uLL);
    v12[v11] = 1.0;
    v13 = v11 - 1;
    do
    {
      name[0] = 0;
      if (!CGPDFScannerPopNumber(a1, name))
      {
        break;
      }

      v12[v13--] = *name;
    }

    while (v13 != -1);
    v8 = CGColorCreate(BaseColorSpace, v12);
    free(v12);
    goto LABEL_20;
  }

LABEL_18:
  if (!v8)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *name = xmmword_184564878;
    v21 = unk_184564888;
    v8 = CGColorCreate(DeviceRGB, name);
    CGColorSpaceRelease(DeviceRGB);
  }

LABEL_20:
  v15 = *v5;
  if (a3)
  {
    v16 = *(v15 + 272);
    if (v16)
    {
      CFRelease(v16);
      v15 = *v5;
    }

    *(v15 + 272) = v8;
    v17 = (v15 + 384);
  }

  else
  {
    v18 = *(v15 + 256);
    if (v18)
    {
      CFRelease(v18);
      v15 = *v5;
    }

    *(v15 + 256) = v8;
    v17 = (v15 + 376);
  }

  *v17 = Resource;
  *(v15 + 9) = 1;
}

void ShowText(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = vmlaq_n_f64(vmulq_n_f64(v4, *(v2 + 96)), v3, *(v2 + 88));
  v6 = vmlaq_n_f64(vmulq_n_f64(v4, *(v2 + 112)), v3, *(v2 + 104));
  v159 = fabs(sqrt(fabs(-v5.f64[1] * v6.f64[0] + v5.f64[0] * v6.f64[1])) * *(v2 + 216));
  if (v159 < 0.00100000005)
  {
    return;
  }

  v8 = a1;
  v9 = *(v2 + 248);
  [v9 ascent];
  v11 = v10;
  [v9 descent];
  v13 = v12;
  v14 = *(v8 + 40);
  v182 = v14[27];
  v15 = v14[25];
  v178 = v14[29];
  v167 = v9;
  v16 = [v9 cgPDFFont];
  v199 = 0;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v192 = 0u;
  v193 = 0;
  Encoding = CGPDFFontGetEncoding(v16);
  v194 = Encoding;
  Advances = CGPDFFontGetAdvances(v16);
  *&v195 = Advances;
  BYTE8(v195) = 1;
  v22 = (v16 + 7);
  if (!v16)
  {
    v22 = &CGAffineTransformIdentity;
  }

  v23 = *&v22->c;
  v196 = *&v22->a;
  v197 = v23;
  v198 = *&v22->tx;
  v200 = 0;
  v201 = v8;
  v158 = v16;
  if (Encoding)
  {
    v199 = 0;
    if (a2)
    {
      if (*(a2 + 24))
      {
        decrypt_string(a2);
        v24 = *(a2 + 24);
        v25 = (a2 + 80);
        v193 = a2 + 80;
        if (v24)
        {
          decrypt_string(a2);
        }
      }

      else
      {
        v25 = (a2 + 80);
        v193 = a2 + 80;
      }

      CIDsForText = *(a2 + 72);
    }

    else
    {
      v25 = 0;
      CIDsForText = 0;
      v193 = 0;
    }

    v146 = 0;
    v147 = 0;
    v30 = v196;
    v29 = v197;
    v31 = v198;
    v32 = v197.f64[1];
    v28 = 1;
    v149 = 1;
    v165 = v196.f64[0];
    goto LABEL_38;
  }

  *(&v192 + 1) = 0;
  CMap = CGPDFFontGetCMap(v16);
  v27 = CMap;
  if (CMap)
  {
    v28 = *(*(CMap + 16) + 24) == 0;
  }

  else
  {
    v28 = 1;
  }

  BYTE8(v195) = v28;
  if (a2)
  {
    if (*(a2 + 24))
    {
      decrypt_string(a2);
      v33 = (a2 + 80);
      if (*(a2 + 24))
      {
        decrypt_string(a2);
      }
    }

    else
    {
      v33 = (a2 + 80);
    }

    a2 = *(a2 + 72);
  }

  else
  {
    v33 = 0;
  }

  v34 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  CIDsForText = CGPDFCMapGetCIDsForText(v27, v33, a2, v34, 0, v35);
  if (CIDsForText)
  {
    *(&v192 + 1) = v34;
  }

  else
  {
    free(v34);
    v34 = 0;
  }

  ROSUnicodeCMap = CGPDFFontGetToUnicodeCMap(v16);
  v199 = ROSUnicodeCMap;
  v146 = v34;
  if (!ROSUnicodeCMap)
  {
    ROSUnicodeCMap = CGPDFFontGetROSUnicodeCMap(v16);
    v199 = ROSUnicodeCMap;
    if (!ROSUnicodeCMap)
    {
      v149 = 1;
LABEL_34:
      v25 = 0;
      v41 = v196;
      v29 = v197;
      v31 = v198;
      v32 = v197.f64[1];
      if (v28)
      {
        v147 = 0;
        goto LABEL_36;
      }

LABEL_37:
      v147 = v25;
      v25 = 0;
      v30 = vmlaq_f64(vnegq_f64(v29), 0, v41);
      v42 = vmulq_f64(v29, 0);
      v29 = vaddq_f64(v41, v42);
      v165 = v41.f64[0];
      v31 = vaddq_f64(v31, vmlaq_f64(v42, 0, v41));
      goto LABEL_38;
    }
  }

  v37 = *(*(ROSUnicodeCMap + 16) + 48);
  if (!v37 || (v38 = *(v37 + 16)) == 0 || (v39 = *(v38 + 40), v39 < 2))
  {
    v149 = 0;
    goto LABEL_34;
  }

  v40 = malloc_type_malloc(2 * v39, 0x1000040BDFB0063uLL);
  v25 = v40;
  v149 = 0;
  v200 = v40;
  v41 = v196;
  v29 = v197;
  v31 = v198;
  v32 = v197.f64[1];
  if (!v28)
  {
    goto LABEL_37;
  }

  v147 = v40;
  v25 = 0;
LABEL_36:
  v165 = v41.f64[0];
  v30 = v41;
LABEL_38:
  if (CIDsForText)
  {
    Style = 0;
    v43 = 0;
    v186 = 0;
    v44 = v159 * v11 - v13 * v159;
    v45.f64[0] = 0.0;
    v45.f64[1] = v178;
    *&v46 = v182 * (v15 / 100.0);
    v47.f64[0] = 0.0;
    v47.f64[1] = v182;
    v156 = vmlaq_n_f64(vmulq_laneq_f64(v47, v30, 1), v46, v30.f64[0]);
    v157 = vmlaq_n_f64(vmulq_laneq_f64(v47, v29, 1), v46, v29.f64[0]);
    v48 = -v44;
    v154 = vdupq_lane_s64(*&v157.f64[0], 0);
    v155 = vdupq_lane_s64(*&v156.f64[0], 0);
    v152 = vaddq_f64(v45, vmlaq_n_f64(vmulq_laneq_f64(v47, v31, 1), v46, v31.f64[0]));
    v49 = vdupq_lane_s64(*&v152.f64[0], 0);
    v50 = --(v13 * v159);
    if (v44 < 0.0)
    {
      v50 = v159 * v11;
    }

    v148 = v159 * v11 - v13 * v159;
    if (v44 >= 0.0)
    {
      v48 = v159 * v11 - v13 * v159;
    }

    v144 = v50;
    rect = v48;
    v51 = 1;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v150 = vnegq_f64(v52);
    v151 = v49;
    v53 = v146;
    v161 = Encoding;
    v162 = v28;
    v153 = v32;
    while (1)
    {
      v191 = 0;
      LOBYTE(bboxes.origin.x) = 0;
      if (Encoding)
      {
        break;
      }

      v56 = *v53;
      HIWORD(v191) = *v53;
      if (v149)
      {
        v57 = v43;
        LODWORD(v54) = 0;
      }

      else
      {
        v58 = v147;
        v57 = v43;
        if (!v147)
        {
          v58 = &v202;
        }

        LODWORD(v54) = CPFontEnumeratorGetUnicharForCID(&v192, v56, v58, &bboxes, v18, v19, v20, v21);
        LOWORD(v191) = v54;
      }

LABEL_57:
      v59 = HIWORD(v191);
      HorizontalAdvance = CGPDFAdvancesGetHorizontalAdvance(Advances, HIWORD(v191));
      VerticalAdvance = CGPDFAdvancesGetVerticalAdvance(Advances, v59, &v202);
      *&v192 = v51;
      x_low = LOBYTE(bboxes.origin.x);
      v62 = v8;
      v63 = *(v8 + 40);
      v179 = *(v63 + 88);
      v183 = *(v63 + 1);
      v174 = *(v63 + 104);
      v176 = *(v63 + 2);
      v169 = *(v63 + 120);
      v170 = *(v63 + 3);
      v64 = v54 & 0xFFFFFF7F;
      if ((v54 & 0xFFFFFF7F) == 0x20)
      {
        v65 = 1;
      }

      else
      {
        if (v54 > 0x7F)
        {
          v66 = __maskrune(v54, 0x4000uLL);
        }

        else
        {
          v66 = *(MEMORY[0x1E69E9830] + 4 * v54 + 60) & 0x4000;
        }

        if (v66)
        {
          v67 = 1;
        }

        else
        {
          v67 = v54 == 65532;
        }

        v65 = v67;
      }

      memset(&bboxes, 0, sizeof(bboxes));
      glyphs = 0;
      v172 = 1;
      if ([v167 getGlyphs:&glyphs forCodes:&v191 + 2 count:1])
      {
        Font = CGPDFFontGetFont(v158);
        if (Font)
        {
          v69 = Font;
          v172 = 1;
          if (CGFontGetGlyphBBoxes(Font, &glyphs, 1uLL, &bboxes))
          {
            v70 = bboxes.size.height > 0.00000011920929 || bboxes.size.width > 0.00000011920929;
            v172 = v70;
            font_info = get_font_info(v69);
            if (font_info)
            {
              v72 = font_info[2];
            }

            else
            {
              v72 = 0.0;
            }

            v202.b = 0.0;
            v202.c = 0.0;
            v202.a = v159 / v72;
            v202.d = v159 / v72;
            v202.tx = 0.0;
            v202.ty = 0.0;
            bboxes = CGRectApplyAffineTransform(bboxes, &v202);
          }
        }

        else
        {
          v172 = 1;
        }
      }

      v73 = HorizontalAdvance * v165;
      v74 = VerticalAdvance * v32;
      if (v65)
      {
        v186 &= v64 == 32 && !v57;
        v43 = v64 == 32;
        v8 = v62;
        Encoding = v161;
        goto LABEL_81;
      }

      if ((x_low & v186) == 1)
      {
        v8 = v62;
        v75 = v162;
        if (*(*(v62 + 40) + 184) == 0.0)
        {
          v76 = v57;
          v186 = 1;
        }

        else
        {
          v186 = 1;
          v76 = -1;
        }
      }

      else
      {
        v76 = -1;
        v186 = x_low;
        v8 = v62;
        v75 = v162;
      }

      v77 = vmlaq_f64(vmulq_laneq_f64(v174, v156, 1), v179, v155);
      v78 = vmlaq_f64(vmulq_laneq_f64(v174, v157, 1), v179, v154);
      v79 = vmlaq_n_f64(vmulq_laneq_f64(v176, v77, 1), v183, v77.f64[0]);
      v80 = vmlaq_n_f64(vmulq_laneq_f64(v176, v78, 1), v183, v78.f64[0]);
      v81 = vmulq_f64(v79, vextq_s8(v80, v80, 8uLL));
      v160 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v81, 1), v81)).u8[0];
      v82 = v79.f64[1];
      v163 = v80;
      v164 = v79;
      if (v79.f64[1] != 0.0)
      {
        v84 = v79.f64[0];
        goto LABEL_94;
      }

      v83 = 0.0;
      if ((v79.f64[0] <= 0.0) | v160 & 1)
      {
        v84 = v79.f64[0];
        if (v79.f64[0] != 0.0)
        {
          goto LABEL_94;
        }

        v84 = v80.f64[1];
        if (v80.f64[0] != 0.0 || v80.f64[1] != 0.0)
        {
          v82 = -v80.f64[0];
LABEL_94:
          v85 = fabs(v84);
          v86 = fabs(v82);
          if (v85 >= v86)
          {
            v87 = v82;
          }

          else
          {
            v87 = v84;
          }

          if (v85 >= v86)
          {
            v88 = v84;
          }

          else
          {
            v88 = v82;
          }

          v89 = atan(v87 / v88) * 57.2957795;
          if (v85 < v86)
          {
            v89 = 90.0 - v89;
          }

          v90 = v160 ^ 1;
          if (v88 >= 0.0)
          {
            v90 = v160;
          }

          v91 = v89 + 180.0;
          if ((v90 & 1) == 0)
          {
            v91 = v89;
          }

          if (v91 < 0.0)
          {
            v91 = v91 + 360.0;
          }

          v92 = fabs(v91);
          if (v91 < 360.0)
          {
            v93 = v91;
          }

          else
          {
            v93 = 0.0;
          }

          if (v92 == INFINITY && v91 < 360.0)
          {
            v83 = 0.0;
          }

          else
          {
            v83 = v93;
          }

          v80 = v163;
          v79 = v164;
          if (v83 < 0.0 || v83 >= 360.0)
          {
            __assert_rtn("CPRotationDegreesFromTransform", "CPGeometry.m", 111, "0. <= degrees && degrees < 360.");
          }
        }
      }

      v96 = vaddq_f64(v169, vmlaq_f64(vmulq_laneq_f64(v174, v152, 1), v179, v151));
      v97 = vaddq_f64(v170, vmlaq_n_f64(vmulq_laneq_f64(v176, v96, 1), v183, v96.f64[0]));
      v98 = vaddq_f64(v97, vmlaq_f64(vmulq_f64(v80, 0), 0, v79));
      if (v83 <= 0.1 || 360.0 - v83 <= 0.1)
      {
        v107 = vaddq_f64(v98, bboxes.origin);
        v83 = 0.0;
        v106 = v98;
      }

      else
      {
        v180 = v97;
        v184 = v98;
        v100 = __sincos_stret(v83 * -3.14159265 / 180.0);
        v99.f64[0] = v100.__cosval;
        v101.f64[0] = -v100.__sinval;
        v101.f64[1] = v100.__cosval;
        v99.f64[1] = v100.__sinval;
        v102 = vmlaq_n_f64(vmulq_laneq_f64(v101, v164, 1), v99, v164.f64[0]);
        v103 = vmlaq_n_f64(vmulq_laneq_f64(v101, v163, 1), v99, v163.f64[0]);
        v104 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v101, v180, 1), v99, v180.f64[0]), 0);
        v105 = vmlaq_f64(vmulq_f64(v103, 0), 0, v102);
        v98 = v184;
        v106 = vaddq_f64(v104, v105);
        v107 = vaddq_f64(v106, bboxes.origin);
      }

      v43 = 0;
      bboxes.origin = v107;
      v187 = v107;
      size = bboxes.size;
      v108 = v159 * v73;
      if (v75)
      {
        v109 = v159 * v74;
      }

      else
      {
        v108 = -(v159 * v74);
        v109 = 0.0;
      }

      if (v160)
      {
        v110 = -v108;
      }

      else
      {
        v110 = v108;
      }

      if (*&v106.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v111.i64[1] = *&v106.f64[1], *v111.i64 = v108, v112 = vdupq_n_s64(0x7FF0000000000000uLL), v113 = vmovn_s64(vcgeq_s64(vandq_s8(v111, v150), v112)), (v113.i8[4]) || (v113.i8[0] & 1) != 0 || ((v43 = 0, COERCE_UNSIGNED_INT64(fabs(v159 * v74)) > 0x7FEFFFFFFFFFFFFFLL) ? (v114 = v75) : (v114 = 0), v114 || (*&v148 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v115 = v98.f64[0] + v110, v110 < 0.0) ? (v116 = v106.f64[0] + v110) : (v115 = v98.f64[0], v116 = v106.f64[0]), v110 >= 0.0 ? (width = v110) : (width = -v110), v43 = 0, ((x_low | v172) & 1) == 0)))
      {
        Encoding = v161;
LABEL_162:
        v32 = v153;
        goto LABEL_163;
      }

      Encoding = v161;
      if (!*(v8 + 2264) || (*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_162;
      }

      v175 = v115;
      v185 = v98;
      v118 = HIWORD(v191);
      v177 = v106;
      v119 = 360.0 - v83 > 0.1 && v83 > 0.1;
      height = rect;
      y = v106.f64[1] + v144;
      v181 = width;
      v122 = v106.f64[1] + v144;
      v123 = v116;
      x = v116;
      if (v119)
      {
        v173 = v112;
        v125 = __sincos_stret(v83 * 0.0174532925);
        v202.tx = 0.0;
        v202.ty = 0.0;
        v202.a = v125.__cosval;
        v202.b = v125.__sinval;
        v202.c = -v125.__sinval;
        v202.d = v125.__cosval;
        v203.origin.x = v123;
        v203.origin.y = v122;
        v203.size.width = v181;
        v203.size.height = rect;
        v204 = CGRectApplyAffineTransform(v203, &v202);
        v112 = v173;
        x = v204.origin.x;
        y = v204.origin.y;
        width = v204.size.width;
        height = v204.size.height;
      }

      v127 = *(v8 + 16);
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*v8, v150), v112), vcgeq_s64(vandq_s8(v127, v150), v112)))) & 1) != 0 || (v128 = *(v8 + 8), v129 = *(v8 + 24), v126 = *v8, !CGRectIntersectsRect(*(&v127 - 1), *(&width - 2))) || !primitiveBufferMemoryCheck(v8, v8 + 2064))
      {
        v43 = 0;
        goto LABEL_162;
      }

      v130 = *(v8 + 2072);
      *v130 = v123;
      *(v130 + 8) = v122;
      *(v130 + 16) = v181;
      *(v130 + 24) = rect;
      *(v130 + 32) = v187;
      *(v130 + 48) = size;
      *(v130 + 64) = 0;
      *(v130 + 72) = v54;
      *(v130 + 74) = v118;
      *(v130 + 76) = 0;
      *(v130 + 80) = v177;
      *(v130 + 96) = v185;
      *(v130 + 112) = v175;
      *(v130 + 120) = v185.f64[1] + v144;
      *(v130 + 128) = v181;
      *(v130 + 136) = rect;
      *(v130 + 144) = v110;
      *(v130 + 152) = v109;
      *(v130 + 160) = 0;
      *(v130 + 168) = v83;
      *(v130 + 176) = v76;
      *(v130 + 188) = 0;
      *(v130 + 180) = 0;
      if (v119)
      {
        ++*(v8 + 2280);
      }

      *(v130 + 68) = *(v8 + 2272);
      v131 = *(v8 + 40);
      v132 = *(v131 + 80);
      *(v130 + 64) = v132;
      if (Style)
      {
        v32 = v153;
      }

      else
      {
        v32 = v153;
        Style = *(v8 + 2256);
        if (!Style || *(v131 + 9) == 1)
        {
          Style = CPPDFStyleListGetStyle(v8);
          v132 = *(*(v8 + 40) + 80);
        }
      }

      *(v130 + 160) = Style;
      *(v130 + 64) = v132;
      v140 = *(v8 + 2344);
      if (v140 && (v141 = *(v140 + 16)) != 0)
      {
        CurrentMCID = TaggedParser::GetCurrentMCID(v141, *(v8 + 2288));
      }

      else
      {
        CurrentMCID = -1;
      }

      v43 = 0;
      *(v130 + 184) = CurrentMCID;
      *(v8 + 2072) = v130 + 192;
      *(*(v8 + 2264) + 4 * (*(v8 + 2272))++) = 2;
LABEL_81:
      v75 = v162;
LABEL_163:
      v133 = *(v8 + 40);
      v134 = *(v133 + 216);
      v135 = *(v133 + 184);
      if (v75)
      {
        v136 = v135 + v73 * v134;
        if (HIWORD(v191) == 32)
        {
          v136 = v136 + *(v133 + 192);
        }

        v138 = v136 * (*(v133 + 200) / 100.0);
        v137 = 0.0;
      }

      else
      {
        v137 = v135 + v74 * v134;
        v138 = 0.0;
        if (HIWORD(v191) == 32)
        {
          v137 = v137 + *(v133 + 192);
        }
      }

      *(v133 + 120) = vmlaq_n_f64(vmlaq_n_f64(*(v133 + 120), *(v133 + 88), v138), *(v133 + 104), v137);
      v25 = (v25 + 1);
      ++v53;
      if (CIDsForText <= v51++)
      {
        goto LABEL_180;
      }
    }

    v54 = *v25;
    HIWORD(v191) = *v25;
    v202.a = 0.0;
    UnicodesForIndex = CGPDFEncodingGetUnicodesForIndex(Encoding, v54, &v202);
    LOBYTE(bboxes.origin.x) = CPFontEnumeratorIsKnownRenderedChar(*&v202.a, UnicodesForIndex);
    if (*&v202.a)
    {
      if (*&v202.a != 1)
      {
        LODWORD(v54) = CPFontEnumeratorProcessMultiUnicodes(&v192, *&v202.a, UnicodesForIndex);
        LOWORD(v191) = v54;
        if (v54)
        {
          LOBYTE(bboxes.origin.x) = CPFontEnumeratorIsKnownRenderedChar(1, &v191);
        }

        goto LABEL_53;
      }

      LODWORD(v54) = *UnicodesForIndex;
    }

    LOWORD(v191) = v54;
LABEL_53:
    v57 = v43;
    goto LABEL_57;
  }

LABEL_180:
  if (!Encoding)
  {
    free(v146);
    free(v200);
  }
}

uint64_t AdjustPosition(uint64_t a1, double a2)
{
  v3 = *(a1 + 40);
  v10 = a2 / -1000.0 * *(v3 + 216);
  result = [*(v3 + 248) isHorizontal];
  v5 = *(a1 + 40);
  v6 = *(v5 + 88);
  v7 = *(v5 + 104);
  v8 = *(v5 + 120);
  if (result)
  {
    v9 = vmlaq_f64(vmlaq_n_f64(v8, v6, v10), 0, v7);
  }

  else
  {
    v9 = vmlaq_n_f64(vmlaq_f64(v8, 0, v6), v7, v10);
  }

  *(v5 + 120) = v9;
  return result;
}

void *CGPDFRStateCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  __CFSetLastAllocationEventName();
  if (v0)
  {
    *v0 = CGPDFGStateCreate();
  }

  return v0;
}

void *CGPDFRStateCreateCopy(__int128 **a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    *v2 = CGPDFGStateCreateCopy(*a1);
  }

  return v2;
}

void CGPDFRStateRelease(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      do
      {
        v3 = v2[1];
        if (v3)
        {
          CGPDFGStateReleaseProperties(v2[1]);
          free(v3);
        }

        v2 = *v2;
      }

      while (v2);
      v4 = a1[1];
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
      }
    }

    v6 = *a1;
    if (*a1)
    {
      CGPDFGStateReleaseProperties(*a1);
      free(v6);
    }

    free(a1);
  }
}

uint64_t CGPDFRStateGetGState(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t *CGPDFRStateSetGState(uint64_t *result, __int128 *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result != a2)
    {
      if (v4)
      {
        CGPDFGStateReleaseProperties(*result);
        free(v4);
      }

      result = CGPDFGStateCreateCopy(a2);
      *v3 = result;
    }
  }

  return result;
}

void CGPDFRStateGSave(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
    }

    else
    {
      Copy = CGPDFGStateCreateCopy(*a1);
      v3 = *(a1 + 8);
      v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *v4 = v3;
      v4[1] = Copy;
      *(a1 + 8) = v4;
    }
  }
}

void CGPDFRStateGRestore(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[2])
  {
LABEL_4:

    pdf_error(v2);
    return;
  }

  v3 = a1[1];
  if (!v3)
  {
    v2 = "warning: gstate stack underflow.";
    goto LABEL_4;
  }

  v4 = *a1;
  if (*a1)
  {
    CGPDFGStateReleaseProperties(*a1);
    free(v4);
    v3 = a1[1];
  }

  v5 = *v3;
  *a1 = v3[1];
  free(v3);
  a1[1] = v5;
}

CGFloat *CGPDFShadingType2Init(CGPDFDictionary *a1, void *a2, _OWORD *a3)
{
  v5 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 5);
  }

  if (CGColorSpaceGetType(a1) == 7)
  {
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040222E9B24uLL);
  __CFSetLastAllocationEventName();
  if (!v6)
  {
    return 0;
  }

  value = 0;
  *a2 = v6;
  *a3 = CGPDFShadingType2Init_type2_callbacks;
  if (v5)
  {
    v5 = *(v5 + 3);
  }

  if (!CGPDFDictionaryGetNumbers(v5, "Coords", v10, 4))
  {
    return 0;
  }

  v7 = v10[1];
  *v6 = v10[0];
  v6[1] = v7;
  if (!CGPDFDictionaryGetNumbers(v5, "Domain", (v6 + 2), 2))
  {
    v6[2] = xmmword_18439C780;
  }

  if (!CGPDFDictionaryGetObject(v5, "Function", &value))
  {
    return 0;
  }

  result = CGPDFShadingCreateShadingFunction(value, 1uLL);
  *(v6 + 6) = result;
  if (result)
  {
    if (!CGPDFDictionaryGetBooleans(v5, "Extend", v6 + 56, 2))
    {
      *(v6 + 28) = 0;
    }

    return 1;
  }

  return result;
}

void type2_release_info(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[6];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a2);
  }
}

uint64_t type2_create_shading(CGRect *a1, uint64_t a2)
{
  v3 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (a1)
  {
    p_size = &a1[2].size;
    p_y = &a1[2].origin.y;
    v3 = a1 + 2;
    p_height = &a1[2].size.height;
  }

  v7 = *p_height;
  x = v3->origin.x;
  v9 = *p_y;
  width = p_size->width;
  v19[0] = *&v3->origin.x;
  *&v19[1] = v9;
  *&v19[2] = width;
  *&v19[3] = v7;
  if (a1)
  {
    y = a1[1].origin.y;
    a1 = *&a1[1].size.width;
  }

  else
  {
    y = 0.0;
  }

  Components = CGColorGetComponents(a1);
  if (v7 == 1.79769313e308 && width == 1.79769313e308 && v9 == -8.98846567e307 && x == -8.98846567e307)
  {
    v17 = 0;
  }

  else
  {
    v17 = v19;
  }

  return CGShadingCreateAxialInternal(*&y, Components, v17, (a2 + 32), *(a2 + 48), *(a2 + 56) != 0, *(a2 + 57) != 0, v13, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
}

void ascii_hex_filter_finalize(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

unint64_t ascii_hex_filter_refill(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (!a3 || (*(a1 + 8) & 1) != 0)
  {
    return v8;
  }

  v8 = 0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    do
    {
      v14 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
      if (v14 == -1)
      {
        v15 = 62;
      }

      else
      {
        v15 = v14;
      }

      if (v15 > 0x3E)
      {
        goto LABEL_12;
      }
    }

    while (((1 << v15) & 0x100003601) != 0);
    if (((1 << v15) & 0x3FF000000000000) != 0)
    {
      v16 = -48;
      goto LABEL_16;
    }

    if (v15 == 62)
    {
      break;
    }

LABEL_12:
    if ((v15 - 65) < 6)
    {
      v16 = -55;
    }

    else
    {
      if ((v15 - 97) >= 6)
      {
        pdf_error("ASCIIHexDecode: invalid character 0x%02x encountered in stream.", v15);
        v8 = 0;
        *(a1 + 8) = 1;
        return v8;
      }

      v16 = -87;
    }

LABEL_16:
    v13 = (v15 + v16) | (16 * v13);
    if (v12)
    {
      *(a2 + v8++) = v13;
    }

    ++v12;
    if (v8 >= a3)
    {
      return v8;
    }
  }

  *(a1 + 8) = 1;
  if (v12)
  {
    *(a2 + v8++) = 16 * v13;
  }

  return v8;
}

uint64_t CGContextDelegateCreateFilter(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = CGContextDelegateCreateWithCallbacks(a1, filter_vtable, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  if (v9)
  {
    CGContextDelegateSetNext(v9, a2);
    for (i = 0; i != 20; ++i)
    {
      if (a2)
      {
        v17 = names[i];
        callback_address = get_callback_address(a2, v17, "CGContextDelegateImplementsCallback", v11, v12, v13, v14, v15);
        if (!callback_address || !*callback_address)
        {
          v19 = get_callback_address(v10, v17, "CGContextDelegateSetCallback", v11, v12, v13, v14, v15);
          if (v19)
          {
            *v19 = 0;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t filter_DrawLayer(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 216);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_GetLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 208)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t filter_EndLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 200)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t filter_BeginLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 192)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t filter_DrawWindowContents(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 176);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_Operation(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 168);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_EndPage(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 160);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_BeginPage(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 152);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawImageFromRect(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 144);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  if (a1)
  {
    a1 = *(a1 + 16);
  }

  return CGContextDelegateDrawImages(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t filter_DrawDisplayList(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 128);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawConicGradient(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 120);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawRadialGradient(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 112);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawLinearGradient(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 104);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawShading(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 96);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawGlyphs(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 88);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawImage(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 80);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

uint64_t filter_DrawPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a1)
  {
    a1 = *(a1 + 16);
  }

  return CGContextDelegateDrawPath(a1, a2, a3, a4, a5);
}

uint64_t filter_DrawRects(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      v1 = *(result + 64);
      if (v1)
      {
        return v1();
      }

      else
      {
        return 1006;
      }
    }
  }

  return result;
}

void filter_DrawLines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  if (a1)
  {
    a1 = *(a1 + 16);
  }

  CGContextDelegateDrawLines(a1, a2, a3, a4, a5);
}

double filter_GetBounds(uint64_t a1, __n128 a2, __n128 a3)
{
  if (!a1)
  {
    return INFINITY;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return INFINITY;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    return -8.98846567e307;
  }

  v4(a2, a3, 0.0);
  return result;
}

CGFloat filter_GetTransform@<D0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (a1 && (v2 = *(a1 + 16)) != 0 && (v3 = *(v2 + 40)) != 0)
  {
    v3();
  }

  else
  {
    *a2 = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  return result;
}

uint64_t filter_GetColorTransform(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

double CGColorMatrixMakeIdentity@<D0>(_OWORD *a1@<X8>)
{
  *a1 = CGColorMatrixMakeIdentity_identity;
  a1[1] = unk_184564918;
  result = 0.0;
  a1[2] = xmmword_184564928;
  return result;
}

__n128 CGColorMatrixMake@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  do
  {
    result = *(a1 + v2 * 16);
    a2[v2++] = result;
  }

  while (v2 != 3);
  return result;
}

BOOL CGColorMatrixIsIdentity(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
LABEL_2:
  v3 = 0;
  while (1)
  {
    v4 = v2 == v3 ? 1.0 : 0.0;
    if (*(a1 + 4 * v3) != v4)
    {
      return v1;
    }

    if (++v3 == 4)
    {
      v1 = v2 > 1;
      a1 += 16;
      if (++v2 != 3)
      {
        goto LABEL_2;
      }

      return 1;
    }
  }
}

float CGColorMatrixConcat@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a2[4];
  v5 = a2[5];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[8];
  v10 = a2[9];
  v11 = a1[2];
  v12 = a1[3];
  v13 = ((v4 * v5) + (*a1 * v7)) + (v11 * v10);
  *a3 = ((v4 * v6) + (*a1 * *a2)) + (v11 * v9);
  a3[1] = v13;
  v15 = a2[6];
  v14 = a2[7];
  v17 = a2[2];
  v16 = a2[3];
  v19 = a2[10];
  v18 = a2[11];
  a3[2] = ((v4 * v15) + (v3 * v17)) + (v11 * v19);
  a3[3] = v12 + (((v4 * v14) + (v3 * v16)) + (v11 * v18));
  v20 = a1[4];
  v21 = a1[5];
  v22 = a1[6];
  v23 = a1[7];
  a3[4] = ((v6 * v21) + (v20 * v8)) + (v22 * v9);
  a3[5] = ((v5 * v21) + (v20 * v7)) + (v22 * v10);
  a3[6] = ((v15 * v21) + (v20 * v17)) + (v22 * v19);
  a3[7] = (((v14 * v21) + (v20 * v16)) + (v22 * v18)) + v23;
  v24 = a1[8];
  v25 = a1[9];
  v26 = (v6 * v25) + (v24 * v8);
  v27 = a1[10];
  v28 = a1[11];
  a3[8] = v26 + (v27 * v9);
  a3[9] = ((v5 * v25) + (v24 * v7)) + (v27 * v10);
  result = ((v15 * v25) + (v24 * v17)) + (v27 * v19);
  a3[10] = result;
  a3[11] = (((v14 * v25) + (v24 * v16)) + (v27 * v18)) + v28;
  return result;
}

void type0_release(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    free(a1[3]);
    free(a1[6]);
    free(a1[4]);
    free(a1[5]);
    free(a1[10]);

    free(a1);
  }
}

__CFDictionary *copy_pdf_description_21139(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (Mutable)
  {
    CGCFDictionarySetInteger(Mutable, @"/FunctionType", 0);
    v4 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v4)
    {
      goto LABEL_26;
    }

    v5 = v4;
    if ((*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = 0;
      do
      {
        CGCFArrayAppendCGFloat(v5, *(*(a1 + 8) + 8 * v6++));
      }

      while (v6 < 2 * *a1);
    }

    CFDictionarySetValue(v3, @"/Domain", v5);
    CFRelease(v5);
    v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    if ((*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 0;
      do
      {
        CGCFArrayAppendCGFloat(v8, *(*(a1 + 24) + 8 * v9++));
      }

      while (v9 < 2 * *(a1 + 16));
    }

    CFDictionarySetValue(v3, @"/Range", v8);
    CFRelease(v8);
    v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = v10;
    if (*a1)
    {
      v12 = 0;
      do
      {
        CGCFArrayAppendCGFloat(v11, *(*(a1 + 48) + 8 * v12++));
      }

      while (v12 < *a1);
    }

    CFDictionarySetValue(v3, @"/Size", v11);
    CFRelease(v11);
    CGCFDictionarySetInteger(v3, @"/BitsPerSample", *(a1 + 56));
    CGCFDictionarySetInteger(v3, @"/Order", *(a1 + 64));
    v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = v13;
    if ((*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = 0;
      do
      {
        CGCFArrayAppendCGFloat(v14, *(*(a1 + 40) + 8 * v15++));
      }

      while (v15 < 2 * *a1);
    }

    CFDictionarySetValue(v3, @"/Encode", v14);
    CFRelease(v14);
    v16 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v16)
    {
      goto LABEL_26;
    }

    v17 = v16;
    if ((*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = 0;
      do
      {
        CGCFArrayAppendCGFloat(v17, *(*(a1 + 32) + 8 * v18++));
      }

      while (v18 < 2 * *(a1 + 16));
    }

    CFDictionarySetValue(v3, @"/Decode", v17);
    CFRelease(v17);
    v19 = CFDataCreate(*MEMORY[0x1E695E480], *(a1 + 80), *(a1 + 72));
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(v3, @"/%Stream", v19);
    }

    else
    {
LABEL_26:
      v20 = v3;
      v3 = 0;
    }

    CFRelease(v20);
  }

  return v3;
}

void type0_evaluate(unint64_t *a1, uint64_t a2, double *a3, __n128 a4)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v7 = MEMORY[0x1EEE9AC00](8 * *a1, a4);
  v10 = (v31 - v9);
  v11 = (v31 - v9);
  if (v7 >= 0x101)
  {
    v11 = malloc_type_malloc(v7, 0x9F6FFED4uLL);
    if (!v11)
    {
      return;
    }
  }

  v12 = MEMORY[0x1EEE9AC00](8 * a1[2], v8);
  v15 = (v31 - v14);
  v16 = (v31 - v14);
  if (v12 >= 0x101)
  {
    v16 = malloc_type_malloc(v12, 0x6BAF8FB3uLL);
    if (!v16)
    {
      v16 = v11;
      if (v11 == v10)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  v17 = *a1;
  if (!*a1)
  {
    goto LABEL_15;
  }

  v18 = 0;
  v19 = a1[6];
  v20 = (a1[5] + 8);
  v21 = (a1[1] + 8);
  v13.n128_u64[0] = 0;
  do
  {
    v11[v18] = fmin(fmax(*(v20 - 1) + (*(a2 + 8 * v18) - *(v21 - 1)) * (*v20 - *(v20 - 1)) / (*v21 - *(v21 - 1)), 0.0), (*(v19 + 8 * v18) - 1));
    ++v18;
    v20 += 2;
    v21 += 2;
  }

  while (v17 != v18);
  if (v17 != 1)
  {
LABEL_15:
    multilinear_interpolate(a1, v11, v16, v13);
    v22 = a1[2];
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_16:
    v27 = (0xFFFFFFFF >> -*(a1 + 56));
    v28 = (a1[4] + 8);
    v29 = v16;
    do
    {
      v30 = *v29++;
      *a3++ = *(v28 - 1) + v30 * (*v28 - *(v28 - 1)) / v27;
      v28 += 2;
      --v22;
    }

    while (v22);
    goto LABEL_18;
  }

  v31[0] = v15;
  v31[1] = v31;
  v22 = a1[2];
  if (v22)
  {
    v23 = 0;
    v24 = *v11;
    v25 = *v11 - v24;
    do
    {
      v32[0] = v24;
      v26 = lookup(a1, v23, v32);
      v32[0] = v24 + 1;
      v16[v23] = v25 * lookup(a1, v23, v32) + (1.0 - v25) * v26;
      ++v23;
    }

    while (v22 != v23);
  }

  v15 = v31[0];
  if (v22)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v11 != v10)
  {
    free(v11);
  }

  if (v16 != v15)
  {
LABEL_21:
    free(v16);
  }
}

uint64_t lookup(void *a1, uint64_t a2, unint64_t *a3)
{
  if (!a1[9])
  {
    return 0;
  }

  v3 = a1[6];
  v4 = 0;
  v5 = *a1 - 1;
  if (*a1 != 1)
  {
    v6 = &v3[*a1 - 1];
    do
    {
      v7 = a3[v5];
      if (v7 >= *v6 - 1)
      {
        v7 = *v6 - 1;
      }

      v8 = *--v6;
      v4 = (v7 + v4) * v8;
      --v5;
    }

    while (v5);
  }

  v9 = *v3 - 1;
  if (*a3 < v9)
  {
    v9 = *a3;
  }

  v10 = a2 + (v9 + v4) * a1[2];
  v11 = a1[7];
  v12 = v10 * v11;
  v13 = (a1[10] + ((v10 * v11) >> 3));
  v14 = v12 & 7;
  if ((v12 & 7) != 0)
  {
    v16 = *v13++;
    v15 = v16;
    v14 = 8 - v14;
  }

  else
  {
    v15 = 0;
  }

  while (v14 < v11)
  {
    v18 = *v13++;
    v15 = v18 | (v15 << 8);
    v14 += 8;
  }

  return (v15 >> (v14 - v11)) & (0xFFFFFFFF >> -v11);
}

void multilinear_interpolate(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](8 * *a1, a4);
  v11 = &v45 - v9;
  if (v8 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v12 = (&v45 - v9);
  }

  else
  {
    v12 = 0;
  }

  if (v8 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000082)
  {
    v12 = malloc_type_malloc(v7, 0x8E682279uLL);
    v7 = 8 * *a1;
  }

  v13 = MEMORY[0x1EEE9AC00](v7, v10);
  v17 = &v45 - v15;
  if (v14 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v18 = &v45 - v15;
  }

  else
  {
    v18 = 0;
  }

  if (v14 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000082)
  {
    v18 = malloc_type_malloc(v13, 0x92B53351uLL);
    v13 = 8 * *a1;
  }

  v19 = MEMORY[0x1EEE9AC00](v13, v16);
  v23 = (&v45 - v21);
  if (v22 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v24 = (&v45 - v21);
  }

  else
  {
    v24 = 0;
  }

  if (v22 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000082)
  {
    v24 = malloc_type_malloc(v19, 0xACF8A80uLL);
    v20 = *a1;
  }

  v46 = v17;
  v47 = v11;
  if (v20)
  {
    v25 = 0;
    do
    {
      v26 = *(a2 + 8 * v25);
      v27 = v26;
      *&v18[8 * v25] = v27;
      v12[v25++] = v26 - v27;
      v28 = *a1;
    }

    while (v25 < *a1);
  }

  else
  {
    v28 = 0;
  }

  if (a1[2])
  {
    v29 = 0;
    do
    {
      v30 = 0;
      v31 = 0.0;
      do
      {
        if (v28)
        {
          v32 = 0;
          do
          {
            v24[v32] = *&v18[8 * v32] + ((v30 >> v32) & 1);
            ++v32;
            v28 = *a1;
          }

          while (v32 < *a1);
          v33 = lookup(a1, v29, v24);
          if (v28)
          {
            v34 = v24;
            v35 = v18;
            v36 = v12;
            v37 = v28;
            do
            {
              v39 = *v34++;
              v38 = v39;
              v41 = *v35;
              v35 += 8;
              v40 = v41;
              v42 = *v36++;
              v43 = v42;
              v44 = 1.0 - v42;
              if (v38 == v40)
              {
                v43 = v44;
              }

              v33 = v33 * v43;
              --v37;
            }

            while (v37);
          }
        }

        else
        {
          v33 = lookup(a1, v29, v24);
        }

        v31 = v31 + v33;
        ++v30;
      }

      while (v30 < (1 << v28));
      *(a3 + 8 * v29++) = v31;
    }

    while (v29 < a1[2]);
  }

  if (v12 != v47)
  {
    free(v12);
  }

  if (v18 != v46)
  {
    free(v18);
  }

  if (v24 != v23)
  {
    free(v24);
  }
}

uint64_t CGPDFStructureElementCreate(int a1)
{
  if (CGPDFStructureElementGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFStructureElementGetTypeID(void)::onceToken, &__block_literal_global_21167);
  }

  cftype = pdf_create_cftype();
  v3 = cftype;
  if (cftype)
  {
    *(cftype + 16) = a1;
    *(cftype + 24) = 0u;
    *(cftype + 40) = 0u;
    *(cftype + 56) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 64) = 0;
  }

  return v3;
}

void sub_184311BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  std::vector<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::__destroy_vector::operator()[abi:fe200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t ___ZL30CGPDFStructureElementGetTypeIDv_block_invoke()
{
  result = pdf_register_cftype(&CGPDFStructureElementGetTypeID(void)::CGPDFStructureElementType);
  CGPDFStructureElementGetTypeID(void)::typeID = result;
  return result;
}

CFTypeRef CGPDFStructureElementRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGPDFStructureElementRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFStructureElementAddStructureElement(void *a1, void *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf[3])
  {
    CGPostError("%s: Cannot add structure element child to structure element. The child already has a parent", cf, a3, a4, a5, a6, a7, a8, "AddChild");
    return 1001;
  }

  else
  {
    cf[3] = a1 + 2;
    v10 = CFRetain(cf);
    v11 = v10;
    v12 = a1[5];
    v13 = a1[6];
    if (v12 >= v13)
    {
      v15 = a1[4];
      v16 = (v12 - v15) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v18 = v13 - v15;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFF0;
      v20 = 0xFFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      v27 = a1 + 4;
      if (v20)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>>(v20);
      }

      v21 = 16 * v16;
      *v21 = v11;
      *(v21 + 8) = 0;
      v26 = (16 * v16 + 16);
      std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>,std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>*>(v15, v12, 0);
      v22 = a1[4];
      a1[4] = 0;
      v23 = a1[6];
      v24 = v26;
      *(a1 + 5) = v26;
      *&v26 = v22;
      *(&v26 + 1) = v23;
      v25[0] = v22;
      v25[1] = v22;
      std::__split_buffer<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::~__split_buffer(v25);
      v14 = v24;
    }

    else
    {
      *v12 = v10;
      *(v12 + 8) = 0;
      v14 = v12 + 16;
    }

    result = 0;
    a1[5] = v14;
  }

  return result;
}

void sub_184311E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<CGPDFStructureElement *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFStructureElementAddMarkedContentItem(void *a1, void *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf[6])
  {
    CGPostError("%s: Cannot add marked content item child to structure element. The child already has a parent", cf, a3, a4, a5, a6, a7, a8, "AddChild");
    return 1001;
  }

  else
  {
    cf[6] = a1;
    v10 = CFRetain(cf);
    v11 = v10;
    v12 = a1[5];
    v13 = a1[6];
    if (v12 >= v13)
    {
      v15 = a1[4];
      v16 = (v12 - v15) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v18 = v13 - v15;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFF0;
      v20 = 0xFFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      v27 = a1 + 4;
      if (v20)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>>(v20);
      }

      v21 = 16 * v16;
      *v21 = v11;
      *(v21 + 8) = 1;
      v26 = (16 * v16 + 16);
      std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>,std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>*>(v15, v12, 0);
      v22 = a1[4];
      a1[4] = 0;
      v23 = a1[6];
      v24 = v26;
      *(a1 + 5) = v26;
      *&v26 = v22;
      *(&v26 + 1) = v23;
      v25[0] = v22;
      v25[1] = v22;
      std::__split_buffer<std::variant<applesauce::CF::ObjectRef<CGPDFStructureElement *>,applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>>>::~__split_buffer(v25);
      v14 = v24;
    }

    else
    {
      *v12 = v10;
      *(v12 + 8) = 1;
      v14 = v12 + 16;
    }

    result = 0;
    a1[5] = v14;
  }

  return result;
}

void sub_184311F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<CGPDFMarkedContentItem *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionGetTypeID()
{
  result = CGPDFSelectionGetTypeID::id;
  if (!CGPDFSelectionGetTypeID::id)
  {
    result = _CFRuntimeRegisterClass();
    CGPDFSelectionGetTypeID::id = result;
  }

  return result;
}

CFStringRef _CGPDFSelectionCopyDebugDesc(char *a1)
{
  if (a1[160] == 1)
  {
    v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Selection: %p", a1 + 168];
    v3 = v2;
    if (*(a1 + 23) == *(a1 + 24))
    {
      [(__CFString *)v2 appendString:@" empty>"];
      v22 = v3;
    }

    else
    {
      Selection::cacheStringRanges(a1 + 21);
      [(__CFString *)v3 appendFormat:@" stringRanges:%zu {", (*(a1 + 27) - *(a1 + 26)) >> 4];
      v4 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 21), 1);
      v28 = v4;
      v5 = *(a1 + 26);
      if (*(a1 + 27) != v5)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v27 = *(v5 + v6);
          [(__CFString *)v3 appendFormat:@" [%ld, %ld]", v27];
          v26[0] = &v27;
          v26[1] = 1;
          StringForStringRanges = PageLayout::CreateStringForStringRanges(v4 + 16, v26);
          if (StringForStringRanges)
          {
            v9 = StringForStringRanges;
            v10 = v9;
            if ([v9 length] >= 0x33)
            {
              v11 = [v9 substringToIndex:47];
              v10 = [v11 stringByAppendingString:@"..."];
            }

            v12 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

            [(__CFString *)v3 appendFormat:@"=%@", v12];
            CFRelease(v9);
          }

          ++v7;
          v5 = *(a1 + 26);
          v6 += 16;
        }

        while (v7 < (*(a1 + 27) - v5) >> 4);
      }

      [(__CFString *)v3 appendString:@"}>"];
      v13 = v3;
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  else
  {
    String = CGPDFSelectionCreateString(a1);
    if (!String)
    {
      v23 = CFGetAllocator(a1);
      return CFStringCreateWithFormat(v23, 0, @"<CGPDFSelection (%p): {empty}>", a1);
    }

    v15 = String;
    v16 = *(a1 + 3);
    if (!v16)
    {
      goto LABEL_21;
    }

    if (*(v16 + 40))
    {
      CPIndexSetNormalize(*(a1 + 3));
    }

    if (*(v16 + 16) == 1)
    {
      Range = CPIndexSetGetRange(*(a1 + 3), 0);
      v19 = v18;
      v20 = CFGetAllocator(a1);
      v21 = CFStringCreateWithFormat(v20, 0, @"<CGPDFSelection (%p): range = [%ld,%ld>"), a1, Range, v19);
    }

    else
    {
LABEL_21:
      v25 = CFGetAllocator(a1);
      v21 = CFStringCreateWithFormat(v25, 0, @"<CGPDFSelection (%p): {multiple ranges}>", a1);
    }

    v3 = v21;
    CFRelease(v15);
  }

  return v3;
}

void sub_1843126FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);

  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateString(uint64_t a1)
{
  StringForStringRanges = a1;
  if (a1)
  {
    if (*(a1 + 184) == *(a1 + 192))
    {
      return 0;
    }

    else
    {
      Selection::cacheStringRanges((a1 + 168));
      v2 = CGPDFPageCopyPageLayoutWithCTLD(*(StringForStringRanges + 168), 1);
      v3 = (*(StringForStringRanges + 216) - *(StringForStringRanges + 208)) >> 4;
      v5[0] = *(StringForStringRanges + 208);
      v5[1] = v3;
      v5[2] = v2;
      StringForStringRanges = PageLayout::CreateStringForStringRanges(v2 + 16, v5);
      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  return StringForStringRanges;
}

void sub_1843127D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<CGPDFLayout *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _CGPDFSelectionFinalize(char *a1)
{
  if (a1[160] == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 33) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 29);
    if (v3)
    {
      *(a1 + 30) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 26);
    if (v4)
    {
      *(a1 + 27) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 23);
    if (v5)
    {
      *(a1 + 24) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 21);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 2);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 3);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 4);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 6) = 0;
  v10 = *(a1 + 7);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 9);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 10);
  if (v13)
  {
    free(v13);
  }

  return pthread_mutex_destroy((a1 + 96));
}

CFTypeRef CGPDFSelectionRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGPDFSelectionRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void CGPDFSelectionCreateBetweenPointsWithOptions(os_unfair_lock_s *a1, int a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (!a1)
  {
    return;
  }

  v13 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  v14 = v13;
  if (a3 == 2)
  {
    if (!v13)
    {
      return;
    }

    v15 = v13[46];
    v16 = v13[47];
    if (v15 != v16)
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *v15;
        v20 = *(*v15 + 10);
        v21 = *(*v15 + 11);
        v22 = *(*v15 + 12);
        v23 = *(*v15 + 13);
        v135.origin.x = v20;
        v135.origin.y = v21;
        v135.size.width = v22;
        v135.size.height = v23;
        v132.x = a4;
        v132.y = a5;
        if (CGRectContainsPoint(v135, v132))
        {
          v17 = v19;
        }

        v136.origin.x = v20;
        v136.origin.y = v21;
        v136.size.width = v22;
        v136.size.height = v23;
        v133.x = a6;
        v133.y = a7;
        if (CGRectContainsPoint(v136, v133))
        {
          v18 = v19;
        }

        if (v17 && v18 != 0)
        {
          goto LABEL_48;
        }

        v15 += 2;
        if (v15 == v16)
        {
          goto LABEL_43;
        }
      }
    }

    v18 = 0;
    v17 = 0;
LABEL_43:
    if (v17 | v18)
    {
      if (!v17)
      {
        v17 = v18;
      }

LABEL_48:
      v128 = 0.0;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v130.x = a4;
      v130.y = a5;
      v131.x = a6;
      v131.y = a7;
      PageLayout::getTableSelectionRectForPoints(&v124, v130, v131, v17);
      v45 = CGPDFSelectionCreateWithPage(v14[2]);
      *(v45 + 288) = 1;
      *(v45 + 360) = v128;
      v46 = v127;
      *(v45 + 328) = v126;
      *(v45 + 344) = v46;
      v47 = v125;
      *(v45 + 296) = v124;
      *(v45 + 312) = v47;
      v48 = v14[10];
      if (v14[11] == v48)
      {
        goto LABEL_92;
      }

      v49 = 0;
      v122 = 0;
      v123.size.height = v128;
      v123.origin.x = *(&v126 + 1);
      *&v123.origin.y = v127;
LABEL_50:
      v121 = (v48 + 16 * v49);
      v50 = *v121;
      v51 = __sincos_stret(*(*v121 + 56));
      v137 = *(v50 + 24);
      v129.a = v51.__cosval;
      v129.b = v51.__sinval;
      v129.c = -v51.__sinval;
      v129.d = v51.__cosval;
      v129.tx = 0.0;
      v129.ty = 0.0;
      v142 = CGRectApplyAffineTransform(v137, &v129);
      if (!CGRectIntersectsRect(v123, v142) || *(v50 + 8) < 1)
      {
        goto LABEL_91;
      }

      v52 = 0;
      v53 = *v50;
      v54 = 32 * *v50;
      v55 = -1;
      while (1)
      {
        v56 = v14[19];
        if (v53 >= (v14[20] - v56) >> 5)
        {
          __break(1u);
          return;
        }

        v138 = *(v56 + v54);
        v129.a = v51.__cosval;
        v129.b = v51.__sinval;
        v129.c = -v51.__sinval;
        v129.d = v51.__cosval;
        v129.tx = 0.0;
        v129.ty = 0.0;
        v139 = CGRectApplyAffineTransform(v138, &v129);
        x = v139.origin.x;
        y = v139.origin.y;
        width = v139.size.width;
        height = v139.size.height;
        if (v139.size.width < 0.0 || v139.size.height < 0.0)
        {
          v140 = CGRectStandardize(v139);
          v62 = v140.origin.x + v140.size.width * 0.5;
          v140.origin.x = x;
          v140.origin.y = y;
          v140.size.width = width;
          v61 = 0.5;
          v140.size.height = height;
          v141 = CGRectStandardize(v140);
          y = v141.origin.y;
          height = v141.size.height;
        }

        else
        {
          v61 = 0.5;
          v62 = v139.origin.x + v139.size.width * 0.5;
        }

        v134.y = y + height * v61;
        v134.x = v62;
        if (CGRectContainsPoint(v123, v134))
        {
          if (v55 == -1)
          {
            goto LABEL_75;
          }

          if (v53 != v52 + v55)
          {
            v64 = *(v45 + 192);
            v63 = *(v45 + 200);
            if (v64 >= v63)
            {
              v66 = *(v45 + 184);
              v67 = v64 - v66;
              v68 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v66) >> 3);
              v69 = v68 + 1;
              if (v68 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_142;
              }

              v70 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v66) >> 3);
              if (2 * v70 > v69)
              {
                v69 = 2 * v70;
              }

              if (v70 >= 0x555555555555555)
              {
                v71 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v71 = v69;
              }

              if (v71)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v71);
              }

              v72 = 24 * v68;
              *v72 = v122;
              *(v72 + 8) = v55;
              *(v72 + 16) = v52;
              v65 = 24 * v68 + 24;
              v73 = v72 - v67;
              memcpy((v72 - v67), v66, v67);
              v74 = *(v45 + 184);
              *(v45 + 184) = v73;
              *(v45 + 192) = v65;
              *(v45 + 200) = 0;
              if (v74)
              {
                operator delete(v74);
              }
            }

            else
            {
              *v64 = v122;
              *(v64 + 1) = v55;
              v65 = (v64 + 24);
              *(v64 + 2) = v52;
            }

            *(v45 + 192) = v65;
            v50 = *v121;
LABEL_75:
            v55 = v53;
            v52 = 1;
            v122 = v49;
            goto LABEL_76;
          }

          ++v52;
        }

LABEL_76:
        ++v53;
        v54 += 32;
        if (v53 >= *(v50 + 8) + *v50)
        {
          if (v55 == -1)
          {
            goto LABEL_91;
          }

          v76 = *(v45 + 192);
          v75 = *(v45 + 200);
          if (v76 < v75)
          {
            *v76 = v122;
            *(v76 + 1) = v55;
            v77 = (v76 + 24);
            *(v76 + 2) = v52;
            goto LABEL_90;
          }

          v78 = *(v45 + 184);
          v79 = v76 - v78;
          v80 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v78) >> 3);
          v81 = v80 + 1;
          if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_142;
          }

          v82 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v78) >> 3);
          if (2 * v82 > v81)
          {
            v81 = 2 * v82;
          }

          if (v82 >= 0x555555555555555)
          {
            v83 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v83 = v81;
          }

          if (v83)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v83);
          }

          v84 = 24 * v80;
          *v84 = v122;
          *(v84 + 8) = v55;
          *(v84 + 16) = v52;
          v77 = 24 * v80 + 24;
          v85 = v84 - v79;
          memcpy((v84 - v79), v78, v79);
          v86 = *(v45 + 184);
          *(v45 + 184) = v85;
          *(v45 + 192) = v77;
          *(v45 + 200) = 0;
          if (v86)
          {
            operator delete(v86);
          }

LABEL_90:
          *(v45 + 192) = v77;
LABEL_91:
          ++v49;
          v48 = v14[10];
          if (v49 >= (v14[11] - v48) >> 4)
          {
LABEL_92:
            Selection::Normalize((v45 + 168));
            goto LABEL_107;
          }

          goto LABEL_50;
        }
      }
    }

    goto LABEL_44;
  }

  if (!v13)
  {
    return;
  }

  if ((a2 - 7) > 0xFFFFFFFC || v13[10] == v13[11])
  {
    goto LABEL_107;
  }

  v25 = *(v13 + 56);
  PageLayout::getTextRangeIndex((v13 + 2), 0, 0, a4, a5);
  v27 = v26;
  PageLayout::getTextRangeIndex((v14 + 2), 0, 0, a6, a7);
  v29 = v28;
  v31 = v27 == -1 || v28 == -1;
  if (v25)
  {
    if (!v31)
    {
      v32 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v14 + 2, v27);
      v33 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v14 + 2, v29);
      v34 = v33;
      if (v33 >= v32)
      {
        v35 = a4;
      }

      else
      {
        v35 = a6;
      }

      if (v33 >= v32)
      {
        v36 = a5;
      }

      else
      {
        v36 = a7;
      }

      PageLayout::getTextRangeIndex((v14 + 2), a2, 0, v35, v36);
      v38 = v37;
      if (v34 >= v32)
      {
        v39 = a6;
      }

      else
      {
        v39 = a4;
      }

      if (v34 >= v32)
      {
        v40 = a7;
      }

      else
      {
        v40 = a5;
      }

      PageLayout::getTextRangeIndex((v14 + 2), a2, 1, v39, v40);
      v42 = v41;
      v43 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v14 + 2, v38);
      v44 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v14 + 2, v42);
      PageLayout::CreateSelectionForStringRange((v14 + 2), v43, v44 - v43, a2);
    }

    goto LABEL_107;
  }

  if (v31 || (v28 >= v27 ? (v87 = a4) : (v87 = a6), v28 >= v27 ? (v88 = a5) : (v88 = a7), (PageLayout::getTextRangeIndex((v14 + 2), a2, 0, v87, v88), v90 = v89, v92 = v91, v29 >= v27) ? (v93 = a6) : (v93 = a4), v29 >= v27 ? (v94 = a7) : (v94 = a5), PageLayout::getTextRangeIndex((v14 + 2), a2, 1, v93, v94), v96 = v95, v95 == v92))
  {
LABEL_107:
    CFRelease(v14);
    return;
  }

  v97 = CGPDFSelectionCreateWithPage(v14[2]);
  *(v97 + 288) = 3;
  v98 = v96 - v92;
  v99 = v14[46];
  v100 = v14[47];
  if (v99 != v100)
  {
    v101 = v92;
    while (1)
    {
      v102 = *v99;
      if ((*(*v99 + 72) & 1) == 0)
      {
        PageLayoutTable::computeTableRanges(*v99);
      }

      v103 = *(v102 + 7);
      v104 = v101 + v98;
      v105 = v103 + *(v102 + 8);
      if (v101 > v103 || v104 < v105)
      {
        if (v101 < v105 && v103 < v104)
        {
          if (v101 < v103)
          {
            v108 = v103 - v96;
          }

          else
          {
            v101 = v103 + *(v102 + 8);
            v108 = v92 - v105;
          }

          v98 += v108;
          if (!v98)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        *(v97 + 288) = 0;
      }

      v99 += 2;
      if (v99 == v100)
      {
        goto LABEL_129;
      }
    }
  }

  v101 = v92;
LABEL_129:
  v110 = *(v97 + 192);
  v109 = *(v97 + 200);
  if (v110 >= v109)
  {
    v112 = *(v97 + 184);
    v113 = v110 - v112;
    v114 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v112) >> 3);
    v115 = v114 + 1;
    if (v114 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_142:
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v112) >> 3);
    if (2 * v116 > v115)
    {
      v115 = 2 * v116;
    }

    if (v116 >= 0x555555555555555)
    {
      v117 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v117 = v115;
    }

    if (v117)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v117);
    }

    v118 = 24 * v114;
    *v118 = v90;
    *(v118 + 8) = v101;
    *(v118 + 16) = v98;
    v111 = 24 * v114 + 24;
    v119 = v118 - v113;
    memcpy((v118 - v113), v112, v113);
    v120 = *(v97 + 184);
    *(v97 + 184) = v119;
    *(v97 + 192) = v111;
    *(v97 + 200) = 0;
    if (v120)
    {
      operator delete(v120);
    }
  }

  else
  {
    *v110 = v90;
    *(v110 + 1) = v101;
    v111 = (v110 + 24);
    *(v110 + 2) = v98;
  }

  *(v97 + 192) = v111;
  Selection::Normalize((v97 + 168));
LABEL_44:
  if (v14)
  {
    goto LABEL_107;
  }
}

void sub_18431310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateBetweenPointsWithOptionsAndClampedRange(os_unfair_lock_s *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a1)
  {
    v24 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
    if (v24)
    {
      v25 = v24;
      SelectionForStringRange = 0;
      if ((a2 - 7) > 0xFFFFFFFC || v24[10] == v24[11])
      {
        goto LABEL_57;
      }

      v27 = *(v24 + 56);
      PageLayout::getTextRangeIndex((v24 + 2), 0, 0, a3, a4);
      v29 = v28;
      PageLayout::getTextRangeIndex((v25 + 2), 0, 0, a5, a6);
      v31 = v30;
      v33 = v29 == -1 || v30 == -1;
      if (v27)
      {
        if (!v33)
        {
          v34 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v25 + 2, v29);
          v35 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v25 + 2, v31);
          v36 = v35;
          if (v35 >= v34)
          {
            v37 = a3;
          }

          else
          {
            v37 = a5;
          }

          if (v35 >= v34)
          {
            v38 = a4;
          }

          else
          {
            v38 = a6;
          }

          PageLayout::getTextRangeIndex((v25 + 2), a2, 0, v37, v38);
          v40 = v39;
          if (v36 >= v34)
          {
            v41 = a5;
          }

          else
          {
            v41 = a3;
          }

          if (v36 >= v34)
          {
            v42 = a6;
          }

          else
          {
            v42 = a4;
          }

          PageLayout::getTextRangeIndex((v25 + 2), a2, 1, v41, v42);
          v44 = v43;
          v45 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v25 + 2, v40);
          v46 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v25 + 2, v44);
          SelectionForStringRange = PageLayout::CreateSelectionForStringRange((v25 + 2), v45, v46 - v45, 3);
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if (!v33)
      {
        v47 = v30 >= v29 ? a3 : a5;
        v48 = v30 >= v29 ? a4 : a6;
        PageLayout::getTextRangeIndex((v25 + 2), a2, 0, v47, v48);
        v50 = v49;
        v52 = v51;
        v53 = v31 >= v29 ? a5 : a3;
        v54 = v31 >= v29 ? a6 : a4;
        PageLayout::getTextRangeIndex((v25 + 2), a2, 1, v53, v54);
        v56 = v55;
        if (v55 != v52)
        {
          v57 = CGPDFSelectionCreateWithPage(v25[2]);
          SelectionForStringRange = v57;
          *(v57 + 288) = 3;
          v58 = *(v57 + 264);
          v59 = *(v57 + 272);
          if (v58 >= v59)
          {
            v61 = *(v57 + 256);
            v62 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - v61) >> 4);
            v63 = v62 + 1;
            if (v62 + 1 > 0x333333333333333)
            {
              std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
            }

            v64 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - v61) >> 4);
            if (2 * v64 > v63)
            {
              v63 = 2 * v64;
            }

            if (v64 >= 0x199999999999999)
            {
              v65 = 0x333333333333333;
            }

            else
            {
              v65 = v63;
            }

            if (v65)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<CGRect,CGAffineTransform>>>(v65);
            }

            v66 = 80 * v62;
            *v66 = a7;
            *(v66 + 8) = a8;
            *(v66 + 16) = a9;
            *(v66 + 24) = a10;
            *(v66 + 32) = xmmword_18439C630;
            *(v66 + 48) = xmmword_18439CF80;
            *(v66 + 64) = 0;
            *(v66 + 72) = 0;
            v60 = 80 * v62 + 80;
            v67 = *(SelectionForStringRange + 256);
            v68 = *(SelectionForStringRange + 264) - v67;
            v69 = 80 * v62 - v68;
            memcpy((v66 - v68), v67, v68);
            v70 = *(SelectionForStringRange + 256);
            *(SelectionForStringRange + 256) = v69;
            *(SelectionForStringRange + 264) = v60;
            *(SelectionForStringRange + 272) = 0;
            if (v70)
            {
              operator delete(v70);
            }
          }

          else
          {
            *v58 = a7;
            *(v58 + 8) = a8;
            *(v58 + 16) = a9;
            *(v58 + 24) = a10;
            *(v58 + 32) = xmmword_18439C630;
            *(v58 + 48) = xmmword_18439CF80;
            *(v58 + 64) = 0;
            *(v58 + 72) = 0;
            v60 = v58 + 80;
          }

          *(SelectionForStringRange + 264) = v60;
          if (a13)
          {
            v52 = fmax(v52, a12);
            v71 = fmin(v56, (a12 + a13));
            v72 = v71 - v52;
            if (v71 < v52)
            {
              v87 = 0;
              v86 = 0uLL;
              std::vector<std::pair<unsigned long,CFRange>>::emplace_back<int,CFRange>(SelectionForStringRange + 184, &v87, &v86);
              goto LABEL_56;
            }
          }

          else
          {
            v72 = v56 - v52;
          }

          v75 = *(SelectionForStringRange + 192);
          v74 = *(SelectionForStringRange + 200);
          if (v75 >= v74)
          {
            v77 = *(SelectionForStringRange + 184);
            v78 = v75 - v77;
            v79 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v77) >> 3);
            v80 = v79 + 1;
            if (v79 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
            }

            v81 = 0xAAAAAAAAAAAAAAABLL * ((v74 - v77) >> 3);
            if (2 * v81 > v80)
            {
              v80 = 2 * v81;
            }

            if (v81 >= 0x555555555555555)
            {
              v82 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v82 = v80;
            }

            if (v82)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v82);
            }

            v83 = 24 * v79;
            *v83 = v50;
            *(v83 + 8) = v52;
            *(v83 + 16) = v72;
            v76 = 24 * v79 + 24;
            v84 = (24 * v79 - v78);
            memcpy(v84, v77, v78);
            v85 = *(SelectionForStringRange + 184);
            *(SelectionForStringRange + 184) = v84;
            *(SelectionForStringRange + 192) = v76;
            *(SelectionForStringRange + 200) = 0;
            if (v85)
            {
              operator delete(v85);
            }
          }

          else
          {
            *v75 = v50;
            *(v75 + 1) = v52;
            v76 = (v75 + 24);
            *(v75 + 2) = v72;
          }

          *(SelectionForStringRange + 192) = v76;
          Selection::Normalize((SelectionForStringRange + 168));
          goto LABEL_57;
        }
      }

LABEL_56:
      SelectionForStringRange = 0;
LABEL_57:
      CFRelease(v25);
      return SelectionForStringRange;
    }
  }

  return 0;
}

uint64_t CGPDFSelectionCreateDirectionalSelection(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = CGPDFPageCopyLayout(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  DirectionalSelection = CGPDFLayoutCreateDirectionalSelection(v9, a2, a3, a4, a5);
  CFRelease(v10);
  return DirectionalSelection;
}

void sub_184313624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateFromIndexToPoint(os_unfair_lock_s *a1, uint64_t a2, double a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CGPDFSelectionCreateToPointWithOptions(a1, 0, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(v6 + 192);
  if (v8 == *(v6 + 184) || (v9 = *(v8 - 16) + *(v8 - 8), v9 <= a2))
  {
    v10 = 0;
  }

  else
  {
    v10 = CGPDFSelectionCreateForRange(a1, a2, v9 - a2);
  }

  CFRelease(v7);
  return v10;
}

void sub_1843136CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFSelection *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateToPointWithOptions(os_unfair_lock_s *a1, int a2, double a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  SelectionForStringRange = 0;
  if ((a2 - 7) <= 0xFFFFFFFC && v7[10] != v7[11])
  {
    PageLayout::getTextRangeIndex((v7 + 2), a2, 1, a3, a4);
    v11 = v10;
    if (v10 == -1)
    {
      SelectionForStringRange = 0;
    }

    else if (*(v8 + 56) == 1)
    {
      v12 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v8 + 2, v10);
      SelectionForStringRange = PageLayout::CreateSelectionForStringRange((v8 + 2), 0, v12, 3);
    }

    else
    {
      v13 = CGPDFSelectionCreateWithPage(v8[2]);
      SelectionForStringRange = v13;
      *(v13 + 288) = 0;
      v15 = *(v13 + 192);
      v14 = *(v13 + 200);
      if (v15 >= v14)
      {
        v17 = *(v13 + 184);
        v18 = v15 - v17;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v22);
        }

        v23 = 24 * v19;
        *v23 = 0;
        *(v23 + 8) = 0;
        *(v23 + 16) = v11;
        v16 = 24 * v19 + 24;
        v24 = v23 - v18;
        memcpy((v23 - v18), v17, v18);
        v25 = *(SelectionForStringRange + 184);
        *(SelectionForStringRange + 184) = v24;
        *(SelectionForStringRange + 192) = v16;
        *(SelectionForStringRange + 200) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v15 = 0;
        *(v15 + 1) = 0;
        v16 = (v15 + 24);
        *(v15 + 2) = v11;
      }

      *(SelectionForStringRange + 192) = v16;
      Selection::Normalize((SelectionForStringRange + 168));
    }
  }

  CFRelease(v8);
  return SelectionForStringRange;
}

void sub_1843138C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

unint64_t CGPDFSelectionGetNumberOfTextRanges(unint64_t result)
{
  if (result)
  {
    return 0xAAAAAAAAAAAAAAABLL * ((*(result + 192) - *(result + 184)) >> 3);
  }

  return result;
}

uint64_t CGPDFSelectionGetTextRange(uint64_t a1, unint64_t a2)
{
  if (a1 && (v2 = *(a1 + 184), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - v2) >> 3) > a2))
  {
    return *(v2 + 24 * a2 + 8);
  }

  else
  {
    return -1;
  }
}

uint64_t CGPDFSelectionCreateForRange(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  SelectionForTextRange = PageLayout::CreateSelectionForTextRange(v5 + 16, a2, a3, 0);
  CFRelease(v6);
  return SelectionForTextRange;
}

void sub_1843139B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

os_unfair_lock_s *CGPDFSelectionCreateFromPointToIndex(os_unfair_lock_s *a1, uint64_t a2, double a3, double a4)
{
  v4 = a1;
  if (a1)
  {
    v6 = CGPDFSelectionCreateFromPointWithOptions(a1, 0, a3, a4);
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 184);
      if (*(v6 + 192) == v8 || (v9 = *(v8 + 8), a2 <= v9))
      {
        v4 = 0;
      }

      else
      {
        v4 = CGPDFSelectionCreateForRange(v4, v9, a2 - v9);
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void sub_184313A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFSelection *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateFromPointWithOptions(os_unfair_lock_s *a1, int a2, double a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  SelectionForStringRange = 0;
  if ((a2 - 7) <= 0xFFFFFFFC && v7[10] != v7[11])
  {
    PageLayout::getTextRangeIndex((v7 + 2), a2, 0, a3, a4);
    v12 = v11;
    if (v11 == -1)
    {
      SelectionForStringRange = 0;
    }

    else if (*(v8 + 56) == 1)
    {
      v13 = PageLayout::convertRTLTextRangeIndexToStringRangeIndex(v8 + 2, v11);
      SelectionForStringRange = PageLayout::CreateSelectionForStringRange((v8 + 2), v13, [v8[9] length] - v13, a2);
    }

    else
    {
      v14 = v10;
      v15 = CGPDFSelectionCreateWithPage(v8[2]);
      SelectionForStringRange = v15;
      v16 = ((v8[20] - v8[19]) >> 5) - v12;
      v18 = v15[24];
      v17 = v15[25];
      if (v18 >= v17)
      {
        v20 = v15[23];
        v21 = v18 - v20;
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v20) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v20) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v25);
        }

        v26 = 24 * v22;
        *v26 = v14;
        *(v26 + 8) = v12;
        *(v26 + 16) = v16;
        v19 = 24 * v22 + 24;
        v27 = (24 * v22 - v21);
        memcpy(v27, v20, v21);
        v28 = *(SelectionForStringRange + 184);
        *(SelectionForStringRange + 184) = v27;
        *(SelectionForStringRange + 192) = v19;
        *(SelectionForStringRange + 200) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v18 = v14;
        *(v18 + 1) = v12;
        v19 = (v18 + 24);
        *(v18 + 2) = v16;
      }

      *(SelectionForStringRange + 192) = v19;
      Selection::Normalize((SelectionForStringRange + 168));
    }
  }

  CFRelease(v8);
  return SelectionForStringRange;
}

void sub_184313C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateBetweenRangeAndPoint(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  if (!a1)
  {
    return 0;
  }

  v11 = CGPDFPageCopyLayout(a1);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  SelectionBetweenRangeAndPoint = CGPDFLayoutCreateSelectionBetweenRangeAndPoint(v11, a2, a3, a4, a5, a6);
  CFRelease(v12);
  return SelectionBetweenRangeAndPoint;
}

void sub_184313D10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateAtPointWithOptions(os_unfair_lock_s *a1, int a2, double a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  if ((a2 - 7) > 0xFFFFFFFC || v7[10] == v7[11])
  {
LABEL_52:
    CFRelease(v8);
    return v9;
  }

  PageLayout::getTextRangeIndex((v7 + 2), a2, 2, a3, a4);
  v12 = v11;
  if (v11 == -1)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_52;
  }

  v13 = v10;
  result = CGPDFSelectionCreateWithPage(v8[2]);
  v9 = result;
  *(result + 288) = 3;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      WordRange = PageLayout::getWordRange(v8 + 2, v13, v12);
      v19 = WordRange;
      v20 = v18;
      v22 = *(v9 + 192);
      v21 = *(v9 + 200);
      if (v22 >= v21)
      {
        v34 = *(v9 + 184);
        v35 = v22 - v34;
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v34) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_54;
        }

        v38 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v34) >> 3);
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        if (v38 >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v39);
        }

        v47 = 24 * v36;
        *v47 = v13;
        *(v47 + 8) = v19;
        *(v47 + 16) = v20;
        v23 = 24 * v36 + 24;
        v48 = (24 * v36 - v35);
        memcpy(v48, v34, v35);
        v49 = *(v9 + 184);
        *(v9 + 184) = v48;
        *(v9 + 192) = v23;
        *(v9 + 200) = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v22 = v13;
        v22[1] = WordRange;
        v23 = (v22 + 3);
        v22[2] = v18;
      }

      *(v9 + 192) = v23;
LABEL_51:
      Selection::Normalize((v9 + 168));
      goto LABEL_52;
    }

    if (!a2)
    {
      v16 = *(result + 192);
      v15 = *(result + 200);
      if (v16 < v15)
      {
        *v16 = v13;
        v16[1] = v12;
        v16[2] = 1;
LABEL_18:
        v27 = (v16 + 3);
LABEL_50:
        *(v9 + 192) = v27;
        goto LABEL_51;
      }

      v28 = *(result + 184);
      v29 = v16 - v28;
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v28) >> 3);
      v31 = v30 + 1;
      if (v30 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v28) >> 3);
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v33);
        }

        v45 = 24 * v30;
        *v45 = v13;
        *(v45 + 8) = v12;
        *(v45 + 16) = 1;
        v27 = 24 * v30 + 24;
        v46 = (24 * v30 - v29);
LABEL_48:
        memcpy(v46, v28, v29);
        v51 = *(v9 + 184);
        *(v9 + 184) = v46;
        *(v9 + 192) = v27;
        *(v9 + 200) = 0;
        if (v51)
        {
          operator delete(v51);
        }

        goto LABEL_50;
      }

      goto LABEL_54;
    }

    goto LABEL_12;
  }

  v24 = v8[10];
  if (v13 < (v8[11] - v24) >> 4)
  {
    v25 = *(v24 + 16 * v13);
    v16 = *(result + 192);
    v26 = *(result + 200);
    if (v16 < v26)
    {
      *v16 = v13;
      *(v16 + 1) = *v25;
      goto LABEL_18;
    }

    v40 = *(result + 184);
    v41 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v40) >> 3);
    v42 = v41 + 1;
    if (v41 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v43 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v40) >> 3);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0x555555555555555)
      {
        v44 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v44);
      }

      v50 = 24 * v41;
      *v50 = v13;
      *(v50 + 8) = *v25;
      v27 = 24 * v41 + 24;
      v28 = *(v9 + 184);
      v29 = *(v9 + 192) - v28;
      v46 = (24 * v41 - v29);
      goto LABEL_48;
    }

LABEL_54:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  __break(1u);
  return result;
}

void sub_184314098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

os_unfair_lock_s *CGPDFSelectionCreateIntersectingRect(os_unfair_lock_s *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    return CGPDFSelectionCreateInRect(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t CGPDFSelectionCreateInRect(os_unfair_lock_s *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  SelectionForRect = PageLayout::CreateSelectionForRect(v9 + 2, v13);
  CFRelease(v10);
  return SelectionForRect;
}

void sub_18431414C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

os_unfair_lock_s *CGPDFSelectionCreateInPath(os_unfair_lock_s *result, CGPathRef path)
{
  if (result)
  {
    v2 = result;
    PathBoundingBox = CGPathGetPathBoundingBox(path);

    return CGPDFSelectionCreateInRect(v2, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height);
  }

  return result;
}

uint64_t CGPDFSelectionCreateForQuadPoints(uint64_t a1, double *a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = CGPDFPageCopyLayout(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  SelectionForQuadPoints = CGPDFLayoutCreateSelectionForQuadPoints(v5, a2, a3);
  CFRelease(v6);
  return SelectionForQuadPoints;
}

void sub_18431421C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void *CGPDFSelectionCreateForEntirePage(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CGPDFSelectionCreateWithPage(*(v1 + 2));
  v4 = v3;
  v5 = (v2[20] - v2[19]) >> 5;
  v7 = v3[24];
  v6 = v3[25];
  if (v7 >= v6)
  {
    v9 = v3[23];
    v10 = v7 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v14);
    }

    v15 = 24 * v11;
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = v5;
    v8 = 24 * v11 + 24;
    v16 = v15 - v10;
    memcpy((v15 - v10), v9, v10);
    v17 = v4[23];
    v4[23] = v16;
    v4[24] = v8;
    v4[25] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 1) = 0;
    v8 = (v7 + 24);
    *(v7 + 2) = v5;
  }

  v4[24] = v8;
  CFRelease(v2);
  return v4;
}

void sub_18431437C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateForStringRange(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  SelectionForStringRange = PageLayout::CreateSelectionForStringRange(v5 + 16, a2, a3, 0);
  CFRelease(v6);
  return SelectionForStringRange;
}

void sub_18431440C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionCreateFromSelection(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CGPDFSelectionGetTypeID::id)
  {
    CGPDFSelectionGetTypeID::id = _CFRuntimeRegisterClass();
  }

  cftype = pdf_create_cftype();
  if (cftype)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRetain(*(a1 + 16));
    }

    *(cftype + 16) = v3;
    v4 = *(a1 + 168);
    if (v4)
    {
      CFRetain(*(a1 + 168));
    }

    v5 = *(a1 + 176);
    *(cftype + 184) = 0u;
    *(cftype + 168) = v4;
    *(cftype + 176) = v5;
    *(cftype + 248) = 0u;
    *(cftype + 264) = 0u;
    *(cftype + 216) = 0u;
    *(cftype + 232) = 0u;
    *(cftype + 200) = 0u;
    *(cftype + 280) = 1;
    *(cftype + 284) = 0;
    *(cftype + 288) = 0;
    v6 = *(a1 + 184);
    v7 = *(a1 + 192);
    v9 = cftype + 184;
    while (v6 != v7)
    {
      std::back_insert_iterator<std::vector<std::pair<unsigned long,CFRange>>>::operator=[abi:fe200100](&v9, v6);
      v6 = (v6 + 24);
    }

    *(cftype + 288) = *(a1 + 288);
    *(cftype + 160) = 1;
  }

  return cftype;
}

void sub_184314514(_Unwind_Exception *a1)
{
  v4 = *(v1 + 256);
  if (v4)
  {
    *(v1 + 264) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 232);
  if (v5)
  {
    *(v1 + 240) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 208);
  if (v6)
  {
    *(v1 + 216) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 192) = v7;
    operator delete(v7);
  }

  applesauce::CF::ObjectRef<CGPDFPage *>::~ObjectRef((v1 + 168));
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionGetPage(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t CGPDFSelectionCreateWithPage(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CGPDFSelectionGetTypeID::id)
  {
    CGPDFSelectionGetTypeID::id = _CFRuntimeRegisterClass();
  }

  cftype = pdf_create_cftype();
  if (cftype)
  {
    CFRetain(a1);
    *(cftype + 16) = a1;
    CFRetain(a1);
    *(cftype + 168) = a1;
    *(cftype + 176) = 0u;
    *(cftype + 192) = 0u;
    *(cftype + 208) = 0u;
    *(cftype + 224) = 0u;
    *(cftype + 240) = 0u;
    *(cftype + 256) = 0u;
    *(cftype + 272) = 0;
    *(cftype + 280) = 1;
    *(cftype + 288) = 0;
    *(cftype + 284) = 0;
    *(cftype + 160) = 1;
  }

  return cftype;
}

uint64_t CGPDFSelectionCreateWithIndexSet(const void *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!CGPDFSelectionGetTypeID::id)
  {
    CGPDFSelectionGetTypeID::id = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(a1);
    *(Instance + 16) = a1;
    if (a2)
    {
      if (a2[40])
      {
        CPIndexSetNormalize(a2);
      }

      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    *(Instance + 24) = v5;
    *(Instance + 32) = 0;
    *(Instance + 40) = -1;
    *(Instance + 48) = -1;
    *(Instance + 56) = 0u;
    *(Instance + 72) = 0u;
    *(Instance + 88) = 0;
    *__p = 0u;
    v42 = 0u;
    v39 = 0u;
    *v40 = 0u;
    *v37 = 0u;
    *v38 = 0u;
    *cf = 0u;
    LOBYTE(v43) = 1;
    *(&v43 + 4) = 0;
    v6 = *(Instance + 168);
    *(Instance + 168) = 0;
    if (v6)
    {
      CFRelease(v6);
      v7 = cf[1];
    }

    else
    {
      v7 = 0;
    }

    *(Instance + 176) = v7;
    if ((Instance + 168) != cf)
    {
      v8 = *(Instance + 184);
      v10 = v37[0];
      v9 = v37[1];
      v11 = v37[1] - v37[0];
      v12 = *(Instance + 200);
      if ((v12 - v8) < (v37[1] - v37[0]))
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        if (v8)
        {
          *(Instance + 192) = v8;
          operator delete(v8);
          v12 = 0;
          *(Instance + 184) = 0;
          *(Instance + 192) = 0;
          *(Instance + 200) = 0;
        }

        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
          v15 = 2 * v14;
          if (2 * v14 <= v13)
          {
            v15 = v13;
          }

          if (v14 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v15;
          }

          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v16);
          }
        }

        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v17 = *(Instance + 192);
      if (v17 - v8 >= v11)
      {
        while (v10 != v9)
        {
          *v8 = *v10;
          *(v8 + 8) = *(v10 + 8);
          v10 += 24;
          v8 += 24;
        }

        *(Instance + 192) = v8;
      }

      else
      {
        v18 = v37[0] + v17 - v8;
        if (v17 != v8)
        {
          do
          {
            *v8 = *v10;
            *(v8 + 8) = *(v10 + 8);
            v10 += 24;
            v8 += 24;
          }

          while (v10 != v18);
          v17 = *(Instance + 192);
        }

        v19 = v17;
        if (v18 != v9)
        {
          v19 = v17;
          do
          {
            v20 = *v18;
            *(v19 + 2) = *(v18 + 2);
            *v19 = v20;
            v19 += 24;
            v18 += 24;
          }

          while (v18 != v9);
        }

        *(Instance + 192) = v19;
      }

      v21 = *(Instance + 208);
      v22 = v39;
      v23 = v39 - v38[1];
      v24 = *(Instance + 224);
      if (v24 - v21 < v39 - v38[1])
      {
        v25 = v23 >> 4;
        if (v21)
        {
          *(Instance + 216) = v21;
          operator delete(v21);
          v24 = 0;
          *(Instance + 208) = 0;
          *(Instance + 216) = 0;
          *(Instance + 224) = 0;
        }

        if (!(v25 >> 60))
        {
          v26 = v24 >> 3;
          if (v24 >> 3 <= v25)
          {
            v26 = v23 >> 4;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v27 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v26;
          }

          std::vector<CFRange>::__vallocate[abi:fe200100](Instance + 208, v27);
        }

        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v28 = *(Instance + 216);
      v29 = v28 - v21;
      if (v28 - v21 >= v23)
      {
        if (v39 != v38[1])
        {
          memmove(*(Instance + 208), v38[1], v39 - v38[1]);
        }

        v31 = &v21[v23];
      }

      else
      {
        v30 = v38[1] + v29;
        if (v28 != v21)
        {
          memmove(*(Instance + 208), v38[1], v29);
          v28 = *(Instance + 216);
        }

        if (v22 != v30)
        {
          memmove(v28, v30, v22 - v30);
        }

        v31 = &v28[v22 - v30];
      }

      *(Instance + 216) = v31;
      std::vector<std::pair<CGRect,CGAffineTransform>>::__assign_with_size[abi:fe200100]<std::pair<CGRect,CGAffineTransform>*,std::pair<CGRect,CGAffineTransform>*>(Instance + 232, v40[0], v40[1], 0xCCCCCCCCCCCCCCCDLL * ((v40[1] - v40[0]) >> 4));
      std::vector<std::pair<CGRect,CGAffineTransform>>::__assign_with_size[abi:fe200100]<std::pair<CGRect,CGAffineTransform>*,std::pair<CGRect,CGAffineTransform>*>(Instance + 256, __p[1], v42, 0xCCCCCCCCCCCCCCCDLL * ((v42 - __p[1]) >> 4));
    }

    v32 = v48;
    *(Instance + 344) = v47;
    *(Instance + 360) = v32;
    *(Instance + 376) = v49;
    *(Instance + 392) = v50;
    v33 = v44;
    *(Instance + 280) = v43;
    *(Instance + 296) = v33;
    v34 = v46;
    *(Instance + 312) = v45;
    *(Instance + 328) = v34;
    if (__p[1])
    {
      *&v42 = __p[1];
      operator delete(__p[1]);
    }

    if (v40[0])
    {
      v40[1] = v40[0];
      operator delete(v40[0]);
    }

    if (v38[1])
    {
      *&v39 = v38[1];
      operator delete(v38[1]);
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    pthread_mutex_init((Instance + 96), 0);
  }

  return Instance;
}

void Selection::~Selection(Selection *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

char *std::vector<std::pair<CGRect,CGAffineTransform>>::__assign_with_size[abi:fe200100]<std::pair<CGRect,CGAffineTransform>*,std::pair<CGRect,CGAffineTransform>*>(uint64_t a1, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 4) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x199999999999999)
      {
        v11 = 0x333333333333333;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x333333333333333)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<CGRect,CGAffineTransform>>>(v11);
      }
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  v12 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 4) >= a4)
  {
    while (v5 != a3)
    {
      v21 = v5[1];
      *result = *v5;
      *(result + 1) = v21;
      v22 = v5[2];
      v23 = v5[4];
      *(result + 3) = v5[3];
      *(result + 4) = v23;
      *(result + 2) = v22;
      v5 += 5;
      result += 80;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        v14 = v5[1];
        *result = *v5;
        *(result + 1) = v14;
        v15 = v5[2];
        v16 = v5[4];
        *(result + 3) = v5[3];
        *(result + 4) = v16;
        *(result + 2) = v15;
        v5 += 5;
        result += 80;
      }

      while (v5 != v13);
      v12 = *(a1 + 8);
    }

    v17 = v12;
    if (v13 != a3)
    {
      v17 = v12;
      do
      {
        *v17 = *v13;
        v18 = v13[1];
        v19 = v13[2];
        v20 = v13[4];
        *(v17 + 3) = v13[3];
        *(v17 + 4) = v20;
        *(v17 + 1) = v18;
        *(v17 + 2) = v19;
        v13 += 5;
        v17 += 80;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v17;
  }

  return result;
}

BOOL CGPDFSelectionIsOfType(uint64_t a1, int a2)
{
  if (a1 && (v4 = CGPDFPageCopyLayout(*(a1 + 16))) != 0)
  {
    v5 = v4;
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_12;
    }

    if (*(v6 + 40))
    {
      CPIndexSetNormalize(*(a1 + 24));
    }

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; v8 = i >= v7)
      {
        Range = CPIndexSetGetRange(*(a1 + 24), i);
        if ((CGPDFLayoutRangeIsOfType(v5, Range, v11, a2) & 1) == 0)
        {
          break;
        }

        ++i;
      }
    }

    else
    {
LABEL_12:
      v8 = 1;
    }

    CFRelease(v5);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_184314DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

double CGPDFSelectionGetBounds(uint64_t a1)
{
  width = 0.0;
  if (!a1)
  {
    return INFINITY;
  }

  Selection::cacheRectsAndTransforms((a1 + 168));
  v4 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v4 == v3)
  {
    return INFINITY;
  }

  x = INFINITY;
  y = INFINITY;
  height = 0.0;
  do
  {
    v11 = *v4;
    v8 = *(v4 + 48);
    *&v10.a = *(v4 + 32);
    *&v10.c = v8;
    *&v10.tx = *(v4 + 64);
    v14 = CGRectApplyAffineTransform(v11, &v10);
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v13 = CGRectUnion(v12, v14);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    v4 += 80;
  }

  while (v4 != v3);
  return x;
}

uint64_t CGPDFSelectionGetLength(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (!v1)
    {
      return 0;
    }

    if (*(v1 + 40))
    {
      CPIndexSetNormalize(*(result + 24));
    }

    v2 = *(v1 + 16);
    if (v2 >= 1)
    {
      result = 0;
      v3 = (*(v1 + 32) + 8);
      do
      {
        v4 = *v3;
        v3 += 2;
        result += v4;
        --v2;
      }

      while (v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFSelectionSetClientProperty(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

uint64_t CGPDFSelectionGetClientProperty(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

void CGPDFSelectionGetTextMatrixAtIndex(uint64_t a1@<X0>, uint64_t a2@<X1>, CGAffineTransform *a3@<X8>)
{
  *a3 = CGAffineTransformIdentity;
  if (a1)
  {
    LayoutIndex = CGPDFSelectionGetLayoutIndex(a1, a2);
    v6 = CGPDFPageCopyLayout(*(a1 + 16));
    CGPDFLayoutGetTextMatrix(v6, LayoutIndex, a3);
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

uint64_t CGPDFSelectionGetLayoutIndex(CGPDFSelection *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 40))
  {
    CPIndexSetNormalize(*(a1 + 3));
  }

  v5 = *(v2 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    Range = CPIndexSetGetRange(*(a1 + 3), v6);
    if (a2 <= v8)
    {
      break;
    }

    ++v6;
    a2 -= v8;
    if (v5 == v6)
    {
      return 0;
    }
  }

  return Range + a2;
}

CGPDFSelection *CGPDFSelectionGetCGFontAtIndex(CGPDFSelection *a1, uint64_t a2)
{
  CGFont = a1;
  if (a1)
  {
    LayoutIndex = CGPDFSelectionGetLayoutIndex(a1, a2);
    v4 = CGPDFPageCopyLayout(*(CGFont + 2));
    CGFont = CGPDFLayoutGetCGFont(v4, LayoutIndex);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return CGFont;
}

CGPDFSelection *CGPDFSelectionGetGlyphAtIndex(CGPDFSelection *a1, uint64_t a2)
{
  Glyph = a1;
  if (a1)
  {
    LayoutIndex = CGPDFSelectionGetLayoutIndex(a1, a2);
    v4 = CGPDFPageCopyLayout(*(Glyph + 2));
    Glyph = CGPDFLayoutGetGlyph(v4, LayoutIndex);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return Glyph;
}

uint64_t CGPDFSelectionSetIsTextSelection(uint64_t result)
{
  if (result)
  {
    *(result + 288) = 3;
  }

  return result;
}

void CGPDFSelectionBufferUnicodeAndCharacterBounds(uint64_t a1, _WORD *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = CGPDFPageCopyLayout(*(a1 + 16));
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 24);
      if (v8)
      {
        if (*(v8 + 40))
        {
          CPIndexSetNormalize(*(a1 + 24));
        }

        v9 = *(v8 + 16);
        if (v9 >= 1)
        {
          v10 = 0;
          v11 = a2;
          v12 = a3;
          do
          {
            Range = CPIndexSetGetRange(*(a1 + 24), v10);
            v15 = v14;
            CGPDFLayoutBufferUnicodeAndBoundsForRange(v7, v11, v12, Range, v14);
            if (a2)
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            v11 += v16;
            if (a3)
            {
              v17 = v15;
            }

            else
            {
              v17 = 0;
            }

            v12 += 32 * v17;
            ++v10;
          }

          while (v9 != v10);
        }
      }

      CFRelease(v7);
    }
  }
}

os_unfair_lock_s *CGPDFSelectionGetNumberOfRectsAndTransforms(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    Selection::cacheRectsAndTransforms(result + 42);
    return (0xCCCCCCCCCCCCCCCDLL * ((*&v1[60]._os_unfair_lock_opaque - *&v1[58]._os_unfair_lock_opaque) >> 4));
  }

  return result;
}

uint64_t CGPDFSelectionGetType(uint64_t result)
{
  if (result)
  {
    if (*(result + 288) == 1)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_unfair_lock_s *CGPDFSelectionGetNumberOfTableRectsAndTransforms(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    Selection::cacheRectsAndTransforms(result + 42);
    return (0xCCCCCCCCCCCCCCCDLL * ((*&v1[66]._os_unfair_lock_opaque - *&v1[64]._os_unfair_lock_opaque) >> 4));
  }

  return result;
}

void CGPDFSelectionGetTableRectAndTransform(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a1)
  {
    Selection::cacheRectsAndTransforms((a1 + 168));
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 240) - *(a1 + 232)) >> 4) <= a2)
    {
      *a3 = CGRectNull;
      v10 = &CGAffineTransformIdentity;
    }

    else
    {
      v8 = *(a1 + 256);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 264) - v8) >> 4) <= a2)
      {
        __break(1u);
        return;
      }

      v9 = (v8 + 80 * a2);
      v11 = *v9;
      v12 = v9[1];
      v10 = (v9 + 2);
      *a3 = v11;
      *(a3 + 16) = v12;
    }

    v13 = *&v10->a;
    v14 = *&v10->tx;
    a4[1] = *&v10->c;
    a4[2] = v14;
    *a4 = v13;
  }
}

CGFloat CGPDFSelectionGetTableLolipopSelectionRect(uint64_t a1)
{
  v1 = &CGRectNull;
  if (a1 && *(a1 + 288) == 1)
  {
    v1 = (a1 + 336);
  }

  return v1->origin.x;
}

CGFloat CGPDFSelectionGetTableSelectionRect(uint64_t a1)
{
  v1 = &CGRectNull;
  if (a1 && *(a1 + 288) == 1)
  {
    v1 = (a1 + 336);
  }

  return v1->origin.x;
}

uint64_t CGPDFSelectionGetRectAndTransform(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a1)
  {
    Selection::cacheRectsAndTransforms((a1 + 168));
    v8 = *(a1 + 232);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 240) - v8) >> 4) <= a2)
    {
      *a3 = CGRectNull;
      v10 = &CGAffineTransformIdentity;
    }

    else
    {
      v9 = (v8 + 80 * a2);
      v11 = *v9;
      v12 = v9[1];
      v10 = (v9 + 2);
      *a3 = v11;
      *(a3 + 16) = v12;
    }

    v13 = *&v10->a;
    v14 = *&v10->tx;
    a4[1] = *&v10->c;
    a4[2] = v14;
    *a4 = v13;
  }

  return 0;
}

void CGPDFSelectionEnumerateRectsAndTransforms(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    Selection::cacheRectsAndTransforms((a1 + 168));
    v4 = *(a1 + 240) - *(a1 + 232);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
      do
      {
        Selection::cacheRectsAndTransforms((a1 + 168));
        v12 = *(a1 + 232);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 240) - v12) >> 4) <= v6)
        {
          v11.n128_u64[0] = 0;
          v9.n128_u64[0] = 0x7FF0000000000000;
          v10.n128_u64[0] = 0;
          v8.n128_u64[0] = 0x7FF0000000000000;
          v14 = &CGAffineTransformIdentity;
        }

        else
        {
          v13 = (v12 + v5);
          v8.n128_u64[0] = *v13;
          v9.n128_u64[0] = v13[1];
          v10.n128_u64[0] = v13[2];
          v11.n128_u64[0] = v13[3];
          v14 = (v13 + 4);
        }

        v15 = *&v14->c;
        v17 = *&v14->a;
        v18 = v15;
        v19 = *&v14->tx;
        v16[1] = v15;
        v16[2] = v19;
        v16[0] = v17;
        (*(v3 + 2))(v3, v16, 0, v8, v9, v10, v11);
        ++v6;
        v5 += 80;
      }

      while (v7 != v6);
    }
  }
}

uint64_t CGPDFSelectionGetRangeForRectIndex(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = *(result + 184);
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 192) - v2) >> 3) <= a2)
    {
      return -1;
    }

    else
    {
      return *(v2 + 24 * a2 + 8);
    }
  }

  return result;
}

id CGPDFSelectionCreateAttributedString(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 184) == *(a1 + 192))
  {
    return 0;
  }

  Selection::cacheStringRanges((a1 + 168));
  v2 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 168), 1);
  v3 = v2;
  v4 = *(a1 + 288);
  if (v4)
  {
    if (v4 == 1)
    {
      AttributedStringForTableSelection = PageLayout::CreateAttributedStringForTableSelection(v2 + 16, (a1 + 296));
    }

    else
    {
      v13 = (*(a1 + 216) - *(a1 + 208)) >> 4;
      location = *(a1 + 208);
      v21 = v13;
      AttributedStringForTableSelection = PageLayout::CreateAttributedStringForStringRanges(v2 + 16, &location);
    }
  }

  else
  {
    v5 = *(a1 + 208);
    v15 = *(a1 + 216);
    AttributedStringForTableSelection = objc_alloc_init(MEMORY[0x1E696AD40]);
    range2 = [*(v3 + 9) length];
    if (v15 == v5)
    {
LABEL_25:
      CFRelease(v3);
      return AttributedStringForTableSelection;
    }

    do
    {
      v16 = v5;
      v25.location = 0;
      v25.length = range2;
      v6 = NSIntersectionRange(*v5, v25);
      if (v6.length)
      {
        v7 = *(v3 + 46);
        for (i = *(v3 + 47); v7 != i; v7 += 2)
        {
          v8 = *v7;
          if ((*(*v7 + 72) & 1) == 0)
          {
            PageLayoutTable::computeTableRanges(*v7);
          }

          v9 = *(v8 + 5);
          if (v6.location <= v9 && (v6.location + v6.length) >= v9 + *(v8 + 6))
          {
            v11 = *v7;
            if ((*(*v7 + 72) & 1) == 0)
            {
              PageLayoutTable::computeTableRanges(*v7);
            }

            v12 = *(v11 + 5);
            location = v6.location;
            v21 = v12 - v6.location;
            std::vector<CFRange>::__init_with_size[abi:fe200100]<CFRange const*,CFRange const*>();
          }
        }

        v23 = v6;
        v21 = 0;
        v22 = 0;
        location = 0;
        std::vector<CFRange>::__init_with_size[abi:fe200100]<CFRange const*,CFRange const*>();
      }

      ++v5;
    }

    while (&v16[1] != v15);
  }

  if (v3)
  {
    goto LABEL_25;
  }

  return AttributedStringForTableSelection;
}

void sub_1843159D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, ...)
{
  va_start(va, a10);

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionGetFirstIndex(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *(a1 + 184);
  if (*(a1 + 192) == v1)
  {
    return -1;
  }

  else
  {
    return *(v1 + 8);
  }
}

uint64_t CGPDFSelectionGetLastIndex(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *(a1 + 192);
  if (v1 == *(a1 + 184))
  {
    return -1;
  }

  else
  {
    return *(v1 - 8) + *(v1 - 16);
  }
}

uint64_t CGPDFSelectionGetStartIndex(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = *(a1 + 184);
  if (*(a1 + 192) == v1)
  {
    return -1;
  }

  else
  {
    return *(v1 + 8);
  }
}

uint64_t CGPDFSelectionGetEndIndex(uint64_t a1)
{
  if (a1)
  {
    return CGPDFSelectionGetLastIndex(a1);
  }

  else
  {
    return -1;
  }
}

void CGPDFSelectionGetCursorXPosition(CGPDFSelection *a1, int a2, BOOL *a3)
{
  v6 = 0.0;
  if (a1)
  {
    if (a2)
    {
      v10 = *(a1 + 23);
      if (*(a1 + 24) == v10)
      {
        return;
      }

      LastIndex = *(v10 + 8);
    }

    else
    {
      LastIndex = CGPDFSelectionGetLastIndex(a1);
    }

    if (LastIndex != -1)
    {
      *a3 = 0;
      v12 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 2), 1);
      if (v12)
      {
        if (LastIndex < (v12[20] - v12[19]) >> 5)
        {
          v13 = v12[22];
          if (LastIndex >= (v12[23] - v13) >> 5)
          {
            __break(1u);
            return;
          }

          v14 = (v13 + 32 * LastIndex);
          v6 = *v14;
          v5 = v14[1];
          v3 = v14[2];
          v4 = v14[3];
        }

        CFRelease(v12);
      }

      v15 = fmin(v3, v4) < 0.0;
      if (a2)
      {
        if (v15)
        {
          v16.origin.x = v6;
          v16.origin.y = v5;
          v16.size.width = v3;
          v16.size.height = v4;
          CGRectStandardize(v16);
        }
      }

      else if (v15)
      {
        v17.origin.x = v6;
        v17.origin.y = v5;
        v17.size.width = v3;
        v17.size.height = v4;
        CGRectStandardize(v17);
      }
    }
  }
}

uint64_t CGPDFSelectionGetNumberOfStringRanges(uint64_t result)
{
  if (result)
  {
    v1 = result;
    Selection::cacheStringRanges((result + 168));
    return (*(v1 + 216) - *(v1 + 208)) >> 4;
  }

  return result;
}

uint64_t CGPDFSelectionGetStringRange(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 184) == *(a1 + 192))
  {
    return -1;
  }

  Selection::cacheStringRanges((a1 + 168));
  v4 = *(a1 + 208);
  if (a2 >= (*(a1 + 216) - v4) >> 4)
  {
    return -1;
  }

  return *(v4 + 16 * a2);
}

void CGPDFSelectionAddSelection(uint64_t a1, uint64_t a2)
{
  if (a1 && a1 != a2 && *(a2 + 184) != *(a2 + 192))
  {
    __p = 0;
    v48 = 0;
    v3 = *(a1 + 192);
    v4 = *(a1 + 184);
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    v6 = *(a2 + 184);
    v5 = *(a2 + 192);
    p_p = &__p;
    v49 = 0;
    v50 = &__p;
    v46 = v4;
    if (v4 != v3)
    {
      v8 = v4;
      while (1)
      {
        if (v6 == v5)
        {
          v51 = v50;
          while (v8 != v3)
          {
            std::back_insert_iterator<std::vector<std::pair<unsigned long,CFRange>>>::operator=[abi:fe200100](&v51, v8);
            v8 = (v8 + 24);
          }

          goto LABEL_22;
        }

        if (*v6 == *v8)
        {
          v9 = *(v6 + 8);
          v10 = *(v8 + 1);
          v11 = v9 < v10;
          if (v9 == v10)
          {
            v11 = *(v6 + 16) < *(v8 + 2);
          }

          if (v11)
          {
LABEL_13:
            std::back_insert_iterator<std::vector<std::pair<unsigned long,CFRange>>>::operator=[abi:fe200100](&v50, v6);
            v6 += 24;
            goto LABEL_14;
          }
        }

        else if (*v6 < *v8)
        {
          goto LABEL_13;
        }

        std::back_insert_iterator<std::vector<std::pair<unsigned long,CFRange>>>::operator=[abi:fe200100](&v50, v8);
        v8 = (v8 + 24);
LABEL_14:
        if (v8 == v3)
        {
          p_p = v50;
          break;
        }
      }
    }

    v51 = p_p;
    while (v6 != v5)
    {
      std::back_insert_iterator<std::vector<std::pair<unsigned long,CFRange>>>::operator=[abi:fe200100](&v51, v6);
      v6 += 24;
    }

LABEL_22:
    if (__p == v48)
    {
      __break(1u);
    }

    else
    {
      v13 = *__p;
      v12 = *(__p + 1);
      v14 = *(__p + 2);
      os_unfair_lock_lock((a1 + 284));
      v15 = v48;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3);
      if (v16 >= 1)
      {
        v16 = 1;
      }

      v17 = (__p + 24 * v16);
      if (v48 != v17)
      {
        do
        {
          v18 = v14 + v12;
          v19 = v17[1];
          if (v14 + v12 >= v19)
          {
            v23 = v17[2] + v19;
            if (v18 <= v23)
            {
              v18 = v23;
            }

            v14 = v18 - v12;
          }

          else
          {
            v21 = *(a1 + 192);
            v20 = *(a1 + 200);
            if (v21 >= v20)
            {
              v24 = *(a1 + 184);
              v25 = v21 - v24;
              v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
              v27 = v26 + 1;
              if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
              }

              v28 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v24) >> 3);
              if (2 * v28 > v27)
              {
                v27 = 2 * v28;
              }

              if (v28 >= 0x555555555555555)
              {
                v29 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v29 = v27;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v29);
              }

              v30 = 24 * v26;
              *v30 = v13;
              *(v30 + 8) = v12;
              *(v30 + 16) = v14;
              v22 = 24 * v26 + 24;
              v31 = (24 * v26 - v25);
              memcpy(v31, v24, v25);
              v32 = *(a1 + 184);
              *(a1 + 184) = v31;
              *(a1 + 192) = v22;
              *(a1 + 200) = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v21 = v13;
              *(v21 + 1) = v12;
              v22 = (v21 + 24);
              *(v21 + 2) = v14;
            }

            *(a1 + 192) = v22;
            v13 = *v17;
            v12 = v17[1];
            v14 = v17[2];
          }

          v17 += 3;
        }

        while (v17 != v15);
      }

      v34 = *(a1 + 192);
      v33 = *(a1 + 200);
      if (v34 >= v33)
      {
        v37 = *(a1 + 184);
        v38 = v34 - v37;
        v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v37) >> 3);
        v40 = v39 + 1;
        v36 = v46;
        if (v39 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v41 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v37) >> 3);
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        if (v41 >= 0x555555555555555)
        {
          v42 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v42);
        }

        v43 = 24 * v39;
        *v43 = v13;
        *(v43 + 8) = v12;
        *(v43 + 16) = v14;
        v35 = 24 * v39 + 24;
        v44 = v43 - v38;
        memcpy((v43 - v38), v37, v38);
        v45 = *(a1 + 184);
        *(a1 + 184) = v44;
        *(a1 + 192) = v35;
        *(a1 + 200) = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v34 = v13;
        *(v34 + 1) = v12;
        v35 = (v34 + 24);
        *(v34 + 2) = v14;
        v36 = v46;
      }

      *(a1 + 192) = v35;
      *(a1 + 280) = 1;
      *(a1 + 240) = *(a1 + 232);
      Selection::Normalize((a1 + 168));
      os_unfair_lock_unlock((a1 + 284));
      if (v36)
      {
        operator delete(v36);
      }

      if (__p)
      {
        v48 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_184316094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, void *a10, uint64_t a11)
{
  os_unfair_lock_unlock(v11 + 71);
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t CGPDFSelectionSubtractSelection(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 24);
  if (!v4)
  {
    goto LABEL_60;
  }

  if (*(v4 + 40))
  {
    CPIndexSetNormalize(*(result + 24));
  }

  if (*(v2 + 40))
  {
    CPIndexSetNormalize(v2);
  }

  if (*(v2 + 16) < 1)
  {
    goto LABEL_60;
  }

  v5 = 0;
  do
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = (*(v2 + 32) + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    if (*(v4 + 40))
    {
      CPIndexSetNormalize(v4);
      v6 = *(v4 + 16);
    }

    v10 = *(v4 + 32);
    v11 = *v10;
    v12 = v8 + v9;
    v13 = v12 <= *v10 || v6 < 1;
    if (v13)
    {
      goto LABEL_58;
    }

    v14 = 0;
    v15 = v6;
    v16 = 1;
    v17 = *(v4 + 32);
    while (2)
    {
      v18 = v17 + 1;
      if (v15 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v15;
      }

      v20 = &v10[2 * v16];
      v21 = v19 + 1;
      while (1)
      {
        v22 = *v18 + v11;
        if (v22 <= v9)
        {
          if (v16 >= v6)
          {
            goto LABEL_49;
          }

          v25 = &v10[2 * v16];
          goto LABEL_39;
        }

        if (v12 <= v11)
        {
          goto LABEL_49;
        }

        if (v9 <= v11 && v22 <= v12)
        {
          break;
        }

        v23 = v9 <= v11;
        if (v22 > v12 && v9 <= v11)
        {
          *(v20 - 2) = v12;
          *(v20 - 1) = v22 - v12;
          goto LABEL_49;
        }

        if (v22 > v12)
        {
          v23 = 1;
        }

        if (v23)
        {
          v13 = v9 <= v11;
          v26 = v9 - v11;
          if (!v13)
          {
            v27 = v22 - v12;
            if (v22 > v12)
            {
              if (v15 == *(v4 + 24))
              {
                v10 = malloc_type_realloc(v10, 16 * v15 + 16, 0x1000040451B5BE8uLL);
                v15 = *(v4 + 16);
                ++*(v4 + 24);
                *(v4 + 32) = v10;
              }

              *(v4 + 16) = v15 + 1;
              v28 = &v10[2 * v16];
              *(v28 - 2) = v11;
              *(v28 - 1) = v26;
              v29 = &v10[2 * *(v4 + 16)];
              *(v29 - 2) = v12;
              *(v29 - 1) = v27;
              *(v4 + 40) = 1;
            }
          }

LABEL_49:
          v15 = *(v4 + 16);
          v6 = v15;
          if ((v14 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

        *(v20 - 1) = v9 - v11;
        v25 = v20;
        if (v16 >= v6)
        {
          goto LABEL_49;
        }

LABEL_39:
        ++v16;
        v11 = *v25;
        v18 = v20 + 1;
        v20 += 2;
        if (v21 == v16)
        {
          goto LABEL_49;
        }
      }

      *&v10[2 * v16 - 2] = CPIndexSetNullRange;
      v15 = *(v4 + 16);
      if (v16 < v6)
      {
        v10 = *(v4 + 32);
        v17 = &v10[2 * v16];
        v11 = *v17;
        v14 = 1;
        v13 = v16++ < v15;
        if (v13)
        {
          continue;
        }
      }

      break;
    }

LABEL_50:
    v30 = malloc_type_malloc(16 * v15, 0x1000040451B5BE8uLL);
    v31 = *(v4 + 16);
    v32 = *(v4 + 32);
    if (v31 < 1)
    {
      v6 = 0;
    }

    else
    {
      v33 = 0;
      v6 = 0;
      v34 = v32 + 1;
      do
      {
        v35 = *(v34 - 1);
        if ((v35 & 0x8000000000000000) == 0)
        {
          v36 = *v34;
          v37 = &v30[16 * v6++];
          *v37 = v35;
          *(v37 + 1) = v36;
          v31 = *(v4 + 16);
        }

        ++v33;
        v34 += 2;
      }

      while (v33 < v31);
    }

    free(v32);
    *(v4 + 32) = v30;
    *(v4 + 16) = v6;
LABEL_58:
    if (!v6)
    {
      break;
    }

    CPIndexSetNormalize(v4);
    ++v5;
  }

  while (v5 < *(v2 + 16));
LABEL_60:
  pthread_mutex_lock((v3 + 96));
  *(v3 + 40) = -1;
  v38 = *(v3 + 32);
  if (v38)
  {
    CFRelease(v38);
  }

  *(v3 + 32) = 0;
  v39 = *(v3 + 56);
  if (v39)
  {
    free(v39);
    *(v3 + 56) = 0;
  }

  v40 = *(v3 + 64);
  if (v40)
  {
    free(v40);
    *(v3 + 64) = 0;
  }

  v41 = *(v3 + 72);
  if (v41)
  {
    free(v41);
    *(v3 + 72) = 0;
  }

  v42 = *(v3 + 80);
  if (v42)
  {
    free(v42);
    *(v3 + 80) = 0;
  }

  *(v3 + 48) = -1;

  return pthread_mutex_unlock((v3 + 96));
}

void CGPDFSelectionExtendAtStart(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 184) != *(a1 + 192))
  {
    os_unfair_lock_lock((a1 + 284));
    *(a1 + 280) = 1;
    *(a1 + 240) = *(a1 + 232);
    v4 = *(a1 + 192);
    v5 = *(a1 + 184);
    if (v5 == v4)
    {
      __break(1u);
    }

    else
    {
      if (a2 < 1)
      {
        v9 = *(v5 + 16);
        if (v9 <= -a2)
        {
          *(v5 + 8) += v9;
          *(v5 + 16) = 0;
          v10 = v5 + 24;
          if (v5 + 24 != v4)
          {
            do
            {
              *(v10 - 24) = *v10;
              *(v10 - 16) = *(v10 + 8);
              v10 += 24;
            }

            while (v10 != v4);
            v5 = v10 - 24;
          }

          *(a1 + 192) = v5;
        }

        else
        {
          *(v5 + 8) -= a2;
          *(v5 + 16) = v9 + a2;
        }
      }

      else
      {
        v6 = *(v5 + 8);
        if (v6 >= a2)
        {
          v7 = a2;
        }

        else
        {
          v7 = *(v5 + 8);
        }

        v8 = *(v5 + 16) + v7;
        *(v5 + 8) = v6 - v7;
        *(v5 + 16) = v8;
      }

      Selection::Normalize((a1 + 168));
      os_unfair_lock_unlock((a1 + 284));
    }
  }
}

CFTypeRef CGPDFSelectionExtendAtEnd(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (!a2 || *(a1 + 184) == *(a1 + 192))
  {
    return v3;
  }

  os_unfair_lock_lock((a1 + 284));
  *(a1 + 280) = 1;
  *(a1 + 240) = *(a1 + 232);
  result = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 168), 1);
  v6 = *(a1 + 192);
  if (*(a1 + 184) != v6)
  {
    v7 = result;
    if (a2 < 1)
    {
      v10 = *(v6 - 8);
      if (v10 <= -a2)
      {
        v11 = 0;
        *(a1 + 192) = v6 - 24;
      }

      else
      {
        v11 = v10 + a2;
        v10 = -a2;
      }

      *(v6 - 8) = v11;
      v3 = -v10;
    }

    else
    {
      v8 = *(v6 - 8);
      v9 = v8 + *(v6 - 16);
      if (((*(result + 20) - *(result + 19)) >> 5) - v9 >= a2)
      {
        v3 = a2;
      }

      else
      {
        v3 = ((*(result + 20) - *(result + 19)) >> 5) - v9;
      }

      *(v6 - 8) = v3 + v8;
    }

    Selection::Normalize((a1 + 168));
    if (v7)
    {
      CFRelease(v7);
    }

    os_unfair_lock_unlock((a1 + 284));
    return v3;
  }

  __break(1u);
  return result;
}

void sub_184316684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  os_unfair_lock_unlock(v2 + 71);
  _Unwind_Resume(a1);
}

void *CGPDFSelectionCreateSelectionsByLine(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(v1 + 192) - *(v1 + 184)) >> 3)];
  v3 = v2;
  if (*(v1 + 184) == *(v1 + 192))
  {
    v56 = v2;
  }

  else
  {
    v4 = CGPDFPageCopyPageLayoutWithCTLD(*(v1 + 168), 1);
    cf = v4;
    v5 = CGPDFSelectionCreateWithPage(*(v1 + 168));
    v6 = *(v1 + 184);
    if (v6 == *(v1 + 192))
    {
LABEL_89:
      __break(1u);
    }

    v7 = v5;
    v77 = v3;
    v78 = v1;
    v8 = 0;
    v9 = *v6;
    v10 = -1;
    v11 = -1;
    do
    {
      v12 = *v6;
      v13 = v6[1];
      v75 = v6[2];
      if (v11 == -1)
      {
        v8 = v6[2];
      }

      else if (v10 == v12)
      {
        if (v9 != v10)
        {
          [v77 addObject:v7];

          v7 = CGPDFSelectionCreateWithPage(*(v1 + 168));
          v9 = v10;
        }

        v15 = v7[24];
        v14 = v7[25];
        if (v15 >= v14)
        {
          v20 = v7[23];
          v21 = v15 - v20;
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v20) >> 3);
          v23 = v22 + 1;
          if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_88;
          }

          v24 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v20) >> 3);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0x555555555555555)
          {
            v25 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v25);
          }

          v32 = 24 * v22;
          *v32 = v10;
          *(v32 + 8) = v11;
          *(v32 + 16) = v8;
          v16 = 24 * v22 + 24;
          v33 = v32 - v21;
          memcpy((v32 - v21), v20, v21);
          v34 = v7[23];
          v7[23] = v33;
          v7[24] = v16;
          v7[25] = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v15 = v10;
          v15[1] = v11;
          v16 = (v15 + 3);
          v15[2] = v8;
        }

        v8 = v75;
        v7[24] = v16;
        v12 = v10;
      }

      else
      {
        if (v9 != v10)
        {
          [v77 addObject:v7];

          v7 = CGPDFSelectionCreateWithPage(*(v1 + 168));
          v9 = v10;
        }

        v18 = v7[24];
        v17 = v7[25];
        if (v18 >= v17)
        {
          v26 = v7[23];
          v27 = v18 - v26;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v26) >> 3);
          v29 = v28 + 1;
          if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_88;
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v26) >> 3);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v31);
          }

          v35 = 24 * v28;
          *v35 = v10;
          *(v35 + 8) = v11;
          *(v35 + 16) = v8;
          v19 = 24 * v28 + 24;
          v36 = v35 - v27;
          memcpy((v35 - v27), v26, v27);
          v37 = v7[23];
          v7[23] = v36;
          v7[24] = v19;
          v7[25] = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v18 = v10;
          v18[1] = v11;
          v19 = (v18 + 3);
          v18[2] = v8;
        }

        v8 = v75;
        v7[24] = v19;
      }

      v38 = v4[10];
      if (v12 >= (v4[11] - v38) >> 4)
      {
        goto LABEL_89;
      }

      v76 = v6;
      v39 = v8 + v13;
      v40 = *(*(v38 + 16 * v12) + 8) + **(v38 + 16 * v12);
      if (v8 + v13 <= v40)
      {
        v11 = v13;
      }

      else
      {
        v41 = 16 * v12 + 16;
        do
        {
          v11 = v40;
          if (v12 != v9)
          {
            [v77 addObject:v7];

            v7 = CGPDFSelectionCreateWithPage(*(v78 + 168));
            v9 = v12;
          }

          v42 = v11 - v13;
          v44 = v7[24];
          v43 = v7[25];
          if (v44 >= v43)
          {
            v46 = v7[23];
            v47 = v44 - v46;
            v48 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v46) >> 3);
            v49 = v48 + 1;
            if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_88;
            }

            v50 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v46) >> 3);
            if (2 * v50 > v49)
            {
              v49 = 2 * v50;
            }

            if (v50 >= 0x555555555555555)
            {
              v51 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v51);
            }

            v52 = 24 * v48;
            *v52 = v12;
            *(v52 + 8) = v13;
            *(v52 + 16) = v42;
            v45 = 24 * v48 + 24;
            v53 = (24 * v48 - v47);
            memcpy(v53, v46, v47);
            v54 = v7[23];
            v7[23] = v53;
            v7[24] = v45;
            v7[25] = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *v44 = v12;
            v44[1] = v13;
            v45 = (v44 + 3);
            v44[2] = v42;
          }

          v7[24] = v45;
          ++v12;
          v55 = v4[10];
          if (v12 >= (v4[11] - v55) >> 4)
          {
            goto LABEL_89;
          }

          v40 = *(*(v55 + v41) + 8) + **(v55 + v41);
          v41 += 16;
          v13 = v11;
        }

        while (v39 > v40);
        v8 = v39 - v11;
      }

      v10 = v12;
      v6 = v76 + 3;
      v1 = v78;
    }

    while (v76 + 3 != *(v78 + 192));
    if (v9 != v12)
    {
      [v77 addObject:v7];

      v7 = CGPDFSelectionCreateWithPage(*(v78 + 168));
    }

    v58 = v7[24];
    v57 = v7[25];
    if (v58 >= v57)
    {
      v60 = v7[23];
      v61 = v58 - v60;
      v62 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v60) >> 3);
      v63 = v62 + 1;
      if (v62 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
LABEL_88:
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v64 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v60) >> 3);
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      if (v64 >= 0x555555555555555)
      {
        v65 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,CFRange>>>(v65);
      }

      v66 = 24 * v62;
      *v66 = v10;
      *(v66 + 8) = v11;
      *(v66 + 16) = v8;
      v59 = 24 * v62 + 24;
      v67 = v66 - v61;
      memcpy((v66 - v61), v60, v61);
      v68 = v7[23];
      v7[23] = v67;
      v7[24] = v59;
      v7[25] = 0;
      if (v68)
      {
        operator delete(v68);
      }
    }

    else
    {
      *v58 = v12;
      v58[1] = v11;
      v59 = (v58 + 3);
      v58[2] = v8;
    }

    v3 = v77;
    v7[24] = v59;
    [v77 addObject:v7];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v69 = v77;
    v70 = [v69 countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v70)
    {
      v71 = *v80;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v80 != v71)
          {
            objc_enumerationMutation(v69);
          }

          Selection::Normalize((*(*(&v79 + 1) + 8 * i) + 168));
        }

        v70 = [v69 countByEnumeratingWithState:&v79 objects:v84 count:16];
      }

      while (v70);
    }

    v73 = v69;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v3;
}