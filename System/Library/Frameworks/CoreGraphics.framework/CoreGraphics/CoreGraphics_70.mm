void cmyk64_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
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
  v8.n128_f32[0] = (v8.n128_f32[0] * 65535.0) + 0.5;
  v66[0] = a3;
  v66[1] = a4;
  LOWORD(v67) = v8.n128_f32[0];
  v9 = *(a1 + 28) >> 3;
  *&v68 = v9;
  if (*(a1 + 48))
  {
    v10 = *(a1 + 32) >> 1;
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
      v58 = v54 + *(a1 + 12);
      v59 = *(a1 + 40) + 8 * v9 * v56 + 8 * v58;
      v60 = v57 + 2 * v10 * v56 + 2 * v58;
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

uint64_t cmyk64_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, int32x4_t a7)
{
  if (*(a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = 255;
  }

  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v129 = *(a2 + 5) - a5;
  }

  else
  {
    v129 = 0;
  }

  v10 = *(a2 + 4);
  v11 = a2[1];
  v128 = *a2;
  v127 = *(a2 + 3) - a5;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v124 = *(a2 + 11);
  v15 = *(a2 + 7) + v124 * a4;
  v16 = *(a1 + 32);
  v17 = v16 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v18 = 2 * (v9 != 0);
  v142 = v10;
  v143 = result;
  v141 = v11;
  v125 = v14;
  v126 = v13;
  if (*(a1 + 176))
  {
    v123 = *(a2 + 13);
    v122 = *(a2 + 15);
    v121 = ~(-1 << v14);
    v120 = v14 - 4;
    v19 = (v17 - 4);
    v20 = 32 - v11;
    v21 = v10 ^ 0xFFFF;
    v118 = a5;
    v119 = -v13;
    v22 = vdupq_n_s32(v10 ^ 0xFFFFu);
    v117 = v12 + 16 * a3 + 8;
    v137 = v10 ^ 0xFFFF;
    v135 = v22;
    while (1)
    {
      if (((v122 - v15) | (v15 - v123)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v15 & v121) >> v120) & 0xF;
        v24 = (v23 - 7) >= 9 ? v119 : v13;
        v25 = weights_21890[v23] & 0xF;
      }

      v26 = *(a1 + 32) + (v15 >> v14) * v13;
      v133 = a6;
      v131 = v15;
      if (v128 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v27 = v117;
        v28 = v118;
        while (1)
        {
          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v26 + v29;
          if (v19 >= v26 + v29)
          {
            v32 = (v26 + v29);
          }

          else
          {
            v32 = v19;
          }

          if (v32 < v16)
          {
            v32 = v16;
          }

          v33 = *v32;
          v34 = v30 & 0xF;
          if ((v30 & 0xF) != 0)
          {
            break;
          }

          if (v25)
          {
            v45 = (v31 + v24);
            if (v19 < v31 + v24)
            {
              v45 = v19;
            }

            if (v45 < v16)
            {
              v45 = v16;
            }

            v46 = BLEND8_21892[v25];
            v43 = v33 - ((v46 & v33) >> v25);
            v44 = (v46 & *v45) >> v25;
            goto LABEL_46;
          }

LABEL_47:
          v47 = (v33 << v11) | (v33 >> v20);
          v48 = HIBYTE(v47) | (HIBYTE(v47) << 8);
          v49 = BYTE2(v47) | (BYTE2(v47) << 8);
          v50 = BYTE1(v47) | (BYTE1(v47) << 8);
          v51 = v47 | result | ((v47 | result) << 8);
          if (v48 <= v49)
          {
            v52 = v49;
          }

          else
          {
            v52 = v48;
          }

          if (v50 > v52)
          {
            v52 = v50;
          }

          a7.i64[0] = __PAIR64__(v52, v51);
          v53.i64[0] = __PAIR64__(v50, v52);
          v53.i64[1] = __PAIR64__(v48, v49);
          a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v52, v51), 1)), v53);
          if (v10 != 0xFFFF)
          {
            v54 = vmulq_s32(a7, v22);
            a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v54, 0x10uLL), vmvnq_s8(v54)), 0x10uLL));
            v51 -= (v51 * v21 + ((v51 * v21) >> 16) + 1) >> 16;
          }

          if (v9)
          {
            *v9 = v51;
          }

          v27 += 2;
          *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
          v9 = (v9 + v18);
          if (!--v28)
          {
            goto LABEL_107;
          }
        }

        v35 = (v31 + (v30 >> 4));
        if (v19 < v35)
        {
          v35 = v19;
        }

        if (v35 < v16)
        {
          v35 = v16;
        }

        v36 = *v35;
        if (v25)
        {
          v37 = (v31 + v24);
          if (v19 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v19;
          }

          if (v38 < v16)
          {
            v38 = v16;
          }

          v39 = *v38;
          v40 = (v37 + (v30 >> 4));
          if (v19 < v40)
          {
            v40 = v19;
          }

          if (v40 < v16)
          {
            v40 = v16;
          }

          v41 = BLEND8_21892[v25];
          v33 = v33 - ((v41 & v33) >> v25) + ((v41 & v39) >> v25);
          v36 = v36 - ((v41 & v36) >> v25) + ((v41 & *v40) >> v25);
        }

        v42 = BLEND8_21892[*v27 & 0xF];
        v43 = v33 - ((v42 & v33) >> v34);
        v44 = (v42 & v36) >> v34;
LABEL_46:
        v33 = v43 + v44;
        goto LABEL_47;
      }

LABEL_107:
      v13 = v126;
      v8 += v127;
      LOBYTE(v14) = v125;
      v15 = v131 + v124;
      v9 += v129;
      a6 = v133 - 1;
      if (v133 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v55 = v117;
    v56 = v118;
    v139 = v24;
    while (1)
    {
      v57 = *(v55 - 1);
      v58 = *v55;
      v59 = v26 + v57;
      if (v19 >= v26 + v57)
      {
        v60 = (v26 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v16)
      {
        v60 = v16;
      }

      v61 = *v60;
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v16)
        {
          v63 = v16;
        }

        v64 = *v63;
        if (v25)
        {
          v65 = (v59 + v24);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v16)
          {
            v66 = v16;
          }

          v67 = *v66;
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v16)
          {
            v68 = v16;
          }

          v69 = BLEND8_21892[v25];
          v61 = v61 - ((v69 & v61) >> v25) + ((v69 & v67) >> v25);
          v64 = v64 - ((v69 & v64) >> v25) + ((v69 & *v68) >> v25);
        }

        v70 = BLEND8_21892[*v55 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v25)
        {
          goto LABEL_89;
        }

        v73 = (v59 + v24);
        if (v19 < v59 + v24)
        {
          v73 = v19;
        }

        if (v73 < v16)
        {
          v73 = v16;
        }

        v74 = BLEND8_21892[v25];
        v71 = v61 - ((v74 & v61) >> v25);
        v72 = (v74 & *v73) >> v25;
      }

      v61 = v71 + v72;
LABEL_89:
      v75 = (v61 << v11) | (v61 >> v20);
      v76 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      v77 = BYTE2(v75) | (BYTE2(v75) << 8);
      v78 = BYTE1(v75) | (BYTE1(v75) << 8);
      v79 = v75 | result | ((v75 | result) << 8);
      if (v76 <= v77)
      {
        v80 = BYTE2(v75) | (BYTE2(v75) << 8);
      }

      else
      {
        v80 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      }

      if (v78 > v80)
      {
        v80 = v78;
      }

      a7.i64[0] = __PAIR64__(v80, v79);
      v81.i64[0] = __PAIR64__(v78, v80);
      v81.i64[1] = __PAIR64__(v76, v77);
      a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v80, v79), 1)), v81);
      if (v10 != 0xFFFF)
      {
        v82 = vmulq_s32(a7, v22);
        a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v82, 0x10uLL), vmvnq_s8(v82)), 0x10uLL));
        v79 -= (v79 * v21 + ((v79 * v21) >> 16) + 1) >> 16;
      }

      v83 = (a7.i32[2] << 16) | a7.u16[6];
      v84 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83;
      if (v9)
      {
        if (v79)
        {
          if (v79 != 0xFFFF)
          {
            cmyk64_DAplusDAM(v8, v9, v84, v79, *v8, *v9, ~v79);
LABEL_105:
            v24 = v139;
            v22 = v135;
            v21 = v137;
            LOBYTE(v11) = v141;
            v10 = v142;
            result = v143;
            goto LABEL_106;
          }

          *v8 = v84;
          *v9 = -1;
        }
      }

      else if (v79)
      {
        if (v79 != 0xFFFF)
        {
          cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83, *v8, ~v79);
          goto LABEL_105;
        }

        *v8 = v84;
      }

LABEL_106:
      v55 += 2;
      ++v8;
      v9 = (v9 + v18);
      if (!--v56)
      {
        goto LABEL_107;
      }
    }
  }

  v138 = (v12 + 16 * a3);
  v85 = v17 - 4;
  v86 = 32 - v11;
  v87 = v10 ^ 0xFFFF;
  v88 = vdupq_n_s32(v10 ^ 0xFFFFu);
  v136 = a5;
  v140 = v88;
  do
  {
    v89 = *(a1 + 32);
    v90 = &v89[(v15 >> v14) * v13];
    v134 = a6;
    v132 = v15;
    if (v128 != 1)
    {
      v103 = v138;
      v104 = v136;
      if (a5 < 1)
      {
        goto LABEL_151;
      }

      while (1)
      {
        v105 = *v103;
        v103 += 2;
        v106 = &v90[v105];
        if (v85 < &v90[v105])
        {
          v106 = v85;
        }

        if (v106 < *(a1 + 32))
        {
          v106 = *(a1 + 32);
        }

        v107 = (*v106 << v11) | (*v106 >> v86);
        v108 = HIBYTE(v107) | (HIBYTE(v107) << 8);
        v109 = BYTE2(v107) | (BYTE2(v107) << 8);
        v110 = BYTE1(v107) | (BYTE1(v107) << 8);
        v111 = v107 | result | ((v107 | result) << 8);
        if (v108 <= v109)
        {
          v112 = BYTE2(v107) | (BYTE2(v107) << 8);
        }

        else
        {
          v112 = HIBYTE(v107) | (HIBYTE(v107) << 8);
        }

        if (v110 > v112)
        {
          v112 = v110;
        }

        a7.i64[0] = __PAIR64__(v112, v111);
        v113.i64[0] = __PAIR64__(v110, v112);
        v113.i64[1] = __PAIR64__(v108, v109);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v112, v111), 1)), v113);
        if (v10 != 0xFFFF)
        {
          v114 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v114, 0x10uLL), vmvnq_s8(v114)), 0x10uLL));
          v111 -= (v111 * v87 + ((v111 * v87) >> 16) + 1) >> 16;
        }

        v115 = (a7.i32[2] << 16) | a7.u16[6];
        v116 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v115;
        if (v9)
        {
          if (v111)
          {
            if (v111 != 0xFFFF)
            {
              cmyk64_DAplusDAM(v8, v9, v116, v111, *v8, *v9, ~v111);
LABEL_149:
              v88 = v140;
              LOBYTE(v11) = v141;
              v10 = v142;
              result = v143;
              goto LABEL_150;
            }

            *v8 = v116;
            *v9 = -1;
          }
        }

        else if (v111)
        {
          if (v111 != 0xFFFF)
          {
            cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v115, *v8, ~v111);
            goto LABEL_149;
          }

          *v8 = v116;
        }

LABEL_150:
        ++v8;
        v9 = (v9 + v18);
        if (!--v104)
        {
          goto LABEL_151;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v138;
      v92 = v136;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = &v90[v93];
        if (v85 < &v90[v93])
        {
          v94 = v85;
        }

        if (v94 < v89)
        {
          v94 = v89;
        }

        v95 = (*v94 << v11) | (*v94 >> v86);
        v96 = HIBYTE(v95) | (HIBYTE(v95) << 8);
        v97 = BYTE2(v95) | (BYTE2(v95) << 8);
        v98 = BYTE1(v95) | (BYTE1(v95) << 8);
        v99 = v95 | result | ((v95 | result) << 8);
        if (v96 <= v97)
        {
          v100 = v97;
        }

        else
        {
          v100 = v96;
        }

        if (v98 > v100)
        {
          v100 = v98;
        }

        a7.i64[0] = __PAIR64__(v100, v99);
        v101.i64[0] = __PAIR64__(v98, v100);
        v101.i64[1] = __PAIR64__(v96, v97);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v100, v99), 1)), v101);
        if (v10 != 0xFFFF)
        {
          v102 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v102, 0x10uLL), vmvnq_s8(v102)), 0x10uLL));
          v99 -= (v99 * v87 + ((v99 * v87) >> 16) + 1) >> 16;
        }

        if (v9)
        {
          *v9 = v99;
        }

        *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
        v9 = (v9 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_151:
    v13 = v126;
    v8 += v127;
    LOBYTE(v14) = v125;
    v15 = v132 + v124;
    v9 += v129;
    a6 = v134 - 1;
  }

  while (v134 != 1);
  return result;
}

uint64_t cmyk64_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, int32x4_t a7)
{
  if (*(a1 + 40))
  {
    result = 0;
  }

  else
  {
    result = 255;
  }

  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v10 = *(a2 + 4);
  v11 = a2[1];
  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v126 = *(a2 + 11);
  v15 = *(a2 + 7) + v126 * a4;
  v16 = *(a1 + 32);
  v17 = v16 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v18 = 2 * (v9 != 0);
  v144 = v10;
  v145 = result;
  v143 = v11;
  v127 = v14;
  v128 = v13;
  if (*(a1 + 176))
  {
    v125 = *(a2 + 13);
    v124 = *(a2 + 15);
    v123 = ~(-1 << v14);
    v122 = v14 - 4;
    v19 = (v17 - 4);
    v20 = 32 - v11;
    v21 = v10 ^ 0xFFFF;
    v120 = a5;
    v121 = -v13;
    v22 = vdupq_n_s32(v10 ^ 0xFFFFu);
    v119 = v12 + 16 * a3 + 8;
    v139 = v10 ^ 0xFFFF;
    v137 = v22;
    while (1)
    {
      if (((v124 - v15) | (v15 - v125)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v15 & v123) >> v122) & 0xF;
        v24 = (v23 - 7) >= 9 ? v121 : v13;
        v25 = weights_21890[v23] & 0xF;
      }

      v26 = *(a1 + 32) + (v15 >> v14) * v13;
      v135 = a6;
      v133 = v15;
      if (v130 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v27 = v119;
        v28 = v120;
        while (1)
        {
          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v26 + v29;
          if (v19 >= v26 + v29)
          {
            v32 = (v26 + v29);
          }

          else
          {
            v32 = v19;
          }

          if (v32 < v16)
          {
            v32 = v16;
          }

          v33 = bswap32(*v32);
          v34 = v30 & 0xF;
          if ((v30 & 0xF) != 0)
          {
            break;
          }

          if (v25)
          {
            v45 = (v31 + v24);
            if (v19 < v31 + v24)
            {
              v45 = v19;
            }

            if (v45 < v16)
            {
              v45 = v16;
            }

            v46 = BLEND8_21892[v25];
            v43 = v33 - ((v46 & v33) >> v25);
            v44 = (bswap32(*v45) & v46) >> v25;
            goto LABEL_46;
          }

LABEL_47:
          v47 = (v33 << v11) | (v33 >> v20);
          v48 = HIBYTE(v47) | (HIBYTE(v47) << 8);
          v49 = BYTE2(v47) | (BYTE2(v47) << 8);
          v50 = BYTE1(v47) | (BYTE1(v47) << 8);
          v51 = v47 | result | ((v47 | result) << 8);
          if (v48 <= v49)
          {
            v52 = v49;
          }

          else
          {
            v52 = v48;
          }

          if (v50 > v52)
          {
            v52 = v50;
          }

          a7.i64[0] = __PAIR64__(v52, v51);
          v53.i64[0] = __PAIR64__(v50, v52);
          v53.i64[1] = __PAIR64__(v48, v49);
          a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v52, v51), 1)), v53);
          if (v10 != 0xFFFF)
          {
            v54 = vmulq_s32(a7, v22);
            a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v54, 0x10uLL), vmvnq_s8(v54)), 0x10uLL));
            v51 -= (v51 * v21 + ((v51 * v21) >> 16) + 1) >> 16;
          }

          if (v9)
          {
            *v9 = v51;
          }

          v27 += 2;
          *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
          v9 = (v9 + v18);
          if (!--v28)
          {
            goto LABEL_107;
          }
        }

        v35 = (v31 + (v30 >> 4));
        if (v19 < v35)
        {
          v35 = v19;
        }

        if (v35 < v16)
        {
          v35 = v16;
        }

        v36 = bswap32(*v35);
        if (v25)
        {
          v37 = (v31 + v24);
          if (v19 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v19;
          }

          if (v38 < v16)
          {
            v38 = v16;
          }

          v39 = bswap32(*v38);
          v40 = (v37 + (v30 >> 4));
          if (v19 < v40)
          {
            v40 = v19;
          }

          if (v40 < v16)
          {
            v40 = v16;
          }

          v41 = BLEND8_21892[v25];
          v33 = v33 - ((v41 & v33) >> v25) + ((v41 & v39) >> v25);
          v36 = v36 - ((v41 & v36) >> v25) + ((bswap32(*v40) & v41) >> v25);
        }

        v42 = BLEND8_21892[*v27 & 0xF];
        v43 = v33 - ((v42 & v33) >> v34);
        v44 = (v42 & v36) >> v34;
LABEL_46:
        v33 = v43 + v44;
        goto LABEL_47;
      }

LABEL_107:
      v13 = v128;
      v8 += v129;
      LOBYTE(v14) = v127;
      v15 = v133 + v126;
      v9 += v131;
      a6 = v135 - 1;
      if (v135 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v55 = v119;
    v56 = v120;
    v141 = v24;
    while (1)
    {
      v57 = *(v55 - 1);
      v58 = *v55;
      v59 = v26 + v57;
      if (v19 >= v26 + v57)
      {
        v60 = (v26 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v16)
      {
        v60 = v16;
      }

      v61 = bswap32(*v60);
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v16)
        {
          v63 = v16;
        }

        v64 = bswap32(*v63);
        if (v25)
        {
          v65 = (v59 + v24);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v16)
          {
            v66 = v16;
          }

          v67 = bswap32(*v66);
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v16)
          {
            v68 = v16;
          }

          v69 = BLEND8_21892[v25];
          v61 = v61 - ((v69 & v61) >> v25) + ((v69 & v67) >> v25);
          v64 = v64 - ((v69 & v64) >> v25) + ((bswap32(*v68) & v69) >> v25);
        }

        v70 = BLEND8_21892[*v55 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v25)
        {
          goto LABEL_89;
        }

        v73 = (v59 + v24);
        if (v19 < v59 + v24)
        {
          v73 = v19;
        }

        if (v73 < v16)
        {
          v73 = v16;
        }

        v74 = BLEND8_21892[v25];
        v71 = v61 - ((v74 & v61) >> v25);
        v72 = (bswap32(*v73) & v74) >> v25;
      }

      v61 = v71 + v72;
LABEL_89:
      v75 = (v61 << v11) | (v61 >> v20);
      v76 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      v77 = BYTE2(v75) | (BYTE2(v75) << 8);
      v78 = BYTE1(v75) | (BYTE1(v75) << 8);
      v79 = v75 | result | ((v75 | result) << 8);
      if (v76 <= v77)
      {
        v80 = BYTE2(v75) | (BYTE2(v75) << 8);
      }

      else
      {
        v80 = HIBYTE(v75) | (HIBYTE(v75) << 8);
      }

      if (v78 > v80)
      {
        v80 = v78;
      }

      a7.i64[0] = __PAIR64__(v80, v79);
      v81.i64[0] = __PAIR64__(v78, v80);
      v81.i64[1] = __PAIR64__(v76, v77);
      a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v80, v79), 1)), v81);
      if (v10 != 0xFFFF)
      {
        v82 = vmulq_s32(a7, v22);
        a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v82, 0x10uLL), vmvnq_s8(v82)), 0x10uLL));
        v79 -= (v79 * v21 + ((v79 * v21) >> 16) + 1) >> 16;
      }

      v83 = (a7.i32[2] << 16) | a7.u16[6];
      v84 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83;
      if (v9)
      {
        if (v79)
        {
          if (v79 != 0xFFFF)
          {
            cmyk64_DAplusDAM(v8, v9, v84, v79, *v8, *v9, ~v79);
LABEL_105:
            v24 = v141;
            v22 = v137;
            v21 = v139;
            LOBYTE(v11) = v143;
            v10 = v144;
            result = v145;
            goto LABEL_106;
          }

          *v8 = v84;
          *v9 = -1;
        }
      }

      else if (v79)
      {
        if (v79 != 0xFFFF)
        {
          cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v83, *v8, ~v79);
          goto LABEL_105;
        }

        *v8 = v84;
      }

LABEL_106:
      v55 += 2;
      ++v8;
      v9 = (v9 + v18);
      if (!--v56)
      {
        goto LABEL_107;
      }
    }
  }

  v140 = (v12 + 16 * a3);
  v85 = (v17 - 4);
  v86 = 32 - v11;
  v87 = v10 ^ 0xFFFF;
  v88 = vdupq_n_s32(v10 ^ 0xFFFFu);
  v138 = a5;
  v142 = v88;
  do
  {
    v89 = *(a1 + 32);
    v90 = v89 + (v15 >> v14) * v13;
    v136 = a6;
    v134 = v15;
    if (v130 != 1)
    {
      v104 = v140;
      v105 = v138;
      if (a5 < 1)
      {
        goto LABEL_151;
      }

      while (1)
      {
        v106 = *v104;
        v104 += 2;
        v107 = &v90[v106];
        if (v85 < &v90[v106])
        {
          v107 = v85;
        }

        if (v107 < *(a1 + 32))
        {
          v107 = *(a1 + 32);
        }

        v108 = bswap32(*v107);
        v109 = (v108 << v11) | (v108 >> v86);
        v110 = HIBYTE(v109) | (HIBYTE(v109) << 8);
        v111 = BYTE2(v109) | (BYTE2(v109) << 8);
        v112 = BYTE1(v109) | (BYTE1(v109) << 8);
        v113 = v109 | result | ((v109 | result) << 8);
        if (v110 <= v111)
        {
          v114 = BYTE2(v109) | (BYTE2(v109) << 8);
        }

        else
        {
          v114 = HIBYTE(v109) | (HIBYTE(v109) << 8);
        }

        if (v112 > v114)
        {
          v114 = v112;
        }

        a7.i64[0] = __PAIR64__(v114, v113);
        v115.i64[0] = __PAIR64__(v112, v114);
        v115.i64[1] = __PAIR64__(v110, v111);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v114, v113), 1)), v115);
        if (v10 != 0xFFFF)
        {
          v116 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v116, 0x10uLL), vmvnq_s8(v116)), 0x10uLL));
          v113 -= (v113 * v87 + ((v113 * v87) >> 16) + 1) >> 16;
        }

        v117 = (a7.i32[2] << 16) | a7.u16[6];
        v118 = (a7.u16[2] << 32) | (a7.u32[0] << 48) | v117;
        if (v9)
        {
          if (v113)
          {
            if (v113 != 0xFFFF)
            {
              cmyk64_DAplusDAM(v8, v9, v118, v113, *v8, *v9, ~v113);
LABEL_149:
              v88 = v142;
              LOBYTE(v11) = v143;
              v10 = v144;
              result = v145;
              goto LABEL_150;
            }

            *v8 = v118;
            *v9 = -1;
          }
        }

        else if (v113)
        {
          if (v113 != 0xFFFF)
          {
            cmyk64_DplusDM(v8, (a7.u16[2] << 32) | (a7.u32[0] << 48) | v117, *v8, ~v113);
            goto LABEL_149;
          }

          *v8 = v118;
        }

LABEL_150:
        ++v8;
        v9 = (v9 + v18);
        if (!--v105)
        {
          goto LABEL_151;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v140;
      v92 = v138;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = &v90[v93];
        if (v85 < &v90[v93])
        {
          v94 = v85;
        }

        if (v94 < v89)
        {
          v94 = v89;
        }

        v95 = bswap32(*v94);
        v96 = (v95 << v11) | (v95 >> v86);
        v97 = HIBYTE(v96) | (HIBYTE(v96) << 8);
        v98 = BYTE2(v96) | (BYTE2(v96) << 8);
        v99 = BYTE1(v96) | (BYTE1(v96) << 8);
        v100 = v96 | result | ((v96 | result) << 8);
        if (v97 <= v98)
        {
          v101 = v98;
        }

        else
        {
          v101 = v97;
        }

        if (v99 > v101)
        {
          v101 = v99;
        }

        a7.i64[0] = __PAIR64__(v101, v100);
        v102.i64[0] = __PAIR64__(v99, v101);
        v102.i64[1] = __PAIR64__(v97, v98);
        a7 = vsubq_s32(vzip1q_s32(a7, vdupq_lane_s32(__PAIR64__(v101, v100), 1)), v102);
        if (v10 != 0xFFFF)
        {
          v103 = vmulq_s32(a7, v88);
          a7 = vsubq_s32(a7, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v103, 0x10uLL), vmvnq_s8(v103)), 0x10uLL));
          v100 -= (v100 * v87 + ((v100 * v87) >> 16) + 1) >> 16;
        }

        if (v9)
        {
          *v9 = v100;
        }

        *v8++ = (a7.u16[2] << 32) | (a7.u32[0] << 48) | (a7.i32[2] << 16) | a7.u16[6];
        v9 = (v9 + v18);
        --v92;
      }

      while (v92);
    }

LABEL_151:
    v13 = v128;
    v8 += v129;
    LOBYTE(v14) = v127;
    v15 = v134 + v126;
    v9 += v131;
    a6 = v136 - 1;
  }

  while (v136 != 1);
  return result;
}

void *cmyk64_image_mark_RGB24(void *result, int *a2, int a3, int a4, int a5, int a6)
{
  v164 = result;
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v155 = *(a2 + 5) - a5;
  }

  else
  {
    v155 = 0;
  }

  v8 = *(a2 + 4);
  v154 = *a2;
  v153 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v150 = *(a2 + 11);
  v12 = *(a2 + 7) + v150 * a4;
  v13 = result[4];
  v14 = &v13[(*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3)];
  v15 = 2 * (v7 != 0);
  v163 = v8;
  v151 = v11;
  v152 = v10;
  if (result[22])
  {
    v147 = *(a2 + 15);
    v148 = *(a2 + 13);
    v145 = ~(-1 << v11);
    v143 = -v10;
    v144 = v11 - 4;
    v16 = v14 - 3;
    v17 = v8 ^ 0xFFFF;
    v18 = vdup_n_s32(v8 ^ 0xFFFFu);
    v141 = v9 + 16 * a3 + 8;
    v142 = a5;
    v19 = xmmword_18439CC00;
    while (1)
    {
      if (((v147 - v12) | (v12 - v148)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v12 & v145) >> v144) & 0xF;
        v21 = (v20 - 7) >= 9 ? v143 : v10;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = v164[4] + (v12 >> v11) * v10;
      v146 = -2 - (0xFFFF * v17 + ((0xFFFF * v17) >> 16));
      v24 = HIWORD(v146);
      v159 = a6;
      v157 = v12;
      if (v154 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v141;
        for (i = v142; i; --i)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v23 + v27;
          if (v16 >= v23 + v27)
          {
            v30 = (v23 + v27);
          }

          else
          {
            v30 = v16;
          }

          if (v30 < v13)
          {
            v30 = v13;
          }

          v31 = (*v30 << 24) | (v30[1] << 16) | (v30[2] << 8);
          v32 = v28 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            v33 = (v29 + (v28 >> 4));
            if (v16 < v33)
            {
              v33 = v16;
            }

            if (v33 < v13)
            {
              v33 = v13;
            }

            v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
            if (v22)
            {
              v35 = (v29 + v21);
              if (v16 >= v35)
              {
                v36 = v35;
              }

              else
              {
                v36 = v16;
              }

              if (v36 < v13)
              {
                v36 = v13;
              }

              result = v36[1];
              v37 = (*v36 << 24) | (result << 16) | (v36[2] << 8);
              v38 = &v35[v28 >> 4];
              if (v16 < v38)
              {
                v38 = v16;
              }

              if (v38 < v13)
              {
                v38 = v13;
              }

              v39 = BLEND8_21892[v22];
              v31 = v31 - ((v39 & v31) >> v22) + ((v39 & v37) >> v22);
              v34 = v34 - ((v39 & v34) >> v22) + ((((*v38 << 24) | (v38[1] << 16) | (v38[2] << 8)) & v39) >> v22);
            }

            v40 = BLEND8_21892[*v25 & 0xF];
            v41 = v31 - ((v40 & v31) >> v32);
            v42 = (v40 & v34) >> v32;
          }

          else
          {
            if (!v22)
            {
              goto LABEL_44;
            }

            v43 = (v29 + v21);
            if (v16 < v29 + v21)
            {
              v43 = v16;
            }

            if (v43 < v13)
            {
              v43 = v13;
            }

            v44 = BLEND8_21892[v22];
            v41 = v31 - ((v44 & v31) >> v22);
            v42 = (((*v43 << 24) | (v43[1] << 16) | (v43[2] << 8)) & v44) >> v22;
          }

          v31 = v41 + v42;
LABEL_44:
          v45 = HIBYTE(v31) | (HIBYTE(v31) << 8);
          v46 = BYTE2(v31) | (BYTE2(v31) << 8);
          v47 = BYTE1(v31) | (BYTE1(v31) << 8);
          if (v45 <= v46)
          {
            v48 = BYTE2(v31) | (BYTE2(v31) << 8);
          }

          else
          {
            v48 = HIBYTE(v31) | (HIBYTE(v31) << 8);
          }

          if (v47 <= v48)
          {
            v49 = v48;
          }

          else
          {
            v49 = v47;
          }

          v50 = v49 - v45;
          v51 = v49 - v46;
          v52 = v49 - v47;
          v53 = v49 ^ 0xFFFF;
          if (v8 == 0xFFFF)
          {
            v54 = (v53 << 48) | (v52 << 32);
            v55 = -1;
            if (!v7)
            {
              goto LABEL_55;
            }

LABEL_54:
            *v7 = v55;
            goto LABEL_55;
          }

          v56 = vmul_s32(__PAIR64__(v52, v53), v18);
          v50 -= (v50 * v17 + ((v50 * v17) >> 16) + 1) >> 16;
          v51 -= (v51 * v17 + ((v51 * v17) >> 16) + 1) >> 16;
          v57 = vand_s8(vsub_s32(__PAIR64__(v52, v53), vshr_n_u32(vsub_s32(vshr_n_u32(v56, 0x10uLL), vmvn_s8(v56)), 0x10uLL)), 0xFFFF0000FFFFLL);
          v58.i64[0] = v57.u32[0];
          v58.i64[1] = v57.u32[1];
          v59 = vshlq_u64(v58, v19);
          v54 = vorrq_s8(v59, vdupq_laneq_s64(v59, 1)).u64[0];
          v55 = (-2 - (0xFFFF * v17 + ((0xFFFF * v17) >> 16))) >> 16;
          if (v7)
          {
            goto LABEL_54;
          }

LABEL_55:
          v25 += 2;
          *v6++ = v54 | (v51 << 16) | v50;
          v7 = (v7 + v15);
        }
      }

