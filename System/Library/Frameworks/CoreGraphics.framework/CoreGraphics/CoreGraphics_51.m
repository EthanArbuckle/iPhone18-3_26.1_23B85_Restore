void cmyk32_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
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
  v8.n128_u64[0] = *(a2 + 184);
  v8.n128_f32[0] = (v8.n128_f32[0] * 255.0) + 0.5;
  v66[0] = a3;
  v66[1] = a4;
  LOBYTE(v67) = v8.n128_f32[0];
  v9 = *(a1 + 28) >> 2;
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
      v59 = *(a1 + 40) + 4 * v9 * v56 + 4 * v58;
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

unint64_t cmyk32_image_mark_rgb32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v119 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  v123 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v111 = *(a2 + 5) - a5;
  }

  else
  {
    v111 = 0;
  }

  v10 = a2[1];
  v110 = *a2;
  v109 = *(a2 + 3) - a5;
  v122 = v9 != 0;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v106 = *(a2 + 11);
  v14 = *(a2 + 7) + v106 * a4;
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v107 = v13;
  v108 = v12;
  if (*(result + 176))
  {
    v103 = ~(-1 << v13);
    v104 = *(a2 + 15);
    v105 = *(a2 + 13);
    v102 = v13 - 4;
    v101 = -v12;
    v17 = (v16 - 4);
    v18 = a2[1];
    v120 = 32 - v10;
    v99 = v11 + 16 * a3 + 8;
    v100 = a5;
    while (1)
    {
      if (((v104 - v14) | (v14 - v105)) < 0)
      {
        v23 = 0;
        v117 = 0;
      }

      else
      {
        v19 = ((v14 & v103) >> v102) & 0xF;
        v20 = weights_21890[v19];
        v21 = (v19 - 7) >= 9;
        v22 = v101;
        if (!v21)
        {
          v22 = v12;
        }

        v117 = v22;
        v23 = v20 & 0xF;
      }

      v24 = *(v119 + 32) + (v14 >> v13) * v12;
      v115 = a6;
      v113 = v14;
      if (v110 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v99;
        for (i = v100; i; --i)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v24 + v27;
          if (v17 >= v24 + v27)
          {
            v30 = (v24 + v27);
          }

          else
          {
            v30 = v17;
          }

          if (v30 < v15)
          {
            v30 = v15;
          }

          v31 = *v30;
          v32 = v28 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            v33 = (v29 + (v28 >> 4));
            if (v17 < v33)
            {
              v33 = v17;
            }

            if (v33 < v15)
            {
              v33 = v15;
            }

            v34 = *v33;
            if (v23)
            {
              v35 = (v29 + v117);
              if (v17 >= v35)
              {
                v36 = v35;
              }

              else
              {
                v36 = v17;
              }

              if (v36 < v15)
              {
                v36 = v15;
              }

              v37 = *v36;
              v38 = (v35 + (v28 >> 4));
              if (v17 < v38)
              {
                v38 = v17;
              }

              if (v38 < v15)
              {
                v38 = v15;
              }

              v39 = BLEND8_21892[v23];
              v31 = v31 - ((v39 & v31) >> v23) + ((v39 & v37) >> v23);
              v34 = v34 - ((v39 & v34) >> v23) + ((v39 & *v38) >> v23);
            }

            v40 = BLEND8_21892[*v25 & 0xF];
            v41 = v31 - ((v40 & v31) >> v32);
            v42 = (v40 & v34) >> v32;
          }

          else
          {
            if (!v23)
            {
              goto LABEL_46;
            }

            v43 = (v29 + v117);
            if (v17 < v29 + v117)
            {
              v43 = v17;
            }

            if (v43 < v15)
            {
              v43 = v15;
            }

            v44 = BLEND8_21892[v23];
            v41 = v31 - ((v44 & v31) >> v23);
            v42 = (v44 & *v43) >> v23;
          }

          v31 = v41 + v42;
LABEL_46:
          v45 = (v31 << v18) | (v31 >> v120);
          v46 = HIBYTE(v45);
          if (HIBYTE(v45) <= BYTE2(v45))
          {
            v46 = BYTE2(v45);
          }

          if (v46 <= BYTE1(v45))
          {
            v47 = BYTE1(v45);
          }

          else
          {
            v47 = v46;
          }

          v48 = (v45 | v123);
          v49 = (v48 - v47) | ((v47 - BYTE2(v45)) << 16) | ((v47 - HIBYTE(v45)) << 24) | ((v47 - BYTE1(v45)) << 8);
          if (v6 == 255)
          {
            result = v49 | (v48 << 32);
            if (!v9)
            {
LABEL_55:
              *v8 = result;
              goto LABEL_56;
            }
          }

          else
          {
            result = PDAM_5790(v49, (v45 | v123 | (v49 >> 31)), v6);
            if (!v9)
            {
              goto LABEL_55;
            }
          }

          *v8 = result;
          *v9 = BYTE4(result);
LABEL_56:
          v25 += 2;
          ++v8;
          v9 += v122;
        }
      }

