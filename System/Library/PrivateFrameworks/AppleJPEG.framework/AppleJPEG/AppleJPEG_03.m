uint64_t aj_transforms_from_orientation(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      result = 0;
      if (a1 == 1)
      {
        return result;
      }

      if (a1 == 2)
      {
        result = 0;
LABEL_15:
        *a3 = 1;
        return result;
      }

      goto LABEL_20;
    }

    if (a1 != 3)
    {
      result = 0;
LABEL_19:
      *a4 = 1;
      return result;
    }

    result = 0;
LABEL_17:
    *a3 = 1;
    goto LABEL_19;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      result = 0;
      *a2 = 90;
      return result;
    }

    result = 0;
    *a2 = 90;
    goto LABEL_15;
  }

  if (a1 == 7)
  {
    result = 0;
    *a2 = 90;
    goto LABEL_19;
  }

  if (a1 == 8)
  {
    result = 0;
    *a2 = 90;
    goto LABEL_17;
  }

LABEL_20:
  aj_log_error("Utils", "Illegal display orientation option: %d", a1);
  return 5;
}

uint64_t aj_huffman_encode_val_lkup(uint64_t a1, int a2, int a3, int32x2_t *a4)
{
  if (a3)
  {
    if (a3 >= 0)
    {
      v4 = a3;
    }

    else
    {
      v4 = -a3;
    }

    v5 = HIWORD(v4);
    if (!HIWORD(v4))
    {
      v5 = v4;
    }

    if (v5 <= 0xFF)
    {
      v6 = 16 * (HIWORD(v4) != 0);
    }

    else
    {
      v6 = (16 * (HIWORD(v4) != 0)) | 8;
    }

    if (v5 > 0xFF)
    {
      v5 >>= 8;
    }

    if (v5 > 0xF)
    {
      v6 |= 4u;
      v5 >>= 4;
    }

    if (v5 > 3)
    {
      v6 |= 2u;
      v5 >>= 2;
    }

    v7 = v6 | (v5 > 1);
    v8 = v7 + 1;
    v9 = (-2 << v7) | v4;
    if (a3 < 0)
    {
      v4 = ~v9;
    }
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  v10 = v8 + HIWORD(*(a1 + 4 * (v8 + 16 * a2)));
  v11 = (*(a1 + 4 * (v8 + 16 * a2)) << v8) + v4;
  if (a4[2].i32[1] >= 9 && (v12 = a4->i32[1] + v10, v12 < 33))
  {
    v14 = a4->i32[0] | (v11 << -v12);
    a4->i32[0] = v14;
    a4->i32[1] = v12;
    if (v12 >= 8)
    {
      do
      {
        v15 = HIBYTE(v14);
        v16 = a4[1];
        a4[1] = (v16 + 1);
        *v16 = v15;
        a4[2] = vadd_s32(a4[2], 0xFFFFFFFF00000001);
        if (v15 == 255)
        {
          v17 = a4[1];
          a4[1] = (v17 + 1);
          *v17 = 0;
          a4[2] = vadd_s32(a4[2], 0xFFFFFFFF00000001);
        }

        v18 = a4->i32[1];
        v14 = a4->i32[0] << 8;
        a4->i32[0] = v14;
        a4->i32[1] = v18 - 8;
      }

      while (v18 > 15);
    }
  }

  else
  {
    result = aj_ostream_write(a4, v11, v10);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t aj_huffman_encode_sym_lkup(uint64_t a1, int a2, int32x2_t *a3)
{
  v3 = HIWORD(*(a1 + 4 * a2));
  v4 = *(a1 + 4 * a2);
  if (a3[2].i32[1] >= 9 && (v5 = a3->i32[1] + v3, v5 < 33))
  {
    v7 = a3->i32[0] | (v4 << -v5);
    a3->i32[0] = v7;
    a3->i32[1] = v5;
    if (v5 >= 8)
    {
      do
      {
        v8 = HIBYTE(v7);
        v9 = a3[1];
        a3[1] = (v9 + 1);
        *v9 = v8;
        a3[2] = vadd_s32(a3[2], 0xFFFFFFFF00000001);
        if (v8 == 255)
        {
          v10 = a3[1];
          a3[1] = (v10 + 1);
          *v10 = 0;
          a3[2] = vadd_s32(a3[2], 0xFFFFFFFF00000001);
        }

        v11 = a3->i32[1];
        v7 = a3->i32[0] << 8;
        a3->i32[0] = v7;
        a3->i32[1] = v11 - 8;
      }

      while (v11 > 15);
    }
  }

  else
  {
    result = aj_ostream_write(a3, v4, v3);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void aj_huffman_encode_init_lookups(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  bzero(v36, 0x400uLL);
  bzero(v35, 0x400uLL);
  v8 = 0;
  v9 = a1 - 1;
  for (i = 1; i != 17; ++i)
  {
    v11 = *(v9 + i);
    if (*(v9 + i) && v8 <= 255)
    {
      v12 = v8;
      do
      {
        v8 = v12 + 1;
        v36[v12] = i;
        if (v11 < 2)
        {
          break;
        }

        --v11;
      }

      while (v12++ < 255);
    }
  }

  v14 = 0;
  LODWORD(v15) = 0;
  v16 = v36[0];
  while (v36[v15])
  {
    v15 = v15;
    v17 = 2 * v14;
    while (v36[v15] == v16)
    {
      v35[v15] = v14++;
      v17 += 2;
      if (++v15 == 256)
      {
        goto LABEL_17;
      }
    }

    ++v16;
    v14 = v17;
    if (v15 >= 256)
    {
      goto LABEL_17;
    }
  }

  if (v15 < 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v15 = v15;
  v18 = v35;
  v19 = v36;
  do
  {
    v21 = *v19++;
    v20 = v21;
    v22 = *v18++;
    v23 = v22 | (v20 << 16);
    v24 = *a2++;
    *(a3 + 4 * v24) = v23;
    --v15;
  }

  while (v15);
LABEL_19:
  if (a4)
  {
    for (j = 0; j != 8; ++j)
    {
      for (k = 0; k != 32; ++k)
      {
        v27 = k - 16;
        if (k == 16)
        {
          v28 = 0;
        }

        else
        {
          v29 = 16 - k;
          if (k - 16 >= 0)
          {
            v29 = k - 16;
          }

          v30 = HIWORD(v29);
          if (!HIWORD(v29))
          {
            v30 = v29;
          }

          if (v30 <= 0xFF)
          {
            v31 = 16 * (HIWORD(v29) != 0);
          }

          else
          {
            v31 = (16 * (HIWORD(v29) != 0)) | 8;
          }

          if (v30 > 0xFF)
          {
            v30 >>= 8;
          }

          if (v30 > 0xF)
          {
            v31 |= 4u;
            v30 >>= 4;
          }

          if (v30 > 3)
          {
            v31 |= 2u;
            v30 >>= 2;
          }

          v32 = v31 | (v30 > 1);
          v28 = v32 + 1;
          v33 = (-2 << v32) | v29;
          if (v27 < 0)
          {
            LODWORD(v27) = ~v33;
          }

          else
          {
            LODWORD(v27) = v29;
          }
        }

        *(a4 + 4 * k) = ((*(a3 + (j << 6) + 4 * v28) << v28) + v27) | ((v28 + HIWORD(*(a3 + (j << 6) + 4 * v28))) << 24);
      }

      a4 += 128;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t aj_lossless_decode_all(int **a1, uint64_t a2)
{
  v4 = 0;
  v117 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 112);
  v6 = *a1;
  v7 = **a1;
  v8 = *(a1 + 1645);
  v9 = 4;
  v10 = 1;
  if (v8 <= 15)
  {
    v11 = 0;
    v12 = 0;
    if ((v8 - 3) < 2)
    {
      goto LABEL_16;
    }

    if (v8)
    {
      if (v8 == 5)
      {
LABEL_5:
        v4 = 0;
        v12 = 0;
        v11 = 1;
        v9 = 1;
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    v4 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 3;
    goto LABEL_16;
  }

  if (v8 <= 0x1A)
  {
    if (((1 << v8) & 0x6100000) != 0)
    {
      goto LABEL_10;
    }

    if (((1 << v8) & 0xC00000) != 0)
    {
      v4 = 0;
      v11 = 0;
      v9 = 2;
      v12 = 1;
      goto LABEL_16;
    }

    if (v8 == 21)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_16;
    }
  }

  v11 = 0;
  v12 = 0;
  if ((v8 - 16) < 2)
  {
    goto LABEL_16;
  }

  if (v8 == 18)
  {
    goto LABEL_5;
  }

LABEL_15:
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  v4 = 1;
LABEL_16:
  if (v8 > 0x1A)
  {
    goto LABEL_22;
  }

  v13 = 1;
  if (((1 << v8) & 0x4B70000) != 0)
  {
    v13 = 2;
    v14 = 1;
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_22:
    aj_log_error(0, "Unsupported output format for lossless JPEG");
LABEL_33:
    result = 5;
    goto LABEL_34;
  }

  if (((1 << v8) & 0x2400039) == 0)
  {
    goto LABEL_22;
  }

  v14 = 0;
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v7 > 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    aj_log_error(0, "Decoding lossless RGB JPEG to grayscale not supported");
    goto LABEL_33;
  }

  if (v7 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16 == 1)
  {
    aj_log_error(0, "Only two-component JPEGs can be decoded to two-component format");
    goto LABEL_33;
  }

  if (a1[1][23] >= 7)
  {
    aj_log_error(0, "Max 6 blocks per MCU supported");
    goto LABEL_83;
  }

  if (v6[8] >= 3)
  {
    aj_log_error(0, "Vertical subsampling > 2 not yet supported");
    goto LABEL_83;
  }

  if (v6[4] >= 3)
  {
    aj_log_error(0, "Horizontal subsampling > 2 not yet supported");
    goto LABEL_83;
  }

  if (v7 == 3)
  {
    v19 = v6 + 9;
    v20 = 2;
    while (*v19 == 1 && *(v19 - 4) == 1)
    {
      ++v19;
      if (!--v20)
      {
        goto LABEL_46;
      }
    }

    aj_log_error(0, "Subsampling not yet supported");
LABEL_83:
    result = 3;
    goto LABEL_34;
  }

LABEL_46:
  result = aj_istream_move_to_position(v5, v6[855]);
  if (result)
  {
    goto LABEL_34;
  }

  v21 = *(a1 + 1645);
  memset(&v116[1], 0, 32);
  v23 = v21 == 17 || v21 == 4;
  v115 = 0uLL;
  v116[0] = 0uLL;
  if (v14)
  {
    v24 = -1;
  }

  else
  {
    v24 = 255;
  }

  memset(v114, 0, sizeof(v114));
  memset(v113, 0, sizeof(v113));
  v111 = 0uLL;
  v112 = 0uLL;
  memset(v110, 0, sizeof(v110));
  if ((v21 - 25) >= 2)
  {
    v25 = *a1;
    v107 = v9;
    if (v10)
    {
      v48 = 0;
      v49 = a1[12];
      v50 = a1[8];
      if (v9 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v9;
      }

      v52 = &v111 + 4;
      v53 = 2;
      do
      {
        if (v23 && v48 < 3)
        {
          v54 = v53;
        }

        else
        {
          v54 = v48;
        }

        *(v52 - 1) = v13 * v9;
        *v52 = v9;
        *(v52 + 1) = v54 * v13;
        *(v52 + 2) = v49;
        *(v52 + 2) = 0x100000000;
        *(v52 + 6) = 2;
        *(v52 + 7) = v25[847];
        if (v48 >= v7)
        {
          v52[32] = 1;
        }

        else
        {
          *(v52 - 12) = *&a1[1][4 * v25[v48 + 839] + 2];
        }

        *(v116 + v48) = v50;
        v114[v48++] = v49;
        --v53;
        v52 += 72;
      }

      while (v51 != v48);
    }
  }

  else
  {
    v25 = *a1;
    v26 = a1[1];
    v27 = v26[23];
    v107 = v27;
    v28 = (*a1)[8];
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = v25[4];
      while (1)
      {
        if (v31 < 1)
        {
          goto LABEL_76;
        }

        v32 = 0;
        v33 = 0;
        v34 = a1[12];
        v35 = *(a1 + 6904);
        v36 = a1[8] + v34 * v30;
        do
        {
          v37 = v29 * v31;
          v38 = v33 + v30 * v31;
          v39 = v110 + 72 * v38;
          *(v39 + 10) = v32;
          *(v39 + 8) = v25[4] * v13;
          *(v39 + 9) = 1;
          *(v39 + 11) = v34;
          if (v37 == v33 && v35 != 0)
          {
            *(v39 + 11) = v25[8] * v34;
          }

          *(v116 + v38) = v36;
          v114[v38] = v34 * v25[8];
          *(v39 + 52) = 0x100000000;
          *(v39 + 15) = 2;
          v41 = v25[847];
          *(v39 + 16) = v41;
          if (v30 && v33)
          {
            *(v39 + 13) = v41;
            v42 = v25[847];
            *(v39 + 14) = v42;
LABEL_69:
            *(v39 + 15) = v42;
            goto LABEL_72;
          }

          if (v30)
          {
            *(v39 + 13) = 2;
            *(v39 + 14) = v25[847];
          }

          else if (v33)
          {
            *(v39 + 13) = 1;
            v42 = v25[847];
            goto LABEL_69;
          }

LABEL_72:
          *(v39 + 3) = *&v26[4 * v25[839] + 2];
          v31 = v25[4];
          ++v33;
          v32 += v13;
        }

        while (v33 < v31);
        v28 = v25[8];
LABEL_76:
        ++v30;
        --v29;
        if (v30 >= v28)
        {
          v27 = v26[23];
          break;
        }
      }
    }

    v43 = v26[22];
    if (v43 < v27)
    {
      v44 = v113 + 18 * v43;
      v45 = v43 + 1;
      do
      {
        v46 = v45 - v26[22];
        v47 = a1[v46 + 12];
        *(v116 + v43) = a1[v46 + 8];
        v114[v43] = v47;
        *(v44 - 5) = v47;
        *(v44 - 8) = v13;
        *(v44 - 7) = 1;
        *(v44 - 3) = 0x100000000;
        *(v44 - 1) = 2;
        *v44 = v25[847];
        *(v44 - 5) = *&v26[4 * v25[v46 + 839] + 2];
        v44 += 18;
        ++v45;
        ++v43;
      }

      while (v43 < v26[23]);
    }
  }

  v55 = a1[1];
  v100 = v55[21];
  if (v100 < 1)
  {
LABEL_177:
    result = 0;
    goto LABEL_34;
  }

  v56 = 0;
  v106 = 0;
  v57 = 0;
  v58 = v25[851];
  v59 = v55[20];
  v60 = 7;
  v108 = v24;
  v101 = v55[20];
  v102 = v58;
  while (1)
  {
    if (v107)
    {
      v61 = 60;
      if (!v106)
      {
        v61 = 52;
      }

      v62 = *(a1 + 1650);
      v63 = v110;
      v64 = v116;
      v65 = v114;
      v66 = v107;
      do
      {
        v67 = *v65++;
        v68 = *v64 + v67 * v56 + v62 + *(v63 + 10);
        v69 = v68 - *(v63 + 11);
        *v63 = v68;
        *(v63 + 1) = v69;
        *(v63 + 2) = v68;
        if (!*(v63 + 68))
        {
          *(v63 + 12) = *(v63 + v61);
        }

        v63 = (v63 + 72);
        ++v64;
        --v66;
      }

      while (v66);
    }

    if (v59 >= 1)
    {
      break;
    }

LABEL_176:
    ++*(a2 + 36);
    ++v56;
    ++v106;
    if (v56 == v100)
    {
      goto LABEL_177;
    }
  }

  v70 = 0;
  v71 = 0;
  while (1)
  {
    if (!*(v5 + 16) && *(v5 + 24) <= 6)
    {
      v72 = v57;
      result = aj_istream_fill_buf(v5, -9);
      v59 = v101;
      v58 = v102;
      v57 = v72;
      v24 = v108;
      if (result)
      {
        goto LABEL_34;
      }
    }

    if (v58 < 1 || v57 != v58)
    {
      if (!v107)
      {
        goto LABEL_175;
      }

LABEL_122:
      v103 = v70;
      v104 = v57;
      v105 = v60;
      if (v106)
      {
        v78 = 64;
      }

      else
      {
        v78 = 56;
      }

      v79 = v110;
      v80 = v107;
      while (1)
      {
        v81 = v24;
        if (*(v79 + 68))
        {
          if (!v14)
          {
            goto LABEL_169;
          }

          goto LABEL_128;
        }

        v83 = -*(v79 + 9);
        v84 = *(v79 + 1);
        v85 = *(v79 + 2);
        v86 = *(v79 + 12);
        LOWORD(v87) = 0;
        if (v14)
        {
          if (v86 > 3)
          {
            if (v86 <= 5)
            {
              if (v86 != 4)
              {
                v88 = *(v85 + 2 * v83);
                v89 = *v84;
                v90 = v84[v83];
LABEL_146:
                v87 = v88 + ((v89 - v90) >> 1);
                goto LABEL_167;
              }

              v94 = *v84 + *(v85 + 2 * v83);
              v95 = v84[v83];
LABEL_161:
              LOWORD(v87) = v94 - v95;
              goto LABEL_167;
            }

            if (v86 != 6)
            {
              if (v86 != 7)
              {
                goto LABEL_167;
              }

              v91 = *(v85 + 2 * v83);
              v92 = *v84;
LABEL_157:
              v87 = (v92 + v91) >> 1;
              goto LABEL_167;
            }

            v96 = *v84;
            v97 = *(v85 + 2 * v83);
            v98 = v84[v83];
LABEL_166:
            v87 = v96 + ((v97 - v98) >> 1);
            goto LABEL_167;
          }

          if (v86 > 1)
          {
            if (v86 == 2)
            {
              LOWORD(v87) = *v84;
            }

            else
            {
              LOWORD(v87) = v84[v83];
            }
          }

          else
          {
            if (!v86)
            {
              goto LABEL_158;
            }

            if (v86 == 1)
            {
              LOWORD(v87) = *(v85 - 2 * *(v79 + 9));
            }
          }
        }

        else
        {
          if (v86 > 3)
          {
            if (v86 <= 5)
            {
              if (v86 != 4)
              {
                v88 = *(v85 - *(v79 + 9));
                v89 = *v84;
                v90 = *(v84 - *(v79 + 9));
                goto LABEL_146;
              }

              v94 = *v84 + *(v85 - *(v79 + 9));
              v95 = *(v84 - *(v79 + 9));
              goto LABEL_161;
            }

            if (v86 != 6)
            {
              if (v86 != 7)
              {
                goto LABEL_167;
              }

              v91 = *(v85 - *(v79 + 9));
              v92 = *v84;
              goto LABEL_157;
            }

            v96 = *v84;
            v97 = *(v85 - *(v79 + 9));
            v98 = *(v84 - *(v79 + 9));
            goto LABEL_166;
          }

          if (v86 > 1)
          {
            if (v86 == 2)
            {
              LOWORD(v87) = *v84;
            }

            else
            {
              LOWORD(v87) = *(v84 - *(v79 + 9));
            }
          }

          else
          {
            if (!v86)
            {
LABEL_158:
              v93 = ((*a1)[1] - 1);
              v87 = 1 << (*(*a1 + 4) - 1);
              goto LABEL_167;
            }

            if (v86 == 1)
            {
              LOWORD(v87) = *(v85 - *(v79 + 9));
            }
          }
        }

LABEL_167:
        v109 = 0;
        result = aj_huffman_decode_val(*(v79 + 3), v5, 1, &v109);
        if (result)
        {
          goto LABEL_34;
        }

        v81 = HIWORD(v109) + v87;
        v24 = v108;
        if (!v14)
        {
LABEL_169:
          **(v79 + 2) = v81;
          v82 = *(v79 + 2);
          goto LABEL_170;
        }

LABEL_128:
        v82 = *(v79 + 2);
        *v82 = v81;
LABEL_170:
        v99 = *(v79 + 8);
        *(v79 + 1) += v99;
        *(v79 + 2) = v82 + v99;
        if (!v71)
        {
          *(v79 + 12) = *(v79 + v78);
        }

        v79 = (v79 + 72);
        if (!--v80)
        {
          v59 = v101;
          v58 = v102;
          v57 = v104;
          v60 = v105;
          v70 = v103;
          goto LABEL_175;
        }
      }
    }

    v73 = *(v5 + 16);
    if (!v73)
    {
      break;
    }

    v60 = (v60 + 1) & 7;
    v74 = *v73;
    if ((v60 | 0xD0) != v74)
    {
      aj_log_error(0, "Bitstream corrupt: Wrong marker (%02X) found.", v74);
LABEL_184:
      result = 7;
      goto LABEL_34;
    }

    v75 = v59;
    *v5 = 0;
    *(v5 + 24) = -9;
    *(v5 + 16) = 0;
    result = aj_istream_fill_buf(v5, -9);
    if (result)
    {
      goto LABEL_34;
    }

    if (v107)
    {
      v76 = v107;
      v77 = &v112;
      v24 = v108;
      do
      {
        if (!*(v77 + 20))
        {
          *v77 = *(v77 + 1);
        }

        v77 = (v77 + 72);
        --v76;
      }

      while (v76);
      v71 = 0;
      v106 = 0;
      v57 = 0;
      goto LABEL_122;
    }

    v71 = 0;
    v106 = 0;
    v57 = 0;
    v24 = v108;
    v59 = v75;
LABEL_175:
    ++v70;
    ++v57;
    ++v71;
    if (v70 == v59)
    {
      goto LABEL_176;
    }
  }

  if (*(v5 + 32) > 1)
  {
    goto LABEL_184;
  }

  result = 7;
  if (*(v5 + 112))
  {
    if (*(v5 + 56) == 1)
    {
      result = 4294967294;
    }

    else
    {
      result = 7;
    }
  }

LABEL_34:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_dct_prescale_qtable(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; ++i)
  {
    *(a2 + 2 * i) = dword_240AB5840[8 * (i >> 3) + (i & 7)] / *(result + 4 * i);
  }

  return result;
}

uint64_t aj_get_qtable_for_quality(uint64_t result, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = &base_qtable_luma;
  if (!a3)
  {
    v5 = &base_qtable_chroma;
  }

  v6 = 5000 / a2;
  if (a2 >= 51)
  {
    v6 = 200 - 2 * a2;
  }

  if (a2 > 99)
  {
    v6 = 0;
  }

  do
  {
    if (a4)
    {
      v7 = aj_glob_zigzag[v4];
    }

    else
    {
      v7 = v4;
    }

    v8 = 1374389535 * (v5[v7] * v6 + 50);
    v9 = (v8 >> 37) + (v8 >> 63);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if (v9 >= 255)
    {
      v9 = 255;
    }

    *(result + 4 * v4++) = v9;
  }

  while (v4 != 64);
  return result;
}

uint64_t aj_bufferproc_resize_get_blendrows(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(a1 + 32);
  if (*(v5 + 1106))
  {
    *a4 = 0;
    *a5 = 0;
  }

  return get_startposition_for_thread(v5, 0, *(v5 + 4) + *(v5 + 1108), a4, a5);
}

uint64_t get_startposition_for_thread(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v7 = *(a1 + 8 * a2 + 168);
  v8 = (a3 - 1);
  v9 = (v8 << 32) - 0x110000001;
  if ((v8 << 32) < 0x110000001)
  {
    v9 = 0;
  }

  v10 = v9 / v7 + 1;
  v11 = v7 * v10;
  v12 = (v11 + 0x10000000) >> 32;
  if (a3 + 2 > v12)
  {
    v13 = v7 * v10;
    do
    {
      if (a5)
      {
        ++*a5;
      }

      v13 += v7;
      ++v10;
      if (v8 > v12)
      {
        v11 = v13;
      }

      v12 = (v13 + 0x10000000) >> 32;
    }

    while (a3 + 2 > v12);
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v13 = v7 * v10;
  if (!a2)
  {
LABEL_17:
    if (*(a1 + 68))
    {
      if (*(a1 + 176))
      {
        v14 = (get_startposition_for_thread(a1, 1, ((a3 + 1) >> 1), 0, 0) / *(a1 + 176)) << *(a1 + 68);
        v15 = __OFSUB__(v14, v10);
        v16 = v14 - v10;
        if (!((v16 < 0) ^ v15 | (v16 == 0)))
        {
          do
          {
            if (a5)
            {
              ++*a5;
            }

            v13 += v7;
            --v16;
          }

          while (v16);
        }
      }
    }
  }

LABEL_23:
  if (a4)
  {
    *a4 = ((v13 - v11) >> 32) + 3;
  }

  return v13;
}

_BYTE *aj_bufferproc_resize(_BYTE *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a2;
  v92 = *MEMORY[0x277D85DE8];
  v69 = result;
  v6 = *(result + 4);
  if (*(a3 + 1082))
  {
    v6[16].i8[8] = 0;
  }

  v84 = v6;
  v7 = a5 + a4 < v6->i32[1] || v6[69].i8[2] == 0;
  v82 = v7;
  v89[0] = 0;
  v89[1] = 0;
  v88[0] = 0;
  v88[1] = 0;
  v8 = *(a2 + 6464);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = a4;
      if (v9)
      {
        v10 = (v6[4].i32[1] + a4) >> v6[4].i32[1];
      }

      *(v88 + v9) = v10;
      v9 += 4;
    }

    while (4 * v8 != v9);
    v11 = v6 + 61;
    v12 = v6 + 60;
    v66 = a3 + 568;
    v13 = v6 + 62;
    v83 = v6 + 17;
    while (1)
    {
      if (!LODWORD(v88[0]))
      {
        v14 = 1;
        do
        {
          v15 = v14;
          if (v8 == v14)
          {
            break;
          }
        }

        while (!*(v88 + v14++));
        if (v15 >= v8)
        {
          goto LABEL_83;
        }
      }

      v17 = 0;
      v87[0] = 0;
      v87[1] = 0;
      v86 = 0uLL;
      v86 = vsubq_s32(*v11, *v12);
      if (v8 <= 1)
      {
        LODWORD(v8) = 1;
      }

      v18 = 4 * v8;
      do
      {
        v19 = *(v88 + v17);
        if (v19 >= v86.i32[v17 / 4])
        {
          v19 = v86.i32[v17 / 4];
        }

        *(v87 + v17) = v19;
        v17 += 4;
      }

      while (v18 != v17);
      if (*(v5 + 6577))
      {
        v20 = 0;
        *&src.data = xmmword_240AB5B48;
        *&dest.data = xmmword_240AB5B48;
        v21 = v66;
        do
        {
          src.width = v84->i32[2 * v20];
          src.rowBytes = src.width;
          dest.width = v84[2].i32[2 * v20];
          dest.rowBytes = dest.width;
          v22 = *(v87 + v20);
          if (v22 >= 1)
          {
            v23 = 0;
            v24 = v21 + 8 * *(v89 + v20);
            do
            {
              src.data = *(v24 + 8 * v23);
              dest.data = v83->i64[21 * v20 + (v23 + v12->i32[v20] + v13->i32[v20]) % v11->i32[v20]];
              v25 = vImageHorizontalShear_Planar8(&src, &dest, 0, 0, 0.0, 0.0, v84[69].i64[1], 0, 8u);
              if (v25)
              {
                aj_log_error(0, "vImage returned error: %ld\n", v25);
              }

              ++v23;
            }

            while (v22 != v23);
          }

          v12->i32[v20++] += v22;
          v5 = a2;
          v8 = *(a2 + 6464);
          v21 += 128;
        }

        while (v20 < v8);
      }

      else
      {
        v26 = 0;
        v80 = v66;
        do
        {
          v27 = *(v87 + v26);
          if (v27 >= 1)
          {
            v28 = 0;
            v29 = v80 + 8 * *(v89 + v26);
            do
            {
              memcpy(v83->i64[21 * v26 + (v28 + v12->i32[v26] + v13->i32[v26]) % v11->i32[v26]], *(v29 + 8 * v28), v84->i32[2 * v26]);
              ++v28;
            }

            while (v27 != v28);
          }

          v12->i32[v26++] += v27;
          v5 = a2;
          v8 = *(a2 + 6464);
          v80 += 128;
        }

        while (v26 < v8);
      }

      v30 = *(v69 + 32);
      v91 = 0;
      memset(&src, 0, sizeof(src));
      result = (v30 + 1072);
      v81 = v30;
      if (!*(v30 + 264))
      {
        break;
      }

LABEL_70:
      if (!v82)
      {
        if (v8 <= 0)
        {
          goto LABEL_83;
        }

        if (*result)
        {
LABEL_73:
          if (!*(v81 + 264))
          {
            result = outbuffer_drain(v69, v5, a3);
            LODWORD(v8) = *(v5 + 6464);
          }
        }

        else
        {
          v61 = 0;
          while (v8 - 1 != v61)
          {
            if (*(v81 + 1076 + 4 * v61++))
            {
              if (v61 < v8)
              {
                goto LABEL_73;
              }

              break;
            }
          }
        }
      }

      if (v8 < 1)
      {
        goto LABEL_83;
      }

      v63 = 0;
      do
      {
        v64 = *(v87 + v63);
        *(v89 + v63) += v64;
        *(v88 + v63++) -= v64;
      }

      while (v63 < v8);
    }

    v31 = (v30 + 1088);
    v32 = v30 + 200;
    v33 = v30 + 944;
    v34 = v30 + 960;
    v35 = v30 + 992;
    v36 = v30 + 976;
    v37 = v30 + 272;
    v73 = v30 + 32;
    v74 = v30 + 88;
    v72 = v30 + 1008;
    v70 = v30 + 168;
    v67 = (v30 + 1092);
    v78 = v30 + 200;
    v79 = (v30 + 1072);
    v76 = v30 + 960;
    v77 = v30 + 944;
    v75 = v30 + 976;
    while (1)
    {
      LODWORD(v8) = *(v5 + 6464);
      if (v8 < 1)
      {
        goto LABEL_70;
      }

      v38 = 0;
      v39 = 0;
      do
      {
        v40 = *&result[4 * v38];
        if (v40 < v31[v38])
        {
          v41 = *(v32 + 8 * v38) + 0x10000000;
          v42 = *(v33 + 4 * v38);
          v43 = *(v34 + 4 * v38);
          v44 = HIDWORD(v41);
          v45 = HIDWORD(v41) + 2;
          if (!v82)
          {
            v45 = (*(v32 + 8 * v38) + 0x10000000) >> 32;
          }

          if (v43 + v42 > v45)
          {
            v46 = 0;
            v47 = v43;
            v48 = HIDWORD(v41) - v42 - 2;
            v49 = v43 - 1;
            v50 = v48;
            v51 = *(v36 + 4 * v38);
            do
            {
              if (v50 < 0)
              {
                v54 = *(v35 + 4 * v38);
              }

              else
              {
                v52 = *(v35 + 4 * v38);
                v53 = v50 + v52;
                v54 = v49 + v52;
                if (v50 < v47)
                {
                  v54 = v53;
                }
              }

              *(&src.data + v46) = *(v37 + 168 * v38 + 8 * (v54 % v51));
              v46 += 8;
              ++v50;
            }

            while (v46 != 40);
            (*(v81 + 80))(&src, v74 + 10 * (v41 >> 29), *(v73 + 8 * v38), *(v72 + 16 * v38 + 8 * v40));
            v32 = v78;
            result = v79;
            ++*&v79[4 * v38];
            v55 = *(v78 + 8 * v38);
            if (*(v81 + 8 * v38 + 4) > 1)
            {
              v55 += *(v70 + 8 * v38);
              *(v78 + 8 * v38) = v55;
            }

            v44 = (v55 + 0x10000000) >> 32;
            v34 = v76;
            v33 = v77;
            v42 = *(v77 + 4 * v38);
            v43 = *(v76 + 4 * v38);
            v39 = 1;
            v36 = v75;
          }

          v56 = v44 - v42 - 2;
          if (v56 >= v43)
          {
            v56 = v43;
          }

          if (v56 >= 1)
          {
            *(v35 + 4 * v38) = (*(v35 + 4 * v38) + v56) % *(v36 + 4 * v38);
            *(v34 + 4 * v38) = v43 - v56;
            *(v33 + 4 * v38) = v56 + v42;
          }
        }

        ++v38;
        v8 = *(v5 + 6464);
      }

      while (v38 < v8);
      if (!v39)
      {
        goto LABEL_70;
      }

      if (v8 < 1)
      {
        goto LABEL_67;
      }

      if (*result >= *v31)
      {
        break;
      }

LABEL_68:
      if (*(v81 + 264))
      {
        LODWORD(v8) = *(v5 + 6464);
        goto LABEL_70;
      }
    }

    v57 = 0;
    v58 = v67;
    while (1 - v8 != v57)
    {
      v59 = *(v58 - 4);
      v60 = *v58++;
      --v57;
      if (v59 < v60)
      {
        if (-v57 < v8)
        {
          goto LABEL_68;
        }

        break;
      }
    }

LABEL_67:
    outbuffer_drain(v69, v5, a3);
    v34 = v76;
    v33 = v77;
    v32 = v78;
    result = v79;
    goto LABEL_68;
  }

LABEL_83:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_bufferproc_resize_maxout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ((a4 << 32) + 0x300000000) / *(*(a1 + 32) + 168) + *(a1 + 44);
  v5 = *(a1 + 80);
  if (v5)
  {
    return (*(v5 + 8))(v5, a2, a3, (v4 + 1));
  }

  else
  {
    return (v4 + 1);
  }
}

uint64_t aj_bufferproc_resize_init(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v82[40] = *MEMORY[0x277D85DE8];
  v8 = malloc_type_calloc(1uLL, 0x460uLL, 0x1090040FCE13DA8uLL);
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 40);
    *(a1 + 32) = v9;
    *(v9 + 64) = aj_highest_set_bit(v10) - 1;
    v74 = (a1 + 40);
    *(v9 + 68) = aj_highest_set_bit(*(a1 + 44)) - 1;
    *(v9 + 72) = 0;
    v11 = *(a2 + 6836);
    v12 = a3[6];
    *(v9 + 1106) = a3[7] == *(a2 + 6840);
    v14 = v12 - v11;
    v13 = v14 == 0;
    *(v9 + 1105) = v14 == 0;
    v15 = *(a2 + 172) * v14;
    *(v9 + 1108) = v15;
    if (!v13)
    {
      *(v9 + 1108) = v15 - *(a2 + 6856);
    }

    v75 = a4;
    v16 = *(a2 + 6504) / *(a2 + 6620);
    v17 = 0.5;
    if (v16 >= 0.5)
    {
      v17 = *(a2 + 6504) / *(a2 + 6620);
      if (v16 > 1.0)
      {
        v17 = 1.0;
      }
    }

    v18 = 0;
    v19 = v82;
    do
    {
      v20 = 0;
      v21 = 0.0;
      v22 = -2;
      do
      {
        v23 = v17 * (v22 + -v18 * 0.125);
        v24 = 0.0;
        if (fabs(v23) < 2.0)
        {
          v24 = 1.0;
          if (v23 != 0.0)
          {
            v25 = sin(v23 * 3.14159265);
            v24 = v25 / (v23 * 3.14159265) * (sin(v23 * 0.5 * 3.14159265) / (v23 * 0.5 * 3.14159265));
          }
        }

        *&v19[v20] = v24;
        v21 = v21 + v24;
        ++v20;
        ++v22;
      }

      while (v20 != 5);
      v81[v18++] = v21;
      v19 += 5;
    }

    while (v18 != 8);
    v26 = 0;
    for (i = 0; i != 8; ++i)
    {
      v28 = 0;
      v29 = v81[i];
      v30 = v26;
      v31 = 5;
      do
      {
        v32 = *&v82[v30] / v29;
        *&v82[v30] = v32;
        v33 = llround(v32 * 16384.0);
        *(v9 + 2 * v30 + 88) = v33;
        v28 += v33;
        ++v30;
        --v31;
      }

      while (v31);
      *(v9 + 88 + 10 * i + 4) = *(v9 + 88 + 10 * i + 4) - v28 + 0x4000;
      v26 += 5;
    }

    v34 = aj_resize_vertically;
    if (!*(a2 + 6576))
    {
      v34 = aj_memcpy_wrapper;
    }

    *(v9 + 80) = v34;
    v35 = *(a2 + 6464);
    if (v35 < 1)
    {
LABEL_60:
      v64 = 1;
      *(v9 + 1104) = 1;
      v65 = vImageNewResamplingFilter(*(a2 + 6500) / *(a2 + 6616), 0);
      *(v9 + 1112) = v65;
      if (v65)
      {
        v66 = *v74;
        v67 = v74[1];
        *(v75 + 32) = *(v74 + 4);
        *v75 = v66;
        *(v75 + 16) = v67;
        if (*(a2 + 6464) >= 1)
        {
          v68 = 0;
          v69 = (v75 + 24);
          v70 = (v9 + 36);
          do
          {
            *v69 = *v70;
            *(v69 - 4) = *(v70 - 1);
            ++v68;
            ++v69;
            v70 += 2;
          }

          while (v68 < *(a2 + 6464));
        }

        v64 = 0;
      }
    }

    else
    {
      v79 = v9 + 168;
      v77 = a1 + 64;
      v78 = a1 + 48;
      v36 = v9 + 976;
      v80 = v9 + 1088;
      v37 = v9 + 168 * v35 + 104;
      v73 = a1;
      v38 = v9 + 992 + 16 * v35;
      while (1)
      {
        v76 = v35--;
        if (v35)
        {
          v39 = *(v9 + 64);
          v40 = *(v9 + 68);
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        v41 = (*(a2 + 6620) + v40) >> v40;
        v42 = (*(a2 + 6504) + v40) >> v40;
        if (v41 <= 2)
        {
          v41 = 2;
        }

        v43 = (v41 - 1) << 32;
        if (v42 <= 2)
        {
          v44 = 2;
        }

        else
        {
          v44 = (*(a2 + 6504) + v40) >> v40;
        }

        v45 = v43 / (v44 - 1);
        if (v42 == 1)
        {
          ++v45;
        }

        *(v79 + 8 * v35) = v45;
        v46 = ((*(v9 + 1108) + v40) >> v40);
        if (v35 || (v57 = *(v9 + 68)) == 0 || *(a2 + 6464) < 2)
        {
          startposition_for_thread = get_startposition_for_thread(v9, v35, v46, 0, 0);
          *(v9 + 232 + 8 * v35) = startposition_for_thread;
        }

        else
        {
          startposition_for_thread = *(v9 + 168) * ((*(v9 + 240) / *(v9 + 176)) << v57);
          *(v9 + 232) = startposition_for_thread;
        }

        v48 = startposition_for_thread - (v46 << 32);
        *(v9 + 200 + 8 * v35) = v48;
        v49 = (v9 + 8 * v35);
        *v49 = *(v78 + 4 * v35);
        v50 = *(v77 + 4 * v35);
        v49[1] = v50;
        LODWORD(v49) = (*(a2 + 6500) + v39) >> v39;
        v51 = (v9 + 32 + 8 * v35);
        *v51 = v49;
        if (v50 == 1)
        {
          v52 = (*(a2 + 6504) + v40) >> v40;
        }

        else
        {
          v53 = (v50 << 32) - 0x100000000;
          v54 = v53 - 0x110000001;
          if (v53 < 0x110000001)
          {
            v54 = 0;
          }

          if (!*(v9 + 1106))
          {
            v53 = v54;
          }

          v52 = (v53 - v48) / *(v79 + 8 * v35) + 1;
        }

        v51[1] = v52;
        v55 = ((*(a2 + 172) + v40) >> v40) + 5;
        *(v36 + 4 * v35) = v55;
        v56 = v35 ? 1 : *(v73 + 44);
        *(v80 + 4 * v35) = v56;
        v58 = *(a2 + 24) == 2 && *(a2 + 48) > 1;
        v59 = aj_rowbuffer_add_block(a3 + 38, *v51, v56 + v55 + v58, 0x10uLL);
        if (v59)
        {
          break;
        }

        if (*(v36 + 4 * v35) >= 1)
        {
          v60 = 0;
          do
          {
            buffer = aj_rowbuffer_get_buffer(a3 + 38, *v51);
            *(v37 + 8 * v60) = buffer;
            if (!buffer)
            {
              goto LABEL_66;
            }
          }

          while (++v60 < *(v36 + 4 * v35));
        }

        if (*(v80 + 4 * v35) >= 1)
        {
          v62 = 0;
          while (1)
          {
            v63 = aj_rowbuffer_get_buffer(a3 + 38, *v51);
            *(v38 + 8 * v62) = v63;
            if (!v63)
            {
              break;
            }

            if (++v62 >= *(v80 + 4 * v35))
            {
              goto LABEL_59;
            }
          }

LABEL_66:
          v64 = 1;
          goto LABEL_67;
        }

LABEL_59:
        *(v9 + 944 + 4 * v35) = 0;
        *(v9 + 960 + 4 * v35) = 0;
        v37 -= 168;
        v38 -= 16;
        *(v9 + 992 + 4 * v35) = 0;
        if (v76 <= 1)
        {
          goto LABEL_60;
        }
      }

      v64 = v59;
    }
  }

  else
  {
    v64 = 6;
  }

LABEL_67:
  v71 = *MEMORY[0x277D85DE8];
  return v64;
}

void aj_bufferproc_resize_terminate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = *(v3 + 1112);
    if (v6)
    {
      vImageDestroyResamplingFilter(v6);
    }

    if (*(v3 + 1104) && *(a2 + 6464) >= 1)
    {
      v7 = 0;
      v8 = v3 + 976;
      v9 = v3 + 272;
      v10 = v3 + 1088;
      v11 = v3 + 1008;
      do
      {
        if (*(v8 + 4 * v7) >= 1)
        {
          v12 = 0;
          do
          {
            aj_rowbuffer_return_buffer((a3 + 152), *(v9 + 8 * v12));
            *(v9 + 8 * v12++) = 0;
          }

          while (v12 < *(v8 + 4 * v7));
        }

        if (*(v10 + 4 * v7) >= 1)
        {
          v13 = 0;
          do
          {
            aj_rowbuffer_return_buffer((a3 + 152), *(v11 + 8 * v13));
            *(v11 + 8 * v13++) = 0;
          }

          while (v13 < *(v10 + 4 * v7));
        }

        ++v7;
        v9 += 168;
        v11 += 16;
      }

      while (v7 < *(a2 + 6464));
    }

    free(v3);
  }
}

_BYTE *outbuffer_drain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  v7 = *(a2 + 6464);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 568);
    v10 = (v5 + 1008);
    v11 = v27;
    do
    {
      v12 = *(v5 + 1072 + 4 * v8);
      v13 = v10;
      v14 = v11;
      v15 = v9;
      if (v12 >= 1)
      {
        do
        {
          *v14++ = *v15;
          v16 = *v13++;
          *v15++ = v16;
          --v12;
        }

        while (v12);
      }

      ++v8;
      v9 += 16;
      v11 += 16;
      v10 += 2;
    }

    while (v8 != v7);
  }

  result = (*v6)(v6, a2, a3, *(v5 + 1072), *(v5 + 72));
  v18 = *(v5 + 72) + *(v5 + 1072);
  *(v5 + 72) = v18;
  if (v18 >= *(v5 + 36) && !*(a3 + 1082))
  {
    *(v5 + 264) = 1;
  }

  if (*(a2 + 6464) >= 1)
  {
    v19 = 0;
    v20 = v5 + 1072;
    v21 = v5 + 32;
    v22 = a3 + 568;
    v23 = v5 + 1008;
    v24 = v27;
    do
    {
      if (*(v20 + 4 * v19) >= 1)
      {
        v25 = 0;
        do
        {
          aj_rowbuffer_return_buffer((a3 + 152), *(v22 + 8 * v25));
          *(v22 + 8 * v25) = *&v24[8 * v25];
          result = aj_rowbuffer_get_buffer((a3 + 152), *(v21 + 8 * v19));
          *(v23 + 8 * v25++) = result;
        }

        while (v25 < *(v20 + 4 * v19));
      }

      *(v20 + 4 * v19++) = 0;
      v22 += 128;
      v24 += 16;
      v23 += 16;
    }

    while (v19 < *(a2 + 6464));
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_reduce_init_unpack(uint64_t a1, unint64_t a2, void *a3, int **a4, void *a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  *a4 = a6;
  result = aj_imageinfo_init(a6, a4);
  if (!result)
  {
    aj_reset_mcustate(a5, a7);
    result = aj_init_huffman(a6, a4);
    if (!result)
    {
      result = init_reduce(a2, a4, a3, a1, a8);
      if (!result)
      {
        v17 = 0;
        v18 = a4 + 1;
        v19 = a2 + 135592;
        v20 = 1;
        do
        {
          v21 = v20;
          v22 = &v18[2 * v17];
          if (*v22)
          {
            aj_huffman_encode_init_lookups(*v22, (*v22 + 16), v19 + (v17 << 11), 0);
          }

          v23 = v22[1];
          if (v23)
          {
            aj_huffman_encode_init_lookups(v23, (v23 + 16), v19 + (v17 << 11) + 1024, a2 + 139688 + (v17 << 10));
          }

          v20 = 0;
          v17 = 1;
        }

        while ((v21 & 1) != 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t init_reduce(unint64_t a1, int **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 20) * *(a2 + 23);
  *(a1 + 141744) = a2;
  v11 = *(a4 + 8);
  if (v11)
  {
    free(v11);
  }

  v12 = malloc_type_calloc(1uLL, 132 * v10, 0x1000040417DB209uLL);
  *(a4 + 8) = v12;
  *a1 = v12;
  if (!v12)
  {
    aj_log_error(0, "Could not allocate memory for block buffers.");
    return 6;
  }

  v85 = (a1 + 89604);
  v13 = *(a2 + 20);
  v14 = v13 * *(a2 + 22);
  v15 = &v12[66 * v14];
  v13 *= 33;
  *(a1 + 8) = v15;
  *(a1 + 16) = &v15[2 * v13];
  v16 = &v12[66 * v10];
  v17 = &v16[66 * v14];
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = &v17[2 * v13];
  *(a1 + 134848) = vextq_s8(*(a1 + 134872), *(a1 + 134872), 8uLL);
  v83 = (a1 + 44676);
  determine_max_bits(&(*a2)[64 * (*a2)[12] + 22], (a1 + 44688));
  v18 = *a2;
  if (**a2 >= 2)
  {
    v19 = v18[13];
    if (v19 == v18[14])
    {
      determine_max_bits(&v18[64 * v19 + 22], (a1 + 89616));
      v20 = *(a1 + 89824);
      *(a1 + 134736) = *(a1 + 89808);
      *(a1 + 134752) = v20;
      v21 = *(a1 + 89856);
      *(a1 + 134768) = *(a1 + 89840);
      *(a1 + 134784) = v21;
      v22 = *(a1 + 89760);
      *(a1 + 134672) = *(a1 + 89744);
      *(a1 + 134688) = v22;
      v23 = *(a1 + 89792);
      *(a1 + 134704) = *(a1 + 89776);
      *(a1 + 134720) = v23;
      v24 = *(a1 + 89696);
      *(a1 + 134608) = *(a1 + 89680);
      *(a1 + 134624) = v24;
      v25 = *(a1 + 89728);
      *(a1 + 134640) = *(a1 + 89712);
      *(a1 + 134656) = v25;
      v26 = *(a1 + 89632);
      *(a1 + 134544) = *(a1 + 89616);
      *(a1 + 134560) = v26;
      v27 = *(a1 + 89664);
      *(a1 + 134576) = *(a1 + 89648);
      *(a1 + 134592) = v27;
    }

    else
    {
      *(a1 + 89616) = 11;
      *(a1 + 134544) = 11;
      memset_pattern16((a1 + 89620), &unk_240AB5B80, 0xFCuLL);
      memset_pattern16((a1 + 134548), &unk_240AB5B80, 0xFCuLL);
    }
  }

  v28 = 12 * (*a5)(38);
  v29 = v28 + 16 * (*a5)(9);
  v30 = v29 + 5544 * (*a5)(15);
  if (**a2 >= 2)
  {
    v31 = v30 + 12 * (*a5)(23);
    v32 = v31 + 16 * (*a5)(9);
    v30 = v32 + 5544 * (*a5)(15);
  }

  v33 = *(a4 + 16);
  if (v33)
  {
    free(v33);
  }

  v34 = malloc_type_calloc(1uLL, v30, 0xFA774A5FuLL);
  *(a4 + 16) = v34;
  if (!v34)
  {
    aj_log_error(0, "Could not allocate memory for contexts.");
    return 6;
  }

  v35 = v34;
  v79 = a3;
  v80 = a2;
  v36 = **a2;
  if (v36 >= 1)
  {
    v37 = 0;
    v38 = (a1 + 44680);
    do
    {
      if (v37)
      {
        v39 = 4;
      }

      else
      {
        v39 = 5;
      }

      *(v38 - 2) = 1 << v39;
      *(v38 - 1) = v39;
      *v38 = 0x300000008;
      ++v37;
      v38 += 5616;
    }

    while (v36 != v37);
  }

  for (i = 96; i != 192; i += 8)
  {
    v41 = 1 << *v83;
    v42 = *(a1 + 44688) - *(a1 + 44676);
    *(a1 + i) = v35;
    (*(a5 + 24))(a1 + 134832, v35, (v42 + v41), 1);
    v35 += (*a5)((v42 + v41));
  }

  v82 = a1 + 44688;
  do
  {
    *(a1 + i) = v35;
    (*(a5 + 24))(a1 + 134832, v35, 9, 1);
    v35 += (*a5)(9);
    i += 8;
  }

  while (i != 320);
  v84 = a1 + 134832;
  v43 = 0;
  v81 = a1;
  v44 = a1 + 320;
  do
  {
    v45 = 0;
    ++v43;
    do
    {
      v46 = v83[2];
      v47 = 1 << v46;
      v48 = *(v82 + 4 * v43) - v46;
      *(v44 + v45) = v35;
      (*(a5 + 24))(v84, v35, (v48 + (1 << v46)), 1);
      v35 += (*a5)((v48 + v47));
      v45 += 8;
    }

    while (v45 != 704);
    v44 += 704;
  }

  while (v43 != 63);
  v49 = v80;
  v50 = *v80;
  v51 = **v80;
  if (v51 <= 1)
  {
    v65 = v81;
    v66 = v84;
  }

  else
  {
    v52 = 0;
    v53 = v85;
    do
    {
      v54 = 1 << *v85;
      v55 = v85[3] - *v85;
      *(v81 + 45024 + v52) = v35;
      *(v81 + 89952 + v52) = v35;
      (*(a5 + 24))(v84, v35, (v55 + v54), 1);
      v35 += (*a5)((v55 + v54));
      v52 += 8;
    }

    while (v52 != 96);
    for (j = 0; j != 128; j += 8)
    {
      *(v81 + 45120 + j) = v35;
      *(v81 + 90048 + j) = v35;
      (*(a5 + 24))(v84, v35, 9, 1);
      v35 += (*a5)(9);
    }

    v57 = 0;
    v58 = v81 + 45248;
    v59 = v81 + 90176;
    do
    {
      v60 = 0;
      ++v57;
      do
      {
        v61 = v53[2];
        v62 = 1 << v61;
        v63 = v85[v57 + 3] - v61;
        *(v58 + v60) = v35;
        *(v59 + v60) = v35;
        (*(a5 + 24))(v84, v35, (v63 + (1 << v61)), 1);
        v64 = (v63 + v62);
        v53 = v85;
        v35 += (*a5)(v64);
        v60 += 8;
      }

      while (v60 != 704);
      v58 += 704;
      v59 += 704;
    }

    while (v57 != 63);
    v49 = v80;
    v65 = v81;
    v50 = *v80;
    v51 = **v80;
    v66 = v84;
  }

  v68 = v79;
  if (v51 >= 1)
  {
    v69 = 0;
    v70 = v50 + 843;
    v71 = v49 + 1;
    v72 = v65 + 135592;
    v73 = vaddq_s64(vdupq_n_s64(v65), xmmword_240AB5B70);
    v74 = 44928 * v51;
    do
    {
      v75 = *(v70 - 4);
      v76 = *v70;
      v77 = (v65 + 44968 + v69);
      *v77 = v68;
      v68[4] = v71[2 * v75];
      v68[5] = v71[2 * v76 + 1];
      v68[84] = v72 + (v75 << 11);
      v68[85] = v72 + (v76 << 11) + 1024;
      v68[86] = v65 + 139688 + (v76 << 10);
      v78 = (v65 + v69);
      v78[5].i64[0] = v66;
      v78[5].i64[1] = a5;
      v78[2809] = v73;
      *(v77 - 1) = v65 + 135464;
      v69 += 44928;
      ++v70;
      v68 += 196;
    }

    while (v74 != v69);
  }

  return 0;
}

uint64_t aj_reduce_init_pack(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int **a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  *a3 = a6;
  *a4 = a6;
  aj_reset_mcustate((a5 + 112), a7);
  v15 = *a3;
  *a5 = 0;
  if (*(v15 + 84))
  {
    result = 3;
  }

  else
  {
    *(a3 + 6892) = 0x100000001;
    *(a3 + 6804) = 0;
    *(a3 + 168) = 1;
    *(a3 + 6612) = 0;
    v18 = *(v15 + 8);
    v17 = *(v15 + 12);
    *(a3 + 6484) = v18;
    *(a3 + 6488) = v17;
    *(a3 + 6580) = 0;
    *(a3 + 6824) = 0;
    *(a3 + 6816) = 0;
    *(a3 + 6828) = v18;
    *(a3 + 6832) = v17;
    *(a3 + 6884) = 1;
    result = aj_compute_helpers(a3);
    if (!result)
    {
      v19 = a3 + 192;
      result = init_reduce(a2, *(a3 + 8), (a3 + 192), a1, a8);
      if (!result)
      {
        result = aj_init_huffman(a6, a4);
        if (!result)
        {
          if (*a6 >= 1)
          {
            v20 = 0;
            do
            {
              aj_init_component(a3, v19, v20++, 1, 0);
              v19 += 1568;
            }

            while (v20 < *a6);
          }

          *(a3 + 6948) = 1;
          result = aj_init_decode_jobs(a3, a5, 0, 0, 1);
          if (!result)
          {
            v21 = 0;
            v22 = 88;
            do
            {
              v23 = 0;
              v24 = *a3 + 88;
              v25 = *a3 + v22;
              do
              {
                *(v36 + aj_glob_zigzag[v23]) = *(v25 + v23 * 4);
                ++v23;
              }

              while (v23 != 64);
              result = 0;
              v26 = v36[13];
              v27 = (v24 + (v21 << 8));
              v27[12] = v36[12];
              v27[13] = v26;
              v28 = v36[15];
              v27[14] = v36[14];
              v27[15] = v28;
              v29 = v36[9];
              v27[8] = v36[8];
              v27[9] = v29;
              v30 = v36[11];
              v27[10] = v36[10];
              v27[11] = v30;
              v31 = v36[5];
              v27[4] = v36[4];
              v27[5] = v31;
              v32 = v36[7];
              v27[6] = v36[6];
              v27[7] = v32;
              v33 = v36[1];
              *v27 = v36[0];
              v27[1] = v33;
              v34 = v36[3];
              v27[2] = v36[2];
              v27[3] = v34;
              ++v21;
              v22 += 256;
            }

            while (v21 != 4);
          }
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

int *determine_max_bits(int *result, int *a2)
{
  if (*result >= 2)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      if (v3 > 0x1F)
      {
        break;
      }

      v5 = 1 << v3++;
    }

    while (v5 <= *result);
    v2 = 13 - v4;
  }

  else
  {
    v2 = 11;
  }

  *a2 = v2;
  for (i = 1; i != 64; ++i)
  {
    v7 = result[i];
    if (v7 >= 2)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        if (v9 > 0x1F)
        {
          break;
        }

        v11 = 1 << v9++;
      }

      while (v11 <= v7);
      v8 = 12 - v10;
    }

    else
    {
      v8 = 10;
    }

    a2[i] = v8;
  }

  return result;
}

uint64_t *recode_open(uint64_t a1, uint64_t *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (a1)
    {
      aj_log_error("Recode", "applejpeg_memory argument provided. This is deprecated and will be ignored.");
    }

    if (a2 && a3)
    {
      aj_log_error("Recode", "Cannot have both file input AND memory input");
LABEL_26:
      v11 = 8;
LABEL_27:
      v8 = 0;
      *a4 = v11;
      return v8;
    }

    if (!(a2 | a3))
    {
      aj_log_error("Recode", "Input cannot be NULL");
      goto LABEL_26;
    }

    if (a3)
    {
      if (!*a3 || !*(a3 + 16))
      {
        aj_log_error("Recode", "Read/Skip callback is missing");
        goto LABEL_26;
      }

      v9 = *(a3 + 40);
      if (v9)
      {
        if (v9 <= 0x3FF)
        {
          aj_log_error("Recode", "Read buff must be at least %d bytes");
          goto LABEL_26;
        }

        if (v9 >> 31)
        {
          aj_log_error("Recode", "Read buff can't be larger than %d");
          goto LABEL_26;
        }
      }

      if (*(a3 + 48) >> 31)
      {
        aj_log_error("Recode", "The file size can't be larger than %d");
        goto LABEL_26;
      }
    }

    else
    {
      if (!*a2 || (v10 = a2[1]) == 0)
      {
        aj_log_error("Recode", "NULL fields in the memory input struct not allowed");
        goto LABEL_26;
      }

      if (v10 >> 31)
      {
        aj_log_error("Recode", "Memory input buffer size may not be larger than %d");
        goto LABEL_26;
      }
    }

    v13 = malloc_type_calloc(1uLL, 0x5B0uLL, 0x10B004061459EB2uLL);
    if (!v13)
    {
      aj_log_error("Recode", "Could not allocate memory for session object");
      v11 = 6;
      goto LABEL_27;
    }

    v8 = v13;
    applejpeg_recode_clear_options(v13);
    v14 = applejpeg_decode_create(a1);
    *v8 = v14;
    if (v14)
    {
      if (a3)
      {
        v15 = applejpeg_decode_open_file(v14, a3, 0);
      }

      else
      {
        v15 = applejpeg_decode_open_mem(v14, a2);
      }

      v11 = v15;
      *a4 = v15;
      if (*v8)
      {
        if (!v15)
        {
          image_info = applejpeg_decode_get_image_info(*v8, (v8 + 2));
          if (image_info)
          {
            v11 = image_info;
            aj_log_error("Recode", "Could not extract image information");
          }

          else
          {
            if (*(v8 + 8) == 2)
            {
              aj_log_error("Recode", "Recode does not support lossless jpegs");
            }

            else
            {
              if (applejpeg_decode_get_precision(*v8) == 8)
              {
                *a4 = 0;
                return v8;
              }

              aj_log_error("Recode", "Recode only supports 8-bit jpegs");
            }

            v11 = 3;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v11 = *a4;
    }

    if (!v11)
    {
      v11 = 6;
      *a4 = 6;
    }

LABEL_42:
    applejpeg_decode_destroy(*v8);
    *v8 = 0;
    v17 = 140;
    do
    {
      v18 = v8[v17];
      if (v18)
      {
        free(v18);
        v8[v17] = 0;
      }

      v19 = v17 * 8 - 1112;
      ++v17;
    }

    while (v19 < 0x48);
    free(v8);
    goto LABEL_27;
  }

  aj_log_error("Recode", "Error pointer cannot be NULL");
  return 0;
}

uint64_t applejpeg_recode_set_option_outsize(uint64_t a1, int a2, int a3, int a4)
{
  if (a1)
  {
    if (a4 | a3 | a2)
    {
      if (a2 && a4 | a3)
      {
        aj_log_error("Recode", "Can not set both output scale and width/height");
      }

      else
      {
        if ((a3 == 0) == (a4 == 0))
        {
          v4 = 0;
          *(a1 + 204) = a2;
          *(a1 + 192) = a3;
          *(a1 + 196) = a4;
          *(a1 + 1104) = 0;
          return v4;
        }

        aj_log_error("Recode", "Can not set only one output dimension");
      }
    }

    else
    {
      aj_log_error("Recode", "Must set either output scale or width/height");
    }
  }

  return 5;
}

uint64_t applejpeg_recode_set_option_aspect(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 5;
  }

  if (a2 >= 4)
  {
    aj_log_error("Recode", "Unknown aspect option: %d", a2);
    return 5;
  }

  else
  {
    result = 0;
    *(a1 + 200) = a2;
    *(a1 + 208) = a3;
    *(a1 + 1104) = 0;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_orientation(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 5;
  }

  if ((a2 - 9) > 0xFFFFFFF7)
  {
    result = 0;
    *(a1 + 384) = a2;
    *(a1 + 1104) = 0;
  }

  else
  {
    aj_log_error("Recode", "Orientation out of bounds: %u", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_crop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 5;
  }

  if ((a2 & 0x8000000080000000) != 0 || a3 < 1 || a3 <= 0)
  {
    aj_log_error("Recode", "Invalid cropregion: (%d,%d) %dx%d", a2, HIDWORD(a2), a3, HIDWORD(a3));
    return 5;
  }

  else
  {
    v3 = 0;
    *(a1 + 212) = a2;
    *(a1 + 220) = a3;
    *(a1 + 1104) = 0;
  }

  return v3;
}

uint64_t applejpeg_recode_set_option_skip_app0(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 5;
  }

  result = 0;
  *(a1 + 312) = a2;
  *(a1 + 1104) = 0;
  return result;
}

uint64_t applejpeg_recode_set_option_jpeg_quality(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 5;
  }

  if ((a2 - 101) > 0xFFFFFF9B)
  {
    result = 0;
    *(a1 + 248) = a2;
    *(a1 + 228) = 1;
    *(a1 + 1104) = 0;
  }

  else
  {
    aj_log_error("Recode", "Quality out of bounds: %d", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_quantization_tables(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 5;
  }

  for (i = 0; i != 32; i += 8)
  {
    *(a1 + 256 + i) = *(a2 + i);
  }

  v3 = 0;
  *(a1 + 248) = 0;
  *(a1 + 228) = 1;
  *(a1 + 1104) = 0;
  return v3;
}

uint64_t applejpeg_recode_set_option_jpeg_format(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 5;
  }

  if (a2 >= 5)
  {
    aj_log_error("Recode", "Unknown JPEG format: %d", a2);
    return 5;
  }

  else
  {
    result = 0;
    *(a1 + 288) = a2;
    *(a1 + 229) = 1;
    *(a1 + 1104) = 0;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_jpeg_type(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 5;
  }

  if (a2 < 2)
  {
    result = 0;
    *(a1 + 292) = a2;
    *(a1 + 1104) = 0;
  }

  else
  {
    aj_log_error("Recode", "Unknown JPEG type: %d", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_recode_set_option_accelerated_resize(_BYTE *a1, char a2)
{
  if (!a1)
  {
    return 5;
  }

  result = 0;
  a1[388] = a2;
  a1[389] = a2;
  a1[1104] = 0;
  return result;
}

uint64_t applejpeg_recode_set_option_hw_accelerated_resize(_BYTE *a1, int a2, int a3)
{
  if (!a1)
  {
    return 5;
  }

  result = 0;
  a1[388] = a2;
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  a1[389] = v6;
  a1[1104] = 0;
  return result;
}

uint64_t applejpeg_recode_set_option_converter(uint64_t a1, __int128 *a2)
{
  result = 5;
  if (a1 && a2)
  {
    if (*a2 == 1)
    {
      result = 0;
      *(a1 + 390) = 1;
      v4 = *a2;
      *(a1 + 408) = *(a2 + 2);
      *(a1 + 392) = v4;
      *(a1 + 1104) = 0;
    }

    else
    {
      aj_log_error("Recode", "Unknown converter version: %d", *a2);
      return 5;
    }
  }

  return result;
}

void applejpeg_recode_clear_options(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 192) = xmmword_240AB5B90;
    *(a1 + 212) = -1;
    *(a1 + 220) = -1;
    *(a1 + 208) = 0;
    *(a1 + 344) = 0;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    applejpeg_encode_options_init(a1 + 232);
    *(a1 + 384) = 1;
    *(a1 + 388) = 0;
    *(a1 + 390) = 0;
    *(a1 + 1104) = 0;
    *(a1 + 228) = 0;
  }
}

uint64_t applejpeg_recode_get_image_info(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = *a1;

    return applejpeg_decode_get_image_info(v4, a2);
  }

  else
  {
    aj_log_error("Recode", "Cannot take NULL arguments", v2, v3);
    return 8;
  }
}

uint64_t applejpeg_resize_plugin_set_preferred_format(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xA && ((1 << a2) & 0x518) != 0)
  {
    *(result + 904) = a2;
    *(result + 908) = 1;
  }

  return result;
}

uint64_t applejpeg_recode_all_file(_DWORD **a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2)
  {
    aj_log_error("Recode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a2 + 40))
  {
    aj_log_error("Recode", "File write buffer size may not be larger than %d", a2, a3);
    return 8;
  }

  return recode_all(a1, 0, a2, a3);
}

uint64_t recode_all(_DWORD **a1, uint64_t a2, __int128 *a3, void *a4)
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  kdebug_trace();
  (*a1)[1019] = 1;
  if (!*(a1 + 1104))
  {
    if ((*(a1 + 96) - 9) <= 0xFFFFFFF7)
    {
      v87 = *(a1 + 96);
      aj_log_error("Recode", "Orientation must be [1..8]. Got %d");
LABEL_143:
      v21 = 5;
      goto LABEL_144;
    }

    v15 = *(a1 + 51);
    v16 = *(a1 + 49);
    if (v15)
    {
      if (v16 || *(a1 + 48))
      {
        aj_log_error("Recode", "Set scale OR width and height");
        goto LABEL_143;
      }

      if ((v15 - 65) > 0xFFFFFFBF)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v70 = *(a1 + 48);
      if (a1[24])
      {
        if (v70 < 1 || (v16 - 0x10000) < 0xFFFF0001 || v70 >= 0x10000)
        {
          v89 = *(a1 + 48);
          aj_log_error("Recode", "Illegal dimensions (%dx%d). Dimensions must be 0 < x <= 65535.");
          goto LABEL_143;
        }

LABEL_128:
        if (*(a1 + 50) >= 4u)
        {
          aj_log_error("Recode", "Illegal preserve aspect ratio option");
          goto LABEL_143;
        }

        if (*(a1 + 344) && (!a1[45] || !a1[46]))
        {
          aj_log_error("Recode", "A resize plugin must implement create and resize");
          goto LABEL_143;
        }

        if (*(a1 + 390))
        {
          if ((*(a1 + 9) - 3) <= 2)
          {
            aj_log_error("Recode", "Converter requires BGRA data, but the JPEG is CMYK or YCCK. Unable to convert");
            v21 = 3;
            goto LABEL_144;
          }

          if (*(a1 + 98) == 1 && !a1[51])
          {
            aj_log_error("Recode", "The converter callback is NULL");
            goto LABEL_143;
          }
        }

        init_decopt(a1, (a1 + 24), (a1 + 7));
        if (!*(a1 + 228))
        {
          v97[0] = 0;
          v97[1] = 0;
          v95[0] = 0;
          v98.n128_u64[0] = (a1 + 150);
          v98.n128_u64[1] = (a1 + 158);
          *&v99 = a1 + 166;
          *(&v99 + 1) = a1 + 174;
          qtables = applejpeg_decode_get_qtables(*a1, &v98, v95, v97);
          if (qtables)
          {
            v21 = qtables;
            goto LABEL_144;
          }

          for (i = 0; i != 4; ++i)
          {
            a1[i + 32] = v98.n128_u64[*(v97 + i)];
          }

          *(a1 + 62) = 0;
        }

        if (!*(a1 + 229))
        {
          *(a1 + 72) = applejpeg_decode_get_chroma_subsampling(*a1);
        }

        *(a1 + 1104) = 1;
        if (*(a1 + 49))
        {
          goto LABEL_156;
        }

        v81 = *(a1 + 48);
        if (v81)
        {
          goto LABEL_156;
        }

        v84 = *(a1 + 51);
        if (v84 > 8 || ((1 << v84) & 0x116) == 0)
        {
          goto LABEL_157;
        }

        if (*(a1 + 229))
        {
          if (v84 != 8)
          {
            goto LABEL_169;
          }

          v85 = *(a1 + 72);
          if (v85 != applejpeg_decode_get_chroma_subsampling(*a1))
          {
            goto LABEL_156;
          }

          if (*(a1 + 51) != 8)
          {
LABEL_169:
            if (*(a1 + 72) != 3)
            {
              goto LABEL_156;
            }
          }
        }

        LOBYTE(v81) = 0;
        v86 = *(a1 + 5);
        if (v86 == 1 || v86 > 3)
        {
          goto LABEL_157;
        }

        if (*(a1 + 56) == -1)
        {
          LOBYTE(v81) = *(a1 + 55) == -1 && *(a1 + 53) == -1 && *(a1 + 54) == -1 && *(a1 + 96) == 1 && *(a1 + 390) == 0;
          goto LABEL_157;
        }

LABEL_156:
        LOBYTE(v81) = 0;
LABEL_157:
        *(a1 + 1105) = v81;
        goto LABEL_2;
      }
    }

    v88 = *(a1 + 51);
    aj_log_error("Recode", "Unsupported scale. Scale: %d.");
    goto LABEL_143;
  }

LABEL_2:
  v10 = *(a1 + 344) == 0;
  if (*(a1 + 388))
  {
    if (*(a1 + 344) && a1[45] && a1[46])
    {
      v10 = 0;
    }

    else
    {
      v11 = plugin_vimage_destroy;
      v12 = plugin_vimage_resize;
      v13 = plugin_vimage_create;
      if (*(a1 + 389))
      {
        v14 = 4;
        v11 = plugin_iosaccelerator_destroy;
        v12 = plugin_iosaccelerator_resize;
        v13 = plugin_iosaccelerator_create;
        if (*(a1 + 96) <= 1u)
        {
          if (*(a1 + 34))
          {
            v14 = 4;
          }

          else
          {
            v14 = 8;
          }

          v11 = plugin_iosaccelerator_destroy;
          v12 = plugin_iosaccelerator_resize;
          v13 = plugin_iosaccelerator_create;
        }
      }

      else
      {
        v14 = 4;
      }

      v10 = 0;
      *(a1 + 344) = 1;
      a1[44] = 0;
      a1[45] = v13;
      a1[46] = v12;
      a1[47] = v11;
      *(a1 + 226) = v14;
      *(a1 + 227) = 1;
    }
  }

  v96 = 0;
  LODWORD(v97[0]) = 0;
  v94 = 0;
  v95[0] = 0;
  v92 = 0;
  v98 = 0uLL;
  if (v10)
  {
    goto LABEL_38;
  }

  v17 = *(a1 + 33);
  v93 = v17;
  if ((!*(a1 + 21) || !*(a1 + 22)) && v17 <= 8 && ((1 << v17) & 0x116) != 0)
  {
    goto LABEL_38;
  }

  if (aj_calculate_dimensions(a1 + 14, (*a1 + 30), v97, v95, &v96, &v94, &v98, &v93, &v92))
  {
    goto LABEL_38;
  }

  v18 = v93;
  if (v93 >= 2)
  {
    v18 = v93 >> ((*a1)[33] / v93 < *(a1 + 22));
  }

  v19 = v98.n128_u32[2] / v18;
  if (v98.n128_u32[2] / v18 == v96 && v98.n128_u32[3] / v18 == v94)
  {
    goto LABEL_38;
  }

  if (*(a1 + 21) && *(a1 + 22) && *(a1 + 23) == 1)
  {
    if (v96 != LODWORD(v97[0]))
    {
      goto LABEL_38;
    }

    v20 = v94;
    if (v94 != v95[0] || v19 > 4 * v96)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v19 > 4 * v96)
    {
      goto LABEL_38;
    }

    v20 = v94;
  }

  v71 = v98.n128_u32[3] / v18;
  if (v71 > 4 * v20 || v19 < 16 || v96 < 16 || v20 < 16 || v71 <= 15 || a1[30])
  {
    goto LABEL_38;
  }

  v21 = do_recode_plugin(a1, a2, a3, a4);
  if (v21 != 3)
  {
LABEL_181:
    init_decopt(a1, (a1 + 24), (a1 + 7));
    if (!v21)
    {
      goto LABEL_102;
    }

    goto LABEL_38;
  }

  if (a1[45] == plugin_iosaccelerator_create && a1[46] == plugin_iosaccelerator_resize && a1[47] == plugin_iosaccelerator_destroy)
  {
    init_decopt(a1, (a1 + 24), (a1 + 7));
    *(a1 + 344) = 1;
    a1[44] = 0;
    a1[45] = plugin_vimage_create;
    a1[46] = plugin_vimage_resize;
    a1[47] = plugin_vimage_destroy;
    a1[113] = 0x100000004;
    v21 = do_recode_plugin(a1, a2, a3, a4);
    goto LABEL_181;
  }

  init_decopt(a1, (a1 + 24), (a1 + 7));
LABEL_38:
  if (!a1[30] && *(a1 + 96) == 1)
  {
    memset(v100, 0, sizeof(v100));
    v98 = 0u;
    v99 = 0u;
    if (*(a1 + 1105))
    {
      *(a1 + 16) = 14;
    }

    v97[0] = 0;
    *v95 = 0;
    v21 = applejpeg_decode_set_options(*a1, (a1 + 7), v95, 0, v97, &v100[8], &v100[12]);
    if (v21)
    {
      goto LABEL_102;
    }

    v91 = *&v100[12];
    v22 = v97[0];
    a1[53] = v97[0];
    v23 = a1[141];
    if (v23)
    {
      free(v23);
      v22 = a1[53];
    }

    v24 = malloc_type_calloc(1uLL, v22, 0x9EB1FEDFuLL);
    a1[141] = v24;
    a1[52] = v24;
    if (v24)
    {
      if (!*(a1 + 390))
      {
        goto LABEL_50;
      }

      v25 = a1[148];
      if (v25)
      {
        free(v25);
      }

      v26 = malloc_type_calloc(1uLL, a1[53], 0x4EAB80D9uLL);
      a1[148] = v26;
      a1[119] = v26;
      if (v26)
      {
LABEL_50:
        v90 = a3;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *&v100[16] = *(a1 + 16);
        v96 = 1;
        while (1)
        {
          v30 = *a1;
          v31 = (a1 + 52);
          if (*(a1 + 1105))
          {
            v32 = applejpeg_decode_image_row_texture(v30, v31, &v100[8], &v96);
          }

          else
          {
            v32 = applejpeg_decode_image_row(v30, v31, &v100[8], &v96);
          }

          v21 = v32;
          if (v32)
          {
LABEL_147:
            v78 = a1[1];
            if (v78)
            {
LABEL_148:
              applejpeg_encode_destroy(v78);
              a1[1] = 0;
            }

            goto LABEL_102;
          }

          if (v27)
          {
            if (*(a1 + 1105))
            {
              goto LABEL_74;
            }

            v33 = *(a1 + 390);
          }

          else
          {
            v34 = applejpeg_encode_create(0);
            a1[1] = v34;
            if (!v34)
            {
              v21 = 6;
              goto LABEL_102;
            }

            *(v34 + 3320) = 1;
            v35 = a1 + 29;
            if (a2)
            {
              v36 = applejpeg_encode_set_options_mem(v34, v35, &v100[8], a2);
              if (v36)
              {
                goto LABEL_146;
              }
            }

            else
            {
              v36 = applejpeg_encode_set_options_file(v34, v35, &v100[8], v90);
              if (v36)
              {
LABEL_146:
                v21 = v36;
                goto LABEL_147;
              }
            }

            a1[1][858] = (*a1)[884];
            v37 = *&v100[56];
            v38 = *&v100[88];
            *(a1 + 66) = *&v100[72];
            *(a1 + 67) = v38;
            *(a1 + 68) = *&v100[104];
            v39 = *&v100[24];
            *(a1 + 62) = *&v100[8];
            *(a1 + 63) = v39;
            *(a1 + 64) = *&v100[40];
            *(a1 + 65) = v37;
            v33 = *(a1 + 390);
            v40 = v100;
            if (*(a1 + 390))
            {
              v29 = (a1 + 119);
            }

            else
            {
              v29 = &v98;
            }

            if (*(a1 + 390))
            {
              v40 = a1 + 123;
            }

            if (*(a1 + 1105))
            {
              *v40 = 3;
              v41 = a1[52];
              v29->n128_u64[0] = v41;
              v42 = v41 + *&v100[32] * *&v100[24];
              v43 = v33 == 0;
              v44 = &v98.n128_u64[1];
              if (!v43)
              {
                v44 = (a1 + 120);
              }

              *v44 = v42;
              v45 = &v99;
              if (!v43)
              {
                v45 = (a1 + 121);
              }

              *v45 = v98.n128_u64[1] + *&v100[64] * *&v100[56];
LABEL_74:
              v46 = *&v100[52];
              if (*&v100[52] >= v91 - v28)
              {
                v46 = v91 - v28;
              }

              v29[2].n128_u32[3] = v46;
              goto LABEL_80;
            }

            *v40 = 1;
            v98.n128_u64[0] = a1[52];
          }

          v29[2].n128_u32[3] = 1;
          *&v100[12] = 1;
          if (v33)
          {
            (a1[51])(a1[50], &v98, v29);
          }

LABEL_80:
          v47 = v29[2].n128_u32[3];
          v21 = applejpeg_encode_image_row(a1[1], v29, a4);
          if (!v21)
          {
            v28 += v47;
            v27 = 1;
            if (v96)
            {
              continue;
            }
          }

          goto LABEL_147;
        }
      }

      aj_log_error("Recode", "Could not allocate the convert buffer");
    }

    else
    {
      aj_log_error("Recode", "Could not allocate memory for row buffer");
    }

    goto LABEL_101;
  }

  v48 = *a1;
  (*a1)[1019] = 1;
  if (*(a1 + 1105))
  {
    *(a1 + 16) = 14;
  }

  v97[0] = 0;
  v98 = 0u;
  v99 = 0u;
  memset(v100, 0, sizeof(v100));
  v49 = applejpeg_decode_set_options(v48, (a1 + 7), a1 + 53, 0, v97, &v100[8], &v100[12]);
  if (v49)
  {
    goto LABEL_86;
  }

  v50 = a1[141];
  if (v50)
  {
    free(v50);
  }

  v51 = malloc_type_calloc(1uLL, a1[53], 0x321C103CuLL);
  a1[141] = v51;
  a1[52] = v51;
  if (!v51)
  {
    aj_log_error("Recode", "Could not allocate memory for image buffer");
    goto LABEL_101;
  }

  v49 = applejpeg_decode_image_all(*a1, a1 + 52, 1u, &v98);
  if (v49)
  {
LABEL_86:
    v21 = v49;
    goto LABEL_102;
  }

  if (*(a1 + 1105))
  {
    v52 = v98.n128_u64[0];
    if (v98.n128_u64[0])
    {
      if (*&v100[16] == 14)
      {
        v53 = *&v100[24];
        v54 = *&v100[32];
        v55 = *&v100[56];
        v56 = a3;
        v57 = *&v100[64];
        pad_region(v98.n128_u64[0], *&v100[24], *&v100[32], *&v100[40], *&v100[44], *&v100[48], *&v100[52]);
        v58 = (v52 + v53 * v54);
        pad_region(v58, v55, v57, *&v100[72], *&v100[76], *&v100[80], *&v100[84]);
        v59 = &v58[v55 * v57];
        v60 = v57;
        a3 = v56;
        pad_region(v59, v55, v60, *&v100[72], *&v100[76], *&v100[80], *&v100[84]);
      }
    }
  }

  if (*(a1 + 390))
  {
    v61 = a1[148];
    if (v61)
    {
      free(v61);
    }

    v62 = malloc_type_calloc(1uLL, a1[53], 0xC753C467uLL);
    a1[148] = v62;
    if (!v62)
    {
      aj_log_error("Recode", "Could not allocate memory for color conversion buffer");
      goto LABEL_101;
    }

    v63 = (a1 + 119);
    a1[137] = *&v100[112];
    v64 = *&v100[80];
    *(a1 + 131) = *&v100[64];
    *(a1 + 133) = v64;
    *(a1 + 135) = *&v100[96];
    v65 = *&v100[16];
    *(a1 + 123) = *v100;
    *(a1 + 125) = v65;
    v66 = *&v100[48];
    *(a1 + 127) = *&v100[32];
    *(a1 + 129) = v66;
    v67 = v99;
    *(a1 + 119) = v98;
    *(a1 + 121) = v67;
    a1[119] = v62;
    (a1[51])(a1[50], &v98, a1 + 119);
  }

  else
  {
    v63 = &v98;
  }

  v72 = (*a1)[884];
  v73 = applejpeg_encode_create(0);
  a1[1] = v73;
  if (!v73)
  {
LABEL_101:
    v21 = 6;
    goto LABEL_102;
  }

  *(v73 + 3320) = 1;
  v74 = a1 + 29;
  v75 = &v63[2].n128_i64[1];
  if (a2)
  {
    v76 = applejpeg_encode_set_options_mem(v73, v74, v75, a2);
  }

  else
  {
    v76 = applejpeg_encode_set_options_file(v73, v74, v75, a3);
  }

  v21 = v76;
  if (!v76)
  {
    v77 = a1[1];
    *(v77 + 3432) = v72;
    v21 = applejpeg_encode_image_all(v77, v63, a4);
    if (!v21)
    {
      v78 = a1[1];
      goto LABEL_148;
    }
  }

LABEL_102:
  v68 = *a1;
  v69 = a1[1];
  kdebug_trace();
LABEL_144:
  v79 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t applejpeg_recode_all_mem(_DWORD **a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2)
  {
    aj_log_error("Recode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a2 + 8) >> 31)
  {
    aj_log_error("Recode", "Memory buffer size may not be larger than %d");
    return 8;
  }

  return recode_all(a1, a2, 0, a3);
}

void applejpeg_recode_close(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      applejpeg_decode_destroy(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      applejpeg_encode_destroy(v3);
      a1[1] = 0;
    }

    v4 = 140;
    do
    {
      v5 = a1[v4];
      if (v5)
      {
        free(v5);
        a1[v4] = 0;
      }

      v6 = v4 * 8 - 1112;
      ++v4;
    }

    while (v6 < 0x48);

    free(a1);
  }
}

uint64_t init_decopt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  applejpeg_decode_options_init(a3);
  *(a3 + 12) = *(a2 + 20);
  *(a3 + 76) = *(a2 + 12);
  *(a3 + 28) = *a2;
  *(a3 + 36) = *(a2 + 8);
  *(a3 + 72) = *(a2 + 16);
  if ((*(a1 + 36) - 3) > 2)
  {
    if (*(a2 + 198))
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }
  }

  else
  {
    v6 = 15;
  }

  *(a3 + 8) = v6;
  *(a3 + 92) = 0x400000000;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  result = *(a2 + 192);
  if (result >= 2)
  {

    return aj_transforms_from_orientation(result, (a3 + 80), (a3 + 84), (a3 + 88));
  }

  return result;
}

uint64_t do_recode_plugin(_DWORD **a1, uint64_t a2, __int128 *a3, void *a4)
{
  v161[7] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (*(a1 + 16) == 15)
  {
    v8 = 15;
LABEL_7:
    *(a1 + 226) = v8;
    goto LABEL_8;
  }

  if (*(a1 + 390))
  {
    v8 = 4;
    goto LABEL_7;
  }

  if (!*(a1 + 227))
  {
    v8 = 10;
    goto LABEL_7;
  }

  v8 = *(a1 + 226);
LABEL_8:
  v9 = 1;
  if ((v8 - 10) >= 4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(a1 + 228) = v10;
  LODWORD(v145[0]) = 0;
  LODWORD(v159) = 0;
  LODWORD(v158) = 0;
  v11 = *(a1 + 96);
  if (v11 < 2 || v11 > 8)
  {
    v13 = 0;
  }

  else if (((1 << v11) & 0x18) != 0)
  {
    v13 = 1;
  }

  else
  {
    v12 = 1 << v11;
    if ((v12 & 0x60) != 0)
    {
      v9 = 0;
      v13 = 2;
    }

    else
    {
      v9 = (v12 & 0x180) == 0;
      if ((v12 & 0x180) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  v143 = 0;
  v144 = 0;
  v142 = 0uLL;
  *&v147 = 0;
  v160 = 0;
  HIDWORD(v157) = 0;
  *(a1 + 229) = v13;
  format_description = aj_calculate_dimensions(a1 + 14, (*a1 + 30), &v143, &v143 + 1, v145, &v159, &v142, &v157 + 1, &v158);
  if (format_description)
  {
    goto LABEL_57;
  }

  if (!v9)
  {
    v143 = vrev64_s32(v143);
    v15 = v159;
    LODWORD(v159) = v145[0];
    LODWORD(v145[0]) = v15;
  }

  v16 = HIDWORD(v157);
  v17 = *a1;
  if (SHIDWORD(v157) >= 2 && *(v17 + 132) / SHIDWORD(v157) < *(a1 + 22))
  {
    v16 = HIDWORD(v157) >> 1;
    HIDWORD(v157) >>= 1;
  }

  v18 = 136;
  if (v9)
  {
    v18 = 152;
  }

  v19 = 8 * *(v17 + v18);
  v20 = v16 << 6;
  *(a1 + 234) = v16 << 6;
  v21 = *(a1 + 229);
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 == 3)
      {
        v22 = v142.n128_u32[0];
        v23 = v142.n128_u32[2];
LABEL_38:
        v24 = (v23 + v22) % v19;
        if (v24)
        {
          v20 = v20 - v19 + v24;
        }

        goto LABEL_44;
      }

LABEL_40:
      v20 = *(a1 + 235);
      goto LABEL_45;
    }

    v25 = v142.n128_u32[0];
  }

  else
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v22 = v142.n128_u32[1];
        v23 = v142.n128_u32[3];
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    v25 = v142.n128_i32[1];
  }

  v20 += v25 / v19 * v19 - v25;
LABEL_44:
  *(a1 + 235) = v20;
LABEL_45:
  v26 = 2;
  if (v9)
  {
    v26 = 3;
  }

  v27 = v142.n128_i32[v26];
  if (v20 > v27)
  {
    *(a1 + 235) = v27;
    v20 = v27;
  }

  if (*(a1 + 228) == 2 && ((v20 / v16) & 1) != 0)
  {
    if ((v19 / v16))
    {
      v28 = v20 + v19;
    }

    else
    {
      v28 = (v20 + v16) & -v16;
      v142.n128_u32[1] += v20 - v28;
    }

    *(a1 + 235) = v28;
  }

  *(a1 + 33) = v16;
  a1[11] = 0;
  *(a1 + 21) = 0;
  *(a1 + 68) = v142;
  *(a1 + 16) = v8;
  format_description = applejpeg_decode_set_options(v17, (a1 + 7), &v147, 0, &v160, &v144, &v144 + 1);
  if (format_description)
  {
    goto LABEL_57;
  }

  v34 = *(a1 + 235);
  v35 = *(a1 + 234);
  v36 = (v27 - v34) % v35;
  v37 = v34 / SHIDWORD(v157) + v36 / SHIDWORD(v157);
  v38 = v36 + v34;
  v39 = HIDWORD(v144);
  if (v37 != v38 / SHIDWORD(v157))
  {
    v39 = --HIDWORD(v144);
  }

  if (v35 > v34)
  {
    v34 = v35;
  }

  v40 = v34 / SHIDWORD(v157);
  if (v40 >= v39)
  {
    v40 = v39;
  }

  *(a1 + 236) = v40;
  v41 = *(a1 + 226);
  LODWORD(v160) = 0;
  *&v147 = v144;
  *(&v147 + 1) = v143;
  *&v148 = __PAIR64__(v40, v41);
  a1[56] = (a1[45])(a1[44], &v147, a1 + 57, &v160);
  v42 = v160;
  *(a1 + 237) = v160 == 0;
  if (!v42 || (aj_log_error("Recode", "Resize plugin returned error code %d on init", v42), v29 = v160, !v160))
  {
    v43 = *(a1 + 226);
    if (v43 > 9)
    {
      if (v43 == 10)
      {
        v44 = 0;
        v46 = 0;
        v48 = 2;
        v47 = 1;
        v45 = 1;
        v49 = 2;
LABEL_80:
        v50 = *(a1 + 134);
        *(a1 + 233) = v50;
        if (v50)
        {
          *(a1 + 196) = v48;
          *(a1 + 200) = v43;
          *(a1 + 198) = v143;
          v51 = (a1 + 68);
          v52 = v48;
          do
          {
            v53 = *v51;
            v51[26] = *v51;
            v51[41] = v51[4];
            v51[22] = v53;
            ++v51;
            --v52;
          }

          while (v52);
          goto LABEL_83;
        }

        v59 = (v45 & a1[57]) + *(a1 + 114);
        v60 = v143;
        v61 = (v143 & 1) + v143;
        if (v47)
        {
          v62 = v59 * v61;
          v63 = (v62 & 0xFFFFFFFF00000000) != 0;
          v64 = (2 * (v59 / v49)) * (v61 / v48);
          v65 = (v62 + v64);
          v66 = __CFADD__(v62, v64);
          a1[53] = v65;
          if (v63 || (v64 & 0xFFFFFFFF00000000) != 0 || v66)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v71 = v59 * v143;
          v72 = v71 * v46;
          v65 = v72;
          a1[53] = v72;
          if ((v71 & 0xFFFFFFFF00000000) != 0 || (v72 & 0xFFFFFFFF00000000) != 0)
          {
LABEL_111:
            aj_log_error("Recode", "Warning: Output buffer sizes larger than UINT32_MAX not supported.");
            goto LABEL_142;
          }
        }

        v133 = v61;
        v134 = v49;
        v135 = v45;
        v137 = v44;
        v139 = v46;
        v73 = a1[141];
        if (v73)
        {
          free(v73);
          v65 = a1[53];
        }

        v74 = malloc_type_calloc(1uLL, v65, 0x10CC0D73uLL);
        a1[141] = v74;
        a1[52] = v74;
        if (!v74)
        {
          aj_log_error("Recode", "Could not allocate memory for the plugin out buffer");
          goto LABEL_142;
        }

        *(a1 + 196) = v48;
        a1[94] = v74;
        *(a1 + 200) = v43;
        *(a1 + 198) = v143;
        a1[90] = v74;
        v44 = v137;
        if (v47)
        {
          v75 = (v74 + (v59 * v133));
          a1[95] = v75;
          a1[91] = v75;
          a1[86] = v133;
          v76 = 2 * (v133 / v48);
          v77 = 87;
          v46 = v139;
        }

        else
        {
          v46 = v139;
          v76 = v60 * v139;
          v77 = 86;
        }

        v45 = v135;
        v49 = v134;
        a1[v77] = v76;
LABEL_83:
        v54 = *(a1 + 116);
        *(a1 + 232) = v54;
        if (v54)
        {
          v55 = (v144 & 1) + v144;
          v56 = v48;
          v57 = a1;
          while (1)
          {
            v58 = v57[63];
            if (v58 < v55)
            {
              break;
            }

            v57[82] = v57[59];
            v57[78] = v58;
            v57[12] = v58;
            ++v57;
            if (!--v56)
            {
              goto LABEL_121;
            }
          }

          aj_log_error("Recode", "The plugin supplied row buffers are too small");
          v29 = 8;
          goto LABEL_58;
        }

        v67 = *(a1 + 115) + *(a1 + 236);
        v68 = (v45 & v67) + v67;
        if (v47)
        {
          v69 = (v144 & 1) + v144;
        }

        else
        {
          v69 = v144;
        }

        v136 = v69;
        v138 = v46;
        if (v47)
        {
          v70 = v68 * ((v144 & 1) + v144) + 2 * v68 / v49 * (((v144 & 1) + v144) / v48);
        }

        else
        {
          v70 = v144 * v46 * v68;
        }

        v78 = v44;
        v79 = a1[147];
        if (v79)
        {
          free(v79);
        }

        v80 = malloc_type_calloc(1uLL, v70, 0x2A433355uLL);
        a1[147] = v80;
        a1[115] = v80;
        if (v80)
        {
          a1[82] = v80;
          if (v78)
          {
            v46 = v138;
            v81 = v136 * v138;
            v82 = 78;
          }

          else
          {
            a1[78] = v136;
            a1[83] = (v80 + v68 * v136);
            v81 = 2 * (v136 / v48);
            v82 = 79;
            v46 = v138;
          }

          a1[v82] = v81;
LABEL_121:
          if (*(a1 + 390))
          {
            v83 = v46;
            v84 = (*(a1 + 114) * v46 * v143);
            v85 = a1[148];
            if (v85)
            {
              free(v85);
            }

            v86 = malloc_type_calloc(1uLL, v84, 0x9BC40960uLL);
            a1[148] = v86;
            a1[119] = v86;
            if (!v86)
            {
              aj_log_error("Recode", "Unable to allocate the convert buffer");
              goto LABEL_142;
            }

            *(a1 + 246) = v48;
            *(a1 + 250) = v43;
            *(a1 + 249) = *(a1 + 114);
            v87 = v143;
            *(a1 + 248) = v143;
            a1[134] = (v87 * v83);
          }

          v88 = *(a1 + 226);
          v89 = applejpeg_encode_create(0);
          a1[1] = v89;
          if (v89)
          {
            *(v89 + 3320) = 1;
            *(a1 + 200) = v88;
            a1[99] = v143;
            if (*(a1 + 229))
            {
LABEL_128:
              v90 = *(a1 + 107);
              v91 = *(a1 + 109);
              v92 = *(a1 + 103);
              v150 = *(a1 + 105);
              v151 = v90;
              v93 = *(a1 + 111);
              v152 = v91;
              v153 = v93;
              v94 = *(a1 + 101);
              v147 = *(a1 + 99);
              v148 = v94;
              v149 = v92;
              if (*(a1 + 390))
              {
                v95 = *(a1 + 68);
                v152 = *(a1 + 67);
                v153 = v95;
              }

              v96 = a1[1];
              v97 = a1 + 29;
              if (a2)
              {
                v98 = applejpeg_encode_set_options_mem(v96, v97, &v147, a2);
              }

              else
              {
                v98 = applejpeg_encode_set_options_file(v96, v97, &v147, a3);
              }

              v29 = v98;
              a1[1][858] = (*a1)[884];
              if (v98)
              {
                goto LABEL_58;
              }

              v141 = 0;
              initial_cropregion = plugin_get_initial_cropregion(a1, v142.n128_u64[0], v142.n128_u64[1], &v141);
              v107 = v106;
              v108 = 0;
              v109 = v141;
              v140 = (a1 + 76);
              while (1)
              {
                v156 = 0;
                v154 = 0u;
                v155 = 0u;
                v152 = 0u;
                v153 = 0u;
                v150 = 0u;
                v151 = 0u;
                v148 = 0u;
                v149 = 0u;
                v147 = 0u;
                *(a1 + 68) = initial_cropregion;
                v110 = HIDWORD(v107);
                *(a1 + 76) = v107;
                if (!v109 || (v111 = *(a1 + 33), v107 / v111) && SHIDWORD(v107) / v111)
                {
                  if ((v108 & 1) != 0 || (v112 = *(a1 + 229)) == 0)
                  {
                    a1[20] = 0;
                    *(a1 + 39) = 0;
                  }

                  else
                  {
                    *(a1 + 39) = 1;
                    if (v112 > 3)
                    {
                      v114 = 0;
                      v113 = 0;
                    }

                    else
                    {
                      v113 = dword_240AB5BB0[v112 - 1];
                      v114 = 1;
                    }

                    *(a1 + 40) = v114;
                    *(a1 + 41) = v113;
                  }

                  v158 = 0;
                  v159 = 0;
                  v157 = 0;
                  memset(v145, 0, sizeof(v145));
                  v146 = 0;
                  format_description = applejpeg_decode_set_options(*a1, (a1 + 7), &v159, v145, &v158, &v157 + 1, &v157);
                  if (format_description)
                  {
                    goto LABEL_57;
                  }

                  v116 = v146;
                  if (v146 >= 1)
                  {
                    v117 = 0;
                    v118 = 8 * v146;
                    v119 = v161;
                    do
                    {
                      if (v117)
                      {
                        v120 = &a1[v117 / 8 + 78];
                        v121 = *(a1 + 153) / *(a1 + 228);
                      }

                      else
                      {
                        v121 = *(a1 + 153);
                        v120 = a1 + 78;
                      }

                      v122 = *(v145 + v117);
                      *(v119 - 1) = a1[v117 / 8 + 82] + *v120 * v121;
                      *v119 = v122;
                      v117 += 8;
                      v119 += 2;
                    }

                    while (v118 != v117);
                  }

                  v123 = applejpeg_decode_image_all(*a1, &v160, v116, &v147);
                  if (v123)
                  {
                    v29 = v123;
                    aj_log_error("Recode", "Decoder returned error code %d", v123);
                    *(a1 + 155) = *(a1 + 153);
                    *(a1 + 154) = HIDWORD(v149);
                    goto LABEL_58;
                  }

                  v115 = HIDWORD(v149);
                }

                else
                {
                  v115 = 0;
                }

                *(a1 + 155) = *(a1 + 153);
                *(a1 + 154) = v115;
                v124 = (a1[46])(a1[56], a1 + 77, v140, v109);
                if (v124)
                {
                  v29 = v124;
                  aj_log_error("Recode", "Resize plugin returned error code %d on resize()", v124);
                  goto LABEL_58;
                }

                v125 = *(a1 + 153);
                if (*(a1 + 228) >= 2)
                {
                  if (!v109 && (v125 & 1) != 0)
                  {
                    aj_log_error("Recode", "Resize-plugin can't save an odd number of rows when the data fromat is 420f");
                    goto LABEL_206;
                  }

                  if (!v109 && (*v140 & 1) != 0)
                  {
                    aj_log_error("Recode", "Plugin wrote an uneven nbrof rows");
                    goto LABEL_206;
                  }
                }

                if (v125 > *(a1 + 115))
                {
                  aj_log_error("Recode", "Resize-plugin saved more more rows than allowed");
LABEL_206:
                  v29 = 1;
                  goto LABEL_58;
                }

                if (v109 && v125)
                {
                  aj_log_error("Recode", "Resize-plugin saved rows on the last call");
                  goto LABEL_206;
                }

                v126 = *v140;
                if (*v140)
                {
                  *(a1 + 199) = v126;
                  v127 = (a1 + 94);
                  if (*(a1 + 390))
                  {
                    *(a1 + 249) = v126;
                    (a1[51])(a1[50], a1 + 94, a1 + 119);
                    v127 = (a1 + 119);
                  }

                  v29 = applejpeg_encode_image_row(a1[1], v127, a4);
                  if (v29 || v109)
                  {
                    goto LABEL_58;
                  }
                }

                else if (v109)
                {
                  v29 = 0;
                  goto LABEL_58;
                }

                v109 = 0;
                v128 = HIDWORD(initial_cropregion);
                v129 = *(a1 + 229);
                if (v129 > 1)
                {
                  if (v129 != 2)
                  {
                    if (v129 != 3)
                    {
                      goto LABEL_199;
                    }

                    LODWORD(v107) = *(a1 + 234);
                    LODWORD(initial_cropregion) = initial_cropregion - v107;
                    v130 = initial_cropregion <= v142.n128_u32[0];
                    goto LABEL_191;
                  }

                  LODWORD(initial_cropregion) = initial_cropregion + v107;
                  LODWORD(v107) = *(a1 + 234);
                  v131 = v107 + initial_cropregion < (v142.n128_u32[2] + v142.n128_u32[0]);
                }

                else
                {
                  if (v129)
                  {
                    if (v129 != 1)
                    {
                      goto LABEL_199;
                    }

                    v110 = *(a1 + 234);
                    v128 = (HIDWORD(initial_cropregion) - v110);
                    v130 = v128 <= v142.n128_u32[1];
LABEL_191:
                    v109 = v130;
                    goto LABEL_199;
                  }

                  v128 = (HIDWORD(initial_cropregion) + HIDWORD(v107));
                  v110 = *(a1 + 234);
                  v131 = v110 + v128 < (v142.n128_u32[3] + v142.n128_u32[1]);
                }

                v109 = !v131;
LABEL_199:
                initial_cropregion = aj_limit_region(initial_cropregion | (v128 << 32), v107 | (v110 << 32), v142.n128_i64[0]);
                v107 = v132;
                v108 = 1;
              }
            }

            *&v149 = 0;
            v147 = 0u;
            v148 = 0u;
            format_description = aj_get_format_description(v88, &v147);
            if (!format_description)
            {
              v99 = DWORD2(v148);
              v100 = HIDWORD(v148);
              chroma_subsampling = applejpeg_decode_get_chroma_subsampling(*a1);
              subsampling_from_jpeg_format = aj_get_subsampling_from_jpeg_format(chroma_subsampling);
              if (v99 <= subsampling_from_jpeg_format)
              {
                v103 = subsampling_from_jpeg_format;
              }

              else
              {
                v103 = v99;
              }

              if (v100 <= SHIDWORD(subsampling_from_jpeg_format))
              {
                v104 = HIDWORD(subsampling_from_jpeg_format);
              }

              else
              {
                v104 = v100;
              }

              *(a1 + 72) = aj_get_jpeg_format_from_subsampling(v103 | (v104 << 32), (*a1)[30]);
              goto LABEL_128;
            }

LABEL_57:
            v29 = format_description;
            goto LABEL_58;
          }
        }

        else
        {
          aj_log_error("Recode", "Could not allocate memory for the plugin input buffer");
        }

LABEL_142:
        v29 = 6;
        goto LABEL_58;
      }

      if (v43 != 15)
      {
        goto LABEL_103;
      }
    }

    else if ((v43 - 3) >= 2)
    {
      if (v43 == 8)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 1;
        v48 = 2;
LABEL_79:
        v49 = 1;
        goto LABEL_80;
      }

LABEL_103:
      aj_log_error("Recode", "Unsupported format");
      v29 = 3;
      goto LABEL_58;
    }

    v47 = 0;
    v45 = 0;
    v46 = 4;
    v44 = 1;
    v48 = 1;
    goto LABEL_79;
  }

LABEL_58:
  v30 = a1[47];
  if (v30 && *(a1 + 237))
  {
    v30(a1[56]);
    a1[56] = 0;
  }

  *(a1 + 237) = 0;
  v31 = a1[1];
  if (v31)
  {
    applejpeg_encode_destroy(v31);
    a1[1] = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t plugin_get_initial_cropregion(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  v6 = a2;
  v7 = HIDWORD(a2);
  v8 = *(a1 + 916);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v11 = *(a1 + 940);
      v10 = a3 & 0xFFFFFFFF00000000 | v11;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_8;
      }

      v11 = *(a1 + 940);
      v10 = a3 & 0xFFFFFFFF00000000 | v11;
      v6 = v6 + a3 - v11;
    }

    v12 = v11 < a3;
    goto LABEL_13;
  }

  if (!v8)
  {
    v9 = *(a1 + 940);
    v10 = a3 | (v9 << 32);
    goto LABEL_10;
  }

  if (v8 != 1)
  {
LABEL_8:
    v10 = a3;
    return aj_limit_region(v6 | (v7 << 32), v10, a2);
  }

  v9 = *(a1 + 940);
  v10 = a3 | (v9 << 32);
  v7 = v7 + HIDWORD(a3) - v9;
LABEL_10:
  v12 = v9 < SHIDWORD(a3);
LABEL_13:
  v13 = !v12;
  *a4 = v13;
  return aj_limit_region(v6 | (v7 << 32), v10, a2);
}

uint64_t aj_limit_region(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (SHIDWORD(a1) <= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = HIDWORD(a1);
  }

  return v3 | (v4 << 32);
}

char *pad_region(char *result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (result)
  {
    v11 = result;
    if (a2 > a6 + a4 && a7 >= 1)
    {
      v12 = &result[a5 * a2 + a6 + a4];
      v13 = a2 - (a6 + a4);
      v14 = a7;
      do
      {
        result = memset(v12, *(v12 - 1), v13);
        v12 += a2;
        --v14;
      }

      while (v14);
    }

    v15 = a7 + a5;
    v16 = a3 - (a7 + a5);
    if (a3 > v15 && v16 >= 1)
    {
      v17 = a2;
      v18 = &v11[v15 * a2];
      v19 = &v18[-a2];
      do
      {
        result = memcpy(v18, v19, v17);
        v18 += v17;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

void aj_encode_release_scan_buffers(uint64_t a1)
{
  if (*(a1 + 19808) >= 1)
  {
    v2 = 0;
    v3 = (*(a1 + 19816) + 176);
    do
    {
      if (*v3)
      {
        free(*v3);
        *v3 = 0;
      }

      v4 = *(v3 - 2);
      if (v4)
      {
        free(v4);
        *(v3 - 2) = 0;
      }

      v5 = *(v3 - 8);
      if (v5)
      {
        free(v5);
        *(v3 - 8) = 0;
      }

      ++v2;
      v3 += 37;
    }

    while (v2 < *(a1 + 19808));
  }
}

unsigned int *aj_reset_row_ptrs(unsigned int *result, void *a2, uint64_t a3)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (result[3340] == 14)
  {
    v3 = *(result + 2471);
    v4 = *(result + 2472);
    v5 = *(result + 2473);
  }

  else
  {
    v3 = result[3354];
    v6 = result[4];
    v4 = (result[5] * v3) / v6;
    v5 = (result[6] * v3) / v6;
    v15[3] = (result[7] * v3) / v6;
  }

  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v5;
  v7 = *result;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = result[i + 8];
      if (v9 >= 1)
      {
        v10 = 0;
        LODWORD(v11) = 8 * v9;
        v12 = v15[i];
        if (v11 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v11;
        }

        v13 = a2;
        do
        {
          *v13++ = *(a3 + 8 * i) + v10;
          v10 += v12;
          --v11;
        }

        while (v11);
      }

      a2 += 16;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_allocate_enc_buffers(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 3370;
    do
    {
      v5 += *v6;
      v6 += 392;
      --v4;
    }

    while (v4);
    v7 = v5 << 6;
  }

  v8 = (v7 * a1[3358]);
  *(a1 + 1681) = v8;
  v9 = a2 + 224;
  v10 = a2[224];
  if (v10)
  {
    free(v10);
    *v9 = 0;
    v8 = *(a1 + 1681);
  }

  v11 = malloc_type_calloc(1uLL, v8, 0x42087983uLL);
  *v9 = v11;
  if (v11)
  {
    v12 = *a1;
    if (v12 >= 1)
    {
      v13 = a1[3358] << 6;
      v14 = a1 + 3370;
      v15 = a2 + 224;
      do
      {
        *v15++ = v11;
        v11 += (*v14 * v13);
        v14 += 392;
        --v12;
      }

      while (v12);
    }

    aj_reset_row_ptrs(a1, a2, (a2 + 224));
    return 0;
  }

  else
  {
    aj_log_error("EncodeInit", "Could not allocate memory for mcu buffer");
    return 6;
  }
}

uint64_t aj_init_out_stream(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 2);
  *(result + 64) = v4;
  *(result + 40) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(result + 24) = v3;
  *(result + 32) = v5;
  *result = 0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 20) = v4;
  return result;
}

uint64_t aj_encode_init(void *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = (a2 + 19768);
  v15 = a2 + 13268;
  *(a2 + 13284) = 0;
  *(a2 + 13268) = xmmword_240AB5BC0;
  v16 = a4[2];
  *(a2 + 13360) = v16;
  v17 = *(a5 + 60);
  *(a2 + 19800) = v17 == 1;
  *(a2 + 19804) = v17 == 2;
  v18 = aj_encode_buffers_baseline;
  if (v17 == 1)
  {
    v18 = aj_encode_buffers_progressive;
  }

  *(a2 + 19752) = v18;
  v171 = (a2 + 19768);
  if (v16 != 14)
  {
    *(a2 + 19832) = xmmword_240AB5BD0;
    v28 = (a2 + 19832);
    *(a2 + 19848) = 1;
    v29 = (a2 + 19844);
    switch(v16)
    {
      case 0:
        *(a2 + 13444) = 3;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0148;
        goto LABEL_54;
      case 1:
        *(a2 + 13444) = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A01C0;
        goto LABEL_54;
      case 2:
        *(a2 + 13444) = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A01E8;
        goto LABEL_54;
      case 3:
        *(a2 + 13444) = 4;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0170;
        goto LABEL_54;
      case 4:
        *(a2 + 13444) = 4;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0198;
        goto LABEL_54;
      case 5:
        v36 = 1;
        goto LABEL_52;
      case 6:
        *(a2 + 13444) = 3;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0238;
        goto LABEL_54;
      case 8:
      case 9:
        *v28 = 1;
        if (v16 == 9)
        {
          *(a2 + 19836) = 0x100000002;
        }

        *(a2 + 19848) = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0260;
        goto LABEL_54;
      case 10:
      case 11:
        *v28 = 1;
        if (v16 == 11)
        {
          *(a2 + 19836) = 0x100000002;
        }

        *v29 = 0x200000002;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A0288;
        goto LABEL_54;
      case 12:
      case 13:
        *v28 = 1;
        if (v16 == 13)
        {
          *(a2 + 19836) = 0x100000002;
        }

        *v29 = 2;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
          goto LABEL_55;
        }

        v35 = &off_2852A02B0;
        goto LABEL_54;
      case 15:
        *(a2 + 13444) = 4;
        v31 = aj_deinterleave_8888;
        goto LABEL_56;
      case 16:
      case 17:
      case 20:
        if (v16 == 20)
        {
          v30 = 6;
        }

        else
        {
          v30 = 8;
        }

        *(a2 + 13444) = v30;
        *(a2 + 19744) = 0;
        if (v17 != 2)
        {
          aj_log_error("EncodeInit", "16-bit RGB only supported for lossless encoding");
          return 3;
        }

        v31 = 0;
LABEL_60:
        if (*v28)
        {
          v38 = v14[5].i32[0];
          v39 = *a4 & 1;
          if (v38 != 2)
          {
            v39 = 0;
          }

          v40 = v39 + *a4;
          v41 = *(a4 + 10);
          v42 = v40;
          if (v41)
          {
            v42 = *(a4 + 10);
            if (v41 < v40)
            {
              goto LABEL_78;
            }
          }

          *(a2 + 19768) = v42;
          v43 = *(a4 + 11);
          v44 = 2 * (v40 / v38);
          if (v43)
          {
            if (v43 < v44)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v43 = v44;
          }

          *(a2 + 19776) = v43;
          if (v31)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v47 = *(a4 + 10);
          v48 = *(a2 + 13444);
          if (v47)
          {
            if (v47 < v48 * *a4)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v47 = v48 * *a4;
          }

          *(a2 + 19768) = v47;
          if (v31)
          {
            goto LABEL_87;
          }
        }

        if (v14[2].i32[1])
        {
          goto LABEL_87;
        }

        aj_log_error("EncodeInit", "Colortransform function pointer is NULL.");
        return 5;
      case 18:
        v36 = 2;
LABEL_52:
        *(a2 + 13444) = v36;
        v34 = *(a5 + 56);
        if (v34 >= 5)
        {
LABEL_55:
          aj_log_error("EncodeInit", "Unsupported output format.");
          v14 = v171;
          v31 = 0;
        }

        else
        {
          v35 = &off_2852A0210;
LABEL_54:
          v31 = v35[v34];
        }

LABEL_56:
        *(a2 + 19744) = v31;
        v16 = *(a2 + 13360);
        if (v16 == 14)
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      default:
        aj_log_error("EncodeInit", "Unsupported input format");
        return 3;
    }
  }

  v20 = *(a4 + 3);
  v19 = *(a4 + 4);
  v21 = *(a4 + 2);
  *(a2 + 13296) = *(a4 + 1);
  *(a2 + 13328) = v20;
  *(a2 + 13344) = v19;
  *(a2 + 13312) = v21;
  v22 = *(a2 + 13304);
  v23 = (v22 + 1) >> 1;
  v24 = *(a2 + 13296);
  v25 = *(a2 + 13328);
  if (v24 == v25)
  {
    v26 = *(a2 + 13336);
    if (v22 == v26)
    {
      v27 = 0;
      goto LABEL_20;
    }

    if (v23 == v26)
    {
      v27 = 2;
      goto LABEL_20;
    }

LABEL_21:
    aj_log_error("EncodeInit", "Unknown input decimation");
    return 3;
  }

  if (v25 != (v24 + 1) >> 1)
  {
    goto LABEL_21;
  }

  v32 = *(a2 + 13336);
  if (v22 == v32)
  {
    v27 = 1;
    goto LABEL_20;
  }

  if (v23 != v32)
  {
    goto LABEL_21;
  }

  v27 = 3;
LABEL_20:
  *(a5 + 56) = v27;
  *(a2 + 19832) = xmmword_240AB5BD0;
  v28 = (a2 + 19832);
  v29 = (a2 + 19844);
  *(a2 + 19848) = 1;
LABEL_57:
  v37 = *(a4 + 10);
  if (v37)
  {
    if (v37 < *(a4 + 2))
    {
      goto LABEL_78;
    }
  }

  else
  {
    v37 = *(a4 + 2);
  }

  *(a2 + 19768) = v37;
  v45 = *(a4 + 11);
  if (v45)
  {
    if (v45 < *(a4 + 6))
    {
      goto LABEL_78;
    }
  }

  else
  {
    v45 = *(a4 + 6);
  }

  *(a2 + 19776) = v45;
  v46 = *(a4 + 12);
  if (v46)
  {
    if (v46 < *(a4 + 6))
    {
LABEL_78:
      aj_log_error("EncodeInit", "Set stride is smaller than the image data");
      return 8;
    }
  }

  else
  {
    v46 = *(a4 + 6);
  }

  *(a2 + 19784) = v46;
  v16 = 14;
LABEL_87:
  v163 = a4;
  if (!v14[2].i32[0])
  {
    if (v16 != 15)
    {
      v51 = &base_scan_yuv;
      if (*(a5 + 56) == 4)
      {
        v51 = &base_scan_gray;
      }

      v172 = v51;
      v49 = 1;
      goto LABEL_104;
    }

    v49 = 1;
    v50 = &base_scan_cmyk;
LABEL_103:
    v172 = v50;
    goto LABEL_104;
  }

  v172 = *(a5 + 72);
  if (!v172)
  {
    v49 = 10;
    if (v16 == 15)
    {
      v50 = &prog_scan_cmyk;
    }

    else
    {
      if (*(a5 + 56) == 4)
      {
        v49 = 6;
      }

      else
      {
        v49 = 10;
      }

      v50 = &prog_scan_yuv;
      if (*(a5 + 56) == 4)
      {
        v50 = &prog_scan_gray;
      }
    }

    goto LABEL_103;
  }

  v49 = *(a5 + 64);
  if (v49 < 1)
  {
    return 1;
  }

LABEL_104:
  if (*(a2 + 19816))
  {
    aj_encode_release_scan_buffers(a2);
  }

  v161 = v29;
  v52 = a1[4];
  if (v52)
  {
    free(v52);
  }

  v53 = malloc_type_calloc(1uLL, 296 * v49, 0x10B00402248AC04uLL);
  a1[4] = v53;
  *(a2 + 19816) = v53;
  if (!v53)
  {
    aj_log_error("EncodeInit", "Unable to allocate scan info");
    return 6;
  }

  v54 = v53;
  v160 = v28;
  v154 = a7;
  v155 = a6;
  v158 = a5;
  v162 = a1;
  v55 = 0;
  v56 = *(a2 + 12) * *(a2 + 8) / (2 * v49);
  v156 = a3;
  v157 = (a2 + 3340);
  if (v56 <= 0x1000)
  {
    v56 = 4096;
  }

  v164 = v56;
  size = v56;
  v170 = v49;
  v57 = v171;
  v171[2].i32[2] = v49;
  v58 = a2 + 13472;
  v59 = a2 + 3424;
  v60 = a2 + 10664;
  v61 = a2 + 4520;
  v159 = a2;
  v62 = a2 + 11212;
  v63 = (v172 + 4);
  v64 = (v53 + 264);
  v65 = (v53 + 20);
  v167 = a2 + 3424;
  v168 = a2 + 10664;
  v165 = a2 + 4520;
  v166 = a2 + 11212;
  do
  {
    v66 = &v172[36 * v55];
    v67 = *(v66 + 5);
    v68 = *(v66 + 7);
    v69 = *v66;
    *v54 = v69;
    if (v69 < 1)
    {
      v82 = v68;
      v81 = v67;
    }

    else
    {
      if (v68)
      {
        v70 = v67 != 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = v65;
      v72 = v64;
      v73 = v63;
      do
      {
        v75 = *v73++;
        v74 = v75;
        *(v71 - 4) = v75;
        *(v72 - 9) = v58 + 1568 * v75;
        if (v70)
        {
          v76 = v74 != 0;
          v77 = v59 + 548 * v76 + 274 * (v67 != 0);
          if (v68)
          {
            v77 = v60 + 274 * v76;
          }

          *(v72 - 4) = v77;
          v78 = v61 + (v76 << 11) + ((v67 != 0) << 10);
          v79 = v62 + (v76 << 10);
          if (!v68)
          {
            v79 = v78;
          }

          *v72 = v79;
        }

        v80 = v74 != 0;
        *v71 = v80;
        v71[4] = v80;
        ++v72;
        ++v71;
        --v69;
      }

      while (v69);
      v81 = *(v66 + 5);
      v82 = *(v66 + 7);
    }

    v83 = *(v66 + 6);
    *(v54 + 13) = v81;
    *(v54 + 14) = v83;
    *(v54 + 15) = *(v66 + 8);
    *(v54 + 16) = v82;
    *(v54 + 68) = xmmword_240AB5BE0;
    if (v57[2].i32[0])
    {
      if (v67)
      {
        v84 = v68 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (!v84)
      {
        v85 = malloc_type_calloc(1uLL, 0x400uLL, 0x3BDA1B2DuLL);
        *(v54 + 22) = v85;
        if (!v85)
        {
          aj_log_error("EncodeInit", "Unable to allocate the correction-bit buffer");
          return 6;
        }

        *(v54 + 23) = 1024;
      }

      *(v54 + 28) = *(&off_2852A0128 + 2 * (v67 != 0) + (v68 != 0));
      *(v54 + 20) = 0;
      *(v54 + 21) = 0;
      v86 = malloc_type_calloc(1uLL, size, 0x6D965314uLL);
      if (!v86)
      {
        aj_log_error("EncodeInit", "Unable to allocate %zd bytes for scan #%d out-stream");
        return 6;
      }

      *(v54 + 14) = v86;
      *(v54 + 15) = v54;
      v61 = v165;
      *(v54 + 38) = v164;
      *(v54 + 16) = progscan_write_callback;
      *(v54 + 11) = 0;
      *(v54 + 12) = v86;
      *(v54 + 26) = 0;
      *(v54 + 27) = v164;
      v57 = v171;
      v59 = v167;
      v60 = v168;
      v62 = v166;
    }

    ++v55;
    v54 += 296;
    v63 += 9;
    v64 += 37;
    v65 += 74;
  }

  while (v55 != v170);
  *(v159 + 8) = *v163;
  v87 = *(v158 + 60);
  if (v87 == 2)
  {
    LOBYTE(v87) = 0;
    v90 = 195;
    v88 = v160;
    v89 = v15;
  }

  else
  {
    v88 = v160;
    v89 = v15;
    if (v87 == 1)
    {
      v90 = 194;
    }

    else
    {
      LOBYTE(v87) = 0;
      v90 = 192;
    }
  }

  *(v159 + 80) = v90;
  *(v159 + 84) = v87;
  if (*(v159 + 13360) == 15)
  {
    v91 = 4;
    *v159 = 4;
    *&v92 = 0x100000001;
    *(&v92 + 1) = 0x100000001;
    *(v159 + 16) = v92;
    *(v159 + 32) = v92;
    goto LABEL_161;
  }

  v93 = *(v158 + 56);
  if (v93 == 4)
  {
    v91 = 1;
  }

  else
  {
    v91 = 3;
  }

  *v159 = v91;
  if (v93 <= 1)
  {
    if (v93)
    {
      if (v93 == 1)
      {
        *(v159 + 24) = 1;
        *(v159 + 16) = 0x100000002;
        *(v159 + 40) = 1;
        v94 = 0x100000001;
LABEL_160:
        *(v159 + 32) = v94;
        goto LABEL_161;
      }

LABEL_157:
      *(v159 + 24) = 0;
      v94 = 1;
      *(v159 + 16) = 1;
      *(v159 + 40) = 0;
      goto LABEL_160;
    }

    *(v159 + 24) = 1;
    v94 = 0x100000001;
LABEL_159:
    *(v159 + 16) = v94;
    *(v159 + 40) = 1;
    goto LABEL_160;
  }

  if (v93 != 2)
  {
    if (v93 != 3)
    {
      goto LABEL_157;
    }

    *(v159 + 13272) = 1;
    *(v159 + 24) = 1;
    v94 = 0x100000002;
    goto LABEL_159;
  }

  *(v159 + 13272) = 1;
  *(v159 + 24) = 1;
  *(v159 + 40) = 1;
  *(v159 + 32) = 0x100000002;
  *(v159 + 16) = 0x100000001;
LABEL_161:
  v95 = v61;
  v96 = v62;
  v97 = v59;
  v98 = v60;
  *(v159 + 4) = 8;
  v99 = v159 + 88;
  if (*(v158 + 16))
  {
    *(v159 + 48) = xmmword_240AB5BF0;
    aj_get_qtable_for_quality(v99, *(v158 + 16), 1, 0);
    aj_get_qtable_for_quality(v159 + 344, *(v158 + 16), 0, 0);
    v57 = v171;
    v100 = v157;
  }

  else
  {
    v101 = 0;
    v102 = (v158 + 24);
    v103 = v159 + 48;
    v100 = v157;
    do
    {
      if (v101)
      {
        v104 = 0;
        v105 = v102[v101];
        while (v105 != v102[v104])
        {
          if (v101 == ++v104)
          {
            goto LABEL_170;
          }
        }

        *(v103 + 4 * v101) = v104;
      }

      else
      {
        v105 = *v102;
LABEL_170:
        v106 = 0;
        *(v103 + 4 * v101) = v101;
        do
        {
          *(v99 + 4 * v106) = *(v105 + v106);
          ++v106;
        }

        while (v106 != 64);
      }

      ++v101;
      v99 += 256;
    }

    while (v101 != v91);
  }

  *(v159 + 64) = xmmword_240AB5C10;
  *v100 = xmmword_240AB5C00;
  v100[1] = xmmword_240AB5BF0;
  v100[2] = xmmword_240AB5BF0;
  v107 = *(v159 + 19816);
  *(v159 + 3336) = *v107;
  v100[3] = *(v107 + 52);
  v108 = *(v159 + 13360);
  if ((*(v158 + 56) & 0xFFFFFFFE) != 2)
  {
    v110 = 0;
    goto LABEL_179;
  }

  v109 = v97;
  if (v108 == 14)
  {
    v110 = 0;
    v111 = *(v159 + 32);
    v112 = 8 * v111;
LABEL_180:
    v113 = v112;
    goto LABEL_181;
  }

  if (!*v88 || *v161 == 1)
  {
    v145 = vaddvq_s64(vaddq_s64(v57[1], *v57));
    v146 = v162[1];
    if (v146)
    {
      free(v146);
    }

    v147 = malloc_type_calloc(1uLL, v145, 0x586B3434uLL);
    v162[1] = v147;
    if (!v147)
    {
      aj_log_error("EncodeInit", "Could not allocate input buffer memory");
      return 6;
    }

    v110 = v147;
    v108 = *(v159 + 13360);
    v57 = v171;
LABEL_179:
    v109 = v97;
    v111 = *(v159 + 32);
    v112 = 8 * v111;
    v113 = v111;
    if (v108 != 14)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  v110 = 0;
  v111 = *(v159 + 32);
  v112 = 8 * v111;
  v113 = v111;
LABEL_181:
  *(v159 + 13292) = v113;
  v114 = *(v159 + 8);
  v115 = *(v159 + 12);
  v116 = v115 / 8;
  if ((v115 & 7) != 0)
  {
    ++v116;
  }

  v117 = v116 / v111;
  if (v116 % v111)
  {
    ++v117;
  }

  *(v159 + 13436) = v117;
  v118 = v114 / 8;
  if ((v114 & 7) != 0)
  {
    ++v118;
  }

  v119 = *(v159 + 16);
  if (v118 % v119)
  {
    v120 = v118 / v119 + 1;
  }

  else
  {
    v120 = v118 / v119;
  }

  *(v159 + 13432) = v120;
  *(v159 + 13428) = v112;
  *(v159 + 13424) = 8 * v119;
  v121 = v117 * v112;
  *(v159 + 13420) = v121;
  *(v159 + 13416) = v120 * 8 * v119;
  if (v115 <= v121 - 8)
  {
    *(v89 + 172) = 1;
  }

  if (v111 != 2 || !v57[2].i32[0])
  {
    goto LABEL_198;
  }

  v122 = v162[5];
  if (v122)
  {
    free(v122);
    v120 = *(v159 + 13432);
    v119 = *(v159 + 16);
  }

  v123 = malloc_type_calloc(1uLL, (v119 * v120) << 7, 0x1000040AE2C30F4uLL);
  v162[5] = v123;
  *(v159 + 19824) = v123;
  if (!v123)
  {
    aj_log_error("EncodeInit", "Unable to allocate progressive coeff buffer");
    return 6;
  }

  v108 = *(v159 + 13360);
  v57 = v171;
  v109 = v97;
LABEL_198:
  if (v108 == 14)
  {
    v124 = *(v159 + 19768);
    *(v159 + 13368) = *(v159 + 13304) * v124;
    v125 = *(v159 + 19776);
    v126 = *(v159 + 13336);
    *(v159 + 13376) = v126 * v125;
    v127 = *(v159 + 19784);
    *(v159 + 13384) = v127 * v126;
    *(v159 + 13392) = *(v159 + 13312) + v124 * *(v159 + 13316);
    v128 = *(v159 + 13348);
    v129 = *(v159 + 13344);
    *(v159 + 13400) = v129 + v125 * v128;
    *(v159 + 13408) = v129 + v127 * v128;
  }

  if (v57[2].i32[0])
  {
    v130 = v109;
    aj_huffman_encode_init_progressive(v109, 1, 1, 1);
    aj_huffman_encode_init_progressive(v159 + 3698, 1, 0, 1);
    aj_huffman_encode_init_progressive(v159 + 3972, 0, 1, 1);
    aj_huffman_encode_init_progressive(v159 + 4246, 0, 0, 1);
    aj_huffman_encode_init_progressive(v98, 1, 0, 0);
    aj_huffman_encode_init_progressive(v159 + 10938, 0, 0, 0);
    aj_huffman_encode_init_lookups(v130, (v159 + 3440), v95, 0);
    aj_huffman_encode_init_lookups(v159 + 3698, (v159 + 3714), v159 + 5544, 0);
    aj_huffman_encode_init_lookups(v159 + 3972, (v159 + 3988), v159 + 6568, 0);
    aj_huffman_encode_init_lookups(v159 + 4246, (v159 + 4262), v159 + 7592, 0);
    aj_huffman_encode_init_lookups(v98, (v159 + 10680), v96, 0);
    v131 = v159 + 10938;
    v132 = (v159 + 10954);
    v133 = v159 + 12236;
    v134 = 0;
  }

  else
  {
    v135 = v109;
    aj_huffman_encode_init_baseline(v109, 1, 1);
    aj_huffman_encode_init_baseline(v159 + 3698, 1, 0);
    aj_huffman_encode_init_baseline(v159 + 3972, 0, 1);
    aj_huffman_encode_init_baseline(v159 + 4246, 0, 0);
    aj_huffman_encode_init_lookups(v135, (v159 + 3440), v95, 0);
    aj_huffman_encode_init_lookups(v159 + 3698, (v159 + 3714), v159 + 5544, v159 + 8616);
    aj_huffman_encode_init_lookups(v159 + 3972, (v159 + 3988), v159 + 6568, 0);
    v131 = v159 + 4246;
    v132 = (v159 + 4262);
    v133 = v159 + 7592;
    v134 = v159 + 9640;
  }

  aj_huffman_encode_init_lookups(v131, v132, v133, v134);
  v136 = 0;
  *(v156 + 1896) = v110;
  v137 = 2000;
  v138 = 1832;
  do
  {
    v139 = (v156 + v138);
    *v139 = 0;
    v139[1] = 0;
    if (v110 && v136)
    {
      *(v156 + v136 + 1896) = *(v156 + v136 + 1888) + *(v159 + v136 + 19760);
    }

    *(v156 + v137) = 0;
    v136 += 8;
    v137 += 4;
    v138 += 16;
  }

  while (v136 != 32);
  v140 = *(v158 + 96);
  *(v156 + 2024) = v140;
  *(v156 + 2032) = *(v158 + 88);
  *(v156 + 2040) = *(v158 + 104);
  *(v156 + 2048) = v140;
  *(v156 + 1824) = 0;
  v141 = *(v159 + 13436);
  *(v156 + 1828) = v141;
  *(v156 + 2016) = 0;
  *(v156 + 2056) = 0;
  v142 = *(v158 + 122);
  *(v156 + 2068) = v142;
  *(v156 + 2064) = v142 + 7;
  *(v156 + 2072) = *(v158 + 152);
  *(v156 + 2080) = *(v158 + 160);
  *(v156 + 2084) = 0;
  *(v156 + 2096) = *(v158 + 121);
  v143 = *(v158 + 4);
  if (v143)
  {
    v144 = v155;
    if ((*(v158 + 60) - 1) >= 2)
    {
      if (v143 == 2)
      {
        v143 = *(v159 + 13432);
        if (v143 >= 16)
        {
          v148 = v143 - 1;
          if (v143 >= 0x40)
          {
            v148 = 64;
          }

          if (v148 >= 0x10)
          {
            while (v143 % v148)
            {
              if (v148-- <= 16)
              {
                goto LABEL_236;
              }
            }

            v143 = v148;
          }
        }
      }

      else
      {
        if (v143 != 1)
        {
          aj_log_error("EncodeInit", "Invalid interval units.");
          return 5;
        }

        v143 = *(v159 + 13432);
      }

LABEL_236:
      *(v156 + 2056) = v143;
    }

    else
    {
      v143 = 0;
    }
  }

  else
  {
    v144 = v155;
  }

  v150 = *v154;
  *(v156 + 1952) = *v154;
  v151 = *(v154 + 2);
  *(v156 + 1992) = v151;
  v152 = *(v144 + 8);
  *(v156 + 1968) = v152;
  *(v156 + 1960) = *(v144 + 32);
  *(v156 + 1928) = 0;
  *(v156 + 1948) = v151;
  *(v156 + 1936) = v150;
  *(v156 + 1944) = 0;
  if (!v152)
  {
    aj_log_error("EncodeInit", "Invalid output callback function.");
    return 5;
  }

  v153 = *(v158 + 144);
  if (v153 && v143 >= 1 && v153 < v141 * *(v159 + 13432) / v143 - 1)
  {
    aj_log_error("EncodeInit", "Restart marker offset table size does not match number of restart markers");
    return 5;
  }

  init_component(v159);
  if (*(v159 + 13360) == 14)
  {
    return 0;
  }

  result = aj_allocate_enc_buffers(v159, v156);
  if (!result)
  {
    v162[2] = *(v156 + 1792);
  }

  return result;
}

int *init_component(int *result)
{
  if (*result >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = result + 856;
    v5 = result + 1130;
    v6 = result + 2154;
    v7 = result + 22;
    v8 = 839;
    v9 = 3503;
    do
    {
      v10 = &v1[v3];
      v11 = v10[4];
      v12 = &v1[v2];
      v12[3368] = v11;
      v13 = v10[8];
      v12[3369] = v13;
      v12[3370] = v13 * v11;
      v14 = v1[v8];
      *(v12 + 1686) = &v4[137 * v14];
      v15 = v1[v8 + 4];
      *(v12 + 1687) = &v4[137 * v15 + 68] + 2;
      *(v12 + 1768) = &v5[512 * v14];
      *(v12 + 1769) = &v5[512 * v15 + 256];
      *(v12 + 1770) = &v6[256 * v15];
      v12[3371] = 0;
      *(v12 + 3494) = 0u;
      result = aj_dct_prescale_qtable(&v7[64 * v10[12]], &v1[v9]);
      ++v3;
      ++v8;
      v9 += 392;
      v2 += 392;
    }

    while (v3 < *v1);
  }

  return result;
}

uint64_t aj_encode_reset_session(int *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 1864) = 0u;
  *(a2 + 1880) = 0u;
  *(a2 + 1832) = 0u;
  *(a2 + 1848) = 0u;
  *(a1 + 3321) = 0;
  *(a1 + 3317) = xmmword_240AB5BC0;
  v6 = a1 + 4245;
  *(a2 + 1928) = 0;
  *(a2 + 1944) = 0;
  *(a2 + 1948) = *(a2 + 1992);
  *(a2 + 2048) = *(a3 + 96);
  *(a2 + 2060) = 0x700000000;
  aj_get_qtable_for_quality((a1 + 22), *(a3 + 16), 1, 0);
  aj_get_qtable_for_quality((a1 + 86), *(a3 + 16), 0, 0);
  *(a1 + 3697) = 0;
  *(a1 + 3971) = 0;
  *v6 = 0;
  v6[274] = 0;
  v7 = *(a2 + 1792);
  v8 = a1[4952];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 2477);
    do
    {
      *(v10 + 17) = xmmword_240AB5BE0;
      v10[43] = 0;
      v10[47] = 0;
      v11 = *(v10 + 14);
      v12 = v10[38];
      *(v10 + 11) = 0;
      *(v10 + 12) = v11;
      v10[26] = 0;
      v10[27] = v12;
      v13 = *v10;
      if (v13 >= 1)
      {
        v14 = 58;
        do
        {
          v15 = *&v10[v14];
          if (v15)
          {
            *(v15 + 273) = 0;
          }

          v14 += 2;
          --v13;
        }

        while (v13);
      }

      ++v9;
      v10 += 74;
    }

    while (v9 != v8);
  }

  init_component(a1);
  *(a2 + 1824) = 0;
  *(a2 + 1828) = a1[3359];
  if (*a1 >= 1)
  {
    v16 = 0;
    v17 = a2 + 2000;
    v18 = a1 + 3370;
    do
    {
      *(v17 + 4 * v16) = 0;
      if (a1[3340] != 14)
      {
        *(v18 + 45) = v7;
        *(v17 + 8 * v16 - 208) = v7;
        v7 += (*v18 * a1[3358]) << 6;
      }

      ++v16;
      v18 += 392;
    }

    while (v16 < *a1);
  }

  aj_reset_row_ptrs(a1, a2, a2 + 1792);
  return 0;
}

uint64_t progscan_write_callback(const void *a1, int a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v6 = *(a3 + 172);
  if (v7 - v6 >= a2)
  {
    v11 = *(a3 + 160);
LABEL_13:
    memcpy(&v11[v6], a1, a2);
    result = 0;
    *(a3 + 172) += a2;
    return result;
  }

  v8 = 2 * v7;
  if (!v7)
  {
    v8 = 0x2000;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_calloc(1uLL, v9, 0x4A770E98uLL);
  if (v10)
  {
    v11 = v10;
    v12 = *(a3 + 160);
    if (v12)
    {
      memcpy(v10, v12, *(a3 + 172));
      v13 = *(a3 + 160);
      if (v13)
      {
        free(v13);
      }
    }

    *(a3 + 160) = v11;
    *(a3 + 168) = v9;
    v6 = *(a3 + 172);
    goto LABEL_13;
  }

  return 6;
}

uint64_t aj_istream_get_error_code_eod(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 32) >= 1)
  {
    aj_log_error("Istream", "Corrupt marker in bitstream, cannot read more data.", v1, v2);
    return 7;
  }

  else
  {
    v5 = *(a1 + 112);
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

double aj_istream_init_mem(uint64_t a1, uint64_t *a2, char a3, int a4)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  v5 = *(a2 + 2);
  v6 = *a2;
  *(a1 + 40) = *a2;
  *(a1 + 8) = v6;
  *(a1 + 104) = 0;
  *(a1 + 24) = -9;
  *(a1 + 32) = v5;
  *(a1 + 36) = v5;
  *(a1 + 48) = v5;
  *(a1 + 52) = v5;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 56) = a4;
  *(a1 + 96) = 0;
  *(a1 + 112) = a3;
  return result;
}

uint64_t read_bytes_with_callback(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (*(a1 + 56) == 2)
  {
    v5 = 0;
LABEL_11:
    result = 0;
    goto LABEL_21;
  }

  v5 = 0;
  while (1)
  {
    v9 = *(a1 + 52);
    if (v9)
    {
      v10 = *(a1 + 48);
      if (v10 >= v9)
      {
        *(a1 + 56) = 2;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
    }

    result = (*(a1 + 80))(a2 + v5, (a3 - v5), *(a1 + 64));
    if (result <= 0)
    {
      break;
    }

    v12 = *(a1 + 48) + result;
    *(a1 + 48) = v12;
    v5 += result;
    if (v5 >= 8)
    {
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      aj_log_error("Istream", "File is larger than %d bytes, aborting");
      goto LABEL_20;
    }
  }

  if (result == -1)
  {
    result = 0;
    v13 = 2;
    goto LABEL_18;
  }

  if (!result)
  {
    v13 = 1;
LABEL_18:
    *(a1 + 56) = v13;
    goto LABEL_21;
  }

  aj_log_error("Istream", "File read error");
LABEL_20:
  result = 9;
LABEL_21:
  *a4 = v5;
  return result;
}

uint64_t aj_istream_find_next_val(uint64_t a1, int __c)
{
  if (*(a1 + 104) || *(a1 + 16))
  {
    return 7;
  }

  *a1 = 0;
  *(a1 + 24) = -9;
  if (*(a1 + 32) > 1)
  {
    goto LABEL_10;
  }

  v2 = aj_istream_move_forward(a1);
  if (v2)
  {
    return v2;
  }

  if (*(a1 + 32) > 1)
  {
LABEL_10:
    v6 = (a1 + 56);
    while (1)
    {
      v7 = *(a1 + 32);
      if (v7 < 1)
      {
        break;
      }

      v8 = *(a1 + 8);
      if (*v8 == __c)
      {
        goto LABEL_28;
      }

      v9 = memchr(*(a1 + 8), __c, *(a1 + 32));
      v10 = &v8[v7 - 1];
      if (v9)
      {
        v10 = v9;
      }

      *(a1 + 8) = v10;
      v11 = v7 + v8 - v10;
      *(a1 + 32) = v11;
      if (v11 <= 7)
      {
        v12 = aj_istream_move_forward(a1);
        if (v12)
        {
          v13 = 1;
          v2 = v12;
LABEL_25:
          if (v13 == 1)
          {
            return v2;
          }

          LODWORD(v7) = *(a1 + 32);
          break;
        }

        if (*(a1 + 32) <= 1)
        {
          if (!*(a1 + 80) || (v13 = *v6) != 0)
          {
            v13 = 3;
          }

          if (v13)
          {
            goto LABEL_25;
          }
        }
      }
    }

    if (!v7)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (**(a1 + 8) == __c)
    {
      return 0;
    }

LABEL_30:
    if (!*(a1 + 112))
    {
      return 7;
    }
  }

  else
  {
    if (!*(a1 + 112))
    {
      return 7;
    }

    v6 = (a1 + 56);
  }

  if (*v6 == 1)
  {
    return 4294967294;
  }

  else
  {
    return 7;
  }
}

uint64_t aj_istream_read_bytes_le(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  if (v6 < a3)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 32);
  }

  if (v6 >= v3)
  {
    v8 = 32 - 8 * v3;
    v9 = 0;
    if (v3)
    {
      v10 = *(a1 + 8) + 1;
      v11 = v6 - 1;
      do
      {
        *(a1 + 32) = v11;
        *(a1 + 8) = v10;
        HIDWORD(v12) = *(v10 - 1);
        LODWORD(v12) = v9;
        v9 = v12 >> 8;
        ++v10;
        --v11;
        --v3;
      }

      while (v3);
    }

    result = 0;
    *a2 = v9 >> v8;
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_peek_byte(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32) > 0)
  {
    goto LABEL_2;
  }

  result = aj_istream_move_forward(a1);
  if (!result)
  {
    if (*(a1 + 32) > 0)
    {
LABEL_2:
      result = 0;
      *a2 = **(a1 + 8);
      return result;
    }

    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_peek_bytes(uint64_t a1, void *__dst, int a3)
{
  v6 = *(a1 + 32);
  if (v6 < a3)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 32);
  }

  if (v6 >= a3)
  {
    memcpy(__dst, *(a1 + 8), a3);
    return 0;
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_fill_buf(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  if (v4 <= 7)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 32);
    if (v4 <= 7)
    {
      goto LABEL_23;
    }
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 16);
  while (1)
  {
    if (v7)
    {
      v13 = *(a1 + 24);
      v14 = 1;
      goto LABEL_11;
    }

    v8 = v4 - 1;
    *(a1 + 32) = v4 - 1;
    v9 = *(a1 + 8);
    v10 = v9 + 1;
    *(a1 + 8) = v9 + 1;
    v11 = *v9;
    if (v11 == 255)
    {
      break;
    }

LABEL_7:
    v6 = v11 | (v6 << 8);
    v5 += 8;
    v13 = *(a1 + 24) + v5;
    v4 = v8;
    if (v13 >= 16)
    {
      v14 = 0;
      goto LABEL_9;
    }
  }

  v12 = v4 - 2;
  *(a1 + 32) = v12;
  *(a1 + 8) = v9 + 2;
  if (!v9[1])
  {
    v11 = 255;
    v8 = v12;
    goto LABEL_7;
  }

  if (v9[1] != 255)
  {
    *(a1 + 16) = v10;
    v14 = 1;
    *(a1 + 28) = 1;
    v13 = *(a1 + 24);
    if (v5)
    {
      v13 += v5;
LABEL_9:
      *a1 |= v6 << (23 - v13);
      *(a1 + 24) = v13;
    }

LABEL_11:
    if ((v13 & 0x80000000) == 0 && (v14 & 1) == 0)
    {
      *(a1 + 28) = 0;
    }

    if (v13 >= a2)
    {
      return 0;
    }

    return aj_istream_get_error_code_eod(a1);
  }

  *(a1 + 8) = v10;
  *(a1 + 32) = v8;
  if (v5)
  {
    v16 = *(a1 + 24) + v5;
    *a1 |= v6 << (23 - v16);
    *(a1 + 24) = v16;
  }

LABEL_23:

  return secure_fill_buf(a1, a2);
}

uint64_t secure_fill_buf(uint64_t a1, int a2)
{
  if (*(a1 + 32) <= 7)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }
  }

  v5 = *(a1 + 24);
  if (v5 > 15)
  {
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(a1 + 32);
    if (v8 < 1 || *(a1 + 16))
    {
      break;
    }

    v9 = *(a1 + 8);
    *(a1 + 32) = v8 - 1;
    v10 = v9 + 1;
    *(a1 + 8) = v9 + 1;
    v11 = *v9;
    if (v11 == 255)
    {
      if (v8 == 1)
      {
        *(a1 + 8) = v9;
        *(a1 + 32) = 1;
        break;
      }

      v12 = *v10;
      if (v12 == 255)
      {
        if (v8 <= 8)
        {
          result = aj_istream_move_forward(a1);
          if (result)
          {
            return result;
          }

          v5 = *(a1 + 24);
        }

        continue;
      }

      *(a1 + 32) = v8 - 2;
      *(a1 + 8) = v9 + 2;
      if (v12)
      {
        *(a1 + 16) = v10;
        break;
      }

      v11 = 255;
    }

    v6 = v11 | (v6 << 8);
    v7 += 8;
  }

  while (v5 + v7 < 16);
  if (v7 >= 1)
  {
    v5 += v7;
    *a1 |= v6 << (23 - v5);
    *(a1 + 24) = v5;
  }

  if (v5 < 0)
  {
LABEL_24:
    LODWORD(v13) = 1;
  }

  else
  {
LABEL_23:
    v13 = *(a1 + 16);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  *(a1 + 28) = v13;
  if (v5 >= a2)
  {
    return 0;
  }

  return aj_istream_get_error_code_eod(a1);
}

uint64_t aj_istream_memcpy(uint64_t a1, char *__dst, int a3, _DWORD *a4)
{
  if (*(a1 + 32) > 0 || (result = aj_istream_move_forward(a1), !result))
  {
    v8 = a3;
    while (v8 >= 1)
    {
      v9 = *(a1 + 32);
      if (v9 <= 0)
      {
        *a4 = a3 - v8;
        goto LABEL_15;
      }

      if (v9 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      memcpy(__dst, *(a1 + 8), v10);
      __dst += v10;
      v8 -= v10;
      result = aj_istream_move_to_position(a1, (*(a1 + 48) + v10 - *(a1 + 32)));
      if (result)
      {
        return result;
      }
    }

    *a4 = a3 - v8;
    if (!v8)
    {
      return 0;
    }

LABEL_15:
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_istream_state_save(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = v3 == -9;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return 1;
  }

  if (v3 <= 15)
  {
    result = secure_fill_buf(a1, -8);
    if (result)
    {
      return result;
    }

    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
  }

  result = 0;
  v4 = v2 == 0;
  v8 = *(a1 + 48) - *(a1 + 32) + *(a1 + 96) - 2;
  if (v4)
  {
    v8 = *(a1 + 48) - *(a1 + 32) + *(a1 + 96);
  }

  *(a2 + 16) = v3 + 9;
  v9 = *a1;
  *a2 = v8;
  *(a2 + 4) = v9;
  *(a2 + 17) = 1;
  return result;
}

uint64_t aj_istream_state_restore(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
  }

  v4 = *(a2 + 16);
  result = aj_istream_move_to_position(a1, (*a2 - *(a1 + 96)));
  if (!result)
  {
    *(a1 + 24) = v4 - 9;
    *a1 = *(a2 + 4);

    return secure_fill_buf(a1, -9);
  }

  return result;
}

uint64_t aj_istream_state_serialize(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  do
  {
    *(result + 8 + v2) = *(a2 + 8 + v2);
    v2 += 2;
  }

  while (v2 != 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t aj_istream_state_deserialize(uint64_t result, uint64_t a2)
{
  v2 = 0;
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  do
  {
    *(result + 8 + v2) = *(a2 + 8 + v2);
    v2 += 2;
  }

  while (v2 != 8);
  *(result + 16) = *(a2 + 16);
  *(result + 17) = 1;
  return result;
}

void *aj_icol_row_420_rgb_12bit_generic(void *result, unsigned __int16 **a2, unsigned __int16 **a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v40[0] = a4;
  v40[1] = a5;
  v39[0] = *result;
  if (a6 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = result[1];
  }

  v39[1] = v9;
  if (a7 >= 1)
  {
    v10 = 0;
    v11 = *a3;
    v12 = *a2;
    result = v40;
    v13 = a7;
    do
    {
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v16 = *v12++;
      v15 = v16;
      v18 = *v11++;
      v17 = v18;
      if (a6 >= 1)
      {
        v19 = 0;
        v20 = v15 - 2048;
        v21 = v17 - 2048;
        v22 = 227 * (v15 - 2048);
        v23 = -44 * v20 - 91 * (v17 - 2048);
        v24 = 179 * v21;
        do
        {
          if (v10 < a7)
          {
            v25 = v39[v19];
            v26 = v40[v19];
            v27 = v14;
            do
            {
              v28 = *v25++;
              v29 = v22 + (v28 << 7);
              v30 = v23 + (v28 << 7);
              v31 = v24 + (v28 << 7);
              v32 = (v30 + 64) >> 7;
              v33 = (v31 + 64) >> 7;
              if (v31 <= -65)
              {
                v34 = 0;
              }

              else
              {
                v34 = 4095;
              }

              if (v33 >= 0x1000)
              {
                LOWORD(v33) = v34;
              }

              if (v30 <= -65)
              {
                v35 = 0;
              }

              else
              {
                v35 = 4095;
              }

              if (v32 >= 0x1000)
              {
                LOWORD(v32) = v35;
              }

              if (v29 <= -65)
              {
                LOWORD(v36) = 0;
              }

              else
              {
                LOWORD(v36) = 4095;
              }

              if (((v29 + 64) >> 7) < 0x1000)
              {
                v36 = (v29 + 64) >> 7;
              }

              if (a8)
              {
                v37 = v36;
              }

              else
              {
                v37 = v33;
              }

              *v26 = v37;
              if (!a8)
              {
                LOWORD(v33) = v36;
              }

              v26[1] = v32;
              v26[2] = v33;
              if (a9)
              {
                v26[3] = 4095;
                v26 += 4;
              }

              else
              {
                v26 += 3;
              }

              --v27;
            }

            while (v27);
            v39[v19] = v25;
            v40[v19] = v26;
          }

          ++v19;
        }

        while (v19 != a6);
      }

      v10 += 2;
      v13 -= 2;
    }

    while (v10 < a7);
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t aj_icol_row_444_rgb_12bit_generic(unint64_t result, unsigned __int16 **a2, unsigned __int16 **a3, __int16 *a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = *a3;
    v8 = *a2;
    v9 = *result;
    do
    {
      v11 = *v9++;
      v10 = v11;
      v12 = *v8++;
      v13 = v12 - 2048;
      v14 = *v7++;
      v15 = 227 * v13 + (v10 << 7);
      v16 = -44 * v13 + (v10 << 7) - 91 * (v14 - 2048);
      v17 = 179 * (v14 - 2048) + (v10 << 7);
      LODWORD(result) = (v15 + 64) >> 7;
      v18 = (v16 + 64) >> 7;
      v19 = (v17 + 64) >> 7;
      if (v17 <= -65)
      {
        v20 = 0;
      }

      else
      {
        v20 = 4095;
      }

      if (v19 < 0x1000)
      {
        v20 = v19;
      }

      if (v16 <= -65)
      {
        v21 = 0;
      }

      else
      {
        v21 = 4095;
      }

      if (v18 < 0x1000)
      {
        v21 = v18;
      }

      if (v15 <= -65)
      {
        v22 = 0;
      }

      else
      {
        v22 = 4095;
      }

      if (result >= 0x1000)
      {
        result = v22;
      }

      else
      {
        result = result;
      }

      if (a6)
      {
        v23 = result;
      }

      else
      {
        v23 = v20;
      }

      *a4 = v23;
      if (!a6)
      {
        v20 = result;
      }

      a4[1] = v21;
      a4[2] = v20;
      if (a7)
      {
        a4[3] = 4095;
        a4 += 4;
      }

      else
      {
        a4 += 3;
      }

      --a5;
    }

    while (a5);
  }

  return result;
}

char **aj_icol_row_444_to_yuyv(char **result, unsigned __int8 **a2, unsigned __int8 **a3, char *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (a7 < 2)
  {
    if ((a7 & 1) == 0)
    {
      return result;
    }

LABEL_7:
    v20 = *v7;
    v21 = *v8;
    v22 = *v9;
    *a4 = *v7;
    a4[1] = v21;
    a4[2] = v20;
    a4[3] = v22;
    return result;
  }

  v10 = 0;
  do
  {
    v11 = *v7;
    v12 = v7 + 2;
    v13 = v7[1];
    v14 = v8 + 2;
    result = *v9;
    v15 = v9 + 2;
    v16 = (v8[1] + *v8) >> 1;
    v17 = v9[1] + result;
    *a4 = v11;
    a4[1] = v16;
    v18 = v17 >> 1;
    v19 = a4 + 4;
    v10 += 2;
    v9 = v15;
    a4[2] = v13;
    a4[3] = v18;
    v8 = v14;
    v7 = v12;
    a4 += 4;
  }

  while (v10 < a7 - 1);
  a4 = v19;
  v7 = v12;
  v8 = v14;
  v9 = v15;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

char **aj_icol_row_420_to_yuyv(char **result, char **a2, char **a3, _BYTE *a4, _BYTE *a5, int a6, int a7)
{
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (a6 == 1)
  {
    if (a7 >= 2)
    {
      v10 = 0;
      do
      {
        v11 = *v7;
        v12 = v7 + 2;
        v13 = v7[1];
        v15 = *v8++;
        v14 = v15;
        v16 = *v9++;
        *a4 = v11;
        a4[1] = v14;
        a4[2] = v13;
        a4[3] = v16;
        a4 += 4;
        v10 += 2;
        v7 = v12;
      }

      while (v10 < a7 - 1);
      v7 = v12;
    }

    if (a7)
    {
      v17 = *v7;
      v18 = *v8;
      v19 = *v9;
      *a4 = v17;
      a4[1] = v18;
      a4[2] = v17;
      a4[3] = v19;
    }
  }

  else
  {
    v20 = result[1];
    if (a7 >= 2)
    {
      v21 = 0;
      do
      {
        v22 = *v7;
        v23 = v7 + 2;
        v24 = v7[1];
        v25 = *v20;
        v26 = v20 + 2;
        result = v20[1];
        v28 = *v8++;
        v27 = v28;
        v29 = *v9++;
        *a4 = v22;
        a4[1] = v27;
        a4[2] = v24;
        v30 = a4 + 4;
        a4[3] = v29;
        *a5 = v25;
        v31 = a5 + 4;
        v21 += 2;
        a5[1] = v27;
        v20 = v26;
        v7 = v23;
        a5[2] = result;
        a5[3] = v29;
        a5 += 4;
        a4 += 4;
      }

      while (v21 < a7 - 1);
      a4 = v30;
      a5 = v31;
      v7 = v23;
      v20 = v26;
    }

    if (a7)
    {
      v32 = *v7;
      v33 = *v20;
      v34 = *v8;
      v35 = *v9;
      *a4 = v32;
      a4[1] = v34;
      a4[2] = v32;
      a4[3] = v35;
      *a5 = v33;
      a5[1] = v34;
      a5[2] = v33;
      a5[3] = v35;
    }
  }

  return result;
}

char **aj_icol_row_444_to_yuv(char **result, char **a2, char **a3, _BYTE *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v7 = *a3;
    v8 = *a2;
    v9 = *result;
    do
    {
      v10 = *v9++;
      *a4 = v10;
      v11 = *v8++;
      a4[1] = v11;
      v12 = *v7++;
      a4[2] = v12;
      a4 += 3;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t aj_icol_row_420_to_yuv(uint64_t result, char **a2, char **a3, _BYTE *a4, _BYTE *a5, int a6, int a7)
{
  v7 = *result;
  v8 = *a2;
  v9 = *a3;
  if (a6 == 1)
  {
    if (a7 >= 2)
    {
      v10 = 0;
      do
      {
        v12 = *v8++;
        v11 = v12;
        v13 = *v9++;
        *a4 = *v7;
        a4[1] = v11;
        a4[2] = v13;
        v14 = v7 + 2;
        a4[3] = v7[1];
        a4[4] = v11;
        a4[5] = v13;
        a4 += 6;
        v10 += 2;
        v7 += 2;
      }

      while (v10 < a7 - 1);
      v7 = v14;
    }

    if (a7)
    {
      *a4 = *v7;
      a4[1] = *v8;
      a4[2] = *v9;
    }
  }

  else
  {
    v15 = *(result + 8);
    if (a7 >= 2)
    {
      v16 = 0;
      do
      {
        v17 = *v8++;
        result = v17;
        LOBYTE(v17) = *v9++;
        *a4 = *v7;
        a4[1] = result;
        a4[2] = v17;
        v18 = v7 + 2;
        a4[3] = v7[1];
        a4[4] = result;
        v19 = a4 + 6;
        a4[5] = v17;
        *a5 = *v15;
        a5[1] = result;
        a5[2] = v17;
        v20 = v15 + 2;
        a5[3] = v15[1];
        v21 = a5 + 6;
        v16 += 2;
        a4 += 6;
        a5[4] = result;
        a5[5] = v17;
        a5 += 6;
        v7 += 2;
        v15 += 2;
      }

      while (v16 < a7 - 1);
      v15 = v20;
      v7 = v18;
      a5 = v21;
      a4 = v19;
    }

    if (a7)
    {
      v22 = *v8;
      v23 = *v9;
      *a4 = *v7;
      a4[1] = v22;
      a4[2] = v23;
      *a5 = *v15;
      a5[1] = v22;
      a5[2] = v23;
    }
  }

  return result;
}

void *aj_icol_row_444_to_biplanar(void *__src, int a2, char *a3, int a4, char *a5, int a6, void *__dst, int a8, _BYTE *a9, int a10)
{
  v12 = a10;
  result = memcpy(__dst, __src, a10);
  if (a10 >= 1)
  {
    do
    {
      v15 = *a3++;
      *a9 = v15;
      v16 = *a5++;
      a9[1] = v16;
      a9 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void *aj_icol_row_422_to_biplanar(void *__src, int a2, char *a3, int a4, char *a5, int a6, char *__dst, int a8, _BYTE *a9, int a10, int a11, unsigned __int8 a12)
{
  v15 = a12;
  v16 = a9;
  result = memcpy(__dst, __src, a10);
  if (a10)
  {
    __dst[a10] = __dst[a10 - 1];
  }

  if (a11 != 1 || a12 != 0)
  {
    v19 = a10 - 1 + a12;
    if (v19 <= a12)
    {
      v23 = a9;
      if ((a10 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      do
      {
        v20 = v15 >> a11;
        v21 = (v15 + 1) >> a11;
        *v16 = (a3[v21] + a3[v20]) >> 1;
        v22 = (a5[v21] + a5[v20]) >> 1;
        v23 = v16 + 2;
        v16[1] = v22;
        v15 += 2;
        v16 += 2;
      }

      while (v15 < v19);
      if ((a10 & 1) == 0)
      {
        return result;
      }
    }

    v27 = (a10 - 1) >> a11;
    *v23 = a3[v27];
    v23[1] = a5[v27];
    return result;
  }

  if (a10 >= 1)
  {
    v24 = (a10 + 1) >> 1;
    do
    {
      v25 = *a3++;
      *v16 = v25;
      v26 = *a5++;
      v16[1] = v26;
      v16 += 2;
      --v24;
    }

    while (v24);
  }

  return result;
}

void *aj_icol_row_420_to_biplanar(void *__src, const void *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *__dst, void *a8, _BYTE *a9, int a10, int a11, unsigned __int8 a12)
{
  v17 = a12;
  v18 = a9;
  memcpy(__dst, __src, a10);
  result = memcpy(a8, a2, a10);
  if (a10)
  {
    *(__dst + a10) = *(__dst + a10 - 1);
    *(a8 + a10) = *(a8 + a10 - 1);
  }

  v21 = a11 != 1 || a12 != 0;
  if (a3 == a4 && a5 == a6)
  {
    if (v21)
    {
      v22 = a10 - 1 + a12;
      if (v22 <= a12)
      {
        v26 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v23 = v17 >> a11;
          v24 = (v17 + 1) >> a11;
          *v18 = (a3[v23] + a3[v24] + 1) >> 1;
          v25 = (a5[v23] + a5[v24] + 1) >> 1;
          v26 = v18 + 2;
          v18[1] = v25;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v22);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v42 = (a10 - 1) >> a11;
      *v26 = a3[v42];
      LOBYTE(v42) = a5[v42];
LABEL_33:
      v26[1] = v42;
      return result;
    }

    if (a10 >= 1)
    {
      v38 = (a10 + 1) >> 1;
      do
      {
        v39 = *a3++;
        *v18 = v39;
        v40 = *a5++;
        v18[1] = v40;
        v18 += 2;
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    if (v21)
    {
      v27 = a10 - 1 + a12;
      if (v27 <= a12)
      {
        v26 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v28 = v17 >> a11;
          v29 = (v17 + 1) >> a11;
          *v18 = (a3[v28] + a4[v28] + a3[v29] + a4[v29] + 2) >> 2;
          v30 = (a5[v28] + a6[v28] + a5[v29] + a6[v29] + 2) >> 2;
          v26 = v18 + 2;
          v18[1] = v30;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v27);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v41 = (a10 - 1) >> a11;
      *v26 = (a4[v41] + a3[v41]) >> 1;
      v42 = (a6[v41] + a5[v41]) >> 1;
      goto LABEL_33;
    }

    if (a10 >= 1)
    {
      v31 = (a10 + 1) >> 1;
      do
      {
        v33 = *a3++;
        v32 = v33;
        v34 = *a4++;
        *v18 = (v34 + v32) >> 1;
        v36 = *a5++;
        v35 = v36;
        v37 = *a6++;
        v18[1] = (v37 + v35) >> 1;
        v18 += 2;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

void *aj_icol_row_420_to_biplanar_12bit(void *__src, const void *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, char *__dst, char *a8, _WORD *a9, int a10, int a11, unsigned __int8 a12)
{
  v17 = a12;
  v18 = a9;
  memcpy(__dst, __src, 2 * a10);
  result = memcpy(a8, a2, 2 * a10);
  if (a10)
  {
    v20 = 2 * a10 - 2;
    *&__dst[2 * a10] = *&__dst[v20];
    *&a8[2 * a10] = *&a8[v20];
  }

  v22 = a11 != 1 || a12 != 0;
  if (a3 == a4 && a5 == a6)
  {
    if (v22)
    {
      v23 = a10 - 1 + a12;
      if (v23 <= a12)
      {
        v25 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v24 = (v17 + 1) >> a11;
          *v18 = (a3[v17 >> a11] + a3[v24] + 1) >> 1;
          v25 = v18 + 2;
          v18[1] = (a5[v17 >> a11] + a5[v24] + 1) >> 1;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v23);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v39 = (a10 - 1) >> a11;
      *v25 = a3[v39];
      LOWORD(v39) = a5[v39];
LABEL_33:
      v25[1] = v39;
      return result;
    }

    if (a10 >= 1)
    {
      v35 = (a10 + 1) >> 1;
      do
      {
        v36 = *a3++;
        *v18 = v36;
        v37 = *a5++;
        v18[1] = v37;
        v18 += 2;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    if (v22)
    {
      v26 = a10 - 1 + a12;
      if (v26 <= a12)
      {
        v25 = a9;
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        do
        {
          v27 = (v17 + 1) >> a11;
          *v18 = (a3[v17 >> a11] + a4[v17 >> a11] + a3[v27] + a4[v27] + 2) >> 2;
          v25 = v18 + 2;
          v18[1] = (a5[v17 >> a11] + a6[v17 >> a11] + a5[v27] + a6[v27] + 2) >> 2;
          v17 += 2;
          v18 += 2;
        }

        while (v17 < v26);
        if ((a10 & 1) == 0)
        {
          return result;
        }
      }

      v38 = (a10 - 1) >> a11;
      *v25 = (a4[v38] + a3[v38]) >> 1;
      v39 = (a6[v38] + a5[v38]) >> 1;
      goto LABEL_33;
    }

    if (a10 >= 1)
    {
      v28 = (a10 + 1) >> 1;
      do
      {
        v30 = *a3++;
        v29 = v30;
        v31 = *a4++;
        *v18 = (v31 + v29) >> 1;
        v33 = *a5++;
        v32 = v33;
        v34 = *a6++;
        v18[1] = (v34 + v32) >> 1;
        v18 += 2;
        --v28;
      }

      while (v28);
    }
  }

  return result;
}

void *aj_icol_row_440_to_biplanar(void *__src, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__dst, void *a8, _BYTE *a9, int a10, char a11)
{
  memcpy(__dst, __src, a10);
  result = memcpy(a8, a2, a10);
  if (a10 >= 1)
  {
    for (i = 0; i != a10; ++i)
    {
      v20 = i >> a11;
      *a9 = (*(a4 + v20) + *(a3 + v20)) >> 1;
      a9[1] = (*(a6 + v20) + *(a5 + v20)) >> 1;
      a9 += 2;
    }
  }

  return result;
}

const void **aj_icol_row_all_to_gray(const void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = a4;
  v15[1] = a5;
  if (a6 >= 1)
  {
    v7 = result;
    v8 = a7;
    v9 = v15;
    v10 = a6;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v7++;
      result = memcpy(v11, v13, v8);
      --v10;
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

const void **aj_icol_row_all_to_gray_12bit(const void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = a4;
  v15[1] = a5;
  if (a6 >= 1)
  {
    v7 = result;
    v8 = 2 * a7;
    v9 = v15;
    v10 = a6;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v7++;
      result = memcpy(v11, v13, v8);
      --v10;
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *aj_icol_row_gray_to_444biplanar(void *__src, int a2, int a3, int a4, int a5, int a6, void *__dst, int a8, void *a9, size_t __n)
{
  memcpy(__dst, __src, __n);

  return memset(a9, 128, 2 * __n);
}

void *aj_icol_row_gray_to_422biplanar(void *__src, int a2, int a3, int a4, int a5, int a6, char *__dst, int a8, void *a9, int a10)
{
  memcpy(__dst, __src, a10);
  if (a10)
  {
    __dst[a10] = __dst[a10 - 1];
  }

  return memset(a9, 128, (a10 & 1) + a10);
}

void *aj_icol_row_gray_to_420biplanar(void *__src, const void *a2, int a3, int a4, int a5, int a6, char *__dst, char *a8, void *a9, int a10)
{
  memcpy(__dst, __src, a10);
  memcpy(a8, a2, a10);
  if (a10)
  {
    __dst[a10] = __dst[a10 - 1];
    a8[a10] = a8[a10 - 1];
  }

  return memset(a9, 128, (a10 & 1) + a10);
}

void aj_icol_row_gray_to_420biplanar_12bit(void *__src, const void *a2, int a3, int a4, int a5, int a6, void *__dst, void *a8, void *a9, int a10)
{
  memcpy(__dst, __src, 2 * a10);
  memcpy(a8, a2, 2 * a10);
  if (a10)
  {
    *(__dst + a10) = *(__dst + a10 - 1);
    *(a8 + a10) = *(a8 + a10 - 1);
  }

  v13 = (a10 & 1) + a10;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v15 < 0 == v14)
  {

    memset_pattern16(a9, &unk_240AB6050, 2 * v15 + 2);
  }
}

void *aj_icol_row_gray_to_440biplanar(void *__src, const void *a2, int a3, int a4, int a5, int a6, void *__dst, void *a8, void *a9, size_t __n)
{
  memcpy(__dst, __src, __n);
  memcpy(a8, a2, __n);

  return memset(a9, 128, 2 * __n);
}

uint64_t aj_icol_row_gray_to_yuyv(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      v8 = *(result + 8 * i);
      v9 = v13[i];
      if (a7 >= 2)
      {
        v10 = 0;
        do
        {
          *v9 = *v8;
          v9[1] = 0x80;
          v11 = v8 + 2;
          v9[2] = v8[1];
          v9[3] = 0x80;
          v9 += 4;
          v10 += 2;
          v8 += 2;
        }

        while (v10 < a7 - 1);
        v8 = v11;
      }

      if (a7)
      {
        *v9 = *v8;
        v9[1] = 0x80;
        v9[2] = *v8;
        v9[3] = 0x80;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_icol_row_gray_to_yuv(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v13[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          *(v8 + 1) = -32640;
          v8 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_icol_row_gray_to_color_generic(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = a3;
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v8 = *(result + 8 * i);
      v9 = v19[i];
      if (a6 == 2)
      {
        if (a5 >= 1)
        {
          v12 = a5;
          do
          {
            v13 = *v8++;
            *v9 = (v13 >> 3) & 0x1F | (32 * ((v13 >> 2) & 7));
            *(v9 + 1) = ((8 * v13) | ((v13 >> 3) << 11)) >> 8;
            v9 += 2;
            --v12;
          }

          while (v12);
        }
      }

      else if (a6 == 4)
      {
        if (a7 == 2)
        {
          if (a5 >= 1)
          {
            v10 = a5;
            do
            {
              v11 = *v8;
              v8 += 2;
              *v9 = v11;
              *(v9 + 2) = v11;
              *(v9 + 4) = v11;
              *(v9 + 6) = 4095;
              v9 += 8;
              --v10;
            }

            while (v10);
          }
        }

        else
        {
          v16 = a5;
          if (a5 >= 1)
          {
            do
            {
              v17 = *v8++;
              *v9 = v17;
              *(v9 + 1) = v17;
              *(v9 + 2) = v17;
              *(v9 + 3) = -1;
              v9 += 4;
              --v16;
            }

            while (v16);
          }
        }
      }

      else
      {
        v14 = a5;
        if (a5 >= 1)
        {
          do
          {
            v15 = *v8++;
            *v9 = v15;
            *(v9 + 1) = v15;
            *(v9 + 2) = v15;
            v9 += 3;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_icol_row_gray_to_rgb(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v13[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_icol_row_gray_to_rgb_12bit(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v13[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_icol_row_gray_to_rgba(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v13[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8[3] = -1;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_icol_row_gray_to_rgba_12bit(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      if (a7 >= 1)
      {
        v8 = v13[i];
        v9 = *(result + 8 * i);
        v10 = a7;
        do
        {
          v11 = *v9++;
          *v8 = v11;
          v8[1] = v11;
          v8[2] = v11;
          v8[3] = 4095;
          v8 += 4;
          --v10;
        }

        while (v10);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void aj_icol_mcurow_default(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v8 = (a3 + 568);
    v9 = **a2;
    if (v9 == 3)
    {
      v10 = (a3 + 696);
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 3)
    {
      v11 = (a3 + 824);
    }

    else
    {
      v11 = 0;
    }

    if (*(a2 + 6464) == 3 && !*(a2 + 6884))
    {
      if (*(a3 + 1080))
      {
        if (*(a2 + 6804))
        {
          buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
        }

        else
        {
          buffer = (*(a2 + 64) + *(a2 + 96) * *(a3 + 36) + *(a2 + 6600));
        }

        invcol_wrapper(a2, v8, v10++, v11, buffer, 0, 1, *(a1 + 48), *(a3 + 1081));
        v28 = v11 + 1;
        v19 = *(a2 + 6804);
        if (v19)
        {
          aj_row_translate(v19, *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), *(a3 + 36), buffer, *(a2 + 64));
          aj_rowbuffer_return_buffer((a3 + 152), buffer);
        }

        ++*(a3 + 36);
        v18 = *(a3 + 1080);
      }

      else
      {
        v28 = v11;
        v18 = 0;
      }

      v29 = a4 - 1;
      if (a4 - 1 > v18)
      {
        v20 = v18 >> 1;
        v21 = (a3 + 8 * v18 + 568);
        do
        {
          if (*(a2 + 6804))
          {
            v22 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
            v23 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
          }

          else
          {
            v24 = *(a2 + 96);
            v22 = (*(a2 + 64) + v24 * *(a3 + 36) + *(a2 + 6600));
            v23 = &v22[v24];
          }

          invcol_wrapper(a2, v21, &v10[v20 & 0x7FFFFFFF], &v28[v20 & 0x7FFFFFFF], v22, v23, 2, *(a1 + 48), *(a3 + 1081));
          v25 = *(a2 + 6804);
          if (v25)
          {
            aj_row_translate(v25, *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), *(a3 + 36), v22, *(a2 + 64));
            aj_rowbuffer_return_buffer((a3 + 152), v22);
            aj_row_translate(*(a2 + 6804), *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), *(a3 + 36), v23, *(a2 + 64));
            aj_rowbuffer_return_buffer((a3 + 152), v23);
          }

          *(a3 + 36) += 2;
          LODWORD(v20) = v20 + 1;
          v21 += 2;
          v18 += 2;
        }

        while (v29 > v18);
      }

      if (v18 == v29)
      {
        if (*(a2 + 6804))
        {
          v26 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
        }

        else
        {
          v26 = (*(a2 + 64) + *(a2 + 96) * *(a3 + 36) + *(a2 + 6600));
        }

        invcol_wrapper(a2, &v8[v29], &v10[v29 >> 1], &v28[v29 >> 1], v26, 0, 1, *(a1 + 48), *(a3 + 1081));
        v27 = *(a2 + 6804);
        if (v27)
        {
          aj_row_translate(v27, *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), *(a3 + 36), v26, *(a2 + 64));
          aj_rowbuffer_return_buffer((a3 + 152), v26);
        }

        ++*(a3 + 36);
      }
    }

    else if (a4 >= 1)
    {
      v12 = 0;
      v13 = *(a1 + 44) >> 1;
      v14 = a4;
      do
      {
        if (*(a2 + 6804))
        {
          v15 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
        }

        else
        {
          v15 = (*(a2 + 64) + *(a2 + 96) * *(a3 + 36) + *(a2 + 6600));
        }

        (*(a2 + 6912))(v8, &v10[v12 >> v13], &v11[v12 >> v13], v15, 0, 1, *(a1 + 48));
        v16 = *(a2 + 6804);
        if (v16)
        {
          aj_row_translate(v16, *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), *(a3 + 36), v15, *(a2 + 64));
          aj_rowbuffer_return_buffer((a3 + 152), v15);
        }

        ++*(a3 + 36);
        ++v12;
        ++v8;
      }

      while (v14 != v12);
    }
  }
}

uint64_t invcol_wrapper(uint64_t a1, void *a2, _BYTE **a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = a2;
  v58 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    v56 = a5;
    v57 = a6;
    v13 = *(a1 + 6580);
    if (v13 == 2 || v13 == 4)
    {
      v15 = 1;
    }

    else
    {
      if (v13 == 6)
      {
        if (a7 >= 1)
        {
          v19 = a7;
          v20 = &v56;
          v21 = a2;
          do
          {
            v22 = *v20;
            *v22 = **v21;
            v22[1] = **a3;
            v23 = **a4;
            *v20++ = (v22 + 3);
            v22[2] = v23;
            ++*v21++;
            --v19;
          }

          while (v19);
        }

        ++*a3;
        ++*a4;
LABEL_58:
        result = (*(a1 + 6912))(v12, a3, a4, v56, v57, a7, (a8 - 1));
        --*a3;
        --*a4;
        if (a7 >= 1)
        {
          v54 = a7;
          do
          {
            --*v12++;
            --v54;
          }

          while (v54);
        }

        v55 = *MEMORY[0x277D85DE8];
        return result;
      }

      v15 = 0;
    }

    v24 = **a3;
    v25 = **a4;
    ++*a3;
    ++*a4;
    if (a7 >= 1)
    {
      v26 = v25 - 128;
      v27 = v24 - 128;
      v28 = 227 * (v24 - 128);
      v29 = -44 * v27 - 91 * v26;
      v30 = 179 * v26;
      v31 = a7;
      v32 = &v56;
      v33 = a2;
      do
      {
        v34 = **v33;
        v35 = v28 + (v34 << 7);
        v36 = v29 + (v34 << 7);
        v37 = v30 + (v34 << 7);
        v38 = *(a1 + 28);
        v39 = *v32;
        v40 = (v35 + 64) >> 7;
        v41 = (v36 + 64) >> 7;
        v42 = (v37 + 64) >> 7;
        if (v37 <= -65)
        {
          v43 = 0;
        }

        else
        {
          v43 = 255;
        }

        if (v42 < 0x100)
        {
          v43 = v42;
        }

        if (v36 <= -65)
        {
          v44 = 0;
        }

        else
        {
          v44 = 255;
        }

        if (v41 < 0x100)
        {
          v44 = v41;
        }

        if (v35 <= -65)
        {
          v45 = 0;
        }

        else
        {
          v45 = 255;
        }

        if (v40 < 0x100)
        {
          v45 = v40;
        }

        switch(v38)
        {
          case 4:
            if (v15)
            {
              v53 = v43;
            }

            else
            {
              v53 = v45;
            }

            if (!v15)
            {
              LOBYTE(v45) = v43;
            }

            *v39 = v45;
            v39[1] = v44;
            v39[2] = v53;
            v39[3] = -1;
            v39 += 4;
            break;
          case 3:
            *v39 = v43;
            v39[1] = v44;
            v39[2] = v45;
            v39 += 3;
            break;
          case 2:
            if (v43 >= 0xFC)
            {
              v46 = 255;
            }

            else
            {
              v46 = v43 + 4;
            }

            v47 = v44 + 2;
            if (v44 >= 0xFE)
            {
              v47 = 255;
            }

            v48 = v46 >> 3;
            if (v45 >= 0xFC)
            {
              v49 = 255;
            }

            else
            {
              v49 = v45 + 4;
            }

            v50 = v49 >> 3;
            v51 = 32 * (v47 >> 2);
            if (v15)
            {
              v52 = v51 | (v48 << 11) | v50;
            }

            else
            {
              v52 = v51 | (v50 << 11) | v48;
            }

            *v39 = v52;
            v39 += 2;
            break;
        }

        *v32++ = v39;
        ++*v33++;
        --v31;
      }

      while (v31);
    }

    goto LABEL_58;
  }

  v16 = *(a1 + 6912);
  v17 = *MEMORY[0x277D85DE8];

  return v16(a2, a3, a4, a5, a6, a7, a8);
}

void aj_icol_mcurow_cmyk(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 > 0)
  {
    v6 = 0;
    v44 = a3 + 696;
    v45 = a3 + 568;
    v42 = a3 + 952;
    v43 = a3 + 824;
    v7 = *(a1 + 48);
    v46 = a4;
    do
    {
      if (*(a2 + 6804))
      {
        buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
      }

      else
      {
        buffer = (*(a2 + 64) + *(a2 + 96) * *(a3 + 36) + *(a2 + 6600));
      }

      if (*(a2 + 6936))
      {
        if (v7)
        {
          v9 = *(v42 + 8 * v6);
          v10 = *(v43 + 8 * v6);
          v11 = *(v44 + 8 * v6);
          v12 = v7;
          v13 = buffer;
          v14 = *(v45 + 8 * v6);
          do
          {
            v16 = *v14++;
            v15 = v16;
            v17 = *v11++;
            v18 = v17 - 128;
            v19 = *v10++;
            v20 = 179 * (v19 - 128) + (v15 << 7);
            v21 = -44 * v18 + (v15 << 7) - 91 * (v19 - 128);
            v22 = 227 * v18 + (v15 << 7);
            v23 = (v20 + 64) >> 7;
            v24 = (v21 + 64) >> 7;
            v25 = (v22 + 64) >> 7;
            if (v20 <= -65)
            {
              v26 = 0;
            }

            else
            {
              v26 = -1;
            }

            if (v23 >= 0x100)
            {
              LOBYTE(v23) = v26;
            }

            if (v21 <= -65)
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            if (v24 < 0x100)
            {
              v27 = v24;
            }

            if (v22 <= -65)
            {
              v28 = 0;
            }

            else
            {
              v28 = -1;
            }

            if (v25 < 0x100)
            {
              v28 = v25;
            }

            *v13 = ~v23;
            v13[1] = ~v27;
            v13[2] = ~v28;
            v29 = *v9++;
            v13[3] = v29;
            v13 += 4;
            --v12;
          }

          while (v12);
        }
      }

      else if (v7)
      {
        v30 = *(v42 + 8 * v6);
        v31 = *(v43 + 8 * v6);
        v32 = *(v44 + 8 * v6);
        v33 = buffer;
        v34 = v7;
        v35 = *(v45 + 8 * v6);
        do
        {
          v36 = *v35++;
          *v33 = v36;
          v37 = *v32++;
          v33[1] = v37;
          v38 = *v31++;
          v33[2] = v38;
          v39 = *v30++;
          v33[3] = v39;
          v33 += 4;
          --v34;
        }

        while (v34);
      }

      v40 = *(a2 + 6804);
      v41 = *(a3 + 36);
      if (v40)
      {
        aj_row_translate(v40, *(a2 + 28), *(a2 + 6492), *(a2 + 128), *(a2 + 6592), *(a2 + 6492) - *(a2 + 6596), *(a2 + 6496), v41, buffer, *(a2 + 64));
        aj_rowbuffer_return_buffer((a3 + 152), buffer);
        v41 = *(a3 + 36);
      }

      *(a3 + 36) = v41 + 1;
      ++v6;
    }

    while (v6 != v46);
  }
}

void aj_icol_mcurow_semiplanar444(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1[10];
  v7 = a1[11];
  v29 = a1[12];
  v9 = *(a3 + 1080);
  if (*(a2 + 6804))
  {
    buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
    v11 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6792));
  }

  else
  {
    v11 = 0;
    buffer = 0;
  }

  if (a4 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v27 = v7 >> 1;
    v28 = v8 >> 1;
    v14 = (a3 + 568);
    v15 = a4;
    v26 = a3 + 568;
    do
    {
      if (**a2 == 3)
      {
        v12 = *(v26 + (*(a2 + 52) << 7) + 8 * (v9 >> v27));
        v13 = *(v26 + (*(a2 + 56) << 7) + 8 * (v9 >> v27));
      }

      if (!*(a2 + 6804))
      {
        v16 = *(a3 + 36);
        v17 = *(a2 + 6592);
        buffer = (*(a2 + 64) + *(a2 + 96) * v16 + v17);
        v11 = (*(a2 + 72) + *(a2 + 104) * v16 + v17);
      }

      LOBYTE(v25) = *(a3 + 1081);
      (*(a2 + 6920))(*v14, 0, v12, 0, v13, 0, buffer, 0, v11, __PAIR64__(v28, v29), v25);
      v18 = *(a2 + 6804);
      if (v18)
      {
        v30 = v13;
        v19 = v12;
        v20 = *(a2 + 72);
        v21 = *(a2 + 6492);
        v22 = *(a2 + 6596);
        v23 = v21 - v22;
        aj_row_translate(v18, 1, v21, *(a2 + 128), *(a2 + 6592), v21 - v22, *(a2 + 6496), *(a3 + 36), buffer, *(a2 + 64));
        v24 = v20;
        v12 = v19;
        v13 = v30;
        aj_row_translate(*(a2 + 6804), 2, *(a2 + 6492), *(a2 + 136), *(a2 + 6592), v23, *(a2 + 6496), *(a3 + 36), v11, v24);
      }

      ++*(a3 + 36);
      ++v9;
      ++v14;
      --v15;
    }

    while (v15);
  }

  if (*(a2 + 6804))
  {
    aj_rowbuffer_return_buffer((a3 + 152), buffer);

    aj_rowbuffer_return_buffer((a3 + 152), v11);
  }
}

void aj_icol_mcurow_semiplanar422(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1[10];
  v6 = a1[11];
  v30 = a1[12];
  v8 = *(a3 + 1080);
  if (*(a2 + 6804))
  {
    buffer = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6776));
    v11 = aj_rowbuffer_get_buffer((a3 + 152), *(a2 + 6792));
  }

  else
  {
    v11 = 0;
    buffer = 0;
  }

  if (a4 < 1)
  {
    v16 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v28 = v6 >> 1;
    v29 = v7 >> 1;
    v14 = (a3 + 568);
    v15 = a4;
    v16 = a3;
    v27 = a3 + 568;
    do
    {
      if (**a2 == 3)
      {
        v12 = *(v27 + (*(a2 + 52) << 7) + 8 * (v8 >> v28));
        v13 = *(v27 + (*(a2 + 56) << 7) + 8 * (v8 >> v28));
      }

      if (!*(a2 + 6804))
      {
        v17 = *(v16 + 36);
        v18 = *(a2 + 6592);
        buffer = (*(a2 + 64) + *(a2 + 96) * v17 + v18);
        v11 = (*(a2 + 72) + *(a2 + 104) * v17 + v18);
      }

      LOBYTE(v26) = *(v16 + 1081);
      (*(a2 + 6920))(*v14, 0, v12, 0, v13, 0, buffer, 0, v11, __PAIR64__(v29, v30), v26);
      v19 = *(a2 + 6804);
      if (v19)
      {
        v20 = v12;
        v21 = *(a2 + 72);
        v22 = *(a2 + 6492);
        v23 = ((v22 - *(a2 + 6596)) & 1) + v22 - *(a2 + 6596);
        aj_row_translate(v19, 1, v22, *(a2 + 128), *(a2 + 6592), v23, *(a2 + 6496), *(a3 + 36), buffer, *(a2 + 64));
        v24 = v23;
        v16 = a3;
        v25 = v21;
        v12 = v20;
        aj_row_translate(*(a2 + 6804), 2, *(a2 + 6492) / 2, *(a2 + 136), *(a2 + 6592) / 2, v24 / 2, *(a2 + 6496), *(a3 + 36), v11, v25);
      }

      ++*(v16 + 36);
      ++v8;
      ++v14;
      --v15;
    }

    while (v15);
  }

  if (*(a2 + 6804))
  {
    aj_rowbuffer_return_buffer((v16 + 152), buffer);

    aj_rowbuffer_return_buffer((v16 + 152), v11);
  }
}

void aj_icol_mcurow_semiplanar4X0(_DWORD *a1, int **a2, uint64_t a3, unsigned int a4, int a5)
{
  v52 = *(a2 + 11);
  v57 = v52 == 2;
  if (*(a3 + 1083))
  {
    v8 = (a5 + a4) < a1[16];
  }

  else
  {
    v8 = 1;
  }

  v58 = v8;
  v10 = a1[10];
  v9 = a1[11];
  v62 = a2[8];
  v54 = a2[9];
  v56 = a1[12];
  v12 = *(a2 + 13);
  v11 = *(a2 + 14);
  v13 = *(a3 + 32);
  if ((v13 & 1) != 0 && *(a3 + 36) == v13)
  {
    *(a3 + 36) = v13 + 1;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v65 = *(a3 + 1080);
  if (*(a2 + 1701))
  {
    v15 = v11;
    buffer = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
    v17 = aj_rowbuffer_get_buffer((a3 + 152), a2[847]);
    v18 = aj_rowbuffer_get_buffer((a3 + 152), a2[849]);
    v11 = v15;
    v19 = v18;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    buffer = 0;
  }

  v55 = v10 >> 1;
  if (v14 >= a4)
  {
LABEL_39:
    v39 = v58;
  }

  else
  {
    v59 = v19;
    v60 = v17;
    v61 = buffer;
    v20 = 0;
    v21 = 0;
    v64 = v9 >> 1;
    v22 = v14;
    v23 = a4;
    v53 = a4 - 1;
    v24 = 1;
    v63 = a3 + 568 + (v12 << 7);
    v25 = a3 + 568 + (v11 << 7);
    do
    {
      v26 = v22;
      while (1)
      {
        v27 = **a2;
        if (v27 == 3)
        {
          v28 = (v65 + v26) >> v64;
          v20 = *(v63 + 8 * v28);
          v21 = *(v25 + 8 * v28);
        }

        v29 = *(a3 + 568 + 8 * v26);
        if (*(a3 + 1480))
        {
          break;
        }

        *(a3 + 1480) = 1;
        *(a3 + 1456) = v29;
        if (*(a3 + 1082) && !*(a2 + 6577) && !*(a2 + 6576))
        {
          v24 = 0;
          if (v27 == 3)
          {
            *(a3 + 1464) = v20;
            *(a3 + 1472) = v21;
          }

          goto LABEL_34;
        }

        aj_rowbuffer_lock_buffer((a3 + 152), v29);
        if (**a2 != 3)
        {
          v24 = 1;
          goto LABEL_34;
        }

        *(a3 + 1464) = v20;
        *(a3 + 1472) = v21;
        aj_rowbuffer_lock_buffer((a3 + 152), v20);
        aj_rowbuffer_lock_buffer((a3 + 152), *(a3 + 1472));
        ++v26;
        v24 = 1;
        if (v23 == v26)
        {
          v17 = v60;
          buffer = v61;
          v19 = v59;
          goto LABEL_39;
        }
      }

      if (!*(a2 + 1701))
      {
        v30 = *(a3 + 36);
        v31 = a2[12];
        v32 = *(a2 + 1648);
        v60 = v31 + v62 + v31 * v30 + v32;
        v61 = (v62 + v31 * v30 + v32);
        v59 = (v54 + a2[13] * ((v30 + (v30 >> 31)) >> 1) + ((2 * v32) >> v57));
      }

      LOBYTE(v50) = *(a3 + 1081);
      (a2[865])(*(a3 + 1456), v29, *(a3 + 1464), v20, *(a3 + 1472), v21, v61, v60, v59, __PAIR64__(v55, v56), v50);
      if (v24)
      {
        aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1456));
        if (**a2 == 3)
        {
          aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1464));
          aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1472));
        }
      }

      *(a3 + 1480) = 0;
      v33 = *(a2 + 1701);
      if (v33)
      {
        v34 = *(a2 + 1623);
        v35 = v34 - *(a2 + 1649);
        v36 = v35 & 1;
        if (v52 != 2)
        {
          v36 = 0;
        }

        v51 = v25;
        v37 = v36 + v35;
        aj_row_translate(v33, 1, v34, a2[16], *(a2 + 1648), v36 + v35, *(a2 + 1624), *(a3 + 36), v61, v62);
        aj_row_translate(*(a2 + 1701), 1, *(a2 + 1623), a2[16], *(a2 + 1648), v37, *(a2 + 1624), *(a3 + 36) + 1, v60, v62);
        v38 = v37 >> v57;
        v25 = v51;
        aj_row_translate(*(a2 + 1701), 2, *(a2 + 1623) >> v57, a2[17], *(a2 + 1648) >> v57, v38, *(a2 + 1624) / 2, *(a3 + 36) / 2, v59, v54);
      }

      *(a3 + 36) += 2;
LABEL_34:
      v22 = v26 + 1;
    }

    while (v53 != v26);
    v39 = v58;
    if (v24)
    {
      v17 = v60;
      buffer = v61;
      v19 = v59;
    }

    else
    {
      buffer = v61;
      v19 = v59;
      if (*(a3 + 1480))
      {
        *(a3 + 1480) = 0;
      }

      v17 = v60;
    }
  }

  if (!v39 && *(a3 + 1480))
  {
    if (!*(a2 + 1701))
    {
      v40 = *(a3 + 36);
      v41 = a2[12];
      v42 = *(a2 + 1648);
      buffer = a2[8] + v41 * v40 + v42;
      v17 = v41 + buffer;
      v19 = a2[9] + a2[13] * ((v40 + (v40 >> 31)) >> 1) + ((2 * v42) >> v57);
    }

    LOBYTE(v50) = *(a3 + 1081);
    (a2[865])(*(a3 + 1456), *(a3 + 1456), *(a3 + 1464), *(a3 + 1464), *(a3 + 1472), *(a3 + 1472), buffer, v17, v19, __PAIR64__(v55, v56), v50);
    aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1456));
    if (**a2 == 3)
    {
      aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1464));
      aj_rowbuffer_return_buffer((a3 + 152), *(a3 + 1472));
    }

    v43 = *(a2 + 1701);
    if (v43)
    {
      v44 = *(a2 + 1623);
      v45 = v44 - *(a2 + 1649);
      v46 = v45 & 1;
      if (v52 != 2)
      {
        v46 = 0;
      }

      v47 = v19;
      v48 = v46 + v45;
      aj_row_translate(v43, 1, v44, a2[16], *(a2 + 1648), v46 + v45, *(a2 + 1624), *(a3 + 36), buffer, v62);
      aj_row_translate(*(a2 + 1701), 1, *(a2 + 1623), a2[16], *(a2 + 1648), v48, *(a2 + 1624), *(a3 + 36) + 1, v17, v62);
      v49 = v48 >> v57;
      v19 = v47;
      aj_row_translate(*(a2 + 1701), 2, *(a2 + 1623) >> v57, a2[17], *(a2 + 1648) >> v57, v49, *(a2 + 1624) / 2, *(a3 + 36) / 2, v47, v54);
    }

    *(a3 + 36) += 2;
    *(a3 + 1480) = 0;
  }

  if (*(a2 + 1701))
  {
    aj_rowbuffer_return_buffer((a3 + 152), buffer);
    aj_rowbuffer_return_buffer((a3 + 152), v17);

    aj_rowbuffer_return_buffer((a3 + 152), v19);
  }
}

uint64_t aj_icol_max_rows_out(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    return (*(v4 + 8))();
  }

  else
  {
    return (a4 + *(a2 + 48) - 1);
  }
}

uint64_t (**aj_select_adaptive_coder(uint64_t (**result)(int a1)))(int a1)
{
  result[3] = arithmetic_context_init_0;
  result[4] = arithmetic_context_init_prob_0;
  result[10] = arithmetic_decode_close_0;
  result[8] = arithmetic_decode_static_data_0;
  result[2] = arithmetic_decode_init_0;
  result[6] = arithmetic_decode_symbols_0;
  result[9] = arithmetic_encode_close_0;
  result[7] = arithmetic_encode_static_data_0;
  result[1] = arithmetic_encode_init_0;
  result[5] = arithmetic_encode_symbols_0;
  *result = arithmetic_prob_table_size_0;
  return result;
}

uint64_t arithmetic_decode_static_data_0(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v3 = a3;
  if (a3 - 33 <= 0xFFFFFFDF)
  {
    aj_log_error(0, "Illegal number of data bits: %d", a3);
    return 7;
  }

  *a2 = 0;
  if (a3 < 0x11)
  {
    goto LABEL_9;
  }

  v7 = HIWORD(*a1);
  if (*(a1 + 8) / v7 >= 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  else
  {
    v8 = *(a1 + 8) / v7;
  }

  result = arithmetic_decode_0(a1, *(a1 + 24), v8, v8 + 1, v7);
  if (!result)
  {
    v3 -= 16;
    *a2 = v8 << v3;
LABEL_9:
    v9 = *a1 >> v3;
    if (*(a1 + 8) / v9 >= ~(-1 << v3))
    {
      v10 = ~(-1 << v3);
    }

    else
    {
      v10 = *(a1 + 8) / v9;
    }

    result = arithmetic_decode_0(a1, *(a1 + 24), v10, v10 + 1, v9);
    if (!result)
    {
      *a2 |= v10;
    }
  }

  return result;
}

uint64_t arithmetic_decode_init_0(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 24);
  v6 = 0;
  *a1 = 0xFFFFFFFFLL;
  v4 = 4;
  do
  {
    *(a1 + 8) = v2 << 8;
    result = aj_istream_read_bytes_le(v3, &v6, 1);
    if (result)
    {
      break;
    }

    v2 = *(a1 + 8) | v6;
    *(a1 + 8) = v2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t arithmetic_decode_symbols_0(uint64_t a1, int **a2, _BYTE *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  while (1)
  {
    v7 = 0;
    v8 = *a2;
    v10 = *a2 + 1;
    v9 = **a2;
    v11 = &v10[v9];
    v12 = v11[1];
    v13 = v11[2];
    v14 = v12 - 1;
    v15 = *a1 / v12;
    if (v12 - 1 >= *(a1 + 8) / v15)
    {
      v14 = *(a1 + 8) / v15;
    }

    v16 = (v8 + 4 * v9);
    do
    {
      v18 = *v16--;
      v17 = v18;
      ++v7;
    }

    while (v18 > v14);
    v19 = v7 - 1;
    v32 = a4;
    if (v7 - 1 < v13)
    {
      v20 = v9 - v7;
      v21 = v9 - v7 + 1;
      v23 = *(v8 + 8 + 4 * (v9 - v7) - 4);
      v22 = *(v8 + 8 + 4 * (v9 - v7));
      if (v21 <= v9)
      {
        v24 = v20;
        do
        {
          ++*(v8 + 8 + 4 * v24++);
        }

        while (v9 != v24);
        v12 = v11[1];
      }

      v25 = *(a1 + 24);
      v11[1] = v12 + 1;
      result = arithmetic_decode_0(a1, v25, v17, v22 + v17 - v23, v15);
      if (result)
      {
        return result;
      }

      *a3 = v19;
      if (v11[1] >= 0x800)
      {
        scale_cumprob(v10, v9);
      }

      goto LABEL_31;
    }

    v27 = v10[(v9 + (~v19 | 0xFFFFFF00))];
    result = arithmetic_decode_0(a1, *(a1 + 24), v27, v27 + 1, v15);
    if (result)
    {
      return result;
    }

    v28 = -1;
    do
    {
      ++v28;
    }

    while (v28 <= 0x1F && 1 << v28 < v9);
    v29 = *a1 >> v28;
    v30 = *(a1 + 8) / v29 >= ~(-1 << v28) ? ~(-1 << v28) : *(a1 + 8) / v29;
    result = arithmetic_decode_0(a1, *(a1 + 24), v30, v30 + 1, v29);
    if (result)
    {
      return result;
    }

    *a3 = v30;
    if (v30 >= v9)
    {
      break;
    }

    cum_to_probs(v10, v9);
    if (v13 < v30)
    {
      do
      {
        ++*(v8 + 12 + 4 * v13);
        ++v11[1];
        ++v13;
      }

      while (v13 < v30);
    }

    if (v30 + 1 < v9)
    {
      ++v10[v30 + 2];
      ++v11[1];
    }

    ++v10[v30 + 1];
    ++v11[1];
    probs_to_cum(v10, v9);
    if (v9 == v30 + 2)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30 + 1;
    }

    v11[2] = v31;
LABEL_31:
    ++a2;
    ++a3;
    a4 = v32 - 1;
    if (v32 == 1)
    {
      return 0;
    }
  }

  aj_log_error(0, "Symbol is too large. %d > %d", v30, v9);
  return 7;
}

uint64_t arithmetic_encode_close_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 4);
  v4 = 4;
  while (1)
  {
    result = byte_plus_prev(a1, v2, HIBYTE(v3));
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 4) << 8;
    *(a1 + 4) = v3;
    if (!--v4)
    {
      result = aj_ostream_write_bytes(v2, *(a1 + 33), 1);
      if (!result)
      {
        if (*(a1 + 12))
        {
          while (1)
          {
            result = aj_ostream_write_bytes(v2, 255, 1);
            if (result)
            {
              break;
            }

            v6 = *(a1 + 12) - 1;
            *(a1 + 12) = v6;
            if (!v6)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          result = 0;
          *(a1 + 33) = 0;
        }
      }

      return result;
    }
  }
}

uint64_t arithmetic_encode_static_data_0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (a3 >= 17)
  {
    v3 = a3 - 16;
    result = arithmetic_encode_static(a1, *(a1 + 16), a2 >> (a3 - 16), (a2 >> (a3 - 16)) + 1, 16);
    if (result)
    {
      return result;
    }

    v4 &= ~(-1 << v3);
  }

  v7 = *(a1 + 16);

  return arithmetic_encode_static(a1, v7, v4, v4 + 1, v3);
}

uint64_t arithmetic_encode_init_0(uint64_t a1)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  return 0;
}