LABEL_108:
      v10 = v152;
      v6 += v153;
      LOBYTE(v11) = v151;
      v12 = v157 + v150;
      v7 += v155;
      a6 = v159 - 1;
      if (v159 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_108;
    }

    v61 = v141;
    v60 = v142;
    v162 = v21;
    while (1)
    {
      v62 = *(v61 - 1);
      v63 = *v61;
      v64 = v23 + v62;
      if (v16 >= v23 + v62)
      {
        v65 = (v23 + v62);
      }

      else
      {
        v65 = v16;
      }

      if (v65 < v13)
      {
        v65 = v13;
      }

      v66 = (*v65 << 24) | (v65[1] << 16) | (v65[2] << 8);
      v67 = v63 & 0xF;
      if ((v63 & 0xF) != 0)
      {
        v68 = (v64 + (v63 >> 4));
        if (v16 < v68)
        {
          v68 = v16;
        }

        if (v68 < v13)
        {
          v68 = v13;
        }

        v69 = (*v68 << 24) | (v68[1] << 16) | (v68[2] << 8);
        if (v22)
        {
          v70 = (v64 + v21);
          if (v16 >= v70)
          {
            v71 = v70;
          }

          else
          {
            v71 = v16;
          }

          if (v71 < v13)
          {
            v71 = v13;
          }

          v72 = (*v71 << 24) | (v71[1] << 16) | (v71[2] << 8);
          v73 = &v70[v63 >> 4];
          if (v16 < v73)
          {
            v73 = v16;
          }

          if (v73 < v13)
          {
            v73 = v13;
          }

          v74 = BLEND8_21892[v22];
          v66 = v66 - ((v74 & v66) >> v22) + ((v74 & v72) >> v22);
          v69 = v69 - ((v74 & v69) >> v22) + ((((*v73 << 24) | (v73[1] << 16) | (v73[2] << 8)) & v74) >> v22);
        }

        v75 = BLEND8_21892[*v61 & 0xF];
        v76 = v66 - ((v75 & v66) >> v67);
        v77 = (v75 & v69) >> v67;
      }

      else
      {
        if (!v22)
        {
          goto LABEL_88;
        }

        v78 = (v64 + v21);
        if (v16 < v64 + v21)
        {
          v78 = v16;
        }

        if (v78 < v13)
        {
          v78 = v13;
        }

        v79 = BLEND8_21892[v22];
        v76 = v66 - ((v79 & v66) >> v22);
        v77 = (((*v78 << 24) | (v78[1] << 16) | (v78[2] << 8)) & v79) >> v22;
      }

      v66 = v76 + v77;
LABEL_88:
      v80 = HIBYTE(v66) | (HIBYTE(v66) << 8);
      v81 = BYTE2(v66) | (BYTE2(v66) << 8);
      v82 = BYTE1(v66) | (BYTE1(v66) << 8);
      if (v80 <= v81)
      {
        v83 = BYTE2(v66) | (BYTE2(v66) << 8);
      }

      else
      {
        v83 = HIBYTE(v66) | (HIBYTE(v66) << 8);
      }

      if (v82 <= v83)
      {
        v84 = v83;
      }

      else
      {
        v84 = v82;
      }

      v85 = v84 - v80;
      v86 = v84 - v81;
      v87 = v84 - v82;
      v88 = v84 ^ 0xFFFF;
      if (v8 == 0xFFFF)
      {
        v89 = (v88 << 48) | (v87 << 32);
        v90 = 0xFFFF;
      }

      else
      {
        v91 = vmul_s32(__PAIR64__(v87, v88), v18);
        v85 -= (v85 * v17 + ((v85 * v17) >> 16) + 1) >> 16;
        v86 -= (v86 * v17 + ((v86 * v17) >> 16) + 1) >> 16;
        v92 = vand_s8(vsub_s32(__PAIR64__(v87, v88), vshr_n_u32(vsub_s32(vshr_n_u32(v91, 0x10uLL), vmvn_s8(v91)), 0x10uLL)), 0xFFFF0000FFFFLL);
        v93.i64[0] = v92.u32[0];
        v93.i64[1] = v92.u32[1];
        v94 = vshlq_u64(v93, v19);
        v89 = vorrq_s8(v94, vdupq_laneq_s64(v94, 1)).u64[0];
        v90 = v24;
      }

      v95 = v89 | (v86 << 16) | v85;
      if (v7)
      {
        if (v90)
        {
          if (v90 != 0xFFFF)
          {
            result = cmyk64_DAplusDAM(v6, v7, v95, v90, *v6, *v7, v90 ^ 0xFFFFu);
LABEL_106:
            v24 = HIWORD(v146);
            v21 = v162;
            v19 = xmmword_18439CC00;
            v8 = v163;
            goto LABEL_107;
          }

          *v6 = v95;
          *v7 = -1;
        }
      }

      else if (v90)
      {
        if (v90 != 0xFFFF)
        {
          result = cmyk64_DplusDM(v6, v95, *v6, v90 ^ 0xFFFFu);
          goto LABEL_106;
        }

        *v6 = v95;
      }

LABEL_107:
      v61 += 2;
      ++v6;
      v7 = (v7 + v15);
      if (!--v60)
      {
        goto LABEL_108;
      }
    }
  }

  v161 = (v9 + 16 * a3);
  v96 = v14 - 3;
  v97 = v8 ^ 0xFFFF;
  v149 = a5;
  v98 = vdup_n_s32(v8 ^ 0xFFFFu);
  v99 = xmmword_18439CC00;
  do
  {
    v100 = v164[4];
    v101 = &v100[(v12 >> v11) * v10];
    v160 = a6;
    v158 = v12;
    if (v154 != 1)
    {
      v121 = v161;
      v122 = v149;
      if (a5 < 1)
      {
        goto LABEL_156;
      }

      while (1)
      {
        v123 = *v121;
        v121 += 2;
        v124 = &v101[v123];
        if (v96 < &v101[v123])
        {
          v124 = v96;
        }

        if (v124 < v164[4])
        {
          v124 = v164[4];
        }

        v125 = *v124 | (*v124 << 8);
        v126 = v124[1] | (v124[1] << 8);
        v127 = v124[2] | (v124[2] << 8);
        if (v125 <= v126)
        {
          v128 = v124[1] | (v124[1] << 8);
        }

        else
        {
          v128 = *v124 | (*v124 << 8);
        }

        if (v127 <= v128)
        {
          v129 = v128;
        }

        else
        {
          v129 = v127;
        }

        v130 = v129 - v125;
        v131 = v129 - v126;
        v132 = v129 - v127;
        v133 = v129 ^ 0xFFFF;
        if (v8 == 0xFFFF)
        {
          v134 = (v133 << 48) | (v132 << 32);
          v135 = 0xFFFF;
        }

        else
        {
          v136 = vmul_s32(__PAIR64__(v132, v133), v98);
          v130 -= (v130 * v97 + ((v130 * v97) >> 16) + 1) >> 16;
          v131 -= (v131 * v97 + ((v131 * v97) >> 16) + 1) >> 16;
          v137 = vand_s8(vsub_s32(__PAIR64__(v132, v133), vshr_n_u32(vsub_s32(vshr_n_u32(v136, 0x10uLL), vmvn_s8(v136)), 0x10uLL)), 0xFFFF0000FFFFLL);
          v138.i64[0] = v137.u32[0];
          v138.i64[1] = v137.u32[1];
          v139 = vshlq_u64(v138, v99);
          v134 = vorrq_s8(v139, vdupq_laneq_s64(v139, 1)).u64[0];
          v135 = (-2 - (0xFFFF * v97 + ((0xFFFF * v97) >> 16))) >> 16;
        }

        v140 = v134 | (v131 << 16) | v130;
        if (v7)
        {
          if (v135)
          {
            if (v135 != 0xFFFF)
            {
              result = cmyk64_DAplusDAM(v6, v7, v140, v135, *v6, *v7, v135 ^ 0xFFFF);
LABEL_154:
              v99 = xmmword_18439CC00;
              v8 = v163;
              goto LABEL_155;
            }

            *v6 = v140;
            *v7 = -1;
          }
        }

        else if (v135)
        {
          if (v135 != 0xFFFF)
          {
            result = cmyk64_DplusDM(v6, v140, *v6, v135 ^ 0xFFFF);
            goto LABEL_154;
          }

          *v6 = v140;
        }

LABEL_155:
        ++v6;
        v7 = (v7 + v15);
        if (!--v122)
        {
          goto LABEL_156;
        }
      }
    }

    if (a5 >= 1)
    {
      v102 = v161;
      v103 = v149;
      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = &v101[v104];
        if (v96 < &v101[v104])
        {
          v105 = v96;
        }

        if (v105 < v100)
        {
          v105 = v100;
        }

        v106 = *v105 | (*v105 << 8);
        v107 = v105[1] | (v105[1] << 8);
        v108 = v105[2] | (v105[2] << 8);
        v109 = v106 <= v107 ? v105[1] | (v105[1] << 8) : *v105 | (*v105 << 8);
        v110 = v108 <= v109 ? v109 : v108;
        v111 = v110 - v106;
        v112 = v110 - v107;
        v113 = v110 - v108;
        v114 = v110 ^ 0xFFFF;
        if (v8 == 0xFFFF)
        {
          break;
        }

        v117 = vmul_s32(__PAIR64__(v113, v114), v98);
        v111 -= (v111 * v97 + ((v111 * v97) >> 16) + 1) >> 16;
        v112 -= (v112 * v97 + ((v112 * v97) >> 16) + 1) >> 16;
        v118 = vand_s8(vsub_s32(__PAIR64__(v113, v114), vshr_n_u32(vsub_s32(vshr_n_u32(v117, 0x10uLL), vmvn_s8(v117)), 0x10uLL)), 0xFFFF0000FFFFLL);
        v119.i64[0] = v118.u32[0];
        v119.i64[1] = v118.u32[1];
        v120 = vshlq_u64(v119, v99);
        v115 = vorrq_s8(v120, vdupq_laneq_s64(v120, 1)).u64[0];
        v116 = (-2 - (0xFFFF * v97 + ((0xFFFF * v97) >> 16))) >> 16;
        if (v7)
        {
          goto LABEL_128;
        }

LABEL_129:
        *v6++ = v115 | (v112 << 16) | v111;
        v7 = (v7 + v15);
        if (!--v103)
        {
          goto LABEL_156;
        }
      }

      v115 = (v114 << 48) | (v113 << 32);
      v116 = -1;
      if (!v7)
      {
        goto LABEL_129;
      }

LABEL_128:
      *v7 = v116;
      goto LABEL_129;
    }

LABEL_156:
    v10 = v152;
    v6 += v153;
    LOBYTE(v11) = v151;
    v12 = v158 + v150;
    v7 += v155;
    a6 = v160 - 1;
  }

  while (v160 != 1);
  return result;
}

void *cmyk64_image_mark_W8(void *result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = *(a2 + 4);
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
  if (v8 == 0xFFFF)
  {
    v11 = 0xFEFE000000000000;
  }

  else
  {
    v11 = (65278 - ((65278 * (v8 ^ 0xFFFF) + ((65278 * (v8 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 48;
  }

  if (v8 == 0xFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = (-2 - (0xFFFF * (v8 ^ 0xFFFF) + ((0xFFFF * (v8 ^ 0xFFFFu)) >> 16))) >> 16;
  }

  v13 = 2 * (v10 != 0);
  if (result[22])
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
            if (v10)
            {
              *v10 = v12;
            }

            *v9++ = v11;
            v10 = (v10 + v13);
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
              if (v12)
              {
                if (v12 == 0xFFFF)
                {
                  *v9 = v11;
                  *v10 = -1;
                }

                else
                {
                  result = cmyk64_DAplusDAM(v9, v10, v11, v12, *v9, *v10, ~v12);
                }
              }
            }

            else if (v12)
            {
              if (v12 == 0xFFFF)
              {
                *v9 = v11;
              }

              else
              {
                result = cmyk64_DplusDM(v9, v11, *v9, ~v12);
              }
            }

            ++v9;
            v10 = (v10 + v13);
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
            if (v10)
            {
              *v10 = v12;
            }

            *v9++ = v11;
            v10 = (v10 + v13);
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
              if (v12)
              {
                if (v12 == 0xFFFF)
                {
                  *v9 = v11;
                  *v10 = -1;
                }

                else
                {
                  result = cmyk64_DAplusDAM(v9, v10, v11, v12, *v9, *v10, ~v12);
                }
              }
            }

            else if (v12)
            {
              if (v12 == 0xFFFF)
              {
                *v9 = v11;
              }

              else
              {
                result = cmyk64_DplusDM(v9, v11, *v9, ~v12);
              }
            }

            ++v9;
            v10 = (v10 + v13);
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

unint64_t cmyk64_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  if (v4)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0xFFFF;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 136);
  v9 = **(a1 + 88);
  v349 = *(a1 + 28);
  v353 = *(a1 + 40);
  v359 = *(a1 + 4);
  pthread_mutex_lock(&cmyk64_cacheColorLock);
  v10 = cmyk64_cacheColor;
  if (!cmyk64_cacheColor || *(cmyk64_cacheColor + 16) != v9 || *(cmyk64_cacheColor + 24) != v6)
  {
    v13 = 0;
    while (1)
    {
      if (!v10)
      {
        goto LABEL_14;
      }

      v14 = v10;
      v15 = v13;
      if (*(v10 + 16) == v9 && *(v10 + 24) == v6)
      {
        break;
      }

      v10 = *v10;
      v13 = v14;
      if (!*v14)
      {
        if (cmyk64_cacheColorCount > 6)
        {
          *v15 = 0;
          v18 = *(v14 + 8);
        }

        else
        {
LABEL_14:
          v16 = cmyk64_cacheColorBase;
          if (cmyk64_cacheColorBase)
          {
            v17 = cmyk64_cacheColorCount;
          }

          else
          {
            v16 = malloc_type_calloc(1uLL, 0x70E0uLL, 0x102004053D502F9uLL);
            v17 = 0;
            cmyk64_cacheColorBase = v16;
          }

          v14 = v16 + 32 * v17;
          v18 = v16 + 4096 * v17 + 224;
          *(v14 + 8) = v18;
          cmyk64_cacheColorCount = v17 + 1;
        }

        *v14 = cmyk64_cacheColor;
        cmyk64_cacheColor = v14;
        *(v14 + 16) = v9;
        *(v14 + 24) = v6;
        *(v14 + 26) = 0;
        *(v14 + 30) = 0;
        v19 = vdupq_n_s32(v9);
        v20 = vdupq_n_s32(WORD1(v9));
        v21 = vdupq_n_s32(WORD2(v9));
        v22 = vdupq_n_s32(HIWORD(v9));
        v23 = vdupq_n_s32(v6);
        v24 = vdupq_n_s32(v9);
        v25 = vdupq_n_s32(HIDWORD(v9));
        v26 = vdupq_n_s16(v6);
        v27 = v18 + 64;
        v28 = 256;
        v29 = xmmword_18439CC10;
        v30.i64[0] = 0xFFFF0000FFFFLL;
        v30.i64[1] = 0xFFFF0000FFFFLL;
        v31.i64[0] = 0x100000001;
        v31.i64[1] = 0x100000001;
        v32 = xmmword_18439CB90;
        v33.i64[0] = 0x800000008;
        v33.i64[1] = 0x800000008;
        v34 = vdupq_n_s32(0x101u);
        do
        {
          v35 = veorq_s8(vmulq_s32(v29, v34), v30);
          v36 = veorq_s8(vmulq_s32(v32, v34), v30);
          v37 = vmulq_s32(v36, v19);
          v38 = vmulq_s32(v35, v19);
          v39 = vmulq_s32(v35, v20);
          v40 = vmulq_s32(v36, v20);
          v41 = vmulq_s32(v35, v21);
          v42 = vmulq_s32(v36, v21);
          v43 = vmulq_s32(v36, v22);
          v44 = vmulq_s32(v35, v22);
          v45 = vmulq_s32(v36, v23);
          v46 = vmulq_s32(v35, v23);
          v47 = vaddq_s32(vsraq_n_u32(v37, v37, 0x10uLL), v31);
          v48 = vaddq_s32(vsraq_n_u32(v38, v38, 0x10uLL), v31);
          v49 = vaddq_s32(vsraq_n_u32(v39, v39, 0x10uLL), v31);
          v50 = vaddq_s32(vsraq_n_u32(v40, v40, 0x10uLL), v31);
          v51 = vaddq_s32(vsraq_n_u32(v41, v41, 0x10uLL), v31);
          v52 = vaddq_s32(vsraq_n_u32(v42, v42, 0x10uLL), v31);
          v53 = vsubq_s32(v22, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v43, v43, 0x10uLL), v31), 0x10uLL));
          v54 = vsubq_s32(v22, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v44, v44, 0x10uLL), v31), 0x10uLL));
          v55.i64[0] = v54.u32[2];
          v55.i64[1] = v54.u32[3];
          v56 = v55;
          v55.i64[0] = v54.u32[0];
          v55.i64[1] = v54.u32[1];
          v57 = v55;
          v55.i64[0] = v53.u32[2];
          v55.i64[1] = v53.u32[3];
          v58 = v55;
          v55.i64[0] = v53.u32[0];
          v55.i64[1] = v53.u32[1];
          _Q29 = vandq_s8(vsubq_s32(v25, vshrq_n_u32(v52, 0x10uLL)), v30);
          _Q28 = vandq_s8(vsubq_s32(v25, vshrq_n_u32(v51, 0x10uLL)), v30);
          v61 = vshll_n_s32(*_Q29.i8, 0x20uLL);
          __asm { SHLL2           V29.2D, V29.4S, #0x20 ; ' ' }

          v66 = vshll_n_s32(*_Q28.i8, 0x20uLL);
          __asm { SHLL2           V28.2D, V28.4S, #0x20 ; ' ' }

          v67 = vorrq_s8(vshlq_n_s64(v56, 0x30uLL), _Q28);
          v68 = vorrq_s8(vshlq_n_s64(v57, 0x30uLL), v66);
          v69 = vorrq_s8(vshlq_n_s64(v58, 0x30uLL), _Q29);
          v70 = vorrq_s8(vshlq_n_s64(v55, 0x30uLL), v61);
          v71 = vshlq_n_s32(vsubq_s32(v20, vshrq_n_u32(v50, 0x10uLL)), 0x10uLL);
          v72 = vshlq_n_s32(vsubq_s32(v20, vshrq_n_u32(v49, 0x10uLL)), 0x10uLL);
          v55.i64[0] = v72.u32[2];
          v55.i64[1] = v72.u32[3];
          v73 = v55;
          v55.i64[0] = v72.u32[0];
          v55.i64[1] = v72.u32[1];
          v74 = v55;
          v55.i64[0] = v71.u32[2];
          v55.i64[1] = v71.u32[3];
          v75 = v55;
          v55.i64[0] = v71.u32[0];
          v55.i64[1] = v71.u32[1];
          v76 = v55;
          v77 = vandq_s8(vsubq_s32(v24, vshrq_n_u32(v48, 0x10uLL)), v30);
          v78 = vandq_s8(vsubq_s32(v24, vshrq_n_u32(v47, 0x10uLL)), v30);
          v55.i64[0] = v78.u32[0];
          v55.i64[1] = v78.u32[1];
          v79 = v55;
          v55.i64[0] = v78.u32[2];
          v55.i64[1] = v78.u32[3];
          v80 = v55;
          v55.i64[0] = v77.u32[0];
          v55.i64[1] = v77.u32[1];
          v81 = v55;
          v55.i64[0] = v77.u32[2];
          v55.i64[1] = v77.u32[3];
          v82 = vorrq_s8(v67, vorrq_s8(v73, v55));
          v83 = vorrq_s8(v68, vorrq_s8(v74, v81));
          v84 = vorrq_s8(v69, vorrq_s8(v75, v80));
          v85 = vorrq_s8(v70, vorrq_s8(v76, v79));
          *(v27 - 64) = v85.i64[0];
          *(v27 - 32) = v84.i64[0];
          *v27 = v83.i64[0];
          *(v27 + 32) = v82.i64[0];
          v86 = vsubq_s16(v26, vaddhn_high_s32(vaddhn_s32(vsraq_n_u32(v45, v45, 0x10uLL), v31), vsraq_n_u32(v46, v46, 0x10uLL), v31));
          *(v27 - 56) = v86.i16[0];
          *(v27 - 48) = v85.i64[1];
          *(v27 - 16) = v84.i64[1];
          *(v27 + 16) = v83.i64[1];
          *(v27 + 48) = v82.i64[1];
          *(v27 - 40) = v86.i16[1];
          *(v27 - 24) = v86.i16[2];
          *(v27 - 8) = v86.i16[3];
          *(v27 + 8) = v86.i16[4];
          *(v27 + 24) = v86.i16[5];
          *(v27 + 40) = v86.i16[6];
          *(v27 + 56) = v86.i16[7];
          v32 = vaddq_s32(v32, v33);
          v27 += 128;
          v29 = vaddq_s32(v29, v33);
          v28 -= 8;
        }

        while (v28);
        v12 = v14 + 8;
        result = pthread_mutex_unlock(&cmyk64_cacheColorLock);
        goto LABEL_25;
      }
    }

    if (v13)
    {
      *v13 = *v10;
      *v10 = cmyk64_cacheColor;
      cmyk64_cacheColor = v10;
    }
  }

  result = pthread_mutex_unlock(&cmyk64_cacheColorLock);
  v12 = v10 + 8;