LABEL_107:
      v12 = v108;
      v8 += v109;
      v9 += v111;
      LOBYTE(v13) = v107;
      v14 = v113 + v106;
      a6 = v115 - 1;
      if (v115 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v51 = v99;
    v50 = v100;
    while (1)
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = v24 + v52;
      if (v17 >= v24 + v52)
      {
        v55 = (v24 + v52);
      }

      else
      {
        v55 = v17;
      }

      if (v55 < v15)
      {
        v55 = v15;
      }

      v56 = *v55;
      v57 = v53 & 0xF;
      if ((v53 & 0xF) != 0)
      {
        break;
      }

      if (v23)
      {
        v68 = (v54 + v117);
        if (v17 < v54 + v117)
        {
          v68 = v17;
        }

        if (v68 < v15)
        {
          v68 = v15;
        }

        v69 = BLEND8_21892[v23];
        v66 = v56 - ((v69 & v56) >> v23);
        v67 = (v69 & *v68) >> v23;
        goto LABEL_88;
      }

LABEL_89:
      v70 = (v56 << v18) | (v56 >> v120);
      v71 = HIBYTE(v70);
      if (HIBYTE(v70) <= BYTE2(v70))
      {
        v71 = BYTE2(v70);
      }

      if (v71 <= BYTE1(v70))
      {
        v72 = BYTE1(v70);
      }

      else
      {
        v72 = v71;
      }

      v73 = (v70 | v123);
      result = (v73 - v72) | ((v72 - BYTE2(v70)) << 16) | ((v72 - HIBYTE(v70)) << 24) | ((v72 - BYTE1(v70)) << 8);
      if (v6 == 255)
      {
        v74 = result | (v73 << 32);
      }

      else
      {
        result = PDAM_5790(result, (v70 | v123 | (result >> 31)), v6);
        v74 = result;
      }

      if (v9)
      {
        if (BYTE4(v74))
        {
          if (BYTE4(v74) == 255)
          {
            *v8 = v74;
            *v9 = -1;
          }

          else
          {
            result = DAplusDAM(v8, v9, v74, SBYTE4(v74), *v8, *v9, ~BYTE4(v74));
          }
        }
      }

      else if (BYTE4(v74))
      {
        if (BYTE4(v74) == 255)
        {
          *v8 = v74;
        }

        else
        {
          v75 = ~BYTE4(v74);
          *v8 = ((((*v8 >> 8) & 0xFF00FF) * v75 + 65537 + (((((*v8 >> 8) & 0xFF00FF) * v75) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v74 + ((((*v8 & 0xFF00FF) * v75 + 65537 + ((((*v8 & 0xFF00FF) * v75) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
        }
      }

      v51 += 2;
      ++v8;
      v9 += v122;
      if (!--v50)
      {
        goto LABEL_107;
      }
    }

    v58 = (v54 + (v53 >> 4));
    if (v17 < v58)
    {
      v58 = v17;
    }

    if (v58 < v15)
    {
      v58 = v15;
    }

    v59 = *v58;
    if (v23)
    {
      v60 = (v54 + v117);
      if (v17 >= v60)
      {
        v61 = v60;
      }

      else
      {
        v61 = v17;
      }

      if (v61 < v15)
      {
        v61 = v15;
      }

      v62 = *v61;
      v63 = (v60 + (v53 >> 4));
      if (v17 < v63)
      {
        v63 = v17;
      }

      if (v63 < v15)
      {
        v63 = v15;
      }

      v64 = BLEND8_21892[v23];
      v56 = v56 - ((v64 & v56) >> v23) + ((v64 & v62) >> v23);
      v59 = v59 - ((v64 & v59) >> v23) + ((v64 & *v63) >> v23);
    }

    v65 = BLEND8_21892[*v51 & 0xF];
    v66 = v56 - ((v65 & v56) >> v57);
    v67 = (v65 & v59) >> v57;
LABEL_88:
    v56 = v66 + v67;
    goto LABEL_89;
  }

  v121 = (v11 + 16 * a3);
  v76 = v16 - 4;
  v77 = a2[1];
  v78 = 32 - v10;
  v118 = a5;
  do
  {
    v79 = *(v119 + 32) + (v14 >> v13) * v12;
    v116 = a6;
    v114 = v14;
    if (v110 == 1)
    {
      if (a5 >= 1)
      {
        v80 = v121;
        for (j = v118; j; --j)
        {
          v82 = *v80;
          v80 += 2;
          v83 = (v79 + v82);
          if (v76 < v79 + v82)
          {
            v83 = v76;
          }

          if (v83 < *(v119 + 32))
          {
            v83 = *(v119 + 32);
          }

          v84 = (*v83 << v77) | (*v83 >> v78);
          v85 = HIBYTE(v84);
          if (HIBYTE(v84) <= BYTE2(v84))
          {
            v85 = BYTE2(v84);
          }

          if (v85 <= BYTE1(v84))
          {
            v86 = BYTE1(v84);
          }

          else
          {
            v86 = v85;
          }

          v87 = (v84 | v123);
          v88 = (v87 - v86) | ((v86 - BYTE2(v84)) << 16) | ((v86 - HIBYTE(v84)) << 24) | ((v86 - BYTE1(v84)) << 8);
          if (v6 == 255)
          {
            result = v88 | (v87 << 32);
            if (!v9)
            {
LABEL_126:
              *v8 = result;
              goto LABEL_127;
            }
          }

          else
          {
            result = PDAM_5790(v88, (v84 | v123 | (v88 >> 31)), v6);
            if (!v9)
            {
              goto LABEL_126;
            }
          }

          *v8 = result;
          *v9 = BYTE4(result);
LABEL_127:
          ++v8;
          v9 += v122;
        }
      }
    }

    else
    {
      v89 = v121;
      v90 = v118;
      if (a5 >= 1)
      {
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = (v79 + v91);
          if (v76 < v79 + v91)
          {
            v92 = v76;
          }

          if (v92 < *(v119 + 32))
          {
            v92 = *(v119 + 32);
          }

          v93 = (*v92 << v77) | (*v92 >> v78);
          v94 = HIBYTE(v93);
          if (HIBYTE(v93) <= BYTE2(v93))
          {
            v94 = BYTE2(v93);
          }

          if (v94 <= BYTE1(v93))
          {
            v95 = BYTE1(v93);
          }

          else
          {
            v95 = v94;
          }

          v96 = (v93 | v123);
          result = (v96 - v95) | ((v95 - BYTE2(v93)) << 16) | ((v95 - HIBYTE(v93)) << 24) | ((v95 - BYTE1(v93)) << 8);
          if (v6 == 255)
          {
            v97 = result | (v96 << 32);
          }

          else
          {
            result = PDAM_5790(result, (v93 | v123 | (result >> 31)), v6);
            v97 = result;
          }

          if (v9)
          {
            if (BYTE4(v97))
            {
              if (BYTE4(v97) == 255)
              {
                *v8 = v97;
                *v9 = -1;
              }

              else
              {
                result = DAplusDAM(v8, v9, v97, SBYTE4(v97), *v8, *v9, ~BYTE4(v97));
              }
            }
          }

          else if (BYTE4(v97))
          {
            if (BYTE4(v97) == 255)
            {
              *v8 = v97;
            }

            else
            {
              v98 = ~BYTE4(v97);
              *v8 = ((((*v8 >> 8) & 0xFF00FF) * v98 + 65537 + (((((*v8 >> 8) & 0xFF00FF) * v98) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v97 + ((((*v8 & 0xFF00FF) * v98 + 65537 + ((((*v8 & 0xFF00FF) * v98) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
            }
          }

          ++v8;
          v9 += v122;
          --v90;
        }

        while (v90);
      }
    }

    v12 = v108;
    v8 += v109;
    v9 += v111;
    LOBYTE(v13) = v107;
    v14 = v114 + v106;
    a6 = v116 - 1;
  }

  while (v116 != 1);
  return result;
}

unint64_t cmyk32_image_mark_RGB32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v121 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  v125 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v113 = *(a2 + 5) - a5;
  }

  else
  {
    v113 = 0;
  }

  v10 = a2[1];
  v112 = *a2;
  v111 = *(a2 + 3) - a5;
  v124 = v9 != 0;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v108 = *(a2 + 11);
  v14 = *(a2 + 7) + v108 * a4;
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v109 = v13;
  v110 = v12;
  if (*(result + 176))
  {
    v105 = ~(-1 << v13);
    v106 = *(a2 + 15);
    v107 = *(a2 + 13);
    v104 = v13 - 4;
    v103 = -v12;
    v17 = (v16 - 4);
    v18 = a2[1];
    v122 = 32 - v10;
    v101 = v11 + 16 * a3 + 8;
    v102 = a5;
    while (1)
    {
      if (((v106 - v14) | (v14 - v107)) < 0)
      {
        v23 = 0;
        v119 = 0;
      }

      else
      {
        v19 = ((v14 & v105) >> v104) & 0xF;
        v20 = weights_21890[v19];
        v21 = (v19 - 7) >= 9;
        v22 = v103;
        if (!v21)
        {
          v22 = v12;
        }

        v119 = v22;
        v23 = v20 & 0xF;
      }

      v24 = *(v121 + 32) + (v14 >> v13) * v12;
      v117 = a6;
      v115 = v14;
      if (v112 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v101;
        for (i = v102; i; --i)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v24 + v27;
          if (v17 >= v24 + v27)
          {
            v30 = (v24 + v27);
          }

          else
          {
            v30 = v17;
          }

          if (v30 < v15)
          {
            v30 = v15;
          }

          v31 = bswap32(*v30);
          v32 = v28 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            v33 = (v29 + (v28 >> 4));
            if (v17 < v33)
            {
              v33 = v17;
            }

            if (v33 < v15)
            {
              v33 = v15;
            }

            v34 = bswap32(*v33);
            if (v23)
            {
              v35 = (v29 + v119);
              if (v17 >= v35)
              {
                v36 = v35;
              }

              else
              {
                v36 = v17;
              }

              if (v36 < v15)
              {
                v36 = v15;
              }

              v37 = bswap32(*v36);
              v38 = (v35 + (v28 >> 4));
              if (v17 < v38)
              {
                v38 = v17;
              }

              if (v38 < v15)
              {
                v38 = v15;
              }

              v39 = BLEND8_21892[v23];
              v31 = v31 - ((v39 & v31) >> v23) + ((v39 & v37) >> v23);
              v34 = v34 - ((v39 & v34) >> v23) + ((bswap32(*v38) & v39) >> v23);
            }

            v40 = BLEND8_21892[*v25 & 0xF];
            v41 = v31 - ((v40 & v31) >> v32);
            v42 = (v40 & v34) >> v32;
          }

          else
          {
            if (!v23)
            {
              goto LABEL_46;
            }

            v43 = (v29 + v119);
            if (v17 < v29 + v119)
            {
              v43 = v17;
            }

            if (v43 < v15)
            {
              v43 = v15;
            }

            v44 = BLEND8_21892[v23];
            v41 = v31 - ((v44 & v31) >> v23);
            v42 = (bswap32(*v43) & v44) >> v23;
          }

          v31 = v41 + v42;
LABEL_46:
          v45 = (v31 << v18) | (v31 >> v122);
          v46 = HIBYTE(v45);
          if (HIBYTE(v45) <= BYTE2(v45))
          {
            v46 = BYTE2(v45);
          }

          if (v46 <= BYTE1(v45))
          {
            v47 = BYTE1(v45);
          }

          else
          {
            v47 = v46;
          }

          v48 = (v45 | v125);
          v49 = (v48 - v47) | ((v47 - BYTE2(v45)) << 16) | ((v47 - HIBYTE(v45)) << 24) | ((v47 - BYTE1(v45)) << 8);
          if (v6 == 255)
          {
            result = v49 | (v48 << 32);
            if (!v9)
            {
LABEL_55:
              *v8 = result;
              goto LABEL_56;
            }
          }

          else
          {
            result = PDAM_5790(v49, (v45 | v125 | (v49 >> 31)), v6);
            if (!v9)
            {
              goto LABEL_55;
            }
          }

          *v8 = result;
          *v9 = BYTE4(result);
LABEL_56:
          v25 += 2;
          ++v8;
          v9 += v124;
        }
      }

LABEL_107:
      v12 = v110;
      v8 += v111;
      v9 += v113;
      LOBYTE(v13) = v109;
      v14 = v115 + v108;
      a6 = v117 - 1;
      if (v117 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v51 = v101;
    v50 = v102;
    while (1)
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v54 = v24 + v52;
      if (v17 >= v24 + v52)
      {
        v55 = (v24 + v52);
      }

      else
      {
        v55 = v17;
      }

      if (v55 < v15)
      {
        v55 = v15;
      }

      v56 = bswap32(*v55);
      v57 = v53 & 0xF;
      if ((v53 & 0xF) != 0)
      {
        break;
      }

      if (v23)
      {
        v68 = (v54 + v119);
        if (v17 < v54 + v119)
        {
          v68 = v17;
        }

        if (v68 < v15)
        {
          v68 = v15;
        }

        v69 = BLEND8_21892[v23];
        v66 = v56 - ((v69 & v56) >> v23);
        v67 = (bswap32(*v68) & v69) >> v23;
        goto LABEL_88;
      }

LABEL_89:
      v70 = (v56 << v18) | (v56 >> v122);
      v71 = HIBYTE(v70);
      if (HIBYTE(v70) <= BYTE2(v70))
      {
        v71 = BYTE2(v70);
      }

      if (v71 <= BYTE1(v70))
      {
        v72 = BYTE1(v70);
      }

      else
      {
        v72 = v71;
      }

      v73 = (v70 | v125);
      result = (v73 - v72) | ((v72 - BYTE2(v70)) << 16) | ((v72 - HIBYTE(v70)) << 24) | ((v72 - BYTE1(v70)) << 8);
      if (v6 == 255)
      {
        v74 = result | (v73 << 32);
      }

      else
      {
        result = PDAM_5790(result, (v70 | v125 | (result >> 31)), v6);
        v74 = result;
      }

      if (v9)
      {
        if (BYTE4(v74))
        {
          if (BYTE4(v74) == 255)
          {
            *v8 = v74;
            *v9 = -1;
          }

          else
          {
            result = DAplusDAM(v8, v9, v74, SBYTE4(v74), *v8, *v9, ~BYTE4(v74));
          }
        }
      }

      else if (BYTE4(v74))
      {
        if (BYTE4(v74) == 255)
        {
          *v8 = v74;
        }

        else
        {
          v75 = ~BYTE4(v74);
          *v8 = ((((*v8 >> 8) & 0xFF00FF) * v75 + 65537 + (((((*v8 >> 8) & 0xFF00FF) * v75) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v74 + ((((*v8 & 0xFF00FF) * v75 + 65537 + ((((*v8 & 0xFF00FF) * v75) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
        }
      }

      v51 += 2;
      ++v8;
      v9 += v124;
      if (!--v50)
      {
        goto LABEL_107;
      }
    }

    v58 = (v54 + (v53 >> 4));
    if (v17 < v58)
    {
      v58 = v17;
    }

    if (v58 < v15)
    {
      v58 = v15;
    }

    v59 = bswap32(*v58);
    if (v23)
    {
      v60 = (v54 + v119);
      if (v17 >= v60)
      {
        v61 = v60;
      }

      else
      {
        v61 = v17;
      }

      if (v61 < v15)
      {
        v61 = v15;
      }

      v62 = bswap32(*v61);
      v63 = (v60 + (v53 >> 4));
      if (v17 < v63)
      {
        v63 = v17;
      }

      if (v63 < v15)
      {
        v63 = v15;
      }

      v64 = BLEND8_21892[v23];
      v56 = v56 - ((v64 & v56) >> v23) + ((v64 & v62) >> v23);
      v59 = v59 - ((v64 & v59) >> v23) + ((bswap32(*v63) & v64) >> v23);
    }

    v65 = BLEND8_21892[*v51 & 0xF];
    v66 = v56 - ((v65 & v56) >> v57);
    v67 = (v65 & v59) >> v57;
LABEL_88:
    v56 = v66 + v67;
    goto LABEL_89;
  }

  v123 = (v11 + 16 * a3);
  v76 = (v16 - 4);
  v77 = a2[1];
  v78 = 32 - v10;
  v120 = a5;
  do
  {
    v79 = *(v121 + 32) + (v14 >> v13) * v12;
    v118 = a6;
    v116 = v14;
    if (v112 == 1)
    {
      if (a5 >= 1)
      {
        v80 = v123;
        for (j = v120; j; --j)
        {
          v82 = *v80;
          v80 += 2;
          v83 = (v79 + v82);
          if (v76 < v79 + v82)
          {
            v83 = v76;
          }

          if (v83 < *(v121 + 32))
          {
            v83 = *(v121 + 32);
          }

          v84 = bswap32(*v83);
          v85 = (v84 << v77) | (v84 >> v78);
          v86 = HIBYTE(v85);
          if (HIBYTE(v85) <= BYTE2(v85))
          {
            v86 = BYTE2(v85);
          }

          if (v86 <= BYTE1(v85))
          {
            v87 = BYTE1(v85);
          }

          else
          {
            v87 = v86;
          }

          v88 = (v85 | v125);
          v89 = (v88 - v87) | ((v87 - BYTE2(v85)) << 16) | ((v87 - HIBYTE(v85)) << 24) | ((v87 - BYTE1(v85)) << 8);
          if (v6 == 255)
          {
            result = v89 | (v88 << 32);
            if (!v9)
            {
LABEL_126:
              *v8 = result;
              goto LABEL_127;
            }
          }

          else
          {
            result = PDAM_5790(v89, (v85 | v125 | (v89 >> 31)), v6);
            if (!v9)
            {
              goto LABEL_126;
            }
          }

          *v8 = result;
          *v9 = BYTE4(result);
LABEL_127:
          ++v8;
          v9 += v124;
        }
      }
    }

    else
    {
      v90 = v123;
      v91 = v120;
      if (a5 >= 1)
      {
        do
        {
          v92 = *v90;
          v90 += 2;
          v93 = (v79 + v92);
          if (v76 < v79 + v92)
          {
            v93 = v76;
          }

          if (v93 < *(v121 + 32))
          {
            v93 = *(v121 + 32);
          }

          v94 = bswap32(*v93);
          v95 = (v94 << v77) | (v94 >> v78);
          v96 = HIBYTE(v95);
          if (HIBYTE(v95) <= BYTE2(v95))
          {
            v96 = BYTE2(v95);
          }

          if (v96 <= BYTE1(v95))
          {
            v97 = BYTE1(v95);
          }

          else
          {
            v97 = v96;
          }

          v98 = (v95 | v125);
          result = (v98 - v97) | ((v97 - BYTE2(v95)) << 16) | ((v97 - HIBYTE(v95)) << 24) | ((v97 - BYTE1(v95)) << 8);
          if (v6 == 255)
          {
            v99 = result | (v98 << 32);
          }

          else
          {
            result = PDAM_5790(result, (v95 | v125 | (result >> 31)), v6);
            v99 = result;
          }

          if (v9)
          {
            if (BYTE4(v99))
            {
              if (BYTE4(v99) == 255)
              {
                *v8 = v99;
                *v9 = -1;
              }

              else
              {
                result = DAplusDAM(v8, v9, v99, SBYTE4(v99), *v8, *v9, ~BYTE4(v99));
              }
            }
          }

          else if (BYTE4(v99))
          {
            if (BYTE4(v99) == 255)
            {
              *v8 = v99;
            }

            else
            {
              v100 = ~BYTE4(v99);
              *v8 = ((((*v8 >> 8) & 0xFF00FF) * v100 + 65537 + (((((*v8 >> 8) & 0xFF00FF) * v100) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v99 + ((((*v8 & 0xFF00FF) * v100 + 65537 + ((((*v8 & 0xFF00FF) * v100) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
            }
          }

          ++v8;
          v9 += v124;
          --v91;
        }

        while (v91);
      }
    }

    v12 = v110;
    v8 += v111;
    v9 += v113;
    LOBYTE(v13) = v109;
    v14 = v116 + v108;
    a6 = v118 - 1;
  }

  while (v118 != 1);
  return result;
}

unint64_t cmyk32_image_mark_RGB24(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v109 = result;
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v102 = *(a2 + 5) - a5;
  }

  else
  {
    v102 = 0;
  }

  v101 = *a2;
  v100 = *(a2 + 3) - a5;
  v9 = v8 != 0;
  v11 = *(a2 + 17);
  v10 = *(a2 + 18);
  v12 = *(a2 + 9);
  v97 = *(a2 + 11);
  v13 = *(a2 + 7) + v97 * a4;
  v14 = *(result + 32);
  v15 = &v14[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v96 = a5;
  v98 = v12;
  v99 = v11;
  if (*(result + 176))
  {
    v95 = *(a2 + 13);
    v93 = ~(-1 << v12);
    v94 = *(a2 + 15);
    v92 = v12 - 4;
    v16 = v15 - 3;
    v90 = v10 + 16 * a3 + 8;
    v91 = -v11;
    while (1)
    {
      if (((v94 - v13) | (v13 - v95)) < 0)
      {
        v21 = 0;
        v107 = 0;
      }

      else
      {
        v17 = ((v13 & v93) >> v92) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v91;
        if (!v19)
        {
          v20 = v11;
        }

        v107 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v109 + 32) + (v13 >> v12) * v11;
      v105 = a6;
      v104 = v13;
      if (v101 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v90;
        for (i = v96; i; --i)
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

          if (v28 < v14)
          {
            v28 = v14;
          }

          v29 = (*v28 << 24) | (v28[1] << 16) | (v28[2] << 8);
          v30 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            v31 = (v27 + (v26 >> 4));
            if (v16 < v31)
            {
              v31 = v16;
            }

            if (v31 < v14)
            {
              v31 = v14;
            }

            v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
            if (v21)
            {
              v33 = (v27 + v107);
              if (v16 >= v33)
              {
                v34 = v33;
              }

              else
              {
                v34 = v16;
              }

              if (v34 < v14)
              {
                v34 = v14;
              }

              v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
              v36 = &v33[v26 >> 4];
              if (v16 < v36)
              {
                v36 = v16;
              }

              if (v36 < v14)
              {
                v36 = v14;
              }

              v37 = BLEND8_21892[v21];
              v29 = v29 - ((v37 & v29) >> v21) + ((v37 & v35) >> v21);
              v32 = v32 - ((v37 & v32) >> v21) + ((((*v36 << 24) | (v36[1] << 16) | (v36[2] << 8)) & v37) >> v21);
            }

            v38 = BLEND8_21892[*v23 & 0xF];
            v39 = v29 - ((v38 & v29) >> v30);
            v40 = (v38 & v32) >> v30;
          }

          else
          {
            if (!v21)
            {
              goto LABEL_43;
            }

            v41 = (v27 + v107);
            if (v16 < v27 + v107)
            {
              v41 = v16;
            }

            if (v41 < v14)
            {
              v41 = v14;
            }

            v42 = BLEND8_21892[v21];
            v39 = v29 - ((v42 & v29) >> v21);
            v40 = (((*v41 << 24) | (v41[1] << 16) | (v41[2] << 8)) & v42) >> v21;
          }

          v29 = v39 + v40;
LABEL_43:
          v43 = HIBYTE(v29);
          if (HIBYTE(v29) <= BYTE2(v29))
          {
            v43 = BYTE2(v29);
          }

          if (v43 <= BYTE1(v29))
          {
            v43 = BYTE1(v29);
          }

          v44 = (((v43 - HIBYTE(v29)) << 24) | ((v43 - BYTE2(v29)) << 16) | ((v43 - BYTE1(v29)) << 8) | v43) ^ 0xFF;
          if (v6 == 255)
          {
            result = v44 | 0xFF00000000;
            if (!v8)
            {
LABEL_51:
              *v7 = result;
              goto LABEL_52;
            }
          }

          else
          {
            result = PDAM_5790(v44, 255, v6);
            if (!v8)
            {
              goto LABEL_51;
            }
          }

          *v7 = result;
          *v8 = BYTE4(result);
LABEL_52:
          v23 += 2;
          ++v7;
          v8 += v9;
        }
      }

LABEL_102:
      v11 = v99;
      v7 += v100;
      v8 += v102;
      LOBYTE(v12) = v98;
      v13 = v104 + v97;
      a6 = v105 - 1;
      if (v105 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_102;
    }

    v45 = v90;
    v46 = v96;
    while (1)
    {
      v47 = *(v45 - 1);
      v48 = *v45;
      v49 = v22 + v47;
      if (v16 >= v22 + v47)
      {
        v50 = (v22 + v47);
      }

      else
      {
        v50 = v16;
      }

      if (v50 < v14)
      {
        v50 = v14;
      }

      v51 = (*v50 << 24) | (v50[1] << 16) | (v50[2] << 8);
      v52 = v48 & 0xF;
      if ((v48 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v63 = (v49 + v107);
        if (v16 < v49 + v107)
        {
          v63 = v16;
        }

        if (v63 < v14)
        {
          v63 = v14;
        }

        v64 = BLEND8_21892[v21];
        v61 = v51 - ((v64 & v51) >> v21);
        v62 = (((*v63 << 24) | (v63[1] << 16) | (v63[2] << 8)) & v64) >> v21;
        goto LABEL_84;
      }

LABEL_85:
      v65 = HIBYTE(v51);
      if (HIBYTE(v51) <= BYTE2(v51))
      {
        v65 = BYTE2(v51);
      }

      if (v65 <= BYTE1(v51))
      {
        v65 = BYTE1(v51);
      }

      result = (((v65 - HIBYTE(v51)) << 24) | ((v65 - BYTE2(v51)) << 16) | ((v65 - BYTE1(v51)) << 8) | v65) ^ 0xFF;
      if (v6 == 255)
      {
        v66 = result | 0xFF00000000;
      }

      else
      {
        result = PDAM_5790(result, 255, v6);
        v66 = result;
      }

      if (v8)
      {
        if (BYTE4(v66))
        {
          if (BYTE4(v66) == 255)
          {
            *v7 = v66;
            *v8 = -1;
          }

          else
          {
            result = DAplusDAM(v7, v8, v66, SBYTE4(v66), *v7, *v8, ~BYTE4(v66));
          }
        }
      }

      else if (BYTE4(v66))
      {
        if (BYTE4(v66) == 255)
        {
          *v7 = v66;
        }

        else
        {
          v67 = ~BYTE4(v66);
          *v7 = ((((*v7 >> 8) & 0xFF00FF) * v67 + 65537 + (((((*v7 >> 8) & 0xFF00FF) * v67) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v66 + ((((*v7 & 0xFF00FF) * v67 + 65537 + ((((*v7 & 0xFF00FF) * v67) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
        }
      }

      v45 += 2;
      ++v7;
      v8 += v9;
      if (!--v46)
      {
        goto LABEL_102;
      }
    }

    v53 = (v49 + (v48 >> 4));
    if (v16 < v53)
    {
      v53 = v16;
    }

    if (v53 < v14)
    {
      v53 = v14;
    }

    v54 = (*v53 << 24) | (v53[1] << 16) | (v53[2] << 8);
    if (v21)
    {
      v55 = (v49 + v107);
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

      v57 = (*v56 << 24) | (v56[1] << 16) | (v56[2] << 8);
      v58 = &v55[v48 >> 4];
      if (v16 < v58)
      {
        v58 = v16;
      }

      if (v58 < v14)
      {
        v58 = v14;
      }

      v59 = BLEND8_21892[v21];
      v51 = v51 - ((v59 & v51) >> v21) + ((v59 & v57) >> v21);
      v54 = v54 - ((v59 & v54) >> v21) + ((((*v58 << 24) | (v58[1] << 16) | (v58[2] << 8)) & v59) >> v21);
    }

    v60 = BLEND8_21892[*v45 & 0xF];
    v61 = v51 - ((v60 & v51) >> v52);
    v62 = (v60 & v54) >> v52;
LABEL_84:
    v51 = v61 + v62;
    goto LABEL_85;
  }

  v108 = (v10 + 16 * a3);
  v68 = v15 - 3;
  do
  {
    v106 = a6;
    v69 = v13;
    v70 = *(v109 + 32) + (v13 >> v12) * v11;
    if (v101 == 1)
    {
      if (a5 >= 1)
      {
        v71 = v108;
        for (j = v96; j; --j)
        {
          v73 = *v71;
          v71 += 2;
          v74 = (v70 + v73);
          if (v68 < v70 + v73)
          {
            v74 = v68;
          }

          if (v74 < *(v109 + 32))
          {
            v74 = *(v109 + 32);
          }

          v75 = *v74;
          v76 = v74[1];
          v77 = v74[2];
          if (v75 <= v76)
          {
            v78 = v76;
          }

          else
          {
            v78 = v75;
          }

          if (v78 <= v77)
          {
            v78 = v77;
          }

          v79 = (((v78 - v75) << 24) | ((v78 - v76) << 16) | ((v78 - v77) << 8) | v78) ^ 0xFF;
          if (v6 == 255)
          {
            result = v79 | 0xFF00000000;
            if (!v8)
            {
LABEL_121:
              *v7 = result;
              goto LABEL_122;
            }
          }

          else
          {
            result = PDAM_5790(v79, 255, v6);
            if (!v8)
            {
              goto LABEL_121;
            }
          }

          *v7 = result;
          *v8 = BYTE4(result);
LABEL_122:
          ++v7;
          v8 += v9;
        }
      }
    }

    else
    {
      v80 = v108;
      v81 = v96;
      if (a5 >= 1)
      {
        do
        {
          v82 = *v80;
          v80 += 2;
          v83 = (v70 + v82);
          if (v68 < v70 + v82)
          {
            v83 = v68;
          }

          if (v83 < *(v109 + 32))
          {
            v83 = *(v109 + 32);
          }

          v84 = *v83;
          v85 = v83[1];
          v86 = v83[2];
          if (v84 <= v85)
          {
            v87 = v85;
          }

          else
          {
            v87 = v84;
          }

          if (v87 <= v86)
          {
            v87 = v86;
          }

          result = (((v87 - v84) << 24) | ((v87 - v85) << 16) | ((v87 - v86) << 8) | v87) ^ 0xFF;
          if (v6 == 255)
          {
            v88 = result | 0xFF00000000;
          }

          else
          {
            result = PDAM_5790(result, 255, v6);
            v88 = result;
          }

          if (v8)
          {
            if (BYTE4(v88))
            {
              if (BYTE4(v88) == 255)
              {
                *v7 = v88;
                *v8 = -1;
              }

              else
              {
                result = DAplusDAM(v7, v8, v88, SBYTE4(v88), *v7, *v8, ~BYTE4(v88));
              }
            }
          }

          else if (BYTE4(v88))
          {
            if (BYTE4(v88) == 255)
            {
              *v7 = v88;
            }

            else
            {
              v89 = ~BYTE4(v88);
              *v7 = ((((*v7 >> 8) & 0xFF00FF) * v89 + 65537 + (((((*v7 >> 8) & 0xFF00FF) * v89) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v88 + ((((*v7 & 0xFF00FF) * v89 + 65537 + ((((*v7 & 0xFF00FF) * v89) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
            }
          }

          ++v7;
          v8 += v9;
          --v81;
        }

        while (v81);
      }
    }

    v11 = v99;
    v7 += v100;
    v8 += v102;
    LOBYTE(v12) = v98;
    v13 = v69 + v97;
    a6 = v106 - 1;
  }

  while (v106 != 1);
  return result;
}

_DWORD *cmyk32_image_mark_W8(_DWORD *result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 2);
  v10 = *(a2 + 4);
  if (v10)
  {
    v20 = *(a2 + 5) - a5;
  }

  else
  {
    v20 = 0;
  }

  v19 = *a2;
  v18 = *(a2 + 3) - a5;
  v11 = v10 != 0;
  if (v8 == 255)
  {
    v12 = 0xFF000000FELL;
  }

  else
  {
    v12 = ((254 * v8 + ((254 * v8) >> 8) + 1) >> 8) | (((255 * v8 + ((255 * v8) >> 8) + 1) >> 8) << 32);
  }

  v13 = ~BYTE4(v12);
  if (*(result + 22))
  {
    do
    {
      if (v19 == 1)
      {
        if (a5 >= 1)
        {
          v14 = a5;
          do
          {
            *v9 = v12;
            if (v10)
            {
              *v10 = BYTE4(v12);
            }

            ++v9;
            v10 += v11;
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        v15 = a5;
        if (a5 >= 1)
        {
          do
          {
            if (v10)
            {
              if (BYTE4(v12))
              {
                if (BYTE4(v12) == 255)
                {
                  *v9 = v12;
                  *v10 = -1;
                }

                else
                {
                  result = DAplusDAM(v9, v10, v12, SBYTE4(v12), *v9, *v10, ~BYTE4(v12));
                }
              }
            }

            else if (BYTE4(v12))
            {
              if (BYTE4(v12) == 255)
              {
                *v9 = v12;
              }

              else
              {
                *v9 = ((((*v9 >> 8) & 0xFF00FF) * v13 + 65537 + (((((*v9 >> 8) & 0xFF00FF) * v13) >> 8) & 0xFF00FF)) & 0xFF00FF00 | v12) + ((((*v9 & 0xFF00FF) * v13 + 65537 + ((((*v9 & 0xFF00FF) * v13) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
              }
            }

            ++v9;
            v10 += v11;
            --v15;
          }

          while (v15);
        }
      }

      v9 += v18;
      v10 += v20;
      --a6;
    }

    while (a6);
  }

  else
  {
    do
    {
      if (v19 == 1)
      {
        if (a5 >= 1)
        {
          v16 = a5;
          do
          {
            *v9 = v12;
            if (v10)
            {
              *v10 = BYTE4(v12);
            }

            ++v9;
            v10 += v11;
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        v17 = a5;
        if (a5 >= 1)
        {
          do
          {
            if (v10)
            {
              if (BYTE4(v12))
              {
                if (BYTE4(v12) == 255)
                {
                  *v9 = v12;
                  *v10 = -1;
                }

                else
                {
                  result = DAplusDAM(v9, v10, v12, SBYTE4(v12), *v9, *v10, ~BYTE4(v12));
                }
              }
            }

            else if (BYTE4(v12))
            {
              if (BYTE4(v12) == 255)
              {
                *v9 = v12;
              }

              else
              {
                *v9 = ((((*v9 >> 8) & 0xFF00FF) * v13 + 65537 + (((((*v9 >> 8) & 0xFF00FF) * v13) >> 8) & 0xFF00FF)) & 0xFF00FF00 | v12) + ((((*v9 & 0xFF00FF) * v13 + 65537 + ((((*v9 & 0xFF00FF) * v13) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
              }
            }

            ++v9;
            v10 += v11;
            --v17;
          }

          while (v17);
        }
      }

      v9 += v18;
      v10 += v20;
      --a6;
    }

    while (a6);
  }

  return result;
}

unint64_t cmyk32_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *v4 << 32;
  }

  else
  {
    v5 = 0xFF00000000;
  }

  v257 = *(a1 + 4);
  v253 = *(a1 + 8);
  v6 = *(a1 + 136);
  v240 = *(a1 + 28);
  v249 = *(a1 + 40);
  v7 = **(a1 + 88);
  v8 = v5 | v7;
  pthread_mutex_lock(&cmyk32_cacheColorLock);
  v9 = cmyk32_cacheColor;
  if (!cmyk32_cacheColor || *(cmyk32_cacheColor + 16) != v8)
  {
    v20 = 0;
    while (1)
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      v21 = v20;
      v20 = v9;
      if (v9[2] == v8)
      {
        break;
      }

      v9 = *v9;
      if (!*v20)
      {
        if (cmyk32_cacheColorCount > 6)
        {
          *v21 = 0;
          v24 = *(v20 + 1);
        }

        else
        {
LABEL_12:
          v22 = cmyk32_cacheColorBase;
          if (cmyk32_cacheColorBase)
          {
            v23 = cmyk32_cacheColorCount;
          }

          else
          {
            v22 = malloc_type_calloc(1uLL, 0x38A8uLL, 0x10200402493A768uLL);
            v23 = 0;
            cmyk32_cacheColorBase = v22;
          }

          v20 = &v22[24 * v23];
          v24 = &v22[2048 * v23 + 168];
          *(v20 + 1) = v24;
          cmyk32_cacheColorCount = v23 + 1;
        }

        v25 = 0;
        *v20 = cmyk32_cacheColor;
        cmyk32_cacheColor = v20;
        *(v20 + 2) = v8;
        v26 = HIDWORD(v5);
        do
        {
          *(v24 + 8 * v25) = PDAM_5790(v7, v26, v25);
          ++v25;
        }

        while (v25 != 256);
        v19 = v20 + 8;
        result = pthread_mutex_unlock(&cmyk32_cacheColorLock);
        goto LABEL_23;
      }
    }

    if (v21)
    {
      *v21 = *v9;
      *v9 = cmyk32_cacheColor;
      cmyk32_cacheColor = v9;
    }
  }

  result = pthread_mutex_unlock(&cmyk32_cacheColorLock);
  v19 = v9 + 1;
LABEL_23:
  v27 = *(a1 + 12);
  v28 = *(a1 + 16);
  if (v3)
  {
    v29 = *(a1 + 32);
    v30 = (v3 + v29 * v28 + v27);
    v31 = 1;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v31 = 0;
  }

  v32 = v253;
  if (v6)
  {
    v33 = v29 - v257;
    if (v3)
    {
      v29 -= v257;
    }

    v246 = v29;
    v34 = *v19;
    v35 = *(*v19 + 2040);
    v36 = (v249 + 4 * (v240 >> 2) * v28 + 4 * v27);
    v37 = *(a1 + 124);
    v38 = v6 + *(a1 + 108) * v37 + *(a1 + 104);
    v250 = v37 - v257;
    v254 = (v240 >> 2) - v257;
    switch(a2)
    {
      case 0:
        if (v3)
        {
          do
          {
            v39 = v257;
            do
            {
              v40 = *v38;
              if (*v38)
              {
                if (v40 == 255)
                {
                  LOBYTE(v41) = 0;
                  *v36 = 0;
                }

                else
                {
                  result = PDAM_5790(*v36, *v30, v40 ^ 0xFFu);
                  *v36 = result;
                  v41 = HIDWORD(result);
                }

                *v30 = v41;
              }

              ++v38;
              ++v36;
              v30 += v31;
              --v39;
            }

            while (v39);
            v38 += v250;
            v36 += v254;
            v30 += v246;
            --v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v161 = v257;
            do
            {
              v162 = *v38;
              if (*v38)
              {
                if (v162 == 255)
                {
                  v163 = 0;
                }

                else
                {
                  v163 = (((*v36 & 0xFF00FF) * (v162 ^ 0xFF) + 65537 + ((((*v36 & 0xFF00FF) * (v162 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v36 >> 8) & 0xFF00FF) * (v162 ^ 0xFF) + 65537 + (((((*v36 >> 8) & 0xFF00FF) * (v162 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                }

                *v36 = v163;
              }

              ++v38;
              ++v36;
              --v161;
            }

            while (v161);
            v38 += v250;
            v36 += v254;
            --v32;
          }

          while (v32);
        }

        return result;
      case 1:
        v132 = v38 & 3;
        if (v3)
        {
          v133 = v132 + v257;
          if ((v38 & 3) != 0)
          {
            v134 = v38 & 0xFC;
          }

          else
          {
            v134 = v38;
          }

          if ((v38 & 3) != 0)
          {
            result = (-1 << (8 * v132));
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          if ((v38 & 3) != 0)
          {
            v135 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v135 = v38;
          }

          if ((v38 & 3) != 0)
          {
            v30 -= v38 & 3;
            v36 -= v38 & 3;
          }

          else
          {
            v133 = v257;
          }

          if (((v133 + v134) & 3) != 0)
          {
            v136 = 4 - ((v133 + v134) & 3);
            v132 += v136;
            v137 = 0xFFFFFFFF >> (8 * v136);
            if (v133 >= 4)
            {
              v138 = 0xFFFFFFFF >> (8 * v136);
            }

            else
            {
              v138 = 0;
            }

            v259 = v138;
            if (v133 >= 4)
            {
              v137 = -1;
            }

            result = v137 & result;
            v248 = result;
          }

          else
          {
            v248 = result;
            v259 = 0;
          }

          v252 = v250 - v132;
          v256 = v254 - v132;
          v245 = v133 >> 2;
          v242 = v33 - v132;
          do
          {
            v190 = v245;
            v191 = *v135 & v248;
            v192 = v259;
            if (!v191)
            {
              goto LABEL_469;
            }

LABEL_467:
            if (v191 == -1)
            {
              *v36 = v35;
              *v30 = BYTE4(v35);
              v36[1] = v35;
              v30[1] = BYTE4(v35);
              v36[2] = v35;
              v30[2] = BYTE4(v35);
              v36[3] = v35;
              v30[3] = BYTE4(v35);
              goto LABEL_469;
            }

            while (1)
            {
              if (v191)
              {
                if (v191 == 255)
                {
                  *v36 = v35;
                  *v30 = BYTE4(v35);
                }

                else
                {
                  result = DAplusDAM(v36, v30, *(v34 + 8 * v191), *(v34 + 8 * v191 + 4), *v36, *v30, ~v191);
                }
              }

              if (BYTE1(v191))
              {
                if (BYTE1(v191) == 255)
                {
                  v36[1] = v35;
                  v30[1] = BYTE4(v35);
                }

                else
                {
                  result = DAplusDAM(v36 + 1, v30 + 1, *(v34 + 8 * BYTE1(v191)), *(v34 + 8 * BYTE1(v191) + 4), v36[1], v30[1], ~(v191 >> 8));
                }
              }

              if (BYTE2(v191))
              {
                if (BYTE2(v191) == 255)
                {
                  v36[2] = v35;
                  v30[2] = BYTE4(v35);
                }

                else
                {
                  result = DAplusDAM(v36 + 2, v30 + 2, *(v34 + 8 * BYTE2(v191)), *(v34 + 8 * BYTE2(v191) + 4), v36[2], v30[2], ~HIWORD(v191));
                }
              }

              v194 = HIBYTE(v191);
              if (HIBYTE(v191) == 255)
              {
                v36[3] = v35;
                v30[3] = BYTE4(v35);
              }

              else if (v194)
              {
                result = DAplusDAM(v36 + 3, v30 + 3, *(v34 + 8 * v194), *(v34 + 8 * v194 + 4), v36[3], v30[3], ~v191 >> 24);
              }

LABEL_469:
              while (1)
              {
                v193 = v190;
                v36 += 4;
                v30 += 4;
                --v190;
                ++v135;
                if (v193 < 2)
                {
                  break;
                }

                v191 = *v135;
                if (*v135)
                {
                  goto LABEL_467;
                }
              }

              if (!v192)
              {
                break;
              }

              v192 = 0;
              v191 = *v135 & v259;
            }

            v135 = (v135 + v252);
            v36 += v256;
            v30 += v242;
            --v32;
          }

          while (v32);
        }

        else
        {
          v164 = -1 << (8 * v132);
          if ((v38 & 3) != 0)
          {
            v165 = v38 & 0xFC;
          }

          else
          {
            v165 = v38;
          }

          if ((v38 & 3) != 0)
          {
            v166 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v164 = -1;
            v166 = v38;
          }

          if ((v38 & 3) != 0)
          {
            v167 = &v36[-(v38 & 3)];
          }

          else
          {
            v167 = v36;
          }

          if ((v38 & 3) != 0)
          {
            v168 = v132 + v257;
          }

          else
          {
            v168 = v257;
          }

          if (((v168 + v165) & 3) != 0)
          {
            v169 = 4 - ((v168 + v165) & 3);
            v132 += v169;
            v170 = 0xFFFFFFFF >> (8 * v169);
            if (v168 >= 4)
            {
              v171 = v170;
            }

            else
            {
              v171 = 0;
            }

            if (v168 >= 4)
            {
              v170 = -1;
            }

            v164 &= v170;
          }

          else
          {
            v171 = 0;
          }

          v223 = v168 >> 2;
          v224 = vdupq_n_s32(v35);
          v225 = v250 - v132;
          v226 = v254 - v132;
          do
          {
            v227 = *v166 & v164;
            LODWORD(result) = v223;
            v228 = v171;
            if (!v227)
            {
              goto LABEL_518;
            }

LABEL_516:
            if (v227 == -1)
            {
              *v167 = v224;
              goto LABEL_518;
            }

            while (1)
            {
              if (v227)
              {
                v230 = v35;
                if (v227 != 255)
                {
                  v231 = v227 ^ 0xFF;
                  v230 = ((((v167->i32[0] >> 8) & 0xFF00FF) * v231 + 65537 + (((((v167->i32[0] >> 8) & 0xFF00FF) * v231) >> 8) & 0xFF00FF)) & 0xFF00FF00) + *(v34 + 8 * v227) + ((((v167->i32[0] & 0xFF00FF) * v231 + 65537 + ((((v167->i32[0] & 0xFF00FFu) * v231) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                v167->i32[0] = v230;
              }

              if (BYTE1(v227))
              {
                v232 = v35;
                if (BYTE1(v227) != 255)
                {
                  v233 = v167->u32[1];
                  v232 = ((((v233 >> 8) & 0xFF00FF) * (BYTE1(v227) ^ 0xFF) + 65537 + (((((v233 >> 8) & 0xFF00FF) * (BYTE1(v227) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + *(v34 + 8 * BYTE1(v227)) + ((((v233 & 0xFF00FF) * (BYTE1(v227) ^ 0xFF) + 65537 + ((((v233 & 0xFF00FF) * (BYTE1(v227) ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                v167->i32[1] = v232;
              }

              if (BYTE2(v227))
              {
                v234 = v35;
                if (BYTE2(v227) != 255)
                {
                  v235 = v167->u32[2];
                  v234 = ((((v235 >> 8) & 0xFF00FF) * (BYTE2(v227) ^ 0xFF) + 65537 + (((((v235 >> 8) & 0xFF00FF) * (BYTE2(v227) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + *(v34 + 8 * BYTE2(v227)) + ((((v235 & 0xFF00FF) * (BYTE2(v227) ^ 0xFF) + 65537 + ((((v235 & 0xFF00FF) * (BYTE2(v227) ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                v167->i32[2] = v234;
              }

              v236 = HIBYTE(v227);
              if (v236 == 255)
              {
                v167->i32[3] = v35;
              }

              else if (v236)
              {
                v237 = v167->u32[3];
                v167->i32[3] = ((((v237 >> 8) & 0xFF00FF) * (v236 ^ 0xFF) + 65537 + (((((v237 >> 8) & 0xFF00FF) * (v236 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + *(v34 + 8 * v236) + ((((v237 & 0xFF00FF) * (v236 ^ 0xFF) + 65537 + ((((v237 & 0xFF00FF) * (v236 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
              }

LABEL_518:
              while (1)
              {
                v229 = result;
                ++v167;
                result = (result - 1);
                ++v166;
                if (v229 < 2)
                {
                  break;
                }

                v227 = *v166;
                if (*v166)
                {
                  goto LABEL_516;
                }
              }

              if (!v228)
              {
                break;
              }

              v228 = 0;
              v227 = *v166 & v171;
            }

            v166 = (v166 + v225);
            v167 = (v167 + 4 * v226);
            --v32;
          }

          while (v32);
        }

        return result;
      case 2:
        v247 = ~BYTE4(v35);
        v120 = v38 & 3;
        if (v3)
        {
          v121 = v120 + v257;
          v122 = &v36[-(v38 & 3)];
          v123 = &v30[-(v38 & 3)];
          if ((v38 & 3) != 0)
          {
            v124 = v38 & 0xFC;
          }

          else
          {
            v124 = v38;
          }

          if ((v38 & 3) != 0)
          {
            v125 = -1 << (8 * v120);
          }

          else
          {
            v125 = -1;
          }

          if ((v38 & 3) != 0)
          {
            v38 &= 0xFFFFFFFFFFFFFFFCLL;
            v30 = v123;
            v36 = v122;
          }

          else
          {
            v121 = v257;
          }

          if (((v121 + v124) & 3) != 0)
          {
            v126 = 4 - ((v121 + v124) & 3);
            v120 += v126;
            v127 = 0xFFFFFFFF >> (8 * v126);
            if (v121 >= 4)
            {
              v128 = 0xFFFFFFFF >> (8 * v126);
            }

            else
            {
              v128 = 0;
            }

            v258 = v128;
            if (v121 >= 4)
            {
              v127 = -1;
            }

            v244 = v127 & v125;
          }

          else
          {
            v244 = v125;
            v258 = 0;
          }

          v251 = v250 - v120;
          v241 = v254 - v120;
          v239 = v121 >> 2;
          v238 = v33 - v120;
          while (1)
          {
            v255 = v32;
            v178 = *v38 & v244;
            v179 = v239;
            v180 = v258;
            if (!v178)
            {
              goto LABEL_448;
            }

LABEL_446:
            if (v178 == -1)
            {
              break;
            }

            while (1)
            {
              if (v178)
              {
                result = DAplusDAM(v36, v30, *(v34 + 8 * v178), *(v34 + 8 * v178 + 4), *v36, *v30, ~*(v34 + 8 * v178 + 4));
              }

              if ((v178 & 0xFF00) != 0)
              {
                result = DAplusDAM(v36 + 1, v30 + 1, *(v34 + 8 * BYTE1(v178)), *(v34 + 8 * BYTE1(v178) + 4), v36[1], v30[1], ~*(v34 + 8 * BYTE1(v178) + 4));
              }

              if ((v178 & 0xFF0000) != 0)
              {
                result = DAplusDAM(v36 + 2, v30 + 2, *(v34 + 8 * BYTE2(v178)), *(v34 + 8 * BYTE2(v178) + 4), v36[2], v30[2], ~*(v34 + 8 * BYTE2(v178) + 4));
              }

              if (HIBYTE(v178))
              {
                v189 = (v34 + 8 * HIBYTE(v178));
                v187 = *v189;
                v181 = v36 + 3;
                v182 = v36[3];
                v183 = v30 + 3;
                v184 = v30[3];
                v185 = v189[1];
                v186 = ~*(v189 + 4);
                goto LABEL_461;
              }

LABEL_448:
              while (1)
              {
                v188 = v179;
                v36 += 4;
                v30 += 4;
                --v179;
                v38 += 4;
                if (v188 < 2)
                {
                  break;
                }

                v178 = *v38;
                if (*v38)
                {
                  goto LABEL_446;
                }
              }

              if (!v180)
              {
                break;
              }

              v180 = 0;
              v178 = *v38 & v258;
            }

            v38 += v251;
            v36 += v241;
            v30 += v238;
            v32 = v255 - 1;
            if (v255 == 1)
            {
              return result;
            }
          }

          DAplusDAM(v36, v30, v35, SBYTE4(v35), *v36, *v30, ~BYTE4(v35));
          DAplusDAM(v36 + 1, v30 + 1, v35, SBYTE4(v35), v36[1], v30[1], ~BYTE4(v35));
          DAplusDAM(v36 + 2, v30 + 2, v35, SBYTE4(v35), v36[2], v30[2], ~BYTE4(v35));
          v181 = v36 + 3;
          v182 = v36[3];
          v183 = v30 + 3;
          v184 = v30[3];
          v185 = BYTE4(v35);
          v186 = ~BYTE4(v35);
          v187 = v35;
LABEL_461:
          result = DAplusDAM(v181, v183, v187, v185, v182, v184, v186);
          goto LABEL_448;
        }

        v148 = -1 << (8 * v120);
        if ((v38 & 3) != 0)
        {
          v149 = v38 & 0xFC;
        }

        else
        {
          v149 = v38;
        }

        if ((v38 & 3) != 0)
        {
          v150 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v148 = -1;
          v150 = v38;
        }

        if ((v38 & 3) != 0)
        {
          v151 = &v36[-(v38 & 3)];
        }

        else
        {
          v151 = v36;
        }

        if ((v38 & 3) != 0)
        {
          v152 = v120 + v257;
        }

        else
        {
          v152 = v257;
        }

        if (((v152 + v149) & 3) != 0)
        {
          v153 = 4 - ((v152 + v149) & 3);
          v120 += v153;
          v154 = 0xFFFFFFFF >> (8 * v153);
          if (v152 >= 4)
          {
            v155 = v154;
          }

          else
          {
            v155 = 0;
          }

          if (v152 >= 4)
          {
            v154 = -1;
          }

          v148 &= v154;
        }

        else
        {
          v155 = 0;
        }

        v195 = v250 - v120;
        v196 = vdup_n_s32(v247);
        v197 = v152 >> 2;
        v198 = vdup_n_s32(v35);
        result = 255;
        v199 = v254 - v120;
        break;
      case 3:
        do
        {
          v66 = v257;
          do
          {
            v67 = *v38;
            if (*v38)
            {
              if (v67 == 255)
              {
                v68 = *(v34 + 8 * *v30);
                *v36 = v68;
                *v30 = BYTE4(v68);
              }

              else
              {
                v69 = *v30;
                v70 = v34 + 8 * ((v69 * v67 + ((v69 * v67) >> 8) + 1) >> 8);
                result = DAplusDAM(v36, v30, *v70, *(v70 + 4), *v36, v69, v67 ^ 0xFFu);
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v66;
          }

          while (v66);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 4:
        do
        {
          v51 = v257;
          do
          {
            v52 = *v38;
            if (*v38)
            {
              if (v52 == 255)
              {
                v53 = *(v34 + 8 * ~*v30);
                *v36 = v53;
                *v30 = BYTE4(v53);
              }

              else
              {
                v54 = *v30;
                v55 = v34 + 8 * (((v54 ^ 0xFF) * v52 + (((v54 ^ 0xFFu) * v52) >> 8) + 1) >> 8);
                result = DAplusDAM(v36, v30, *v55, *(v55 + 4), *v36, v54, v52 ^ 0xFFu);
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v51;
          }

          while (v51);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 5:
        do
        {
          v139 = v257;
          do
          {
            if (*v38)
            {
              result = DAMplusDAM(v36, v30, *(v34 + 8 * *v38), *(v34 + 8 * *v38 + 4), *v30, *v36, *v30, ~*(v34 + 8 * *v38 + 4));
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v139;
          }

          while (v139);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 6:
        do
        {
          v140 = v257;
          do
          {
            v141 = *v38;
            if (*v38 && *v30 != -1)
            {
              if (~*v30 == 255)
              {
                v142 = *(v34 + 8 * v141);
                *v36 = v142;
                *v30 = BYTE4(v142);
              }

              else
              {
                result = DAplusDAM(v36, v30, *v36, *v30, *(v34 + 8 * v141), *(v34 + 8 * v141 + 4), ~*v30);
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v140;
          }

          while (v140);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 7:
        if (v3)
        {
          do
          {
            v129 = v257;
            do
            {
              v130 = *v38;
              if (*v38)
              {
                if (v130 == 255)
                {
                  v131 = BYTE4(v35);
                }

                else
                {
                  v131 = (~v130 + ((BYTE4(v35) * v130 + ((BYTE4(v35) * v130) >> 8) + 1) >> 8));
                }

                result = PDAM_5790(*v36, *v30, v131);
                *v36 = result;
                *v30 = BYTE4(result);
              }

              ++v38;
              ++v36;
              v30 += v31;
              --v129;
            }

            while (v129);
            v38 += v250;
            v36 += v254;
            v30 += v246;
            --v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v156 = v257;
            do
            {
              v157 = *v38;
              if (*v38)
              {
                if (v157 == 255)
                {
                  v158 = ((*v36 >> 8) & 0xFF00FF) * BYTE4(v35);
                  v159 = (*v36 & 0xFF00FF) * BYTE4(v35);
                }

                else
                {
                  v160 = (~v157 + ((BYTE4(v35) * v157 + ((BYTE4(v35) * v157) >> 8) + 1) >> 8));
                  v158 = ((*v36 >> 8) & 0xFF00FF) * v160;
                  v159 = (*v36 & 0xFF00FF) * v160;
                }

                *v36 = ((v159 + 65537 + ((v159 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v158 + 65537 + ((v158 >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }

              ++v38;
              ++v36;
              --v156;
            }

            while (v156);
            v38 += v250;
            v36 += v254;
            --v32;
          }

          while (v32);
        }

        return result;
      case 8:
        if (v3)
        {
          do
          {
            v144 = v32;
            v145 = v257;
            do
            {
              v146 = *v38;
              if (*v38)
              {
                if (v146 == 255)
                {
                  v147 = ~BYTE4(v35);
                }

                else
                {
                  v147 = ~((BYTE4(v35) * v146 + ((BYTE4(v35) * v146) >> 8) + 1) >> 8);
                }

                result = PDAM_5790(*v36, *v30, v147);
                *v36 = result;
                *v30 = BYTE4(result);
              }

              ++v38;
              ++v36;
              v30 += v31;
              --v145;
            }

            while (v145);
            v38 += v250;
            v36 += v254;
            v30 += v246;
            v32 = v144 - 1;
          }

          while (v144 != 1);
        }

        else
        {
          v172 = ~BYTE4(v35);
          do
          {
            v173 = v257;
            do
            {
              v174 = *v38;
              if (*v38)
              {
                if (v174 == 255)
                {
                  v175 = ((*v36 >> 8) & 0xFF00FF) * v172;
                  v176 = (*v36 & 0xFF00FF) * v172;
                }

                else
                {
                  v177 = ~((BYTE4(v35) * v174 + ((BYTE4(v35) * v174) >> 8) + 1) >> 8);
                  v175 = ((*v36 >> 8) & 0xFF00FF) * v177;
                  v176 = (*v36 & 0xFF00FF) * v177;
                }

                result = (v176 >> 8) & 0xFF00FF;
                *v36 = ((v176 + 65537 + result) >> 8) & 0xFF00FF | (v175 + 65537 + ((v175 >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }

              ++v38;
              ++v36;
              --v173;
            }

            while (v173);
            v38 += v250;
            v36 += v254;
            --v32;
          }

          while (v32);
        }

        return result;
      case 9:
        do
        {
          v56 = v257;
          do
          {
            if (*v38)
            {
              result = DAMplusDAM(v36, v30, *(v34 + 8 * *v38), *(v34 + 8 * *v38 + 4), *v30 ^ 0xFFu, *v36, *v30, (*(v34 + 8 * *v38 + 4) + ~*v38));
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v56;
          }

          while (v56);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 10:
        do
        {
          v143 = v257;
          do
          {
            if (*v38)
            {
              result = DAMplusDAM(v36, v30, *(v34 + 8 * *v38), *(v34 + 8 * *v38 + 4), *v30 ^ 0xFFu, *v36, *v30, ~*(v34 + 8 * *v38 + 4));
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v143;
          }

          while (v143);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 11:
        if (v3)
        {
          do
          {
            v108 = v257;
            do
            {
              if (*v38)
              {
                result = DAplusdDA(v36, v30, *v36, *v30, *(v34 + 8 * *v38), *(v34 + 8 * *v38 + 4));
              }

              ++v38;
              ++v36;
              v30 += v31;
              --v108;
            }

            while (v108);
            v38 += v250;
            v36 += v254;
            v30 += v246;
            --v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v109 = v257;
            do
            {
              if (*v38)
              {
                result = DplusdDA(v36, *v36, *(v34 + 8 * *v38), *(v34 + 8 * *v38 + 4));
              }

              ++v38;
              ++v36;
              --v109;
            }

            while (v109);
            v38 += v250;
            v36 += v254;
            --v32;
          }

          while (v32);
        }

        return result;
      case 12:
        if (v3)
        {
          do
          {
            v110 = v257;
            do
            {
              if (*v38)
              {
                v111 = v34 + 8 * *v38;
                v112 = *(v111 + 4);
                LODWORD(v111) = *v111;
                v113 = ((v111 >> 8) & 0xFF00FF) + ((*v36 >> 8) & 0xFF00FF);
                LODWORD(v111) = (v111 & 0xFF00FF) + (*v36 & 0xFF00FF);
                v114 = v113 & 0x1000100 | (v111 >> 8) & 0x10001;
                v115 = v112 + *v30;
                result = (v113 << 8) & 0xFF00FF00;
                v116 = result | v111 & 0xFF00FF | (15 * v114) | (240 * v114);
                if (v115 >= 0xFF)
                {
                  LOBYTE(v115) = -1;
                }

                *v30 = v115;
                *v36 = v116;
              }

              ++v38;
              ++v36;
              v30 += v31;
              --v110;
            }

            while (v110);
            v38 += v250;
            v36 += v254;
            v30 += v29;
            --v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v117 = v257;
            do
            {
              if (*v38)
              {
                v118 = *(v34 + 8 * *v38);
                v119 = ((v118 >> 8) & 0xFF00FF) + ((*v36 >> 8) & 0xFF00FF);
                *v36 = (v119 << 8) & 0xFF00FF00 | ((v118 & 0xFF00FF) + (*v36 & 0xFF00FF)) & 0xFF00FF | (15 * (v119 & 0x1000100 | (((v118 & 0xFF00FF) + (*v36 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v119 & 0x1000100 | (((v118 & 0xFF00FF) + (*v36 & 0xFF00FF)) >> 8) & 0x10001));
              }

              ++v38;
              ++v36;
              --v117;
            }

            while (v117);
            v38 += v250;
            v36 += v254;
            --v32;
          }

          while (v32);
        }

        return result;
      case 13:
        do
        {
          v83 = v257;
          do
          {
            if (*v38)
            {
              v84 = *(v34 + 8 * *v38);
              if (BYTE4(v84))
              {
                v85 = HIDWORD(v84);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAmultiplyPDA_5791(*v36, *v30, v84, BYTE4(v84));
                    LODWORD(v84) = result;
                    v85 = HIDWORD(result);
                  }

                  *v36 = v84;
                  *v30 = v85;
                }

                else
                {
                  result = PDAmultiplyPDA_5791(*v36, 255, v84, BYTE4(v84));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v83;
          }

          while (v83);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 14:
        do
        {
          v48 = v257;
          do
          {
            if (*v38)
            {
              v49 = *(v34 + 8 * *v38);
              if (BYTE4(v49))
              {
                v50 = HIDWORD(v49);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAscreenPDA_5792(*v36, *v30, v49, BYTE4(v49));
                    LODWORD(v49) = result;
                    v50 = HIDWORD(result);
                  }

                  *v36 = v49;
                  *v30 = v50;
                }

                else
                {
                  result = PDAscreenPDA_5792(*v36, 0xFFu, v49, BYTE4(v49));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v48;
          }

          while (v48);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 15:
        do
        {
          v63 = v257;
          do
          {
            if (*v38)
            {
              v64 = *(v34 + 8 * *v38);
              if (BYTE4(v64))
              {
                v65 = HIDWORD(v64);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAoverlayPDA_5793(*v36, *v30, v64, BYTE4(v64));
                    LODWORD(v64) = result;
                    v65 = HIDWORD(result);
                  }

                  *v36 = v64;
                  *v30 = v65;
                }

                else
                {
                  result = PDAoverlayPDA_5793(*v36, 255, v64, BYTE4(v64));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v63;
          }

          while (v63);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 16:
        do
        {
          v45 = v257;
          do
          {
            if (*v38)
            {
              v46 = *(v34 + 8 * *v38);
              if (BYTE4(v46))
              {
                v47 = HIDWORD(v46);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAdarkenPDA_5795(*v36, *v30, v46, BYTE4(v46));
                    LODWORD(v46) = result;
                    v47 = HIDWORD(result);
                  }

                  *v36 = v46;
                  *v30 = v47;
                }

                else
                {
                  result = PDAdarkenPDA_5795(*v36, 0xFFu, v46, BYTE4(v46));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v45;
          }

          while (v45);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 17:
        do
        {
          v74 = v257;
          do
          {
            if (*v38)
            {
              v75 = *(v34 + 8 * *v38);
              if (BYTE4(v75))
              {
                v76 = HIDWORD(v75);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAlightenPDA_5794(*v36, *v30, v75, BYTE4(v75));
                    LODWORD(v75) = result;
                    v76 = HIDWORD(result);
                  }

                  *v36 = v75;
                  *v30 = v76;
                }

                else
                {
                  result = PDAlightenPDA_5794(*v36, 0xFFu, v75, BYTE4(v75));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v74;
          }

          while (v74);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 18:
        do
        {
          v86 = v257;
          do
          {
            if (*v38)
            {
              v87 = *(v34 + 8 * *v38);
              if (BYTE4(v87))
              {
                v88 = HIDWORD(v87);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAcolordodgePDA_5796(*v36, *v30, v87, BYTE4(v87));
                    LODWORD(v87) = result;
                    v88 = HIDWORD(result);
                  }

                  *v36 = v87;
                  *v30 = v88;
                }

                else
                {
                  result = PDAcolordodgePDA_5796(*v36, 255, v87, BYTE4(v87));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v86;
          }

          while (v86);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 19:
        do
        {
          v94 = v257;
          do
          {
            if (*v38)
            {
              v95 = *(v34 + 8 * *v38);
              if (BYTE4(v95))
              {
                v96 = HIDWORD(v95);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAcolorburnPDA_5797(*v36, *v30, v95, BYTE4(v95));
                    LODWORD(v95) = result;
                    v96 = HIDWORD(result);
                  }

                  *v36 = v95;
                  *v30 = v96;
                }

                else
                {
                  result = PDAcolorburnPDA_5797(*v36, 255, v95, BYTE4(v95));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v94;
          }

          while (v94);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 20:
        do
        {
          v77 = v257;
          do
          {
            if (*v38)
            {
              v78 = *(v34 + 8 * *v38);
              if (BYTE4(v78))
              {
                v79 = HIDWORD(v78);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAsoftlightPDA_5799(*v36, *v30, v78, BYTE4(v78));
                    LODWORD(v78) = result;
                    v79 = HIDWORD(result);
                  }

                  *v36 = v78;
                  *v30 = v79;
                }

                else
                {
                  result = PDAsoftlightPDA_5799(*v36, 255, v78, BYTE4(v78));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v77;
          }

          while (v77);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 21:
        do
        {
          v80 = v257;
          do
          {
            if (*v38)
            {
              v81 = *(v34 + 8 * *v38);
              if (BYTE4(v81))
              {
                v82 = HIDWORD(v81);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAhardlightPDA_5798(*v36, *v30, v81, BYTE4(v81));
                    LODWORD(v81) = result;
                    v82 = HIDWORD(result);
                  }

                  *v36 = v81;
                  *v30 = v82;
                }

                else
                {
                  result = PDAhardlightPDA_5798(*v36, 255, v81, BYTE4(v81));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v80;
          }

          while (v80);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 22:
        do
        {
          v91 = v257;
          do
          {
            if (*v38)
            {
              v92 = *(v34 + 8 * *v38);
              if (BYTE4(v92))
              {
                v93 = HIDWORD(v92);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAdifferencePDA_5800(*v36, *v30, v92, BYTE4(v92), v11, v12, v13, v14, v15, v16, v17, v18);
                    LODWORD(v92) = result;
                    v93 = HIDWORD(result);
                  }

                  *v36 = v92;
                  *v30 = v93;
                }

                else
                {
                  result = PDAdifferencePDA_5800(*v36, 0xFFu, v92, BYTE4(v92), v11, v12, v13, v14, v15, v16, v17, v18);
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v91;
          }

          while (v91);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 23:
        do
        {
          v97 = v257;
          do
          {
            if (*v38)
            {
              v98 = *(v34 + 8 * *v38);
              if (BYTE4(v98))
              {
                v99 = HIDWORD(v98);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAexclusionPDA_5801(*v36, *v30, v98, BYTE4(v98));
                    LODWORD(v98) = result;
                    v99 = HIDWORD(result);
                  }

                  *v36 = v98;
                  *v30 = v99;
                }

                else
                {
                  result = PDAexclusionPDA_5801(*v36, 255, v98, BYTE4(v98));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v97;
          }

          while (v97);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 24:
        do
        {
          v60 = v257;
          do
          {
            if (*v38)
            {
              v61 = *(v34 + 8 * *v38);
              if (BYTE4(v61))
              {
                v62 = HIDWORD(v61);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAhuePDA_5802(*v36, *v30, v61, BYTE4(v61));
                    LODWORD(v61) = result;
                    v62 = HIDWORD(result);
                  }

                  *v36 = v61;
                  *v30 = v62;
                }

                else
                {
                  result = PDAhuePDA_5802(*v36, 255, v61, BYTE4(v61));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v60;
          }

          while (v60);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 25:
        do
        {
          v57 = v257;
          do
          {
            if (*v38)
            {
              v58 = *(v34 + 8 * *v38);
              if (BYTE4(v58))
              {
                v59 = HIDWORD(v58);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAsaturationPDA_5803(*v36, *v30, v58, BYTE4(v58));
                    LODWORD(v58) = result;
                    v59 = HIDWORD(result);
                  }

                  *v36 = v58;
                  *v30 = v59;
                }

                else
                {
                  result = PDAsaturationPDA_5803(*v36, 255, v58, BYTE4(v58));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v57;
          }

          while (v57);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 26:
        do
        {
          v106 = v257;
          do
          {
            if (*v38)
            {
              result = *(v34 + 8 * *v38);
              if (BYTE4(result))
              {
                v107 = HIDWORD(result);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAluminosityPDA_5804(result, BYTE4(result), *v36, *v30);
                    v107 = HIDWORD(result);
                  }

                  *v36 = result;
                  *v30 = v107;
                }

                else
                {
                  result = PDAluminosityPDA_5804(result, BYTE4(result), *v36, 255);
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v106;
          }

          while (v106);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 27:
        do
        {
          v42 = v257;
          do
          {
            if (*v38)
            {
              v43 = *(v34 + 8 * *v38);
              if (BYTE4(v43))
              {
                v44 = HIDWORD(v43);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAluminosityPDA_5804(*v36, *v30, v43, BYTE4(v43));
                    LODWORD(v43) = result;
                    v44 = HIDWORD(result);
                  }

                  *v36 = v43;
                  *v30 = v44;
                }

                else
                {
                  result = PDAluminosityPDA_5804(*v36, 255, v43, BYTE4(v43));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v42;
          }

          while (v42);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 28:
        do
        {
          v100 = v257;
          do
          {
            if (*v38)
            {
              v101 = *(v34 + 8 * *v38);
              if (BYTE4(v101))
              {
                v102 = HIDWORD(v101);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAtranspose_huePDA(*v36, *v30, v101, BYTE4(v101));
                    LODWORD(v101) = result;
                    v102 = HIDWORD(result);
                  }

                  *v36 = v101;
                  *v30 = v102;
                }

                else
                {
                  result = PDAtranspose_huePDA(*v36, 255, v101, BYTE4(v101));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v100;
          }

          while (v100);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 29:
        do
        {
          v103 = v257;
          do
          {
            if (*v38)
            {
              v104 = *(v34 + 8 * *v38);
              if (BYTE4(v104))
              {
                v105 = HIDWORD(v104);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAtranspose_saturationPDA(*v36, *v30, v104, BYTE4(v104));
                    LODWORD(v104) = result;
                    v105 = HIDWORD(result);
                  }

                  *v36 = v104;
                  *v30 = v105;
                }

                else
                {
                  result = PDAtranspose_saturationPDA(*v36, 255, v104, BYTE4(v104));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v103;
          }

          while (v103);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 30:
        do
        {
          v89 = v257;
          do
          {
            if (*v38)
            {
              result = *(v34 + 8 * *v38);
              if (BYTE4(result))
              {
                v90 = HIDWORD(result);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAtranspose_luminosityPDA(result, BYTE4(result), *v36, *v30);
                    v90 = HIDWORD(result);
                  }

                  *v36 = result;
                  *v30 = v90;
                }

                else
                {
                  result = PDAtranspose_luminosityPDA(result, BYTE4(result), *v36, 255);
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v89;
          }

          while (v89);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      case 31:
        do
        {
          v71 = v257;
          do
          {
            if (*v38)
            {
              v72 = *(v34 + 8 * *v38);
              if (BYTE4(v72))
              {
                v73 = HIDWORD(v72);
                if (v3)
                {
                  if (*v30)
                  {
                    result = PDAtranspose_luminosityPDA(*v36, *v30, v72, BYTE4(v72));
                    LODWORD(v72) = result;
                    v73 = HIDWORD(result);
                  }

                  *v36 = v72;
                  *v30 = v73;
                }

                else
                {
                  result = PDAtranspose_luminosityPDA(*v36, 255, v72, BYTE4(v72));
                  *v36 = result;
                }
              }
            }

            ++v38;
            ++v36;
            v30 += v31;
            --v71;
          }

          while (v71);
          v38 += v250;
          v36 += v254;
          v30 += v246;
          --v32;
        }

        while (v32);
        return result;
      default:
        return result;
    }

    while (1)
    {
      v200 = *v150 & v148;
      v201 = v197;
      v202 = v155;
      if (!v200)
      {
        goto LABEL_497;
      }

LABEL_495:
      if (v200 == -1)
      {
        break;
      }

      while (1)
      {
        if (v200)
        {
          v213 = v34 + 8 * v200;
          v214 = *v213;
          LODWORD(v213) = ~*(v213 + 4);
          v151->i32[0] = ((v213 * ((v151->i32[0] >> 8) & 0xFF00FF) + 65537 + (((v213 * ((v151->i32[0] >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v214 + (((v213 * (v151->i32[0] & 0xFF00FF) + 65537 + (((v213 * (v151->i32[0] & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
        }

        if ((v200 & 0xFF00) != 0)
        {
          v215 = v34 + 8 * BYTE1(v200);
          v216 = *v215;
          LODWORD(v215) = ~*(v215 + 4);
          v151->i32[1] = ((v215 * ((v151->i32[1] >> 8) & 0xFF00FF) + 65537 + (((v215 * ((v151->i32[1] >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v216 + (((v215 * (v151->i32[1] & 0xFF00FF) + 65537 + (((v215 * (v151->i32[1] & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
        }

        if ((v200 & 0xFF0000) != 0)
        {
          v217 = v34 + 8 * BYTE2(v200);
          v218 = *v217;
          LODWORD(v217) = ~*(v217 + 4);
          v151[1].i32[0] = ((v217 * ((v151[1].i32[0] >> 8) & 0xFF00FF) + 65537 + (((v217 * ((v151[1].i32[0] >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v218 + (((v217 * (v151[1].i32[0] & 0xFF00FF) + 65537 + (((v217 * (v151[1].i32[0] & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
        }

        v219 = HIBYTE(v200);
        if (v219)
        {
          v220 = (v34 + 8 * v219);
          v211 = *v220;
          v221 = v151[1].u32[1];
          v222 = ~*(v220 + 4);
          v209 = v222 * ((v221 >> 8) & 0xFF00FF);
          v210 = v222 * (v221 & 0xFF00FF);
          goto LABEL_510;
        }

LABEL_497:
        while (1)
        {
          v212 = v201;
          v151 += 2;
          --v201;
          ++v150;
          if (v212 < 2)
          {
            break;
          }

          v200 = *v150;
          if (*v150)
          {
            goto LABEL_495;
          }
        }

        if (!v202)
        {
          break;
        }

        v202 = 0;
        v200 = *v150 & v155;
      }

      v150 = (v150 + v195);
      v151 = (v151 + 4 * v199);
      if (!--v32)
      {
        return result;
      }
    }

    v203.i16[0] = v151->u8[0];
    v203.i16[1] = BYTE2(v151->u32[0]);
    v203.i16[2] = BYTE4(*v151);
    v203.i16[3] = BYTE6(*v151);
    v204 = vmul_s32((*&vshr_n_u32(*v151, 8uLL) & 0xFFFF00FFFFFF00FFLL), v196);
    v205 = vmul_s32(v203, v196);
    *v151 = vadd_s32(vadd_s32((*&vadd_s32(vadd_s32(v204, 0x1000100010001), (*&vshr_n_u32(v204, 8uLL) & 0xFFFF00FFFFFF00FFLL)) & 0xFF00FF00FF00FF00), v198), (*&vshr_n_u32(vadd_s32(vadd_s32(v205, 0x1000100010001), (*&vshr_n_u32(v205, 8uLL) & 0xFFFF00FFFFFF00FFLL)), 8uLL) & 0xFFFF00FFFFFF00FFLL));
    v206 = v151[1].u32[0];
    v207 = v151[1].u32[1];
    v151[1].i32[0] = ((((v206 >> 8) & 0xFF00FF) * v247 + 65537 + (((((v206 >> 8) & 0xFF00FF) * v247) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v35 + ((((v206 & 0xFF00FF) * v247 + 65537 + ((((v206 & 0xFF00FF) * v247) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
    v208 = v207 & 0xFF00FF;
    v209 = ((v207 >> 8) & 0xFF00FF) * v247;
    v210 = v208 * v247;
    v211 = v35;
LABEL_510:
    v151[1].i32[1] = ((v209 + 65537 + ((v209 >> 8) & 0xFF00FF)) & 0xFF00FF00) + v211 + (((v210 + 65537 + ((v210 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
    goto LABEL_497;
  }

  return result;
}

unint64_t cmyk32_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 136);
  v4 = *(result + 12);
  v5 = *(result + 16);
  if (v2)
  {
    v6 = *(result + 32);
    v7 = (v2 + v6 * v5 + v4);
    v8 = -1;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    if (!v3)
    {
      return result;
    }
  }

  v9 = *(result + 4);
  v10 = *(result + 8);
  v11 = *(result + 96);
  v584 = *(result + 88);
  v12 = *(result + 28) >> 2;
  v13 = (*(result + 40) + 4 * v12 * v5 + 4 * v4);
  v14 = *(result + 124);
  v15 = (v3 + *(result + 108) * v14 + *(result + 104));
  v16 = *(result + 56);
  v17 = *(result + 60);
  v18 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v20 = *(result + 64);
    v21 = *(result + 68);
    v554 = v18 >> 2;
    if (v11)
    {
      v552 = *(result + 80);
      v19 = 1;
    }

    else
    {
      v552 = 0;
      v19 = 0;
    }

    v22 = *(result + 88);
    result = v584 + 4 * v554 * v21;
    v8 &= 1u;
    v27 = 1;
    v28 = v584;
    goto LABEL_19;
  }

  v554 = v18 >> 2;
  if (v11)
  {
    v552 = *(result + 80);
    v11 += v552 * v17 + v16;
    v19 = -1;
  }

  else
  {
    v552 = 0;
    v19 = 0;
  }

  v22 = (v584 + 4 * v554 * v17 + 4 * v16);
  if (v554 == v12)
  {
    v23 = v13 - v22;
    if (v23 >= 1)
    {
      if (v23 <= v9)
      {
        v13 += v9 - 1;
        v22 += v9 - 1;
        v15 += v9 - 1;
        v7 += v8 & (v9 - 1);
        v27 = -1;
        v554 = *(result + 28) >> 2;
        v11 += v19 & (v9 - 1);
        goto LABEL_16;
      }

      v24 = v10 - 1;
      v25 = v12 * v24;
      v26 = &v22[v12 * v24];
      if (v13 <= &v26[v9 - 1])
      {
        v12 = -v12;
        v15 += v14 * v24;
        v14 = -v14;
        v7 += v6 * v24;
        v6 = -v6;
        v8 &= 1u;
        v11 += v552 * v24;
        v552 = -v552;
        v19 &= 1u;
        v27 = 1;
        v22 = v26;
        v554 = v12;
        v13 += v25;
        goto LABEL_16;
      }
    }
  }

  v8 &= 1u;
  v19 &= 1u;
  v27 = 1;
LABEL_16:
  result = 0;
  v28 = 0;
  v584 = -1;
  v21 = v552;
  v20 = v554;
LABEL_19:
  v557 = v10;
  v558 = v8;
  v29 = v27 * v9;
  v553 = v9;
  v549 = result;
  v574 = v19;
  if (result)
  {
    v30 = v17 % v21;
    v31 = &v22[v554 * v30];
    result = v16 % v20;
    v22 = &v31[result];
    v32 = v20;
    v584 = &v31[v20];
    v33 = &v11[v552 * v30 + result];
    if (v19)
    {
      v11 = v33;
    }

    v555 = v11;
    v556 = &v31[result];
  }

  else
  {
    v555 = v11;
    v556 = v28;
    v554 -= v29;
    v552 -= v19 * v9;
    v32 = v20;
  }

  v551 = v14 - v29;
  v550 = v12 - v29;
  v537 = v6 - v8 * v9;
  v34 = v27;
  v35 = v21;
  switch(a2)
  {
    case 0:
      if (v8)
      {
        do
        {
          v36 = v553;
          v37 = v557;
          do
          {
            v38 = *v15;
            if (*v15)
            {
              if (v38 == 255)
              {
                LOBYTE(v39) = 0;
                *v13 = 0;
              }

              else
              {
                result = PDAM_5790(*v13, *v7, v38 ^ 0xFFu);
                *v13 = result;
                v39 = HIDWORD(result);
              }

              *v7 = v39;
            }

            v15 += v34;
            v7 += v558;
            v13 += v34;
            --v36;
          }

          while (v36);
          v15 += v551;
          v13 += v550;
          v7 += v537;
          --v557;
        }

        while (v37 != 1);
      }

      else
      {
        do
        {
          v445 = v9;
          v446 = v557;
          do
          {
            v447 = *v15;
            if (*v15)
            {
              if (v447 == 255)
              {
                v448 = 0;
              }

              else
              {
                v448 = (((*v13 & 0xFF00FF) * (v447 ^ 0xFF) + 65537 + ((((*v13 & 0xFF00FF) * (v447 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v13 >> 8) & 0xFF00FF) * (v447 ^ 0xFF) + 65537 + (((((*v13 >> 8) & 0xFF00FF) * (v447 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }

              *v13 = v448;
            }

            v15 += v34;
            v13 += v34;
            --v445;
          }

          while (v445);
          v15 += v551;
          v13 += v550;
          --v557;
        }

        while (v446 != 1);
      }

      return result;
    case 1:
      if (v8)
      {
        v187 = v8;
        v566 = v8;
        if (v19)
        {
          v188 = v19;
          v189 = -v32;
          v578 = -(v554 * v35);
          v544 = -(v552 * v35);
          v190 = v555;
          do
          {
            v191 = v553;
            do
            {
              v192 = *v15;
              if (*v15)
              {
                if (v192 == 255)
                {
                  *v13 = *v22;
                  *v7 = *v190;
                }

                else
                {
                  result = DAMplusDAM(v13, v7, *v22, *v190, v192, *v13, *v7, v192 ^ 0xFFu);
                  v187 = v566;
                }
              }

              v15 += v34;
              v7 += v187;
              v193 = &v22[v34];
              if (v193 >= v584)
              {
                v194 = v189;
              }

              else
              {
                v194 = 0;
              }

              v190 += v188 + v194;
              v22 = &v193[v194];
              v13 += v34;
              --v191;
            }

            while (v191);
            if (v549)
            {
              v195 = &v556[v554];
              v196 = v544;
              if (v195 < v549)
              {
                v196 = 0;
              }

              v190 = &v555[v552 + v196];
              v197 = v578;
              if (v195 < v549)
              {
                v197 = 0;
              }

              v22 = &v195[v197];
              v584 += 4 * v197 + 4 * v554;
              v555 += v552 + v196;
              v556 = v22;
            }

            else
            {
              v22 += v554;
              v190 += v552;
            }

            v15 += v551;
            v13 += v550;
            v7 += v537;
            --v557;
          }

          while (v557);
        }

        else
        {
          v476 = -v32;
          v477 = -(v554 * v35);
          do
          {
            v478 = v553;
            do
            {
              v479 = *v15;
              if (*v15)
              {
                if (v479 == 255)
                {
                  *v13 = *v22;
                  *v7 = -1;
                }

                else
                {
                  result = DAMplusDAM(v13, v7, *v22, 255, v479, *v13, *v7, v479 ^ 0xFFu);
                  v187 = v566;
                }
              }

              v15 += v34;
              v7 += v187;
              v480 = &v22[v34];
              if (v480 >= v584)
              {
                v481 = v476;
              }

              else
              {
                v481 = 0;
              }

              v22 = &v480[v481];
              v13 += v34;
              --v478;
            }

            while (v478);
            v15 += v551;
            v13 += v550;
            v7 += v537;
            v482 = v556;
            v483 = &v556[v554];
            if (v483 >= v549)
            {
              v484 = v477;
            }

            else
            {
              v484 = 0;
            }

            v485 = v584;
            v486 = &v483[v484];
            v487 = v584 + 4 * v484 + 4 * v554;
            if (v549)
            {
              v485 = v487;
            }

            v584 = v485;
            if (v549)
            {
              v482 = v486;
              v22 = v486;
            }

            else
            {
              v22 += v554;
            }

            v488 = v557 == 1;
            v556 = v482;
            --v557;
          }

          while (!v488);
        }
      }

      else
      {
        v449 = -v32;
        v450 = -(v554 * v21);
        do
        {
          v451 = v553;
          v452 = v557;
          do
          {
            v453 = *v15;
            if (*v15)
            {
              if (v453 == 255)
              {
                *v13 = *v22;
              }

              else
              {
                result = DMplusDM(v13, *v22, v453, *v13, v453 ^ 0xFFu);
              }
            }

            v15 += v34;
            v454 = &v22[v34];
            if (v454 >= v584)
            {
              v455 = v449;
            }

            else
            {
              v455 = 0;
            }

            v22 = &v454[v455];
            v13 += v34;
            --v451;
          }

          while (v451);
          v15 += v551;
          v13 += v550;
          v456 = v556;
          v457 = &v556[v554];
          if (v457 >= v549)
          {
            v458 = v450;
          }

          else
          {
            v458 = 0;
          }

          v459 = v584;
          v460 = &v457[v458];
          v461 = v584 + 4 * v458 + 4 * v554;
          if (v549)
          {
            v459 = v461;
          }

          v584 = v459;
          if (v549)
          {
            v456 = v460;
            v22 = v460;
          }

          else
          {
            v22 += v554;
          }

          v556 = v456;
          --v557;
        }

        while (v452 != 1);
      }

      return result;
    case 2:
      if (v8)
      {
        v563 = v8;
        v138 = v19;
        v139 = -v32;
        v576 = -(v554 * v21);
        v541 = -(v552 * v21);
        v140 = v555;
        while (1)
        {
          v141 = v553;
          do
          {
            v142 = *v15;
            if (!*v15)
            {
              goto LABEL_259;
            }

            if (v142 == 255)
            {
              v143 = *v140;
              if (!*v140)
              {
                goto LABEL_259;
              }

              if (v143 == 255)
              {
                *v13 = *v22;
                *v7 = -1;
                goto LABEL_259;
              }

              v144 = *v22;
              v145 = *v13;
              v146 = *v7;
              v147 = v143 ^ 0xFF;
              v148 = v13;
              v149 = v7;
            }

            else
            {
              result = PDAM_5790(*v22, *v140, v142);
              if (!HIDWORD(result))
              {
                goto LABEL_259;
              }

              v144 = result;
              v145 = *v13;
              v146 = *v7;
              LOBYTE(v143) = BYTE4(result);
              v147 = ~BYTE4(result);
              v148 = v13;
              v149 = v7;
            }

            result = DAplusDAM(v148, v149, v144, v143, v145, v146, v147);
LABEL_259:
            v15 += v34;
            v7 += v563;
            v150 = &v22[v34];
            if (v150 >= v584)
            {
              v151 = v139;
            }

            else
            {
              v151 = 0;
            }

            v140 += v138 + v151;
            v22 = &v150[v151];
            v13 += v34;
            --v141;
          }

          while (v141);
          if (v549)
          {
            v152 = &v556[v554];
            v153 = v541;
            if (v152 < v549)
            {
              v153 = 0;
            }

            v140 = &v555[v552 + v153];
            v154 = v576;
            if (v152 < v549)
            {
              v154 = 0;
            }

            v22 = &v152[v154];
            v584 += 4 * v154 + 4 * v554;
            v555 += v552 + v153;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v140 += v552;
          }

          v15 += v551;
          v13 += v550;
          v7 += v537;
          if (!--v557)
          {
            return result;
          }
        }
      }

      v416 = v19;
      v417 = -v32;
      v582 = -(v554 * v21);
      v572 = -(v552 * v21);
      v418 = v555;
      break;
    case 3:
      v564 = v8;
      v166 = -v32;
      v167 = v555;
      v542 = -(v554 * v21);
      v520 = -(v552 * v21);
      do
      {
        v168 = v553;
        do
        {
          v169 = *v15;
          if (*v15)
          {
            if (v169 == 255)
            {
              if (v574)
              {
                v170 = *v167;
              }

              else
              {
                v170 = 255;
              }

              result = PDAM_5790(*v22, v170, *v7);
              *v13 = result;
              *v7 = BYTE4(result);
            }

            else
            {
              if (v574)
              {
                v171 = *v167;
              }

              else
              {
                v171 = 255;
              }

              result = DAMplusDAM(v13, v7, *v22, v171, ((*v7 * v169 + ((*v7 * v169) >> 8) + 1) >> 8), *v13, *v7, v169 ^ 0xFFu);
            }
          }

          v15 += v34;
          v7 += v564;
          v172 = &v22[v34];
          if (v172 >= v584)
          {
            v173 = v166;
          }

          else
          {
            v173 = 0;
          }

          v167 += v574 + v173;
          v22 = &v172[v173];
          v13 += v34;
          --v168;
        }

        while (v168);
        if (v549)
        {
          v174 = &v556[v554];
          v175 = v520;
          if (v174 < v549)
          {
            v175 = 0;
          }

          v167 = &v555[v552 + v175];
          v176 = v542;
          if (v174 < v549)
          {
            v176 = 0;
          }

          v22 = &v174[v176];
          v584 += 4 * v176 + 4 * v554;
          v555 += v552 + v175;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v167 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 4:
      v560 = v8;
      v83 = -v32;
      v84 = v555;
      v539 = -(v554 * v21);
      v514 = -(v552 * v21);
      do
      {
        v85 = v553;
        do
        {
          v86 = *v15;
          if (*v15)
          {
            if (v86 == 255)
            {
              if (v574)
              {
                v87 = *v84;
              }

              else
              {
                v87 = 255;
              }

              result = PDAM_5790(*v22, v87, *v7 ^ 0xFFu);
              *v13 = result;
              *v7 = BYTE4(result);
            }

            else
            {
              if (v574)
              {
                v88 = *v84;
              }

              else
              {
                v88 = 255;
              }

              result = DAMplusDAM(v13, v7, *v22, v88, (((*v7 ^ 0xFF) * v86 + (((*v7 ^ 0xFFu) * v86) >> 8) + 1) >> 8), *v13, *v7, v86 ^ 0xFFu);
            }
          }

          v15 += v34;
          v7 += v560;
          v89 = &v22[v34];
          if (v89 >= v584)
          {
            v90 = v83;
          }

          else
          {
            v90 = 0;
          }

          v84 += v574 + v90;
          v22 = &v89[v90];
          v13 += v34;
          --v85;
        }

        while (v85);
        if (v549)
        {
          v91 = &v556[v554];
          v92 = v514;
          if (v91 < v549)
          {
            v92 = 0;
          }

          v84 = &v555[v552 + v92];
          v93 = v539;
          if (v91 < v549)
          {
            v93 = 0;
          }

          v22 = &v91[v93];
          v584 += 4 * v93 + 4 * v554;
          v555 += v552 + v92;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v84 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 5:
      v567 = v8;
      v579 = v19;
      v231 = -v32;
      v232 = v555;
      v545 = -(v554 * v21);
      v524 = -(v552 * v21);
      do
      {
        v233 = v553;
        do
        {
          if (*v15)
          {
            v234 = *v7;
            v235 = PDAM_5790(*v22, *v232, *v15);
            result = DAMplusDAM(v13, v7, v235, BYTE4(v235), v234, *v13, v234, ~BYTE4(v235));
          }

          v15 += v34;
          v7 += v567;
          v236 = &v22[v34];
          if (v236 >= v584)
          {
            v237 = v231;
          }

          else
          {
            v237 = 0;
          }

          v232 += v579 + v237;
          v22 = &v236[v237];
          v13 += v34;
          --v233;
        }

        while (v233);
        if (v549)
        {
          v238 = &v556[v554];
          v239 = v524;
          if (v238 < v549)
          {
            v239 = 0;
          }

          v232 = &v555[v552 + v239];
          v240 = v545;
          if (v238 < v549)
          {
            v240 = 0;
          }

          v22 = &v238[v240];
          v584 += 4 * v240 + 4 * v554;
          v555 += v552 + v239;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v232 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 6:
      v263 = v8;
      v264 = -v32;
      v265 = v555;
      v546 = -(v554 * v21);
      v527 = -(v552 * v21);
      v568 = v8;
      do
      {
        v266 = v553;
        do
        {
          v267 = *v15;
          if (*v15 && *v7 != 0xFF)
          {
            if (~*v7 == 255)
            {
              if (v574)
              {
                v268 = *v265;
              }

              else
              {
                v268 = 255;
              }

              result = PDAM_5790(*v22, v268, v267);
              *v13 = result;
              *v7 = BYTE4(result);
            }

            else
            {
              if (v574)
              {
                v269 = *v265;
              }

              else
              {
                v269 = 255;
              }

              result = DAplusDAM(v13, v7, *v13, *v7, *v22, v269, ((~*v7 * v267 + ((~*v7 * v267) >> 8) + 1) >> 8));
            }

            v263 = v568;
          }

          v15 += v34;
          v7 += v263;
          v270 = &v22[v34];
          if (v270 >= v584)
          {
            v271 = v264;
          }

          else
          {
            v271 = 0;
          }

          v265 += v574 + v271;
          v22 = &v270[v271];
          v13 += v34;
          --v266;
        }

        while (v266);
        if (v549)
        {
          v272 = &v556[v554];
          v273 = v527;
          if (v272 < v549)
          {
            v273 = 0;
          }

          v265 = &v555[v552 + v273];
          v274 = v546;
          if (v272 < v549)
          {
            v274 = 0;
          }

          v22 = &v272[v274];
          v584 += 4 * v274 + 4 * v554;
          v555 += v552 + v273;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v265 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 7:
      if (v8)
      {
        v565 = v8;
        v177 = v19;
        v178 = -v32;
        v577 = -(v554 * v21);
        v543 = -(v552 * v21);
        v179 = v555;
        do
        {
          v180 = v553;
          do
          {
            v181 = *v15;
            if (*v15)
            {
              if (v181 == 255)
              {
                result = PDAM_5790(*v13, *v7, *v179);
                *v13 = result;
                *v7 = BYTE4(result);
              }

              else
              {
                result = DAMplusDAM(v13, v7, *v13, *v7, ((*v179 * v181 + ((*v179 * v181) >> 8) + 1) >> 8), *v13, *v7, v181 ^ 0xFFu);
              }
            }

            v15 += v34;
            v7 += v565;
            v182 = &v22[v34];
            if (v182 >= v584)
            {
              v183 = v178;
            }

            else
            {
              v183 = 0;
            }

            v179 += v177 + v183;
            v22 = &v182[v183];
            v13 += v34;
            --v180;
          }

          while (v180);
          if (v549)
          {
            v184 = &v556[v554];
            v185 = v543;
            if (v184 < v549)
            {
              v185 = 0;
            }

            v179 = &v555[v552 + v185];
            v186 = v577;
            if (v184 < v549)
            {
              v186 = 0;
            }

            v22 = &v184[v186];
            v584 += 4 * v186 + 4 * v554;
            v555 += v552 + v185;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v179 += v552;
          }

          v15 += v551;
          v13 += v550;
          v7 += v537;
          --v557;
        }

        while (v557);
      }

      else
      {
        v434 = v19;
        v435 = -v32;
        v583 = -(v554 * v21);
        v573 = -(v552 * v21);
        v436 = v555;
        do
        {
          v437 = v553;
          do
          {
            v438 = *v15;
            if (*v15)
            {
              if (v438 == 255)
              {
                v439 = *v436;
                *v13 = (((*v13 & 0xFF00FF) * v439 + 65537 + ((((*v13 & 0xFF00FF) * v439) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v13 >> 8) & 0xFF00FF) * v439 + 65537 + (((((*v13 >> 8) & 0xFF00FF) * v439) >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }

              else
              {
                result = DMplusDM(v13, *v13, ((*v436 * v438 + ((*v436 * v438) >> 8) + 1) >> 8), *v13, v438 ^ 0xFFu);
              }
            }

            v15 += v34;
            v440 = &v22[v34];
            if (v440 >= v584)
            {
              v441 = v435;
            }

            else
            {
              v441 = 0;
            }

            v436 += v434 + v441;
            v22 = &v440[v441];
            v13 += v34;
            --v437;
          }

          while (v437);
          if (v549)
          {
            v442 = &v556[v554];
            v443 = v573;
            if (v442 < v549)
            {
              v443 = 0;
            }

            v436 = &v555[v552 + v443];
            v444 = v583;
            if (v442 < v549)
            {
              v444 = 0;
            }

            v22 = &v442[v444];
            v584 += 4 * v444 + 4 * v554;
            v555 += v552 + v443;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v436 += v552;
          }

          v15 += v551;
          v13 += v550;
          --v557;
        }

        while (v557);
      }

      return result;
    case 8:
      if (v8)
      {
        v570 = v8;
        v296 = v19;
        v297 = -v32;
        v581 = -(v554 * v21);
        v548 = -(v552 * v21);
        v298 = v555;
        do
        {
          v299 = v553;
          do
          {
            v300 = *v15;
            if (*v15)
            {
              if (v300 == 255)
              {
                v301 = *v298 ^ 0xFF;
              }

              else
              {
                v301 = ~((*v298 * v300 + ((*v298 * v300) >> 8) + 1) >> 8);
              }

              result = PDAM_5790(*v13, *v7, v301);
              *v13 = result;
              *v7 = BYTE4(result);
            }

            v15 += v34;
            v7 += v570;
            v302 = &v22[v34];
            if (v302 >= v584)
            {
              v303 = v297;
            }

            else
            {
              v303 = 0;
            }

            v298 += v296 + v303;
            v22 = &v302[v303];
            v13 += v34;
            --v299;
          }

          while (v299);
          if (v549)
          {
            v304 = &v556[v554];
            v305 = v548;
            if (v304 < v549)
            {
              v305 = 0;
            }

            v298 = &v555[v552 + v305];
            v306 = v581;
            if (v304 < v549)
            {
              v306 = 0;
            }

            v22 = &v304[v306];
            v584 += 4 * v306 + 4 * v554;
            v555 += v552 + v305;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v298 += v552;
          }

          v15 += v551;
          v13 += v550;
          v7 += v537;
          --v557;
        }

        while (v557);
      }

      else
      {
        v462 = -v32;
        v463 = v555;
        do
        {
          v464 = v553;
          v465 = v557;
          do
          {
            v466 = *v15;
            if (*v15)
            {
              if (v466 == 255)
              {
                v467 = *v463 ^ 0xFF;
                v468 = *v13 & 0xFF00FF;
                v469 = ((*v13 >> 8) & 0xFF00FF) * v467;
              }

              else
              {
                v467 = *v13 & 0xFF00FF;
                v468 = ((*v463 * v466 + ((*v463 * v466) >> 8) + 1) >> 8) ^ 0xFF;
                v469 = v468 * ((*v13 >> 8) & 0xFF00FF);
              }

              *v13 = ((v468 * v467 + 65537 + (((v468 * v467) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v469 + 65537 + ((v469 >> 8) & 0xFF00FF)) & 0xFF00FF00;
            }

            v15 += v27;
            result = &v22[v27];
            v470 = &v463[v19];
            if (result >= v584)
            {
              v471 = v462;
            }

            else
            {
              v471 = 0;
            }

            v463 = &v470[v471];
            v22 = (result + 4 * v471);
            v13 += v27;
            --v464;
          }

          while (v464);
          if (v549)
          {
            v472 = &v556[v554];
            if (v472 >= v549)
            {
              v473 = -(v552 * v21);
            }

            else
            {
              v473 = 0;
            }

            v474 = &v555[v552 + v473];
            if (v472 >= v549)
            {
              v475 = -(v554 * v21);
            }

            else
            {
              v475 = 0;
            }

            result = v584 + 4 * v475;
            v22 = &v472[v475];
            v584 = result + 4 * v554;
            v555 = v474;
            v556 = v22;
            v463 = v474;
          }

          else
          {
            v22 += v554;
            v463 += v552;
          }

          v15 += v551;
          v13 += v550;
          --v557;
        }

        while (v465 != 1);
      }

      return result;
    case 9:
      v562 = v8;
      v575 = v19;
      v540 = -v32;
      v106 = v555;
      v493 = -(v552 * v21);
      v516 = -(v554 * v21);
      do
      {
        v107 = v553;
        do
        {
          v108 = *v15;
          if (*v15)
          {
            v109 = *v7;
            v110 = PDAM_5790(*v22, *v106, *v15);
            result = DAMplusDAM(v13, v7, v110, BYTE4(v110), v109 ^ 0xFFu, *v13, v109, (BYTE4(v110) + ~v108));
          }

          v15 += v34;
          v7 += v562;
          v111 = &v22[v34];
          v112 = v540;
          if (v111 < v584)
          {
            v112 = 0;
          }

          v106 += v575 + v112;
          v22 = &v111[v112];
          v13 += v34;
          --v107;
        }

        while (v107);
        if (v549)
        {
          v113 = &v556[v554];
          v114 = v493;
          if (v113 < v549)
          {
            v114 = 0;
          }

          v106 = &v555[v552 + v114];
          v115 = v516;
          if (v113 < v549)
          {
            v115 = 0;
          }

          v22 = &v113[v115];
          v584 += 4 * v115 + 4 * v554;
          v555 += v552 + v114;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v106 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 10:
      v569 = v8;
      v580 = v19;
      v286 = -v32;
      v287 = v555;
      v547 = -(v554 * v21);
      v529 = -(v552 * v21);
      do
      {
        v288 = v553;
        do
        {
          if (*v15)
          {
            v289 = *v7;
            v290 = PDAM_5790(*v22, *v287, *v15);
            result = DAMplusDAM(v13, v7, v290, BYTE4(v290), v289 ^ 0xFFu, *v13, v289, ~BYTE4(v290));
          }

          v15 += v34;
          v7 += v569;
          v291 = &v22[v34];
          if (v291 >= v584)
          {
            v292 = v286;
          }

          else
          {
            v292 = 0;
          }

          v287 += v580 + v292;
          v22 = &v291[v292];
          v13 += v34;
          --v288;
        }

        while (v288);
        if (v549)
        {
          v293 = &v556[v554];
          v294 = v529;
          if (v293 < v549)
          {
            v294 = 0;
          }

          v287 = &v555[v552 + v294];
          v295 = v547;
          if (v293 < v549)
          {
            v295 = 0;
          }

          v22 = &v293[v295];
          v584 += 4 * v295 + 4 * v554;
          v555 += v552 + v294;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v287 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 11:
      if (v8)
      {
        v559 = v8;
        v73 = -v32;
        v74 = v555;
        v538 = -(v554 * v21);
        v513 = -(v552 * v21);
        do
        {
          v75 = v553;
          do
          {
            if (*v15)
            {
              if (v574)
              {
                v76 = *v74;
              }

              else
              {
                v76 = 255;
              }

              v77 = PDAM_5790(*v22, v76, *v15);
              result = DAplusdDA(v13, v7, *v13, *v7, v77, BYTE4(v77));
            }

            v15 += v34;
            v7 += v559;
            v78 = &v22[v34];
            if (v78 >= v584)
            {
              v79 = v73;
            }

            else
            {
              v79 = 0;
            }

            v74 += v574 + v79;
            v22 = &v78[v79];
            v13 += v34;
            --v75;
          }

          while (v75);
          if (v549)
          {
            v80 = &v556[v554];
            v81 = v513;
            if (v80 < v549)
            {
              v81 = 0;
            }

            v74 = &v555[v552 + v81];
            v82 = v538;
            if (v80 < v549)
            {
              v82 = 0;
            }

            v22 = &v80[v82];
            v584 += 4 * v82 + 4 * v554;
            v555 += v552 + v81;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v74 += v552;
          }

          v15 += v551;
          v13 += v550;
          v7 += v537;
          --v557;
        }

        while (v557);
      }

      else
      {
        v390 = -v32;
        v391 = v555;
        v571 = -(v554 * v21);
        v392 = -(v552 * v21);
        do
        {
          v393 = v553;
          do
          {
            if (*v15)
            {
              if (v574)
              {
                v394 = *v391;
              }

              else
              {
                v394 = 255;
              }

              v395 = PDAM_5790(*v22, v394, *v15);
              result = DplusdDA(v13, *v13, v395, BYTE4(v395));
            }

            v15 += v34;
            v396 = &v22[v34];
            if (v396 >= v584)
            {
              v397 = v390;
            }

            else
            {
              v397 = 0;
            }

            v391 += v574 + v397;
            v22 = &v396[v397];
            v13 += v34;
            --v393;
          }

          while (v393);
          if (v549)
          {
            v398 = &v556[v554];
            if (v398 >= v549)
            {
              v399 = v392;
            }

            else
            {
              v399 = 0;
            }

            v391 = &v555[v552 + v399];
            v400 = v571;
            if (v398 < v549)
            {
              v400 = 0;
            }

            v22 = &v398[v400];
            v584 += 4 * v400 + 4 * v554;
            v555 += v552 + v399;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v391 += v552;
          }

          v15 += v551;
          v13 += v550;
          --v557;
        }

        while (v557);
      }

      return result;
    case 12:
      if (v8)
      {
        v561 = v8;
        v94 = -v32;
        v95 = v555;
        v492 = -(v552 * v21);
        v515 = -(v554 * v21);
        do
        {
          v96 = v553;
          do
          {
            if (*v15)
            {
              if (v574)
              {
                v97 = *v95;
              }

              else
              {
                v97 = 255;
              }

              result = PDAM_5790(*v22, v97, *v15);
              v98 = ((result >> 8) & 0xFF00FF) + ((*v13 >> 8) & 0xFF00FF);
              v99 = *v7 + HIDWORD(result);
              v100 = (v98 << 8) & 0xFF00FF00 | ((result & 0xFF00FF) + (*v13 & 0xFF00FF)) & 0xFF00FF | (15 * (v98 & 0x1000100 | (((result & 0xFF00FF) + (*v13 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v98 & 0x1000100 | (((result & 0xFF00FF) + (*v13 & 0xFF00FF)) >> 8) & 0x10001));
              if (v99 >= 0xFF)
              {
                LOBYTE(v99) = -1;
              }

              *v7 = v99;
              *v13 = v100;
            }

            v15 += v34;
            v7 += v561;
            v101 = &v22[v34];
            if (v101 >= v584)
            {
              v102 = v94;
            }

            else
            {
              v102 = 0;
            }

            v95 += v574 + v102;
            v22 = &v101[v102];
            v13 += v34;
            --v96;
          }

          while (v96);
          if (v549)
          {
            v103 = &v556[v554];
            v104 = v492;
            if (v103 < v549)
            {
              v104 = 0;
            }

            v95 = &v555[v552 + v104];
            v105 = v515;
            if (v103 < v549)
            {
              v105 = 0;
            }

            v22 = &v103[v105];
            v584 += 4 * v105 + 4 * v554;
            v555 += v552 + v104;
            v556 = v22;
          }

          else
          {
            v22 += v554;
            v95 += v552;
          }

          v15 += v551;
          v13 += v550;
          v7 += v537;
          --v557;
        }

        while (v557);
      }

      else
      {
        v401 = -v32;
        v402 = -(v554 * v21);
        do
        {
          v403 = v553;
          v404 = v557;
          do
          {
            v405 = *v15;
            if (*v15)
            {
              v406 = (((((*v22 >> 8) & 0xFF00FF) * v405 + 65537 + (((((*v22 >> 8) & 0xFF00FF) * v405) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((*v13 >> 8) & 0xFF00FF);
              v407 = ((((*v22 & 0xFF00FF) * v405 + 65537 + ((((*v22 & 0xFF00FF) * v405) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + (*v13 & 0xFF00FF);
              *v13 = (v406 << 8) & 0xFF00FF00 | v407 & 0xFF00FF | (15 * (v406 & 0x1000100 | (v407 >> 8) & 0x10001)) | (240 * (v406 & 0x1000100 | (v407 >> 8) & 0x10001));
            }

            v15 += v27;
            v408 = &v22[v27];
            if (v408 >= v584)
            {
              v409 = v401;
            }

            else
            {
              v409 = 0;
            }

            v22 = &v408[v409];
            v13 += v27;
            --v403;
          }

          while (v403);
          v15 += v551;
          v13 += v550;
          result = v554;
          v410 = v556;
          v411 = &v556[v554];
          if (v411 >= v549)
          {
            v412 = v402;
          }

          else
          {
            v412 = 0;
          }

          v413 = v584;
          v414 = &v411[v412];
          v415 = v584 + 4 * v412 + 4 * v554;
          if (v549)
          {
            v413 = v415;
          }

          v584 = v413;
          if (v549)
          {
            v410 = v414;
            v22 = v414;
          }

          else
          {
            v22 += v554;
          }

          v556 = v410;
          --v557;
        }

        while (v404 != 1);
      }

      return result;
    case 13:
      v252 = -v32;
      v253 = v555;
      v501 = -(v552 * v21);
      v526 = -(v554 * v21);
      do
      {
        v254 = v553;
        do
        {
          if (*v15)
          {
            v255 = v574 ? *v253 : 255;
            result = PDAM_5790(*v22, v255, *v15);
            v256 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v257 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAmultiplyPDA_5791(*v13, *v7, result, BYTE4(result));
                  v257 = result;
                  v256 = HIDWORD(result);
                }

                *v13 = v257;
                *v7 = v256;
              }

              else
              {
                result = PDAmultiplyPDA_5791(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v258 = &v22[v34];
          if (v258 >= v584)
          {
            v259 = v252;
          }

          else
          {
            v259 = 0;
          }

          v253 += v574 + v259;
          v22 = &v258[v259];
          v13 += v34;
          --v254;
        }

        while (v254);
        if (v549)
        {
          v260 = &v556[v554];
          v261 = v501;
          if (v260 < v549)
          {
            v261 = 0;
          }

          v253 = &v555[v552 + v261];
          v262 = v526;
          if (v260 < v549)
          {
            v262 = 0;
          }

          v22 = &v260[v262];
          v584 += 4 * v262 + 4 * v554;
          v555 += v552 + v261;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v253 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 14:
      v62 = -v32;
      v63 = v555;
      v491 = -(v552 * v21);
      v512 = -(v554 * v21);
      do
      {
        v64 = v553;
        do
        {
          if (*v15)
          {
            v65 = v574 ? *v63 : 255;
            result = PDAM_5790(*v22, v65, *v15);
            v66 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v67 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAscreenPDA_5792(*v13, *v7, result, BYTE4(result));
                  v67 = result;
                  v66 = HIDWORD(result);
                }

                *v13 = v67;
                *v7 = v66;
              }

              else
              {
                result = PDAscreenPDA_5792(*v13, 0xFFu, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v68 = &v22[v34];
          if (v68 >= v584)
          {
            v69 = v62;
          }

          else
          {
            v69 = 0;
          }

          v63 += v574 + v69;
          v22 = &v68[v69];
          v13 += v34;
          --v64;
        }

        while (v64);
        if (v549)
        {
          v70 = &v556[v554];
          v71 = v491;
          if (v70 < v549)
          {
            v71 = 0;
          }

          v63 = &v555[v552 + v71];
          v72 = v512;
          if (v70 < v549)
          {
            v72 = 0;
          }

          v22 = &v70[v72];
          v584 += 4 * v72 + 4 * v554;
          v555 += v552 + v71;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v63 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 15:
      v155 = -v32;
      v156 = v555;
      v496 = -(v552 * v21);
      v519 = -(v554 * v21);
      do
      {
        v157 = v553;
        do
        {
          if (*v15)
          {
            v158 = v574 ? *v156 : 255;
            result = PDAM_5790(*v22, v158, *v15);
            v159 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v160 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAoverlayPDA_5793(*v13, *v7, result, BYTE4(result));
                  v160 = result;
                  v159 = HIDWORD(result);
                }

                *v13 = v160;
                *v7 = v159;
              }

              else
              {
                result = PDAoverlayPDA_5793(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v161 = &v22[v34];
          if (v161 >= v584)
          {
            v162 = v155;
          }

          else
          {
            v162 = 0;
          }

          v156 += v574 + v162;
          v22 = &v161[v162];
          v13 += v34;
          --v157;
        }

        while (v157);
        if (v549)
        {
          v163 = &v556[v554];
          v164 = v496;
          if (v163 < v549)
          {
            v164 = 0;
          }

          v156 = &v555[v552 + v164];
          v165 = v519;
          if (v163 < v549)
          {
            v165 = 0;
          }

          v22 = &v163[v165];
          v584 += 4 * v165 + 4 * v554;
          v555 += v552 + v164;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v156 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 16:
      v51 = -v32;
      v52 = v555;
      v490 = -(v552 * v21);
      v511 = -(v554 * v21);
      do
      {
        v53 = v553;
        do
        {
          if (*v15)
          {
            v54 = v574 ? *v52 : 255;
            result = PDAM_5790(*v22, v54, *v15);
            v55 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v56 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAdarkenPDA_5795(*v13, *v7, result, BYTE4(result));
                  v56 = result;
                  v55 = HIDWORD(result);
                }

                *v13 = v56;
                *v7 = v55;
              }

              else
              {
                result = PDAdarkenPDA_5795(*v13, 0xFFu, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v57 = &v22[v34];
          if (v57 >= v584)
          {
            v58 = v51;
          }

          else
          {
            v58 = 0;
          }

          v52 += v574 + v58;
          v22 = &v57[v58];
          v13 += v34;
          --v53;
        }

        while (v53);
        if (v549)
        {
          v59 = &v556[v554];
          v60 = v490;
          if (v59 < v549)
          {
            v60 = 0;
          }

          v52 = &v555[v552 + v60];
          v61 = v511;
          if (v59 < v549)
          {
            v61 = 0;
          }

          v22 = &v59[v61];
          v584 += 4 * v61 + 4 * v554;
          v555 += v552 + v60;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v52 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 17:
      v209 = -v32;
      v210 = v555;
      v498 = -(v552 * v21);
      v522 = -(v554 * v21);
      do
      {
        v211 = v553;
        do
        {
          if (*v15)
          {
            v212 = v574 ? *v210 : 255;
            result = PDAM_5790(*v22, v212, *v15);
            v213 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v214 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAlightenPDA_5794(*v13, *v7, result, BYTE4(result));
                  v214 = result;
                  v213 = HIDWORD(result);
                }

                *v13 = v214;
                *v7 = v213;
              }

              else
              {
                result = PDAlightenPDA_5794(*v13, 0xFFu, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v215 = &v22[v34];
          if (v215 >= v584)
          {
            v216 = v209;
          }

          else
          {
            v216 = 0;
          }

          v210 += v574 + v216;
          v22 = &v215[v216];
          v13 += v34;
          --v211;
        }

        while (v211);
        if (v549)
        {
          v217 = &v556[v554];
          v218 = v498;
          if (v217 < v549)
          {
            v218 = 0;
          }

          v210 = &v555[v552 + v218];
          v219 = v522;
          if (v217 < v549)
          {
            v219 = 0;
          }

          v22 = &v217[v219];
          v584 += 4 * v219 + 4 * v554;
          v555 += v552 + v218;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v210 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 18:
      v275 = -v32;
      v276 = v555;
      v502 = -(v552 * v21);
      v528 = -(v554 * v21);
      do
      {
        v277 = v553;
        do
        {
          if (*v15)
          {
            v278 = v574 ? *v276 : 255;
            result = PDAM_5790(*v22, v278, *v15);
            v279 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v280 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAcolordodgePDA_5796(*v13, *v7, result, BYTE4(result));
                  v280 = result;
                  v279 = HIDWORD(result);
                }

                *v13 = v280;
                *v7 = v279;
              }

              else
              {
                result = PDAcolordodgePDA_5796(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v281 = &v22[v34];
          if (v281 >= v584)
          {
            v282 = v275;
          }

          else
          {
            v282 = 0;
          }

          v276 += v574 + v282;
          v22 = &v281[v282];
          v13 += v34;
          --v277;
        }

        while (v277);
        if (v549)
        {
          v283 = &v556[v554];
          v284 = v502;
          if (v283 < v549)
          {
            v284 = 0;
          }

          v276 = &v555[v552 + v284];
          v285 = v528;
          if (v283 < v549)
          {
            v285 = 0;
          }

          v22 = &v283[v285];
          v584 += 4 * v285 + 4 * v554;
          v555 += v552 + v284;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v276 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 19:
      v336 = -v32;
      v337 = v555;
      v505 = -(v552 * v21);
      v532 = -(v554 * v21);
      do
      {
        v338 = v553;
        do
        {
          if (*v15)
          {
            v339 = v574 ? *v337 : 255;
            result = PDAM_5790(*v22, v339, *v15);
            v340 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v341 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAcolorburnPDA_5797(*v13, *v7, result, BYTE4(result));
                  v341 = result;
                  v340 = HIDWORD(result);
                }

                *v13 = v341;
                *v7 = v340;
              }

              else
              {
                result = PDAcolorburnPDA_5797(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v342 = &v22[v34];
          if (v342 >= v584)
          {
            v343 = v336;
          }

          else
          {
            v343 = 0;
          }

          v337 += v574 + v343;
          v22 = &v342[v343];
          v13 += v34;
          --v338;
        }

        while (v338);
        if (v549)
        {
          v344 = &v556[v554];
          v345 = v505;
          if (v344 < v549)
          {
            v345 = 0;
          }

          v337 = &v555[v552 + v345];
          v346 = v532;
          if (v344 < v549)
          {
            v346 = 0;
          }

          v22 = &v344[v346];
          v584 += 4 * v346 + 4 * v554;
          v555 += v552 + v345;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v337 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 20:
      v220 = -v32;
      v221 = v555;
      v499 = -(v552 * v21);
      v523 = -(v554 * v21);
      do
      {
        v222 = v553;
        do
        {
          if (*v15)
          {
            v223 = v574 ? *v221 : 255;
            result = PDAM_5790(*v22, v223, *v15);
            v224 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v225 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAsoftlightPDA_5799(*v13, *v7, result, BYTE4(result));
                  v225 = result;
                  v224 = HIDWORD(result);
                }

                *v13 = v225;
                *v7 = v224;
              }

              else
              {
                result = PDAsoftlightPDA_5799(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v226 = &v22[v34];
          if (v226 >= v584)
          {
            v227 = v220;
          }

          else
          {
            v227 = 0;
          }

          v221 += v574 + v227;
          v22 = &v226[v227];
          v13 += v34;
          --v222;
        }

        while (v222);
        if (v549)
        {
          v228 = &v556[v554];
          v229 = v499;
          if (v228 < v549)
          {
            v229 = 0;
          }

          v221 = &v555[v552 + v229];
          v230 = v523;
          if (v228 < v549)
          {
            v230 = 0;
          }

          v22 = &v228[v230];
          v584 += 4 * v230 + 4 * v554;
          v555 += v552 + v229;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v221 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 21:
      v241 = -v32;
      v242 = v555;
      v500 = -(v552 * v21);
      v525 = -(v554 * v21);
      do
      {
        v243 = v553;
        do
        {
          if (*v15)
          {
            v244 = v574 ? *v242 : 255;
            result = PDAM_5790(*v22, v244, *v15);
            v245 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v246 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAhardlightPDA_5798(*v13, *v7, result, BYTE4(result));
                  v246 = result;
                  v245 = HIDWORD(result);
                }

                *v13 = v246;
                *v7 = v245;
              }

              else
              {
                result = PDAhardlightPDA_5798(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v247 = &v22[v34];
          if (v247 >= v584)
          {
            v248 = v241;
          }

          else
          {
            v248 = 0;
          }

          v242 += v574 + v248;
          v22 = &v247[v248];
          v13 += v34;
          --v243;
        }

        while (v243);
        if (v549)
        {
          v249 = &v556[v554];
          v250 = v500;
          if (v249 < v549)
          {
            v250 = 0;
          }

          v242 = &v555[v552 + v250];
          v251 = v525;
          if (v249 < v549)
          {
            v251 = 0;
          }

          v22 = &v249[v251];
          v584 += 4 * v251 + 4 * v554;
          v555 += v552 + v250;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v242 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 22:
      v317 = -v32;
      v318 = v555;
      v504 = -(v552 * v21);
      v531 = -(v554 * v21);
      do
      {
        v319 = v553;
        do
        {
          if (*v15)
          {
            v320 = v574 ? *v318 : 255;
            result = PDAM_5790(*v22, v320, *v15);
            v329 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v330 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAdifferencePDA_5800(*v13, *v7, result, BYTE4(result), v321, v322, v323, v324, v325, v326, v327, v328);
                  v330 = result;
                  v329 = HIDWORD(result);
                }

                *v13 = v330;
                *v7 = v329;
              }

              else
              {
                result = PDAdifferencePDA_5800(*v13, 0xFFu, result, BYTE4(result), v321, v322, v323, v324, v325, v326, v327, v328);
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v331 = &v22[v34];
          if (v331 >= v584)
          {
            v332 = v317;
          }

          else
          {
            v332 = 0;
          }

          v318 += v574 + v332;
          v22 = &v331[v332];
          v13 += v34;
          --v319;
        }

        while (v319);
        if (v549)
        {
          v333 = &v556[v554];
          v334 = v504;
          if (v333 < v549)
          {
            v334 = 0;
          }

          v318 = &v555[v552 + v334];
          v335 = v531;
          if (v333 < v549)
          {
            v335 = 0;
          }

          v22 = &v333[v335];
          v584 += 4 * v335 + 4 * v554;
          v555 += v552 + v334;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v318 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 23:
      v347 = -v32;
      v348 = v555;
      v506 = -(v552 * v21);
      v533 = -(v554 * v21);
      do
      {
        v349 = v553;
        do
        {
          if (*v15)
          {
            v350 = v574 ? *v348 : 255;
            result = PDAM_5790(*v22, v350, *v15);
            v351 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v352 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAexclusionPDA_5801(*v13, *v7, result, BYTE4(result));
                  v352 = result;
                  v351 = HIDWORD(result);
                }

                *v13 = v352;
                *v7 = v351;
              }

              else
              {
                result = PDAexclusionPDA_5801(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v353 = &v22[v34];
          if (v353 >= v584)
          {
            v354 = v347;
          }

          else
          {
            v354 = 0;
          }

          v348 += v574 + v354;
          v22 = &v353[v354];
          v13 += v34;
          --v349;
        }

        while (v349);
        if (v549)
        {
          v355 = &v556[v554];
          v356 = v506;
          if (v355 < v549)
          {
            v356 = 0;
          }

          v348 = &v555[v552 + v356];
          v357 = v533;
          if (v355 < v549)
          {
            v357 = 0;
          }

          v22 = &v355[v357];
          v584 += 4 * v357 + 4 * v554;
          v555 += v552 + v356;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v348 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 24:
      v127 = -v32;
      v128 = v555;
      v495 = -(v552 * v21);
      v518 = -(v554 * v21);
      do
      {
        v129 = v553;
        do
        {
          if (*v15)
          {
            v130 = v574 ? *v128 : 255;
            result = PDAM_5790(*v22, v130, *v15);
            v131 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v132 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAhuePDA_5802(*v13, *v7, result, BYTE4(result));
                  v132 = result;
                  v131 = HIDWORD(result);
                }

                *v13 = v132;
                *v7 = v131;
              }

              else
              {
                result = PDAhuePDA_5802(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v133 = &v22[v34];
          if (v133 >= v584)
          {
            v134 = v127;
          }

          else
          {
            v134 = 0;
          }

          v128 += v574 + v134;
          v22 = &v133[v134];
          v13 += v34;
          --v129;
        }

        while (v129);
        if (v549)
        {
          v135 = &v556[v554];
          v136 = v495;
          if (v135 < v549)
          {
            v136 = 0;
          }

          v128 = &v555[v552 + v136];
          v137 = v518;
          if (v135 < v549)
          {
            v137 = 0;
          }

          v22 = &v135[v137];
          v584 += 4 * v137 + 4 * v554;
          v555 += v552 + v136;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v128 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 25:
      v116 = -v32;
      v117 = v555;
      v494 = -(v552 * v21);
      v517 = -(v554 * v21);
      do
      {
        v118 = v553;
        do
        {
          if (*v15)
          {
            v119 = v574 ? *v117 : 255;
            result = PDAM_5790(*v22, v119, *v15);
            v120 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v121 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAsaturationPDA_5803(*v13, *v7, result, BYTE4(result));
                  v121 = result;
                  v120 = HIDWORD(result);
                }

                *v13 = v121;
                *v7 = v120;
              }

              else
              {
                result = PDAsaturationPDA_5803(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v122 = &v22[v34];
          if (v122 >= v584)
          {
            v123 = v116;
          }

          else
          {
            v123 = 0;
          }

          v117 += v574 + v123;
          v22 = &v122[v123];
          v13 += v34;
          --v118;
        }

        while (v118);
        if (v549)
        {
          v124 = &v556[v554];
          v125 = v494;
          if (v124 < v549)
          {
            v125 = 0;
          }

          v117 = &v555[v552 + v125];
          v126 = v517;
          if (v124 < v549)
          {
            v126 = 0;
          }

          v22 = &v124[v126];
          v584 += 4 * v126 + 4 * v554;
          v555 += v552 + v125;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v117 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 26:
      v380 = -v32;
      v381 = v555;
      v509 = -(v552 * v21);
      v536 = -(v554 * v21);
      do
      {
        v382 = v553;
        do
        {
          if (*v15)
          {
            v383 = v574 ? *v381 : 255;
            result = PDAM_5790(*v22, v383, *v15);
            v384 = HIDWORD(result);
            if (HIDWORD(result))
            {
              if (v558)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_5804(result, BYTE4(result), *v13, *v7);
                  v384 = HIDWORD(result);
                }

                *v13 = result;
                *v7 = v384;
              }

              else
              {
                result = PDAluminosityPDA_5804(result, BYTE4(result), *v13, 255);
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v385 = &v22[v34];
          if (v385 >= v584)
          {
            v386 = v380;
          }

          else
          {
            v386 = 0;
          }

          v381 += v574 + v386;
          v22 = &v385[v386];
          v13 += v34;
          --v382;
        }

        while (v382);
        if (v549)
        {
          v387 = &v556[v554];
          v388 = v509;
          if (v387 < v549)
          {
            v388 = 0;
          }

          v381 = &v555[v552 + v388];
          v389 = v536;
          if (v387 < v549)
          {
            v389 = 0;
          }

          v22 = &v387[v389];
          v584 += 4 * v389 + 4 * v554;
          v555 += v552 + v388;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v381 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 27:
      v40 = -v32;
      v41 = v555;
      v489 = -(v552 * v21);
      v510 = -(v554 * v21);
      do
      {
        v42 = v553;
        do
        {
          if (*v15)
          {
            v43 = v574 ? *v41 : 255;
            result = PDAM_5790(*v22, v43, *v15);
            v44 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v45 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_5804(*v13, *v7, result, BYTE4(result));
                  v45 = result;
                  v44 = HIDWORD(result);
                }

                *v13 = v45;
                *v7 = v44;
              }

              else
              {
                result = PDAluminosityPDA_5804(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v46 = &v22[v34];
          if (v46 >= v584)
          {
            v47 = v40;
          }

          else
          {
            v47 = 0;
          }

          v41 += v574 + v47;
          v22 = &v46[v47];
          v13 += v34;
          --v42;
        }

        while (v42);
        if (v549)
        {
          v48 = &v556[v554];
          v49 = v489;
          if (v48 < v549)
          {
            v49 = 0;
          }

          v41 = &v555[v552 + v49];
          v50 = v510;
          if (v48 < v549)
          {
            v50 = 0;
          }

          v22 = &v48[v50];
          v584 += 4 * v50 + 4 * v554;
          v555 += v552 + v49;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v41 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 28:
      v358 = -v32;
      v359 = v555;
      v507 = -(v552 * v21);
      v534 = -(v554 * v21);
      do
      {
        v360 = v553;
        do
        {
          if (*v15)
          {
            v361 = v574 ? *v359 : 255;
            result = PDAM_5790(*v22, v361, *v15);
            v362 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v363 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAtranspose_huePDA(*v13, *v7, result, BYTE4(result));
                  v363 = result;
                  v362 = HIDWORD(result);
                }

                *v13 = v363;
                *v7 = v362;
              }

              else
              {
                result = PDAtranspose_huePDA(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v364 = &v22[v34];
          if (v364 >= v584)
          {
            v365 = v358;
          }

          else
          {
            v365 = 0;
          }

          v359 += v574 + v365;
          v22 = &v364[v365];
          v13 += v34;
          --v360;
        }

        while (v360);
        if (v549)
        {
          v366 = &v556[v554];
          v367 = v507;
          if (v366 < v549)
          {
            v367 = 0;
          }

          v359 = &v555[v552 + v367];
          v368 = v534;
          if (v366 < v549)
          {
            v368 = 0;
          }

          v22 = &v366[v368];
          v584 += 4 * v368 + 4 * v554;
          v555 += v552 + v367;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v359 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 29:
      v369 = -v32;
      v370 = v555;
      v508 = -(v552 * v21);
      v535 = -(v554 * v21);
      do
      {
        v371 = v553;
        do
        {
          if (*v15)
          {
            v372 = v574 ? *v370 : 255;
            result = PDAM_5790(*v22, v372, *v15);
            v373 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v374 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAtranspose_saturationPDA(*v13, *v7, result, BYTE4(result));
                  v374 = result;
                  v373 = HIDWORD(result);
                }

                *v13 = v374;
                *v7 = v373;
              }

              else
              {
                result = PDAtranspose_saturationPDA(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v375 = &v22[v34];
          if (v375 >= v584)
          {
            v376 = v369;
          }

          else
          {
            v376 = 0;
          }

          v370 += v574 + v376;
          v22 = &v375[v376];
          v13 += v34;
          --v371;
        }

        while (v371);
        if (v549)
        {
          v377 = &v556[v554];
          v378 = v508;
          if (v377 < v549)
          {
            v378 = 0;
          }

          v370 = &v555[v552 + v378];
          v379 = v535;
          if (v377 < v549)
          {
            v379 = 0;
          }

          v22 = &v377[v379];
          v584 += 4 * v379 + 4 * v554;
          v555 += v552 + v378;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v370 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 30:
      v307 = -v32;
      v308 = v555;
      v503 = -(v552 * v21);
      v530 = -(v554 * v21);
      do
      {
        v309 = v553;
        do
        {
          if (*v15)
          {
            v310 = v574 ? *v308 : 255;
            result = PDAM_5790(*v22, v310, *v15);
            v311 = HIDWORD(result);
            if (HIDWORD(result))
            {
              if (v558)
              {
                if (*v7)
                {
                  result = PDAtranspose_luminosityPDA(result, BYTE4(result), *v13, *v7);
                  v311 = HIDWORD(result);
                }

                *v13 = result;
                *v7 = v311;
              }

              else
              {
                result = PDAtranspose_luminosityPDA(result, BYTE4(result), *v13, 255);
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v312 = &v22[v34];
          if (v312 >= v584)
          {
            v313 = v307;
          }

          else
          {
            v313 = 0;
          }

          v308 += v574 + v313;
          v22 = &v312[v313];
          v13 += v34;
          --v309;
        }

        while (v309);
        if (v549)
        {
          v314 = &v556[v554];
          v315 = v503;
          if (v314 < v549)
          {
            v315 = 0;
          }

          v308 = &v555[v552 + v315];
          v316 = v530;
          if (v314 < v549)
          {
            v316 = 0;
          }

          v22 = &v314[v316];
          v584 += 4 * v316 + 4 * v554;
          v555 += v552 + v315;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v308 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    case 31:
      v198 = -v32;
      v199 = v555;
      v497 = -(v552 * v21);
      v521 = -(v554 * v21);
      do
      {
        v200 = v553;
        do
        {
          if (*v15)
          {
            v201 = v574 ? *v199 : 255;
            result = PDAM_5790(*v22, v201, *v15);
            v202 = HIDWORD(result);
            if (HIDWORD(result))
            {
              v203 = result;
              if (v558)
              {
                if (*v7)
                {
                  result = PDAtranspose_luminosityPDA(*v13, *v7, result, BYTE4(result));
                  v203 = result;
                  v202 = HIDWORD(result);
                }

                *v13 = v203;
                *v7 = v202;
              }

              else
              {
                result = PDAtranspose_luminosityPDA(*v13, 255, result, BYTE4(result));
                *v13 = result;
              }
            }
          }

          v15 += v34;
          v7 += v558;
          v204 = &v22[v34];
          if (v204 >= v584)
          {
            v205 = v198;
          }

          else
          {
            v205 = 0;
          }

          v199 += v574 + v205;
          v22 = &v204[v205];
          v13 += v34;
          --v200;
        }

        while (v200);
        if (v549)
        {
          v206 = &v556[v554];
          v207 = v497;
          if (v206 < v549)
          {
            v207 = 0;
          }

          v199 = &v555[v552 + v207];
          v208 = v521;
          if (v206 < v549)
          {
            v208 = 0;
          }

          v22 = &v206[v208];
          v584 += 4 * v208 + 4 * v554;
          v555 += v552 + v207;
          v556 = v22;
        }

        else
        {
          v22 += v554;
          v199 += v552;
        }

        v15 += v551;
        v13 += v550;
        v7 += v537;
        --v557;
      }

      while (v557);
      return result;
    default:
      return result;
  }

  do
  {
    v419 = v553;
    do
    {
      v420 = *v15;
      if (!*v15)
      {
        goto LABEL_821;
      }

      if (v420 != 255)
      {
        result = PDAM_5790(*v22, *v418, v420);
        if (!HIDWORD(result))
        {
          goto LABEL_821;
        }

        v423 = HIDWORD(result) ^ 0xFF;
        v424 = ((*v13 >> 8) & 0xFF00FF) * v423 + 65537 + (((((*v13 >> 8) & 0xFF00FF) * v423) >> 8) & 0xFF00FF);
        v425 = (((*v13 & 0xFF00FF) * v423 + 65537 + ((((*v13 & 0xFF00FF) * v423) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
        v426 = (v424 & 0xFF00FF00) + result;
        goto LABEL_819;
      }

      v421 = *v418;
      if (!*v418)
      {
        goto LABEL_821;
      }

      if (v421 != 255)
      {
        v427 = v421 ^ 0xFF;
        v428 = ((*v13 >> 8) & 0xFF00FF) * v427 + 65537 + (((((*v13 >> 8) & 0xFF00FF) * v427) >> 8) & 0xFF00FF);
        v425 = (((*v13 & 0xFF00FF) * v427 + 65537 + ((((*v13 & 0xFF00FF) * v427) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
        v426 = (v428 & 0xFF00FF00) + *v22;
LABEL_819:
        v422 = v426 + v425;
        goto LABEL_820;
      }

      v422 = *v22;
LABEL_820:
      *v13 = v422;
LABEL_821:
      v15 += v34;
      v429 = &v22[v34];
      if (v429 >= v584)
      {
        v430 = v417;
      }

      else
      {
        v430 = 0;
      }

      v418 += v416 + v430;
      v22 = &v429[v430];
      v13 += v34;
      --v419;
    }

    while (v419);
    if (v549)
    {
      v431 = &v556[v554];
      v432 = v572;
      if (v431 < v549)
      {
        v432 = 0;
      }

      v418 = &v555[v552 + v432];
      v433 = v582;
      if (v431 < v549)
      {
        v433 = 0;
      }

      v22 = &v431[v433];
      v584 += 4 * v433 + 4 * v554;
      v555 += v552 + v432;
      v556 = v22;
    }

    else
    {
      v22 += v554;
      v418 += v552;
    }

    v15 += v551;
    v13 += v550;
    --v557;
  }

  while (v557);
  return result;
}

_DWORD *cmyk32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float32x2_t *a5, float a6, double a7, double a8, double a9)
{
  v11 = PIXELCONSTANT(*(*a1 + 64), a4, a5, a6, a7, a8, a9);
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CAE0;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = v11;
    *(a2 + 4) = a2 + 12;
    if (BYTE4(v11) == 255)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[13] = 16843009 * BYTE4(v11);
      *(a2 + 5) = a2 + 13;
    }
  }

  return a2;
}

unint64_t PIXELCONSTANT(float *a1, int a2, float32x2_t *a3, float a4, double a5, double a6, double a7)
{
  *&a7 = *a1;
  *&a6 = a1[1];
  v7 = *&a6;
  if (*&a6 >= a4)
  {
    v7 = a4;
    if (*&a7 > a4)
    {
      v7 = *a1;
    }
  }

  v8 = a1[3];
  v9 = v7 * a1[2];
  if (a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v33 = a1[1];
    if (a3->f32[0] <= *&a6)
    {
      v33 = a3->f32[0];
      if (a3->f32[0] < *&a7)
      {
        v33 = *a1;
      }
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v32 = (v8 + ((*&a6 - v33) * v9));
    v18 = (v8 + v9);
  }

  else
  {
    if (v10 == 4)
    {
      v23 = a3->f32[1];
      v24 = a3[1].f32[0];
      v25 = a3[1].f32[1];
      v18 = (v8 + v9);
      if (a3->f32[0] < *&a7)
      {
        v26 = *a1;
      }

      else
      {
        v26 = a3->f32[0];
      }

      if (a3->f32[0] <= *&a6)
      {
        v27 = v26;
      }

      else
      {
        v27 = a1[1];
      }

      if (v23 < *&a7)
      {
        v28 = *a1;
      }

      else
      {
        v28 = a3->f32[1];
      }

      if (v23 <= *&a6)
      {
        v29 = v28;
      }

      else
      {
        v29 = a1[1];
      }

      if (v24 < *&a7)
      {
        v30 = *a1;
      }

      else
      {
        v30 = a3[1].f32[0];
      }

      if (v24 <= *&a6)
      {
        v31 = v30;
      }

      else
      {
        v31 = a1[1];
      }

      if (v25 >= *&a7)
      {
        LODWORD(a7) = a3[1].i32[1];
      }

      if (v25 <= *&a6)
      {
        *&a6 = *&a7;
      }

      v19 = (v8 + (v27 * v9));
      v20 = (v8 + (v29 * v9));
      v21 = (v8 + (v31 * v9));
      v22 = v8 + (*&a6 * v9);
    }

    else
    {
      if (v10 != 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v32 = (v8 + v9);
        v18 = v32;
        return (v20 << 16) | (v19 << 24) | (v21 << 8) | v32 | (v18 << 32);
      }

      v11 = a3[1].f32[0];
      v12 = vdup_lane_s32(*&a6, 0);
      v13 = vdup_lane_s32(*&a7, 0);
      v14 = vbsl_s8(vcgt_f32(*a3, v12), v13, vbsl_s8(vcgt_f32(v13, *a3), v12, vsub_f32(v12, *a3)));
      v15 = *&a6 - v11;
      if (v11 < *&a7)
      {
        v15 = a1[1];
      }

      if (v11 <= *&a6)
      {
        v16 = v15;
      }

      else
      {
        v16 = *a1;
      }

      if (*v14.i32 >= *&v14.i32[1])
      {
        v17 = *&v14.i32[1];
      }

      else
      {
        v17 = *v14.i32;
      }

      if (v16 < v17)
      {
        v17 = v16;
      }

      v18 = (v8 + v9);
      v19 = (v8 + ((*v14.i32 - v17) * v9));
      v20 = (v8 + ((*&v14.i32[1] - v17) * v9));
      v21 = (v8 + ((v16 - v17) * v9));
      v22 = v8 + (v17 * v9);
    }

    v32 = v22;
  }

  return (v20 << 16) | (v19 << 24) | (v21 << 8) | v32 | (v18 << 32);
}

uint64_t CMYK32_shade(uint64_t a1, __n128 a2)
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

  if (v11 >= 24 && *v7 == 134759428)
  {
    v11 += 4;
  }

  if ((*v5 & 0xF000000) == 0x4000000)
  {
    if (*(v5 + 16))
    {
      v14 = CMYK32_shade_radial_CMYK;
    }

    else if (*(v5 + 24))
    {
      v14 = CMYK32_shade_conic_CMYK;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = CMYK32_shade_axial_CMYK;
    }

    else
    {
      v14 = CMYK32_shade_custom_CMYK;
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
LABEL_30:
      _blt_shade_samples_16(v16, 2, 4, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_32;
    }

    v16 = malloc_type_malloc(10 * v15 + 32, 0x24046928uLL);
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
  cmyk32_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void CMYK32_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v21->i64[0] = ((v33 + v32[3]) << 16) & 0xFF000000 | ((((v33 + v32[4]) & 0xFF00) >> 8) << 32) | ((v33 + v32[2]) << 8) & 0xFF0000 | ((v33 + v32[1]) & 0xFF00) | ((v33 + *v32) >> 8);
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
        v48 = vadd_s32(v41, v47);
        v49 = vadd_s32(v42, v47);
        v50 = vadd_s32(v44, v47);
        v51 = vshl_n_s32(vadd_s32(v45, v47), 0x10uLL);
        v52.i64[0] = v51.i32[0] & 0xFF00FFFF;
        v52.i64[1] = v51.i32[1] & 0xFF00FFFF;
        v53 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v46, v47), 0xFF000000FF00), 0x18uLL), v52);
        v54 = vand_s8(vshl_n_s32(v50, 8uLL), 0xFF000000FF0000);
        v52.i64[0] = v54.u32[0];
        v52.i64[1] = v54.u32[1];
        v55 = v52;
        v56 = vand_s8(v49, 0xFF000000FF00);
        v52.i64[0] = v56.u32[0];
        v52.i64[1] = v56.u32[1];
        v57 = vorrq_s8(v53, vorrq_s8(v55, v52));
        v58 = vshr_n_u32(v48, 8uLL);
        v52.i64[0] = v58.i32[0] & 0xFFFFFEFF;
        v52.i64[1] = v58.i32[1] & 0xFFFFFEFF;
        v59 = vorrq_s8(v57, v52);
        *v21 = v59;
        v26 = (v26 + 1) & v28;
        v59.i8[0] = *(v25 + ((v27 + 1) & v28));
        v59.i8[4] = *(v25 + v26);
        *v59.i8 = vand_s8(*v59.i8, 0xFF000000FFLL);
        v60 = vadd_s32(v41, *v59.i8);
        v61 = vadd_s32(v42, *v59.i8);
        *v55.i8 = vadd_s32(v44, *v59.i8);
        v62 = vshl_n_s32(vadd_s32(v45, *v59.i8), 0x10uLL);
        v52.i64[0] = v62.i32[0] & 0xFF00FFFF;
        v52.i64[1] = v62.i32[1] & 0xFF00FFFF;
        v63 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v46, *v59.i8), 0xFF000000FF00), 0x18uLL), v52);
        *v55.i8 = vand_s8(vshl_n_s32(*v55.i8, 8uLL), 0xFF000000FF0000);
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v64 = v52;
        v65 = vand_s8(v61, 0xFF000000FF00);
        v52.i64[0] = v65.u32[0];
        v52.i64[1] = v65.u32[1];
        v66 = vorrq_s8(v63, vorrq_s8(v64, v52));
        v67 = vshr_n_u32(v60, 8uLL);
        v52.i64[0] = v67.i32[0] & 0xFFFFFEFF;
        v52.i64[1] = v67.i32[1] & 0xFFFFFEFF;
        v4 = vorrq_s8(v66, v52);
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
      v68 = (v39 << 16) & 0xFF000000 | (((v40 & 0xFF00) >> 8) << 32) | (BYTE1(v38) << 16) | v37 & 0xFF00 | (v36 >> 8);
      v69 = a4 + 4;
      do
      {
        v21->i64[0] = v68;
        v21->i64[1] = v68;
        v21[1].i64[0] = v68;
        v21[1].i64[1] = v68;
        v21 += 2;
        v69 -= 4;
        *v20++ = -1;
      }

      while (v69 > 4);
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

unint64_t CMYK32_shade_custom_CMYK(unint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
      result = (v32 + v31[1]) & 0xFF00;
      *v27 = ((v32 + v31[3]) << 16) & 0xFF000000 | ((((v32 + v31[4]) & 0xFF00) >> 8) << 32) | ((v32 + v31[2]) << 8) & 0xFF0000 | result | ((v32 + *v31) >> 8);
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

uint64_t CMYK32_shade_conic_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    *v17++ = ((v39 + ((v36 * v24 + v33 * v31) >> 8)) << 16) & 0xFF000000 | ((((v39 + (v27 >> 8)) & 0xFF00) >> 8) << 32) | (v38 + (v39 << 8)) & 0xFF0000 | ((v39 + (v37 >> 8)) & 0xFF00) | ((v39 + (v32 >> 8)) >> 8);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
  return result;
}

void CMYK32_shade_radial_CMYK(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
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

LABEL_43:
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
            v24->i64[0] = ((v62 + v61[3]) << 16) & 0xFF000000 | ((((v62 + v61[4]) & 0xFF00) >> 8) << 32) | ((v62 + v61[2]) << 8) & 0xFF0000 | ((v62 + v61[1]) & 0xFF00) | ((v62 + *v61) >> 8);
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

        goto LABEL_43;
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
              v102 = *(v33 + v34);
              v24->i64[0] = ((v102 + *(v92 + 6)) << 16) & 0xFF000000 | ((((v102 + *(v92 + 8)) & 0xFF00) >> 8) << 32) | ((v102 + *(v92 + 4)) << 8) & 0xFF0000 | ((v102 + *(v92 + 2)) & 0xFF00) | ((v102 + *v92) >> 8);
              LOBYTE(v92) = -1;
            }

            if (v74 <= 1.0)
            {
              if (v76 < 0)
              {
                goto LABEL_90;
              }

              v103 = (5 * v76);
            }

            else if (v74 > v21 || (v103 = (5 * v19), v19 < 0))
            {
LABEL_90:
              if (!v26)
              {
                v109 = 0;
                goto LABEL_94;
              }

              v105 = *(v26 + 2);
              v108 = *(v33 + v31);
              v90 = v108 + *v26;
              v107 = vdupq_n_s32(v108);
              goto LABEL_92;
            }

            v104 = v27 + 2 * v103;
            v105 = *(v104 + 2);
            v106 = *(v33 + v31);
            v90 = v106 + *v104;
            v107 = vdupq_n_s32(v106);
LABEL_92:
            v91 = vaddw_u16(v107, v105);
            goto LABEL_93;
          }

          v92 = v27 + 2 * v78;
          goto LABEL_82;
        }

        v81 = (v27 + 10 * v75);
        v82 = (v27 + 10 * v76);
        v83 = *v82;
        v84 = *(v82 + 1);
        LODWORD(v82) = *(v33 + v34);
        v85 = v82 + *v81;
        v86 = v82 + v81[1];
        v87 = v82 + v81[2];
        v88 = v82 + v81[3];
        LOWORD(v81) = v82 + v81[4];
        v89 = *(v33 + v31);
        v90 = v89 + v83;
        v91 = vaddw_u16(vdupq_n_s32(v89), v84);
        v92 = (v88 << 16) & 0xFF000000 | (((v81 & 0xFF00) >> 8) << 32) | (v87 << 8) & 0xFF0000 | (v86 & 0xFF00);
        v93 = HIBYTE(v85);
      }

      else
      {
        if (v19 < 0)
        {
          if (!v26)
          {
            v109 = 0;
            LOBYTE(v92) = 0;
            goto LABEL_94;
          }

          v79 = *v26;
          v80 = *(v26 + 2);
        }

        else
        {
          v79 = *v66;
          v80 = *(v66 + 1);
        }

        v94 = vmovl_u16(v80);
        v95 = *(v33 + v34);
        v96 = v95 + v79;
        v97 = v94.i16[0] + v95;
        v98 = v94.i32[1] + v95;
        v99 = v94.i32[2] + v95;
        v100 = v94.i16[6] + v95;
        v101 = *(v33 + v31);
        v90 = v101 + v79;
        v91 = vaddw_u16(vdupq_n_s32(v101), v80);
        v92 = (v99 << 16) & 0xFF000000 | (((v100 & 0xFF00) >> 8) << 32) | (v98 << 8) & 0xFF0000 | (v97 & 0xFF00);
        v93 = HIBYTE(v96);
      }

      v24->i64[0] = v92 | v93;
      LOBYTE(v92) = -1;
LABEL_93:
      v24->i64[1] = (v91.i32[2] << 16) & 0xFF000000 | (((v91.i16[6] & 0xFF00) >> 8) << 32) | (v91.i32[1] << 8) & 0xFF0000 | (v91.i16[0] & 0xFF00) | HIBYTE(v90);
      v109 = -1;
LABEL_94:
      v11 = v6 + v69;
      LOBYTE(v34) = (v34 + 1) & v35;
      LOBYTE(v31) = (v31 + 1) & v35;
      ++v24;
      *v23 = v92;
      v23[1] = v109;
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
    v110 = (v27 + 10 * v19);
    if (v19 >= 0)
    {
      v111 = v110;
    }

    else
    {
      v111 = v26;
    }

    v112 = vdup_n_s32(v111[4]);
    v113 = vdup_n_s32(v111[3]);
    v114 = vdup_n_s32(v111[2]);
    v115 = vdup_n_s32(v111[1]);
    v116 = vdup_n_s32(*v111);
    v117 = a4 + 4;
    do
    {
      v5.i8[0] = *(v33 + v34);
      v5.i8[4] = *(v33 + v31);
      v118 = vand_s8(*v5.i8, 0xFF000000FFLL);
      v119 = vadd_s32(v116, v118);
      v120 = vadd_s32(v115, v118);
      v121 = vadd_s32(v114, v118);
      v122 = vshl_n_s32(vadd_s32(v113, v118), 0x10uLL);
      v123.i64[0] = v122.i32[0] & 0xFF00FFFF;
      v123.i64[1] = v122.i32[1] & 0xFF00FFFF;
      v124 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v112, v118), 0xFF000000FF00), 0x18uLL), v123);
      v125 = vand_s8(vshl_n_s32(v121, 8uLL), 0xFF000000FF0000);
      v123.i64[0] = v125.u32[0];
      v123.i64[1] = v125.u32[1];
      v126 = v123;
      v127 = vand_s8(v120, 0xFF000000FF00);
      v123.i64[0] = v127.u32[0];
      v123.i64[1] = v127.u32[1];
      v128 = vorrq_s8(v124, vorrq_s8(v126, v123));
      v129 = vshr_n_u32(v119, 8uLL);
      v123.i64[0] = v129.i32[0] & 0xFFFFFEFF;
      v123.i64[1] = v129.i32[1] & 0xFFFFFEFF;
      v130 = vorrq_s8(v128, v123);
      *v24 = v130;
      v31 = (v31 + 1) & v35;
      v130.i8[0] = *(v33 + ((v34 + 1) & v35));
      v130.i8[4] = *(v33 + v31);
      *v130.i8 = vand_s8(*v130.i8, 0xFF000000FFLL);
      v131 = vadd_s32(v116, *v130.i8);
      v132 = vadd_s32(v115, *v130.i8);
      *v126.i8 = vadd_s32(v114, *v130.i8);
      v133 = vshl_n_s32(vadd_s32(v113, *v130.i8), 0x10uLL);
      v123.i64[0] = v133.i32[0] & 0xFF00FFFF;
      v123.i64[1] = v133.i32[1] & 0xFF00FFFF;
      v134 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v112, *v130.i8), 0xFF000000FF00), 0x18uLL), v123);
      *v126.i8 = vand_s8(vshl_n_s32(*v126.i8, 8uLL), 0xFF000000FF0000);
      v123.i64[0] = v126.u32[0];
      v123.i64[1] = v126.u32[1];
      v135 = v123;
      v136 = vand_s8(v132, 0xFF000000FF00);
      v123.i64[0] = v136.u32[0];
      v123.i64[1] = v136.u32[1];
      v137 = vorrq_s8(v134, vorrq_s8(v135, v123));
      v138 = vshr_n_u32(v131, 8uLL);
      v123.i64[0] = v138.i32[0] & 0xFFFFFEFF;
      v123.i64[1] = v138.i32[1] & 0xFFFFFEFF;
      v5 = vorrq_s8(v137, v123);
      *v23 = -1;
      v23 += 4;
      v24[1] = v5;
      v24 += 2;
      v117 -= 4;
      v34 = (v34 + 1) & v35;
    }

    while (v117 > 4);
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

uint64_t CMYK32_image(int **a1, unsigned __int8 *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
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
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v42, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v25, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *v6 != 134759428 || v8 <= 23;
  v20 = *a3;
  if (v19)
  {
    v21 = v8;
  }

  else
  {
    v21 = v8 + 4;
  }

  DWORD2(v25) = *a3;
  HIDWORD(v25) = v18;
  if (v20 != 134759428)
  {
    v22 = SAMPLEINDEX(v20, v10, v11, v12, v13, v14, v15, v16);
    if (v22)
    {
      *&v25 = *&CMYK8_image_sample[2 * v22 + 2];
      if (v25)
      {
        DWORD2(v25) = 134759444;
        goto LABEL_31;
      }

      if ((HIWORD(*a3) & 0x3Fu) <= 0x10)
      {
        *&v25 = *&CMYK16_image_sample[2 * v22 + 2];
        if (v25)
        {
          v23 = 16;
          v24 = 269501476;
LABEL_30:
          LODWORD(v26) = v23;
          DWORD2(v25) = v24;
          goto LABEL_31;
        }
      }

      *&v25 = *&CMYKF_image_sample[2 * v22 + 2];
      if (v25)
      {
        v23 = 20;
        v24 = 538985509;
        goto LABEL_30;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!v36 && (~DWORD1(v26) & 0xC3) == 0)
  {
    v17.n128_u32[0] = *(a3 + 8);
    if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
    {
      if ((BYTE4(v26) & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      cmyk32_mark(a1, v17);
      return 1;
    }
  }

  *&v25 = cmyk32_sample_cmyk32;
LABEL_31:
  cmyk32_image_mark(a2, &v25, v21, v17);
  return 1;
}

_DWORD *CMYK32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float32x2_t *a5, float a6, double a7, double a8, double a9)
{
  v11 = PIXELCONSTANT(*(*a1 + 64), a4, a5, a6, a7, a8, a9);
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CAE0;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = bswap32(v11);
    *(a2 + 4) = a2 + 12;
    if (BYTE4(v11) == 255)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[13] = 16843009 * BYTE4(v11);
      *(a2 + 5) = a2 + 13;
    }
  }

  return a2;
}

void __MapContextToPage_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CGPDFAnnotationGetType(a3) == 25 || CGPDFAnnotationGetType(a3) == 4)
  {
    v5 = [[CPAnnotation alloc] initWithCGPDFAnnotation:a3];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 32) addAnnotation:v5];
    }
  }
}

uint64_t ReconstructZone(void *a1)
{
  v2 = [a1 count];
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = [a1 childAtIndex:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        ReconstructZone(v5);
      }

      v4 = (v4 + 1);
    }

    while (v3 != v4);
  }

  v6 = [a1 textLinesInZone];
  v7 = [v6 count];
  if (v7)
  {
    [CPTextLineSplitter splitLinesIn:a1];
    if ([v6 count] > v7)
    {
      [a1 sortUsingSelector:sel_compareTopDescending_];
    }

    v8 = objc_alloc_init(CPParagraphMaker);
    [(CPParagraphMaker *)v8 makeParagraphsIn:a1];
    v9 = objc_alloc_init(CPColumnMaker);
    [objc_msgSend(a1 "page")];
    [(CPColumnMaker *)v9 setPageBounds:?];
    [(CPColumnMaker *)v9 makeColumnsFrom:[(CPParagraphMaker *)v8 paragraphs] zone:a1];
    v10 = objc_alloc_init(CPLayoutMaker);
    [(CPLayoutMaker *)v10 makeLayouts:a1 from:[(CPColumnMaker *)v9 columns]];
  }

  return [a1 sortUsingSelector:sel_compareTopDescending_];
}