LABEL_25:
  v87 = *(a1 + 12);
  v88 = *(a1 + 16);
  v89 = a2;
  if (v3)
  {
    v90 = *(a1 + 32) >> 1;
    v91 = (v3 + 2 * v90 * v88 + 2 * v87);
    v92 = 1;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v91 = 0;
    v90 = 0;
    v92 = 0;
    if (!v8)
    {
      return result;
    }
  }

  v93 = v90 - v359;
  if (v3)
  {
    v94 = v90 - v359;
  }

  else
  {
    v94 = v90;
  }

  v95 = *v12;
  v96 = *(*v12 + 4088);
  v97 = *(v95 + 4080);
  v98 = (v353 + 8 * (v349 >> 3) * v88 + 8 * v87);
  v99 = *(a1 + 124);
  v100 = v8 + *(a1 + 108) * v99 + *(a1 + 104);
  v354 = v99 - v359;
  v101 = (v349 >> 3) - v359;
  switch(v89)
  {
    case 0:
      if (v3)
      {
        v102 = 2 * v92;
        do
        {
          v103 = v359;
          do
          {
            v104 = *v100;
            if (*v100)
            {
              if (v104 == 255)
              {
                LOWORD(v105) = 0;
                *v98 = 0;
              }

              else
              {
                v106 = *v91;
                v107 = (v104 ^ 0xFF | ((v104 ^ 0xFF) << 8)) ^ 0xFFFF;
                v108 = vdup_n_s32(v107);
                v109 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v108);
                v110.i32[0] = HIWORD(v98->u32[0]);
                v110.i32[1] = HIWORD(*v98);
                v111 = vmul_s32(v110, v108);
                *v98 = vsli_n_s32(vsub_s32(*v98, vshr_n_u32(vadd_s32(vsra_n_u32(v109, v109, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v110, vshr_n_u32(vadd_s32(vsra_n_u32(v111, v111, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v105 = v106 - ((v107 * v106 + ((v107 * v106) >> 16) + 1) >> 16);
              }

              *v91 = v105;
            }

            ++v100;
            ++v98;
            v91 = (v91 + v102);
            --v103;
          }

          while (v103);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v112 = v359;
          do
          {
            v113 = *v100;
            if (*v100)
            {
              if (v113 == 255)
              {
                *v98 = 0;
              }

              else
              {
                result = cmyk64_DM(v98, *v98, v113 ^ 0xFF | ((v113 ^ 0xFFu) << 8));
              }
            }

            ++v100;
            ++v98;
            --v112;
          }

          while (v112);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 1:
      v202 = v100 & 3;
      if (v3)
      {
        v203 = v202 + v359;
        v204 = &v98[-(v100 & 3)];
        v205 = &v91[-(v100 & 3)];
        if ((v100 & 3) != 0)
        {
          v206 = v100 & 0xFC;
        }

        else
        {
          v206 = v100;
        }

        if ((v100 & 3) != 0)
        {
          result = (-1 << (8 * v202));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v100 & 3) != 0)
        {
          v100 &= 0xFFFFFFFFFFFFFFFCLL;
          v91 = v205;
          v98 = v204;
        }

        else
        {
          v203 = v359;
        }

        if (((v203 + v206) & 3) != 0)
        {
          v207 = 4 - ((v203 + v206) & 3);
          v202 += v207;
          v208 = 0xFFFFFFFF >> (8 * v207);
          if (v203 >= 4)
          {
            v209 = 0xFFFFFFFF >> (8 * v207);
          }

          else
          {
            v209 = 0;
          }

          v361 = v209;
          if (v203 >= 4)
          {
            v208 = -1;
          }

          result = v208 & result;
          v351 = result;
        }

        else
        {
          v351 = result;
          v361 = 0;
        }

        v356 = v354 - v202;
        v347 = v101 - v202;
        v345 = v203 >> 2;
        v320 = vdup_n_s16(v96);
        v343 = v93 - v202;
        do
        {
          v321 = *v100 & v351;
          v322 = v345;
          v323 = v361;
          if (!v321)
          {
            goto LABEL_448;
          }

LABEL_446:
          if (v321 == -1)
          {
            *v98 = v97;
            v98[1] = v97;
            v98[2] = v97;
            v98[3] = v97;
            *v91 = v320;
            goto LABEL_448;
          }

          while (1)
          {
            if (v321)
            {
              if (v321 == 255)
              {
                *v98 = v97;
                *v91 = v96;
              }

              else
              {
                result = cmyk64_DAplusDAM(v98, v91, *(v95 + 16 * v321), *(v95 + 16 * v321 + 8), *v98, *v91, (v321 | (v321 << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE1(v321))
            {
              if (BYTE1(v321) == 255)
              {
                v98[1] = v97;
                v91[1] = v96;
              }

              else
              {
                result = cmyk64_DAplusDAM(&v98[1], v91 + 1, *(v95 + 16 * BYTE1(v321)), *(v95 + 16 * BYTE1(v321) + 8), *&v98[1], v91[1], (BYTE1(v321) | (BYTE1(v321) << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE2(v321))
            {
              if (BYTE2(v321) == 255)
              {
                v98[2] = v97;
                v91[2] = v96;
              }

              else
              {
                result = cmyk64_DAplusDAM(&v98[2], v91 + 2, *(v95 + 16 * BYTE2(v321)), *(v95 + 16 * BYTE2(v321) + 8), *&v98[2], v91[2], (BYTE2(v321) | (BYTE2(v321) << 8)) ^ 0xFFFFu);
              }
            }

            v325 = HIBYTE(v321);
            if (HIBYTE(v321) == 255)
            {
              v98[3] = v97;
              v91[3] = v96;
            }

            else if (v325)
            {
              result = cmyk64_DAplusDAM(&v98[3], v91 + 3, *(v95 + 16 * v325), *(v95 + 16 * v325 + 8), *&v98[3], v91[3], (v325 | (v325 << 8)) ^ 0xFFFF);
            }

LABEL_448:
            while (1)
            {
              v324 = v322;
              v98 += 4;
              v91 += 4;
              --v322;
              v100 += 4;
              if (v324 < 2)
              {
                break;
              }

              v321 = *v100;
              if (*v100)
              {
                goto LABEL_446;
              }
            }

            if (!v323)
            {
              break;
            }

            v323 = 0;
            v321 = *v100 & v361;
          }

          v100 += v356;
          v98 += v347;
          v91 += v343;
          --v7;
        }

        while (v7);
      }

      else
      {
        v296 = (v349 >> 3) - v359;
        v297 = v202 + v359;
        if ((v100 & 3) != 0)
        {
          v298 = v100 & 0xFC;
        }

        else
        {
          v298 = v100;
        }

        if ((v100 & 3) != 0)
        {
          v299 = -1 << (8 * v202);
        }

        else
        {
          v299 = -1;
        }

        if ((v100 & 3) != 0)
        {
          v300 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v300 = v100;
        }

        if ((v100 & 3) != 0)
        {
          v98 -= v100 & 3;
        }

        else
        {
          v297 = v359;
        }

        if (((v297 + v298) & 3) != 0)
        {
          v301 = 4 - ((v297 + v298) & 3);
          v202 += v301;
          v302 = 0xFFFFFFFF >> (8 * v301);
          if (v297 >= 4)
          {
            v303 = 0xFFFFFFFF >> (8 * v301);
          }

          else
          {
            v303 = 0;
          }

          if (v297 >= 4)
          {
            v302 = -1;
          }

          v363 = v302 & v299;
        }

        else
        {
          v363 = v299;
          v303 = 0;
        }

        v336 = v297 >> 2;
        v352 = v296 - v202;
        v358 = v354 - v202;
        do
        {
          v337 = *v300 & v363;
          v338 = v336;
          v339 = v303;
          if (!v337)
          {
            goto LABEL_497;
          }

LABEL_495:
          if (v337 == -1)
          {
            *v98 = v97;
            v98[1] = v97;
            v98[2] = v97;
            v98[3] = v97;
            goto LABEL_497;
          }

          while (1)
          {
            if (v337)
            {
              if (v337 == 255)
              {
                *v98 = v97;
              }

              else
              {
                result = cmyk64_DplusDM(v98, *(v95 + 16 * v337), *v98, (v337 | (v337 << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE1(v337))
            {
              if (BYTE1(v337) == 255)
              {
                v98[1] = v97;
              }

              else
              {
                result = cmyk64_DplusDM(&v98[1], *(v95 + 16 * BYTE1(v337)), *&v98[1], (BYTE1(v337) | (BYTE1(v337) << 8)) ^ 0xFFFFu);
              }
            }

            if (BYTE2(v337))
            {
              if (BYTE2(v337) == 255)
              {
                v98[2] = v97;
              }

              else
              {
                result = cmyk64_DplusDM(&v98[2], *(v95 + 16 * BYTE2(v337)), *&v98[2], (BYTE2(v337) | (BYTE2(v337) << 8)) ^ 0xFFFFu);
              }
            }

            if (HIBYTE(v337) == 255)
            {
              v98[3] = v97;
            }

            else if (HIBYTE(v337))
            {
              result = cmyk64_DplusDM(&v98[3], *(v95 + 16 * HIBYTE(v337)), *&v98[3], (HIBYTE(v337) | (HIBYTE(v337) << 8)) ^ 0xFFFF);
            }

LABEL_497:
            while (1)
            {
              v340 = v338;
              v98 += 4;
              --v338;
              ++v300;
              if (v340 < 2)
              {
                break;
              }

              v337 = *v300;
              if (*v300)
              {
                goto LABEL_495;
              }
            }

            if (!v339)
            {
              break;
            }

            v339 = 0;
            v337 = *v300 & v303;
          }

          v300 = (v300 + v358);
          v98 += v352;
          --v7;
        }

        while (v7);
      }

      return result;
    case 2:
      v350 = ~v96;
      v161 = v100 & 3;
      if (v3)
      {
        v162 = v161 + v359;
        v163 = &v98[-(v100 & 3)];
        v164 = &v91[-(v100 & 3)];
        if ((v100 & 3) != 0)
        {
          v165 = v100 & 0xFC;
        }

        else
        {
          v165 = v100;
        }

        if ((v100 & 3) != 0)
        {
          result = (-1 << (8 * v161));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v100 & 3) != 0)
        {
          v100 &= 0xFFFFFFFFFFFFFFFCLL;
          v91 = v164;
          v98 = v163;
        }

        else
        {
          v162 = v359;
        }

        if (((v162 + v165) & 3) != 0)
        {
          v166 = 4 - ((v162 + v165) & 3);
          v161 += v166;
          v167 = 0xFFFFFFFF >> (8 * v166);
          if (v162 >= 4)
          {
            v168 = 0xFFFFFFFF >> (8 * v166);
          }

          else
          {
            v168 = 0;
          }

          v360 = v168;
          if (v162 >= 4)
          {
            v167 = -1;
          }

          result = v167 & result;
          v346 = result;
        }

        else
        {
          v346 = result;
          v360 = 0;
        }

        v355 = v354 - v161;
        v344 = v101 - v161;
        v342 = v162 >> 2;
        v341 = v93 - v161;
        while (1)
        {
          v308 = *v100 & v346;
          v309 = v342;
          v310 = v360;
          if (!v308)
          {
            goto LABEL_427;
          }

LABEL_425:
          if (v308 == -1)
          {
            break;
          }

          while (1)
          {
            if (v308)
            {
              result = cmyk64_DAplusDAM(v98, v91, *(v95 + 16 * v308), *(v95 + 16 * v308 + 8), *v98, *v91, *(v95 + 16 * v308 + 8) ^ 0xFFFFu);
            }

            if ((v308 & 0xFF00) != 0)
            {
              result = cmyk64_DAplusDAM(&v98[1], v91 + 1, *(v95 + 16 * BYTE1(v308)), *(v95 + 16 * BYTE1(v308) + 8), *&v98[1], v91[1], *(v95 + 16 * BYTE1(v308) + 8) ^ 0xFFFFu);
            }

            if ((v308 & 0xFF0000) != 0)
            {
              result = cmyk64_DAplusDAM(&v98[2], v91 + 2, *(v95 + 16 * BYTE2(v308)), *(v95 + 16 * BYTE2(v308) + 8), *&v98[2], v91[2], *(v95 + 16 * BYTE2(v308) + 8) ^ 0xFFFFu);
            }

            if (HIBYTE(v308))
            {
              v319 = v95 + 16 * HIBYTE(v308);
              v316 = *v319;
              v317 = *(v319 + 8);
              v311 = v98 + 3;
              v312 = v98[3];
              v313 = v91 + 3;
              v314 = v91[3];
              v315 = v317 ^ 0xFFFF;
              goto LABEL_440;
            }

LABEL_427:
            while (1)
            {
              v318 = v309;
              v98 += 4;
              v91 += 4;
              --v309;
              v100 += 4;
              if (v318 < 2)
              {
                break;
              }

              v308 = *v100;
              if (*v100)
              {
                goto LABEL_425;
              }
            }

            if (!v310)
            {
              break;
            }

            v310 = 0;
            v308 = *v100 & v360;
          }

          v100 += v355;
          v98 += v344;
          v91 += v341;
          if (!--v7)
          {
            return result;
          }
        }

        cmyk64_DAplusDAM(v98, v91, v97, v96, *v98, *v91, ~v96);
        cmyk64_DAplusDAM(&v98[1], v91 + 1, v97, v96, *&v98[1], v91[1], ~v96);
        cmyk64_DAplusDAM(&v98[2], v91 + 2, v97, v96, *&v98[2], v91[2], ~v96);
        v311 = v98 + 3;
        v312 = v98[3];
        v313 = v91 + 3;
        v314 = v91[3];
        v315 = ~v96;
        v316 = v97;
        LOWORD(v317) = v96;
LABEL_440:
        result = cmyk64_DAplusDAM(v311, v313, v316, v317, v312, v314, v315);
        goto LABEL_427;
      }

      v287 = v101;
      v288 = v161 + v359;
      if ((v100 & 3) != 0)
      {
        v289 = v100 & 0xFC;
      }

      else
      {
        v289 = v100;
      }

      if ((v100 & 3) != 0)
      {
        v290 = -1 << (8 * v161);
      }

      else
      {
        v290 = -1;
      }

      if ((v100 & 3) != 0)
      {
        v291 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v291 = v100;
      }

      if ((v100 & 3) != 0)
      {
        v98 -= v100 & 3;
      }

      else
      {
        v288 = v359;
      }

      if (((v288 + v289) & 3) != 0)
      {
        v292 = 4 - ((v288 + v289) & 3);
        v161 += v292;
        v293 = 0xFFFFFFFF >> (8 * v292);
        if (v288 >= 4)
        {
          v294 = -1;
        }

        else
        {
          v294 = 0xFFFFFFFF >> (8 * v292);
        }

        v362 = v294 & v290;
        if (v288 >= 4)
        {
          v295 = v293;
        }

        else
        {
          v295 = 0;
        }
      }

      else
      {
        v362 = v290;
        v295 = 0;
      }

      v357 = v354 - v161;
      v326 = v288 >> 2;
      v348 = v287 - v161;
      break;
    case 3:
      v175 = 2 * v92;
      do
      {
        v176 = v359;
        do
        {
          v177 = *v100;
          if (*v100)
          {
            if (v177 == 255)
            {
              v178 = (v95 + 16 * *(v91 + 1));
              v179 = *v178;
              LOWORD(v178) = v178[1].i16[0];
              *v98 = v179;
              *v91 = v178;
            }

            else
            {
              v180 = v177 | (v177 << 8);
              v181 = *v91;
              v182 = v95 + 16 * ((v181 * v180 + ((v181 * v180) >> 16) + 1) >> 24);
              result = cmyk64_DAplusDAM(v98, v91, *v182, *(v182 + 8), *v98, v181, v180 ^ 0xFFFFu);
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v175);
          --v176;
        }

        while (v176);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 4:
      v135 = 2 * v92;
      do
      {
        v136 = v359;
        do
        {
          v137 = *v100;
          if (*v100)
          {
            if (v137 == 255)
            {
              v138 = (v95 + 16 * (~*v91 >> 8));
              v139 = *v138;
              LOWORD(v138) = v138[1].i16[0];
              *v98 = v139;
              *v91 = v138;
            }

            else
            {
              v140 = v137 | (v137 << 8);
              v141 = *v91;
              v142 = v95 + 16 * (((v141 ^ 0xFFFF) * v140 + (((v141 ^ 0xFFFFu) * v140) >> 16) + 1) >> 24);
              result = cmyk64_DAplusDAM(v98, v91, *v142, *(v142 + 8), *v98, v141, v140 ^ 0xFFFFu);
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v135);
          --v136;
        }

        while (v136);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 5:
      v222 = 2 * v92;
      do
      {
        v223 = v359;
        do
        {
          if (*v100)
          {
            result = cmyk64_DAMplusDAM(v98, v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8), *v91, *v98, *v91, *(v95 + 16 * *v100 + 8) ^ 0xFFFFu);
          }

          ++v100;
          ++v98;
          v91 = (v91 + v222);
          --v223;
        }

        while (v223);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 6:
      v236 = 2 * v92;
      do
      {
        v237 = v101;
        v238 = v359;
        do
        {
          if (*v100 && *v91 != -1)
          {
            v239 = v95 + 16 * *v100;
            if (~*v91 == 0xFFFF)
            {
              v240 = *v239;
              v241 = *(v239 + 8);
              *v98 = v240;
              *v91 = v241;
            }

            else
            {
              result = cmyk64_DAplusDAM(v98, v91, *v98, *v91, *v239, *(v239 + 8), ~*v91);
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v236);
          --v238;
        }

        while (v238);
        v100 += v354;
        v101 = v237;
        v98 += v237;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 7:
      if (v3)
      {
        v183 = vdup_n_s32(v96 ^ 0xFFFF);
        v184 = 2 * v92;
        do
        {
          v185 = v359;
          do
          {
            v186 = *v100;
            if (*v100)
            {
              if (v186 == 255)
              {
                v187 = *v98;
                v188 = *v91;
                v189 = (v96 ^ 0xFFFF) * v188 + (((v96 ^ 0xFFFF) * v188) >> 16) + 1;
                v190 = *v98;
                v191 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v183);
                v192 = v183;
              }

              else
              {
                v193 = v186 | (v186 << 8);
                v187 = *v98;
                v188 = *v91;
                v194 = (v193 - ((v193 * v96 + ((v193 * v96) >> 16) + 1) >> 16));
                v189 = v194 * v188 + ((v194 * v188) >> 16) + 1;
                v190 = *v98;
                v192 = vdup_n_s32(v194);
                v191 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v192);
              }

              v195 = HIWORD(*&v187);
              v196 = v187.u16[1];
              v197 = vmul_s32(__PAIR64__(v195, v196), v192);
              *v98 = vsli_n_s32(vsub_s32(v190, vshr_n_u32(vadd_s32(vsra_n_u32(v191, v191, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(v195, v196), vshr_n_u32(vadd_s32(vsra_n_u32(v197, v197, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v91 = v188 - HIWORD(v189);
            }

            ++v100;
            ++v98;
            v91 = (v91 + v184);
            --v185;
          }

          while (v185);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v198 = v359;
          do
          {
            v199 = *v100;
            if (*v100)
            {
              if (v199 == 255)
              {
                v200 = v98;
                v201 = v96;
              }

              else
              {
                v201 = (~(v199 | (v199 << 8)) + (((v199 | (v199 << 8)) * v96 + (((v199 | (v199 << 8)) * v96) >> 16) + 1) >> 16));
                v200 = v98;
              }

              result = cmyk64_DM(v200, *v98, v201);
            }

            ++v100;
            ++v98;
            --v198;
          }

          while (v198);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 8:
      v250 = 257 * v96;
      if (v3)
      {
        v251 = vdup_n_s32(v96);
        v252 = 2 * v92;
        do
        {
          v253 = v359;
          do
          {
            v254 = *v100;
            if (*v100)
            {
              v255 = *v98;
              v256 = *v91;
              if (v254 == 255)
              {
                v257 = v96 * v256 + ((v96 * v256) >> 16) + 1;
                v258 = *v98;
                v259 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v251);
                v260 = v251;
              }

              else
              {
                v261 = (v250 * v254 + ((v250 * v254) >> 16) + 1) >> 16;
                v257 = v261 * v256 + ((v261 * v256) >> 16) + 1;
                v258 = *v98;
                v260 = vdup_n_s32(v261);
                v259 = vmul_s32(vand_s8(*v98, 0xFFFF0000FFFFLL), v260);
              }

              v262 = HIWORD(*&v255);
              v263 = v255.u16[1];
              v264 = vmul_s32(__PAIR64__(v262, v263), v260);
              *v98 = vsli_n_s32(vsub_s32(v258, vshr_n_u32(vadd_s32(vsra_n_u32(v259, v259, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(v262, v263), vshr_n_u32(vadd_s32(vsra_n_u32(v264, v264, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v91 = v256 - HIWORD(v257);
            }

            ++v100;
            ++v98;
            v91 = (v91 + v252);
            --v253;
          }

          while (v253);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        v304 = ~v96;
        do
        {
          v305 = v359;
          do
          {
            v306 = *v100;
            if (*v100)
            {
              if (v306 == 255)
              {
                v307 = v304;
              }

              else
              {
                v307 = ~(v250 * v306 + ((v250 * v306) >> 16) + 1) >> 16;
              }

              result = cmyk64_DM(v98, *v98, v307);
            }

            ++v100;
            ++v98;
            --v305;
          }

          while (v305);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 9:
      v146 = 2 * v92;
      do
      {
        v147 = v359;
        do
        {
          if (*v100)
          {
            v148 = *v100;
            result = cmyk64_DAMplusDAM(v98, v91, *(v95 + 16 * v148), *(v95 + 16 * v148 + 8), *v91 ^ 0xFFFFu, *v98, *v91, (*(v95 + 16 * v148 + 8) + ~(v148 | (v148 << 8))));
          }

          ++v100;
          ++v98;
          v91 = (v91 + v146);
          --v147;
        }

        while (v147);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 10:
      v248 = 2 * v92;
      do
      {
        v249 = v359;
        do
        {
          if (*v100)
          {
            result = cmyk64_DAMplusDAM(v98, v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8), *v91 ^ 0xFFFFu, *v98, *v91, *(v95 + 16 * *v100 + 8) ^ 0xFFFFu);
          }

          ++v100;
          ++v98;
          v91 = (v91 + v248);
          --v249;
        }

        while (v249);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 11:
      if (v3)
      {
        v132 = 2 * v92;
        do
        {
          v133 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DAplusdDA(v98, v91, *v98, *v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8));
            }

            ++v100;
            ++v98;
            v91 = (v91 + v132);
            --v133;
          }

          while (v133);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v134 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DplusdDA(v98, *v98, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8));
            }

            ++v100;
            ++v98;
            --v134;
          }

          while (v134);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 12:
      if (v3)
      {
        v143 = 2 * v92;
        do
        {
          v144 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DApluslDA(v98, v91, *v98, *v91, *(v95 + 16 * *v100), *(v95 + 16 * *v100 + 8));
            }

            ++v100;
            ++v98;
            v91 = (v91 + v143);
            --v144;
          }

          while (v144);
          v100 += v354;
          v98 += v101;
          v91 += v94;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v145 = v359;
          do
          {
            if (*v100)
            {
              result = cmyk64_DpluslD(v98, *v98, *(v95 + 16 * *v100));
            }

            ++v100;
            ++v98;
            --v145;
          }

          while (v145);
          v100 += v354;
          v98 += v101;
          --v7;
        }

        while (v7);
      }

      return result;
    case 13:
      v230 = 2 * v92;
      do
      {
        v231 = v359;
        do
        {
          if (*v100)
          {
            v232 = v95 + 16 * *v100;
            v233 = *(v232 + 8);
            if (*(v232 + 8))
            {
              v234 = *v232;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAmultiplyPDA_11872(*v98, *v91, v234, v233);
                  v234 = result;
                  LOWORD(v233) = v235;
                }

                *v98 = v234;
                *v91 = v233;
              }

              else
              {
                result = PDAmultiplyPDA_11872(*v98, 0xFFFFu, v234, v233);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v230);
          --v231;
        }

        while (v231);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 14:
      v126 = 2 * v92;
      do
      {
        v127 = v359;
        do
        {
          if (*v100)
          {
            v128 = v95 + 16 * *v100;
            v129 = *(v128 + 8);
            if (*(v128 + 8))
            {
              v130 = *v128;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAscreenPDA_11873(*v98, *v91, v130, v129);
                  v130 = result;
                  LOWORD(v129) = v131;
                }

                *v98 = v130;
                *v91 = v129;
              }

              else
              {
                result = PDAscreenPDA_11873(*v98, 0xFFFFu, v130, v129);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v126);
          --v127;
        }

        while (v127);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 15:
      v169 = 2 * v92;
      do
      {
        v170 = v359;
        do
        {
          if (*v100)
          {
            v171 = v95 + 16 * *v100;
            v172 = *(v171 + 8);
            if (*(v171 + 8))
            {
              v173 = *v171;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAoverlayPDA_11874(*v98, *v91, v173, v172);
                  v173 = result;
                  LOWORD(v172) = v174;
                }

                *v98 = v173;
                *v91 = v172;
              }

              else
              {
                result = PDAoverlayPDA_11874(*v98, 0xFFFFu, v173, v172);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v169);
          --v170;
        }

        while (v170);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 16:
      v120 = 2 * v92;
      do
      {
        v121 = v359;
        do
        {
          if (*v100)
          {
            v122 = v95 + 16 * *v100;
            v123 = *(v122 + 8);
            if (*(v122 + 8))
            {
              v124 = *v122;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAdarkenPDA_11876(*v98, *v91, v124, v123);
                  v124 = result;
                  LOWORD(v123) = v125;
                }

                *v98 = v124;
                *v91 = v123;
              }

              else
              {
                result = PDAdarkenPDA_11876(*v98, 0xFFFFu, v124, v123);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v120);
          --v121;
        }

        while (v121);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 17:
      v210 = 2 * v92;
      do
      {
        v211 = v359;
        do
        {
          if (*v100)
          {
            v212 = v95 + 16 * *v100;
            v213 = *(v212 + 8);
            if (*(v212 + 8))
            {
              v214 = *v212;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAlightenPDA_11875(*v98, *v91, v214, v213);
                  v214 = result;
                  LOWORD(v213) = v215;
                }

                *v98 = v214;
                *v91 = v213;
              }

              else
              {
                result = PDAlightenPDA_11875(*v98, 0xFFFFu, v214, v213);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v210);
          --v211;
        }

        while (v211);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 18:
      v242 = 2 * v92;
      do
      {
        v243 = v359;
        do
        {
          if (*v100)
          {
            v244 = v95 + 16 * *v100;
            v245 = *(v244 + 8);
            if (*(v244 + 8))
            {
              v246 = *v244;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAcolordodgePDA_11877(*v98, *v91, v246, v245);
                  v246 = result;
                  LOWORD(v245) = v247;
                }

                *v98 = v246;
                *v91 = v245;
              }

              else
              {
                result = PDAcolordodgePDA_11877(*v98, 0xFFFFu, v246, v245);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v242);
          --v243;
        }

        while (v243);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 19:
      v271 = 2 * v92;
      do
      {
        v272 = v359;
        do
        {
          if (*v100)
          {
            v273 = v95 + 16 * *v100;
            v274 = *(v273 + 8);
            if (*(v273 + 8))
            {
              v275 = *v273;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAcolorburnPDA_11878(*v98, *v91, v275, v274);
                  v275 = result;
                  LOWORD(v274) = v276;
                }

                *v98 = v275;
                *v91 = v274;
              }

              else
              {
                result = PDAcolorburnPDA_11878(*v98, 0xFFFFu, v275, v274);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v271);
          --v272;
        }

        while (v272);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 20:
      v216 = 2 * v92;
      do
      {
        v217 = v359;
        do
        {
          if (*v100)
          {
            v218 = v95 + 16 * *v100;
            v219 = *(v218 + 8);
            if (*(v218 + 8))
            {
              v220 = *v218;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAsoftlightPDA_11880(*v98, *v91, v220, v219);
                  v220 = result;
                  LOWORD(v219) = v221;
                }

                *v98 = v220;
                *v91 = v219;
              }

              else
              {
                result = PDAsoftlightPDA_11880(*v98, 0xFFFFu, v220, v219);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v216);
          --v217;
        }

        while (v217);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 21:
      v224 = 2 * v92;
      do
      {
        v225 = v359;
        do
        {
          if (*v100)
          {
            v226 = v95 + 16 * *v100;
            v227 = *(v226 + 8);
            if (*(v226 + 8))
            {
              v228 = *v226;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAhardlightPDA_11879(*v98, *v91, v228, v227);
                  v228 = result;
                  LOWORD(v227) = v229;
                }

                *v98 = v228;
                *v91 = v227;
              }

              else
              {
                result = PDAhardlightPDA_11879(*v98, 0xFFFFu, v228, v227);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v224);
          --v225;
        }

        while (v225);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 22:
      v265 = 2 * v92;
      do
      {
        v266 = v359;
        do
        {
          if (*v100)
          {
            v267 = v95 + 16 * *v100;
            v268 = *(v267 + 8);
            if (*(v267 + 8))
            {
              v269 = *v267;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAdifferencePDA_11881(*v98, *v91, v269, v268);
                  v269 = result;
                  LOWORD(v268) = v270;
                }

                *v98 = v269;
                *v91 = v268;
              }

              else
              {
                result = PDAdifferencePDA_11881(*v98, 0xFFFFu, v269, v268);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v265);
          --v266;
        }

        while (v266);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 23:
      v277 = 2 * v92;
      do
      {
        v278 = v359;
        do
        {
          if (*v100)
          {
            v279 = v95 + 16 * *v100;
            v280 = *(v279 + 8);
            if (*(v279 + 8))
            {
              v281 = *v279;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAexclusionPDA_11882(*v98, *v91, v281, v280);
                  v281 = result;
                  LOWORD(v280) = v282;
                }

                *v98 = v281;
                *v91 = v280;
              }

              else
              {
                result = PDAexclusionPDA_11882(*v98, 0xFFFFu, v281, v280);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v277);
          --v278;
        }

        while (v278);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 24:
      v155 = 2 * v92;
      do
      {
        v156 = v359;
        do
        {
          if (*v100)
          {
            v157 = v95 + 16 * *v100;
            v158 = *(v157 + 8);
            if (*(v157 + 8))
            {
              v159 = *v157;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAhuePDA_11883(*v98, *v91, v159, v158);
                  v159 = result;
                  LOWORD(v158) = v160;
                }

                *v98 = v159;
                *v91 = v158;
              }

              else
              {
                result = PDAhuePDA_11883(*v98, 0xFFFFu, v159, v158);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v155);
          --v156;
        }

        while (v156);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 25:
      v149 = 2 * v92;
      do
      {
        v150 = v359;
        do
        {
          if (*v100)
          {
            v151 = v95 + 16 * *v100;
            v152 = *(v151 + 8);
            if (*(v151 + 8))
            {
              v153 = *v151;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAsaturationPDA_11884(*v98, *v91, v153, v152);
                  v153 = result;
                  LOWORD(v152) = v154;
                }

                *v98 = v153;
                *v91 = v152;
              }

              else
              {
                result = PDAsaturationPDA_11884(*v98, 0xFFFFu, v153, v152);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v149);
          --v150;
        }

        while (v150);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 26:
      v283 = 2 * v92;
      do
      {
        v284 = v359;
        do
        {
          if (*v100)
          {
            v285 = v95 + 16 * *v100;
            v286 = *(v285 + 8);
            if (*(v285 + 8))
            {
              result = *v285;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAluminosityPDA_11885(result, v286, *v98, *v91);
                }

                *v98 = result;
                *v91 = v286;
              }

              else
              {
                result = PDAluminosityPDA_11885(result, v286, *v98, 0xFFFFu);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v283);
          --v284;
        }

        while (v284);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    case 27:
      v114 = 2 * v92;
      do
      {
        v115 = v359;
        do
        {
          if (*v100)
          {
            v116 = v95 + 16 * *v100;
            v117 = *(v116 + 8);
            if (*(v116 + 8))
            {
              v118 = *v116;
              if (v3)
              {
                if (*v91)
                {
                  result = PDAluminosityPDA_11885(*v98, *v91, v118, v117);
                  v118 = result;
                  LOWORD(v117) = v119;
                }

                *v98 = v118;
                *v91 = v117;
              }

              else
              {
                result = PDAluminosityPDA_11885(*v98, 0xFFFFu, v118, v117);
                *v98 = result;
              }
            }
          }

          ++v100;
          ++v98;
          v91 = (v91 + v114);
          --v115;
        }

        while (v115);
        v100 += v354;
        v98 += v101;
        v91 += v94;
        --v7;
      }

      while (v7);
      return result;
    default:
      return result;
  }

  do
  {
    v327 = *v291 & v362;
    v328 = v295;
    v329 = v326;
    if (!v327)
    {
      goto LABEL_476;
    }

LABEL_474:
    if (v327 == -1)
    {
      cmyk64_DplusDM(v98, v97, *v98, v350);
      cmyk64_DplusDM(&v98[1], v97, *&v98[1], v350);
      cmyk64_DplusDM(&v98[2], v97, *&v98[2], v350);
      v330 = v98 + 3;
      v331 = v98[3];
      v332 = v350;
      v333 = v97;
LABEL_489:
      result = cmyk64_DplusDM(v330, v333, v331, v332);
      goto LABEL_476;
    }

    while (1)
    {
      if (v327)
      {
        result = cmyk64_DplusDM(v98, *(v95 + 16 * v327), *v98, *(v95 + 16 * v327 + 8) ^ 0xFFFFu);
      }

      if ((v327 & 0xFF00) != 0)
      {
        result = cmyk64_DplusDM(&v98[1], *(v95 + 16 * BYTE1(v327)), *&v98[1], *(v95 + 16 * BYTE1(v327) + 8) ^ 0xFFFFu);
      }

      if ((v327 & 0xFF0000) != 0)
      {
        result = cmyk64_DplusDM(&v98[2], *(v95 + 16 * BYTE2(v327)), *&v98[2], *(v95 + 16 * BYTE2(v327) + 8) ^ 0xFFFFu);
      }

      if (HIBYTE(v327))
      {
        v335 = v95 + 16 * HIBYTE(v327);
        v333 = *v335;
        v330 = v98 + 3;
        v331 = v98[3];
        v332 = *(v335 + 8) ^ 0xFFFF;
        goto LABEL_489;
      }

LABEL_476:
      while (1)
      {
        v334 = v329;
        v98 += 4;
        --v329;
        ++v291;
        if (v334 < 2)
        {
          break;
        }

        v327 = *v291;
        if (*v291)
        {
          goto LABEL_474;
        }
      }

      if (!v328)
      {
        break;
      }

      v328 = 0;
      v327 = *v291 & v295;
    }

    v291 = (v291 + v357);
    v98 += v348;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t cmyk64_mark_pixelmask(uint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 136);
  v4 = *(result + 12);
  v5 = *(result + 16);
  if (v2)
  {
    v6 = *(result + 32) >> 1;
    v7 = (v2 + 2 * v6 * v5 + 2 * v4);
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
  v12 = *(result + 88);
  v11 = *(result + 96);
  v13 = *(result + 28) >> 3;
  v14 = (*(result + 40) + 8 * v13 * v5 + 8 * v4);
  v15 = *(result + 124);
  v16 = (v3 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v21 = *(result + 64);
    v22 = *(result + 68);
    v728 = v19 >> 3;
    if (v11)
    {
      v726 = *(result + 80) >> 1;
      v20 = 1;
    }

    else
    {
      v726 = 0;
      v20 = 0;
    }

    result = v12 + 8 * v728 * v22;
    v8 &= 1u;
    v27 = 1;
    v28 = v12;
    v23 = v12;
    goto LABEL_19;
  }

  v728 = v19 >> 3;
  if (v11)
  {
    v726 = *(result + 80) >> 1;
    v11 += 2 * v726 * v18 + 2 * v17;
    v20 = -1;
  }

  else
  {
    v726 = 0;
    v20 = 0;
  }

  v23 = (v12 + 8 * v728 * v18 + 8 * v17);
  if (v728 == v13)
  {
    v24 = (v14 - v23) >> 3;
    if (v24 >= 1)
    {
      if (v24 <= v9)
      {
        v14 += v9 - 1;
        v23 += v9 - 1;
        v16 += v9 - 1;
        v7 += v8 & (v9 - 1);
        v27 = -1;
        v728 = *(result + 28) >> 3;
        v11 += 2 * (v20 & (v9 - 1));
        goto LABEL_16;
      }

      v25 = v10 - 1;
      v26 = &v23[v13 * v25];
      if (v14 <= &v26[v9 - 1])
      {
        v14 += v13 * v25;
        v16 += v15 * v25;
        v15 = -v15;
        v7 += v6 * v25;
        v6 = -v6;
        v8 &= 1u;
        v11 += 2 * v726 * v25;
        v726 = -v726;
        v20 &= 1u;
        v27 = 1;
        v23 = v26;
        v728 = -v13;
        v13 = -v13;
        goto LABEL_16;
      }
    }
  }

  v8 &= 1u;
  v20 &= 1u;
  v27 = 1;
LABEL_16:
  result = 0;
  v28 = 0;
  v12 = -1;
  v22 = v726;
  v21 = v728;
LABEL_19:
  v29 = v27 * v9;
  v727 = v9;
  v723 = result;
  v731 = v10;
  if (result)
  {
    v30 = v18 % v22;
    v31 = &v23[v728 * v30];
    result = v17 % v21;
    v23 = &v31[result];
    v32 = v21;
    v12 = &v31[v21];
    v33 = v11 + 2 * v726 * v30 + 2 * result;
    if (v20)
    {
      v11 = v33;
    }

    v729 = v11;
    v730 = &v31[result];
  }

  else
  {
    v729 = v11;
    v730 = v28;
    v728 -= v29;
    v726 -= v20 * v9;
    v32 = v21;
  }

  v725 = v15 - v29;
  v724 = v13 - v29;
  v720 = v6 - v8 * v9;
  v776 = v27;
  v741 = v20;
  v732 = v8;
  switch(a2)
  {
    case 0:
      if (v8)
      {
        v34 = 8 * v27;
        do
        {
          v35 = v9;
          v36 = v731;
          do
          {
            v37 = *v16;
            if (*v16)
            {
              if (v37 == 255)
              {
                LOWORD(v38) = 0;
                *v14 = 0;
              }

              else
              {
                v39 = *v7;
                v40 = v37 | (v37 << 8);
                v41 = vdup_n_s32(v40);
                v42 = vmul_s32(vand_s8(*v14, 0xFFFF0000FFFFLL), v41);
                v43.i32[0] = HIWORD(v14->u32[0]);
                v43.i32[1] = HIWORD(*v14);
                v44 = vmul_s32(v43, v41);
                *v14 = vsli_n_s32(vsub_s32(*v14, vshr_n_u32(vadd_s32(vsra_n_u32(v42, v42, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v43, vshr_n_u32(vadd_s32(vsra_n_u32(v44, v44, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v38 = v39 - ((v40 * v39 + ((v40 * v39) >> 16) + 1) >> 16);
              }

              *v7 = v38;
            }

            v16 += v776;
            v7 += v8;
            v14 = (v14 + v34);
            --v35;
          }

          while (v35);
          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v36 != 1);
      }

      else
      {
        v609 = 8 * v27;
        do
        {
          v610 = v727;
          v611 = v731;
          do
          {
            v612 = *v16;
            if (*v16)
            {
              if (v612 == 255)
              {
                *v14 = 0;
              }

              else
              {
                result = cmyk64_DM(v14, *v14, (v612 | (v612 << 8)) ^ 0xFFFFu);
              }
            }

            v16 += v776;
            v14 = (v14 + v609);
            --v610;
          }

          while (v610);
          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v611 != 1);
      }

      return result;
    case 1:
      if (v8)
      {
        if (v20)
        {
          v287 = v20;
          v288 = -v32;
          v289 = v729;
          v745 = -(v728 * v22);
          v738 = -(v726 * v22);
          v290 = 2 * v8;
          v291 = 8 * v27;
          do
          {
            v292 = v727;
            v761 = v12;
            do
            {
              v293 = *v16;
              if (*v16)
              {
                if (v293 == 255)
                {
                  *v14 = *v23;
                  *v7 = *v289;
                }

                else
                {
                  result = cmyk64_DAMplusDAM(v14, v7, *v23, *v289, v293 | (v293 << 8), *v14, *v7, (v293 | (v293 << 8)) ^ 0xFFFFu);
                  v12 = v761;
                }
              }

              v16 += v776;
              v294 = &v23[v776];
              if (v294 >= v12)
              {
                v295 = v288;
              }

              else
              {
                v295 = 0;
              }

              v289 += v287 + v295;
              v23 = &v294[v295];
              v7 = (v7 + v290);
              v14 = (v14 + v291);
              --v292;
            }

            while (v292);
            if (v723)
            {
              v296 = &v730[v728];
              v297 = v738;
              if (v296 < v723)
              {
                v297 = 0;
              }

              v289 = &v729[v726 + v297];
              v298 = v745;
              if (v296 < v723)
              {
                v298 = 0;
              }

              v23 = &v296[v298];
              v12 += 8 * v298 + 8 * v728;
              v729 += v726 + v297;
              v730 = v23;
            }

            else
            {
              v23 += v728;
              v289 += v726;
            }

            v16 += v725;
            v14 += v724;
            v7 += v720;
            --v731;
          }

          while (v731);
        }

        else
        {
          v641 = -v32;
          v642 = -(v728 * v22);
          v643 = 2 * v8;
          v644 = 8 * v27;
          do
          {
            v645 = v727;
            do
            {
              v646 = *v16;
              if (*v16)
              {
                if (v646 == 255)
                {
                  *v14 = *v23;
                  *v7 = -1;
                }

                else
                {
                  v647 = v12;
                  result = cmyk64_DAMplusDAM(v14, v7, *v23, 0xFFFF, v646 | (v646 << 8), *v14, *v7, (v646 | (v646 << 8)) ^ 0xFFFFu);
                  v12 = v647;
                }
              }

              v16 += v776;
              v648 = &v23[v776];
              if (v648 >= v12)
              {
                v649 = v641;
              }

              else
              {
                v649 = 0;
              }

              v23 = &v648[v649];
              v7 = (v7 + v643);
              v14 = (v14 + v644);
              --v645;
            }

            while (v645);
            v16 += v725;
            v14 += v724;
            v7 += v720;
            v650 = v730;
            v651 = &v730[v728];
            if (v651 >= v723)
            {
              v652 = v642;
            }

            else
            {
              v652 = 0;
            }

            v653 = &v651[v652];
            v654 = v12 + 8 * v652 + 8 * v728;
            if (v723)
            {
              v12 = v654;
              v650 = v653;
              v23 = v653;
            }

            else
            {
              v23 += v728;
            }

            v655 = v731 == 1;
            v730 = v650;
            --v731;
          }

          while (!v655);
        }
      }

      else
      {
        v613 = -v32;
        v614 = -(v728 * v22);
        v615 = 8 * v27;
        do
        {
          v616 = v727;
          v617 = v731;
          do
          {
            v618 = *v16;
            if (*v16)
            {
              if (v618 == 255)
              {
                *v14 = *v23;
              }

              else
              {
                v619 = v12;
                result = cmyk64_DMplusDM(v14, *v23, v618 | (v618 << 8), *v14, (v618 | (v618 << 8)) ^ 0xFFFFu);
                v12 = v619;
              }
            }

            v16 += v776;
            v620 = &v23[v776];
            if (v620 >= v12)
            {
              v621 = v613;
            }

            else
            {
              v621 = 0;
            }

            v23 = &v620[v621];
            v14 = (v14 + v615);
            --v616;
          }

          while (v616);
          v16 += v725;
          v14 += v724;
          v622 = v730;
          v623 = &v730[v728];
          if (v623 >= v723)
          {
            v624 = v614;
          }

          else
          {
            v624 = 0;
          }

          v625 = &v623[v624];
          v626 = v12 + 8 * v624 + 8 * v728;
          if (v723)
          {
            v12 = v626;
            v622 = v625;
            v23 = v625;
          }

          else
          {
            v23 += v728;
          }

          v730 = v622;
          --v731;
        }

        while (v617 != 1);
      }

      return result;
    case 2:
      if (v8)
      {
        v209 = v20;
        v210 = -v32;
        v211 = v729;
        v666 = -(v726 * v22);
        v686 = -(v728 * v22);
        v212 = 2 * v8;
        v743 = v20;
        while (1)
        {
          v213 = v727;
          v757 = v12;
          do
          {
            v214 = *v16;
            if (!*v16)
            {
              goto LABEL_256;
            }

            if (v214 == 255)
            {
              v215 = *v211;
              if (!*v211)
              {
                goto LABEL_256;
              }

              if (v215 == 0xFFFF)
              {
                *v14 = *v23;
                *v7 = -1;
                goto LABEL_256;
              }

              v226 = *v23;
              v224 = *v14;
              v225 = *v7;
              v227 = v215 ^ 0xFFFF;
            }

            else
            {
              v216 = *v211;
              v217 = (v214 | (v214 << 8)) ^ 0xFFFF;
              if (v216 == (v217 * v216 + ((v217 * v216) >> 16) + 1) >> 16)
              {
                goto LABEL_256;
              }

              v218 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v219.i32[1] = v218.i32[1];
              v219.i32[0] = v218.u16[0];
              v220 = vmul_s32(v219, vdup_n_s32(v217));
              v221 = vand_s8(vsub_s32(v218, vshr_n_u32(vadd_s32(vsra_n_u32(v220, v220, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v222.i64[0] = v221.u32[0];
              v222.i64[1] = v221.u32[1];
              v223 = vshlq_u64(v222, xmmword_18439CB70);
              v224 = *v14;
              v225 = *v7;
              v226 = vorrq_s8(v223, vdupq_laneq_s64(v223, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v217 + ((WORD1(*v23) * v217) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v217 + ((*v23 * v217) >> 16) + 1) >> 16));
              LOWORD(v215) = v216 - ((v217 * v216 + ((v217 * v216) >> 16) + 1) >> 16);
              v227 = ~v215;
            }

            result = cmyk64_DAplusDAM(v14, v7, v226, v215, v224, v225, v227);
            v209 = v743;
            v12 = v757;
LABEL_256:
            v16 += v776;
            v228 = &v23[v776];
            if (v228 >= v12)
            {
              v229 = v210;
            }

            else
            {
              v229 = 0;
            }

            v211 += v209 + v229;
            v23 = &v228[v229];
            v7 = (v7 + v212);
            v14 += v776;
            --v213;
          }

          while (v213);
          if (v723)
          {
            v230 = &v730[v728];
            v231 = v666;
            if (v230 < v723)
            {
              v231 = 0;
            }

            v211 = &v729[v726 + v231];
            v232 = v686;
            if (v230 < v723)
            {
              v232 = 0;
            }

            v23 = &v230[v232];
            v12 += 8 * v232 + 8 * v728;
            v729 += v726 + v231;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v211 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          if (!--v731)
          {
            return result;
          }
        }
      }

      v571 = v20;
      v572 = -v32;
      v740 = -(v728 * v22);
      v722 = -(v726 * v22);
      v573 = 8 * v27;
      v574 = v729;
      break;
    case 3:
      v251 = v20;
      v252 = -v32;
      v253 = v729;
      v708 = -(v728 * v22);
      v688 = -(v726 * v22);
      v254 = 2 * v8;
      v736 = v20;
      do
      {
        v255 = v727;
        v759 = v12;
        do
        {
          v256 = *v16;
          if (*v16)
          {
            if (v256 == 255)
            {
              if (v20)
              {
                v257 = *v253;
              }

              else
              {
                v257 = 0xFFFF;
              }

              v259 = *v7 ^ 0xFFFF;
              v260 = vdup_n_s32(v259);
              v261 = vmul_s32(vand_s8(*v23, 0xFFFF0000FFFFLL), v260);
              v262.i32[0] = WORD1(*v23);
              v262.i32[1] = HIWORD(*v23);
              v263 = vmul_s32(v262, v260);
              *v14 = vsli_n_s32(vsub_s32(*v23, vshr_n_u32(vadd_s32(vsra_n_u32(v261, v261, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v262, vshr_n_u32(vadd_s32(vsra_n_u32(v263, v263, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v257 - ((v259 * v257 + ((v259 * v257) >> 16) + 1) >> 16);
            }

            else
            {
              if (v20)
              {
                v258 = *v253;
              }

              else
              {
                v258 = 0xFFFF;
              }

              result = cmyk64_DAMplusDAM(v14, v7, *v23, v258, (*v7 * (v256 | (v256 << 8)) + ((*v7 * (v256 | (v256 << 8))) >> 16) + 1) >> 16, *v14, *v7, (v256 | (v256 << 8)) ^ 0xFFFFu);
              v12 = v759;
              v20 = v741;
              v251 = v736;
            }
          }

          v16 += v776;
          v264 = &v23[v776];
          if (v264 >= v12)
          {
            v265 = v252;
          }

          else
          {
            v265 = 0;
          }

          v253 += v251 + v265;
          v23 = &v264[v265];
          v7 = (v7 + v254);
          v14 += v776;
          --v255;
        }

        while (v255);
        if (v723)
        {
          v266 = &v730[v728];
          v267 = v688;
          if (v266 < v723)
          {
            v267 = 0;
          }

          v253 = &v729[v726 + v267];
          v268 = v708;
          if (v266 < v723)
          {
            v268 = 0;
          }

          v23 = &v266[v268];
          v12 += 8 * v268 + 8 * v728;
          v729 += v726 + v267;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v253 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 4:
      v117 = v20;
      v118 = -v32;
      v119 = v729;
      v704 = -(v728 * v22);
      v682 = -(v726 * v22);
      v120 = 2 * v8;
      v734 = v20;
      do
      {
        v121 = v727;
        v752 = v12;
        do
        {
          v122 = *v16;
          if (*v16)
          {
            if (v122 == 255)
            {
              if (v20)
              {
                v123 = *v119;
              }

              else
              {
                v123 = 0xFFFF;
              }

              v125 = *v7;
              v126 = vdup_n_s32(v125);
              v127 = vmul_s32(vand_s8(*v23, 0xFFFF0000FFFFLL), v126);
              v128.i32[0] = WORD1(*v23);
              v128.i32[1] = HIWORD(*v23);
              v129 = vmul_s32(v128, v126);
              *v14 = vsli_n_s32(vsub_s32(*v23, vshr_n_u32(vadd_s32(vsra_n_u32(v127, v127, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v128, vshr_n_u32(vadd_s32(vsra_n_u32(v129, v129, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v123 - ((v125 * v123 + ((v125 * v123) >> 16) + 1) >> 16);
            }

            else
            {
              if (v20)
              {
                v124 = *v119;
              }

              else
              {
                v124 = 0xFFFF;
              }

              result = cmyk64_DAMplusDAM(v14, v7, *v23, v124, ((*v7 ^ 0xFFFF) * (v122 | (v122 << 8)) + (((*v7 ^ 0xFFFF) * (v122 | (v122 << 8))) >> 16) + 1) >> 16, *v14, *v7, (v122 | (v122 << 8)) ^ 0xFFFFu);
              v12 = v752;
              v20 = v741;
              v117 = v734;
            }
          }

          v16 += v776;
          v130 = &v23[v776];
          if (v130 >= v12)
          {
            v131 = v118;
          }

          else
          {
            v131 = 0;
          }

          v119 += v117 + v131;
          v23 = &v130[v131];
          v7 = (v7 + v120);
          v14 += v776;
          --v121;
        }

        while (v121);
        if (v723)
        {
          v132 = &v730[v728];
          v133 = v682;
          if (v132 < v723)
          {
            v133 = 0;
          }

          v119 = &v729[v726 + v133];
          v134 = v704;
          if (v132 < v723)
          {
            v134 = 0;
          }

          v23 = &v132[v134];
          v12 += 8 * v134 + 8 * v728;
          v729 += v726 + v133;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v119 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 5:
      v764 = v20;
      v746 = -v32;
      v335 = v729;
      v670 = -(v726 * v22);
      v691 = -(v728 * v22);
      v336 = 2 * v8;
      v337 = 8 * v27;
      do
      {
        v338 = v727;
        do
        {
          if (*v16)
          {
            v339 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v340 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
            v341.i32[1] = v340.i32[1];
            v341.i32[0] = v340.u16[0];
            v342 = vmul_s32(vdup_n_s32(v339), v341);
            v343 = vand_s8(vsub_s32(v340, vshr_n_u32(vadd_s32(vsra_n_u32(v342, v342, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
            v344.i64[0] = v343.u32[0];
            v344.i64[1] = v343.u32[1];
            v345 = vshlq_u64(v344, xmmword_18439CB70);
            v346 = v12;
            result = cmyk64_DAMplusDAM(v14, v7, vorrq_s8(v345, vdupq_laneq_s64(v345, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v339 + ((WORD1(*v23) * v339) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v339 + ((*v23 * v339) >> 16) + 1) >> 16)), (*v335 - ((v339 * *v335 + ((v339 * *v335) >> 16) + 1) >> 16)), *v7, *v14, *v7, ~(*v335 - ((v339 * *v335 + ((v339 * *v335) >> 16) + 1) >> 16)));
            v12 = v346;
          }

          v16 += v776;
          v347 = &v23[v776];
          v348 = v746;
          if (v347 < v12)
          {
            v348 = 0;
          }

          v335 += v764 + v348;
          v23 = &v347[v348];
          v7 = (v7 + v336);
          v14 = (v14 + v337);
          --v338;
        }

        while (v338);
        if (v723)
        {
          v349 = &v730[v728];
          v350 = v670;
          if (v349 < v723)
          {
            v350 = 0;
          }

          v335 = &v729[v726 + v350];
          v351 = v691;
          if (v349 < v723)
          {
            v351 = 0;
          }

          v23 = &v349[v351];
          v12 += 8 * v351 + 8 * v728;
          v729 += v726 + v350;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v335 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 6:
      v388 = v20;
      v389 = -v32;
      v390 = v729;
      v713 = -(v728 * v22);
      v694 = -(v726 * v22);
      v391 = 2 * v8;
      v739 = v20;
      do
      {
        v392 = v727;
        v767 = v12;
        do
        {
          v393 = *v16;
          if (*v16 && *v7 != -1)
          {
            if (~*v7 == 0xFFFF)
            {
              if (v20)
              {
                v394 = *v390;
              }

              else
              {
                v394 = 0xFFFF;
              }

              v396 = (v393 | (v393 << 8)) ^ 0xFFFF;
              v397 = vdup_n_s32(v396);
              v398 = vmul_s32(vand_s8(*v23, 0xFFFF0000FFFFLL), v397);
              v399.i32[0] = WORD1(*v23);
              v399.i32[1] = HIWORD(*v23);
              v400 = vmul_s32(v399, v397);
              *v14 = vsli_n_s32(vsub_s32(*v23, vshr_n_u32(vadd_s32(vsra_n_u32(v398, v398, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v399, vshr_n_u32(vadd_s32(vsra_n_u32(v400, v400, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v394 - ((v396 * v394 + ((v396 * v394) >> 16) + 1) >> 16);
            }

            else
            {
              if (v20)
              {
                v395 = *v390;
              }

              else
              {
                v395 = 0xFFFF;
              }

              result = cmyk64_DAplusDAM(v14, v7, *v14, *v7, *v23, v395, (257 * v393 * ~*v7 + ((257 * v393 * ~*v7) >> 16) + 1) >> 16);
              v12 = v767;
              v20 = v741;
              v388 = v739;
            }
          }

          v16 += v776;
          v401 = &v23[v776];
          if (v401 >= v12)
          {
            v402 = v389;
          }

          else
          {
            v402 = 0;
          }

          v390 += v388 + v402;
          v23 = &v401[v402];
          v7 = (v7 + v391);
          v14 += v776;
          --v392;
        }

        while (v392);
        if (v723)
        {
          v403 = &v730[v728];
          v404 = v694;
          if (v403 < v723)
          {
            v404 = 0;
          }

          v390 = &v729[v726 + v404];
          v405 = v713;
          if (v403 < v723)
          {
            v405 = 0;
          }

          v23 = &v403[v405];
          v12 += 8 * v405 + 8 * v728;
          v729 += v726 + v404;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v390 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 7:
      if (v8)
      {
        v269 = v20;
        v270 = -v32;
        v271 = v729;
        v744 = -(v728 * v22);
        v737 = -(v726 * v22);
        v272 = 2 * v8;
        v273 = 8 * v27;
        do
        {
          v274 = v727;
          v760 = v12;
          do
          {
            v275 = *v16;
            if (*v16)
            {
              if (v275 == 255)
              {
                v276 = *v7;
                v277 = *v271 ^ 0xFFFF;
                v278 = vdup_n_s32(v277);
                v279 = vmul_s32(vand_s8(*v14, 0xFFFF0000FFFFLL), v278);
                v280.i32[0] = HIWORD(v14->u32[0]);
                v280.i32[1] = HIWORD(*v14);
                v281 = vmul_s32(v280, v278);
                *v14 = vsli_n_s32(vsub_s32(*v14, vshr_n_u32(vadd_s32(vsra_n_u32(v279, v279, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v280, vshr_n_u32(vadd_s32(vsra_n_u32(v281, v281, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                *v7 = v276 - ((v277 * v276 + ((v277 * v276) >> 16) + 1) >> 16);
              }

              else
              {
                result = cmyk64_DAMplusDAM(v14, v7, *v14, *v7, (*v271 * (v275 | (v275 << 8)) + ((*v271 * (v275 | (v275 << 8))) >> 16) + 1) >> 16, *v14, *v7, (v275 | (v275 << 8)) ^ 0xFFFFu);
                v12 = v760;
              }
            }

            v16 += v776;
            v282 = &v23[v776];
            if (v282 >= v12)
            {
              v283 = v270;
            }

            else
            {
              v283 = 0;
            }

            v271 += v269 + v283;
            v23 = &v282[v283];
            v7 = (v7 + v272);
            v14 = (v14 + v273);
            --v274;
          }

          while (v274);
          if (v723)
          {
            v284 = &v730[v728];
            v285 = v737;
            if (v284 < v723)
            {
              v285 = 0;
            }

            v271 = &v729[v726 + v285];
            v286 = v744;
            if (v284 < v723)
            {
              v286 = 0;
            }

            v23 = &v284[v286];
            v12 += 8 * v286 + 8 * v728;
            v729 += v726 + v285;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v271 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v731);
      }

      else
      {
        v596 = v20;
        v597 = -v32;
        v598 = -(v728 * v22);
        v774 = -(v726 * v22);
        v599 = 8 * v27;
        v600 = v729;
        do
        {
          v601 = v727;
          do
          {
            v602 = *v16;
            if (*v16)
            {
              v603 = v12;
              if (v602 == 255)
              {
                result = cmyk64_DM(v14, *v14, *v600);
              }

              else
              {
                result = cmyk64_DMplusDM(v14, *v14, (*v600 * (v602 | (v602 << 8)) + ((*v600 * (v602 | (v602 << 8))) >> 16) + 1) >> 16, *v14, (v602 | (v602 << 8)) ^ 0xFFFFu);
              }

              v12 = v603;
            }

            v16 += v776;
            v604 = &v23[v776];
            if (v604 >= v12)
            {
              v605 = v597;
            }

            else
            {
              v605 = 0;
            }

            v600 += v596 + v605;
            v23 = &v604[v605];
            v14 = (v14 + v599);
            --v601;
          }

          while (v601);
          if (v723)
          {
            v606 = &v730[v728];
            v607 = v774;
            if (v606 < v723)
            {
              v607 = 0;
            }

            v600 = &v729[v726 + v607];
            if (v606 >= v723)
            {
              v608 = v598;
            }

            else
            {
              v608 = 0;
            }

            v23 = &v606[v608];
            v12 += 8 * v608 + 8 * v728;
            v729 += v726 + v607;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v600 += v726;
          }

          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v731);
      }

      return result;
    case 8:
      if (v8)
      {
        v442 = -v32;
        v443 = v729;
        v444 = -(v728 * v22);
        v445 = -(v726 * v22);
        v446 = 8 * v27;
        do
        {
          v447 = v9;
          v448 = v731;
          do
          {
            v449 = *v16;
            if (*v16)
            {
              v450 = *v7;
              if (v449 == 255)
              {
                v451 = *v443;
              }

              else
              {
                v451 = (257 * v449 * *v443 + ((257 * v449 * *v443) >> 16) + 1) >> 16;
              }

              result = v451 * v450 + ((v451 * v450) >> 16) + 1;
              v452 = vdup_n_s32(v451);
              v453 = vmul_s32(vand_s8(*v14, 0xFFFF0000FFFFLL), v452);
              v454.i32[0] = HIWORD(v14->u32[0]);
              v454.i32[1] = HIWORD(*v14);
              v455 = vmul_s32(v454, v452);
              *v14 = vsli_n_s32(vsub_s32(*v14, vshr_n_u32(vadd_s32(vsra_n_u32(v453, v453, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v454, vshr_n_u32(vadd_s32(vsra_n_u32(v455, v455, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
              *v7 = v450 - WORD1(result);
            }

            v16 += v776;
            v456 = &v23[v776];
            v457 = &v443[v20];
            if (v456 >= v12)
            {
              v458 = v442;
            }

            else
            {
              v458 = 0;
            }

            v443 = &v457[v458];
            v23 = &v456[v458];
            v7 += v8;
            v14 = (v14 + v446);
            --v447;
          }

          while (v447);
          if (v723)
          {
            v459 = &v730[v728];
            if (v459 >= v723)
            {
              v460 = v445;
            }

            else
            {
              v460 = 0;
            }

            result = &v729[v726 + v460];
            if (v459 >= v723)
            {
              v461 = v444;
            }

            else
            {
              v461 = 0;
            }

            v23 = &v459[v461];
            v12 += 8 * v461 + 8 * v728;
            v729 += v726 + v460;
            v730 = v23;
            v443 = result;
          }

          else
          {
            v23 += v728;
            v443 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v448 != 1);
      }

      else
      {
        v627 = v20;
        v628 = -v32;
        v629 = -(v728 * v22);
        v775 = -(v726 * v22);
        v630 = 8 * v27;
        v631 = v729;
        do
        {
          v632 = v727;
          v633 = v12;
          do
          {
            v634 = *v16;
            if (*v16)
            {
              if (v634 == 255)
              {
                v635 = *v631;
              }

              else
              {
                v635 = (257 * v634 * *v631 + ((257 * v634 * *v631) >> 16) + 1) >> 16;
              }

              result = cmyk64_DM(v14, *v14, v635 ^ 0xFFFF);
              v12 = v633;
            }

            v16 += v776;
            v636 = &v23[v776];
            if (v636 >= v12)
            {
              v637 = v628;
            }

            else
            {
              v637 = 0;
            }

            v631 += v627 + v637;
            v23 = &v636[v637];
            v14 = (v14 + v630);
            --v632;
          }

          while (v632);
          if (v723)
          {
            v638 = &v730[v728];
            v639 = v775;
            if (v638 < v723)
            {
              v639 = 0;
            }

            v631 = &v729[v726 + v639];
            if (v638 >= v723)
            {
              v640 = v629;
            }

            else
            {
              v640 = 0;
            }

            v23 = &v638[v640];
            v12 += 8 * v640 + 8 * v728;
            v729 += v726 + v639;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v631 += v726;
          }

          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v731);
      }

      return result;
    case 9:
      v754 = v20;
      v742 = -v32;
      v153 = v729;
      v663 = -(v726 * v22);
      v683 = -(v728 * v22);
      v154 = 2 * v8;
      v155 = 8 * v27;
      do
      {
        v156 = v727;
        do
        {
          if (*v16)
          {
            v157 = v12;
            v158 = *v153;
            v159 = ~(*v16 | (*v16 << 8));
            v160 = v159;
            v161 = v158 * v160 + ((v158 * v160) >> 16) + 1;
            v162 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
            v163.i32[1] = v162.i32[1];
            v163.i32[0] = v162.u16[0];
            v164 = vmul_s32(v163, vdup_n_s32(v159));
            v165 = vand_s8(vsub_s32(v162, vshr_n_u32(vadd_s32(vsra_n_u32(v164, v164, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
            v166.i64[0] = v165.u32[0];
            v166.i64[1] = v165.u32[1];
            v167 = vshlq_u64(v166, xmmword_18439CB70);
            result = cmyk64_DAMplusDAM(v14, v7, vorrq_s8(v167, vdupq_laneq_s64(v167, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v160 + ((WORD1(*v23) * v160) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v160 + ((*v23 * v160) >> 16) + 1) >> 16)), (v158 - HIWORD(v161)), *v7 ^ 0xFFFFu, *v14, *v7, (v158 - HIWORD(v161) + v159));
            v12 = v157;
          }

          v16 += v776;
          v168 = &v23[v776];
          v169 = v742;
          if (v168 < v12)
          {
            v169 = 0;
          }

          v153 += v754 + v169;
          v23 = &v168[v169];
          v7 = (v7 + v154);
          v14 = (v14 + v155);
          --v156;
        }

        while (v156);
        if (v723)
        {
          v170 = &v730[v728];
          v171 = v663;
          if (v170 < v723)
          {
            v171 = 0;
          }

          v153 = &v729[v726 + v171];
          v172 = v683;
          if (v170 < v723)
          {
            v172 = 0;
          }

          v23 = &v170[v172];
          v12 += 8 * v172 + 8 * v728;
          v729 += v726 + v171;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v153 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 10:
      v769 = v20;
      v747 = -v32;
      v424 = v729;
      v674 = -(v726 * v22);
      v696 = -(v728 * v22);
      v425 = 2 * v8;
      v426 = 8 * v27;
      do
      {
        v427 = v727;
        do
        {
          if (*v16)
          {
            v428 = v12;
            v429 = *v7;
            v430 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v431 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
            v432.i32[1] = v431.i32[1];
            v432.i32[0] = v431.u16[0];
            v433 = vmul_s32(vdup_n_s32(v430), v432);
            v434 = vand_s8(vsub_s32(v431, vshr_n_u32(vadd_s32(vsra_n_u32(v433, v433, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
            v435.i64[0] = v434.u32[0];
            v435.i64[1] = v434.u32[1];
            v436 = vshlq_u64(v435, xmmword_18439CB70);
            result = cmyk64_DAMplusDAM(v14, v7, vorrq_s8(v436, vdupq_laneq_s64(v436, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v430 + ((WORD1(*v23) * v430) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v430 + ((*v23 * v430) >> 16) + 1) >> 16)), (*v424 - ((v430 * *v424 + ((v430 * *v424) >> 16) + 1) >> 16)), v429 ^ 0xFFFFu, *v14, v429, ~(*v424 - ((v430 * *v424 + ((v430 * *v424) >> 16) + 1) >> 16)));
            v12 = v428;
          }

          v16 += v776;
          v437 = &v23[v776];
          v438 = v747;
          if (v437 < v12)
          {
            v438 = 0;
          }

          v424 += v769 + v438;
          v23 = &v437[v438];
          v7 = (v7 + v425);
          v14 = (v14 + v426);
          --v427;
        }

        while (v427);
        if (v723)
        {
          v439 = &v730[v728];
          v440 = v674;
          if (v439 < v723)
          {
            v440 = 0;
          }

          v424 = &v729[v726 + v440];
          v441 = v696;
          if (v439 < v723)
          {
            v441 = 0;
          }

          v23 = &v439[v441];
          v12 += 8 * v441 + 8 * v728;
          v729 += v726 + v440;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v424 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 11:
      if (v8)
      {
        v751 = v20;
        v733 = -v32;
        v99 = v729;
        v656 = -(v726 * v22);
        v661 = -(v728 * v22);
        v100 = 2 * v8;
        v101 = 8 * v27;
        do
        {
          v102 = v727;
          v103 = v12;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v104 = *v99;
              }

              else
              {
                v104 = 0xFFFF;
              }

              v105 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v106 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v107.i32[1] = v106.i32[1];
              v107.i32[0] = v106.u16[0];
              v108 = vmul_s32(vdup_n_s32(v105), v107);
              v109 = vand_s8(vsub_s32(v106, vshr_n_u32(vadd_s32(vsra_n_u32(v108, v108, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v110.i64[0] = v109.u32[0];
              v110.i64[1] = v109.u32[1];
              v111 = vshlq_u64(v110, xmmword_18439CB70);
              result = cmyk64_DAplusdDA(v14, v7, *v14, *v7, vorrq_s8(v111, vdupq_laneq_s64(v111, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v105 + ((WORD1(*v23) * v105) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v105 + ((*v23 * v105) >> 16) + 1) >> 16)), (v104 - ((v104 * v105 + ((v104 * v105) >> 16) + 1) >> 16)));
              v12 = v103;
              v20 = v741;
            }

            v16 += v776;
            v112 = &v23[v776];
            v113 = v733;
            if (v112 < v12)
            {
              v113 = 0;
            }

            v99 += v751 + v113;
            v23 = &v112[v113];
            v7 = (v7 + v100);
            v14 = (v14 + v101);
            --v102;
          }

          while (v102);
          if (v723)
          {
            v114 = &v730[v728];
            v115 = v656;
            if (v114 < v723)
            {
              v115 = 0;
            }

            v99 = &v729[v726 + v115];
            v116 = v661;
            if (v114 < v723)
            {
              v116 = 0;
            }

            v23 = &v114[v116];
            v12 += 8 * v116 + 8 * v728;
            v729 += v726 + v115;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v99 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v731);
      }

      else
      {
        v532 = v20;
        v533 = -v32;
        v721 = -(v728 * v22);
        v719 = -(v726 * v22);
        v534 = 8 * v27;
        v535 = v729;
        do
        {
          v536 = v727;
          v537 = v12;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v538 = *v535;
              }

              else
              {
                v538 = 0xFFFF;
              }

              v539 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v540 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v541.i32[1] = v540.i32[1];
              v541.i32[0] = v540.u16[0];
              v542 = vmul_s32(vdup_n_s32(v539), v541);
              v543 = vand_s8(vsub_s32(v540, vshr_n_u32(vadd_s32(vsra_n_u32(v542, v542, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v544.i64[0] = v543.u32[0];
              v544.i64[1] = v543.u32[1];
              v545 = vshlq_u64(v544, xmmword_18439CB70);
              result = cmyk64_DplusdDA(v14, *v14, vorrq_s8(v545, vdupq_laneq_s64(v545, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v539 + ((WORD1(*v23) * v539) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v539 + ((*v23 * v539) >> 16) + 1) >> 16)), (v538 - ((v538 * v539 + ((v538 * v539) >> 16) + 1) >> 16)));
              v12 = v537;
              v20 = v741;
            }

            v16 += v776;
            v546 = &v23[v776];
            if (v546 >= v12)
            {
              v547 = v533;
            }

            else
            {
              v547 = 0;
            }

            v535 += v532 + v547;
            v23 = &v546[v547];
            v14 = (v14 + v534);
            --v536;
          }

          while (v536);
          if (v723)
          {
            v548 = &v730[v728];
            v549 = v719;
            if (v548 < v723)
            {
              v549 = 0;
            }

            v535 = &v729[v726 + v549];
            v550 = v721;
            if (v548 < v723)
            {
              v550 = 0;
            }

            v23 = &v548[v550];
            v12 += 8 * v550 + 8 * v728;
            v729 += v726 + v549;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v535 += v726;
          }

          v16 += v725;
          v14 += v724;
          --v731;
        }

        while (v731);
      }

      return result;
    case 12:
      if (v8)
      {
        v753 = v20;
        v735 = -v32;
        v135 = v729;
        v657 = -(v726 * v22);
        v662 = -(v728 * v22);
        v136 = 2 * v8;
        v137 = 8 * v27;
        do
        {
          v138 = v727;
          v139 = v12;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v140 = *v135;
              }

              else
              {
                v140 = 0xFFFF;
              }

              v141 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v142 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v143.i32[1] = v142.i32[1];
              v143.i32[0] = v142.u16[0];
              v144 = vmul_s32(vdup_n_s32(v141), v143);
              v145 = vand_s8(vsub_s32(v142, vshr_n_u32(vadd_s32(vsra_n_u32(v144, v144, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v146.i64[0] = v145.u32[0];
              v146.i64[1] = v145.u32[1];
              v147 = vshlq_u64(v146, xmmword_18439CB70);
              result = cmyk64_DApluslDA(v14, v7, *v14, *v7, vorrq_s8(v147, vdupq_laneq_s64(v147, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v141 + ((WORD1(*v23) * v141) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v141 + ((*v23 * v141) >> 16) + 1) >> 16)), (v140 - ((v140 * v141 + ((v140 * v141) >> 16) + 1) >> 16)));
              v12 = v139;
              v20 = v741;
            }

            v16 += v776;
            v148 = &v23[v776];
            v149 = v735;
            if (v148 < v12)
            {
              v149 = 0;
            }

            v135 += v753 + v149;
            v23 = &v148[v149];
            v7 = (v7 + v136);
            v14 = (v14 + v137);
            --v138;
          }

          while (v138);
          if (v723)
          {
            v150 = &v730[v728];
            v151 = v657;
            if (v150 < v723)
            {
              v151 = 0;
            }

            v135 = &v729[v726 + v151];
            v152 = v662;
            if (v150 < v723)
            {
              v152 = 0;
            }

            v23 = &v150[v152];
            v12 += 8 * v152 + 8 * v728;
            v729 += v726 + v151;
            v730 = v23;
          }

          else
          {
            v23 += v728;
            v135 += v726;
          }

          v16 += v725;
          v14 += v724;
          v7 += v720;
          --v731;
        }

        while (v731);
      }

      else
      {
        v551 = -v32;
        v552 = -(v728 * v22);
        v553 = 8 * v27;
        do
        {
          v554 = v727;
          v555 = v731;
          do
          {
            if (*v16)
            {
              v556 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v557 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
              v558.i32[1] = v557.i32[1];
              v558.i32[0] = v557.u16[0];
              v559 = vmul_s32(vdup_n_s32(v556), v558);
              v560 = vand_s8(vsub_s32(v557, vshr_n_u32(vadd_s32(vsra_n_u32(v559, v559, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
              v561.i64[0] = v560.u32[0];
              v561.i64[1] = v560.u32[1];
              v562 = vshlq_u64(v561, xmmword_18439CB70);
              v563 = v12;
              result = cmyk64_DpluslD(v14, *v14, vorrq_s8(v562, vdupq_laneq_s64(v562, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v556 + ((WORD1(*v23) * v556) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v556 + ((*v23 * v556) >> 16) + 1) >> 16)));
              v12 = v563;
            }

            v16 += v776;
            v564 = &v23[v776];
            if (v564 >= v12)
            {
              v565 = v551;
            }

            else
            {
              v565 = 0;
            }

            v23 = &v564[v565];
            v14 = (v14 + v553);
            --v554;
          }

          while (v554);
          v16 += v725;
          v14 += v724;
          v566 = v730;
          v567 = &v730[v728];
          if (v567 >= v723)
          {
            v568 = v552;
          }

          else
          {
            v568 = 0;
          }

          v569 = &v567[v568];
          v570 = v12 + 8 * v568 + 8 * v728;
          if (v723)
          {
            v12 = v570;
            v566 = v569;
            v23 = v569;
          }

          else
          {
            v23 += v728;
          }

          v730 = v566;
          --v731;
        }

        while (v555 != 1);
      }

      return result;
    case 13:
      v370 = v20;
      v371 = -v32;
      v372 = v729;
      v672 = -(v726 * v22);
      v693 = -(v728 * v22);
      v373 = 2 * v8;
      v374 = 8 * v27;
      v712 = v20;
      do
      {
        v375 = v727;
        v766 = v12;
        do
        {
          if (*v16)
          {
            v376 = v20 ? *v372 : 0xFFFF;
            v377 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v378 = v376 - ((v376 * v377 + ((v376 * v377) >> 16) + 1) >> 16);
            v379 = v378;
            if (v378)
            {
              v380 = HIWORD(*v23);
              v381 = WORD2(*v23) * v377;
              v382 = ((v380 - ((v377 * v380 + ((v377 * v380) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v381 + HIWORD(v381) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v377 + ((WORD1(*v23) * v377) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v377 + ((*v23 * v377) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAmultiplyPDA_11872(*v14, *v7, v382, v378);
                  v370 = v712;
                  v8 = v732;
                  v20 = v741;
                  v12 = v766;
                  v382 = result;
                }

                *v14 = v382;
                *v7 = v379;
              }

              else
              {
                result = PDAmultiplyPDA_11872(*v14, 0xFFFFu, v382, v378);
                v370 = v712;
                v8 = v732;
                v20 = v741;
                v12 = v766;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v383 = &v23[v776];
          if (v383 >= v12)
          {
            v384 = v371;
          }

          else
          {
            v384 = 0;
          }

          v372 += v370 + v384;
          v23 = &v383[v384];
          v7 = (v7 + v373);
          v14 = (v14 + v374);
          --v375;
        }

        while (v375);
        if (v723)
        {
          v385 = &v730[v728];
          v386 = v672;
          if (v385 < v723)
          {
            v386 = 0;
          }

          v372 = &v729[v726 + v386];
          v387 = v693;
          if (v385 < v723)
          {
            v387 = 0;
          }

          v23 = &v385[v387];
          v12 += 8 * v387 + 8 * v728;
          v729 += v726 + v386;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v372 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 14:
      v81 = v20;
      v82 = -v32;
      v83 = v729;
      v660 = -(v726 * v22);
      v681 = -(v728 * v22);
      v84 = 2 * v8;
      v85 = 8 * v27;
      v703 = v20;
      do
      {
        v86 = v727;
        v750 = v12;
        do
        {
          if (*v16)
          {
            v87 = v20 ? *v83 : 0xFFFF;
            v88 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v89 = v87 - ((v87 * v88 + ((v87 * v88) >> 16) + 1) >> 16);
            v90 = v89;
            if (v89)
            {
              v91 = HIWORD(*v23);
              v92 = WORD2(*v23) * v88;
              v93 = ((v91 - ((v88 * v91 + ((v88 * v91) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v92 + HIWORD(v92) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v88 + ((WORD1(*v23) * v88) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v88 + ((*v23 * v88) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAscreenPDA_11873(*v14, *v7, v93, v89);
                  v81 = v703;
                  v8 = v732;
                  v20 = v741;
                  v12 = v750;
                  v93 = result;
                }

                *v14 = v93;
                *v7 = v90;
              }

              else
              {
                result = PDAscreenPDA_11873(*v14, 0xFFFFu, v93, v89);
                v81 = v703;
                v8 = v732;
                v20 = v741;
                v12 = v750;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v94 = &v23[v776];
          if (v94 >= v12)
          {
            v95 = v82;
          }

          else
          {
            v95 = 0;
          }

          v83 += v81 + v95;
          v23 = &v94[v95];
          v7 = (v7 + v84);
          v14 = (v14 + v85);
          --v86;
        }

        while (v86);
        if (v723)
        {
          v96 = &v730[v728];
          v97 = v660;
          if (v96 < v723)
          {
            v97 = 0;
          }

          v83 = &v729[v726 + v97];
          v98 = v681;
          if (v96 < v723)
          {
            v98 = 0;
          }

          v23 = &v96[v98];
          v12 += 8 * v98 + 8 * v728;
          v729 += v726 + v97;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v83 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 15:
      v233 = v20;
      v234 = -v32;
      v235 = v729;
      v667 = -(v726 * v22);
      v687 = -(v728 * v22);
      v236 = 2 * v8;
      v237 = 8 * v27;
      v707 = v20;
      do
      {
        v238 = v727;
        v758 = v12;
        do
        {
          if (*v16)
          {
            v239 = v20 ? *v235 : 0xFFFF;
            v240 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v241 = v239 - ((v239 * v240 + ((v239 * v240) >> 16) + 1) >> 16);
            v242 = v241;
            if (v241)
            {
              v243 = HIWORD(*v23);
              v244 = WORD2(*v23) * v240;
              v245 = ((v243 - ((v240 * v243 + ((v240 * v243) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v244 + HIWORD(v244) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v240 + ((WORD1(*v23) * v240) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v240 + ((*v23 * v240) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAoverlayPDA_11874(*v14, *v7, v245, v241);
                  v233 = v707;
                  v8 = v732;
                  v20 = v741;
                  v12 = v758;
                  v245 = result;
                }

                *v14 = v245;
                *v7 = v242;
              }

              else
              {
                result = PDAoverlayPDA_11874(*v14, 0xFFFFu, v245, v241);
                v233 = v707;
                v8 = v732;
                v20 = v741;
                v12 = v758;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v246 = &v23[v776];
          if (v246 >= v12)
          {
            v247 = v234;
          }

          else
          {
            v247 = 0;
          }

          v235 += v233 + v247;
          v23 = &v246[v247];
          v7 = (v7 + v236);
          v14 = (v14 + v237);
          --v238;
        }

        while (v238);
        if (v723)
        {
          v248 = &v730[v728];
          v249 = v667;
          if (v248 < v723)
          {
            v249 = 0;
          }

          v235 = &v729[v726 + v249];
          v250 = v687;
          if (v248 < v723)
          {
            v250 = 0;
          }

          v23 = &v248[v250];
          v12 += 8 * v250 + 8 * v728;
          v729 += v726 + v249;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v235 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 16:
      v63 = v20;
      v64 = -v32;
      v65 = v729;
      v659 = -(v726 * v22);
      v680 = -(v728 * v22);
      v66 = 2 * v8;
      v67 = 8 * v27;
      v702 = v20;
      do
      {
        v68 = v727;
        v749 = v12;
        do
        {
          if (*v16)
          {
            v69 = v20 ? *v65 : 0xFFFF;
            v70 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v71 = v69 - ((v69 * v70 + ((v69 * v70) >> 16) + 1) >> 16);
            v72 = v71;
            if (v71)
            {
              v73 = HIWORD(*v23);
              v74 = WORD2(*v23) * v70;
              v75 = ((v73 - ((v70 * v73 + ((v70 * v73) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v74 + HIWORD(v74) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v70 + ((WORD1(*v23) * v70) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v70 + ((*v23 * v70) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdarkenPDA_11876(*v14, *v7, v75, v71);
                  v63 = v702;
                  v8 = v732;
                  v20 = v741;
                  v12 = v749;
                  v75 = result;
                }

                *v14 = v75;
                *v7 = v72;
              }

              else
              {
                result = PDAdarkenPDA_11876(*v14, 0xFFFFu, v75, v71);
                v63 = v702;
                v8 = v732;
                v20 = v741;
                v12 = v749;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v76 = &v23[v776];
          if (v76 >= v12)
          {
            v77 = v64;
          }

          else
          {
            v77 = 0;
          }

          v65 += v63 + v77;
          v23 = &v76[v77];
          v7 = (v7 + v66);
          v14 = (v14 + v67);
          --v68;
        }

        while (v68);
        if (v723)
        {
          v78 = &v730[v728];
          v79 = v659;
          if (v78 < v723)
          {
            v79 = 0;
          }

          v65 = &v729[v726 + v79];
          v80 = v680;
          if (v78 < v723)
          {
            v80 = 0;
          }

          v23 = &v78[v80];
          v12 += 8 * v80 + 8 * v728;
          v729 += v726 + v79;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v65 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 17:
      v299 = v20;
      v300 = -v32;
      v301 = v729;
      v668 = -(v726 * v22);
      v689 = -(v728 * v22);
      v302 = 2 * v8;
      v303 = 8 * v27;
      v709 = v20;
      do
      {
        v304 = v727;
        v762 = v12;
        do
        {
          if (*v16)
          {
            v305 = v20 ? *v301 : 0xFFFF;
            v306 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v307 = v305 - ((v305 * v306 + ((v305 * v306) >> 16) + 1) >> 16);
            v308 = v307;
            if (v307)
            {
              v309 = HIWORD(*v23);
              v310 = WORD2(*v23) * v306;
              v311 = ((v309 - ((v306 * v309 + ((v306 * v309) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v310 + HIWORD(v310) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v306 + ((WORD1(*v23) * v306) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v306 + ((*v23 * v306) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAlightenPDA_11875(*v14, *v7, v311, v307);
                  v299 = v709;
                  v8 = v732;
                  v20 = v741;
                  v12 = v762;
                  v311 = result;
                }

                *v14 = v311;
                *v7 = v308;
              }

              else
              {
                result = PDAlightenPDA_11875(*v14, 0xFFFFu, v311, v307);
                v299 = v709;
                v8 = v732;
                v20 = v741;
                v12 = v762;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v312 = &v23[v776];
          if (v312 >= v12)
          {
            v313 = v300;
          }

          else
          {
            v313 = 0;
          }

          v301 += v299 + v313;
          v23 = &v312[v313];
          v7 = (v7 + v302);
          v14 = (v14 + v303);
          --v304;
        }

        while (v304);
        if (v723)
        {
          v314 = &v730[v728];
          v315 = v668;
          if (v314 < v723)
          {
            v315 = 0;
          }

          v301 = &v729[v726 + v315];
          v316 = v689;
          if (v314 < v723)
          {
            v316 = 0;
          }

          v23 = &v314[v316];
          v12 += 8 * v316 + 8 * v728;
          v729 += v726 + v315;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v301 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 18:
      v406 = v20;
      v407 = -v32;
      v408 = v729;
      v673 = -(v726 * v22);
      v695 = -(v728 * v22);
      v409 = 2 * v8;
      v410 = 8 * v27;
      v714 = v20;
      do
      {
        v411 = v727;
        v768 = v12;
        do
        {
          if (*v16)
          {
            v412 = v20 ? *v408 : 0xFFFF;
            v413 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v414 = v412 - ((v412 * v413 + ((v412 * v413) >> 16) + 1) >> 16);
            v415 = v414;
            if (v414)
            {
              v416 = HIWORD(*v23);
              v417 = WORD2(*v23) * v413;
              v418 = ((v416 - ((v413 * v416 + ((v413 * v416) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v417 + HIWORD(v417) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v413 + ((WORD1(*v23) * v413) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v413 + ((*v23 * v413) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolordodgePDA_11877(*v14, *v7, v418, v414);
                  v406 = v714;
                  v8 = v732;
                  v20 = v741;
                  v12 = v768;
                  v418 = result;
                }

                *v14 = v418;
                *v7 = v415;
              }

              else
              {
                result = PDAcolordodgePDA_11877(*v14, 0xFFFFu, v418, v414);
                v406 = v714;
                v8 = v732;
                v20 = v741;
                v12 = v768;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v419 = &v23[v776];
          if (v419 >= v12)
          {
            v420 = v407;
          }

          else
          {
            v420 = 0;
          }

          v408 += v406 + v420;
          v23 = &v419[v420];
          v7 = (v7 + v409);
          v14 = (v14 + v410);
          --v411;
        }

        while (v411);
        if (v723)
        {
          v421 = &v730[v728];
          v422 = v673;
          if (v421 < v723)
          {
            v422 = 0;
          }

          v408 = &v729[v726 + v422];
          v423 = v695;
          if (v421 < v723)
          {
            v423 = 0;
          }

          v23 = &v421[v423];
          v12 += 8 * v423 + 8 * v728;
          v729 += v726 + v422;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v408 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 19:
      v480 = v20;
      v481 = -v32;
      v482 = v729;
      v676 = -(v726 * v22);
      v698 = -(v728 * v22);
      v483 = 2 * v8;
      v484 = 8 * v27;
      v716 = v20;
      do
      {
        v485 = v727;
        v771 = v12;
        do
        {
          if (*v16)
          {
            v486 = v20 ? *v482 : 0xFFFF;
            v487 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v488 = v486 - ((v486 * v487 + ((v486 * v487) >> 16) + 1) >> 16);
            v489 = v488;
            if (v488)
            {
              v490 = HIWORD(*v23);
              v491 = WORD2(*v23) * v487;
              v492 = ((v490 - ((v487 * v490 + ((v487 * v490) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v491 + HIWORD(v491) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v487 + ((WORD1(*v23) * v487) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v487 + ((*v23 * v487) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolorburnPDA_11878(*v14, *v7, v492, v488);
                  v480 = v716;
                  v8 = v732;
                  v20 = v741;
                  v12 = v771;
                  v492 = result;
                }

                *v14 = v492;
                *v7 = v489;
              }

              else
              {
                result = PDAcolorburnPDA_11878(*v14, 0xFFFFu, v492, v488);
                v480 = v716;
                v8 = v732;
                v20 = v741;
                v12 = v771;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v493 = &v23[v776];
          if (v493 >= v12)
          {
            v494 = v481;
          }

          else
          {
            v494 = 0;
          }

          v482 += v480 + v494;
          v23 = &v493[v494];
          v7 = (v7 + v483);
          v14 = (v14 + v484);
          --v485;
        }

        while (v485);
        if (v723)
        {
          v495 = &v730[v728];
          v496 = v676;
          if (v495 < v723)
          {
            v496 = 0;
          }

          v482 = &v729[v726 + v496];
          v497 = v698;
          if (v495 < v723)
          {
            v497 = 0;
          }

          v23 = &v495[v497];
          v12 += 8 * v497 + 8 * v728;
          v729 += v726 + v496;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v482 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 20:
      v317 = v20;
      v318 = -v32;
      v319 = v729;
      v669 = -(v726 * v22);
      v690 = -(v728 * v22);
      v320 = 2 * v8;
      v321 = 8 * v27;
      v710 = v20;
      do
      {
        v322 = v727;
        v763 = v12;
        do
        {
          if (*v16)
          {
            v323 = v20 ? *v319 : 0xFFFF;
            v324 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v325 = v323 - ((v323 * v324 + ((v323 * v324) >> 16) + 1) >> 16);
            v326 = v325;
            if (v325)
            {
              v327 = HIWORD(*v23);
              v328 = WORD2(*v23) * v324;
              v329 = ((v327 - ((v324 * v327 + ((v324 * v327) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v328 + HIWORD(v328) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v324 + ((WORD1(*v23) * v324) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v324 + ((*v23 * v324) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAsoftlightPDA_11880(*v14, *v7, v329, v325);
                  v317 = v710;
                  v8 = v732;
                  v20 = v741;
                  v12 = v763;
                  v329 = result;
                }

                *v14 = v329;
                *v7 = v326;
              }

              else
              {
                result = PDAsoftlightPDA_11880(*v14, 0xFFFFu, v329, v325);
                v317 = v710;
                v8 = v732;
                v20 = v741;
                v12 = v763;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v330 = &v23[v776];
          if (v330 >= v12)
          {
            v331 = v318;
          }

          else
          {
            v331 = 0;
          }

          v319 += v317 + v331;
          v23 = &v330[v331];
          v7 = (v7 + v320);
          v14 = (v14 + v321);
          --v322;
        }

        while (v322);
        if (v723)
        {
          v332 = &v730[v728];
          v333 = v669;
          if (v332 < v723)
          {
            v333 = 0;
          }

          v319 = &v729[v726 + v333];
          v334 = v690;
          if (v332 < v723)
          {
            v334 = 0;
          }

          v23 = &v332[v334];
          v12 += 8 * v334 + 8 * v728;
          v729 += v726 + v333;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v319 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 21:
      v352 = v20;
      v353 = -v32;
      v354 = v729;
      v671 = -(v726 * v22);
      v692 = -(v728 * v22);
      v355 = 2 * v8;
      v356 = 8 * v27;
      v711 = v20;
      do
      {
        v357 = v727;
        v765 = v12;
        do
        {
          if (*v16)
          {
            v358 = v20 ? *v354 : 0xFFFF;
            v359 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v360 = v358 - ((v358 * v359 + ((v358 * v359) >> 16) + 1) >> 16);
            v361 = v360;
            if (v360)
            {
              v362 = HIWORD(*v23);
              v363 = WORD2(*v23) * v359;
              v364 = ((v362 - ((v359 * v362 + ((v359 * v362) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v363 + HIWORD(v363) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v359 + ((WORD1(*v23) * v359) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v359 + ((*v23 * v359) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhardlightPDA_11879(*v14, *v7, v364, v360);
                  v352 = v711;
                  v8 = v732;
                  v20 = v741;
                  v12 = v765;
                  v364 = result;
                }

                *v14 = v364;
                *v7 = v361;
              }

              else
              {
                result = PDAhardlightPDA_11879(*v14, 0xFFFFu, v364, v360);
                v352 = v711;
                v8 = v732;
                v20 = v741;
                v12 = v765;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v365 = &v23[v776];
          if (v365 >= v12)
          {
            v366 = v353;
          }

          else
          {
            v366 = 0;
          }

          v354 += v352 + v366;
          v23 = &v365[v366];
          v7 = (v7 + v355);
          v14 = (v14 + v356);
          --v357;
        }

        while (v357);
        if (v723)
        {
          v367 = &v730[v728];
          v368 = v671;
          if (v367 < v723)
          {
            v368 = 0;
          }

          v354 = &v729[v726 + v368];
          v369 = v692;
          if (v367 < v723)
          {
            v369 = 0;
          }

          v23 = &v367[v369];
          v12 += 8 * v369 + 8 * v728;
          v729 += v726 + v368;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v354 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 22:
      v462 = v20;
      v463 = -v32;
      v464 = v729;
      v675 = -(v726 * v22);
      v697 = -(v728 * v22);
      v465 = 2 * v8;
      v466 = 8 * v27;
      v715 = v20;
      do
      {
        v467 = v727;
        v770 = v12;
        do
        {
          if (*v16)
          {
            v468 = v20 ? *v464 : 0xFFFF;
            v469 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v470 = v468 - ((v468 * v469 + ((v468 * v469) >> 16) + 1) >> 16);
            v471 = v470;
            if (v470)
            {
              v472 = HIWORD(*v23);
              v473 = WORD2(*v23) * v469;
              v474 = ((v472 - ((v469 * v472 + ((v469 * v472) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v473 + HIWORD(v473) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v469 + ((WORD1(*v23) * v469) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v469 + ((*v23 * v469) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdifferencePDA_11881(*v14, *v7, v474, v470);
                  v462 = v715;
                  v8 = v732;
                  v20 = v741;
                  v12 = v770;
                  v474 = result;
                }

                *v14 = v474;
                *v7 = v471;
              }

              else
              {
                result = PDAdifferencePDA_11881(*v14, 0xFFFFu, v474, v470);
                v462 = v715;
                v8 = v732;
                v20 = v741;
                v12 = v770;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v475 = &v23[v776];
          if (v475 >= v12)
          {
            v476 = v463;
          }

          else
          {
            v476 = 0;
          }

          v464 += v462 + v476;
          v23 = &v475[v476];
          v7 = (v7 + v465);
          v14 = (v14 + v466);
          --v467;
        }

        while (v467);
        if (v723)
        {
          v477 = &v730[v728];
          v478 = v675;
          if (v477 < v723)
          {
            v478 = 0;
          }

          v464 = &v729[v726 + v478];
          v479 = v697;
          if (v477 < v723)
          {
            v479 = 0;
          }

          v23 = &v477[v479];
          v12 += 8 * v479 + 8 * v728;
          v729 += v726 + v478;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v464 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 23:
      v498 = v20;
      v499 = -v32;
      v500 = v729;
      v677 = -(v726 * v22);
      v699 = -(v728 * v22);
      v501 = 2 * v8;
      v502 = 8 * v27;
      v717 = v20;
      do
      {
        v503 = v727;
        v772 = v12;
        do
        {
          if (*v16)
          {
            v504 = v20 ? *v500 : 0xFFFF;
            v505 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v506 = v504 - ((v504 * v505 + ((v504 * v505) >> 16) + 1) >> 16);
            v507 = v506;
            if (v506)
            {
              v508 = HIWORD(*v23);
              v509 = WORD2(*v23) * v505;
              v510 = ((v508 - ((v505 * v508 + ((v505 * v508) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v509 + HIWORD(v509) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v505 + ((WORD1(*v23) * v505) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v505 + ((*v23 * v505) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAexclusionPDA_11882(*v14, *v7, v510, v506);
                  v498 = v717;
                  v8 = v732;
                  v20 = v741;
                  v12 = v772;
                  v510 = result;
                }

                *v14 = v510;
                *v7 = v507;
              }

              else
              {
                result = PDAexclusionPDA_11882(*v14, 0xFFFFu, v510, v506);
                v498 = v717;
                v8 = v732;
                v20 = v741;
                v12 = v772;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v511 = &v23[v776];
          if (v511 >= v12)
          {
            v512 = v499;
          }

          else
          {
            v512 = 0;
          }

          v500 += v498 + v512;
          v23 = &v511[v512];
          v7 = (v7 + v501);
          v14 = (v14 + v502);
          --v503;
        }

        while (v503);
        if (v723)
        {
          v513 = &v730[v728];
          v514 = v677;
          if (v513 < v723)
          {
            v514 = 0;
          }

          v500 = &v729[v726 + v514];
          v515 = v699;
          if (v513 < v723)
          {
            v515 = 0;
          }

          v23 = &v513[v515];
          v12 += 8 * v515 + 8 * v728;
          v729 += v726 + v514;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v500 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 24:
      v191 = v20;
      v192 = -v32;
      v193 = v729;
      v665 = -(v726 * v22);
      v685 = -(v728 * v22);
      v194 = 2 * v8;
      v195 = 8 * v27;
      v706 = v20;
      do
      {
        v196 = v727;
        v756 = v12;
        do
        {
          if (*v16)
          {
            v197 = v20 ? *v193 : 0xFFFF;
            v198 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v199 = v197 - ((v197 * v198 + ((v197 * v198) >> 16) + 1) >> 16);
            v200 = v199;
            if (v199)
            {
              v201 = HIWORD(*v23);
              v202 = WORD2(*v23) * v198;
              v203 = ((v201 - ((v198 * v201 + ((v198 * v201) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v202 + HIWORD(v202) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v198 + ((WORD1(*v23) * v198) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v198 + ((*v23 * v198) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhuePDA_11883(*v14, *v7, v203, v199);
                  v191 = v706;
                  v8 = v732;
                  v20 = v741;
                  v12 = v756;
                  v203 = result;
                }

                *v14 = v203;
                *v7 = v200;
              }

              else
              {
                result = PDAhuePDA_11883(*v14, 0xFFFFu, v203, v199);
                v191 = v706;
                v8 = v732;
                v20 = v741;
                v12 = v756;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v204 = &v23[v776];
          if (v204 >= v12)
          {
            v205 = v192;
          }

          else
          {
            v205 = 0;
          }

          v193 += v191 + v205;
          v23 = &v204[v205];
          v7 = (v7 + v194);
          v14 = (v14 + v195);
          --v196;
        }

        while (v196);
        if (v723)
        {
          v206 = &v730[v728];
          v207 = v665;
          if (v206 < v723)
          {
            v207 = 0;
          }

          v193 = &v729[v726 + v207];
          v208 = v685;
          if (v206 < v723)
          {
            v208 = 0;
          }

          v23 = &v206[v208];
          v12 += 8 * v208 + 8 * v728;
          v729 += v726 + v207;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v193 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 25:
      v173 = v20;
      v174 = -v32;
      v175 = v729;
      v664 = -(v726 * v22);
      v684 = -(v728 * v22);
      v176 = 2 * v8;
      v177 = 8 * v27;
      v705 = v20;
      do
      {
        v178 = v727;
        v755 = v12;
        do
        {
          if (*v16)
          {
            v179 = v20 ? *v175 : 0xFFFF;
            v180 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v181 = v179 - ((v179 * v180 + ((v179 * v180) >> 16) + 1) >> 16);
            v182 = v181;
            if (v181)
            {
              v183 = HIWORD(*v23);
              v184 = WORD2(*v23) * v180;
              v185 = ((v183 - ((v180 * v183 + ((v180 * v183) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v184 + HIWORD(v184) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v180 + ((WORD1(*v23) * v180) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v180 + ((*v23 * v180) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAsaturationPDA_11884(*v14, *v7, v185, v181);
                  v173 = v705;
                  v8 = v732;
                  v20 = v741;
                  v12 = v755;
                  v185 = result;
                }

                *v14 = v185;
                *v7 = v182;
              }

              else
              {
                result = PDAsaturationPDA_11884(*v14, 0xFFFFu, v185, v181);
                v173 = v705;
                v8 = v732;
                v20 = v741;
                v12 = v755;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v186 = &v23[v776];
          if (v186 >= v12)
          {
            v187 = v174;
          }

          else
          {
            v187 = 0;
          }

          v175 += v173 + v187;
          v23 = &v186[v187];
          v7 = (v7 + v176);
          v14 = (v14 + v177);
          --v178;
        }

        while (v178);
        if (v723)
        {
          v188 = &v730[v728];
          v189 = v664;
          if (v188 < v723)
          {
            v189 = 0;
          }

          v175 = &v729[v726 + v189];
          v190 = v684;
          if (v188 < v723)
          {
            v190 = 0;
          }

          v23 = &v188[v190];
          v12 += 8 * v190 + 8 * v728;
          v729 += v726 + v189;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v175 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 26:
      v516 = v20;
      v517 = -v32;
      v518 = v729;
      v678 = -(v726 * v22);
      v700 = -(v728 * v22);
      v519 = 2 * v8;
      v520 = 8 * v27;
      v718 = v20;
      do
      {
        v521 = v727;
        v773 = v12;
        do
        {
          if (*v16)
          {
            v522 = v20 ? *v518 : 0xFFFF;
            v523 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v524 = v522 - ((v522 * v523 + ((v522 * v523) >> 16) + 1) >> 16);
            if (v524)
            {
              v525 = HIWORD(*v23);
              v526 = WORD2(*v23) * v523;
              result = ((v525 - ((v523 * v525 + ((v523 * v525) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v526 + HIWORD(v526) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v523 + ((WORD1(*v23) * v523) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v523 + ((*v23 * v523) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_11885(result, (v522 - ((v522 * v523 + ((v522 * v523) >> 16) + 1) >> 16)), *v14, *v7);
                  v516 = v718;
                  v8 = v732;
                  v20 = v741;
                  v12 = v773;
                }

                *v14 = result;
                *v7 = v524;
              }

              else
              {
                result = PDAluminosityPDA_11885(result, (v522 - ((v522 * v523 + ((v522 * v523) >> 16) + 1) >> 16)), *v14, 0xFFFFu);
                v516 = v718;
                v8 = v732;
                v20 = v741;
                v12 = v773;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v527 = &v23[v776];
          if (v527 >= v12)
          {
            v528 = v517;
          }

          else
          {
            v528 = 0;
          }

          v518 += v516 + v528;
          v23 = &v527[v528];
          v7 = (v7 + v519);
          v14 = (v14 + v520);
          --v521;
        }

        while (v521);
        if (v723)
        {
          v529 = &v730[v728];
          v530 = v678;
          if (v529 < v723)
          {
            v530 = 0;
          }

          v518 = &v729[v726 + v530];
          v531 = v700;
          if (v529 < v723)
          {
            v531 = 0;
          }

          v23 = &v529[v531];
          v12 += 8 * v531 + 8 * v728;
          v729 += v726 + v530;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v518 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    case 27:
      v45 = v20;
      v46 = -v32;
      v47 = v729;
      v658 = -(v726 * v22);
      v679 = -(v728 * v22);
      v48 = 2 * v8;
      v49 = 8 * v27;
      v701 = v20;
      do
      {
        v50 = v727;
        v748 = v12;
        do
        {
          if (*v16)
          {
            v51 = v20 ? *v47 : 0xFFFF;
            v52 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v53 = v51 - ((v51 * v52 + ((v51 * v52) >> 16) + 1) >> 16);
            v54 = v53;
            if (v53)
            {
              v55 = HIWORD(*v23);
              v56 = WORD2(*v23) * v52;
              v57 = ((v55 - ((v52 * v55 + ((v52 * v55) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v23) - ((v56 + HIWORD(v56) + 1) >> 16)) << 32) | ((WORD1(*v23) - ((WORD1(*v23) * v52 + ((WORD1(*v23) * v52) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v52 + ((*v23 * v52) >> 16) + 1) >> 16));
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_11885(*v14, *v7, v57, v53);
                  v45 = v701;
                  v8 = v732;
                  v20 = v741;
                  v12 = v748;
                  v57 = result;
                }

                *v14 = v57;
                *v7 = v54;
              }

              else
              {
                result = PDAluminosityPDA_11885(*v14, 0xFFFFu, v57, v53);
                v45 = v701;
                v8 = v732;
                v20 = v741;
                v12 = v748;
                *v14 = result;
              }
            }
          }

          v16 += v776;
          v58 = &v23[v776];
          if (v58 >= v12)
          {
            v59 = v46;
          }

          else
          {
            v59 = 0;
          }

          v47 += v45 + v59;
          v23 = &v58[v59];
          v7 = (v7 + v48);
          v14 = (v14 + v49);
          --v50;
        }

        while (v50);
        if (v723)
        {
          v60 = &v730[v728];
          v61 = v658;
          if (v60 < v723)
          {
            v61 = 0;
          }

          v47 = &v729[v726 + v61];
          v62 = v679;
          if (v60 < v723)
          {
            v62 = 0;
          }

          v23 = &v60[v62];
          v12 += 8 * v62 + 8 * v728;
          v729 += v726 + v61;
          v730 = v23;
        }

        else
        {
          v23 += v728;
          v47 += v726;
        }

        v16 += v725;
        v14 += v724;
        v7 += v720;
        --v731;
      }

      while (v731);
      return result;
    default:
      return result;
  }

  do
  {
    v575 = v727;
    v576 = v12;
    do
    {
      v577 = *v16;
      if (!*v16)
      {
        goto LABEL_713;
      }

      if (v577 == 255)
      {
        v578 = *v574;
        if (!*v574)
        {
          goto LABEL_713;
        }

        if (v578 == 0xFFFF)
        {
          *v14 = *v23;
          goto LABEL_713;
        }

        v589 = *v23;
        v588 = *v14;
        v590 = v578 ^ 0xFFFF;
      }

      else
      {
        v579 = *v574;
        v580 = (v577 | (v577 << 8)) ^ 0xFFFF;
        v581 = v580 * v579 + ((v580 * v579) >> 16) + 1;
        if (v579 == HIWORD(v581))
        {
          goto LABEL_713;
        }

        v582 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v23), xmmword_18439CB80));
        v583.i32[1] = v582.i32[1];
        v583.i32[0] = v582.u16[0];
        v584 = vmul_s32(v583, vdup_n_s32(v580));
        v585 = vand_s8(vsub_s32(v582, vshr_n_u32(vadd_s32(vsra_n_u32(v584, v584, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v586.i64[0] = v585.u32[0];
        v586.i64[1] = v585.u32[1];
        v587 = vshlq_u64(v586, xmmword_18439CB70);
        v588 = *v14;
        v589 = vorrq_s8(v587, vdupq_laneq_s64(v587, 1)).u64[0] | ((WORD1(*v23) - ((WORD1(*v23) * v580 + ((WORD1(*v23) * v580) >> 16) + 1) >> 16)) << 16) | (*v23 - ((*v23 * v580 + ((*v23 * v580) >> 16) + 1) >> 16));
        v590 = (~v579 + HIWORD(v581));
      }

      result = cmyk64_DplusDM(v14, v589, v588, v590);
      v12 = v576;
LABEL_713:
      v16 += v776;
      v591 = &v23[v776];
      if (v591 >= v12)
      {
        v592 = v572;
      }

      else
      {
        v592 = 0;
      }

      v574 += v571 + v592;
      v23 = &v591[v592];
      v14 = (v14 + v573);
      --v575;
    }

    while (v575);
    if (v723)
    {
      v593 = &v730[v728];
      v594 = v722;
      if (v593 < v723)
      {
        v594 = 0;
      }

      v574 = &v729[v726 + v594];
      v595 = v740;
      if (v593 < v723)
      {
        v595 = 0;
      }

      v23 = &v593[v595];
      v12 += 8 * v595 + 8 * v728;
      v729 += v726 + v594;
      v730 = v23;
    }

    else
    {
      v23 += v728;
      v574 += v726;
    }

    v16 += v725;
    v14 += v724;
    --v731;
  }

  while (v731);
  return result;
}

_DWORD *cmyk64_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float32x2_t *a5, float a6, double a7, double a8, double a9)
{
  v11 = PIXELCONSTANT_11889(*(*a1 + 64), a4, a5, a6, a7, a8, a9);
  v13 = v12;
  if (a2 && a3 > 0xB || (a2 = malloc_type_malloc(0x3CuLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CB50;
    a2[6] = 0;
    *(a2 + 2) = 1;
    *(a2 + 6) = v11;
    *(a2 + 4) = a2 + 12;
    if (v13 > 0xFEu)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[14] = v13 | (v13 << 16);
      *(a2 + 5) = a2 + 14;
    }
  }

  return a2;
}

unint64_t PIXELCONSTANT_11889(float *a1, int a2, float32x2_t *a3, float a4, double a5, double a6, double a7)
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
    v32 = a1[1];
    if (a3->f32[0] <= *&a6)
    {
      v32 = a3->f32[0];
      if (a3->f32[0] < *&a7)
      {
        v32 = *a1;
      }
    }

    LOWORD(v18) = 0;
    v19 = 0;
    LOWORD(v20) = 0;
    v31 = (v8 + ((*&a6 - v32) * v9));
  }

  else
  {
    if (v10 == 4)
    {
      v22 = a3->f32[1];
      v23 = a3[1].f32[0];
      v24 = a3[1].f32[1];
      if (a3->f32[0] < *&a7)
      {
        v25 = *a1;
      }

      else
      {
        v25 = a3->f32[0];
      }

      if (a3->f32[0] <= *&a6)
      {
        v26 = v25;
      }

      else
      {
        v26 = a1[1];
      }

      if (v22 < *&a7)
      {
        v27 = *a1;
      }

      else
      {
        v27 = a3->f32[1];
      }

      if (v22 <= *&a6)
      {
        v28 = v27;
      }

      else
      {
        v28 = a1[1];
      }

      if (v23 < *&a7)
      {
        v29 = *a1;
      }

      else
      {
        v29 = a3[1].f32[0];
      }

      if (v23 <= *&a6)
      {
        v30 = v29;
      }

      else
      {
        v30 = a1[1];
      }

      if (v24 >= *&a7)
      {
        LODWORD(a7) = a3[1].i32[1];
      }

      if (v24 <= *&a6)
      {
        *&a6 = *&a7;
      }

      v18 = (v8 + (v26 * v9));
      v19 = (v8 + (v28 * v9));
      v20 = (v8 + (v30 * v9));
      v21 = v8 + (*&a6 * v9);
    }

    else
    {
      if (v10 != 3)
      {
        LOWORD(v18) = 0;
        v19 = 0;
        LOWORD(v20) = 0;
        v31 = (v8 + v9);
        return (v20 << 32) | (v31 << 48) | (v19 << 16) | v18;
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

      v18 = (v8 + ((*v14.i32 - v17) * v9));
      v19 = (v8 + ((*&v14.i32[1] - v17) * v9));
      v20 = (v8 + ((v16 - v17) * v9));
      v21 = v8 + (v17 * v9);
    }

    v31 = v21;
  }

  return (v20 << 32) | (v31 << 48) | (v19 << 16) | v18;
}

uint64_t CMYK64_shade(uint64_t a1, __n128 a2)
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
  CMYK64_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void CMYK64_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v692 = a3;
  v701 = *MEMORY[0x1E69E9840];
  v698 = *(a1 + 4);
  v4 = v698;
  v5 = (v698 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a2 + 184);
    v699 = *(a1 + 136);
    v700 = v6;
    v9 = *(a2 + 104);
    v695 = *(a2 + 96);
    v697 = v9;
    v11 = *(a1 + 24);
    v10 = *(a1 + 28);
    v13 = *(a1 + 16);
    v12 = *(a1 + 20);
    v14 = *(a1 + 12);
    v696 = *(a1 + 8);
    v683 = a1;
    v691 = a2;
    v15 = *(a2 + 16);
    v16 = (v15 + 18) * v5;
    if (v16 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
      v18 = v19;
      v21 = v19;
      v22 = v691;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v678 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v21 = 0;
      v22 = v691;
    }

    v681 = v21;
    v682 = v4;
    v23 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v24 = v23 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22[20] = v24;
    if (v15)
    {
      v25 = 16 * v5;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 + v25;
    v27 = v7 + (v11 - 1) * v10;
    v28 = v10 >> 3;
    v22[18] = v23;
    v22[19] = v26;
    if (v700)
    {
      v29 = *(v683 + 32) >> 1;
      v30 = (v700 + 2 * v29 * v13 + 2 * v14);
      v31 = v682;
      v689 = v29 - v682;
      v32 = v683;
      v33 = 1;
    }

    else
    {
      v30 = 0;
      v689 = 0;
      v33 = 0;
      v32 = v683;
      v31 = v682;
    }

    v690 = ((v8 * 65535.0) + 0.5);
    v34 = v27 + 8 * v12;
    v35 = (v7 + 8 * v28 * v13 + 8 * v14);
    v688 = v28 - v31;
    v36 = *(v32 + 104);
    v37 = *(v32 + 108);
    v38 = *(v32 + 2);
    if (v38 == 6 || v38 == 1)
    {
      v39 = v691;
      v40 = v695;
      v41 = v697;
      if (v699)
      {
        v678 = v28;
        v42 = 0;
        LODWORD(v28) = 0;
        v43 = *(v32 + 124);
        v44 = v699 + v43 * v37 + v36;
        v45 = v682;
        v687 = v43 - v682;
        v46 = v698;
        goto LABEL_31;
      }

      goto LABEL_634;
    }

    v678 = v28;
    v41 = v697;
    if (v699)
    {
      v679 = v34;
      v680 = v33;
      shape_enum_clip_alloc(v19, v20, v699, 1, 1, 1, v36, v37, v698, v696);
      if (v47)
      {
        v42 = v47;
        v28 = 0;
        v48 = ((v15 * v5 + 15) & 0xFFFFFFF0);
        if (!v15)
        {
          v48 = 16 * v5;
        }

        v49 = v682;
        v687 = -v682;
        v44 = (v26 + v48 + 16);
        v39 = v691;
        v46 = v698;
        v40 = v695;
        goto LABEL_21;
      }

LABEL_634:
      if (v681)
      {
        free(v681);
      }

      return;
    }

    v44 = 0;
    v42 = 0;
    v687 = 0;
    LODWORD(v28) = 0;
    v39 = v691;
    v46 = v698;
    v45 = v682;
    v40 = v695;
LABEL_31:
    v56 = v690 ^ 0xFFFF;
    v685 = (v46 - 1);
    v684 = -v45;
    v679 = v34;
    v686 = (v34 - 8);
    v680 = v33;
    v699 = (2 * v33);
    v57 = v42;
LABEL_32:
    v693 = v28;
    v694 = v57;
    v58 = *v39;
    v697 = v41;
    v58(v39, v40, v41, v46);
    v60 = v39[20];
    v61 = v39[18];
    v62 = *(v39 + 2);
    if (v62 == *(v39 + 3))
    {
      if (v690 == 0xFFFF)
      {
        v65 = v692;
      }

      else
      {
        v63 = v46;
        v64 = v39[18];
        v65 = v692;
        do
        {
          if (*v64)
          {
            v66 = *(v60 + 8);
            v67 = WORD2(*v60) * v56;
            *v60 = ((HIWORD(*v60) - ((HIWORD(*v60) * v56 + ((HIWORD(*v60) * v56) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v60) - ((v67 + HIWORD(v67) + 1) >> 16)) << 32) | ((WORD1(*v60) - ((WORD1(*v60) * v56 + ((WORD1(*v60) * v56) >> 16) + 1) >> 16)) << 16) | (*v60 - ((*v60 * v56 + ((*v60 * v56) >> 16) + 1) >> 16));
            *(v60 + 8) = v66 - ((v66 * v56 + ((v66 * v56) >> 16) + 1) >> 16);
          }

          ++v64;
          v60 += 16;
          --v63;
        }

        while (v63);
        v60 += 16 * v684;
        v61 += v685 + v684 + 1;
      }
    }

    else
    {
      v68 = v39[19];
      v69 = HIWORD(v62) & 0x3F;
      if (v69 == 16)
      {
        v65 = v692;
        v92 = 0;
        if (v690 == 0xFFFF)
        {
          v105 = 0;
          do
          {
            if (v61[v92])
            {
              *(v60 + v105) = *(v68 + v105);
            }

            v105 += 16;
            ++v92;
          }

          while (v46 != v92);
        }

        else
        {
          v93 = (v68 + 8);
          v94 = (v60 + 8);
          do
          {
            if (v61[v92])
            {
              v95 = *v93;
              v96 = *(v93 - 1);
              *(v94 - 1) = ((HIWORD(v96) - ((HIWORD(v96) * v56 + ((HIWORD(v96) * v56) >> 16) + 1) >> 16)) << 48) | ((WORD2(v96) - ((WORD2(v96) * v56 + ((WORD2(v96) * v56) >> 16) + 1) >> 16)) << 32) | ((WORD1(v96) - ((WORD1(v96) * v56 + ((WORD1(v96) * v56) >> 16) + 1) >> 16)) << 16) | (v96 - ((v96 * v56 + ((v96 * v56) >> 16) + 1) >> 16));
              *v94 = v95 - ((v95 * v56 + ((v95 * v56) >> 16) + 1) >> 16);
            }

            v93 += 8;
            ++v92;
            v94 += 8;
          }

          while (v46 != v92);
        }
      }

      else if (v69 == 32)
      {
        v65 = v692;
        v70 = 0;
        v71 = 0;
        v72 = v68 + 8;
        if (v690 == 0xFFFF)
        {
          do
          {
            if (v61[v70])
            {
              v59.i32[0] = *(v72 + 8);
              if (*v59.i32 <= 0.0)
              {
                LOWORD(v83) = 0;
                *(v60 + v71) = 0;
              }

              else
              {
                LODWORD(v83) = ((*v59.i32 * 65535.0) + 0.5);
                v84 = *(v72 - 8);
                if (*v59.i32 <= 1.0)
                {
                  v83 = v83;
                }

                else
                {
                  v83 = 0xFFFFLL;
                }

                if (*v59.i32 > 1.0)
                {
                  *v59.i32 = 1.0;
                }

                LOWORD(v85) = v83;
                if (v84 <= *v59.i32)
                {
                  if (v84 >= 0.0)
                  {
                    v85 = ((v84 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v85) = 0;
                  }
                }

                v86 = *(v72 - 4);
                v87 = v83;
                if (v86 <= *v59.i32)
                {
                  if (v86 >= 0.0)
                  {
                    v87 = ((v86 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v87 = 0;
                  }
                }

                v88 = *v72;
                LOWORD(v89) = v83;
                if (*v72 <= *v59.i32)
                {
                  if (v88 >= 0.0)
                  {
                    v89 = ((v88 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v89) = 0;
                  }
                }

                v90 = *(v72 + 4);
                v91 = v83;
                if (v90 <= *v59.i32)
                {
                  if (v90 >= 0.0)
                  {
                    v91 = ((v90 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v91 = 0;
                  }
                }

                *(v60 + v71) = (v89 << 32) | (v91 << 48) | (v87 << 16) | v85;
              }

              *(v60 + v71 + 8) = v83;
            }

            v71 += 16;
            v72 += 20;
            ++v70;
          }

          while (v46 != v70);
        }

        else
        {
          do
          {
            if (v61[v70])
            {
              v59.i32[0] = *(v72 + 8);
              if (*v59.i32 <= 0.0)
              {
                LOWORD(v77) = 0;
                *(v60 + v71) = 0;
              }

              else
              {
                v73 = *(v72 - 8);
                v74 = ((*v59.i32 * 65535.0) + 0.5);
                if (*v59.i32 > 1.0)
                {
                  v74 = 0xFFFF;
                }

                v75 = v74;
                if (*v59.i32 > 1.0)
                {
                  *v59.i32 = 1.0;
                }

                v76 = v74;
                if (v73 <= *v59.i32)
                {
                  if (v73 >= 0.0)
                  {
                    v76 = ((v73 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v76 = 0;
                  }
                }

                v78 = *(v72 - 4);
                v79 = v74;
                if (v78 <= *v59.i32)
                {
                  if (v78 >= 0.0)
                  {
                    v79 = ((v78 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v79 = 0;
                  }
                }

                v80 = *v72;
                v81 = v74;
                if (*v72 <= *v59.i32)
                {
                  if (v80 >= 0.0)
                  {
                    v81 = ((v80 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v81 = 0;
                  }
                }

                v82 = *(v72 + 4);
                if (v82 <= *v59.i32)
                {
                  if (v82 >= 0.0)
                  {
                    v75 = ((v82 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v75 = 0;
                  }
                }

                v77 = v74 - ((v74 * v56 + ((v74 * v56) >> 16) + 1) >> 16);
                *(v60 + v71) = ((v81 - ((v81 * v56 + ((v81 * v56) >> 16) + 1) >> 16)) << 32) | ((v75 - ((v75 * v56 + ((v75 * v56) >> 16) + 1) >> 16)) << 48) | ((v79 - ((v79 * v56 + ((v79 * v56) >> 16) + 1) >> 16)) << 16) | (v76 - ((v76 * v56 + ((v76 * v56) >> 16) + 1) >> 16));
              }

              *(v60 + v71 + 8) = v77;
            }

            v71 += 16;
            v72 += 20;
            ++v70;
          }

          while (v46 != v70);
        }
      }

      else
      {
        v65 = v692;
        v97 = 0;
        v98 = (v60 + 8);
        if (v690 == 0xFFFF)
        {
          do
          {
            if (v61[v97])
            {
              v104 = *(v68 + 8 * v97);
              *(v98 - 1) = (0x10100000000 * BYTE1(v104)) | (0x101000000000000 * v104) | v104 & 0xFF0000 | (BYTE2(v104) << 24) | BYTE3(v104) | (BYTE3(v104) << 8);
              *v98 = BYTE4(v104) | (WORD2(v104) << 8);
            }

            ++v97;
            v98 += 8;
          }

          while (v46 != v97);
        }

        else
        {
          do
          {
            if (v61[v97])
            {
              v99 = v68 + 8 * v97;
              v100 = *(v99 + 4);
              LODWORD(v99) = *v99;
              v101 = BYTE3(v99) | (BYTE3(v99) << 8);
              v102 = BYTE2(v99) | (BYTE2(v99) << 8);
              v103 = BYTE1(v99) | (BYTE1(v99) << 8);
              LODWORD(v99) = v99 | (v99 << 8);
              *(v98 - 1) = ((v99 - ((v99 * v56 + ((v99 * v56) >> 16) + 1) >> 16)) << 48) | ((v103 - ((v103 * v56 + ((v103 * v56) >> 16) + 1) >> 16)) << 32) | ((v102 - ((v102 * v56 + ((v102 * v56) >> 16) + 1) >> 16)) << 16) | (v101 - ((v101 * v56 + ((v101 * v56) >> 16) + 1) >> 16));
              *v98 = (v100 | (v100 << 8)) - (((v100 | (v100 << 8)) * v56 + (((v100 | (v100 << 8)) * v56) >> 16) + 1) >> 16);
            }

            ++v97;
            v98 += 8;
          }

          while (v46 != v97);
        }
      }
    }

    v695 = v40;
    switch(v65)
    {
      case 0:
        v106 = v44 != 0;
        if (v700)
        {
          v107 = v40;
          v108 = v46;
          v109 = v44;
          do
          {
            v110 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v110 = ((*v109 * v110 + ((*v109 * v110) >> 8) + 1) >> 8);
              }

              if (v110)
              {
                if (v110 == 255)
                {
                  *v35 = 0;
                  *v30 = 0;
                }

                else
                {
                  CMYK64_DAM(v35, v30, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(*v30) >> 16, (v110 | (v110 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v61;
            v109 += v106;
            ++v35;
            ++v30;
            --v108;
          }

          while (v108);
          v44 = &v109[v687];
          v35 += v688;
          v30 += v689;
          v39 = v691;
          v46 = v698;
          v40 = v107;
          goto LABEL_521;
        }

        v574 = v46;
        v575 = v44;
        v529 = v697;
        do
        {
          v576 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v576 = ((*v575 * v576 + ((*v575 * v576) >> 8) + 1) >> 8);
            }

            if (v576)
            {
              if (v576 == 255)
              {
                *v35 = 0;
              }

              else
              {
                v577 = bswap32(v35->u16[1] | (v35->u16[0] << 16));
                v578.i32[0] = v577;
                v578.i32[1] = vshr_n_u32(vdup_n_s32(v577), 0x10uLL).i32[1];
                v578.i64[1] = __PAIR64__(bswap32(v35->u16[3]) >> 16, bswap32(v35->u16[2]) >> 16);
                v579 = vmulq_s32(v578, vdupq_n_s32(v576 | (v576 << 8)));
                v580.i64[0] = 0x100000001;
                v580.i64[1] = 0x100000001;
                v578.i32[0] = v577;
                *v35 = vrev16_s8(vmovn_s32(vsubq_s32(v578, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v579, v579, 0x10uLL), v580), 0x10uLL))));
              }
            }
          }

          ++v61;
          v575 += v106;
          ++v35;
          --v574;
        }

        while (v574);
        v44 = &v575[v687];
        v35 += v688;
        v30 += v689;
        v39 = v691;
        goto LABEL_599;
      case 1:
        v299 = *v61;
        if (v700)
        {
          v300 = 0;
          if (v44)
          {
            v301 = (v60 + 8);
            v302 = v61 + 1;
            v303 = v30;
            do
            {
              v304 = v35;
              v305 = v303;
              if (v299)
              {
                v306 = v44[v300] * v299 + ((v44[v300] * v299) >> 8) + 1;
                if (BYTE1(v306))
                {
                  if (BYTE1(v306) == 255)
                  {
                    v307 = *(v301 - 1);
                    v308 = HIDWORD(v307);
                    v309 = HIWORD(v307);
                    LODWORD(v307) = bswap32(v307);
                    v35->i16[0] = WORD1(v307);
                    v35->i16[1] = v307;
                    v35->i16[2] = bswap32(v308) >> 16;
                    v35->i16[3] = __rev16(v309);
                    v30[v300] = bswap32(*v301) >> 16;
                  }

                  else
                  {
                    CMYK64_DAMplusDAM(v35, v305, *(v301 - 1), *v301, (257 * (v306 >> 8)), ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(v30[v300]) >> 16, ~(257 * (v306 >> 8)));
                  }
                }
              }

              v299 = v302[v300];
              ++v35;
              v303 = v305 + 1;
              ++v300;
              v301 += 8;
            }

            while (v698 != v300);
            v44 += v300 + v687;
          }

          else
          {
            v634 = v61 + 1;
            v635 = 8;
            v636 = v46;
            do
            {
              if (v299)
              {
                if (v299 == 255)
                {
                  v637 = *(v60 + 8 * v300);
                  v638 = HIDWORD(v637);
                  v639 = HIWORD(v637);
                  LODWORD(v637) = bswap32(v637);
                  v35->i16[0] = WORD1(v637);
                  v35->i16[1] = v637;
                  v35->i16[2] = bswap32(v638) >> 16;
                  v35->i16[3] = __rev16(v639);
                  *(v30 + v300) = bswap32(*(v60 + v635)) >> 16;
                }

                else
                {
                  CMYK64_DAMplusDAM(v35, (v30 + v300), *(v60 + 8 * v300), *(v60 + v635), v299 | (v299 << 8), ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(*(v30 + v300)) >> 16, (v299 | (v299 << 8)) ^ 0xFFFF);
                }
              }

              v640 = *v634++;
              v299 = v640;
              ++v35;
              v635 += 16;
              v300 += 2;
              --v636;
            }

            while (v636);
            v44 = 0;
            v305 = (v30 + v300 - 2);
            v304 = v35 - 1;
          }

          v35 = &v304[v688 + 1];
          v30 = &v305[v689 + 1];
          goto LABEL_520;
        }

        if (v44)
        {
          v581 = v61 + 1;
          v582 = v46;
          v530 = v696;
          do
          {
            if (v299)
            {
              v583 = *v44 * v299 + ((*v44 * v299) >> 8) + 1;
              v533 = *(v683 + 40);
              v584 = v686;
              if (v686 >= v35)
              {
                v584 = v35;
              }

              if (v584 >= v533)
              {
                v533 = v584;
              }

              if (BYTE1(v583))
              {
                if (BYTE1(v583) == 255)
                {
                  v585 = HIDWORD(*v60);
                  v586 = HIWORD(*v60);
                  v587 = bswap32(*v60);
                  v533->i16[0] = HIWORD(v587);
                  v533->i16[1] = v587;
                  v533->i16[2] = bswap32(v585) >> 16;
                  v533->i16[3] = __rev16(v586);
                }

                else
                {
                  v588 = bswap32(v533->u16[1] | (v533->u16[0] << 16));
                  v589.i32[0] = 257 * (v583 >> 8);
                  v589.i32[1] = ~v589.i32[0];
                  *v590.i8 = vand_s8(v589, 0xFFFF0000FFFFLL);
                  v591.i64[0] = v590.i64[0];
                  v591.i64[1] = v590.i64[0];
                  v592.i32[0] = v588;
                  v592.i32[1] = WORD1(*v60);
                  v592.i32[2] = bswap32(v533->u16[2]) >> 16;
                  v592.i32[3] = HIWORD(*v60);
                  v590.i64[1] = v590.i64[0];
                  v593 = vmulq_s32(v592, vrev64q_s32(v590));
                  v592.i32[0] = *v60;
                  v592.i32[1] = HIWORD(v588);
                  v592.i32[2] = WORD2(*v60);
                  v592.i32[3] = bswap32(v533->u16[3]) >> 16;
                  v594 = vmlaq_s32(v593, v592, v591);
                  *v533 = vrev16_s8(vsubhn_s32(vshrq_n_u32(v594, 0x10uLL), vmvnq_s8(v594)));
                }
              }
            }

            else
            {
              v533 = v35;
            }

            v595 = *v581++;
            v299 = v595;
            v60 += 16;
            ++v44;
            v35 = v533 + 1;
            --v582;
          }

          while (v582);
          v44 += v687;
          goto LABEL_631;
        }

        v666 = *(v683 + 40);
        v667 = v61 + 1;
        v668 = v46;
        v530 = v696;
        do
        {
          v533 = v686;
          if (v686 >= v35)
          {
            v533 = v35;
          }

          if (v533 < v666)
          {
            v533 = v666;
          }

          if (v299)
          {
            if (v299 == 255)
            {
              v669 = HIDWORD(*v60);
              v670 = HIWORD(*v60);
              v671 = bswap32(*v60);
              v533->i16[0] = HIWORD(v671);
              v533->i16[1] = v671;
              v533->i16[2] = bswap32(v669) >> 16;
              v533->i16[3] = __rev16(v670);
            }

            else
            {
              v672 = bswap32(v533->u16[1] | (v533->u16[0] << 16));
              v59.i8[0] = v299;
              v59.i8[1] = v299;
              v59.i32[1] = ~v59.i32[0];
              *v673.i8 = vand_s8(*v59.i8, 0xFFFF0000FFFFLL);
              v674.i64[0] = v673.i64[0];
              v674.i64[1] = v673.i64[0];
              v675.i32[0] = v672;
              v675.i32[1] = WORD1(*v60);
              v675.i32[2] = bswap32(v533->u16[2]) >> 16;
              v675.i32[3] = HIWORD(*v60);
              v673.i64[1] = v673.i64[0];
              v676 = vmulq_s32(v675, vrev64q_s32(v673));
              v675.i32[0] = *v60;
              v675.i32[1] = HIWORD(v672);
              v675.i32[2] = WORD2(*v60);
              v675.i32[3] = bswap32(v533->u16[3]) >> 16;
              v59 = vmlaq_s32(v676, v675, v674);
              *v533 = vrev16_s8(vsubhn_s32(vshrq_n_u32(v59, 0x10uLL), vmvnq_s8(v59)));
            }
          }

          v677 = *v667++;
          v299 = v677;
          v60 += 16;
          v35 = v533 + 1;
          --v668;
        }

        while (v668);
        goto LABEL_630;
      case 2:
        v247 = *v61;
        if (v700)
        {
          v248 = 0;
          if (v44)
          {
            v249 = v61 + 1;
            v250 = v30;
            while (1)
            {
              v251 = v35;
              v252 = v250;
              if (!v247)
              {
                goto LABEL_263;
              }

              v253 = v44[v248] * v247 + ((v44[v248] * v247) >> 8) + 1;
              if (!BYTE1(v253))
              {
                goto LABEL_263;
              }

              if (BYTE1(v253) == 255)
              {
                v254 = *(v60 + 8);
                if (*(v60 + 8))
                {
                  if (v254 != 0xFFFF)
                  {
                    v267 = *v60;
                    v266 = bswap32(v30[v248]) >> 16;
                    v268 = ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16);
                    v269 = v254 ^ 0xFFFF;
                    goto LABEL_262;
                  }

                  v255 = HIDWORD(*v60);
                  v256 = HIWORD(*v60);
                  v257 = bswap32(*v60);
                  v35->i16[0] = HIWORD(v257);
                  v35->i16[1] = v257;
                  v35->i16[2] = bswap32(v255) >> 16;
                  v35->i16[3] = __rev16(v256);
                  v30[v248] = -1;
                }
              }

              else
              {
                v258 = *(v60 + 8);
                v259 = (257 * (v253 >> 8)) ^ 0xFFFF;
                if (v258 != (v259 * v258 + ((v259 * v258) >> 16) + 1) >> 16)
                {
                  v260 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v60), xmmword_18439CB80));
                  v261.i32[1] = v260.i32[1];
                  v261.i32[0] = v260.u16[0];
                  v262 = vmul_s32(v261, vdup_n_s32(v259));
                  v263 = vand_s8(vsub_s32(v260, vshr_n_u32(vadd_s32(vsra_n_u32(v262, v262, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v264.i64[0] = v263.u32[0];
                  v264.i64[1] = v263.u32[1];
                  v265 = vshlq_u64(v264, xmmword_18439CB70);
                  v266 = bswap32(v30[v248]) >> 16;
                  v267 = vorrq_s8(v265, vdupq_laneq_s64(v265, 1)).u64[0] | ((WORD1(*v60) - ((WORD1(*v60) * v259 + ((WORD1(*v60) * v259) >> 16) + 1) >> 16)) << 16) | (*v60 - ((*v60 * v259 + ((*v60 * v259) >> 16) + 1) >> 16));
                  v254 = (v258 - ((v259 * v258 + ((v259 * v258) >> 16) + 1) >> 16));
                  v268 = ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16);
                  v269 = ~(v258 - ((v259 * v258 + ((v259 * v258) >> 16) + 1) >> 16));
LABEL_262:
                  CMYK64_DAplusDAM(v35, v252, v267, v254, v268, v266, v269);
                }
              }

LABEL_263:
              v247 = v249[v248];
              v60 += 16;
              ++v35;
              v250 = v252 + 1;
              if (v698 == ++v248)
              {
                v44 += v248 + v687;
                goto LABEL_597;
              }
            }
          }

          v612 = v61 + 1;
          v613 = 8;
          v614 = v46;
          while (1)
          {
            if (v247)
            {
              if (v247 == 255)
              {
                v615 = *(v60 + v613);
                if (*(v60 + v613))
                {
                  if (v615 != 0xFFFF)
                  {
                    v630 = *(v60 + 8 * v248);
                    v628 = bswap32(*(v30 + v248)) >> 16;
                    v629 = (v30 + v248);
                    v631 = ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16);
                    v632 = v615 ^ 0xFFFF;
                    goto LABEL_594;
                  }

                  v616 = *(v60 + 8 * v248);
                  v617 = HIDWORD(v616);
                  v618 = HIWORD(v616);
                  LODWORD(v616) = bswap32(v616);
                  v35->i16[0] = WORD1(v616);
                  v35->i16[1] = v616;
                  v35->i16[2] = bswap32(v617) >> 16;
                  v35->i16[3] = __rev16(v618);
                  *(v30 + v248) = -1;
                }
              }

              else
              {
                v619 = (257 * v247) ^ 0xFFFF;
                v620 = *(v60 + v613) - ((v619 * *(v60 + v613) + ((v619 * *(v60 + v613)) >> 16) + 1) >> 16);
                if (v620)
                {
                  v621 = *(v60 + 8 * v248);
                  v622 = vmovn_s64(vshlq_u64(vdupq_n_s64(v621), xmmword_18439CB80));
                  v623.i32[1] = v622.i32[1];
                  v623.i32[0] = v622.u16[0];
                  v624 = vmul_s32(v623, vdup_n_s32(v619));
                  v625 = vand_s8(vsub_s32(v622, vshr_n_u32(vadd_s32(vsra_n_u32(v624, v624, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v626.i64[0] = v625.u32[0];
                  v626.i64[1] = v625.u32[1];
                  v627 = vshlq_u64(v626, xmmword_18439CB70);
                  v628 = bswap32(*(v30 + v248)) >> 16;
                  v629 = (v30 + v248);
                  v630 = vorrq_s8(v627, vdupq_laneq_s64(v627, 1)).u64[0] | ((WORD1(v621) - ((WORD1(v621) * v619 + ((WORD1(v621) * v619) >> 16) + 1) >> 16)) << 16) | (v621 - ((v621 * v619 + ((v621 * v619) >> 16) + 1) >> 16));
                  v615 = (*(v60 + v613) - ((v619 * *(v60 + v613) + ((v619 * *(v60 + v613)) >> 16) + 1) >> 16));
                  v631 = ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16);
                  v632 = ~v620;
LABEL_594:
                  CMYK64_DAplusDAM(v35, v629, v630, v615, v631, v628, v632);
                }
              }
            }

            v633 = *v612++;
            v247 = v633;
            ++v35;
            v248 += 2;
            v613 += 16;
            if (!--v614)
            {
              v44 = 0;
              v252 = (v30 + v248 - 2);
              v251 = v35 - 1;
LABEL_597:
              v35 = &v251[v688 + 1];
              v30 = &v252[v689 + 1];
              v39 = v691;
              v46 = v698;
              v40 = v695;
LABEL_598:
              v529 = v697;
LABEL_599:
              v530 = v696;
LABEL_522:
              v531 = v530 - 1;
              if (!v531)
              {
                v42 = v694;
                if (v694)
                {
LABEL_633:
                  free(v42);
                }

                goto LABEL_634;
              }

              v696 = v531;
              v57 = 0;
              v28 = (v693 + 1);
              v40 += v39[16];
              v41 = v39[17] + v529;
              v42 = v694;
              if (v694)
              {
                v49 = v682;
LABEL_21:
                v699 = (v689 + v49);
                while (1)
                {
                  while (1)
                  {
                    v50 = *(v44 - 4);
                    v51 = v50 - v28;
                    if (v50 <= v28)
                    {
                      break;
                    }

                    v696 -= v51;
                    if (v696 < 1)
                    {
                      goto LABEL_633;
                    }

                    v40 += v39[16] * v51;
                    v41 += v39[17] * v51;
                    v35 += v678 * v51;
                    v55 = v699 * v51;
                    if (!v700)
                    {
                      v55 = 0;
                    }

                    v30 += v55;
                    v28 = v50;
                  }

                  if (v28 < *(v44 - 3) + v50)
                  {
                    break;
                  }

                  v52 = v42;
                  v53 = v28;
                  v54 = shape_enum_clip_scan(v42, v44 - 4);
                  v28 = v53;
                  v42 = v52;
                  if (!v54)
                  {
                    goto LABEL_633;
                  }
                }

                v45 = v682;
                v33 = v680;
                v34 = v679;
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }
        }

        if (v44)
        {
          v532 = 0;
          v533 = v35 - 1;
          v530 = v696;
          while (1)
          {
            if (!v247)
            {
              goto LABEL_537;
            }

            v534 = v44[v532] * v247 + ((v44[v532] * v247) >> 8) + 1;
            if (!BYTE1(v534))
            {
              goto LABEL_537;
            }

            if (BYTE1(v534) == 255)
            {
              v535 = *(v60 + 8);
              if (*(v60 + 8))
              {
                if (v535 != 0xFFFF)
                {
                  v549 = WORD1(*v60);
                  v556.i32[0] = bswap32(v533[1].u16[1] | (v533[1].u16[0] << 16));
                  v556.i32[1] = HIWORD(v556.i32[0]);
                  v556.i64[1] = __PAIR64__(bswap32(v533[1].u16[3]) >> 16, bswap32(v533[1].u16[2]) >> 16);
                  v551 = vshlq_u64(vdupq_n_s64(*v60), xmmword_18439CB80);
                  v557 = vmull_u16(vmovn_s32(v556), vdup_n_s16(~v535));
                  v553 = vsraq_n_u32(v557, v557, 0x10uLL);
                  v554.i64[0] = 0x100000001;
                  v554.i64[1] = 0x100000001;
                  v555.i32[0] = *v60;
                  goto LABEL_536;
                }

                v536 = HIDWORD(*v60);
                v537 = HIWORD(*v60);
                v538 = bswap32(*v60);
                v533[1].i16[0] = HIWORD(v538);
                v533[1].i16[1] = v538;
                v533[1].i16[2] = bswap32(v536) >> 16;
                v533[1].i16[3] = __rev16(v537);
              }
            }

            else
            {
              v539 = v534 >> 8;
              v540 = *(v60 + 8);
              v541 = (257 * v539) ^ 0xFFFF;
              v542 = v541 * v540 + ((v541 * v540) >> 16) + 1;
              if (v540 != HIWORD(v542))
              {
                v543 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v60), xmmword_18439CB80));
                v544.i32[1] = v543.i32[1];
                v544.i32[0] = v543.u16[0];
                v555 = vmul_s32(v544, vdup_n_s32(v541));
                v545 = vand_s8(vsub_s32(v543, vshr_n_u32(vadd_s32(vsra_n_u32(v555, v555, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v546.i64[0] = v545.u32[0];
                v546.i64[1] = v545.u32[1];
                v547 = vshlq_u64(v546, xmmword_18439CB70);
                v548 = vorrq_s8(v547, vdupq_laneq_s64(v547, 1)).u64[0] | ((WORD1(*v60) - ((WORD1(*v60) * v541 + ((WORD1(*v60) * v541) >> 16) + 1) >> 16)) << 16) | (*v60 - ((*v60 * v541 + ((*v60 * v541) >> 16) + 1) >> 16));
                v549 = WORD1(v548);
                v550.i32[0] = bswap32(v533[1].u16[1] | (v533[1].u16[0] << 16));
                v550.i32[1] = HIWORD(v550.i32[0]);
                v550.i64[1] = __PAIR64__(bswap32(v533[1].u16[3]) >> 16, bswap32(v533[1].u16[2]) >> 16);
                v551 = vshlq_u64(vdupq_n_s64(v548), xmmword_18439CB80);
                v552 = vmull_u16(vmovn_s32(v550), vdup_n_s16(~v540 + HIWORD(v542)));
                v553 = vsraq_n_u32(v552, v552, 0x10uLL);
                v554.i64[0] = 0x100000001;
                v554.i64[1] = 0x100000001;
                v555.i32[0] = v548;
LABEL_536:
                v555.i32[1] = v549;
                v533[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v555, v551), vaddq_s32(v553, v554), 0x10uLL)));
              }
            }

LABEL_537:
            v247 = v61[v532 + 1];
            v60 += 16;
            ++v532;
            ++v533;
            if (v46 == v532)
            {
              v44 += v532 + v687;
LABEL_631:
              v35 = &v533[v688 + 1];
              v30 += v689;
              v529 = v697;
              goto LABEL_522;
            }
          }
        }

        v641 = v61 + 1;
        v533 = v35 - 1;
        v642 = v46;
        v530 = v696;
        while (1)
        {
          if (v247)
          {
            if (v247 == 255)
            {
              v643 = *(v60 + 8);
              if (*(v60 + 8))
              {
                if (v643 != 0xFFFF)
                {
                  v656 = WORD1(*v60);
                  v663.i32[0] = bswap32(v533[1].u16[1] | (v533[1].u16[0] << 16));
                  v663.i32[1] = HIWORD(v663.i32[0]);
                  v663.i64[1] = __PAIR64__(bswap32(v533[1].u16[3]) >> 16, bswap32(v533[1].u16[2]) >> 16);
                  v658 = vshlq_u64(vdupq_n_s64(*v60), xmmword_18439CB80);
                  v664 = vmull_u16(vmovn_s32(v663), vdup_n_s16(~v643));
                  v660 = vsraq_n_u32(v664, v664, 0x10uLL);
                  v661.i64[0] = 0x100000001;
                  v661.i64[1] = 0x100000001;
                  v662.i32[0] = *v60;
                  goto LABEL_617;
                }

                v644 = HIDWORD(*v60);
                v645 = HIWORD(*v60);
                v646 = bswap32(*v60);
                v533[1].i16[0] = HIWORD(v646);
                v533[1].i16[1] = v646;
                v533[1].i16[2] = bswap32(v644) >> 16;
                v533[1].i16[3] = __rev16(v645);
              }
            }

            else
            {
              v647 = *(v60 + 8);
              v648 = (257 * v247) ^ 0xFFFF;
              v649 = v648 * v647 + ((v648 * v647) >> 16) + 1;
              if (v647 != HIWORD(v649))
              {
                v650 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v60), xmmword_18439CB80));
                v651.i32[1] = v650.i32[1];
                v651.i32[0] = v650.u16[0];
                v662 = vmul_s32(v651, vdup_n_s32(v648));
                v652 = vand_s8(vsub_s32(v650, vshr_n_u32(vadd_s32(vsra_n_u32(v662, v662, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v653.i64[0] = v652.u32[0];
                v653.i64[1] = v652.u32[1];
                v654 = vshlq_u64(v653, xmmword_18439CB70);
                v655 = vorrq_s8(v654, vdupq_laneq_s64(v654, 1)).u64[0] | ((WORD1(*v60) - ((WORD1(*v60) * v648 + ((WORD1(*v60) * v648) >> 16) + 1) >> 16)) << 16) | (*v60 - ((*v60 * v648 + ((*v60 * v648) >> 16) + 1) >> 16));
                v656 = WORD1(v655);
                v657.i32[0] = bswap32(v533[1].u16[1] | (v533[1].u16[0] << 16));
                v657.i32[1] = HIWORD(v657.i32[0]);
                v657.i64[1] = __PAIR64__(bswap32(v533[1].u16[3]) >> 16, bswap32(v533[1].u16[2]) >> 16);
                v658 = vshlq_u64(vdupq_n_s64(v655), xmmword_18439CB80);
                v659 = vmull_u16(vmovn_s32(v657), vdup_n_s16(~v647 + HIWORD(v649)));
                v660 = vsraq_n_u32(v659, v659, 0x10uLL);
                v661.i64[0] = 0x100000001;
                v661.i64[1] = 0x100000001;
                v662.i32[0] = v655;
LABEL_617:
                v662.i32[1] = v656;
                v533[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v662, v658), vaddq_s32(v660, v661), 0x10uLL)));
              }
            }
          }

          v665 = *v641++;
          v247 = v665;
          v60 += 16;
          ++v533;
          if (!--v642)
          {
LABEL_630:
            v44 = 0;
            goto LABEL_631;
          }
        }

      case 3:
        v287 = (v60 + 8);
        v288 = v46;
        v179 = v44;
        v289 = v699;
        do
        {
          v290 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v290 = ((*v179 * v290 + ((*v179 * v290) >> 8) + 1) >> 8);
            }

            if (v290)
            {
              if (v290 == 255)
              {
                CMYK64_DAM(v35, v30, *(v287 - 1), *v287, bswap32(*v30) >> 16);
              }

              else
              {
                v291 = v290 | (v290 << 8);
                v292 = bswap32(*v30) >> 16;
                CMYK64_DAMplusDAM(v35, v30, *(v287 - 1), *v287, (v292 * v291 + ((v292 * v291) >> 16) + 1) >> 16, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v292, v291 ^ 0xFFFF);
              }
            }
          }

          ++v61;
          v179 += v44 != 0;
          ++v35;
          v287 += 8;
          v30 = (v289 + v30);
          --v288;
        }

        while (v288);
        goto LABEL_424;
      case 4:
        v177 = (v60 + 8);
        v178 = v46;
        v179 = v44;
        v180 = v699;
        do
        {
          v181 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v181 = ((*v179 * v181 + ((*v179 * v181) >> 8) + 1) >> 8);
            }

            if (v181)
            {
              if (v181 == 255)
              {
                CMYK64_DAM(v35, v30, *(v177 - 1), *v177, bswap32(~*v30) >> 16);
              }

              else
              {
                v182 = v181 | (v181 << 8);
                v183 = bswap32(*v30) >> 16;
                CMYK64_DAMplusDAM(v35, v30, *(v177 - 1), *v177, ((v183 ^ 0xFFFF) * v182 + (((v183 ^ 0xFFFF) * v182) >> 16) + 1) >> 16, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v183, v182 ^ 0xFFFF);
              }
            }
          }

          ++v61;
          v179 += v44 != 0;
          ++v35;
          v177 += 8;
          v30 = (v180 + v30);
          --v178;
        }

        while (v178);
        goto LABEL_424;
      case 5:
        v344 = (v60 + 8);
        v345 = v46;
        v179 = v44;
        v346 = v699;
        while (1)
        {
          v347 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_352;
            }

            v348 = *v179 * v347 + ((*v179 * v347) >> 8) + 1;
            if (v348 >= 0x100)
            {
              break;
            }
          }

LABEL_353:
          ++v61;
          v179 += v44 != 0;
          ++v35;
          v344 += 8;
          v30 = (v346 + v30);
          if (!--v345)
          {
            goto LABEL_424;
          }
        }

        v347 = v348 >> 8;
LABEL_352:
        v349 = *v344;
        v350 = *(v344 - 1);
        v351 = (v347 | (v347 << 8)) ^ 0xFFFF;
        v352 = v351 * v349 + ((v351 * v349) >> 16) + 1;
        v353 = vmovn_s64(vshlq_u64(vdupq_n_s64(v350), xmmword_18439CB80));
        v354.i32[1] = v353.i32[1];
        v354.i32[0] = v353.u16[0];
        v355 = vmul_s32(vdup_n_s32(v351), v354);
        v356 = vand_s8(vsub_s32(v353, vshr_n_u32(vadd_s32(vsra_n_u32(v355, v355, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v357.i64[0] = v356.u32[0];
        v357.i64[1] = v356.u32[1];
        v358 = vshlq_u64(v357, xmmword_18439CB70);
        v359 = bswap32(*v30) >> 16;
        CMYK64_DAMplusDAM(v35, v30, vorrq_s8(v358, vdupq_laneq_s64(v358, 1)).u64[0] | ((WORD1(v350) - ((WORD1(v350) * v351 + ((WORD1(v350) * v351) >> 16) + 1) >> 16)) << 16) | (v350 - ((v350 * v351 + ((v350 * v351) >> 16) + 1) >> 16)), (v349 - HIWORD(v352)), v359, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v359, ~(v349 - HIWORD(v352)));
        goto LABEL_353;
      case 6:
        v394 = (v60 + 8);
        v395 = v46;
        v179 = v44;
        v396 = v699;
        while (1)
        {
          v397 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_394;
            }

            v398 = *v179 * v397 + ((*v179 * v397) >> 8) + 1;
            if (v398 >= 0x100)
            {
              break;
            }
          }

LABEL_398:
          ++v61;
          v179 += v44 != 0;
          ++v35;
          v394 += 8;
          v30 = (v396 + v30);
          if (!--v395)
          {
            goto LABEL_424;
          }
        }

        v397 = v398 >> 8;
LABEL_394:
        v399 = bswap32(*v30);
        if (HIWORD(v399) != 0xFFFF)
        {
          if (~HIWORD(v399) == 0xFFFF)
          {
            CMYK64_DAM(v35, v30, *(v394 - 1), *v394, v397 | (v397 << 8));
          }

          else
          {
            CMYK64_DAplusDAM(v35, v30, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), HIWORD(v399), *(v394 - 1), *v394, (257 * v397 * ~HIWORD(v399) + ((257 * v397 * ~HIWORD(v399)) >> 16) + 1) >> 16);
          }
        }

        goto LABEL_398;
      case 7:
        v293 = v44 != 0;
        if (v700)
        {
          v294 = (v60 + 8);
          v295 = v698;
          v113 = v44;
          do
          {
            v296 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v296 = ((*v113 * v296 + ((*v113 * v296) >> 8) + 1) >> 8);
              }

              if (v296)
              {
                if (v296 == 255)
                {
                  CMYK64_DAM(v35, v30, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(*v30) >> 16, *v294);
                }

                else
                {
                  v297 = ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16);
                  v298 = bswap32(*v30) >> 16;
                  CMYK64_DAMplusDAM(v35, v30, v297, v298, (*v294 * (v296 | (v296 << 8)) + ((*v294 * (v296 | (v296 << 8))) >> 16) + 1) >> 16, v297, v298, (v296 | (v296 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v61;
            v113 += v293;
            ++v35;
            ++v30;
            v294 += 8;
            --v295;
          }

          while (v295);
          goto LABEL_518;
        }

        v558 = (v60 + 8);
        v529 = v697;
        v559 = v698;
        v560 = v44;
        do
        {
          v561 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v561 = ((*v560 * v561 + ((*v560 * v561) >> 8) + 1) >> 8);
            }

            if (v561)
            {
              if (v561 == 255)
              {
                v562 = bswap32(v35->u16[1] | (v35->u16[0] << 16));
                v563.i32[0] = v562;
                v563.i32[1] = vshr_n_u32(vdup_n_s32(v562), 0x10uLL).i32[1];
                v563.i64[1] = __PAIR64__(bswap32(v35->u16[3]) >> 16, bswap32(v35->u16[2]) >> 16);
                v564 = vmulq_s32(v563, vmovl_u16(vdup_n_s16(~*v558)));
                v565.i64[0] = 0x100000001;
                v565.i64[1] = 0x100000001;
                v563.i32[0] = v562;
                v566 = vsubq_s32(v563, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v564, v564, 0x10uLL), v565), 0x10uLL));
              }

              else
              {
                v567 = v561 | (v561 << 8);
                v568 = bswap32(v35->u16[1] | (v35->u16[0] << 16));
                v569.i32[0] = (*v558 * v567 + ((*v558 * v567) >> 16) + 1) >> 16;
                v569.i32[1] = ~v567;
                *v570.i8 = vand_s8(v569, 0xFFFF0000FFFFLL);
                v571.i64[0] = v570.i64[0];
                v571.i64[1] = v570.i64[0];
                v572.i32[0] = v568;
                v572.i32[1] = HIWORD(v568);
                v572.i32[2] = bswap32(v35->u16[2]) >> 16;
                v572.i32[3] = bswap32(v35->u16[3]) >> 16;
                v570.i64[1] = v570.i64[0];
                v573 = vmulq_s32(v572, vaddq_s32(v571, vrev64q_s32(v570)));
                v566 = vshrq_n_u32(vsubq_s32(vshrq_n_u32(v573, 0x10uLL), vmvnq_s8(v573)), 0x10uLL);
              }

              *v35 = vrev16_s8(vmovn_s32(v566));
            }
          }

          ++v61;
          v560 += v293;
          ++v35;
          v558 += 8;
          --v559;
        }

        while (v559);
        goto LABEL_584;
      case 8:
        v433 = v44 != 0;
        if (v700)
        {
          v434 = (v60 + 8);
          v435 = v698;
          v113 = v44;
          do
          {
            v436 = *v61;
            if (*v61)
            {
              if (v44)
              {
                v436 = ((*v113 * v436 + ((*v113 * v436) >> 8) + 1) >> 8);
              }

              if (v436)
              {
                if (v436 == 255)
                {
                  CMYK64_DAM(v35, v30, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(*v30) >> 16, *v434 ^ 0xFFFF);
                }

                else
                {
                  v437 = ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16);
                  v438 = bswap32(*v30) >> 16;
                  CMYK64_DAMplusDAM(v35, v30, v437, v438, ((*v434 ^ 0xFFFF) * (v436 | (v436 << 8)) + (((*v434 ^ 0xFFFF) * (v436 | (v436 << 8))) >> 16) + 1) >> 16, v437, v438, (v436 | (v436 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v61;
            v113 += v433;
            ++v35;
            ++v30;
            v434 += 8;
            --v435;
          }

          while (v435);
          goto LABEL_518;
        }

        v596 = (v60 + 8);
        v529 = v697;
        v597 = v698;
        v560 = v44;
        do
        {
          v598 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v598 = ((*v560 * v598 + ((*v560 * v598) >> 8) + 1) >> 8);
            }

            if (v598)
            {
              if (v598 == 255)
              {
                v599 = bswap32(v35->u16[1] | (v35->u16[0] << 16));
                v600.i32[0] = v599;
                v600.i32[1] = vshr_n_u32(vdup_n_s32(v599), 0x10uLL).i32[1];
                v600.i64[1] = __PAIR64__(bswap32(v35->u16[3]) >> 16, bswap32(v35->u16[2]) >> 16);
                v601 = vld1_dup_s16(v596);
                v602 = vmulq_s32(v600, vmovl_u16(v601));
                v603.i64[0] = 0x100000001;
                v603.i64[1] = 0x100000001;
                v600.i32[0] = v599;
                v604 = vsubq_s32(v600, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v602, v602, 0x10uLL), v603), 0x10uLL));
              }

              else
              {
                v605 = v598 | (v598 << 8);
                v606 = bswap32(v35->u16[1] | (v35->u16[0] << 16));
                v607.i32[0] = ((*v596 ^ 0xFFFF) * v605 + (((*v596 ^ 0xFFFFu) * v605) >> 16) + 1) >> 16;
                v607.i32[1] = ~v605;
                *v608.i8 = vand_s8(v607, 0xFFFF0000FFFFLL);
                v609.i64[0] = v608.i64[0];
                v609.i64[1] = v608.i64[0];
                v610.i32[0] = v606;
                v610.i32[1] = HIWORD(v606);
                v610.i32[2] = bswap32(v35->u16[2]) >> 16;
                v610.i32[3] = bswap32(v35->u16[3]) >> 16;
                v608.i64[1] = v608.i64[0];
                v611 = vmulq_s32(v610, vaddq_s32(v609, vrev64q_s32(v608)));
                v604 = vshrq_n_u32(vsubq_s32(vshrq_n_u32(v611, 0x10uLL), vmvnq_s8(v611)), 0x10uLL);
              }

              *v35 = vrev16_s8(vmovn_s32(v604));
            }
          }

          ++v61;
          v560 += v433;
          ++v35;
          v596 += 8;
          --v597;
        }

        while (v597);
LABEL_584:
        v44 = &v560[v687];
        v35 += v688;
        v30 += v689;
        v46 = v698;
        v40 = v695;
        goto LABEL_599;
      case 9:
        v198 = (v60 + 8);
        v199 = v46;
        v179 = v44;
        v200 = v699;
        while (1)
        {
          v201 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_213;
            }

            v202 = *v179 * v201 + ((*v179 * v201) >> 8) + 1;
            if (v202 >= 0x100)
            {
              break;
            }
          }

LABEL_214:
          ++v61;
          v179 += v44 != 0;
          ++v35;
          v198 += 8;
          v30 = (v200 + v30);
          if (!--v199)
          {
            goto LABEL_424;
          }
        }

        v201 = v202 >> 8;
LABEL_213:
        v203 = bswap32(*v30) >> 16;
        v204 = *(v198 - 1);
        v205 = ~(v201 | (v201 << 8));
        v206 = vmovn_s64(vshlq_u64(vdupq_n_s64(v204), xmmword_18439CB80));
        v207.i32[1] = v206.i32[1];
        v207.i32[0] = v206.u16[0];
        v208 = vmul_s32(v207, vdup_n_s32(v205));
        v209 = vand_s8(vsub_s32(v206, vshr_n_u32(vadd_s32(vsra_n_u32(v208, v208, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v210.i64[0] = v209.u32[0];
        v210.i64[1] = v209.u32[1];
        v211 = vshlq_u64(v210, xmmword_18439CB70);
        v212 = *v198 - ((*v198 * v205 + ((*v198 * v205) >> 16) + 1) >> 16);
        CMYK64_DAMplusDAM(v35, v30, vorrq_s8(v211, vdupq_laneq_s64(v211, 1)).u64[0] | ((WORD1(v204) - ((WORD1(v204) * v205 + ((WORD1(v204) * v205) >> 16) + 1) >> 16)) << 16) | (v204 - ((v204 * v205 + ((v204 * v205) >> 16) + 1) >> 16)), v212, v203 ^ 0xFFFF, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v203, (v212 + v205));
        goto LABEL_214;
      case 10:
        v417 = (v60 + 8);
        v418 = v46;
        v179 = v44;
        v419 = v699;
        while (1)
        {
          v420 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_422;
            }

            v421 = *v179 * v420 + ((*v179 * v420) >> 8) + 1;
            if (v421 >= 0x100)
            {
              break;
            }
          }

LABEL_423:
          ++v61;
          v179 += v44 != 0;
          ++v35;
          v417 += 8;
          v30 = (v419 + v30);
          if (!--v418)
          {
LABEL_424:
            v44 = &v179[v687];
            goto LABEL_519;
          }
        }

        v420 = v421 >> 8;
LABEL_422:
        v422 = bswap32(*v30) >> 16;
        v423 = *v417;
        v424 = *(v417 - 1);
        v425 = (v420 | (v420 << 8)) ^ 0xFFFF;
        v426 = v425 * v423 + ((v425 * v423) >> 16) + 1;
        v427 = vmovn_s64(vshlq_u64(vdupq_n_s64(v424), xmmword_18439CB80));
        v428.i32[1] = v427.i32[1];
        v428.i32[0] = v427.u16[0];
        v429 = vmul_s32(vdup_n_s32(v425), v428);
        v430 = vand_s8(vsub_s32(v427, vshr_n_u32(vadd_s32(vsra_n_u32(v429, v429, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v431.i64[0] = v430.u32[0];
        v431.i64[1] = v430.u32[1];
        v432 = vshlq_u64(v431, xmmword_18439CB70);
        CMYK64_DAMplusDAM(v35, v30, vorrq_s8(v432, vdupq_laneq_s64(v432, 1)).u64[0] | ((WORD1(v424) - ((WORD1(v424) * v425 + ((WORD1(v424) * v425) >> 16) + 1) >> 16)) << 16) | (v424 - ((v424 * v425 + ((v424 * v425) >> 16) + 1) >> 16)), (v423 - HIWORD(v426)), v422 ^ 0xFFFF, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v422, ~(v423 - HIWORD(v426)));
        goto LABEL_423;
      case 11:
        v163 = v44 != 0;
        if (v700)
        {
          v164 = (v60 + 8);
          v165 = v698;
          v113 = v44;
          while (1)
          {
            v166 = *v61;
            if (*v61)
            {
              if (!v44)
              {
                goto LABEL_186;
              }

              v167 = *v113 * v166 + ((*v113 * v166) >> 8) + 1;
              if (v167 >= 0x100)
              {
                break;
              }
            }

LABEL_187:
            ++v61;
            v113 += v163;
            ++v35;
            ++v30;
            v164 += 8;
            if (!--v165)
            {
              goto LABEL_518;
            }
          }

          v166 = v167 >> 8;
LABEL_186:
          v168 = *(v164 - 1);
          v169 = (v166 | (v166 << 8)) ^ 0xFFFF;
          v170 = v168 * v169;
          v171 = vmovn_s64(vshlq_u64(vdupq_n_s64(v168), xmmword_18439CB80));
          v172.i32[1] = v171.i32[1];
          v172.i32[0] = v171.u16[0];
          v173 = vmul_s32(vdup_n_s32(v169), v172);
          v174 = vand_s8(vsub_s32(v171, vshr_n_u32(vadd_s32(vsra_n_u32(v173, v173, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v175.i64[0] = v174.u32[0];
          v175.i64[1] = v174.u32[1];
          v176 = vshlq_u64(v175, xmmword_18439CB70);
          CMYK64_DAplusdDA(v35, v30, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(*v30) >> 16, vorrq_s8(v176, vdupq_laneq_s64(v176, 1)).u64[0] | ((WORD1(v168) - ((WORD1(v168) * v169 + ((WORD1(v168) * v169) >> 16) + 1) >> 16)) << 16) | (v168 - ((v170 + HIWORD(v170) + 1) >> 16)), (*v164 - ((v169 * *v164 + ((v169 * *v164) >> 16) + 1) >> 16)));
          goto LABEL_187;
        }

        v506 = (v60 + 8);
        v507 = v698;
        v113 = v44;
        while (1)
        {
          v508 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_508;
            }

            v509 = *v113 * v508 + ((*v113 * v508) >> 8) + 1;
            if (v509 >= 0x100)
            {
              break;
            }
          }

LABEL_509:
          ++v61;
          v113 += v163;
          ++v35;
          v506 += 8;
          if (!--v507)
          {
            goto LABEL_518;
          }
        }

        v508 = v509 >> 8;
LABEL_508:
        v510 = *(v506 - 1);
        v511 = (v508 | (v508 << 8)) ^ 0xFFFF;
        v512 = v510 * v511;
        v513 = vmovn_s64(vshlq_u64(vdupq_n_s64(v510), xmmword_18439CB80));
        v514.i32[1] = v513.i32[1];
        v514.i32[0] = v513.u16[0];
        v515 = vmul_s32(vdup_n_s32(v511), v514);
        v516 = vand_s8(vsub_s32(v513, vshr_n_u32(vadd_s32(vsra_n_u32(v515, v515, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v517.i64[0] = v516.u32[0];
        v517.i64[1] = v516.u32[1];
        v518 = vshlq_u64(v517, xmmword_18439CB70);
        CMYK64_DplusdDA(v35, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), vorrq_s8(v518, vdupq_laneq_s64(v518, 1)).u64[0] | ((WORD1(v510) - ((WORD1(v510) * v511 + ((WORD1(v510) * v511) >> 16) + 1) >> 16)) << 16) | (v510 - ((v512 + HIWORD(v512) + 1) >> 16)), (*v506 - ((v511 * *v506 + ((v511 * *v506) >> 16) + 1) >> 16)));
        goto LABEL_509;
      case 12:
        v184 = v44 != 0;
        if (v700)
        {
          v185 = (v60 + 8);
          v186 = v698;
          v113 = v44;
          while (1)
          {
            v187 = *v61;
            if (*v61)
            {
              if (!v44)
              {
                goto LABEL_205;
              }

              v188 = *v113 * v187 + ((*v113 * v187) >> 8) + 1;
              if (v188 >= 0x100)
              {
                break;
              }
            }

LABEL_206:
            ++v61;
            v113 += v184;
            ++v35;
            ++v30;
            v185 += 8;
            if (!--v186)
            {
              goto LABEL_518;
            }
          }

          v187 = v188 >> 8;
LABEL_205:
          v189 = *(v185 - 1);
          v190 = (v187 | (v187 << 8)) ^ 0xFFFF;
          v191 = v189 * v190;
          v192 = vmovn_s64(vshlq_u64(vdupq_n_s64(v189), xmmword_18439CB80));
          v193.i32[1] = v192.i32[1];
          v193.i32[0] = v192.u16[0];
          v194 = vmul_s32(vdup_n_s32(v190), v193);
          v195 = vand_s8(vsub_s32(v192, vshr_n_u32(vadd_s32(vsra_n_u32(v194, v194, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v196.i64[0] = v195.u32[0];
          v196.i64[1] = v195.u32[1];
          v197 = vshlq_u64(v196, xmmword_18439CB70);
          CMYK64_DApluslDA(v35, v30, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), bswap32(*v30) >> 16, vorrq_s8(v197, vdupq_laneq_s64(v197, 1)).u64[0] | ((WORD1(v189) - ((WORD1(v189) * v190 + ((WORD1(v189) * v190) >> 16) + 1) >> 16)) << 16) | (v189 - ((v191 + HIWORD(v191) + 1) >> 16)), (*v185 - ((v190 * *v185 + ((v190 * *v185) >> 16) + 1) >> 16)));
          goto LABEL_206;
        }

        v519 = v698;
        v113 = v44;
        while (1)
        {
          v520 = *v61;
          if (*v61)
          {
            if (!v44)
            {
              goto LABEL_516;
            }

            v521 = *v113 * v520 + ((*v113 * v520) >> 8) + 1;
            if (v521 >= 0x100)
            {
              break;
            }
          }

LABEL_517:
          ++v61;
          v60 += 16;
          v113 += v184;
          ++v35;
          if (!--v519)
          {
            goto LABEL_518;
          }
        }

        v520 = v521 >> 8;
LABEL_516:
        v522 = (v520 | (v520 << 8)) ^ 0xFFFF;
        v523 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v60), xmmword_18439CB80));
        v524.i32[1] = v523.i32[1];
        v524.i32[0] = v523.u16[0];
        v525 = vmul_s32(vdup_n_s32(v522), v524);
        v526 = vand_s8(vsub_s32(v523, vshr_n_u32(vadd_s32(vsra_n_u32(v525, v525, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v527.i64[0] = v526.u32[0];
        v527.i64[1] = v526.u32[1];
        v528 = vshlq_u64(v527, xmmword_18439CB70);
        CMYK64_DpluslD(v35, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), vorrq_s8(v528, vdupq_laneq_s64(v528, 1)).u64[0] | ((WORD1(*v60) - ((WORD1(*v60) * v522 + ((WORD1(*v60) * v522) >> 16) + 1) >> 16)) << 16) | (*v60 - ((*v60 * v522 + ((*v60 * v522) >> 16) + 1) >> 16)));
        goto LABEL_517;
      case 13:
        v377 = (v60 + 8);
        v378 = v46;
        v113 = v44;
        v379 = v699;
        while (1)
        {
          v380 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v381 = *v113 * v380 + ((*v113 * v380) >> 8) + 1;
              if (v381 < 0x100)
              {
                goto LABEL_387;
              }

              v380 = v381 >> 8;
            }

            v382 = *v377;
            v383 = (v380 | (v380 << 8)) ^ 0xFFFF;
            v384 = v382 - ((v383 * v382 + ((v383 * v382) >> 16) + 1) >> 16);
            if (v382 != (v383 * v382 + ((v383 * v382) >> 16) + 1) >> 16)
            {
              v385 = *(v377 - 1);
              v386 = ((HIWORD(v385) - ((v383 * HIWORD(v385) + ((v383 * HIWORD(v385)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v385) - ((WORD2(v385) * v383 + ((WORD2(v385) * v383) >> 16) + 1) >> 16)) << 32) | ((WORD1(v385) - ((WORD1(v385) * v383 + ((WORD1(v385) * v383) >> 16) + 1) >> 16)) << 16) | (v385 - ((v385 * v383 + ((v385 * v383) >> 16) + 1) >> 16));
              LODWORD(v387) = v384;
              if (v700)
              {
                if (*v30)
                {
                  v388 = __rev16(*v30);
                  goto LABEL_382;
                }

LABEL_384:
                v392 = bswap32(v386);
                v35->i16[0] = HIWORD(v392);
                v35->i16[1] = v392;
                v35->i16[2] = bswap32(HIDWORD(v386)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v386));
                v389 = v30;
              }

              else
              {
                v388 = 0xFFFF;
LABEL_382:
                v389 = v35 + 3;
                v390 = PDAmultiplyPDA_11872(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v388, v386, v384);
                v386 = v390;
                if (v700)
                {
                  LODWORD(v387) = v391;
                  goto LABEL_384;
                }

                v387 = HIWORD(v390);
                v393 = bswap32(v390);
                v35->i16[0] = HIWORD(v393);
                v35->i16[1] = v393;
                v35->i16[2] = bswap32(HIDWORD(v390)) >> 16;
              }

              *v389 = bswap32(v387) >> 16;
              v379 = v699;
            }
          }

LABEL_387:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v377 += 8;
          v30 = (v379 + v30);
          if (!--v378)
          {
            goto LABEL_518;
          }
        }

      case 14:
        v146 = (v60 + 8);
        v147 = v46;
        v113 = v44;
        v148 = v699;
        while (1)
        {
          v149 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v150 = *v113 * v149 + ((*v113 * v149) >> 8) + 1;
              if (v150 < 0x100)
              {
                goto LABEL_178;
              }

              v149 = v150 >> 8;
            }

            v151 = *v146;
            v152 = (v149 | (v149 << 8)) ^ 0xFFFF;
            v153 = v151 - ((v152 * v151 + ((v152 * v151) >> 16) + 1) >> 16);
            if (v151 != (v152 * v151 + ((v152 * v151) >> 16) + 1) >> 16)
            {
              v154 = *(v146 - 1);
              v155 = ((HIWORD(v154) - ((v152 * HIWORD(v154) + ((v152 * HIWORD(v154)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v154) - ((WORD2(v154) * v152 + ((WORD2(v154) * v152) >> 16) + 1) >> 16)) << 32) | ((WORD1(v154) - ((WORD1(v154) * v152 + ((WORD1(v154) * v152) >> 16) + 1) >> 16)) << 16) | (v154 - ((v154 * v152 + ((v154 * v152) >> 16) + 1) >> 16));
              LODWORD(v156) = v153;
              if (v700)
              {
                if (*v30)
                {
                  v157 = __rev16(*v30);
                  goto LABEL_173;
                }

LABEL_175:
                v161 = bswap32(v155);
                v35->i16[0] = HIWORD(v161);
                v35->i16[1] = v161;
                v35->i16[2] = bswap32(HIDWORD(v155)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v155));
                v158 = v30;
              }

              else
              {
                v157 = 0xFFFF;
LABEL_173:
                v158 = v35 + 3;
                v159 = PDAscreenPDA_11873(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v157, v155, v153);
                v155 = v159;
                if (v700)
                {
                  LODWORD(v156) = v160;
                  goto LABEL_175;
                }

                v156 = HIWORD(v159);
                v162 = bswap32(v159);
                v35->i16[0] = HIWORD(v162);
                v35->i16[1] = v162;
                v35->i16[2] = bswap32(HIDWORD(v159)) >> 16;
              }

              *v158 = bswap32(v156) >> 16;
              v148 = v699;
            }
          }

LABEL_178:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v146 += 8;
          v30 = (v148 + v30);
          if (!--v147)
          {
            goto LABEL_518;
          }
        }

      case 15:
        v270 = (v60 + 8);
        v271 = v46;
        v113 = v44;
        v272 = v699;
        while (1)
        {
          v273 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v274 = *v113 * v273 + ((*v113 * v273) >> 8) + 1;
              if (v274 < 0x100)
              {
                goto LABEL_280;
              }

              v273 = v274 >> 8;
            }

            v275 = *v270;
            v276 = (v273 | (v273 << 8)) ^ 0xFFFF;
            v277 = v275 - ((v276 * v275 + ((v276 * v275) >> 16) + 1) >> 16);
            if (v275 != (v276 * v275 + ((v276 * v275) >> 16) + 1) >> 16)
            {
              v278 = *(v270 - 1);
              v279 = ((HIWORD(v278) - ((v276 * HIWORD(v278) + ((v276 * HIWORD(v278)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v278) - ((WORD2(v278) * v276 + ((WORD2(v278) * v276) >> 16) + 1) >> 16)) << 32) | ((WORD1(v278) - ((WORD1(v278) * v276 + ((WORD1(v278) * v276) >> 16) + 1) >> 16)) << 16) | (v278 - ((v278 * v276 + ((v278 * v276) >> 16) + 1) >> 16));
              LODWORD(v280) = v277;
              if (v700)
              {
                if (*v30)
                {
                  v281 = __rev16(*v30);
                  goto LABEL_275;
                }

LABEL_277:
                v285 = bswap32(v279);
                v35->i16[0] = HIWORD(v285);
                v35->i16[1] = v285;
                v35->i16[2] = bswap32(HIDWORD(v279)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v279));
                v282 = v30;
              }

              else
              {
                v281 = 0xFFFF;
LABEL_275:
                v282 = v35 + 3;
                v283 = PDAoverlayPDA_11874(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v281, v279, v277);
                v279 = v283;
                if (v700)
                {
                  LODWORD(v280) = v284;
                  goto LABEL_277;
                }

                v280 = HIWORD(v283);
                v286 = bswap32(v283);
                v35->i16[0] = HIWORD(v286);
                v35->i16[1] = v286;
                v35->i16[2] = bswap32(HIDWORD(v283)) >> 16;
              }

              *v282 = bswap32(v280) >> 16;
              v272 = v699;
            }
          }

LABEL_280:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v270 += 8;
          v30 = (v272 + v30);
          if (!--v271)
          {
            goto LABEL_518;
          }
        }

      case 16:
        v129 = (v60 + 8);
        v130 = v46;
        v113 = v44;
        v131 = v699;
        while (1)
        {
          v132 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v133 = *v113 * v132 + ((*v113 * v132) >> 8) + 1;
              if (v133 < 0x100)
              {
                goto LABEL_161;
              }

              v132 = v133 >> 8;
            }

            v134 = *v129;
            v135 = (v132 | (v132 << 8)) ^ 0xFFFF;
            v136 = v134 - ((v135 * v134 + ((v135 * v134) >> 16) + 1) >> 16);
            if (v134 != (v135 * v134 + ((v135 * v134) >> 16) + 1) >> 16)
            {
              v137 = *(v129 - 1);
              v138 = ((HIWORD(v137) - ((v135 * HIWORD(v137) + ((v135 * HIWORD(v137)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v137) - ((WORD2(v137) * v135 + ((WORD2(v137) * v135) >> 16) + 1) >> 16)) << 32) | ((WORD1(v137) - ((WORD1(v137) * v135 + ((WORD1(v137) * v135) >> 16) + 1) >> 16)) << 16) | (v137 - ((v137 * v135 + ((v137 * v135) >> 16) + 1) >> 16));
              LODWORD(v139) = v136;
              if (v700)
              {
                if (*v30)
                {
                  v140 = __rev16(*v30);
                  goto LABEL_156;
                }

LABEL_158:
                v144 = bswap32(v138);
                v35->i16[0] = HIWORD(v144);
                v35->i16[1] = v144;
                v35->i16[2] = bswap32(HIDWORD(v138)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v138));
                v141 = v30;
              }

              else
              {
                v140 = 0xFFFF;
LABEL_156:
                v141 = v35 + 3;
                v142 = PDAdarkenPDA_11876(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v140, v138, v136);
                v138 = v142;
                if (v700)
                {
                  LODWORD(v139) = v143;
                  goto LABEL_158;
                }

                v139 = HIWORD(v142);
                v145 = bswap32(v142);
                v35->i16[0] = HIWORD(v145);
                v35->i16[1] = v145;
                v35->i16[2] = bswap32(HIDWORD(v142)) >> 16;
              }

              *v141 = bswap32(v139) >> 16;
              v131 = v699;
            }
          }

LABEL_161:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v129 += 8;
          v30 = (v131 + v30);
          if (!--v130)
          {
            goto LABEL_518;
          }
        }

      case 17:
        v310 = (v60 + 8);
        v311 = v46;
        v113 = v44;
        v312 = v699;
        while (1)
        {
          v313 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v314 = *v113 * v313 + ((*v113 * v313) >> 8) + 1;
              if (v314 < 0x100)
              {
                goto LABEL_328;
              }

              v313 = v314 >> 8;
            }

            v315 = *v310;
            v316 = (v313 | (v313 << 8)) ^ 0xFFFF;
            v317 = v315 - ((v316 * v315 + ((v316 * v315) >> 16) + 1) >> 16);
            if (v315 != (v316 * v315 + ((v316 * v315) >> 16) + 1) >> 16)
            {
              v318 = *(v310 - 1);
              v319 = ((HIWORD(v318) - ((v316 * HIWORD(v318) + ((v316 * HIWORD(v318)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v318) - ((WORD2(v318) * v316 + ((WORD2(v318) * v316) >> 16) + 1) >> 16)) << 32) | ((WORD1(v318) - ((WORD1(v318) * v316 + ((WORD1(v318) * v316) >> 16) + 1) >> 16)) << 16) | (v318 - ((v318 * v316 + ((v318 * v316) >> 16) + 1) >> 16));
              LODWORD(v320) = v317;
              if (v700)
              {
                if (*v30)
                {
                  v321 = __rev16(*v30);
                  goto LABEL_323;
                }

LABEL_325:
                v325 = bswap32(v319);
                v35->i16[0] = HIWORD(v325);
                v35->i16[1] = v325;
                v35->i16[2] = bswap32(HIDWORD(v319)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v319));
                v322 = v30;
              }

              else
              {
                v321 = 0xFFFF;
LABEL_323:
                v322 = v35 + 3;
                v323 = PDAlightenPDA_11875(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v321, v319, v317);
                v319 = v323;
                if (v700)
                {
                  LODWORD(v320) = v324;
                  goto LABEL_325;
                }

                v320 = HIWORD(v323);
                v326 = bswap32(v323);
                v35->i16[0] = HIWORD(v326);
                v35->i16[1] = v326;
                v35->i16[2] = bswap32(HIDWORD(v323)) >> 16;
              }

              *v322 = bswap32(v320) >> 16;
              v312 = v699;
            }
          }

LABEL_328:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v310 += 8;
          v30 = (v312 + v30);
          if (!--v311)
          {
            goto LABEL_518;
          }
        }

      case 18:
        v400 = (v60 + 8);
        v401 = v46;
        v113 = v44;
        v402 = v699;
        while (1)
        {
          v403 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v404 = *v113 * v403 + ((*v113 * v403) >> 8) + 1;
              if (v404 < 0x100)
              {
                goto LABEL_415;
              }

              v403 = v404 >> 8;
            }

            v405 = *v400;
            v406 = (v403 | (v403 << 8)) ^ 0xFFFF;
            v407 = v405 - ((v406 * v405 + ((v406 * v405) >> 16) + 1) >> 16);
            if (v405 != (v406 * v405 + ((v406 * v405) >> 16) + 1) >> 16)
            {
              v408 = *(v400 - 1);
              v409 = ((HIWORD(v408) - ((v406 * HIWORD(v408) + ((v406 * HIWORD(v408)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v408) - ((WORD2(v408) * v406 + ((WORD2(v408) * v406) >> 16) + 1) >> 16)) << 32) | ((WORD1(v408) - ((WORD1(v408) * v406 + ((WORD1(v408) * v406) >> 16) + 1) >> 16)) << 16) | (v408 - ((v408 * v406 + ((v408 * v406) >> 16) + 1) >> 16));
              LODWORD(v410) = v407;
              if (v700)
              {
                if (*v30)
                {
                  v411 = __rev16(*v30);
                  goto LABEL_410;
                }

LABEL_412:
                v415 = bswap32(v409);
                v35->i16[0] = HIWORD(v415);
                v35->i16[1] = v415;
                v35->i16[2] = bswap32(HIDWORD(v409)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v409));
                v412 = v30;
              }

              else
              {
                v411 = 0xFFFF;
LABEL_410:
                v412 = v35 + 3;
                v413 = PDAcolordodgePDA_11877(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v411, v409, v407);
                v409 = v413;
                if (v700)
                {
                  LODWORD(v410) = v414;
                  goto LABEL_412;
                }

                v410 = HIWORD(v413);
                v416 = bswap32(v413);
                v35->i16[0] = HIWORD(v416);
                v35->i16[1] = v416;
                v35->i16[2] = bswap32(HIDWORD(v413)) >> 16;
              }

              *v412 = bswap32(v410) >> 16;
              v402 = v699;
            }
          }

LABEL_415:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v400 += 8;
          v30 = (v402 + v30);
          if (!--v401)
          {
            goto LABEL_518;
          }
        }

      case 19:
        v456 = (v60 + 8);
        v457 = v46;
        v113 = v44;
        v458 = v699;
        while (1)
        {
          v459 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v460 = *v113 * v459 + ((*v113 * v459) >> 8) + 1;
              if (v460 < 0x100)
              {
                goto LABEL_468;
              }

              v459 = v460 >> 8;
            }

            v461 = *v456;
            v462 = (v459 | (v459 << 8)) ^ 0xFFFF;
            v463 = v461 - ((v462 * v461 + ((v462 * v461) >> 16) + 1) >> 16);
            if (v461 != (v462 * v461 + ((v462 * v461) >> 16) + 1) >> 16)
            {
              v464 = *(v456 - 1);
              v465 = ((HIWORD(v464) - ((v462 * HIWORD(v464) + ((v462 * HIWORD(v464)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v464) - ((WORD2(v464) * v462 + ((WORD2(v464) * v462) >> 16) + 1) >> 16)) << 32) | ((WORD1(v464) - ((WORD1(v464) * v462 + ((WORD1(v464) * v462) >> 16) + 1) >> 16)) << 16) | (v464 - ((v464 * v462 + ((v464 * v462) >> 16) + 1) >> 16));
              LODWORD(v466) = v463;
              if (v700)
              {
                if (*v30)
                {
                  v467 = __rev16(*v30);
                  goto LABEL_463;
                }

LABEL_465:
                v471 = bswap32(v465);
                v35->i16[0] = HIWORD(v471);
                v35->i16[1] = v471;
                v35->i16[2] = bswap32(HIDWORD(v465)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v465));
                v468 = v30;
              }

              else
              {
                v467 = 0xFFFF;
LABEL_463:
                v468 = v35 + 3;
                v469 = PDAcolorburnPDA_11878(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v467, v465, v463);
                v465 = v469;
                if (v700)
                {
                  LODWORD(v466) = v470;
                  goto LABEL_465;
                }

                v466 = HIWORD(v469);
                v472 = bswap32(v469);
                v35->i16[0] = HIWORD(v472);
                v35->i16[1] = v472;
                v35->i16[2] = bswap32(HIDWORD(v469)) >> 16;
              }

              *v468 = bswap32(v466) >> 16;
              v458 = v699;
            }
          }

LABEL_468:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v456 += 8;
          v30 = (v458 + v30);
          if (!--v457)
          {
            goto LABEL_518;
          }
        }

      case 20:
        v327 = (v60 + 8);
        v328 = v46;
        v113 = v44;
        v329 = v699;
        while (1)
        {
          v330 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v331 = *v113 * v330 + ((*v113 * v330) >> 8) + 1;
              if (v331 < 0x100)
              {
                goto LABEL_345;
              }

              v330 = v331 >> 8;
            }

            v332 = *v327;
            v333 = (v330 | (v330 << 8)) ^ 0xFFFF;
            v334 = v332 - ((v333 * v332 + ((v333 * v332) >> 16) + 1) >> 16);
            if (v332 != (v333 * v332 + ((v333 * v332) >> 16) + 1) >> 16)
            {
              v335 = *(v327 - 1);
              v336 = ((HIWORD(v335) - ((v333 * HIWORD(v335) + ((v333 * HIWORD(v335)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v335) - ((WORD2(v335) * v333 + ((WORD2(v335) * v333) >> 16) + 1) >> 16)) << 32) | ((WORD1(v335) - ((WORD1(v335) * v333 + ((WORD1(v335) * v333) >> 16) + 1) >> 16)) << 16) | (v335 - ((v335 * v333 + ((v335 * v333) >> 16) + 1) >> 16));
              LODWORD(v337) = v334;
              if (v700)
              {
                if (*v30)
                {
                  v338 = __rev16(*v30);
                  goto LABEL_340;
                }

LABEL_342:
                v342 = bswap32(v336);
                v35->i16[0] = HIWORD(v342);
                v35->i16[1] = v342;
                v35->i16[2] = bswap32(HIDWORD(v336)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v336));
                v339 = v30;
              }

              else
              {
                v338 = 0xFFFF;
LABEL_340:
                v339 = v35 + 3;
                v340 = PDAsoftlightPDA_11880(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v338, v336, v334);
                v336 = v340;
                if (v700)
                {
                  LODWORD(v337) = v341;
                  goto LABEL_342;
                }

                v337 = HIWORD(v340);
                v343 = bswap32(v340);
                v35->i16[0] = HIWORD(v343);
                v35->i16[1] = v343;
                v35->i16[2] = bswap32(HIDWORD(v340)) >> 16;
              }

              *v339 = bswap32(v337) >> 16;
              v329 = v699;
            }
          }

LABEL_345:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v327 += 8;
          v30 = (v329 + v30);
          if (!--v328)
          {
            goto LABEL_518;
          }
        }

      case 21:
        v360 = (v60 + 8);
        v361 = v46;
        v113 = v44;
        v362 = v699;
        while (1)
        {
          v363 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v364 = *v113 * v363 + ((*v113 * v363) >> 8) + 1;
              if (v364 < 0x100)
              {
                goto LABEL_370;
              }

              v363 = v364 >> 8;
            }

            v365 = *v360;
            v366 = (v363 | (v363 << 8)) ^ 0xFFFF;
            v367 = v365 - ((v366 * v365 + ((v366 * v365) >> 16) + 1) >> 16);
            if (v365 != (v366 * v365 + ((v366 * v365) >> 16) + 1) >> 16)
            {
              v368 = *(v360 - 1);
              v369 = ((HIWORD(v368) - ((v366 * HIWORD(v368) + ((v366 * HIWORD(v368)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v368) - ((WORD2(v368) * v366 + ((WORD2(v368) * v366) >> 16) + 1) >> 16)) << 32) | ((WORD1(v368) - ((WORD1(v368) * v366 + ((WORD1(v368) * v366) >> 16) + 1) >> 16)) << 16) | (v368 - ((v368 * v366 + ((v368 * v366) >> 16) + 1) >> 16));
              LODWORD(v370) = v367;
              if (v700)
              {
                if (*v30)
                {
                  v371 = __rev16(*v30);
                  goto LABEL_365;
                }

LABEL_367:
                v375 = bswap32(v369);
                v35->i16[0] = HIWORD(v375);
                v35->i16[1] = v375;
                v35->i16[2] = bswap32(HIDWORD(v369)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v369));
                v372 = v30;
              }

              else
              {
                v371 = 0xFFFF;
LABEL_365:
                v372 = v35 + 3;
                v373 = PDAhardlightPDA_11879(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v371, v369, v367);
                v369 = v373;
                if (v700)
                {
                  LODWORD(v370) = v374;
                  goto LABEL_367;
                }

                v370 = HIWORD(v373);
                v376 = bswap32(v373);
                v35->i16[0] = HIWORD(v376);
                v35->i16[1] = v376;
                v35->i16[2] = bswap32(HIDWORD(v373)) >> 16;
              }

              *v372 = bswap32(v370) >> 16;
              v362 = v699;
            }
          }

LABEL_370:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v360 += 8;
          v30 = (v362 + v30);
          if (!--v361)
          {
            goto LABEL_518;
          }
        }

      case 22:
        v439 = (v60 + 8);
        v440 = v46;
        v113 = v44;
        v441 = v699;
        while (1)
        {
          v442 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v443 = *v113 * v442 + ((*v113 * v442) >> 8) + 1;
              if (v443 < 0x100)
              {
                goto LABEL_451;
              }

              v442 = v443 >> 8;
            }

            v444 = *v439;
            v445 = (v442 | (v442 << 8)) ^ 0xFFFF;
            v446 = v444 - ((v445 * v444 + ((v445 * v444) >> 16) + 1) >> 16);
            if (v444 != (v445 * v444 + ((v445 * v444) >> 16) + 1) >> 16)
            {
              v447 = *(v439 - 1);
              v448 = ((HIWORD(v447) - ((v445 * HIWORD(v447) + ((v445 * HIWORD(v447)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v447) - ((WORD2(v447) * v445 + ((WORD2(v447) * v445) >> 16) + 1) >> 16)) << 32) | ((WORD1(v447) - ((WORD1(v447) * v445 + ((WORD1(v447) * v445) >> 16) + 1) >> 16)) << 16) | (v447 - ((v447 * v445 + ((v447 * v445) >> 16) + 1) >> 16));
              LODWORD(v449) = v446;
              if (v700)
              {
                if (*v30)
                {
                  v450 = __rev16(*v30);
                  goto LABEL_446;
                }

LABEL_448:
                v454 = bswap32(v448);
                v35->i16[0] = HIWORD(v454);
                v35->i16[1] = v454;
                v35->i16[2] = bswap32(HIDWORD(v448)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v448));
                v451 = v30;
              }

              else
              {
                v450 = 0xFFFF;
LABEL_446:
                v451 = v35 + 3;
                v452 = PDAdifferencePDA_11881(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v450, v448, v446);
                v448 = v452;
                if (v700)
                {
                  LODWORD(v449) = v453;
                  goto LABEL_448;
                }

                v449 = HIWORD(v452);
                v455 = bswap32(v452);
                v35->i16[0] = HIWORD(v455);
                v35->i16[1] = v455;
                v35->i16[2] = bswap32(HIDWORD(v452)) >> 16;
              }

              *v451 = bswap32(v449) >> 16;
              v441 = v699;
            }
          }

LABEL_451:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v439 += 8;
          v30 = (v441 + v30);
          if (!--v440)
          {
            goto LABEL_518;
          }
        }

      case 23:
        v473 = (v60 + 8);
        v474 = v46;
        v113 = v44;
        v475 = v699;
        while (1)
        {
          v476 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v477 = *v113 * v476 + ((*v113 * v476) >> 8) + 1;
              if (v477 < 0x100)
              {
                goto LABEL_485;
              }

              v476 = v477 >> 8;
            }

            v478 = *v473;
            v479 = (v476 | (v476 << 8)) ^ 0xFFFF;
            v480 = v478 - ((v479 * v478 + ((v479 * v478) >> 16) + 1) >> 16);
            if (v478 != (v479 * v478 + ((v479 * v478) >> 16) + 1) >> 16)
            {
              v481 = *(v473 - 1);
              v482 = ((HIWORD(v481) - ((v479 * HIWORD(v481) + ((v479 * HIWORD(v481)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v481) - ((WORD2(v481) * v479 + ((WORD2(v481) * v479) >> 16) + 1) >> 16)) << 32) | ((WORD1(v481) - ((WORD1(v481) * v479 + ((WORD1(v481) * v479) >> 16) + 1) >> 16)) << 16) | (v481 - ((v481 * v479 + ((v481 * v479) >> 16) + 1) >> 16));
              LODWORD(v483) = v480;
              if (v700)
              {
                if (*v30)
                {
                  v484 = __rev16(*v30);
                  goto LABEL_480;
                }

LABEL_482:
                v488 = bswap32(v482);
                v35->i16[0] = HIWORD(v488);
                v35->i16[1] = v488;
                v35->i16[2] = bswap32(HIDWORD(v482)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v482));
                v485 = v30;
              }

              else
              {
                v484 = 0xFFFF;
LABEL_480:
                v485 = v35 + 3;
                v486 = PDAexclusionPDA_11882(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v484, v482, v480);
                v482 = v486;
                if (v700)
                {
                  LODWORD(v483) = v487;
                  goto LABEL_482;
                }

                v483 = HIWORD(v486);
                v489 = bswap32(v486);
                v35->i16[0] = HIWORD(v489);
                v35->i16[1] = v489;
                v35->i16[2] = bswap32(HIDWORD(v486)) >> 16;
              }

              *v485 = bswap32(v483) >> 16;
              v475 = v699;
            }
          }

LABEL_485:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v473 += 8;
          v30 = (v475 + v30);
          if (!--v474)
          {
            goto LABEL_518;
          }
        }

      case 24:
        v230 = (v60 + 8);
        v231 = v46;
        v113 = v44;
        v232 = v699;
        while (1)
        {
          v233 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v234 = *v113 * v233 + ((*v113 * v233) >> 8) + 1;
              if (v234 < 0x100)
              {
                goto LABEL_248;
              }

              v233 = v234 >> 8;
            }

            v235 = *v230;
            v236 = (v233 | (v233 << 8)) ^ 0xFFFF;
            v237 = v235 - ((v236 * v235 + ((v236 * v235) >> 16) + 1) >> 16);
            if (v235 != (v236 * v235 + ((v236 * v235) >> 16) + 1) >> 16)
            {
              v238 = *(v230 - 1);
              v239 = ((HIWORD(v238) - ((v236 * HIWORD(v238) + ((v236 * HIWORD(v238)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v238) - ((WORD2(v238) * v236 + ((WORD2(v238) * v236) >> 16) + 1) >> 16)) << 32) | ((WORD1(v238) - ((WORD1(v238) * v236 + ((WORD1(v238) * v236) >> 16) + 1) >> 16)) << 16) | (v238 - ((v238 * v236 + ((v238 * v236) >> 16) + 1) >> 16));
              LODWORD(v240) = v237;
              if (v700)
              {
                if (*v30)
                {
                  v241 = __rev16(*v30);
                  goto LABEL_243;
                }

LABEL_245:
                v245 = bswap32(v239);
                v35->i16[0] = HIWORD(v245);
                v35->i16[1] = v245;
                v35->i16[2] = bswap32(HIDWORD(v239)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v239));
                v242 = v30;
              }

              else
              {
                v241 = 0xFFFF;
LABEL_243:
                v242 = v35 + 3;
                v243 = PDAhuePDA_11883(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v241, v239, v237);
                v239 = v243;
                if (v700)
                {
                  LODWORD(v240) = v244;
                  goto LABEL_245;
                }

                v240 = HIWORD(v243);
                v246 = bswap32(v243);
                v35->i16[0] = HIWORD(v246);
                v35->i16[1] = v246;
                v35->i16[2] = bswap32(HIDWORD(v243)) >> 16;
              }

              *v242 = bswap32(v240) >> 16;
              v232 = v699;
            }
          }

LABEL_248:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v230 += 8;
          v30 = (v232 + v30);
          if (!--v231)
          {
            goto LABEL_518;
          }
        }

      case 25:
        v213 = (v60 + 8);
        v214 = v46;
        v113 = v44;
        v215 = v699;
        while (1)
        {
          v216 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v217 = *v113 * v216 + ((*v113 * v216) >> 8) + 1;
              if (v217 < 0x100)
              {
                goto LABEL_231;
              }

              v216 = v217 >> 8;
            }

            v218 = *v213;
            v219 = (v216 | (v216 << 8)) ^ 0xFFFF;
            v220 = v218 - ((v219 * v218 + ((v219 * v218) >> 16) + 1) >> 16);
            if (v218 != (v219 * v218 + ((v219 * v218) >> 16) + 1) >> 16)
            {
              v221 = *(v213 - 1);
              v222 = ((HIWORD(v221) - ((v219 * HIWORD(v221) + ((v219 * HIWORD(v221)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v221) - ((WORD2(v221) * v219 + ((WORD2(v221) * v219) >> 16) + 1) >> 16)) << 32) | ((WORD1(v221) - ((WORD1(v221) * v219 + ((WORD1(v221) * v219) >> 16) + 1) >> 16)) << 16) | (v221 - ((v221 * v219 + ((v221 * v219) >> 16) + 1) >> 16));
              LODWORD(v223) = v220;
              if (v700)
              {
                if (*v30)
                {
                  v224 = __rev16(*v30);
                  goto LABEL_226;
                }

LABEL_228:
                v228 = bswap32(v222);
                v35->i16[0] = HIWORD(v228);
                v35->i16[1] = v228;
                v35->i16[2] = bswap32(HIDWORD(v222)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v222));
                v225 = v30;
              }

              else
              {
                v224 = 0xFFFF;
LABEL_226:
                v225 = v35 + 3;
                v226 = PDAsaturationPDA_11884(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v224, v222, v220);
                v222 = v226;
                if (v700)
                {
                  LODWORD(v223) = v227;
                  goto LABEL_228;
                }

                v223 = HIWORD(v226);
                v229 = bswap32(v226);
                v35->i16[0] = HIWORD(v229);
                v35->i16[1] = v229;
                v35->i16[2] = bswap32(HIDWORD(v226)) >> 16;
              }

              *v225 = bswap32(v223) >> 16;
              v215 = v699;
            }
          }

LABEL_231:
          ++v61;
          v113 += v44 != 0;
          ++v35;
          v213 += 8;
          v30 = (v215 + v30);
          if (!--v214)
          {
            goto LABEL_518;
          }
        }

      case 26:
        v490 = (v60 + 8);
        v491 = v46;
        v492 = v44;
        v493 = v699;
        while (1)
        {
          v494 = *v61;
          if (*v61)
          {
            if (v44)
            {
              v495 = *v492 * v494 + ((*v492 * v494) >> 8) + 1;
              if (v495 < 0x100)
              {
                goto LABEL_501;
              }

              v494 = v495 >> 8;
            }

            v496 = *v490;
            v497 = (v494 | (v494 << 8)) ^ 0xFFFF;
            v498 = v496 - ((v497 * v496 + ((v497 * v496) >> 16) + 1) >> 16);
            if (v496 != (v497 * v496 + ((v497 * v496) >> 16) + 1) >> 16)
            {
              v499 = *(v490 - 1);
              v500 = ((HIWORD(v499) - ((v497 * HIWORD(v499) + ((v497 * HIWORD(v499)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v499) - ((WORD2(v499) * v497 + ((WORD2(v499) * v497) >> 16) + 1) >> 16)) << 32) | ((WORD1(v499) - ((WORD1(v499) * v497 + ((WORD1(v499) * v497) >> 16) + 1) >> 16)) << 16) | (v499 - ((v499 * v497 + ((v499 * v497) >> 16) + 1) >> 16));
              LODWORD(v501) = v498;
              if (v700)
              {
                if (*v30)
                {
                  v502 = __rev16(*v30);
                  goto LABEL_497;
                }

                goto LABEL_498;
              }

              v502 = 0xFFFF;
LABEL_497:
              v503 = v35 + 3;
              v500 = PDAluminosityPDA_11885(v500, v498, ((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v502);
              if (v700)
              {
LABEL_498:
                v504 = bswap32(v500);
                v35->i16[0] = HIWORD(v504);
                v35->i16[1] = v504;
                v35->i16[2] = bswap32(HIDWORD(v500)) >> 16;
                v35->i16[3] = __rev16(HIWORD(v500));
                v503 = v30;
              }

              else
              {
                v501 = HIWORD(v500);
                v505 = bswap32(v500);
                v35->i16[0] = HIWORD(v505);
                v35->i16[1] = v505;
                v35->i16[2] = bswap32(HIDWORD(v500)) >> 16;
              }

              *v503 = bswap32(v501) >> 16;
              v493 = v699;
            }
          }

LABEL_501:
          ++v61;
          v492 += v44 != 0;
          ++v35;
          v490 += 8;
          v30 = (v493 + v30);
          if (!--v491)
          {
            v44 = &v492[v687];
            goto LABEL_519;
          }
        }

      case 27:
        v111 = (v60 + 8);
        v112 = v46;
        v113 = v44;
        v114 = v699;
        break;
      default:
        goto LABEL_598;
    }

    while (1)
    {
      v115 = *v61;
      if (*v61)
      {
        if (v44)
        {
          v116 = *v113 * v115 + ((*v113 * v115) >> 8) + 1;
          if (v116 < 0x100)
          {
            goto LABEL_144;
          }

          v115 = v116 >> 8;
        }

        v117 = *v111;
        v118 = (v115 | (v115 << 8)) ^ 0xFFFF;
        v119 = v117 - ((v118 * v117 + ((v118 * v117) >> 16) + 1) >> 16);
        if (v117 != (v118 * v117 + ((v118 * v117) >> 16) + 1) >> 16)
        {
          v120 = *(v111 - 1);
          v121 = ((HIWORD(v120) - ((v118 * HIWORD(v120) + ((v118 * HIWORD(v120)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v120) - ((WORD2(v120) * v118 + ((WORD2(v120) * v118) >> 16) + 1) >> 16)) << 32) | ((WORD1(v120) - ((WORD1(v120) * v118 + ((WORD1(v120) * v118) >> 16) + 1) >> 16)) << 16) | (v120 - ((v120 * v118 + ((v120 * v118) >> 16) + 1) >> 16));
          LODWORD(v122) = v119;
          if (v700)
          {
            if (*v30)
            {
              v123 = __rev16(*v30);
              goto LABEL_139;
            }

LABEL_141:
            v127 = bswap32(v121);
            v35->i16[0] = HIWORD(v127);
            v35->i16[1] = v127;
            v35->i16[2] = bswap32(HIDWORD(v121)) >> 16;
            v35->i16[3] = __rev16(HIWORD(v121));
            v124 = v30;
          }

          else
          {
            v123 = 0xFFFF;
LABEL_139:
            v124 = v35 + 3;
            v125 = PDAluminosityPDA_11885(((bswap32(v35->u16[2]) >> 16) << 32) | ((bswap32(v35->u16[3]) >> 16) << 48) | bswap32(v35->u16[1]) & 0xFFFF0000 | (bswap32(v35->u16[0]) >> 16), v123, v121, v119);
            v121 = v125;
            if (v700)
            {
              LODWORD(v122) = v126;
              goto LABEL_141;
            }

            v122 = HIWORD(v125);
            v128 = bswap32(v125);
            v35->i16[0] = HIWORD(v128);
            v35->i16[1] = v128;
            v35->i16[2] = bswap32(HIDWORD(v125)) >> 16;
          }

          *v124 = bswap32(v122) >> 16;
          v114 = v699;
        }
      }

LABEL_144:
      ++v61;
      v113 += v44 != 0;
      ++v35;
      v111 += 8;
      v30 = (v114 + v30);
      if (!--v112)
      {
LABEL_518:
        v44 = &v113[v687];
LABEL_519:
        v35 += v688;
        v30 += v689;
LABEL_520:
        v39 = v691;
        v46 = v698;
        v40 = v695;
LABEL_521:
        v529 = v697;
        v530 = v696;
        goto LABEL_522;
      }
    }
  }
}