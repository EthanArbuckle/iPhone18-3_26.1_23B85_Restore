uint64_t signalling_mode1_tcx20_enc(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (v4 > 16400)
  {
    if (*(a1 + 96) > 64000)
    {
      v11 = 3;
      if (!a2)
      {
        return v11;
      }
    }

    else
    {
      if (!a2)
      {
        return 4;
      }

      push_indice(a1, 0, 1, 1);
      v11 = 4;
    }

    push_indice(a1, 5, 1, 1);
    v20 = *(a1 + 130);
    v16 = a1;
    v17 = 10;
    if (v20 == 2)
    {
      v18 = 2;
    }

    else if (v20 == 1)
    {
      v18 = 1;
    }

    else if (*(a1 + 130))
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }

    v19 = 2;
    goto LABEL_46;
  }

  v5 = 0;
  v6 = acelp_sig_tbl;
  while (1)
  {
    v7 = *v6;
    v6 = &acelp_sig_tbl[(v5 + 1)];
    v8 = v6 + 8 > ACB_bits_tbl || v6 >= v6 + 8;
    v9 = !v8 && v6 >= acelp_sig_tbl;
    v10 = v9;
    if (v7 == v4)
    {
      break;
    }

    ++v5;
    if (!v10)
    {
      goto LABEL_32;
    }
  }

  if (!v10 || (LOWORD(v4) = v5 + 2, v12 = &acelp_sig_tbl[(v5 + 2)], v12 < acelp_sig_tbl) || v12 + 1 > ACB_bits_tbl || v12 > v12 + 1)
  {
LABEL_32:
    __break(0x5519u);
    goto LABEL_33;
  }

  v2 = *v6;
  LOWORD(v6) = v5 + 2;
  while (*v12 != ((8 * *(a1 + 130)) | 6))
  {
    LOWORD(v6) = v6 + 1;
    v12 = &acelp_sig_tbl[v6];
    v13 = v12 + 1;
    if (v12 < acelp_sig_tbl || v13 > ACB_bits_tbl || v12 >= v13)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  if (a2)
  {
    push_indice(a1, 4, v6 - v4, v2);
    v11 = v2 + 1;
    v16 = a1;
    v17 = 5;
    v18 = 1;
    v19 = 1;
LABEL_46:
    push_indice(v16, v17, v18, v19);
    return v11;
  }

  return (v2 + 1);
}

uint64_t WriteTnsData(uint64_t a1, unsigned int **a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  if (*(a1 + 1) < 2u)
  {
    v7 = a2;
    v8 = a2 + 3;
    v9 = a2;
    v5 = &tnsEnabledWBTCX20BitMap;
  }

  else if (*(a1 + 16) > 511)
  {
    v7 = a2;
    v8 = a2 + 3;
    v9 = a2;
    v5 = &tnsEnabledSWBTCX20BitMap;
  }

  else
  {
    v7 = a2;
    v8 = a2 + 3;
    v9 = a2;
    v5 = &tnsEnabledSWBTCX10BitMap;
  }

  return WriteToBitstream(v5, 1, &v7, a3, a4, a5);
}

uint64_t EncodeIndex(uint64_t result, int a2, uint64_t a3)
{
  if ((a2 & 0x100) != 0)
  {
    v10 = &NumRatioBits + 68 * result;
    v11 = &v10[4 * (a2 >> 9)];
    v12 = (v11 + 4);
    if (v11 >= v10 && v12 <= (v10 + 68) && v11 < v12)
    {
      v15 = *(a3 + 40);
      v8 = *(a3 + 50);
      v4 = (v15 + 4 * v8);
      v16 = (v4 + 2);
      v17 = v4 < v15 || v16 > v15 + 7812;
      if (!v17 && v4 < v16)
      {
        v9 = *v11;
        *v4 = (a2 - 1);
        goto LABEL_25;
      }
    }
  }

  else
  {
    v3 = *(a3 + 40);
    v4 = (v3 + 4 * *(a3 + 50));
    v5 = (v4 + 2);
    if (v4 >= v3 && v5 <= v3 + 7812 && v4 < v5)
    {
      LOWORD(v8) = *(a3 + 50);
      *v4 = a2;
      LOWORD(v9) = 8;
LABEL_25:
      v4[1] = v9;
      *(a3 + 50) = v8 + 1;
      *(a3 + 36) += v9;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t IGFEncWriteBitstream(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v7 = v3;
  v8 = v2;
  v9 = v1;
  *v123 = *MEMORY[0x1E69E9840];
  v10 = *v3;
  v1[502] = 0;
  ++v1[503];
  if (v5)
  {
    v1[501] = 0;
  }

  v11 = &v1[65 * v4 + 4];
  if ((v1 + 4) > v11 || v11 + 260 > (v1 + 199))
  {
    goto LABEL_155;
  }

  v13 = *(v11 + 112);
  v14 = *(v11 + 116);
  if (v13 >= v14)
  {
LABEL_14:
    IGFCommonFuncsWriteSerialBit(v2, v3, 1);
    if (v8)
    {
      v9[355] = 0;
      goto LABEL_116;
    }

    v9[356] = v9[355];
    v19 = v9 + 290;
    v20 = (v9 + 354);
    v21 = v9 + 226;
    mvi2i(v9 + 226, (v9 + 290), v9 + 290, (v9 + 354), v9[354]);
    goto LABEL_115;
  }

  v15 = v1 + 200;
  v16 = (v1 + 223);
  v17 = &v1[v13 + 200];
  v18 = v14 - v13;
  while (1)
  {
    if (v17 < v15 || (v17 + 1) > v16 || v17 > v17 + 1)
    {
      goto LABEL_155;
    }

    if (*v17)
    {
      break;
    }

    ++v17;
    if (!--v18)
    {
      goto LABEL_14;
    }
  }

  IGFCommonFuncsWriteSerialBit(v2, v3, 0);
  if (!v8)
  {
    v9[356] = v9[355];
    mvi2i(v9 + 226, (v9 + 290), v9 + 290, (v9 + 354), v9[354]);
  }

  v22 = *(v11 + 112);
  v23 = &v15[v22];
  if (v23 < v15)
  {
LABEL_155:
    __break(0x5519u);
  }

  v115 = v11;
  v24 = *v7;
  memset(__b, 170, sizeof(__b));
  v9[224] = 0;
  v9[225] = v24;
  *(v9 + 195) = 0xFFFF00000000;
  v9[392] = 0;
  if (v6)
  {
    v9[355] = 0;
  }

  v121 = v9 + 224;
  v119 = v9 + 226;
  v19 = v9 + 290;
  v25 = v9[354];
  if (v25 >= 1)
  {
    v118 = (v9 + 290);
    v113 = v6;
    v114 = v10;
    v26 = 0;
    v27 = 0;
    v120 = v9[355];
    v28 = (v23 + 1);
    v30 = (v23 + 1) > v16 || v28 < v23;
    v32 = (v23 + 2) > v16 || v28 > (v23 + 2) || v30;
    v116 = v32;
    v117 = v30;
    v33 = &v9[v22];
    v34 = 4 * v25;
    while (1)
    {
      if (v120)
      {
        if (v27)
        {
          v35 = &v9[v27 / 4 + 226];
          if (v35 < v119)
          {
            goto LABEL_155;
          }

          v36 = &v9[v27 / 4 + 227];
          if (v36 > v118)
          {
            goto LABEL_155;
          }

          if (v35 > v36)
          {
            goto LABEL_155;
          }

          v37 = &v33[v27 / 4 + 199];
          if (v37 < v23)
          {
            goto LABEL_155;
          }

          v38 = &v33[v27 / 4 + 200];
          if (v38 > v16)
          {
            goto LABEL_155;
          }

          if (v37 > v38)
          {
            goto LABEL_155;
          }

          v39 = &v9[v27 / 4 + 225];
          if (v39 < v119)
          {
            goto LABEL_155;
          }

          v40 = &v9[v27 / 4 + 226];
          if (v40 > v118)
          {
            goto LABEL_155;
          }

          if (v39 > v40)
          {
            goto LABEL_155;
          }

          v41 = &v33[v27 / 4 + 200];
          if (v41 < v23)
          {
            goto LABEL_155;
          }

          v42 = &v33[v27 / 4 + 201];
          if (v42 > v16)
          {
            goto LABEL_155;
          }

          if (v41 > v42)
          {
            goto LABEL_155;
          }

          v43 = *v35;
          v44 = *v37;
          v45 = *v39;
          v46 = vdup_n_s32(v45);
          v47 = vsub_s32(__PAIR64__(v43, v44), v46);
          v48 = vcgt_u32(0x400000004, vabd_s32(__PAIR64__(v43, v44), v46));
          v49 = vcgt_s32(v47, 0x300000003);
          v50 = vadd_s32(vbsl_s8(v48, v47, vorr_s8(vand_s8(v49, 0x300000003), (*&vmvn_s8(v49) & 0xFFFFFFFDFFFFFFFDLL))), 0x300000003);
          v51 = vmul_s32(v50, 0x1C000000C4);
          v52 = *(v9 + 191);
          v53 = v52 + 2 * vadd_s32(v51, vdup_lane_s32(v51, 1)).i32[0];
          if (v53 < v52)
          {
            goto LABEL_155;
          }

          v54 = *(v9 + 193);
          v55 = (v54 + 2 * (v50.i32[1] - v50.i32[0] + 8 * v50.i32[0]));
          v56 = v55 + 1;
          v57 = v55 < v54 || v56 > *(v9 + 194);
          if (v57 || v55 > v56)
          {
            goto LABEL_155;
          }

          v59 = *(v9 + 192);
          v60 = *v55;
          v61 = v45 - (v44 + v43) + *v41;
        }

        else
        {
          if (v117)
          {
            goto LABEL_155;
          }

          v61 = *v23 - v9[226];
          v60 = *(v9 + 760);
          v53 = *(v9 + 188);
          v59 = *(v9 + 189);
        }
      }

      else if (v26 == 1)
      {
        if (v116)
        {
          goto LABEL_155;
        }

        v61 = v23[1] - *v23;
        v60 = *(v9 + 732);
        v53 = *(v9 + 181);
        v59 = *(v9 + 182);
      }

      else
      {
        if (!v26)
        {
          if (v117)
          {
            goto LABEL_155;
          }

          v9[224] = ari_encode_14bits_ext(__b, v123, v9[224], v9 + 390, *v23 >> 2, *(v9 + 179), *(v9 + 180));
          arith_encode_bits(v121, __b, v123, *v23 & 3, 2);
          goto LABEL_92;
        }

        v62 = &v33[v27 / 4 + 199];
        if (v62 < v23)
        {
          goto LABEL_155;
        }

        v63 = &v33[v27 / 4 + 200];
        if (v63 > v16)
        {
          goto LABEL_155;
        }

        if (v62 > v63)
        {
          goto LABEL_155;
        }

        v64 = &v33[v27 / 4 + 198];
        if (v64 < v23)
        {
          goto LABEL_155;
        }

        if (v64 > v62)
        {
          goto LABEL_155;
        }

        v65 = &v33[v27 / 4 + 201];
        if (v65 > v16 || v63 > v65)
        {
          goto LABEL_155;
        }

        v66 = *v62;
        v67 = v66 - *v64;
        if (v67 >= 0)
        {
          v68 = v67;
        }

        else
        {
          v68 = -v67;
        }

        if (v67 > 3)
        {
          v69 = 3;
        }

        else
        {
          v69 = -3;
        }

        if (v68 >= 4)
        {
          v67 = v69;
        }

        v70 = v67 + 3;
        v71 = *(v9 + 184);
        v53 = v71 + 56 * v70;
        if (v53 < v71)
        {
          goto LABEL_155;
        }

        v72 = *(v9 + 186);
        v73 = (v72 + 2 * v70);
        v74 = v73 + 1;
        v75 = v73 < v72 || v74 > *(v9 + 187);
        if (v75 || v73 > v74)
        {
          goto LABEL_155;
        }

        v61 = *v63 - v66;
        v59 = *(v9 + 185);
        v60 = *v73;
      }

      arith_encode_residual(v121, __b, v123, v61, v53, v59, v60);
LABEL_92:
      v27 += 4;
      ++v26;
      if (v34 == v27)
      {
        v77 = v9[224];
        v78 = v9[390];
        v79 = v9[392];
        v6 = v113;
        v10 = v114;
        v19 = v9 + 290;
        goto LABEL_95;
      }
    }
  }

  v79 = 0;
  v78 = 0;
  v77 = 0;
LABEL_95:
  done = ari_done_encoding_14bits(__b, v123, v77, v78, v79);
  v9[224] = done;
  v9[225] += done;
  v21 = v9 + 226;
  mvi2i(v23, (v9 + 223), v119, v19, v9[354]);
  ++v9[355];
  if (!v8)
  {
    v20 = (v9 + 354);
    *v7 = v9[225];
    v11 = v115;
LABEL_115:
    v9[355] = v9[356];
    mvi2i(v19, v20, v21, v19, v9[354]);
    goto LABEL_116;
  }

  v81 = *v121;
  if (v81 >= 1)
  {
    v82 = __b;
    do
    {
      v83 = v82 + 1;
      v84 = v82 < __b || v83 > v123;
      if (v84 || v82 > v83)
      {
        goto LABEL_155;
      }

      v86 = *(v8 + 40);
      v87 = *(v8 + 50);
      v88 = (v86 + 4 * v87);
      v89 = (v88 + 2);
      v90 = v88 < v86 || v89 > v86 + 7812;
      if (v90 || v88 > v89)
      {
        goto LABEL_155;
      }

      v92 = *v82++;
      *v88 = v92;
      v88[1] = 1;
      *(v8 + 50) = v87 + 1;
      ++*(v8 + 36);
    }

    while (--v81);
  }

  *v7 = v9[225];
  v11 = v115;
LABEL_116:
  v93 = *(v11 + 164);
  if (!v6)
  {
    if (v93 < 1)
    {
      goto LABEL_145;
    }

    v106 = (v9 + 399);
    v107 = v9 + 394;
    v108 = *(v11 + 164);
    while (1)
    {
      if (v107 < v9 + 394 || (v107 + 1) > v106 || v107 > v107 + 1 || (v107 + 5) < v106 || v107 + 6 > v9 + 404 || v107 + 5 > v107 + 6)
      {
        goto LABEL_155;
      }

      if (*v107 != v107[5])
      {
        break;
      }

      ++v107;
      if (!--v108)
      {
        goto LABEL_145;
      }
    }

    IGFCommonFuncsWriteSerialBit(v8, v7, 0);
  }

  IGF_WriteWhiteningTile(v8, v7, v9[394]);
  if (v93 < 2)
  {
LABEL_145:
    v105 = 1;
    goto LABEL_146;
  }

  v94 = (v9 + 394);
  v95 = (v9 + 399);
  v96 = v93 - 1;
  v97 = v9 + 394;
  v98 = v96;
  do
  {
    v99 = v97 + 1;
    v100 = v97 + 2;
    if ((v97 + 1) < v94 || v100 > v95 || v99 > v100 || v99 > v95 || v97 > v99)
    {
      goto LABEL_155;
    }

    if (v97[1] != *v97)
    {
      IGFCommonFuncsWriteSerialBit(v8, v7, 1);
      v111 = v9 + 395;
      while (v111 >= v94 && (v111 + 1) <= v95 && v111 <= v111 + 1)
      {
        v112 = *v111++;
        IGF_WriteWhiteningTile(v8, v7, v112);
        if (!--v96)
        {
          goto LABEL_147;
        }
      }

      goto LABEL_155;
    }

    ++v97;
    --v98;
  }

  while (v98);
  v105 = 0;
LABEL_146:
  IGFCommonFuncsWriteSerialBit(v8, v7, v105);
LABEL_147:
  result = IGFCommonFuncsWriteSerialBit(v8, v7, v9[504] & 1);
  v110 = *v7 - v10;
  v9[502] = v110;
  v9[501] += v110;
  return result;
}

uint64_t push_next_bits(uint64_t result, unint64_t a2, int a3)
{
  v3 = *(result + 40);
  v4 = v3 + 7812;
  v5 = (v3 + 4 * *(result + 50));
  if (a3 < 16)
  {
    LODWORD(v6) = 0;
LABEL_60:
    if (v6 >= a3)
    {
LABEL_75:
      *(result + 50) = (v5 - v3) >> 2;
      *(result + 36) += a3;
      return result;
    }

    v27 = 0;
    v28 = a3 - v6;
    v29 = a2 + 4 * v6;
    while (1)
    {
      v30 = (v29 + v27 * 2);
      if (v29 + v27 * 2 < a2)
      {
        break;
      }

      v31 = &v5[v27];
      v32 = (v30 + 1) > a2 + 4 * a3 || v30 > v30 + 1;
      v33 = v32 || v3 > v31;
      if (v33 || (v31 + 2) > v4)
      {
        break;
      }

      v35 = &v5[v27];
      *v35 = *v30;
      v35[1] = 1;
      v27 += 2;
      if (!--v28)
      {
        LODWORD(v5) = v5 + v27 * 2;
        goto LABEL_75;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a2 + 4 * a3;
    v8 = a2 + 64;
    while (1)
    {
      v9 = v8 - 60;
      v10 = v8 - 64 < a2 || v9 > v7;
      if (v10 || v8 - 64 > v9)
      {
        break;
      }

      if (v9 < a2)
      {
        break;
      }

      v12 = v8 - 56;
      if (v8 - 56 > v7)
      {
        break;
      }

      if (v9 > v12)
      {
        break;
      }

      if (v12 < a2)
      {
        break;
      }

      v13 = v8 - 52;
      if (v8 - 52 > v7)
      {
        break;
      }

      if (v12 > v13)
      {
        break;
      }

      if (v13 < a2)
      {
        break;
      }

      v14 = v8 - 48;
      if (v8 - 48 > v7)
      {
        break;
      }

      if (v13 > v14)
      {
        break;
      }

      if (v14 < a2)
      {
        break;
      }

      v15 = v8 - 44;
      if (v8 - 44 > v7)
      {
        break;
      }

      if (v14 > v15)
      {
        break;
      }

      if (v15 < a2)
      {
        break;
      }

      v16 = v8 - 40;
      if (v8 - 40 > v7)
      {
        break;
      }

      if (v15 > v16)
      {
        break;
      }

      if (v16 < a2)
      {
        break;
      }

      v17 = v8 - 36;
      if (v8 - 36 > v7)
      {
        break;
      }

      if (v16 > v17)
      {
        break;
      }

      if (v17 < a2)
      {
        break;
      }

      v18 = v8 - 32;
      if (v8 - 32 > v7)
      {
        break;
      }

      if (v17 > v18)
      {
        break;
      }

      if (v18 < a2)
      {
        break;
      }

      v19 = v8 - 28;
      if (v8 - 28 > v7)
      {
        break;
      }

      if (v18 > v19)
      {
        break;
      }

      if (v19 < a2)
      {
        break;
      }

      v20 = v8 - 24;
      if (v8 - 24 > v7)
      {
        break;
      }

      if (v19 > v20)
      {
        break;
      }

      if (v20 < a2)
      {
        break;
      }

      v21 = v8 - 20;
      if (v8 - 20 > v7)
      {
        break;
      }

      if (v20 > v21)
      {
        break;
      }

      if (v21 < a2)
      {
        break;
      }

      v22 = v8 - 16;
      if (v8 - 16 > v7)
      {
        break;
      }

      if (v21 > v22)
      {
        break;
      }

      if (v22 < a2)
      {
        break;
      }

      v23 = v8 - 12;
      if (v8 - 12 > v7)
      {
        break;
      }

      if (v22 > v23)
      {
        break;
      }

      if (v23 < a2)
      {
        break;
      }

      v24 = v8 - 8;
      if (v8 - 8 > v7)
      {
        break;
      }

      if (v23 > v24)
      {
        break;
      }

      if (v24 < a2)
      {
        break;
      }

      v25 = v8 - 4;
      if (v8 - 4 > v7)
      {
        break;
      }

      if (v24 > v25)
      {
        break;
      }

      if (v25 < a2)
      {
        break;
      }

      if (v8 > v7)
      {
        break;
      }

      if (v25 > v8)
      {
        break;
      }

      if (v3 > v5)
      {
        break;
      }

      v26 = v5 + 2;
      if ((v5 + 2) > v4)
      {
        break;
      }

      *v5 = (*(v8 - 60) << 14) | (*(v8 - 64) << 15) | (*(v8 - 56) << 13) | (*(v8 - 52) << 12) | (*(v8 - 48) << 11) | (*(v8 - 44) << 10) | (*(v8 - 40) << 9) | (*(v8 - 36) << 8) | (*(v8 - 32) << 7) | (*(v8 - 28) << 6) | (32 * *(v8 - 24)) | (16 * *(v8 - 20)) | (8 * *(v8 - 16)) | (4 * *(v8 - 12)) | *(v8 - 4) | (2 * *(v8 - 8));
      v5[1] = 16;
      v6 += 16;
      v8 += 64;
      v5 += 2;
      if (v6 >= a3 - 15)
      {
        v5 = v26;
        goto LABEL_60;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ACcontextMapping_encode2_no_mem_s17_LC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v119 = v6;
  v134 = v7;
  v137 = v8;
  v10 = v9;
  v122 = v1;
  v11 = 0;
  *v149 = *MEMORY[0x1E69E9840];
  v12 = v3 > 400;
  v147 = 0;
  v124 = v2;
  if (v2 >= 4)
  {
    v11 = 0;
    v13 = 1;
    do
    {
      ++v11;
      v13 *= 2;
    }

    while (v13 < v2 / 2);
  }

  v120 = v11;
  v121 = v3;
  memset(v148, 170, sizeof(v148));
  v146 = 0xAAAAAAAAAAAAAAAALL;
  v140 = -1431655766;
  v141 = -1431655766;
  memset(__b, 170, sizeof(__b));
  v138 = v10;
  v133 = v5;
  if (v5)
  {
    v14 = *(v5 + 48);
    v15 = *(v5 + 52);
    if (v14 >= v134)
    {
      v16 = v134;
    }

    else
    {
      v16 = *(v5 + 48);
    }

    *(v5 + 48) = v16;
    LODWORD(v17) = v134 - v16;
    if (v17 < v15)
    {
      v18 = v14;
      v19 = *(v5 + 40);
      v17 = v17;
      if (v14 >= v134)
      {
        v18 = v134;
      }

      v20 = 4 * v134 - 4 * v18;
      do
      {
        v21 = *(v5 + 32);
        v22 = v21 + v20 + 4;
        if (v21 + v20 < v21 || v22 > v19 || v21 + v20 > v22)
        {
          goto LABEL_202;
        }

        *(v21 + 4 * v17++) += v124;
        v5 = v133;
        v20 += 4;
      }

      while (v17 < *(v133 + 52));
    }

    v146 = v14;
    v142 = 0;
  }

  else
  {
    LODWORD(v146) = 0;
    v142 = 0;
    if ((v10 + 1) > v137 || v10 + 1 < v10)
    {
      goto LABEL_202;
    }

    v25 = v10;
    v26 = *v10;
    *v10 = 1;
    v27 = v134;
    v28 = &v10[v134 - 1];
    do
    {
      v134 = v27;
      if (v28 < v25 || (v28 + 1) > v137 || v28 > v28 + 1)
      {
        goto LABEL_202;
      }

      v25 = v10;
      if (*v28)
      {
        break;
      }

      if (v28 - 1 < v10 || v28 > v137 || v28 - 1 > v28)
      {
        goto LABEL_202;
      }

      v29 = *(v28 - 1);
      v28 -= 2;
      v27 -= 2;
      v25 = v10;
    }

    while (!v29);
    *v25 = v26;
    v5 = 0;
  }

  v143 = 0xFFFF00000000;
  v144 = 0;
  v30 = v121;
  if (v134 <= 0)
  {
    v68 = 0;
    v82 = 0;
    v33 = 0;
    v135 = 0;
    v83 = v120;
    v84 = v120;
    goto LABEL_150;
  }

  v127 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v135 = 0;
  v130 = 0;
  v123 = v12 << 9;
  v126 = v121 - 2;
  v34 = &v148[4 * v121 - 4];
  v132 = v120;
  while (1)
  {
    v129 = v33;
    if (v5)
    {
      next_coeff_mapped = get_next_coeff_mapped(&v146, &v142 + 1, &v141, v5);
      v36 = get_next_coeff_mapped(&v146, &v142, &v140, v5);
      v31 = v142;
      v32 = HIDWORD(v142);
    }

    else
    {
      next_coeff_mapped = v146;
      v36 = v146 + 1;
      v140 = v146 + 1;
      v141 = v146;
      LODWORD(v146) = v146 + 2;
    }

    v37 = &v148[4 * (v31 | v32) - 8];
    v38 = (v37 + 4);
    v39 = v37 < &v147 || v38 > v148;
    v131 = v37;
    if (v39 || v37 > v38)
    {
      goto LABEL_202;
    }

    v41 = v140;
    if (v141 < v140)
    {
      v41 = v141;
    }

    v42 = *v37;
    v43 = v124 >> 1 < v41;
    v44 = v138;
    v45 = &v138[next_coeff_mapped];
    v139 = &v138[v36];
    if (v130)
    {
      if (v45 < v138)
      {
        goto LABEL_202;
      }

      if ((v45 + 1) > v137)
      {
        goto LABEL_202;
      }

      if (v45 > v45 + 1)
      {
        goto LABEL_202;
      }

      *v45 = 0;
      if (v139 < v138 || (v139 + 1) > v137 || v139 > v139 + 1)
      {
        goto LABEL_202;
      }

      v44 = v138;
      *v139 = 0;
    }

    v136 = &v138[next_coeff_mapped];
    if (v45 < v44 || (v45 + 1) > v137 || v45 > v45 + 1)
    {
      goto LABEL_202;
    }

    v46 = *v45;
    v47 = (*v45 & 0x80000000) == 0 ? *v45 : -v46;
    if (v139 < v138 || (v139 + 1) > v137 || v139 > v139 + 1)
    {
      goto LABEL_202;
    }

    v48 = *v139;
    if ((*v139 & 0x80000000) == 0)
    {
      v49 = *v139;
    }

    else
    {
      v49 = -v48;
    }

    v125 = v143;
    v50 = HIDWORD(v135);
    if (v46)
    {
      v51 = &__b[SHIDWORD(v135)];
      if (v51 < __b || v51 + 1 > &v146 || v51 > v51 + 1)
      {
        goto LABEL_202;
      }

      v50 = HIDWORD(v135) + 1;
      *v51 = v46 >> 31;
    }

    if (v48)
    {
      v52 = &__b[v50];
      if (v52 < __b || v52 + 1 > &v146 || v52 > v52 + 1)
      {
        goto LABEL_202;
      }

      ++v50;
      *v52 = v48 >> 31;
    }

    v128 = v50;
    v53 = v42 + v123 + (v43 << 8);
    if (v47 <= v49)
    {
      v54 = v49;
    }

    else
    {
      v54 = v47;
    }

    v60 = v54 >= 4;
    v55 = v132;
    v56 = -1;
    if (v60)
    {
      v57 = v49;
      v62 = v135;
      v58 = v34;
      while (1)
      {
        v59 = &ari_lookup_s17_LC[1024 * ++v56 + v53];
        v60 = v59 < ari_pk_s17_LC_ext && v59 >= ari_lookup_s17_LC;
        if (!v60)
        {
          goto LABEL_202;
        }

        v63 = ari_encode_14bits_ext(v148, v149, v55, &v143, 16, &ari_pk_s17_LC_ext[36 * *v59], &ari_pk_s17_LC_ext[36 * *v59 + 36]);
        if (v58 < v148)
        {
          goto LABEL_202;
        }

        if (v58 + 1 > v149)
        {
          goto LABEL_202;
        }

        if (v58 > v58 + 1)
        {
          goto LABEL_202;
        }

        *v58 = v47 & 1;
        if (v58 - 1 < v148 || v58 - 1 > v58)
        {
          goto LABEL_202;
        }

        v34 = v58 - 2;
        *(v58 - 1) = v57 & 1;
        v62 += 2;
        v47 >>= 1;
        v49 = v57 >> 1;
        if (v56 >= 2)
        {
          v56 = 2;
        }

        if (v47 <= v57 >> 1)
        {
          v61 = v57 >> 1;
        }

        else
        {
          v61 = v47;
        }

        v55 = v63;
        v57 >>= 1;
        v58 -= 2;
        if (v61 <= 3)
        {
          goto LABEL_99;
        }
      }
    }

    v62 = v135;
    v63 = v132;
LABEL_99:
    v64 = &ari_lookup_s17_LC[1024 * v56 + 1024 + v53];
    if (v64 >= ari_pk_s17_LC_ext || v64 < ari_lookup_s17_LC)
    {
      goto LABEL_202;
    }

    v65 = ari_encode_14bits_ext(v148, v149, v63, &v143, v47 + 4 * v49, &ari_pk_s17_LC_ext[36 * *v64], &ari_pk_s17_LC_ext[36 * *v64 + 36]);
    v66 = v144;
    v67 = v128;
    if ((v62 + v128 + v144 + v65) > v126)
    {
      break;
    }

    v31 = v142;
    v32 = HIDWORD(v142);
    if (HIDWORD(v142) != v142)
    {
      v127 = v144;
      v70 = v128;
LABEL_116:
      v132 = v65;
      v135 = __PAIR64__(v70, v62);
      if (v141)
      {
        v72 = &v148[4 * v32 - 8];
        if (v72 < &v147 || v72 + 4 > v148 || v72 > (v72 + 4))
        {
          goto LABEL_202;
        }

        v73 = *v136;
        if ((*v136 & 0x80000000) != 0)
        {
          v73 = -v73;
        }

        v74 = (v73 & 0x7FFFFFFE) + (v73 & 0x7FFFFFFE) * (v73 >> 2);
        v75 = v73 >> 3;
        if (v75 >= 2)
        {
          v75 = 2;
        }

        v60 = v74 >= 0xC;
        v76 = v74 - 12;
        if (v76 == 0 || !v60)
        {
          v75 = v76;
        }

        *v72 = v75 + 16 * (*v72 & 0xF) + 13;
      }

      if (v140)
      {
        v77 = &v148[4 * v31 - 8];
        if (v77 < &v147 || v77 + 4 > v148 || v77 > (v77 + 4))
        {
          goto LABEL_202;
        }

        v78 = *v139;
        if ((*v139 & 0x80000000) != 0)
        {
          v78 = -v78;
        }

        v79 = (v78 & 0x7FFFFFFE) + (v78 & 0x7FFFFFFE) * (v78 >> 2);
        v80 = v78 >> 3;
        if (v80 >= 2)
        {
          v80 = 2;
        }

        v60 = v79 >= 0xC;
        v81 = v79 - 12;
        if (v81 == 0 || !v60)
        {
          v80 = v81;
        }

        *v77 = v80 + 16 * (*v77 & 0xF) + 13;
      }

      v5 = v133;
      goto LABEL_139;
    }

    if (v56 <= 0)
    {
      goto LABEL_112;
    }

    v71 = v56 + 13;
    v5 = v133;
LABEL_113:
    v127 = v66;
    *v131 = 16 * (*v131 & 0xF) + v71;
    v31 = v32;
    v132 = v65;
    v135 = __PAIR64__(v67, v62);
LABEL_139:
    v33 = v129 + 2;
    if (v129 + 2 >= v134)
    {
      v82 = v143;
      v30 = v121;
      v83 = v120;
      v68 = v127;
      goto LABEL_148;
    }
  }

  v143 = v125;
  v68 = v127;
  v144 = v127;
  v5 = v133;
  if (v133 && !v130)
  {
    *v136 = 0;
    *v139 = 0;
    v69 = &ari_lookup_s17_LC[v53];
    if (v69 >= ari_pk_s17_LC_ext || v69 < ari_lookup_s17_LC)
    {
      goto LABEL_202;
    }

    v65 = ari_encode_14bits_ext(v148, v149, v132, &v143, 0, &ari_pk_s17_LC_ext[36 * *v69], &ari_pk_s17_LC_ext[36 * *v69 + 36]);
    v66 = v144;
    v62 = v135;
    v70 = HIDWORD(v135);
    if ((v135 + HIDWORD(v135) + v144 + v65) > v126)
    {
      v82 = v125;
      v30 = v121;
      v83 = v120;
      v84 = v132;
      v5 = v133;
      v33 = v129;
      v68 = v127;
      goto LABEL_150;
    }

    v31 = v142;
    v32 = HIDWORD(v142);
    v130 = 1;
    if (HIDWORD(v142) != v142)
    {
      v127 = v144;
      goto LABEL_116;
    }

    v56 = -1;
    v67 = HIDWORD(v135);
LABEL_112:
    v5 = v133;
    v71 = (v56 + 2) * (v47 + v49) + 1;
    goto LABEL_113;
  }

  v82 = v125;
  if (v130)
  {
    v85 = v128;
  }

  else
  {
    v85 = HIDWORD(v135);
  }

  v86 = v135;
  if (v130)
  {
    v86 = v62;
  }

  v135 = __PAIR64__(v85, v86);
  v30 = v121;
  v83 = v120;
  v33 = v129;
LABEL_148:
  v84 = v132;
LABEL_150:
  done = ari_done_encoding_14bits(v148, v149, v84, v82, v68);
  LODWORD(v88) = done;
  if (!v5 || v33 == v134)
  {
    v134 = v33;
  }

  else
  {
    v89 = v30 - (HIDWORD(v135) + v135);
    if (v89 > done)
    {
      v90 = done;
      v91 = 4 * done;
      do
      {
        v92 = &v148[v91 + 4];
        if (&v148[v91] < v148 || v92 > v149 || &v148[v91] > v92)
        {
          goto LABEL_202;
        }

        v88 = v90 + 1;
        *&v148[4 * v90] = 0;
        v91 += 4;
        v90 = v88;
      }

      while (v89 != v88);
      v83 = v120;
    }
  }

  v95 = *(v122 + 40);
  v96 = *(v122 + 50);
  v97 = (v95 + 4 * v96);
  if (v97 < v95 || (v97 + 2) > v95 + 7812 || v97 > v97 + 2 || (*v97 = (v134 >> 1) - 1, v97[1] = v83, *(v122 + 50) = v96 + 1, *(v122 + 36) += v83, v98 = &v148[4 * v83], v98 > v149) || v148 > v98 || (10240 - 4 * v120) >> 2 < (v88 - v120) || ((v88 - v120) & 0x8000) != 0 || (push_next_bits(v122, v98, (v88 - v120)), SWORD2(v135) > 1200) || (v135 & 0x800000000000) != 0)
  {
LABEL_202:
    __break(0x5519u);
  }

  push_next_bits(v122, __b, SWORD2(v135));
  v99 = v135;
  v100 = v88 + HIDWORD(v135);
  v101 = v121;
  v102 = v121 - (v88 + HIDWORD(v135));
  v103 = (v102 - v135);
  if (v103 >= v119)
  {
    v104 = v119;
  }

  else
  {
    v104 = v103;
  }

  if (v104 < 1)
  {
    LODWORD(v104) = 0;
  }

  else
  {
    v105 = ~v135 + v121;
    v106 = v138;
    v107 = &v138[v124];
    v108 = v104;
    do
    {
      if (v107 < v106)
      {
        goto LABEL_202;
      }

      if ((v107 + 1) > v137)
      {
        goto LABEL_202;
      }

      if (v107 > v107 + 1)
      {
        goto LABEL_202;
      }

      v109 = &v148[4 * v105];
      if (v109 < v148 || v109 + 1 > v149 || v109 > v109 + 1)
      {
        goto LABEL_202;
      }

      v110 = *v107++;
      *v109 = v110;
      --v105;
      --v108;
      v106 = v138;
    }

    while (v108);
    v101 = v121;
    v99 = v135;
  }

  if (v104 < v103)
  {
    v111 = v104;
    v112 = ~v99 + v101 - v104;
    do
    {
      v113 = &v148[4 * v112];
      v114 = v113 + 1;
      v115 = v113 < v148 || v114 > v149;
      if (v115 || v113 > v114)
      {
        goto LABEL_202;
      }

      *v113 = 0;
      ++v111;
      --v112;
    }

    while (v111 < v103);
  }

  v117 = &v148[4 * v100];
  if (v117 > v149 || v148 > v117 || (v102 & 0x8000) != 0 || (10240 - 4 * v100) >> 2 < v102)
  {
    goto LABEL_202;
  }

  return push_next_bits(v122, v117, v102);
}

int *get_next_coeff_mapped(int *result, unsigned int *a2, int *a3, uint64_t a4)
{
  v4 = result + 1;
  if (result + 1 <= result + 2 && v4 >= result)
  {
    v6 = *v4;
    v8 = *a4;
    v7 = *(a4 + 8);
    v9 = (*a4 + 4 * v6);
    v10 = v9 + 1;
    v11 = v9 < *a4 || v10 > v7;
    if (!v11 && v9 <= v10)
    {
      v13 = (v8 + 4 * *result);
      v14 = v13 + 1;
      v15 = v13 < v8 || v14 > v7;
      if (!v15 && v13 <= v14)
      {
        v17 = ((*v9 - *v13) & (v6 - *(a4 + 48))) >> 31;
        *a2 = v17;
        v18 = &result[v17];
        v19 = (v18 + 1);
        v20 = v18 < result || v19 > (result + 2);
        if (!v20 && v18 <= v19)
        {
          v22 = *v18;
          *a3 = *v18;
          *v18 = v22 + 1;
          v23 = (*a4 + 4 * *a3);
          if (v23 >= *a4 && (v23 + 1) <= v7 && v23 <= v23 + 1)
          {
            return *v23;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ari_encode_14bits_ext(unint64_t result, unint64_t a2, uint64_t a3, int *a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = (a6 + 2 * a5);
  v8 = v7 + 1;
  v10 = v7 < a6 || v8 > a7 || v7 >= v8;
  v11 = v7 + 2;
  if (!v10 && v11 <= a7 && v8 <= v11)
  {
    v14 = *a4;
    v15 = a4[1] - v14 + 1;
    v16 = v14 + ((v15 * *v7) >> 14) - 1;
    v17 = v14 + ((v15 * v7[1]) >> 14);
    v18 = a4[2];
    while (1)
    {
      v19 = v16 - 0x8000;
      if (v16 >= 0x8000)
      {
        v26 = v17 - 0x8000;
        if (v17 < 0x8000)
        {
          if (v16 >> 14 > 2 || v17 < 0x4000)
          {
            *a4 = v17;
            a4[1] = v16;
            a4[2] = v18;
            return a3;
          }

          ++v18;
          v16 -= 0x4000;
          v17 -= 0x4000;
        }

        else
        {
          v27 = (result + 4 * a3);
          if (v27 < result)
          {
            break;
          }

          v28 = v27 + 1;
          if ((v27 + 1) > a2 || v27 > v28)
          {
            break;
          }

          *v27 = 1;
          if (v18 >= 1)
          {
            v29 = ~a3;
            v30 = v18 + 1;
            while (v28 >= result && (v28 + 1) <= a2 && v28 <= v28 + 1)
            {
              *v28++ = 0;
              --v29;
              if (--v30 <= 1)
              {
                v18 = 0;
                a3 = -v29;
                goto LABEL_46;
              }
            }

            break;
          }

          ++a3;
LABEL_46:
          v16 = v19;
          v17 = v26;
        }
      }

      else
      {
        v20 = (result + 4 * a3);
        v21 = v20 + 1;
        if (v20 < result || v21 > a2 || v20 >= v21)
        {
          break;
        }

        *v20 = 0;
        if (v18 >= 1)
        {
          v24 = ~a3;
          v25 = v18 + 1;
          while (v21 >= result && (v21 + 1) <= a2 && v21 <= v21 + 1)
          {
            *v21++ = 1;
            --v24;
            if (--v25 <= 1)
            {
              v18 = 0;
              a3 = -v24;
              goto LABEL_47;
            }
          }

          break;
        }

        ++a3;
      }

LABEL_47:
      v17 *= 2;
      v16 = (2 * v16) | 1;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ari_done_encoding_14bits(unint64_t result, unint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a5 + 1;
  v6 = (result + 4 * a3);
  v7 = v6 + 1;
  v10 = (v6 + 1) <= a2 && v6 < v7 && v6 >= result;
  if (a4 >= 0x4000)
  {
    if (v10)
    {
      *v6 = 1;
      if ((a5 & 0x80000000) == 0)
      {
        v11 = ~a3;
        v13 = v5 + 1;
        while (v7 >= result && (v7 + 1) <= a2 && v7 <= v7 + 1)
        {
          *v7++ = 0;
          --v11;
          if (--v13 <= 1)
          {
            return -v11;
          }
        }

        goto LABEL_28;
      }

      return a3 + 1;
    }
  }

  else if (v10)
  {
    *v6 = 0;
    if ((a5 & 0x80000000) == 0)
    {
      v11 = ~a3;
      v12 = v5 + 1;
      while (v7 >= result && (v7 + 1) <= a2 && v7 <= v7 + 1)
      {
        *v7++ = 1;
        --v11;
        if (--v12 <= 1)
        {
          return -v11;
        }
      }

      goto LABEL_28;
    }

    return a3 + 1;
  }

LABEL_28:
  __break(0x5519u);
  return result;
}

uint64_t IGFCommonFuncsWriteSerialBit(uint64_t result, _DWORD *a2, __int16 a3)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v3 = *(result + 40);
  v4 = *(result + 50);
  v5 = (v3 + 4 * v4);
  v6 = (v5 + 2);
  if (v5 >= v3 && v6 <= v3 + 7812 && v5 < v6)
  {
    *v5 = a3;
    v5[1] = 1;
    *(result + 50) = v4 + 1;
    ++*(result + 36);
LABEL_10:
    ++*a2;
    return result;
  }

  __break(0x5519u);
  return result;
}

uint64_t IGF_WriteWhiteningTile(uint64_t a1, _DWORD *a2, int a3)
{
  if (a3 == 1)
  {
    v5 = 0;
  }

  else
  {
    IGFCommonFuncsWriteSerialBit(a1, a2, 1);
    v5 = a3 != 0;
  }

  return IGFCommonFuncsWriteSerialBit(a1, a2, v5);
}

_DWORD *arith_encode_bits(_DWORD *result, unint64_t a2, unint64_t a3, unsigned int a4, int a5)
{
  v5 = result + 166;
  if (result + 166 > result + 169)
  {
    __break(0x5519u);
  }

  else
  {
    v9 = result;
    LODWORD(result) = *result;
    v10 = a5 + 1;
    do
    {
      result = ari_encode_14bits_sign(a2, a3, result, 0x7FFFLL, v5, (a4 >> (v10 - 2)) & 1);
      *v9 = result;
      --v10;
    }

    while (v10 > 1);
  }

  return result;
}

_DWORD *arith_encode_residual(_DWORD *result, unint64_t a2, unint64_t a3, int a4, unint64_t a5, unint64_t a6, int a7)
{
  v11 = result;
  v12 = a7 + a4;
  v13 = a7 + a4 + 12;
  v14 = result + 166;
  if (v13 <= 0x18)
  {
    if (v14 <= result + 169)
    {
      result = ari_encode_14bits_ext(a2, a3, *result, v14, (v12 + 13), a5, a6);
      *v11 = result;
      return result;
    }

    goto LABEL_17;
  }

  v15 = result + 169;
  if (v12 > -13)
  {
    if (v14 <= v15)
    {
      v16 = *result;
      v17 = v12 - 13;
      v18 = a2;
      v19 = a3;
      v20 = 26;
      goto LABEL_9;
    }

LABEL_17:
    __break(0x5519u);
    return result;
  }

  if (v14 > v15)
  {
    goto LABEL_17;
  }

  v16 = *result;
  v17 = -13 - v12;
  v18 = a2;
  v19 = a3;
  v20 = 0;
LABEL_9:
  *v11 = ari_encode_14bits_ext(v18, v19, v16, v14, v20, a5, a6);
  if (v17 > 0xE)
  {
    arith_encode_bits(v11, a2, a3, 0xFu, 4);
    if (v17 > 0x4D)
    {
      arith_encode_bits(v11, a2, a3, 0x3Fu, 6);
      v24 = v17 - 78;
      v21 = v11;
      v22 = a2;
      v23 = a3;
      v25 = 7;
    }

    else
    {
      v24 = v17 - 15;
      v21 = v11;
      v22 = a2;
      v23 = a3;
      v25 = 6;
    }
  }

  else
  {
    v21 = v11;
    v22 = a2;
    v23 = a3;
    v24 = v17;
    v25 = 4;
  }

  return arith_encode_bits(v21, v22, v23, v24, v25);
}

unint64_t ari_encode_14bits_sign(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v7 = *a5;
  v6 = a5[1];
  v8 = v6 + 1 - v7;
  v9 = v7 + (v8 >> 1);
  if (a6)
  {
    v10 = v7 + (v8 >> 1);
  }

  else
  {
    v10 = v6 + 1;
  }

  if (!a6)
  {
    v7 = v9;
  }

  LODWORD(v11) = a5[2];
  if (a3 + v11 + 16 >= a4)
  {
LABEL_41:
    *a5 = v7;
    a5[1] = v10 - 1;
    a5[2] = v11;
    return a3;
  }

  v11 = v11;
  while (1)
  {
    v12 = v10 - 0x8000;
    if (v10 > 0x8000)
    {
      break;
    }

    v13 = (result + 4 * a3);
    v14 = v13 + 1;
    if (v13 < result || v14 > a2 || v13 >= v14)
    {
      goto LABEL_42;
    }

    *v13 = 0;
    if (v11 >= 1)
    {
      v17 = ~a3;
      v18 = v11 + 1;
      while (v14 >= result && (v14 + 1) <= a2 && v14 <= v14 + 1)
      {
        *v14++ = 1;
        --v17;
        if (--v18 <= 1)
        {
          v11 = 0;
          a3 = -v17;
          goto LABEL_40;
        }
      }

      goto LABEL_42;
    }

    ++a3;
LABEL_40:
    v7 *= 2;
    v10 *= 2;
    if (v11 + a3 + 16 >= a4)
    {
      goto LABEL_41;
    }
  }

  v19 = v7 - 0x8000;
  if (v7 < 0x8000)
  {
    if (v7 < 0x4000 || v10 > 0xC000)
    {
      goto LABEL_41;
    }

    ++v11;
    v10 -= 0x4000;
    v7 -= 0x4000;
    goto LABEL_40;
  }

  v20 = (result + 4 * a3);
  if (v20 < result)
  {
    goto LABEL_42;
  }

  v21 = v20 + 1;
  if ((v20 + 1) > a2 || v20 > v21)
  {
    goto LABEL_42;
  }

  *v20 = 1;
  if (v11 < 1)
  {
    ++a3;
LABEL_39:
    v10 = v12;
    v7 = v19;
    goto LABEL_40;
  }

  v22 = ~a3;
  v23 = v11 + 1;
  while (v21 >= result && (v21 + 1) <= a2 && v21 <= v21 + 1)
  {
    *v21++ = 0;
    --v22;
    if (--v23 <= 1)
    {
      v11 = 0;
      a3 = -v22;
      goto LABEL_39;
    }
  }

LABEL_42:
  __break(0x5519u);
  return result;
}

uint64_t WriteToBitstream(unsigned int *a1, int a2, unsigned int ***a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v10 = 0;
  v46 = a1 + 162;
  v47 = (a1 + 2);
  v12 = *a1;
  result = (a1 + 18);
  v45 = v12;
  v43 = result;
  while (v45 < 1)
  {
LABEL_55:
    v10 = (v10 + 1);
    if (v10 == a2)
    {
      return result;
    }
  }

  v13 = v43;
  v14 = v45;
  while (v47 <= v13 - 64 && v13 <= v46)
  {
    v16 = *(v13 - 64);
    if (!v16)
    {
      v17 = *a3;
      v18 = (*a3 + 3);
      if (v18 > a3[1] || v17 > v18 || v17 < a3[2])
      {
        break;
      }

      v21 = *v17;
      v22 = v17[1];
      v23 = v17[2];
      v24 = (v21 + 1) > v22 || v21 >= v21 + 1;
      if (v24 || v21 < v23)
      {
        break;
      }

      result = (*(v13 - 56))(*v21, v10);
      v16 = result;
    }

    v26 = *(v13 - 24);
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v13 - 48) == 0;
    }

    if (v26)
    {
      v28 = *(v13 - 24);
    }

    else
    {
      v28 = FixedWidthEncoding;
    }

    v29 = *a3;
    v30 = (*a3 + 3);
    if (v30 > a3[1] || v29 > v30 || v29 < a3[2])
    {
      break;
    }

    v34 = v29[1];
    v33 = v29[2];
    v35 = *v29;
    v36 = *v29 + 4;
    *v29 = v36;
    v37 = v35 > v36 || v36 > v34;
    if (v37 || v35 < v33)
    {
      break;
    }

    v39 = *v35;
    result = (v28)(*v35, v10);
    v40 = *(a5 + 40);
    v41 = *(a5 + 50);
    v42 = (v40 + 4 * v41);
    if (v42 < v40 || (v42 + 2) > v40 + 7812 || v42 > v42 + 2)
    {
      break;
    }

    *v42 = result;
    v42[1] = v16;
    *(a5 + 50) = v41 + 1;
    *(a5 + 36) += v16;
    ++*a4;
    *a6 += v16;
    result = *(v13 - 8);
    if (result)
    {
      if (v39 + v27 >= 1)
      {
        result = WriteToBitstream();
      }
    }

    v13 += 64;
    if (!--v14)
    {
      goto LABEL_55;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DecodeWBTCX20TnsFilterCoeff(uint64_t result, int a2, _DWORD *a3)
{
  v3 = (&codesTnsCoeffWBTCX20 + 2 * a2);
  v4 = v3 + 2;
  v6 = v3 < &codesTnsCoeffWBTCX20 || v4 > &off_1E752F960 || v3 >= v4;
  if (!v6)
  {
    v7 = *v3;
    v8 = v3[1];
    v6 = v8 >= v7;
    v9 = v8 - v7;
    if (v6 && v9 >= 91)
    {
      return DecodeUsingTable(result, a3, v7, 16);
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DecodeUsingTable(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  LODWORD(v8) = 0;
  v9 = 0;
  if ((a4 & 0xFE) != 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 1;
  }

  if (a4 >= 0x10)
  {
    v11 = 16;
  }

  else
  {
    v11 = a4;
  }

  v12 = (a3 + 4);
  while (1)
  {
    next_indice = get_next_indice(a1, 1);
    if (v8 == v11)
    {
      break;
    }

    v14 = 0;
    v9 = 2 * v9 + next_indice;
    v8 = (v8 + 1);
    v15 = v12;
    while (v8 != *v15 || *(v15 - 1) != v9)
    {
      ++v14;
      v15 += 6;
      if (v10 == v14)
      {
        LOBYTE(v14) = v10;
        break;
      }
    }

    if (v14 != a4)
    {
      if (v14 < a4)
      {
        v16 = *(a3 + 6 * v14);
        goto LABEL_18;
      }

      break;
    }
  }

  v16 = 0;
  *(a1 + 5168) = 1;
  v8 = 0xFFFFFFFFLL;
LABEL_18:
  *a2 = v16;
  return v8;
}

uint64_t get_next_indice(uint64_t result, int a2)
{
  v2 = *(result + 5160);
  if (*(result + 5176) / 50 < v2 + a2)
  {
    v3 = 0;
    *(result + 5168) = 1;
    return v3;
  }

  v4 = (result + 5160);
  if (a2 < 1)
  {
    v3 = 0;
LABEL_11:
    *v4 = v2 + a2;
    return v3;
  }

  v3 = 0;
  v5 = (result + 8 + 2 * v2);
  v6 = a2;
  while (v5 >= result + 8 && v5 + 1 <= v4 && v5 <= v5 + 1)
  {
    v7 = *v5++;
    v3 = v7 + 2 * v3;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t EncodeWBTCX20TnsFilterCoeff(uint64_t result, int a2)
{
  v2 = &codesTnsCoeffWBTCX20 + 2 * a2;
  v3 = v2 + 2;
  v5 = v2 < &codesTnsCoeffWBTCX20 || v3 > &off_1E752F960 || v2 >= v3;
  if (!v5)
  {
    v6 = *v2;
    v7 = v2[1];
    v5 = v7 >= v6;
    v8 = v7 - v6;
    if (v5 && v8 >= 91)
    {
      v9 = v6 + 6 * result;
      v10 = v9 + 6;
      v11 = v9 < v6 || v9 >= v10;
      if (!v11 && v10 <= v6 + 96)
      {
        return *(v9 + 2);
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t SetTnsFilterCoeff(unint64_t result, unint64_t a2, int a3, int a4)
{
  v4 = (result + 4 * a3);
  v5 = v4 + 1;
  if (v4 < result || v5 > a2 || v4 >= v5)
  {
    __break(0x5519u);
  }

  else
  {
    *v4 = a4 - 8;
    return 0;
  }

  return result;
}

unint64_t GetTnsFilterCoeff(unint64_t result, unint64_t a2, int a3, _DWORD *a4)
{
  v4 = (result + 4 * a3);
  v5 = v4 + 1;
  if (v4 < result || v5 > a2 || v4 >= v5)
  {
    __break(0x5519u);
  }

  else
  {
    *a4 = *v4 + 8;
    return 0;
  }

  return result;
}

uint64_t GetWBTCX20TnsFilterCoeffBits(uint64_t result, int a2)
{
  v2 = &codesTnsCoeffWBTCX20 + 2 * a2;
  v3 = v2 + 2;
  v5 = v2 < &codesTnsCoeffWBTCX20 || v3 > &off_1E752F960 || v2 >= v3;
  if (!v5)
  {
    v6 = *v2;
    v7 = v2[1];
    v5 = v7 >= v6;
    v8 = v7 - v6;
    if (v5 && v8 >= 91)
    {
      v9 = v6 + 6 * result;
      v10 = v9 + 6;
      v11 = v9 < v6 || v9 >= v10;
      if (!v11 && v10 <= v6 + 96)
      {
        return *(v9 + 4);
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t EncodeTnsFilterOrder(uint64_t result)
{
  v1 = &codesTnsOrder[6 * result];
  if (v1 - 6 >= codesTnsOrder && v1 - 6 < v1 && v1 <= tnsAcfWindow)
  {
    return *(v1 - 2);
  }

  __break(0x5519u);
  return result;
}

unint64_t SetTnsFilterOrder(unint64_t result, unint64_t a2, int a3, int a4)
{
  v4 = result + 48 * a3;
  v5 = v4 + 48;
  if (v4 < result || v5 > a2 || v4 >= v5)
  {
    __break(0x5519u);
  }

  else
  {
    *(v4 + 4) = a4;
    return v4 + 8;
  }

  return result;
}

unint64_t GetTnsFilterOrder(unint64_t result, unint64_t a2, int a3, _DWORD *a4)
{
  v4 = result + 48 * a3;
  v5 = v4 + 48;
  if (v4 < result || v5 > a2 || v4 >= v5)
  {
    __break(0x5519u);
  }

  else
  {
    *a4 = *(v4 + 4);
    return v4 + 8;
  }

  return result;
}

uint64_t GetTnsFilterOrderBits(uint64_t result)
{
  v1 = &codesTnsOrder[6 * result];
  if (v1 - 6 >= codesTnsOrder && v1 - 6 < v1 && v1 <= tnsAcfWindow)
  {
    return *(v1 - 2);
  }

  __break(0x5519u);
  return result;
}

_DWORD *SetTnsEnabledSingleFilter(unint64_t a1, unint64_t a2, int a3, int a4)
{
  result = (a1 + 100 * a3);
  v7 = result + 25;
  if (result < a1 || v7 > a2 || result >= v7)
  {
    __break(0x5519u);
  }

  else
  {
    *result++ = a4;
  }

  return result;
}

int *GetTnsEnabledSingleFilter(unint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  result = (a1 + 100 * a3);
  v7 = result + 25;
  if (result < a1 || v7 > a2 || result >= v7)
  {
    __break(0x5519u);
  }

  else
  {
    v10 = *result++;
    *a4 = v10 > 0;
  }

  return result;
}

uint64_t DecodeSWBTCX20TnsFilterCoeff(uint64_t result, int a2, _DWORD *a3)
{
  v3 = (&codesTnsCoeffSWBTCX20 + 2 * a2);
  v4 = v3 + 2;
  v6 = v3 < &codesTnsCoeffSWBTCX20 || v4 > &codesTnsCoeffSWBTCX10 || v3 >= v4;
  if (!v6)
  {
    v7 = *v3;
    v8 = v3[1];
    v6 = v8 >= v7;
    v9 = v8 - v7;
    if (v6 && v9 >= 91)
    {
      return DecodeUsingTable(result, a3, v7, 16);
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t EncodeSWBTCX20TnsFilterCoeff(uint64_t result, int a2)
{
  v2 = &codesTnsCoeffSWBTCX20 + 2 * a2;
  v3 = v2 + 2;
  v5 = v2 < &codesTnsCoeffSWBTCX20 || v3 > &codesTnsCoeffSWBTCX10 || v2 >= v3;
  if (!v5)
  {
    v6 = *v2;
    v7 = v2[1];
    v5 = v7 >= v6;
    v8 = v7 - v6;
    if (v5 && v8 >= 91)
    {
      v9 = v6 + 6 * result;
      v10 = v9 + 6;
      v11 = v9 < v6 || v9 >= v10;
      if (!v11 && v10 <= v6 + 96)
      {
        return *(v9 + 2);
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t GetSWBTCX20TnsFilterCoeffBits(uint64_t result, int a2)
{
  v2 = &codesTnsCoeffSWBTCX20 + 2 * a2;
  v3 = v2 + 2;
  v5 = v2 < &codesTnsCoeffSWBTCX20 || v3 > &codesTnsCoeffSWBTCX10 || v2 >= v3;
  if (!v5)
  {
    v6 = *v2;
    v7 = v2[1];
    v5 = v7 >= v6;
    v8 = v7 - v6;
    if (v5 && v8 >= 91)
    {
      v9 = v6 + 6 * result;
      v10 = v9 + 6;
      v11 = v9 < v6 || v9 >= v10;
      if (!v11 && v10 <= v6 + 96)
      {
        return *(v9 + 4);
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t EncodeTnsFilterOrderSWBTCX20(uint64_t result)
{
  v1 = &codesTnsOrderTCX20[6 * result];
  if (v1 - 6 >= codesTnsOrderTCX20 && v1 - 6 < v1 && v1 <= codesTnsOrderTCX10)
  {
    return *(v1 - 2);
  }

  __break(0x5519u);
  return result;
}

uint64_t GetTnsFilterOrderBitsSWBTCX20(uint64_t result)
{
  v1 = &codesTnsOrderTCX20[6 * result];
  if (v1 - 6 >= codesTnsOrderTCX20 && v1 - 6 < v1 && v1 <= codesTnsOrderTCX10)
  {
    return *(v1 - 2);
  }

  __break(0x5519u);
  return result;
}

_DWORD *SetNumOfTnsFilters(unint64_t a1, unint64_t a2, int a3, int a4)
{
  result = (a1 + 100 * a3);
  v7 = result + 25;
  if (result < a1 || v7 > a2 || result >= v7)
  {
    __break(0x5519u);
  }

  else
  {
    *result++ = a4;
  }

  return result;
}

int *GetNumOfTnsFilters(unint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  result = (a1 + 100 * a3);
  v7 = result + 25;
  if (result < a1 || v7 > a2 || result >= v7)
  {
    __break(0x5519u);
  }

  else
  {
    v10 = *result++;
    *a4 = v10;
  }

  return result;
}

unint64_t GetTnsEnabled(unint64_t result, unint64_t a2, int a3, _DWORD *a4)
{
  v4 = (result + 100 * a3);
  v5 = v4 + 25;
  if (v4 < result || v5 > a2 || v4 >= v5)
  {
    __break(0x5519u);
  }

  else
  {
    *a4 = *v4 > 0;
    return 0;
  }

  return result;
}

uint64_t DecodeSWBTCX10TnsFilterCoeff(uint64_t result, int a2, _DWORD *a3)
{
  v3 = (&codesTnsCoeffSWBTCX10 + 2 * a2);
  v4 = v3 + 2;
  v6 = v3 < &codesTnsCoeffSWBTCX10 || v4 > &codesTnsCoeffWBTCX20 || v3 >= v4;
  if (!v6)
  {
    v7 = *v3;
    v8 = v3[1];
    v6 = v8 >= v7;
    v9 = v8 - v7;
    if (v6 && v9 >= 91)
    {
      return DecodeUsingTable(result, a3, v7, 16);
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t EncodeSWBTCX10TnsFilterCoeff(uint64_t result, int a2)
{
  v2 = &codesTnsCoeffSWBTCX10 + 2 * a2;
  v3 = v2 + 2;
  v5 = v2 < &codesTnsCoeffSWBTCX10 || v3 > &codesTnsCoeffWBTCX20 || v2 >= v3;
  if (!v5)
  {
    v6 = *v2;
    v7 = v2[1];
    v5 = v7 >= v6;
    v8 = v7 - v6;
    if (v5 && v8 >= 91)
    {
      v9 = v6 + 6 * result;
      v10 = v9 + 6;
      v11 = v9 < v6 || v9 >= v10;
      if (!v11 && v10 <= v6 + 96)
      {
        return *(v9 + 2);
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t GetSWBTCX10TnsFilterCoeffBits(uint64_t result, int a2)
{
  v2 = &codesTnsCoeffSWBTCX10 + 2 * a2;
  v3 = v2 + 2;
  v5 = v2 < &codesTnsCoeffSWBTCX10 || v3 > &codesTnsCoeffWBTCX20 || v2 >= v3;
  if (!v5)
  {
    v6 = *v2;
    v7 = v2[1];
    v5 = v7 >= v6;
    v8 = v7 - v6;
    if (v5 && v8 >= 91)
    {
      v9 = v6 + 6 * result;
      v10 = v9 + 6;
      v11 = v9 < v6 || v9 >= v10;
      if (!v11 && v10 <= v6 + 96)
      {
        return *(v9 + 4);
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t EncodeTnsFilterOrderSWBTCX10(uint64_t result)
{
  v1 = &codesTnsOrderTCX10[6 * result];
  if (v1 - 6 >= codesTnsOrderTCX10 && v1 - 6 < v1 && v1 <= codesTnsOrder)
  {
    return *(v1 - 2);
  }

  __break(0x5519u);
  return result;
}

uint64_t GetTnsFilterOrderBitsSWBTCX10(uint64_t result)
{
  v1 = &codesTnsOrderTCX10[6 * result];
  if (v1 - 6 >= codesTnsOrderTCX10 && v1 - 6 < v1 && v1 <= codesTnsOrder)
  {
    return *(v1 - 2);
  }

  __break(0x5519u);
  return result;
}

uint64_t unary_code(uint64_t result, uint64_t a2)
{
  if (result >= 17)
  {
    v2 = *(a2 + 40);
    v3 = *(a2 + 50);
    v4 = result + 15;
    while (1)
    {
      v5 = (v2 + 4 * v3);
      v6 = (v5 + 1);
      v7 = v5 < v2 || v6 > v2 + 7812;
      if (v7 || v5 >= v6)
      {
        goto LABEL_31;
      }

      *v5 = 1114111;
      *(a2 + 50) = ++v3;
      *(a2 + 36) += 16;
      v4 -= 16;
      if (v4 <= 0x1F)
      {
        v9 = v4 - 16;
        goto LABEL_13;
      }
    }
  }

  v9 = result - 1;
LABEL_13:
  v10 = *(a2 + 40);
  if (v9 <= 0)
  {
    v16 = *(a2 + 50);
  }

  else
  {
    v11 = *(a2 + 50);
    v12 = (v10 + 4 * v11);
    v13 = (v12 + 2);
    if (v12 < v10 || v13 > v10 + 7812 || v12 >= v13)
    {
      goto LABEL_31;
    }

    *v12 = ~(-1 << v9);
    v12[1] = v9;
    v16 = v11 + 1;
    *(a2 + 50) = v11 + 1;
    *(a2 + 36) += v9;
  }

  v17 = (v10 + 4 * v16);
  v18 = (v17 + 1);
  if (v17 >= v10 && v18 <= v10 + 7812 && v17 < v18)
  {
    *v17 = 0x10000;
    *(a2 + 50) = v16 + 1;
    ++*(a2 + 36);
    return result;
  }

LABEL_31:
  __break(0x5519u);
  return result;
}

uint64_t unpack4bits(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (result < 5)
    {
      v5 = 0;
LABEL_30:
      v23 = (a2 + 4 * v5);
      if (v23 >= a2 && (v23 + 1) <= a3 && v23 <= v23 + 1)
      {
        v24 = *(a4 + 40);
        v25 = *(a4 + 50);
        v26 = (v24 + 4 * v25);
        if (v26 >= v24 && (v26 + 2) <= v24 + 7812 && v26 < v26 + 2)
        {
          *v26 = *v23;
          v26[1] = result;
          *(a4 + 50) = v25 + 1;
          *(a4 + 36) += result;
          return result;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = a2 + v4 + 4;
        v7 = a2 + v4 < a2 || v6 > a3;
        if (v7 || a2 + v4 > v6)
        {
          break;
        }

        v9 = *(a4 + 40);
        v10 = *(a4 + 50);
        v11 = (v9 + 4 * v10);
        v12 = (v11 + 2);
        v13 = v11 < v9 || v12 > v9 + 7812;
        if (v13 || v11 >= v12)
        {
          break;
        }

        *v11 = *(a2 + 4 * v5);
        v11[1] = 4;
        v15 = *(a4 + 36) + 4;
        v16 = (result - 4);
        *(a4 + 50) = v10 + 1;
        *(a4 + 36) = v15;
        ++v5;
        v4 += 4;
        v7 = result <= 8;
        result = v16;
        if (v7)
        {
          v5 = v5;
          result = v16;
          goto LABEL_30;
        }
      }
    }
  }

  else
  {
    v17 = *(a4 + 40);
    v18 = *(a4 + 50);
    v19 = (v17 + 4 * v18);
    v20 = (v19 + 1);
    if (v19 >= v17 && v20 <= v17 + 7812 && v19 < v20)
    {
      *v19 = 0;
      *(a4 + 50) = v18 + 1;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

float SFM_Cal(unint64_t a1, unint64_t a2, int a3)
{
  v4 = 0;
  v24 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.2D, #1.0 }

  __x = _Q0;
  v23 = _Q0;
  v10 = 0.0;
  v11 = a1;
  do
  {
    v12 = v4 + 1;
    if (v4 * (a3 >> 2) < (v4 + 1) * (a3 >> 2))
    {
      v13 = v11;
      v14 = a3 >> 2;
      do
      {
        if (v13 < a1 || (v13 + 1) > a2 || v13 > v13 + 1)
        {
          __break(0x5519u);
        }

        v15 = *v13++;
        v16 = fabsf(v15);
        *(&__x + v4) = *(&__x + v4) * (v16 + 1.0e-15);
        v10 = v10 + v16;
        --v14;
      }

      while (v14);
    }

    v11 += a3 >> 2;
    ++v4;
  }

  while (v12 != 4);
  v17 = log(*&__x);
  v18 = v17 + log(*(&__x + 1));
  v19 = v18 + log(*&v23);
  v20 = log(*(&v23 + 1));
  return (exp((v19 + v20) / a3) + 1.0e-15) / (v10 / a3 + 1.0e-15);
}

uint64_t SearchPeriodicityIndex(float *a1, unint64_t a2, float *a3, unint64_t a4, int a5, int a6, int a7, float *a8, float a9)
{
  *v106 = *MEMORY[0x1E69E9840];
  bzero(v103, 0xF00uLL);
  v101 = 0;
  v102 = -1.0e30;
  v17 = a1 + 1;
  if ((a1 + 1) > a2 || v17 < a1 || (a1 + 2) > a2 || v17 > a1 + 2)
  {
    goto LABEL_147;
  }

  if (a5 < 3)
  {
    return 0;
  }

  v19 = fabsf(*a1);
  v20 = fabsf(*v17);
  if (a5 >= 5)
  {
    v21 = 0;
    v22 = 1;
    while (1)
    {
      v23 = &a1[v21 + 2];
      v24 = &a1[v21 + 3];
      v25 = v23 < a1 || v24 > a2;
      if (v25 || v23 > v24)
      {
        goto LABEL_147;
      }

      v27 = &v103[v21 + 1];
      if (v27 < v103)
      {
        goto LABEL_147;
      }

      if (&v104[v21 + 1] > v106)
      {
        goto LABEL_147;
      }

      if (v27 > &v104[v21 + 1])
      {
        goto LABEL_147;
      }

      v28 = fabsf(*v23);
      *v27 = (v20 + v19) + v28;
      v29 = &a1[v21 + 3];
      if (v29 < a1)
      {
        goto LABEL_147;
      }

      v30 = &a1[v21 + 4];
      if (v30 > a2)
      {
        goto LABEL_147;
      }

      if (v29 > v30)
      {
        goto LABEL_147;
      }

      v31 = &v104[v21 + 1];
      if (&v104[v21 + 1] < v103)
      {
        goto LABEL_147;
      }

      if (&v104[v21 + 2] > v106)
      {
        goto LABEL_147;
      }

      if (v31 > &v104[v21 + 2])
      {
        goto LABEL_147;
      }

      v19 = fabsf(*v29);
      *v31 = v28 + (v20 + v19);
      v32 = &a1[v21 + 4];
      if (v32 < a1)
      {
        goto LABEL_147;
      }

      v33 = &a1[v21 + 5];
      if (v33 > a2)
      {
        goto LABEL_147;
      }

      if (v32 > v33)
      {
        goto LABEL_147;
      }

      v34 = &v104[v21 + 2];
      if (&v104[v21 + 2] < v103 || &v105[v21 * 4] > v106 || v34 > &v105[v21 * 4])
      {
        goto LABEL_147;
      }

      v20 = fabsf(*v32);
      *v34 = v28 + (v19 + v20);
      v22 += 3;
      v21 += 3;
      if (a5 - 3 <= v22)
      {
        goto LABEL_34;
      }
    }
  }

  v28 = 0.0;
  v22 = 1;
LABEL_34:
  v35 = a5 - 1;
  if (v22 < a5 - 1)
  {
    v36 = &a1[v22];
    v37 = v36 + 1;
    if (v36 + 1 < a1)
    {
      goto LABEL_147;
    }

    v38 = (v36 + 2);
    if (v38 > a2)
    {
      goto LABEL_147;
    }

    if (v37 > v38)
    {
      goto LABEL_147;
    }

    v39 = &v103[v22];
    if (v39 < v103 || v39 + 1 > v106 || v39 > v39 + 1)
    {
      goto LABEL_147;
    }

    v28 = fabsf(*v37);
    *v39 = (v20 + v19) + v28;
  }

  v40 = v22 + 1;
  if (v22 + 1 < v35)
  {
    v41 = &a1[v22];
    v42 = v41 + 2;
    if (v41 + 2 < a1)
    {
      goto LABEL_147;
    }

    v43 = (v41 + 3);
    if (v43 > a2)
    {
      goto LABEL_147;
    }

    if (v42 > v43)
    {
      goto LABEL_147;
    }

    v44 = &v103[v40];
    if (v44 < v103 || v44 + 1 > v106 || v44 > v44 + 1)
    {
      goto LABEL_147;
    }

    *v44 = v28 + (v20 + fabsf(*v42));
  }

  if (a3)
  {
    v45 = a5;
    v46 = 0.0;
    v47 = a3;
    while (v47 >= a3 && (v47 + 1) <= a4 && v47 <= v47 + 1)
    {
      v48 = *v47++;
      v46 = v46 + fabsf(v48);
      if (!--v45)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_147;
  }

  v49 = v104;
  v46 = 0.0;
  v50 = 1;
  do
  {
    v51 = v49 + 1;
    if (v49 < v103 || v51 > v106 || v49 >= v51)
    {
      goto LABEL_147;
    }

    v54 = *v49;
    v49 += 3;
    v46 = v46 + v54;
    v50 += 3;
  }

  while (v35 > v50);
LABEL_66:
  if (a7 < 1 || a9 <= 0.46)
  {
    v75 = a5;
    if (a3)
    {
      v76 = *v104;
      if (a5 >= 6)
      {
        v77 = v105;
        v78 = 1;
        v79 = 4;
        while (1)
        {
          v80 = v77 + 1;
          v81 = v77 < v103 || v80 > v106;
          v82 = v81 || v77 >= v80;
          v83 = &v103[v78];
          v84 = v83 + 1;
          v85 = !v82 && v83 >= v103;
          v86 = !v85 || v84 > v106;
          if (v86 || v83 >= v84)
          {
            goto LABEL_147;
          }

          v88 = *v77;
          v77 += 3;
          v89 = v88;
          if (v88 > *v83)
          {
            v78 = v79;
          }

          v76 = v76 + v89;
          v79 += 3;
          if (v35 <= v79)
          {
            goto LABEL_125;
          }
        }
      }

      v78 = 1;
LABEL_125:
      v90 = &v103[v78];
      v91 = v90 + 1;
      if (v90 < v103 || v91 > v106 || v90 >= v91)
      {
LABEL_147:
        __break(0x5519u);
      }

      v75 = a5;
      if (*v90 > (v76 * 0.7))
      {
        if (v78 + 4 >= a5)
        {
          v75 = a5;
        }

        else
        {
          v75 = v78 + 4;
        }
      }
    }

    SearchPeriodicityIndex_Range(v103, v106, v75, 0, 16, 3, 48, 4u, &v101, &v102);
    SearchPeriodicityIndex_Range(v103, v106, v75, 16, 80, 4, 112, 4u, &v101, &v102);
    SearchPeriodicityIndex_Range(v103, v106, v75, 80, 208, 3, 16, 4u, &v101, &v102);
    if (v75 > 128)
    {
      if (a5 < 256 || a6 < 151)
      {
        v95 = v75;
        v96 = 208;
        v94 = 256;
        v97 = 1;
        v98 = -152;
        goto LABEL_143;
      }

      SearchPeriodicityIndex_Range(v103, v106, v75, 208, 224, 1, -152, 1u, &v101, &v102);
      v95 = v75;
      v96 = 224;
      v94 = 256;
    }

    else
    {
      v94 = v75 + 88;
      v95 = v75;
      v96 = 208;
    }

    v97 = 0;
    v98 = -36;
LABEL_143:
    SearchPeriodicityIndex_Range(v103, v106, v95, v96, v94, v97, v98, 1u, &v101, &v102);
    goto LABEL_144;
  }

  v55 = ((a7 + 64) >> 7) - 2;
  v56 = &NumRatioBits + 68 * (a5 > 255);
  v57 = &v56[4 * v55];
  if (v57 < v56 || v57 + 4 > v56 + 68 || v57 > v57 + 4)
  {
    goto LABEL_147;
  }

  v58 = &Ratios + 34 * (a5 > 255);
  v59 = &v58[2 * v55];
  v62 = v59 + 2 <= v58 + 34 && v59 < v59 + 2 && v59 >= v58;
  if (((1 << *v57) & ~(1 << *v57 >> 31)) != 0)
  {
    v63 = 0;
    v64 = 0;
    v65 = 4 * ((1 << *v57) & ~(1 << *v57 >> 31));
    v66 = 1;
    v67 = -1.0e30;
    while (v62)
    {
      v68 = (*v59 + v63);
      v69 = v68 + 1;
      v70 = v68 < *v59 || v69 > v59[1];
      if (v70 || v68 >= v69)
      {
        break;
      }

      v72 = (vcvts_n_s32_f32(*v68, 2uLL) * a7) >> 2;
      if (v72 >= 512 && v72 <= (a5 << 7) - 256)
      {
        v74 = SearchPeriodicityIndex_Single(v103, v106, a5, v72, 7);
        if (*&v74 > v67)
        {
          v64 = v66 | 0x100;
          v67 = *&v74;
        }
      }

      v63 += 4;
      ++v66;
      if (v65 == v63)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_147;
  }

  v64 = 0;
  v67 = -1.0e30;
LABEL_123:
  v102 = v67;
  v101 = v64 | ((((a7 + 64) >> 7) - 2) << 9);
LABEL_144:
  v99 = 0.0;
  if (v46 > 0.0)
  {
    v99 = (v102 / v46) * a5;
  }

  *a8 = v99;
  return v101;
}

uint64_t ConfigureContextHm(int a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v44 = -1431655766;
  v45 = -1431655766;
  v9 = a1 < 256 || a2 < 151;
  result = UnmapIndex(a3, a1 > 255, a4, v9, &v44, &v45);
  v12 = *a5;
  v11 = *(a5 + 8);
  v13 = v44;
  v14 = v45;
  v15 = (a1 - 1) << v44;
  v16 = *a5;
  v17 = *a5;
  if (v45 >= v15)
  {
LABEL_18:
    *(a5 + 16) = v12;
    *(a5 + 24) = v11;
    v24 = (v17 - v12) >> 2;
    *(a5 + 48) = v24;
    v25 = v16 + 4 * v24;
    if (v24 < 1)
    {
      v27 = 0;
      v28 = (v16 + 4 * v24);
LABEL_48:
      if (v27 >= a1)
      {
        v41 = v28;
LABEL_60:
        if (v25 >= v16)
        {
          *(a5 + 32) = v25;
          *(a5 + 40) = v11;
          *(a5 + 52) = (v41 - v25) >> 2;
          if ((v41 + 1) <= v11 && v41 <= v41 + 1 && v41 >= v16)
          {
            *v41 = a1;
            return result;
          }
        }
      }

      else
      {
        while (1)
        {
          v41 = v28 + 1;
          v42 = (v28 + 1) > v11 || v28 >= v41;
          if (v42 || v28 < v16)
          {
            break;
          }

          *v28++ = v27++;
          if (a1 == v27)
          {
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = (v16 + 4 * v24);
      while (1)
      {
        v29 = (v12 + 4 * v26);
        v30 = v29 + 1;
        v31 = v29 < v12 || v30 > v11;
        if (v31 || v29 >= v30)
        {
          break;
        }

        if (v27 < *v29)
        {
          while (1)
          {
            v33 = v28 + 1;
            v34 = (v28 + 1) > v11 || v28 >= v33;
            if (v34 || v28 < v16)
            {
              goto LABEL_65;
            }

            *v28 = v27;
            v12 = *(a5 + 16);
            v36 = (v12 + 4 * v26);
            v37 = v36 + 1;
            v38 = v36 < v12 || v37 > v11;
            if (v38 || v36 >= v37)
            {
              goto LABEL_65;
            }

            ++v27;
            v40 = *v36;
            v28 = v33;
            if (v27 >= v40)
            {
              LODWORD(v24) = *(a5 + 48);
              v28 = v33;
              break;
            }
          }
        }

        v27 += 3;
        v26 += 3;
        if (v24 <= v26)
        {
          goto LABEL_48;
        }
      }
    }
  }

  else
  {
    v18 = v12 + 8;
    v19 = v45;
    while (1)
    {
      v20 = v18 - 4;
      if (v18 - 4 > v11)
      {
        break;
      }

      if (v18 - 8 > v20)
      {
        break;
      }

      if (v18 - 8 < v12)
      {
        break;
      }

      v21 = v19 >> v13;
      *(v18 - 8) = (v19 >> v13) - 1;
      if (v18 > v11)
      {
        break;
      }

      if (v20 > v18)
      {
        break;
      }

      *(v18 - 4) = v21;
      if (v18 + 4 > v11 || v18 > v18 + 4)
      {
        break;
      }

      v22 = v21 + 1;
      v23 = v18;
      v18 += 12;
      *v23 = v22;
      v17 = v23 + 1;
      v19 += v14;
      if (v19 >= v15)
      {
        v16 = *a5;
        goto LABEL_18;
      }
    }
  }

LABEL_65:
  __break(0x5519u);
  return result;
}

float SQ_gain(unint64_t a1, int a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  bzero(v27, 0x4B0uLL);
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = a1 + 4 * a3;
    v8 = a1 + 16;
    v9 = v27;
    do
    {
      v10 = v8 - 12;
      v12 = v8 - 16 < a1 || v10 > v7 || v8 - 16 > v10;
      if (v12 || v10 < a1 || (v13 = v8 - 8, v8 - 8 > v7) || v10 > v13 || v13 < a1 || (v14 = v8 - 4, v8 - 4 > v7) || v13 > v14 || v14 < a1 || v8 > v7 || v14 > v8 || v9 < v27 || v9 + 1 > &v28 || v9 > v9 + 1)
      {
LABEL_40:
        __break(0x5519u);
      }

      v15 = log10((((((*(v8 - 16) * *(v8 - 16)) + 0.01) + (*(v8 - 12) * *(v8 - 12))) + (*(v8 - 8) * *(v8 - 8))) + (*(v8 - 4) * *(v8 - 4))));
      *v9++ = v15;
      v6 += 4;
      v8 += 16;
    }

    while (v6 < a3);
  }

  v16 = 0;
  v17 = 12.8;
  v18 = 12.8;
  do
  {
    v17 = v17 * 0.5;
    v18 = v18 - v17;
    if (a3 >= 4)
    {
      v19 = 0.0;
      v20 = v27;
      v21 = a3 >> 2;
      while (1)
      {
        v22 = v20 + 1;
        if (v20 < v27 || v22 > &v28 || v20 > v22)
        {
          goto LABEL_40;
        }

        v25 = *v20 - v18;
        if (v25 > 0.3)
        {
          v19 = v19 + v25;
          if (v19 > ((a2 - (a3 >> 4)) * 0.15))
          {
            break;
          }
        }

        ++v20;
        if (!--v21)
        {
          goto LABEL_38;
        }
      }

      v18 = v17 + v18;
    }

LABEL_38:
    ++v16;
  }

  while (v16 != 10);
  return __exp10(((v18 * 0.5) + 0.45));
}

void tcx_scalar_quantization(unint64_t a1, unint64_t a2, int *a3, unint64_t a4, int a5, float a6, float a7, float a8)
{
  v9 = a3;
  LODWORD(v10) = a3 - 1;
  v11 = a4 + 4 * (a3 - 1);
  if (v11 >= a4)
  {
    v12 = a4;
    v13 = a4 + 4 * a3;
    v8 = v11 + 4;
    if (v11 + 4 <= v13 && v11 <= v8)
    {
      a3 = a2;
      a8 = -a7;
      v11 = v9;
      v8 = v10;
      a2 = a1 + 4 * v9;
      v14 = 4 * v9;
      v15 = a4 - 4;
      v16 = a1;
      v17 = a3;
      LODWORD(v10) = v9;
      a4 = &a3[v9];
      a6 = 1.0 / a6;
      do
      {
        v18 = v15 + v14;
        if (!*(v15 + 4 * v9))
        {
          goto LABEL_21;
        }

        v19 = v16 + v14;
        v20 = (v16 + v14 - 4);
        if (v20 < a1 || v19 > a2 || v20 > v19)
        {
          break;
        }

        if ((a6 * fabsf(*v20)) >= 1.0)
        {
          goto LABEL_21;
        }

        v23 = &v17[v14 / 4];
        v24 = &v17[v14 / 4 - 1];
        if (v24 < a3)
        {
          break;
        }

        if (v23 > a4)
        {
          break;
        }

        if (v24 > v23)
        {
          break;
        }

        *v24 = 0;
        if (v18 - 4 < v12)
        {
          break;
        }

        if (v18 > v13)
        {
          break;
        }

        v15 -= 4;
        --v8;
        LODWORD(v10) = v10 - 1;
        --v17;
        v16 -= 4;
      }

      while (v18 - 4 <= v18);
    }
  }

  while (1)
  {
    __break(0x5519u);
LABEL_21:
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    while (1)
    {
      v10 = (v10 - 1);
      v25 = (a1 + 4 * v10);
      v26 = v25 + 1;
      v27 = v25 < a1 || v26 > a2;
      v28 = v27 || v25 >= v26;
      v29 = &a3[v10];
      v8 = (v29 + 1);
      v30 = !v28 && v29 >= a3;
      v31 = !v30 || v8 > a4;
      if (v31 || v29 >= v8)
      {
        break;
      }

      if (*v25 <= 0.0)
      {
        v33 = a8;
      }

      else
      {
        v33 = a7;
      }

      *v29 = (v33 + (*v25 * a6));
      if (v10 <= 0)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_42:
  if (v9 >= 1)
  {
    v34 = a3;
    do
    {
      v35 = *v34;
      if (*v34 >= 0x7FFF)
      {
        v35 = 0x7FFF;
      }

      if (v35 <= -32768)
      {
        v35 = -32768;
      }

      *v34++ = v35;
      --v11;
    }

    while (v11);
  }

  if (!a5)
  {
    AdaptLowFreqEmph(a1, a2, a3, a4, 0, 0, 0, v9, a6);
  }
}

uint64_t ACcontextMapping_encode2_estimate_no_mem_s17_LC(unint64_t a1, unint64_t a2, int a3, unsigned int *a4, int *a5, int a6, unsigned int *a7, uint64_t a8)
{
  v8 = a7;
  *v135 = *MEMORY[0x1E69E9840];
  v134 = 0;
  if (a3 < 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 2;
    v10 = 1;
    do
    {
      ++v9;
      v10 *= 2;
    }

    while (v10 < a3 / 2);
  }

  v133 = 0xAAAAAAAAAAAAAAAALL;
  v129 = -1431655766;
  v130 = -1431655766;
  if (a8)
  {
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = a3;
    while (v13 >= 4)
    {
      v14 = v13;
      v13 -= 2;
      v15 = (v11 + 4 * v13);
      v16 = (v15 + 1) > v12 || v15 >= v15 + 1;
      if (v16 || v15 < v11)
      {
        goto LABEL_184;
      }

      v18 = (a1 + 4 * *v15);
      v19 = v18 + 1;
      v20 = v18 < a1 || v19 > a2;
      if (v20 || v18 >= v19)
      {
        goto LABEL_184;
      }

      if (!*v18)
      {
        v22 = v11 + 4 * v14;
        if (v22 > v12)
        {
          goto LABEL_184;
        }

        v23 = (v22 - 4);
        if (v22 < 4)
        {
          goto LABEL_184;
        }

        if (v23 < v11)
        {
          goto LABEL_184;
        }

        v24 = (a1 + 4 * *v23);
        if (v24 < a1 || (v24 + 1) > a2 || v24 > v24 + 1)
        {
          goto LABEL_184;
        }

        if (!*v24)
        {
          continue;
        }
      }

      goto LABEL_49;
    }
  }

  else
  {
    v25 = a3;
    while (v25 >= 4)
    {
      v14 = v25;
      v25 -= 2;
      v26 = (a1 + 4 * v25);
      v27 = v26 + 1;
      if (v26 < a1 || v27 > a2 || v26 >= v27)
      {
        goto LABEL_184;
      }

      if (!*v26)
      {
        v30 = a1 + 4 * v14;
        v31 = (v30 - 4);
        if (v30 - 4 < a1 || v30 > a2 || v31 > v30)
        {
          goto LABEL_184;
        }

        if (!*v31)
        {
          continue;
        }
      }

      goto LABEL_49;
    }
  }

  v14 = 2;
LABEL_49:
  v126 = a8;
  v125 = v14;
  if (a8)
  {
    v32 = v9;
    v34 = *(a8 + 48);
    v33 = *(a8 + 52);
    v117 = v34;
    if (v34 >= v14)
    {
      v34 = v14;
    }

    *(a8 + 48) = v34;
    v116 = v14 - v34;
    if (v14 - v34 < v33)
    {
      v35 = v117;
      v36 = *(a8 + 40);
      v37 = v116;
      if (v14 < v117)
      {
        v35 = v14;
      }

      v38 = 4 * v14 - 4 * v35;
      do
      {
        v39 = *(a8 + 32);
        v40 = v39 + v38 + 4;
        if (v39 + v38 < v39 || v40 > v36 || v39 + v38 > v40)
        {
          goto LABEL_184;
        }

        *(v39 + 4 * v37++) += a3;
        a8 = v126;
        v38 += 4;
      }

      while (v37 < *(v126 + 52));
    }

    v133 = v117;
    v9 = v32;
  }

  else
  {
    v116 = 0;
    v117 = 0;
    LODWORD(v133) = 0;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v121 = 0;
  v123 = (a6 > 400) << 9;
  v124 = a3 >> 1;
  v47 = v9 - a6;
  v131 = 0;
  v132 = 0;
  v48 = 0x4000;
  v118 = v9;
  v119 = 2;
  do
  {
    if (a8)
    {
      v49 = a8;
      next_coeff_mapped = get_next_coeff_mapped(&v133, &v132, &v130, a8);
      v51 = v49;
      v8 = a7;
      v52 = get_next_coeff_mapped(&v133, &v131, &v129, v51);
      v44 = v132;
      v43 = v131;
      v45 = v132;
    }

    else
    {
      next_coeff_mapped = v133;
      v52 = v133 + 1;
      v129 = v133 + 1;
      v130 = v133;
      LODWORD(v133) = v133 + 2;
    }

    v53 = &v135[(v43 | v45) - 2];
    v54 = (v53 + 4);
    if (v53 < &v134 || v54 > v135 || v53 >= v54)
    {
      goto LABEL_184;
    }

    v57 = v129;
    v58 = v130 >= v129 ? v129 : v130;
    v59 = v124 < v58;
    v60 = (a1 + 4 * next_coeff_mapped);
    if (v60 < a1)
    {
      goto LABEL_184;
    }

    if ((v60 + 1) > a2)
    {
      goto LABEL_184;
    }

    if (v60 > v60 + 1)
    {
      goto LABEL_184;
    }

    v61 = (a1 + 4 * v52);
    if (v61 < a1 || (v61 + 1) > a2 || v61 > v61 + 1)
    {
      goto LABEL_184;
    }

    v62 = *v53 + v123 + (v59 << 8);
    v63 = *v60;
    if (*v60 >= 0)
    {
      v64 = *v60;
    }

    else
    {
      v64 = -v63;
    }

    v65 = *v61;
    if (v63)
    {
      v66 = v47 + 1;
    }

    else
    {
      v66 = v47;
    }

    if (v65 >= 0)
    {
      v67 = v65;
    }

    else
    {
      v67 = -v65;
    }

    if (v65)
    {
      v68 = v66 + 1;
    }

    else
    {
      v68 = v66;
    }

    v69 = &ari_lookup_s17_LC[v62 + 1024];
    if (v64 <= v67)
    {
      v70 = v67;
    }

    else
    {
      v70 = v64;
    }

    v71 = -1024;
    if (v70 >= 4)
    {
      v72 = v64;
      v73 = v67;
      while (1)
      {
        v74 = &v69[v71];
        if (v74 >= &ari_pk_s17_LC_ext || v74 < ari_lookup_s17_LC)
        {
          break;
        }

        v76 = v48 * *(&ari_pk_s17_LC_ext + 18 * *v74 + 16);
        v77 = __clz(v76);
        v48 = v76 >> (18 - v77);
        v68 = v68 + v77 - 2;
        v72 >>= 1;
        v78 = v73 >> 1;
        if (v71 >= 1024)
        {
          v71 = 1024;
        }

        v71 += 1024;
        if (v72 <= v73 >> 1)
        {
          v79 = v73 >> 1;
        }

        else
        {
          v79 = v72;
        }

        v73 >>= 1;
        if (v79 <= 3)
        {
          goto LABEL_116;
        }
      }

LABEL_184:
      __break(0x5519u);
    }

    v78 = v67;
    v72 = v64;
LABEL_116:
    v80 = &v69[v71];
    if (v80 >= &ari_pk_s17_LC_ext || v80 < ari_lookup_s17_LC)
    {
      goto LABEL_184;
    }

    v81 = 0;
    v82 = *v80;
    if (v82 > 0x3F)
    {
      return v81;
    }

    v83 = v72 + 4 * v78;
    if (v83 > 0x10)
    {
      return v81;
    }

    v84 = (&ari_pk_s17_LC_ext + 36 * v82);
    v85 = &v84[v83];
    if (v85 < v84)
    {
      goto LABEL_184;
    }

    v86 = (v85 + 1);
    if (v85 + 1 > v84 + 18 || v85 > v86 || v86 < v84 || v85 + 2 > v84 + 18 || v86 > (v85 + 2))
    {
      goto LABEL_184;
    }

    v87 = (*v85 - v85[1]) * v48;
    v88 = __clz(v87);
    v47 = v68 + v88 - 4;
    if (v47 < 1)
    {
      if (!v46 || v63 | v65 || v126)
      {
        v118 = v47 + a6;
        v119 = v52 + 1;
      }
    }

    else
    {
      if (*v8)
      {
        v104 = v118;
        v81 = v118;
        a8 = v126;
        goto LABEL_171;
      }

      v121 = 1;
    }

    if (v45 == v43)
    {
      v89 = v71 >> 10;
      if (v71 >> 10 <= 0)
      {
        v90 = (v72 + v78) * (v89 + 2) + 1;
      }

      else
      {
        v90 = v89 + 13;
      }

      a8 = v126;
      *v53 = v90 + 16 * (*v53 & 0xF);
      v45 = v43;
    }

    else
    {
      if (v130)
      {
        v91 = &v135[v45 - 2];
        if (v91 < &v134)
        {
          goto LABEL_184;
        }

        if (v91 + 1 > v135)
        {
          goto LABEL_184;
        }

        if (v91 > v91 + 1)
        {
          goto LABEL_184;
        }

        v92 = &v135[v44 - 2];
        if (v92 < &v134 || v92 + 4 > v135 || v92 > (v92 + 4))
        {
          goto LABEL_184;
        }

        v93 = *v91;
        v94 = (v64 & 0x7FFFFFFE) + (v64 & 0x7FFFFFFE) * (v64 >> 2);
        v95 = v64 >> 3;
        if (v95 >= 2)
        {
          v95 = 2;
        }

        v16 = v94 >= 0xC;
        v96 = v94 - 12;
        if (v96 != 0 && v16)
        {
          v96 = v95;
        }

        *v92 = v96 + 16 * (v93 & 0xF) + 13;
        v45 = v44;
      }

      if (v57)
      {
        v97 = &v135[v43 - 2];
        if (v97 < &v134)
        {
          goto LABEL_184;
        }

        if (v97 + 1 > v135)
        {
          goto LABEL_184;
        }

        if (v97 > v97 + 1)
        {
          goto LABEL_184;
        }

        v98 = &v135[v43 - 2];
        if (v98 < &v134 || v98 + 4 > v135 || v98 > (v98 + 4))
        {
          goto LABEL_184;
        }

        v99 = *v97;
        v100 = (v67 & 0x7FFFFFFE) + (v67 & 0x7FFFFFFE) * (v67 >> 2);
        v101 = v67 >> 3;
        if (v101 >= 2)
        {
          v101 = 2;
        }

        v16 = v100 >= 0xC;
        v102 = v100 - 12;
        if (v102 == 0 || !v16)
        {
          v101 = v102;
        }

        *v98 = v101 + 16 * (v99 & 0xF) + 13;
      }

      a8 = v126;
    }

    v48 = v87 >> (18 - v88);
    v46 += 2;
  }

  while (v46 < v125);
  v103 = v47 + a6;
  v81 = v118;
  if (*v8)
  {
    v103 = v118;
  }

  if (v121)
  {
    v104 = v103;
  }

  else
  {
    v104 = 0;
  }

  v8 = a7;
LABEL_171:
  *a5 = v119;
  *v8 = v104;
  *a4 = v125;
  if (a8)
  {
    if (v116 < *(a8 + 52))
    {
      v105 = *(a8 + 40);
      v106 = v116;
      v107 = 4 * v116;
      do
      {
        v108 = *(a8 + 32);
        v109 = v108 + v107 + 4;
        v110 = v108 + v107 < v108 || v109 > v105;
        if (v110 || v108 + v107 > v109)
        {
          goto LABEL_184;
        }

        *(v108 + 4 * v106++) -= a3;
        a8 = v126;
        v107 += 4;
      }

      while (v106 < *(v126 + 52));
    }

    *(a8 + 48) = v117;
  }

  return v81;
}

void AdaptLowFreqEmph(unint64_t a1, unint64_t a2, int *a3, unint64_t a4, int a5, float *a6, unint64_t a7, int a8, float a9)
{
  if (a5)
  {
    PsychAdaptLowFreqEmph(a1, a2, a6, a7);
    return;
  }

  v9 = a9 + a9;
  if (a8 >= 4)
  {
    v10 = 0;
    v11 = 0;
    v12 = a8 >> 2;
    do
    {
      v13 = &a3[v10];
      v14 = &a3[v10 + 1];
      v15 = &a3[v10] < a3 || v14 > a4;
      if (v15 || v13 > v14)
      {
        goto LABEL_128;
      }

      v17 = *v13;
      if ((*v13 - 2) <= 0xFFFFFFFC)
      {
        v18 = a1 + v10 * 4;
        if (a1 + v10 * 4 < a1 || v18 + 4 > a2 || v18 > v18 + 4)
        {
          goto LABEL_128;
        }

        if (fabsf(v9 * *(a1 + 4 * v11)) >= 3.625)
        {
          if (v17 < 0)
          {
            v36 = -2;
          }

          else
          {
            v36 = 2;
          }

          *v13 = v36 + v17;
          if (v11)
          {
            v37 = a1;
            v38 = a3;
            v39 = v11;
            while (v37 >= a1 && (v37 + 1) <= a2 && v37 <= v37 + 1)
            {
              v40 = *v37;
              v43 = (v38 + 1) <= a4 && v38 <= v38 + 1 && v38 >= a3;
              if (v40 >= 0.0)
              {
                if (!v43)
                {
                  goto LABEL_128;
                }

                v44 = (v9 * v40) + 0.375;
              }

              else
              {
                if (!v43)
                {
                  goto LABEL_128;
                }

                v44 = (v9 * v40) + -0.375;
              }

              *v38++ = v44;
              ++v37;
              if (!--v39)
              {
                goto LABEL_87;
              }
            }
          }

          else
          {
LABEL_87:
            v45 = 0;
            v46 = 0;
            v47 = v9 + v9;
            while (1)
            {
              v48 = &a3[v45];
              v49 = &a3[v45 + 1];
              if (&a3[v45] < a3 || v49 > a4 || v48 > v49)
              {
                goto LABEL_128;
              }

              v52 = *v48;
              if ((*v48 - 2) <= 0xFFFFFFFC)
              {
                v53 = (a1 + v45 * 4);
                if (a1 + v45 * 4 < a1 || (v53 + 1) > a2 || v53 > v53 + 1)
                {
                  goto LABEL_128;
                }

                if (fabsf(v47 * *v53) >= 3.625)
                {
                  break;
                }
              }

              ++v46;
              ++v45;
              if (v12 == v46)
              {
                LODWORD(v46) = -1;
                goto LABEL_125;
              }
            }

            if (v52 < 0)
            {
              v54 = -2;
            }

            else
            {
              v54 = 2;
            }

            *v48 = v54 + v52;
            if (!v46)
            {
LABEL_125:
              v9 = v47 * 0.5;
              if (v46 > v11)
              {
                LODWORD(v11) = v46;
              }

              goto LABEL_19;
            }

            v55 = v46;
            v56 = a1;
            v57 = a3;
            while (v56 >= a1 && (v56 + 1) <= a2 && v56 <= v56 + 1)
            {
              v58 = *v56;
              v61 = (v57 + 1) <= a4 && v57 <= v57 + 1 && v57 >= a3;
              if (v58 >= 0.0)
              {
                if (!v61)
                {
                  goto LABEL_128;
                }

                v62 = (v47 * v58) + 0.375;
              }

              else
              {
                if (!v61)
                {
                  goto LABEL_128;
                }

                v62 = (v47 * v58) + -0.375;
              }

              *v57++ = v62;
              ++v56;
              if (!--v55)
              {
                goto LABEL_125;
              }
            }
          }

          goto LABEL_128;
        }
      }

      ++v11;
      ++v10;
    }

    while (v12 != v11);
  }

  LODWORD(v11) = -1;
LABEL_19:
  v19 = v11 + 1;
  v20 = (a1 + 4 * v19);
  v21 = v20 + 1;
  if (v20 >= a1 && v21 <= a2 && v20 <= v21)
  {
    v24 = *v20;
    v25 = v9 * *v20;
    if (*v20 >= 0.0)
    {
      v27 = &a3[v19];
      if (v25 >= 3.625)
      {
        if (v27 < a3 || (v27 + 1) > a4 || v27 > v27 + 1)
        {
          goto LABEL_128;
        }

        v26 = *v27 + 2;
      }

      else
      {
        v26 = ((v9 * v24) + 0.375);
      }
    }

    else
    {
      if (v25 <= -3.625)
      {
        v28 = &a3[v19];
        if (v28 < a3 || (v28 + 1) > a4 || v28 > v28 + 1)
        {
          goto LABEL_128;
        }

        v26 = *v28 - 2;
      }

      else
      {
        v26 = ((v9 * v24) + -0.375);
      }

      v27 = &a3[v19];
    }

    if (v27 >= a3 && (v27 + 1) <= a4 && v27 <= v27 + 1)
    {
      *v27 = v26;
      v29 = v11 + 2;
      v30 = (a1 + 4 * v29);
      if (v30 >= a1 && (v30 + 1) <= a2 && v30 <= v30 + 1)
      {
        v31 = *v30;
        v32 = v9 * *v30;
        if (*v30 >= 0.0)
        {
          v34 = &a3[v29];
          if (v32 >= 3.625)
          {
            if (v34 < a3 || (v34 + 1) > a4 || v34 > v34 + 1)
            {
              goto LABEL_128;
            }

            v33 = *v34 + 2;
          }

          else
          {
            v33 = ((v9 * v31) + 0.375);
          }
        }

        else
        {
          if (v32 <= -3.625)
          {
            v35 = &a3[v29];
            if (v35 < a3 || (v35 + 1) > a4 || v35 > v35 + 1)
            {
              goto LABEL_128;
            }

            v33 = *v35 - 2;
          }

          else
          {
            v33 = ((v9 * v31) + -0.375);
          }

          v34 = &a3[v29];
        }

        if (v34 >= a3 && (v34 + 1) <= a4 && v34 <= v34 + 1)
        {
          *v34 = v33;
          return;
        }
      }
    }
  }

LABEL_128:
  __break(0x5519u);
}

void AdaptLowFreqDeemph(unint64_t a1, unint64_t a2, int a3, float *a4, unint64_t a5, int a6, unint64_t a7, unint64_t a8)
{
  if (a3)
  {
    if ((a2 - a1) >= 125 && a2 >= a1 && a5 >= a4 && (a5 - a4) >= 33)
    {
      PsychAdaptLowFreqDeemph(a1, a4, a7, a8);
      return;
    }

    goto LABEL_104;
  }

  if (a6 >= 4)
  {
    v8 = 0;
    v9 = a6 >> 2;
    v10 = a1;
    while (v10 >= a1 && (v10 + 1) <= a2 && v10 <= v10 + 1)
    {
      v11 = *v10;
      if (fabsf(*v10) >= 4.0)
      {
        v37 = -2.0;
        if (v11 < 0.0)
        {
          v37 = 2.0;
        }

        *v10 = v11 + v37;
        if (v8)
        {
          v38 = a1;
          v39 = a7;
          v40 = v8;
          while (v38 >= a1)
          {
            if ((v38 + 1) > a2)
            {
              break;
            }

            if (v38 > v38 + 1)
            {
              break;
            }

            *v38 = *v38 * 0.5;
            if (v39 < a7 || (v39 + 1) > a8 || v39 > v39 + 1)
            {
              break;
            }

            *v39 = *v39 * 0.5;
            ++v39;
            ++v38;
            if (!--v40)
            {
              goto LABEL_85;
            }
          }
        }

        else
        {
LABEL_85:
          v12 = 0;
          v41 = a1;
          while (v41 >= a1 && (v41 + 1) <= a2 && v41 <= v41 + 1)
          {
            v42 = *v41;
            if (fabsf(*v41) >= 4.0)
            {
              v43 = -2.0;
              if (v42 < 0.0)
              {
                v43 = 2.0;
              }

              *v41 = v42 + v43;
              if (!v12)
              {
                goto LABEL_15;
              }

              v44 = v12;
              v45 = a1;
              v46 = a7;
              while (v45 >= a1)
              {
                if ((v45 + 1) > a2)
                {
                  break;
                }

                if (v45 > v45 + 1)
                {
                  break;
                }

                *v45 = *v45 * 0.5;
                if (v46 < a7 || (v46 + 1) > a8 || v46 > v46 + 1)
                {
                  break;
                }

                *v46 = *v46 * 0.5;
                ++v46;
                ++v45;
                if (!--v44)
                {
                  goto LABEL_15;
                }
              }

              goto LABEL_104;
            }

            ++v12;
            ++v41;
            if (v9 == v12)
            {
              LODWORD(v12) = -1;
              goto LABEL_15;
            }
          }
        }

        goto LABEL_104;
      }

      ++v8;
      ++v10;
      if (v9 == v8)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_104;
  }

LABEL_14:
  LODWORD(v12) = -1;
  LODWORD(v8) = -1;
LABEL_15:
  if (v12 > v8)
  {
    LODWORD(v8) = v12;
  }

  v13 = v8 + 1;
  v14 = (a1 + 4 * v13);
  v15 = v14 + 1;
  if (v14 >= a1 && v15 <= a2 && v14 <= v15)
  {
    v18 = *v14;
    if (*v14 >= 0.0)
    {
      if (v18 < 4.0)
      {
        v24 = (a7 + 4 * v13);
        v25 = v24 + 1;
        if (v24 < a7 || v25 > a8 || v24 > v25)
        {
          goto LABEL_104;
        }

        *v24 = *v24 * 0.5;
        v18 = *v14;
      }

      v23 = v18 >= 4.0 ? v18 + -2.0 : v18 * 0.5;
    }

    else
    {
      if (v18 > -4.0)
      {
        v19 = (a7 + 4 * v13);
        v20 = v19 + 1;
        if (v19 < a7 || v20 > a8 || v19 > v20)
        {
          goto LABEL_104;
        }

        *v19 = *v19 * 0.5;
        v18 = *v14;
      }

      v23 = v18 <= -4.0 ? v18 + 2.0 : v18 * 0.5;
    }

    *v14 = v23;
    v28 = v8 + 2;
    v29 = (a1 + 4 * v28);
    v30 = v29 + 1;
    v31 = v29 < a1 || v30 > a2;
    if (!v31 && v29 <= v30)
    {
      v33 = *v29;
      if (*v29 >= 0.0)
      {
        if (v33 < 4.0)
        {
          v36 = (a7 + 4 * v28);
          if (v36 < a7 || (v36 + 1) > a8 || v36 > v36 + 1)
          {
            goto LABEL_104;
          }

          *v36 = *v36 * 0.5;
          v33 = *v29;
        }

        if (v33 >= 4.0)
        {
          v35 = v33 + -2.0;
        }

        else
        {
          v35 = v33 * 0.5;
        }

        goto LABEL_73;
      }

      if (v33 <= -4.0)
      {
        goto LABEL_62;
      }

      v34 = (a7 + 4 * v28);
      if (v34 >= a7 && (v34 + 1) <= a8 && v34 <= v34 + 1)
      {
        *v34 = *v34 * 0.5;
        v33 = *v29;
LABEL_62:
        if (v33 <= -4.0)
        {
          v35 = v33 + 2.0;
        }

        else
        {
          v35 = v33 * 0.5;
        }

LABEL_73:
        *v29 = v35;
        return;
      }
    }
  }

LABEL_104:
  __break(0x5519u);
}

unint64_t get_gain(unint64_t result, unint64_t a2, int a3, float *a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.000001;
    do
    {
      v7 = v4;
      v8 = (result + 4 * v4);
      v9 = v8 + 1;
      v11 = v8 < result || v9 > result + 4 * a3 || v8 > v9;
      v12 = (a2 + 4 * v7);
      v13 = v12 + 1;
      if (v11 || v12 < a2 || v13 > a2 + 4 * a3 || v12 > v13)
      {
        __break(0x5519u);
        return result;
      }

      v5 = v5 + (*v8 * *v12);
      v6 = v6 + (*v12 * *v12);
      v4 = v7 + 1;
    }

    while (a3 > (v7 + 1));
    if (!a4)
    {
      return result;
    }

    goto LABEL_21;
  }

  v6 = 0.000001;
  if (a4)
  {
LABEL_21:
    *a4 = v6;
  }

  return result;
}

void PsychAdaptLowFreqDeemph(unint64_t a1, float *a2, unint64_t a3, unint64_t a4)
{
  v7 = 0;
  v9 = *a2;
  v8 = a2 + 1;
  v10 = v9;
  v11 = v9;
  do
  {
    v12 = *&v8[v7];
    if (v11 > v12)
    {
      v11 = *&v8[v7];
    }

    if (v10 < v12)
    {
      v10 = *&v8[v7];
    }

    ++v7;
  }

  while (v7 != 8);
  v13 = v11 * 32.0;
  if (v10 < v13 && v13 > 1.1755e-38)
  {
    v15 = pow((v10 / v13), 0.0078125);
    v16 = a1 + 128;
    v17 = 31;
    v18 = v15;
    if (a3)
    {
      while (1)
      {
        v19 = (a1 + 4 * v17);
        v20 = v19 + 1;
        v21 = v19 < a1 || v20 > v16;
        if (v21 || v19 > v20)
        {
          break;
        }

        *v19 = v18 * *v19;
        v23 = (a3 + 4 * v17);
        v24 = v23 + 1;
        v25 = v23 < a3 || v24 > a4;
        if (v25 || v23 > v24)
        {
          break;
        }

        *v23 = v18 * *v23;
        v18 = v18 * v15;
        if (--v17 == -1)
        {
          return;
        }
      }
    }

    else
    {
      while (1)
      {
        v27 = (a1 + 4 * v17);
        v28 = v27 + 1;
        v29 = v27 < a1 || v28 > v16;
        if (v29 || v27 > v28)
        {
          break;
        }

        *v27 = v18 * *v27;
        v18 = v18 * v15;
        if (--v17 == -1)
        {
          return;
        }
      }
    }

    __break(0x5519u);
  }
}

void tcx_noise_factor(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, int a6, int a7, int a8, float a9, float a10, float *a11, int *a12)
{
  v20 = 0.375;
  if (a10 >= 0.375)
  {
    v20 = a10;
  }

  v21 = pow(v20, (1.0 / a8));
  v22 = a5 - 1;
  if (a5 >= 1)
  {
    v23 = a5 >> 1;
    v24 = a5;
    if (v23 < v22)
    {
      v22 = a5 >> 1;
    }

    v25 = 4 * a5;
    while (1)
    {
      v26 = a3 + v25 + 4;
      v27 = a3 + v25 < a3 || v26 > a4;
      if (v27 || a3 + v25 > v26)
      {
        goto LABEL_117;
      }

      if (*(a3 + 4 * v24) != 0.0)
      {
        a5 = v24;
        break;
      }

      --v24;
      v25 -= 4;
      if (v24 <= v23)
      {
        a5 = v22;
        break;
      }
    }
  }

  v29 = v21;
  v30 = 1.0 / v29;
  v31 = pow((1.0 / v29), a5);
  LODWORD(v32) = a5 + 1;
  v33 = 1.0;
  if (a7 <= 3)
  {
    v34 = v32 & 0xFFFE;
    if (v34 < a6)
    {
      v35 = (a1 + 8 * (v32 >> 1) + 4);
      v36 = 1.1755e-38;
      v37 = 1.1755e-38;
      while (1)
      {
        v38 = (v35 - 1) < a1 || v35 > a2;
        v39 = v38 || v35 - 1 > v35;
        v40 = v35 + 1;
        v41 = !v39 && v35 >= a1;
        v42 = !v41 || v40 > a2;
        if (v42 || v35 > v40)
        {
          goto LABEL_117;
        }

        v37 = v37 + (*(v35 - 1) * *(v35 - 1));
        v36 = v36 + (*v35 * *v35);
        v34 += 2;
        v35 += 2;
        if (v34 >= a6)
        {
          goto LABEL_40;
        }
      }
    }

    v37 = 1.1755e-38;
    v36 = 1.1755e-38;
LABEL_40:
    if (v37 >= v36)
    {
      v44 = v36;
    }

    else
    {
      v44 = v37;
    }

    v33 = sqrtf((v44 + v44) / (v37 + v36));
  }

  v45 = 0.0;
  if (v32 < a6)
  {
    v46 = 0;
    v47 = v31;
    v48 = (1.0 / ((a7 * a7) * a9)) * v47;
    v49 = 2 * a7 - 4;
    v50 = a7;
    v51 = v32;
    v52 = 0.0;
    v53 = 0.0;
    while (1)
    {
      v54 = (a3 + 4 * v51);
      v55 = v54 + 1;
      v56 = v54 < a3 || v55 > a4;
      if (v56 || v54 > v55)
      {
        break;
      }

      v48 = v30 * v48;
      if (*v54 == 0.0)
      {
        v60 = (a1 + 4 * v51);
        if (v60 < a1 || (v60 + 1) > a2 || v60 > v60 + 1)
        {
          break;
        }

        if (v46 < a7)
        {
          ++v46;
        }

        *v54 = v48 * (fabsf(*v60) * v46);
        ++v51;
      }

      else
      {
        if (v46 >= 1)
        {
          v58 = v51 - v32;
          if (a7 > 3)
          {
            v59 = (v58 * v58) * 0.035156;
            if (v58 >= 13)
            {
              v59 = v58 + -7.0;
            }
          }

          else if (v58 <= v49)
          {
            v59 = ((v58 * v58) * 0.28125) / v50;
          }

          else
          {
            v59 = (v58 - a7 + 1);
          }

          v61 = v51 - v46;
          v62 = v32;
          if (v61 <= v32)
          {
LABEL_79:
            v53 = v53 + v59;
            v67 = (a3 + 4 * v62);
            while (v67 >= a3 && (v67 + 1) <= a4 && v67 <= v67 + 1)
            {
              v52 = v52 + (*v67 * v46);
              *v67++ = 0.0;
              v68 = __OFSUB__(v46--, 1);
              if ((v46 < 0) ^ v68 | (v46 == 0))
              {
                v46 = 0;
                goto LABEL_86;
              }
            }
          }

          else
          {
            v63 = 4 * v32;
            while (1)
            {
              v64 = a3 + v63 + 4;
              v65 = a3 + v63 < a3 || v64 > a4;
              if (v65 || a3 + v63 > v64)
              {
                break;
              }

              v52 = v52 + (*(a3 + 4 * v62) * v50);
              *(a3 + 4 * v62++) = 0;
              v63 += 4;
              if (v62 >= v61)
              {
                v62 = v62;
                goto LABEL_79;
              }
            }
          }

          break;
        }

LABEL_86:
        LODWORD(v32) = ++v51;
      }

      if (v51 == a6)
      {
        if (v46 < 1)
        {
LABEL_112:
          v45 = 0.0;
          if (v53 > 0.0)
          {
            v45 = ((v33 * v52) / v53) * 1.3438;
          }

          goto LABEL_114;
        }

        v69 = a6 - v32;
        if (a7 > 3)
        {
          v70 = (v69 * v69) * 0.035156;
          if (v69 >= 13)
          {
            v70 = v69 + -7.0;
          }
        }

        else if (v69 <= v49)
        {
          v70 = ((v69 * v69) * 0.28125) / v50;
        }

        else
        {
          v70 = (v69 - a7 + 1);
        }

        if (v32 >= a6 - v46)
        {
LABEL_106:
          v53 = v53 + v70;
          v75 = (a3 + 4 * v32);
          while (v75 >= a3 && (v75 + 1) <= a4 && v75 <= v75 + 1)
          {
            v52 = v52 + (*v75 * v46);
            *v75++ = 0.0;
            v68 = __OFSUB__(v46--, 1);
            if ((v46 < 0) ^ v68 | (v46 == 0))
            {
              goto LABEL_112;
            }
          }
        }

        else
        {
          v32 = v32;
          v71 = 4 * v32;
          while (1)
          {
            v72 = a3 + v71 + 4;
            v73 = a3 + v71 < a3 || v72 > a4;
            if (v73 || a3 + v71 > v72)
            {
              break;
            }

            v52 = v52 + (*(a3 + 4 * v32) * v50);
            *(a3 + 4 * v32++) = 0;
            v71 += 4;
            if (v32 >= a6 - v46)
            {
              goto LABEL_106;
            }
          }
        }

        break;
      }
    }

LABEL_117:
    __break(0x5519u);
    return;
  }

LABEL_114:
  v76 = ((v45 * 8.0) + 0.5);
  if (v76 >= 7)
  {
    v76 = 7;
  }

  *a12 = v76;
  *a11 = (v76 * 0.75) * 0.125;
}

float *tcxFormantEnhancement(float *result, float *a2, unint64_t a3, int a4)
{
  v4 = result + 1;
  if (result + 1 >= result)
  {
    v5 = &result[a4];
    if (v4 <= v5)
    {
      v6 = sqrtf(*a2);
      *result = v6;
      if (v4 <= result + 2 && (result + 2) <= v5)
      {
        v8 = 0;
        v9 = sqrtf(a2[1]);
        *v4 = v9;
        if (v6 >= v9)
        {
          v6 = v9;
        }

        v10 = 1.0 / v6;
        v11 = 1;
        while (1)
        {
          v12 = v11 + 1;
          v13 = &result[v11 + 1];
          if (v13 < result)
          {
            break;
          }

          if ((v13 + 1) > v5)
          {
            break;
          }

          if (v13 > v13 + 1)
          {
            break;
          }

          v14 = sqrtf(a2[v12]);
          *v13 = v14;
          v15 = &result[v11];
          if (v15 - 1 < result || v15 - 1 > v15)
          {
            break;
          }

          v16 = *(v15 - 1);
          if (v16 <= *v15 && v14 <= *v15)
          {
            if (v16 > v14)
            {
              v14 = *(v15 - 1);
            }

            v17 = &result[v8];
            if (v17 < result || (v17 + 1) > v5 || v17 > v17 + 1)
            {
              break;
            }

            v18 = ((1.0 / v14) - v10) / (v11 - v8);
            *v17 = 1.0;
            v19 = v8 + 1;
            v10 = v18 + v10;
            if (v11 > v19)
            {
              v20 = v19 + 1;
              v21 = &result[v19];
              while (v21 >= result && (v21 + 1) <= v5 && v21 <= v21 + 1)
              {
                v22 = v10 * *v21;
                if (v22 > 1.0)
                {
                  v22 = 1.0;
                }

                *v21++ = v22;
                v10 = v18 + v10;
                if (v11 == v20++)
                {
                  goto LABEL_31;
                }
              }

              break;
            }

LABEL_31:
            v8 = v11;
          }

          ++v11;
          if (v12 == 63)
          {
            if (result + 62 >= result)
            {
              v24 = result + 63;
              if ((result + 63) <= v5 && result + 62 <= v24 && (result + 64) <= v5 && v24 <= result + 64)
              {
                v25 = result[62];
                if (v25 >= result[63])
                {
                  v25 = result[63];
                }

                v26 = &result[v8];
                if (v26 >= result)
                {
                  v27 = v26 + 1;
                  if ((v26 + 1) <= v5 && v26 <= v27)
                  {
                    *v26 = 1.0;
                    if (v8 > 61)
                    {
LABEL_52:
                      *v24 = 1.0;
                      if (a4 < 1)
                      {
                        return result;
                      }

                      v32 = 0;
                      v33 = 0;
                      while (a4 < 64)
                      {
LABEL_72:
                        ++v33;
                        if (v32 >= a4)
                        {
                          return result;
                        }
                      }

                      v34 = &result[v33];
                      v35 = v34 + 1;
                      if (v34 >= result && v35 <= v5 && v34 <= v35)
                      {
                        v38 = v32;
                        v39 = 4 * v32;
                        v40 = a4 >> 6;
                        while (1)
                        {
                          v41 = a3 + v39 + 4;
                          v42 = a3 + v39 < a3 || v41 > a3 + 4 * a4;
                          if (v42 || a3 + v39 > v41)
                          {
                            break;
                          }

                          *(a3 + 4 * v38) = *v34 * *(a3 + 4 * v38);
                          ++v38;
                          v39 += 4;
                          if (!--v40)
                          {
                            v32 = v38;
                            goto LABEL_72;
                          }
                        }
                      }
                    }

                    else
                    {
                      v28 = ((1.0 / v25) - v10) / (63 - v8);
                      v29 = v8 - 62;
                      while (v27 >= result && (v27 + 1) <= v5 && v27 <= v27 + 1)
                      {
                        v10 = v28 + v10;
                        v30 = v10 * *v27;
                        if (v30 > 1.0)
                        {
                          v30 = 1.0;
                        }

                        *v27++ = v30;
                        if (__CFADD__(v29++, 1))
                        {
                          goto LABEL_52;
                        }
                      }
                    }
                  }
                }
              }
            }

            break;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void tcx_noise_filling(unint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, float a8, float a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  if (a8 < 0.375)
  {
    a8 = 0.375;
  }

  v19 = pow(a8, (1.0 / a7));
  v20 = a4 - 1;
  if (a4 >= 1)
  {
    v21 = a4 >> 1;
    v22 = a4;
    if (v21 < v20)
    {
      v20 = a4 >> 1;
    }

    v23 = 4 * a4;
    while (1)
    {
      v24 = a1 + v23 + 4;
      v25 = a1 + v23 < a1 || v24 > a2;
      if (v25 || a1 + v23 > v24)
      {
        goto LABEL_63;
      }

      if (*(a1 + 4 * v22) != 0.0)
      {
        a4 = v22;
        break;
      }

      --v22;
      v23 -= 4;
      if (v22 <= v21)
      {
        a4 = v20;
        break;
      }
    }
  }

  v27 = a4 + 1;
  if (a4 + 1 < a5)
  {
    v28 = v19;
    v29 = pow(v28, a4);
    v30 = 0;
    *&v29 = v29;
    v31 = (a9 / (a6 * a6)) * *&v29;
    v32 = a6;
    v33 = a4 + 1;
    v34 = 0.000000001;
    while (1)
    {
      v35 = (a1 + 4 * v33);
      v36 = v35 + 1;
      v37 = v35 < a1 || v36 > a2;
      if (v37 || v35 > v36)
      {
        break;
      }

      v31 = v31 * v28;
      if (*v35 == 0.0)
      {
        if (v30 < a6)
        {
          ++v30;
        }

        a3 = 31821 * a3 + 13849;
        v34 = v34 + (a3 * a3);
        *v35 = v31 * (v30 * a3);
        if (a11)
        {
          v48 = (a11 + v33);
          if (a11 + v33 >= a12 || v48 < a11)
          {
            break;
          }

          *v48 = 1;
        }
      }

      else
      {
        if (v30 >= 1)
        {
          v39 = sqrtf((v33 - v27) / v34);
          v40 = v33 - v30;
          v41 = v27;
          if (v40 <= v27)
          {
LABEL_40:
            v46 = (a1 + 4 * v41);
            while (v46 >= a1 && (v46 + 1) <= a2 && v46 <= v46 + 1)
            {
              *v46 = (v39 * v30) * *v46;
              ++v46;
              v47 = __OFSUB__(v30--, 1);
              if ((v30 < 0) ^ v47 | (v30 == 0))
              {
                v30 = 0;
                v34 = 0.000000001;
                goto LABEL_47;
              }
            }
          }

          else
          {
            v42 = 4 * v27;
            while (1)
            {
              v43 = a1 + v42 + 4;
              v44 = a1 + v42 < a1 || v43 > a2;
              if (v44 || a1 + v42 > v43)
              {
                break;
              }

              *(a1 + 4 * v41) = (v39 * v32) * *(a1 + 4 * v41);
              ++v41;
              v42 += 4;
              if (v41 >= v40)
              {
                v41 = v41;
                goto LABEL_40;
              }
            }
          }

          break;
        }

LABEL_47:
        v27 = v33 + 1;
      }

      if (++v33 == a5)
      {
        if (v30 < 1 || a5 <= v27)
        {
          return;
        }

        v49 = sqrtf((a5 - v27) / v34) * v32;
        v50 = a5 - v27;
        for (i = (a1 + 4 * v27); i >= a1 && (i + 1) <= a2 && i <= i + 1; ++i)
        {
          *i = v49 * *i;
          if (!--v50)
          {
            return;
          }
        }

        break;
      }
    }

LABEL_63:
    __break(0x5519u);
  }
}

unint64_t mdct_noiseShaping(unint64_t result, unint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a3 + 63;
  }

  v6 = v5 >> 6;
  v7 = a3 - (v5 & 0xFFFFFFC0);
  if (v7)
  {
    v21 = (64 - v7);
    v22 = (64 / v7);
    v23 = v7 <= 32;
    if (v7 > 32)
    {
      v24 = v6;
    }

    else
    {
      v24 = v6 + 1;
    }

    if (!v23)
    {
      ++v6;
    }

    v25 = 0x40 / v21;
    if (v23)
    {
      v25 = v22;
    }

    if (a3 >= 1)
    {
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v28 = (a4 + 4 * v26);
        v29 = v28 + 1;
        v30 = v28 < a4 || v29 > a5;
        if (v30 || v28 >= v29)
        {
          goto LABEL_60;
        }

        if (v26 % v25)
        {
          v32 = v6;
        }

        else
        {
          v32 = v24;
        }

        if (v32 >= a3 - v27)
        {
          v32 = a3 - v27;
        }

        if (v32 >= 1)
        {
          v33 = *v28;
          v34 = v27;
          v35 = 4 * v27;
          do
          {
            v36 = result + v35 + 4;
            v37 = result + v35 < result || v36 > a2;
            if (v37 || result + v35 > v36)
            {
              goto LABEL_60;
            }

            v27 = v34 + 1;
            *(result + 4 * v34) = v33 * *(result + 4 * v34);
            v35 += 4;
            ++v34;
          }

          while (--v32);
        }

        ++v26;
        if (v27 >= a3)
        {
          return result;
        }
      }
    }
  }

  else if (a3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (a4 + 4 * v8);
      v11 = v10 + 1;
      v12 = v10 < a4 || v11 > a5;
      if (v12 || v10 >= v11)
      {
        break;
      }

      if (a3 >= 0x40)
      {
        v14 = *v10;
        v15 = v9;
        v16 = 4 * v9;
        v17 = v6;
        do
        {
          v18 = result + v16 + 4;
          v19 = result + v16 < result || v18 > a2;
          if (v19 || result + v16 > v18)
          {
            goto LABEL_60;
          }

          v9 = v15 + 1;
          *(result + 4 * v15) = v14 * *(result + 4 * v15);
          v16 += 4;
          ++v15;
        }

        while (--v17);
      }

      ++v8;
      if (v9 >= a3)
      {
        return result;
      }
    }

LABEL_60:
    __break(0x5519u);
  }

  return result;
}

_WORD *tcxInvertWindowGrouping(_WORD *result, char *__src, char *__len, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v13 = result + 4276;
  if (a6 && a8 && !a9)
  {
    v14 = *v13;
    result[4277] = v14;
  }

  else
  {
    v14 = result[4277];
    if (a9)
    {
      if (!result[4277] || !*v13)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  if (!v14 && (a8 | a7 || *v13))
  {
    return result;
  }

LABEL_12:
  v15 = 0;
  v16 = 0;
  v51 = a4;
  v17 = 4 * a4;
  v18 = (result + 8584);
  v19 = &__len[v17];
  v20 = &__src[v17];
  do
  {
    v21 = v15;
    if (v15 < a4)
    {
      do
      {
        v22 = &__len[4 * v15];
        v23 = v22 + 4;
        v24 = v22 < __len || v23 > v19;
        v25 = v24 || v22 >= v23;
        v26 = &__src[4 * v16];
        v27 = v26 + 4;
        v28 = !v25 && v26 >= __src;
        v29 = !v28 || v27 > v20;
        if (v29 || v26 >= v27)
        {
          goto LABEL_81;
        }

        ++v16;
        *v26 = *v22;
        LOWORD(v15) = v15 + 2;
      }

      while (a4 > v15);
    }

    v15 = 1;
  }

  while ((v21 & 1) == 0);
  if (a4 >= 1)
  {
    v31 = 4 * a4;
    if (v17 < v31 || (result = memmove(__len, __src, 4 * a4), &__len[v31] < __len))
    {
LABEL_81:
      __break(0x5519u);
      return result;
    }
  }

  if (!a9 && a5 && *v18)
  {
    v32 = a4 >> 1;
    v33 = *(v18 + 12);
    v34 = __len + 32;
    if (v33 >= a4)
    {
      if (v34 < __len)
      {
        goto LABEL_81;
      }

      v44 = (a4 >> 1);
      if (v44 >= 1)
      {
        if (v34 > v19)
        {
          goto LABEL_81;
        }

        v45 = 4 * (a4 >> 1);
        if (v17 - 32 < v45)
        {
          goto LABEL_81;
        }

        if (v17 < v45)
        {
          goto LABEL_81;
        }

        result = memmove(__src, __len + 32, 4 * (v32 & 0x7FFF));
        if (&__src[v45] < __src)
        {
          goto LABEL_81;
        }
      }

      v46 = __len + 64;
      if (__len + 64 < __len)
      {
        goto LABEL_81;
      }

      if (v44 >= 9)
      {
        if (v46 > v19)
        {
          goto LABEL_81;
        }

        v47 = (v32 - 8);
        if (v47 > v51)
        {
          goto LABEL_81;
        }

        v48 = 4 * v47;
        if (4 * v47 > v17 - 64)
        {
          goto LABEL_81;
        }

        result = memmove(v46, __src, v48);
        if (&v46[v48] < v46)
        {
          goto LABEL_81;
        }
      }

      v49 = &__src[4 * v32 - 32];
      if (v49 < __src)
      {
        goto LABEL_81;
      }

      if (v34 > v19)
      {
        goto LABEL_81;
      }

      if (v49 > v20)
      {
        goto LABEL_81;
      }

      if ((v20 - v49) < 0x20)
      {
        goto LABEL_81;
      }

      if ((v51 & 0x7FFFFFF8) == 8)
      {
        goto LABEL_81;
      }

      v50 = *&__src[4 * v32 - 16];
      *v34 = *v49;
      *(v34 + 1) = v50;
      if (v46 < v34)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v34 < __len)
      {
        goto LABEL_81;
      }

      v35 = __len + 64;
      if (__len + 64 < __len)
      {
        goto LABEL_81;
      }

      v36 = (v33 + ((v33 & 0x8000) >> 15)) >> 1;
      v37 = v36 - 8;
      if (v33 >= 18)
      {
        if (v35 > v19)
        {
          goto LABEL_81;
        }

        if (v34 > v19)
        {
          goto LABEL_81;
        }

        v38 = 4 * v37;
        if (v38 > v17 - 32)
        {
          goto LABEL_81;
        }

        if (v38 > v17 - 64)
        {
          goto LABEL_81;
        }

        result = memmove(__len + 64, __len + 32, 4 * v37);
        if (&v35[v38] < v35)
        {
          goto LABEL_81;
        }
      }

      v39 = &__len[4 * v32];
      if (v39 < __len)
      {
        goto LABEL_81;
      }

      if (v34 > v19)
      {
        goto LABEL_81;
      }

      if (v39 > v19)
      {
        goto LABEL_81;
      }

      if (v17 - 4 * v32 < 0x20)
      {
        goto LABEL_81;
      }

      if ((v51 & 0x7FFFFFF8) == 8)
      {
        goto LABEL_81;
      }

      v40 = *(v39 + 1);
      *v34 = *v39;
      *(__len + 3) = v40;
      if (v35 < v34)
      {
        goto LABEL_81;
      }

      v41 = v39 + 32;
      if (v39 + 32 < __len)
      {
        goto LABEL_81;
      }

      v42 = &__len[4 * v36 + 32];
      if (v42 < __len)
      {
        goto LABEL_81;
      }

      if (v33 >= 18)
      {
        if (v19 < v42)
        {
          goto LABEL_81;
        }

        if (v41 > v19)
        {
          goto LABEL_81;
        }

        v43 = 4 * v37;
        if (v43 > v19 - v41)
        {
          goto LABEL_81;
        }

        if (v43 > v19 - v42)
        {
          goto LABEL_81;
        }

        result = memmove(v42, v41, 4 * v37);
        if (&v42[v43] < v42)
        {
          goto LABEL_81;
        }
      }
    }
  }

  return result;
}

void ApplyTnsFilter(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = FIRLattice;
  }

  else
  {
    v7 = IIRLattice;
  }

  *&v8 = -1;
  *(&v8 + 1) = -1;
  __C[0] = v8;
  __C[1] = v8;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, __C, 1, 8uLL);
  v9 = *(a1 + 1);
  if (*(a1 + 1))
  {
    v10 = a1 + 16;
    v34 = a2 + 4;
    v35 = a1 + 22;
    v32 = a2 + 12;
    v33 = a2 + 100;
    for (i = v9 - 1; ; --i)
    {
      *&v12 = -1;
      *(&v12 + 1) = -1;
      __A[0] = v12;
      __A[1] = v12;
      v38 = 0.0;
      vDSP_vfill(&v38, __A, 1, 8uLL);
      v13 = (v10 + 2 * (v9 - 1));
      if ((v13 + 1) > v35 || v13 >= v13 + 1 || v13 < v10)
      {
        goto LABEL_40;
      }

      v16 = (v10 + 2 * v9);
      if ((v16 + 1) > v35)
      {
        goto LABEL_40;
      }

      if (v16 > v16 + 1)
      {
        goto LABEL_40;
      }

      if (v16 < v10)
      {
        goto LABEL_40;
      }

      v17 = v34 + 48 * (v9 - 1);
      if (v17 + 48 > v33)
      {
        goto LABEL_40;
      }

      if (v34 > v17)
      {
        goto LABEL_40;
      }

      v18 = *(v17 + 4);
      if (v18 > 8)
      {
        goto LABEL_40;
      }

      v19 = *v13;
      v20 = *v16;
      if (v18)
      {
        break;
      }

LABEL_30:
      v30 = (a3 + 4 * v20);
      if (v30 > a4)
      {
        goto LABEL_40;
      }

      if (v30 < a3)
      {
        goto LABEL_40;
      }

      v31 = (v19 - v20);
      if ((v31 & 0x80000000) != 0 || (a4 - v30) >> 2 < v31)
      {
        goto LABEL_40;
      }

      if (v18 && v19 != v20)
      {
        do
        {
          *v30 = (v7)(v18, __A, __C, *v30);
          ++v30;
          --v31;
        }

        while (v31);
      }

      v28 = v9-- <= 1;
      if (v28)
      {
        return;
      }
    }

    v21 = (v32 + 48 * i);
    v22 = __A;
    v23 = v18;
    while (1)
    {
      v24 = *v21++;
      v25 = &tnsCoeff4[v24];
      v26 = v25 + 8;
      v27 = v25 + 9;
      v28 = v26 < tnsCoeff4 || v27 > interpol_frac_16k;
      if (v28 || v26 > v27)
      {
        break;
      }

      *v22++ = *v26;
      if (!--v23)
      {
        goto LABEL_30;
      }
    }

LABEL_40:
    __break(0x5519u);
  }
}

void TCX_MDCT_Inverse(unint64_t a1, unint64_t a2, float *a3, unint64_t a4, int a5, int a6, int a7)
{
  v7 = a5 >> 1;
  v8 = &a3[a5 >> 1];
  v9 = v8 <= a4 && v8 >= a3;
  if (!v9 || a2 < a1)
  {
    goto LABEL_65;
  }

  v14 = a6 + (a7 >> 1) + (a5 >> 1);
  v15 = (a6 + (a7 >> 1) + (a5 >> 1));
  v16 = (a4 - v8) >> 2 >= v15 && (v14 & 0x8000) == 0;
  if (!v16 || v15 > (a2 - a1) >> 2)
  {
    goto LABEL_65;
  }

  v17 = a3;
  v18 = a7 >> 1;
  edct(a1);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = &v17[v19 + v7];
      v22 = v21 + 1;
      v23 = v21 < v17 || v22 > a4;
      v24 = v23 || v21 > v22;
      v25 = &v17[a6 + a5 + v18 + v19];
      v26 = v25 + 1;
      v27 = !v24 && v25 >= v17;
      v28 = !v27 || v26 > a4;
      if (v28 || v25 > v26)
      {
        goto LABEL_65;
      }

      *v25 = -*v21;
      v19 = ++v20;
    }

    while (v18 > v20);
  }

  v30 = &v8[a6 + v18];
  if (v30 < v17)
  {
    goto LABEL_65;
  }

  if ((a5 >> 1) >= 1)
  {
    if (a4 < v17)
    {
      goto LABEL_65;
    }

    if (a4 < v30)
    {
      goto LABEL_65;
    }

    v31 = 4 * (v7 & 0x7FFFu);
    if (a4 - v30 < v31)
    {
      goto LABEL_65;
    }

    if (a4 - v17 < v31)
    {
      goto LABEL_65;
    }

    memmove(v17, v30, 4 * (v7 & 0x7FFFu));
    if (&v17[v31 / 4] < v17)
    {
      goto LABEL_65;
    }
  }

  v32 = a6 + a5;
  if (v14 >> 1 >= 1)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = &v17[v33 + v7];
      v36 = v35 + 1;
      v37 = v35 < v17 || v36 > a4;
      v38 = v37 || v35 > v36;
      v39 = &v17[v32 + v18 + ~v33];
      v40 = v39 + 1;
      v41 = !v38 && v39 >= v17;
      v42 = !v41 || v40 > a4;
      if (v42 || v39 > v40)
      {
        goto LABEL_65;
      }

      v44 = *v35;
      *v35 = -*v39;
      *v39 = -v44;
      v33 = ++v34;
    }

    while (v14 >> 1 > v34);
  }

  if (a4 < v17 || (v45 = v32 + a7, (a4 - v17) >> 2 < v45) || v45 < 0)
  {
LABEL_65:
    __break(0x5519u);
    return;
  }

  if (v45 >= 1)
  {
    v46 = sqrtf((a6 + a5 / 2 + a7 / 2) / 160.0);
    v47 = v45 & 0x7FFF;
    do
    {
      *v17 = *v17 * v46;
      ++v17;
      --v47;
    }

    while (v47);
  }
}

float window_ola(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v358 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v10;
  *v371 = *MEMORY[0x1E69E9840];
  memset(v370, 255, sizeof(v370));
  memset(v369, 255, sizeof(v369));
  memset(v368, 255, sizeof(v368));
  memset(v367, 255, sizeof(v367));
  bzero(v366, 0xAC8uLL);
  bzero(v364, 0xAC8uLL);
  v361 = ((v19 * 5625000.0) / 20000000.0);
  tcx_get_windows_mode1(v15, v17, v368, v369, v370, v371, v369, v370, v367, v368, v19);
  v26 = v19;
  if (v19 > 319)
  {
    v27 = 3;
    v360 = 1;
    v28 = -1230;
    if (v26 != 320)
    {
      v29 = v361;
      v30 = v13;
      if (v26 != 512)
      {
        if (v26 == 640)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v360 = 0;
      v27 = 1;
LABEL_10:
      v28 = -656;
      goto LABEL_14;
    }

LABEL_12:
    v29 = v361;
    v30 = v13;
    goto LABEL_14;
  }

  if (v19 == 160)
  {
    v27 = 6;
    v360 = 2;
    v28 = -1230;
    goto LABEL_12;
  }

  v29 = ((v19 * 5625000.0) / 20000000.0);
  v30 = v13;
  if (v19 == 256)
  {
    v360 = 0;
    v27 = 2;
    goto LABEL_10;
  }

LABEL_13:
  v360 = 0;
  v27 = 1;
  v28 = -1230;
LABEL_14:
  v31 = *v23;
  v32 = v23[1];
  v33 = v29;
  v34 = v23[2];
  v363 = *v23 - 4 * v29;
  v35 = v24 + 4 * v26;
  v359 = v26 + (v26 >> 31);
  v362 = v26;
  if (!v30)
  {
    if (v26 == 640)
    {
      if (v29 >= 320)
      {
        LOWORD(v91) = 320 - v29;
LABEL_433:
        v278 = v91;
        if (v91 > 319)
        {
LABEL_471:
          v299 = 0;
          v300 = (v21 + 640);
          v301 = 159;
          v302 = v360 + 159 * v27;
          v303 = -2;
          do
          {
            v304 = &v368[v302];
            v305 = v304 + 1;
            v307 = v304 < v368 || v305 > v369 || v304 > v305;
            v308 = &v21[v299 + 321];
            v309 = &v21[v299 + 322];
            if (v307 || v309 > v300 || v308 > v309)
            {
              goto LABEL_562;
            }

            *v308 = -(*(v24 + v299 * 4 + 4) * *v304);
            v312 = &v369[v301];
            if (v312 < v369 || v312 + 1 > v370 || v312 > v312 + 1)
            {
              goto LABEL_562;
            }

            v303 += 2;
            v21[v299 + 320] = -(*(v24 + v299 * 4) * *v312);
            v299 += 2;
            --v301;
            v302 -= v27;
          }

          while (v303 < 0x13E);
          LOWORD(v313) = v361;
          if (v361 <= 319)
          {
            v314 = v24 + 2560;
            v315 = 319 - v33;
            v316 = 0x13E00000000 - (v33 << 32);
            v317 = &v21[v33];
            while (1)
            {
              v318 = (v24 + 4 * v315);
              v319 = v318 + 1;
              v320 = v318 < v24 || v319 > v314;
              if (v320 || v318 > v319)
              {
                goto LABEL_562;
              }

              v322 = (v33 + ((v33 & 0x8000) >> 15));
              v323 = &v368[~v360 + v27 * (320 - (v322 >> 1))];
              v324 = v323 + 1;
              v325 = v323 < v368 || v324 > v369;
              v326 = v325 || v323 > v324;
              v327 = (v317 + 1);
              v328 = !v326 && v317 >= v21;
              v329 = !v328 || v327 > v300;
              if (v329 || v317 > v327)
              {
                goto LABEL_562;
              }

              *v317 = -(*v318 * *v323);
              v331 = (v24 + (v316 >> 30));
              if (v331 < v24)
              {
                goto LABEL_562;
              }

              if ((v331 + 1) > v314)
              {
                goto LABEL_562;
              }

              if (v331 > v331 + 1)
              {
                goto LABEL_562;
              }

              v332 = &v369[-(v322 >> 1)];
              v333 = v332 + 319;
              if (v332 + 319 < v369)
              {
                goto LABEL_562;
              }

              v334 = v332 + 320;
              if (v334 > v370 || v333 > v334 || (v317 + 2) > v300 || v327 > (v317 + 2))
              {
                goto LABEL_562;
              }

              result = -(*v331 * *v333);
              v317[1] = result;
              v316 -= 0x200000000;
              v315 -= 2;
              v317 += 2;
              v41 = v33 < 318;
              v33 += 2;
              if (!v41)
              {
                goto LABEL_523;
              }
            }
          }

          goto LABEL_524;
        }

        v279 = v24 + 2560;
        v280 = (v21 + 640);
        while (1)
        {
          v281 = (v24 + 4 * (638 - v278));
          v282 = v281 + 1;
          v283 = v281 < v24 || v282 > v279;
          v284 = v283 || v281 > v282;
          v285 = v278 + 321;
          v286 = &v21[v285];
          v287 = v286 + 1;
          v288 = !v284 && v286 >= v21;
          v289 = !v288 || v287 > v280;
          v290 = v289 || v286 > v287;
          v291 = (v363 + 4 * v285);
          v292 = v291 + 1;
          v293 = v290 || v292 > v32;
          v294 = v293 || v291 > v292;
          if (v294 || v291 < v34)
          {
            break;
          }

          *v291 = *v286 - *v281;
          v296 = (v24 + 4 * (639 - v278));
          if (v296 < v24)
          {
            break;
          }

          if ((v296 + 1) > v279)
          {
            break;
          }

          if (v296 > v296 + 1)
          {
            break;
          }

          v297 = &v21[v278 + 320];
          if (v297 < v21)
          {
            break;
          }

          if ((v297 + 1) > v280)
          {
            break;
          }

          if (v297 > v297 + 1)
          {
            break;
          }

          v298 = (v363 + 4 * (v278 + 320));
          if ((v298 + 1) > v32 || v298 > v298 + 1 || v298 < v34)
          {
            break;
          }

          *v298 = *v297 - *v296;
          v278 = (v278 + 2);
          if (v278 >= 320)
          {
            goto LABEL_471;
          }
        }
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = v24 + 2560;
        v61 = (v21 + 640);
        v62 = (v33 << 32) + 0x100000000;
        v63 = v33 - 2;
        v64 = &v21[v33];
        v65 = v24 + 4 * v33;
        do
        {
          v66 = (v65 + v59 + 1280);
          v67 = (v65 + v59 + 1284);
          if (v66 < v24 || v67 > v60 || v66 > v67)
          {
            goto LABEL_562;
          }

          v70 = &v370[v28 + ~v360 + (550 - v58 / 2) * v27];
          v71 = v70 + 1;
          v72 = v70 < v370 || v71 > v371;
          v73 = v72 || v70 > v71;
          v74 = &v64[v59 / 4];
          v75 = &v64[v59 / 4 + 1];
          v76 = !v73 && v74 >= v21;
          v77 = !v76 || v75 > v61;
          v78 = v77 || v74 > v75;
          v79 = (v31 + v59);
          v80 = v31 + v59 + 4;
          v81 = v78 || v80 > v32;
          v82 = v81 || v79 > v80;
          if (v82 || v79 < v34)
          {
            goto LABEL_562;
          }

          *v79 = *v74 + (*v66 * *v70);
          v84 = v65 + v59 + 1288;
          if (v84 > v60)
          {
            goto LABEL_562;
          }

          if (v67 > v84)
          {
            goto LABEL_562;
          }

          v85 = &v367[v58 / -2];
          v86 = v85 + 139;
          if (v85 + 139 < v367)
          {
            goto LABEL_562;
          }

          if (v85 > v367)
          {
            goto LABEL_562;
          }

          if (v86 > v85 + 140)
          {
            goto LABEL_562;
          }

          v87 = (v21 + (v62 >> 30));
          if (v87 < v21)
          {
            goto LABEL_562;
          }

          if ((v87 + 1) > v61)
          {
            goto LABEL_562;
          }

          if (v87 > v87 + 1)
          {
            goto LABEL_562;
          }

          v88 = (v363 + 4 * (v62 >> 32));
          if ((v88 + 1) > v32 || v88 > v88 + 1 || v88 < v34)
          {
            goto LABEL_562;
          }

          v63 += 2;
          *v88 = *v87 + (*v67 * *v86);
          v62 += 0x200000000;
          v59 += 8;
          v58 += 2;
        }

        while (v63 < 318);
        v89 = 0;
        v90 = 0;
        v91 = 320 - v361;
        v92 = v360 + v28;
        while (1)
        {
          v93 = (v24 + 4 * (638 - v89));
          v94 = v93 + 1;
          v95 = v93 < v24 || v94 > v60;
          if (v95 || v93 > v94)
          {
            break;
          }

          v97 = (v90 + ((v90 & 0x8000) >> 15));
          v98 = &v370[v92 + v27 * (479 - (v97 >> 1))];
          v99 = v98 + 1;
          v100 = v98 < v370 || v99 > v371;
          v101 = v100 || v98 > v99;
          v102 = &v21[v89 + 321];
          v103 = v102 + 1;
          v104 = !v101 && v102 >= v21;
          v105 = !v104 || v103 > v61;
          v106 = v105 || v102 > v103;
          v107 = (v363 + 4 * (v89 + 321));
          v108 = v107 + 1;
          v109 = v106 || v108 > v32;
          v110 = v109 || v107 > v108;
          if (v110 || v107 < v34)
          {
            break;
          }

          *v107 = *v102 + (-*v93 * *v98);
          v112 = (v24 + 4 * (639 - v89));
          if (v112 < v24)
          {
            break;
          }

          if ((v112 + 1) > v60)
          {
            break;
          }

          if (v112 > v112 + 1)
          {
            break;
          }

          v113 = &v367[-(v97 >> 1)];
          v114 = v113 + 69;
          if (v113 + 69 < v367)
          {
            break;
          }

          v115 = v113 + 70;
          if (v115 > v368)
          {
            break;
          }

          if (v114 > v115)
          {
            break;
          }

          v116 = &v21[v89 + 320];
          if (v116 < v21)
          {
            break;
          }

          if ((v116 + 1) > v61)
          {
            break;
          }

          if (v116 > v116 + 1)
          {
            break;
          }

          v117 = (v363 + 4 * (v89 + 320));
          if ((v117 + 1) > v32 || v117 > v117 + 1 || v117 < v34)
          {
            break;
          }

          *v117 = *v116 + (-*v112 * *v114);
          v90 = v89 + 2;
          v89 = (v89 + 2);
          if (v89 >= v91)
          {
            goto LABEL_433;
          }
        }
      }
    }

    else
    {
      v142 = v26 / 2;
      v185 = __OFSUB__(v26 / 2, v29);
      v186 = v26 / 2 - v29;
      if ((v186 < 0) ^ v185 | (v186 == 0))
      {
LABEL_312:
        v209 = v362;
        if (v186 < 1)
        {
LABEL_348:
          if (v142 <= v186)
          {
            goto LABEL_377;
          }

          v231 = v186;
          while (1)
          {
            v232 = (v24 + 4 * (~v231 + v362));
            v233 = v232 + 1;
            v234 = v232 < v24 || v233 > v35;
            v235 = v234 || v232 > v233;
            v236 = v231 + v142;
            v237 = &v21[v236];
            v238 = (v237 + 1);
            v239 = !v235 && v237 >= v21;
            v240 = !v239 || v238 > &v21[v209];
            v241 = v240 || v237 > v238;
            v242 = (v363 + 4 * v236);
            v243 = v242 + 1;
            v244 = v241 || v243 > v32;
            v245 = v244 || v242 > v243;
            if (v245 || v242 < v34)
            {
              break;
            }

            result = *v237 - *v232;
            *v242 = result;
            v231 = ++v186;
            if (v142 <= v186)
            {
              goto LABEL_377;
            }
          }
        }

        else
        {
          v210 = 0;
          v211 = 0;
          while (1)
          {
            v212 = (v24 + 4 * (~v210 + v209));
            v213 = v212 + 1;
            v214 = v212 < v24 || v213 > v35;
            if (v214 || v212 > v213)
            {
              break;
            }

            v216 = &v370[v360 + v28 + (3 * v362 / 2 + ~v210) * v27];
            v217 = v216 + 1;
            v218 = v216 < v370 || v217 > v371;
            v219 = v218 || v216 > v217;
            v220 = v210 + v142;
            v221 = &v21[v220];
            v222 = (v221 + 1);
            v223 = !v219 && v221 >= v21;
            v224 = !v223 || v222 > &v21[v362];
            v225 = v224 || v221 > v222;
            v226 = (v363 + 4 * v220);
            v227 = v226 + 1;
            v228 = v225 || v227 > v32;
            v229 = v228 || v226 > v227;
            if (v229 || v226 < v34)
            {
              break;
            }

            result = *v221 + (-*v212 * *v216);
            *v226 = result;
            v210 = ++v211;
            v209 = v362;
            if (v186 <= v211)
            {
              goto LABEL_348;
            }
          }
        }
      }

      else
      {
        v187 = v361;
        v188 = 2 * v26;
        v189 = &v21[v26];
        v190 = v361;
        while (1)
        {
          v191 = (v24 + 4 * (v190 + v142));
          v192 = v191 + 1;
          v193 = v191 < v24 || v192 > v35;
          if (v193 || v191 > v192)
          {
            break;
          }

          v195 = &v370[v28 + ~v360 + (v188 - v190) * v27];
          v196 = v195 + 1;
          v197 = v195 < v370 || v196 > v371;
          v198 = v197 || v195 > v196;
          v199 = &v21[v187];
          v200 = v199 + 1;
          v201 = !v198 && v199 >= v21;
          v202 = !v201 || v200 > v189;
          v203 = v202 || v199 > v200;
          v204 = (v363 + 4 * v187);
          v205 = v204 + 1;
          v206 = v203 || v205 > v32;
          v207 = v206 || v204 > v205;
          if (v207 || v204 < v34)
          {
            break;
          }

          result = *v199 + (*v191 * *v195);
          *v204 = result;
          v190 = ++v187;
          if (v142 <= v187)
          {
            goto LABEL_312;
          }
        }
      }
    }

    goto LABEL_562;
  }

  if (v26 != 640)
  {
    v118 = (v26 + ((v26 & 0x8000) >> 15)) << 16 >> 17;
    if (v26 < 2)
    {
LABEL_167:
      if (v118 <= v361)
      {
        goto LABEL_187;
      }

      v129 = v361 + 1;
      v130 = &v368[(v26 - v33) * v27 - v360 - 1];
      v131 = v364;
      while (1)
      {
        v132 = v130 + 1;
        v133 = v130 < v368 || v132 > v369;
        v134 = v133 || v130 > v132;
        v135 = v131 + 1;
        v136 = !v134 && v131 >= v364;
        v137 = !v136 || v135 > v366;
        if (v137 || v131 > v135)
        {
          break;
        }

        *v131++ = *v130;
        v139 = ((v26 + ((v26 & 0x8000) >> 15)) >> 1) == v129++;
        v130 -= v27;
        if (v139)
        {
          goto LABEL_187;
        }
      }
    }

    else
    {
      v119 = 0;
      v120 = &v364[v118 - v361];
      v121 = &v368[v360 + v27 * (v118 - 1)];
      while (1)
      {
        v122 = v121 + 1;
        v123 = v121 < v368 || v122 > v369;
        v124 = v123 || v121 > v122;
        v125 = v120 + 1;
        v126 = !v124 && v120 >= v364;
        v127 = !v126 || v125 > v366;
        if (v127 || v120 > v125)
        {
          break;
        }

        *v120++ = *v121;
        ++v119;
        v121 -= v27;
        if (v118 <= v119)
        {
          goto LABEL_167;
        }
      }
    }

LABEL_562:
    __break(0x5519u);
  }

  v36 = 0;
  v37 = 0;
  do
  {
    v38 = 159 - ((v37 + ((v37 & 0x8000) >> 15)) >> 1);
    v39 = &v368[v360 + v27 * v38];
    v40 = v39 + 1;
    v41 = v39 < v368 || v40 > v369;
    if (v41 || v39 > v40)
    {
      goto LABEL_562;
    }

    v43 = &v364[v36 - v361];
    v44 = v43 + 321;
    if (v43 + 321 < v364)
    {
      goto LABEL_562;
    }

    if (v43 + 322 > v366)
    {
      goto LABEL_562;
    }

    if (v44 > v43 + 322)
    {
      goto LABEL_562;
    }

    *v44 = *v39;
    v45 = &v369[v38];
    if (v45 < v369)
    {
      goto LABEL_562;
    }

    if (v45 + 1 > v370)
    {
      goto LABEL_562;
    }

    if (v45 > v45 + 1)
    {
      goto LABEL_562;
    }

    v46 = v43 + 320;
    if (v46 < v364 || v46 > v44)
    {
      goto LABEL_562;
    }

    *v46 = *v45;
    v37 = v36 + 2;
    v36 = (v36 + 2);
  }

  while (v36 < 320);
  if (v361 <= 319)
  {
    v47 = &v365;
    v48 = v33;
    do
    {
      v49 = (v48 + ((v48 & 0x8000) >> 15));
      v50 = &v368[~v360 + v27 * (320 - (v49 >> 1))];
      v51 = v50 + 1;
      v52 = v50 < v368 || v51 > v369;
      if (v52 || v50 > v51)
      {
        goto LABEL_562;
      }

      v54 = v47 - 1;
      if (v47 - 1 < v364)
      {
        goto LABEL_562;
      }

      if (v47 > v366)
      {
        goto LABEL_562;
      }

      if (v54 > v47)
      {
        goto LABEL_562;
      }

      *v54 = *v50;
      v55 = &v369[-(v49 >> 1)];
      v56 = v55 + 319;
      if (v55 + 319 < v369)
      {
        goto LABEL_562;
      }

      v57 = v55 + 320;
      if (v57 > v370 || v56 > v57 || v47 + 1 > v366 || v47 > v47 + 1)
      {
        goto LABEL_562;
      }

      *v47 = *v56;
      v47 += 2;
      v41 = v48 < 318;
      v48 += 2;
    }

    while (v41);
  }

LABEL_187:
  v140 = v26 - v361;
  v141 = (v26 - v361);
  if (v141 > 690 || (v140 & 0x8000) != 0)
  {
    goto LABEL_562;
  }

  sinq(v141, v366, 3.1416 / (2 * v140), 3.1416 / (4 * v140));
  v142 = v359 >> 1;
  if (v359 >> 1 > v361)
  {
    v143 = v361;
    v144 = v361;
    do
    {
      v145 = (v24 + 4 * (v144 + v142));
      v146 = v145 + 1;
      v147 = v145 < v24 || v146 > v35;
      v148 = v147 || v145 > v146;
      v149 = (v363 + 4 * v143);
      v150 = v149 + 1;
      v151 = v148 || v150 > v32;
      v152 = v151 || v149 > v150;
      if (v152 || v149 < v34)
      {
        goto LABEL_562;
      }

      result = *v145;
      *v149 = *v145;
      v144 = ++v143;
    }

    while (v142 > v143);
  }

  v154 = v362;
  if (v362 >= 2)
  {
    v155 = 0;
    v156 = 0;
    do
    {
      v157 = (v24 + 4 * (~v155 + v154));
      v158 = v157 + 1;
      v159 = v157 < v24 || v158 > v35;
      v160 = v159 || v157 > v158;
      v161 = (v363 + 4 * (v155 + v142));
      v162 = v161 + 1;
      v163 = v160 || v162 > v32;
      v164 = v163 || v161 > v162;
      if (v164 || v161 < v34)
      {
        goto LABEL_562;
      }

      result = -*v157;
      *v161 = result;
      v155 = ++v156;
      v154 = v362;
    }

    while (v142 > v156);
  }

  if (v358)
  {
    if (v140 >= 1)
    {
      v166 = 0;
      v167 = 0;
      v168 = v23[2];
      do
      {
        v169 = (*v23 + 4 * v167);
        v170 = (v169 + 1) > v23[1] || v169 > v169 + 1;
        if (v170 || v169 < v168)
        {
          goto LABEL_562;
        }

        v172 = &v366[v167];
        if (v172 < v366)
        {
          goto LABEL_562;
        }

        if (v172 + 1 > v367)
        {
          goto LABEL_562;
        }

        if (v172 > v172 + 1)
        {
          goto LABEL_562;
        }

        v173 = (a9 + 4 * (v166 + v361));
        if (v173 < a9)
        {
          goto LABEL_562;
        }

        if ((v173 + 1) > a10)
        {
          goto LABEL_562;
        }

        if (v173 > v173 + 1)
        {
          goto LABEL_562;
        }

        v174 = &v366[v140 + ~v166];
        if (v174 < v366 || v174 + 1 > v367 || v174 > v174 + 1)
        {
          goto LABEL_562;
        }

        result = (*v173 * *v174) + (*v169 * *v172);
        *v169 = result;
        v166 = ++v167;
      }

      while (v140 > v167);
    }
  }

  else if (v140 >= 1)
  {
    v175 = 0;
    LOWORD(v176) = 0;
    v177 = v23[2];
    result = 0.01;
    do
    {
      v178 = (*v23 + 4 * v176);
      v179 = (v178 + 1) > v23[1] || v178 > v178 + 1;
      if (v179 || v178 < v177)
      {
        goto LABEL_562;
      }

      v176 = v176;
      v181 = &v366[v176];
      if (v181 < v366)
      {
        goto LABEL_562;
      }

      if (v181 + 1 > v367)
      {
        goto LABEL_562;
      }

      if (v181 > v181 + 1)
      {
        goto LABEL_562;
      }

      v182 = &v21[v175 + v361];
      if (v182 < v21)
      {
        goto LABEL_562;
      }

      if (v182 + 1 > &v21[v362])
      {
        goto LABEL_562;
      }

      if (v182 > v182 + 1)
      {
        goto LABEL_562;
      }

      v183 = &v366[v140 + ~v175];
      if (v183 < v366)
      {
        goto LABEL_562;
      }

      if (v183 + 1 > v367)
      {
        goto LABEL_562;
      }

      if (v183 > v183 + 1)
      {
        goto LABEL_562;
      }

      v184 = &v364[v176];
      if (v184 < v364 || v184 + 1 > v366 || v184 > v184 + 1)
      {
        goto LABEL_562;
      }

      *v178 = ((*v182 * *v183) / (v364[v176] + 0.01)) + (*v178 * *v181);
      LOWORD(v176) = v176 + 1;
      v175 = v176;
    }

    while (v140 > v176);
  }

  if (v362 == 640)
  {
    goto LABEL_471;
  }

LABEL_377:
  if (v362 >= 2)
  {
    v247 = 0;
    v248 = 0;
    do
    {
      v249 = (v24 + 4 * v248);
      v250 = v249 + 1;
      v251 = v249 < v24 || v250 > v35;
      v252 = v251 || v249 > v250;
      v253 = &v368[v360 + (v142 + ~v247) * v27];
      v254 = v253 + 1;
      v255 = !v252 && v253 >= v368;
      v256 = !v255 || v254 > v369;
      v257 = v256 || v253 > v254;
      v258 = &v21[v247 + v142];
      v259 = (v258 + 1);
      v260 = !v257 && v258 >= v21;
      v261 = !v260 || v259 > &v21[v362];
      if (v261 || v258 > v259)
      {
        goto LABEL_562;
      }

      result = -(*v249 * *v253);
      *v258 = result;
      v247 = ++v248;
    }

    while (v142 > v248);
  }

  if (v142 > v361)
  {
    v263 = v361;
    v264 = v361;
    do
    {
      v265 = (v24 + 4 * (v142 + ~v264));
      v266 = v265 + 1;
      v267 = v265 < v24 || v266 > v35;
      if (v267 || v265 > v266)
      {
        goto LABEL_562;
      }

      v269 = &v368[~v360 + (v362 - v264) * v27];
      v270 = v269 + 1;
      v271 = v269 < v368 || v270 > v369;
      v272 = v271 || v269 > v270;
      v273 = &v21[v263];
      v274 = (v273 + 1);
      v275 = !v272 && v273 >= v21;
      v276 = !v275 || v274 > &v21[v362];
      if (v276 || v273 > v274)
      {
        goto LABEL_562;
      }

      result = -(*v265 * *v269);
      *v273 = result;
      v264 = ++v263;
    }

    while (v142 > v263);
  }

LABEL_523:
  LOWORD(v313) = v361;
  if (v361 >= 1)
  {
LABEL_524:
    v335 = &v21[v362];
    v313 = v313;
    v336 = -65536;
    v337 = v21;
    v338 = v313;
    do
    {
      v339 = (v24 + 4 * ((v359 >> 1) + (v336 >> 16)));
      v340 = v339 + 1;
      v342 = v339 < v24 || v340 > v35 || v339 > v340;
      v343 = v337 + 1;
      if (v342 || v337 < v21 || v343 > v335 || v337 > v343)
      {
        goto LABEL_562;
      }

      *v337++ = -*v339;
      v336 -= 0x10000;
      --v338;
    }

    while (v338);
    v347 = 0;
    v348 = v363 + 4 * v362;
    while (1)
    {
      v349 = &v21[v347];
      v350 = &v21[v347 + 1];
      v351 = &v21[v347] < v21 || v350 > v335;
      v352 = v351 || v349 > v350;
      v353 = (v348 + v347 * 4);
      v354 = v348 + v347 * 4 + 4;
      v355 = v352 || v354 > v32;
      v356 = v355 || v353 > v354;
      if (v356 || v353 < v34)
      {
        break;
      }

      result = *v349;
      *v353 = *v349;
      ++v347;
      if (!--v313)
      {
        return result;
      }
    }

    goto LABEL_562;
  }

  return result;
}

void sinq(int a1, float *a2, float a3, float a4)
{
  v4 = &a2[a1];
  v5 = a2 + 1;
  v6 = (a2 + 1) <= v4 && v5 >= a2;
  if (!v6 || ((v11 = sin(a4), *a2 = v11, v12 = a2 + 2, (a2 + 2) <= v4) ? (v13 = v5 > v12) : (v13 = 1), v13 || ((v14 = sin((a3 + a4)), a2[1] = v14, v15 = sin((a4 + (a3 * 2.0))), v16 = a2 + 3, v12 >= a2) ? (v17 = v16 > v4) : (v17 = 1), !v17 ? (v18 = v12 > v16) : (v18 = 1), v18)))
  {
LABEL_30:
    __break(0x5519u);
    return;
  }

  v19 = v15;
  *v12 = v19;
  v20 = 0.0;
  if (fabsf(a3) > 0.0001)
  {
    v20 = (v11 + v19) / v14;
  }

  if (a1 >= 4)
  {
    v21 = a1 - 3;
    for (i = a2 + 2; i >= a2; ++i)
    {
      v23 = (i + 1);
      if ((i + 1) > v4 || i > v23 || i - 1 < a2 || i - 1 > i || (i + 2) > v4 || v23 > (i + 2))
      {
        break;
      }

      i[1] = -(*(i - 1) - (v20 * *i));
      if (!--v21)
      {
        return;
      }
    }

    goto LABEL_30;
  }
}

uint64_t FIRLattice(uint64_t result, float *a2, float *a3, float a4)
{
  v4 = result - 1;
  if (result < 2)
  {
    v10 = a4;
LABEL_12:
    v11 = &a2[v4];
    if (v11 >= a2 && v11 + 4 <= &a2[result] && v11 < v11 + 4)
    {
      v13 = &a3[v4];
      if (v13 >= a3 && v13 + 1 <= &a3[result] && v13 <= v13 + 1)
      {
        *v13 = v10;
        return result;
      }
    }
  }

  else
  {
    v5 = a2;
    v6 = a3;
    v7 = (result - 1);
    v8 = a4;
    while (v5 >= a2 && v5 + 1 <= &a2[result] && v5 <= v5 + 1 && v6 >= a3 && v6 + 1 <= &a3[result] && v6 <= v6 + 1)
    {
      v9 = *v5++;
      v10 = *v6 + (v9 * a4);
      a4 = a4 + (v9 * *v6);
      *v6++ = v8;
      v8 = v10;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t IIRLattice(uint64_t result, unint64_t a2, float *a3, float a4)
{
  v4 = a2 + 4 * result;
  v5 = result - 1;
  v6 = (a2 + 4 * v5);
  v7 = v6 + 1;
  v9 = v6 < a2 || v7 > v4 || v6 > v7;
  v10 = &a3[result];
  v11 = &a3[v5];
  v12 = v11 + 1;
  if (!v9 && v11 >= a3 && v12 <= v10 && v11 <= v12)
  {
    v16 = a4 - (*v6 * *v11);
    if (result < 2)
    {
LABEL_43:
      if ((a3 + 1) <= v10 && a3 + 1 >= a3)
      {
        *a3 = v16;
        return result;
      }
    }

    else
    {
      LODWORD(v17) = result - 1;
      while (1)
      {
        v17 = (v17 - 1);
        v18 = (a2 + 4 * v17);
        v19 = v18 + 1;
        v20 = v18 < a2 || v19 > v4;
        if (v20 || v18 > v19)
        {
          break;
        }

        v22 = &a3[v17];
        v23 = v22 + 1;
        v24 = v22 < a3 || v23 > v10;
        v25 = v24 || v22 > v23;
        v26 = v22 + 2;
        v27 = !v25 && v23 >= a3;
        v28 = !v27 || v26 > v10;
        if (v28 || v23 > v26)
        {
          break;
        }

        v16 = v16 - (*v18 * *v22);
        v22[1] = *v22 + (*v18 * v16);
        if (v17 <= 0)
        {
          goto LABEL_43;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

float *refine_0(float *result, unint64_t a2, unint64_t a3, int *a4, float a5, float a6, float a7, float a8)
{
  v8 = ((1.0 - a7) * 0.33) * a8;
  if ((v8 * a6) >= a5)
  {
    v20 = -(v8 * a6);
    v21 = *a4;
    *a4 = v21 + 1;
    v22 = (a2 + 4 * v21);
    v25 = (v22 + 1) <= a3 && v22 < v22 + 1 && v22 >= a2;
    if (v20 <= a5)
    {
      if (v25)
      {
        *v22 = 0;
        return result;
      }
    }

    else if (v25)
    {
      *v22 = 1;
      v26 = *a4;
      *a4 = v26 + 1;
      v27 = (a2 + 4 * v26);
      v28 = v27 + 1;
      v29 = v27 < a2 || v28 > a3;
      if (!v29 && v27 < v28)
      {
        *v27 = 0;
        v19 = v8 * -2.0;
        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = *a4;
    *a4 = v9 + 1;
    v10 = (a2 + 4 * v9);
    v11 = v10 + 1;
    if (v10 >= a2 && v11 <= a3 && v10 < v11)
    {
      *v10 = 1;
      v14 = *a4;
      *a4 = v14 + 1;
      v15 = (a2 + 4 * v14);
      v16 = v15 + 1;
      v17 = v15 < a2 || v16 > a3;
      if (!v17 && v15 < v16)
      {
        *v15 = 1;
        v19 = v8 + v8;
LABEL_36:
        *result = v19;
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t tcx_arith_render_envelope(__int16 *a1, unint64_t a2, int a3, int a4, int a5, int a6, unint64_t a7, unint64_t a8)
{
  v331 = *MEMORY[0x1E69E9840];
  v326 = -1431655766;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v325[0] = v8;
  v325[1] = v8;
  v323 = v8;
  v324 = v8;
  v321 = v8;
  v322 = v8;
  v319 = v8;
  v320 = v8;
  v318[0] = v8;
  v318[1] = v8;
  v317[6] = v8;
  v317[7] = v8;
  v317[4] = v8;
  v317[5] = v8;
  v317[2] = v8;
  v317[3] = v8;
  v317[0] = v8;
  v317[1] = v8;
  v316[6] = v8;
  v316[7] = v8;
  v316[4] = v8;
  v316[5] = v8;
  v316[2] = v8;
  v316[3] = v8;
  v316[0] = v8;
  v316[1] = v8;
  v315[6] = v8;
  v315[7] = v8;
  v315[4] = v8;
  v315[5] = v8;
  v315[2] = v8;
  v315[3] = v8;
  v315[0] = v8;
  v315[1] = v8;
  if ((a1 + 1) > a2 || a1 + 1 < a1)
  {
    goto LABEL_515;
  }

  v11 = 0;
  v12 = 0;
  v13 = *a1;
  v14 = v13 << 15;
  v15 = 0x7FFF;
  do
  {
    v16 = &a1[v11 + 1];
    v17 = &a1[v11 + 2];
    if (v16 < a1 || v17 > a2 || v16 > v17)
    {
      goto LABEL_515;
    }

    v20 = v15 * *v16;
    if (v20 < 0)
    {
      v20 = -v20;
    }

    if (v14 <= v20)
    {
      v14 = v20;
    }

    v21 = ((v15 << 16 >> 1) - v15 + 0x4000) >> 15;
    if ((v21 & 0x10000) != 0)
    {
      v15 = v21 | 0xFFFF0000;
    }

    else
    {
      v15 = ((v15 << 16 >> 1) - v15 + 0x4000) >> 15;
    }

    if (v15 < -32768)
    {
      v12 = 1;
    }

    if (v15 <= -32768)
    {
      v15 = -32768;
    }

    ++v11;
  }

  while (v11 != 15);
  LODWORD(v328[0]) = v12;
  v313 = a1 + 16;
  if (a1 + 16 < a1 || (a1 + 17) > a2 || v313 > a1 + 17)
  {
LABEL_515:
    __break(0x5519u);
  }

  v22 = v15 * *v313;
  if (v22 < 0)
  {
    v22 = -v22;
  }

  if (v14 > v22)
  {
    v22 = v14;
  }

  if ((v22 - 1) > 0x3FFFFFFE)
  {
    v23 = 0;
    v24 = -1;
  }

  else
  {
    v23 = 0;
    do
    {
      v24 = v23;
      v25 = v22 >> 29;
      v22 *= 2;
      ++v23;
    }

    while (!v25);
    if (v23 == 0x8000)
    {
      LODWORD(v328[0]) = 1;
      v23 = 0x8000;
      v24 = 0x8000;
    }
  }

  v26 = 0;
  LOWORD(v325[0]) = shl(v13, v24, v328);
  v27 = 0x7FFF;
  do
  {
    v28 = v325 + v26 * 2 + 2;
    v29 = v325 + v26 * 2 + 4;
    v30 = &a1[v26 + 2] <= a2 && v28 >= v325;
    if (!v30 || v29 > v327 || v28 > v29)
    {
      goto LABEL_515;
    }

    v33 = L_shl(v27 * a1[v26 + 1], v23);
    v34 = ((v33 + 0x8000) ^ v33) > -1 || v33 < 0;
    v35 = (v33 + 0x8000) >> 16;
    if (!v34)
    {
      LOWORD(v35) = 0x7FFF;
    }

    *v28 = v35;
    v36 = ((v27 << 16 >> 1) - v27 + 0x4000) >> 15;
    if ((v36 & 0x10000) != 0)
    {
      v37 = v36 | 0xFFFF0000;
    }

    else
    {
      v37 = ((v27 << 16 >> 1) - v27 + 0x4000) >> 15;
    }

    if (v37 <= -32768)
    {
      v27 = -32768;
    }

    else
    {
      v27 = v37;
    }

    ++v26;
  }

  while (v26 != 15);
  v38 = L_shl(v27 * *v313, v23);
  v40 = ((v38 + 0x8000) ^ v38) > -1 || v38 < 0;
  v41 = (v38 + 0x8000) >> 16;
  if (!v40)
  {
    LOWORD(v41) = 0x7FFF;
  }

  LOWORD(v326) = v41;
  basop_lpc2mdct(v325, v327, 16, 0, 0, 0, 0, v39, v316, v317, v315, v316);
  if (a6 == 0x4000)
  {
    v42 = 17;
    v43 = a1;
    v44 = v318;
    while (v43 >= a1 && (v43 + 1) <= a2 && v43 <= v43 + 1 && v44 >= v318 && v44 + 1 <= v325 && v44 <= v44 + 1)
    {
      v45 = *v43++;
      *v44++ = v45;
      if (!--v42)
      {
        goto LABEL_214;
      }
    }

    goto LABEL_515;
  }

  if (a6 < -15338)
  {
    v46 = 1;
LABEL_78:
    v47 = &basop_weight_a_inv_inv_gamma_tab_12k8;
    goto LABEL_79;
  }

  v46 = 0;
  if (a6 != 17430)
  {
    goto LABEL_78;
  }

  v47 = &basop_weight_a_inv_inv_gamma_tab_16k;
LABEL_79:
  v48 = (v47 + 16);
  v49 = 0;
  v50 = *a1;
  v51 = v50 << 15;
  do
  {
    v52 = &a1[v49 + 1];
    v53 = &a1[v49 + 2];
    v55 = v52 < a1 || v53 > a2 || v52 > v53;
    v56 = &v47[v49];
    v57 = &v47[v49 + 1];
    if (v55 || v56 < v47 || v57 > v48 || v56 > v57)
    {
      goto LABEL_515;
    }

    v61 = *v56 * *v52;
    if (v61 == 0x40000000)
    {
      v62 = 0x7FFFFFFF;
      v46 = 1;
    }

    else
    {
      v63 = 2 * v61;
      if ((v61 & 0x40000000) != 0)
      {
        v63 = -2 * v61;
      }

      if (v61 == -1073741824)
      {
        v62 = 0x7FFFFFFF;
      }

      else
      {
        v62 = v63;
      }
    }

    if (v51 <= v62)
    {
      v51 = v62;
    }

    ++v49;
  }

  while (v49 != 8);
  for (i = 0; i != 8; ++i)
  {
    v65 = &a1[i + 9];
    v66 = &a1[i + 10];
    v68 = v65 < a1 || v66 > a2 || v65 > v66;
    v69 = &v47[i + 9];
    v70 = &v47[i + 8];
    if (v68 || v70 < v47 || v69 > v48 || v70 > v69)
    {
      goto LABEL_515;
    }

    v74 = *v70 * *v65;
    if (v74 == 0x40000000)
    {
      v75 = 0x7FFFFFFF;
      v46 = 1;
    }

    else
    {
      v76 = 2 * v74 - 0x40000000;
      v77 = 4 * v74;
      v78 = (v74 >> 31) ^ 0x7FFFFFFF;
      if (v76 < 0)
      {
        v78 = v77;
      }

      if (v78 >= 0)
      {
        v79 = v78;
      }

      else
      {
        v79 = -v78;
      }

      if (v78 == 0x80000000)
      {
        v75 = 0x7FFFFFFF;
      }

      else
      {
        v75 = v79;
      }
    }

    if (v51 <= v75)
    {
      v51 = v75;
    }
  }

  LODWORD(v328[0]) = v46;
  if ((v51 - 1) > 0x3FFFFFFE)
  {
    v80 = 0;
    v81 = -1;
  }

  else
  {
    v80 = 0;
    do
    {
      v81 = v80;
      v82 = v51 >> 29;
      v51 *= 2;
      ++v80;
    }

    while (!v82);
    if (v80 == 0x8000)
    {
      LODWORD(v328[0]) = 1;
      v80 = 0x8000;
      v81 = 0x8000;
    }
  }

  v83 = 0;
  LOWORD(v318[0]) = shl(v50, v81, v328);
  do
  {
    v84 = &a1[v83 + 1];
    v85 = &a1[v83 + 2];
    v87 = v84 < a1 || v85 > a2 || v84 > v85;
    v88 = &v47[v83];
    v89 = &v47[v83 + 1];
    v92 = v87 || v88 < v47 || v89 > v48 || v88 > v89;
    v93 = v318 + v83 * 2 + 2;
    v94 = v318 + v83 * 2 + 4;
    if (v92 || v93 < v318 || v94 > v325 || v93 > v94)
    {
      goto LABEL_515;
    }

    v98 = *v88 * *v84;
    if (v98 == 0x40000000)
    {
      v99 = 0x7FFFFFFF;
    }

    else
    {
      v99 = 2 * v98;
    }

    v100 = L_shl(v99, v80);
    v101 = ((v100 + 0x8000) ^ v100) > -1 || v100 < 0;
    v102 = (v100 + 0x8000) >> 16;
    if (!v101)
    {
      LOWORD(v102) = 0x7FFF;
    }

    *v93 = v102;
    ++v83;
  }

  while (v83 != 8);
  v103 = 0;
  v104 = v80;
  if (v80 != 0x7FFF)
  {
    v104 = v80 + 1;
  }

  v105 = v104;
  do
  {
    v106 = &a1[v103 + 9];
    v107 = &a1[v103 + 10];
    v109 = v106 < a1 || v107 > a2 || v106 > v107;
    v110 = &v47[v103 + 9];
    v111 = &v47[v103 + 8];
    v114 = v109 || v111 < v47 || v110 > v48 || v111 > v110;
    v115 = &v318[1] + v103 * 2 + 2;
    v116 = &v318[1] + v103 * 2 + 4;
    if (v114 || v115 < v318 || v116 > v325 || v115 > v116)
    {
      goto LABEL_515;
    }

    v120 = *v111 * *v106;
    if (v120 == 0x40000000)
    {
      v121 = 0x7FFFFFFF;
    }

    else
    {
      v121 = 2 * v120;
    }

    v122 = L_shl(v121, v105);
    v123 = ((v122 + 0x8000) ^ v122) > -1 || v122 < 0;
    v124 = (v122 + 0x8000) >> 16;
    if (!v123)
    {
      LOWORD(v124) = 0x7FFF;
    }

    *v115 = v124;
    ++v103;
  }

  while (v103 != 8);
LABEL_214:
  v125 = 0;
  *&v126 = 0xAAAAAAAAAAAAAAAALL;
  *(&v126 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v328[0] = v126;
  v328[1] = v126;
  v127 = SLOWORD(v318[0]);
  v128 = v127 << 15;
  v328[2] = v126;
  v328[3] = v126;
  v329 = -1431655766;
  v129 = v328 + 1;
  do
  {
    v130 = (v318 + v125 + 2);
    v131 = (v318 + v125 + 4);
    if (v130 < v318 || v131 > v325)
    {
      v133 = 0;
      v134 = 1;
    }

    else
    {
      v133 = __OFSUB__(v130, v131);
      v134 = v130 > v131;
    }

    if (v134)
    {
      goto LABEL_515;
    }

    v135 = *v130;
    v136 = *(v318 + v125) * a5;
    v137 = (v135 << 15) - v136;
    v138 = v136 ^ (v135 << 15);
    v139 = v137 ^ (v135 << 15);
    v140 = (v135 >> 15) ^ 0x7FFFFFFF;
    if ((v138 & v139) < 0 == v133)
    {
      v140 = v137;
    }

    *v129++ = v140;
    if (v140 >= 0)
    {
      v141 = v140;
    }

    else
    {
      v141 = -v140;
    }

    if (v140 == 0x80000000)
    {
      v142 = 0x7FFFFFFF;
    }

    else
    {
      v142 = v141;
    }

    if (v128 <= v142)
    {
      v128 = v142;
    }

    v125 += 2;
  }

  while (v125 != 32);
  v143 = v319 * a5;
  v144 = -v143;
  v330 = -v143;
  if (v143 >= 0)
  {
    v145 = v319 * a5;
  }

  else
  {
    v145 = -v143;
  }

  if (v128 > v145)
  {
    v145 = v128;
  }

  if ((v145 - 1) > 0x3FFFFFFE)
  {
    v146 = 0;
    v149 = -1;
  }

  else
  {
    v146 = 0;
    do
    {
      v147 = v146;
      v148 = v145 >> 29;
      v145 *= 2;
      ++v146;
    }

    while (!v148);
    if (v146 == 0x8000)
    {
      v149 = 0x8000;
    }

    else
    {
      v149 = v147;
    }
  }

  v150 = -32;
  LOWORD(v325[0]) = shl(v127, v149, &v314);
  for (j = 1; j != 17; ++j)
  {
    v152 = &v327[v150];
    if (&v327[v150 - 2] < v325 || v152 > v327 || &v327[v150 - 2] > v152)
    {
      goto LABEL_515;
    }

    v155 = L_shl(*(v328 + j), v146);
    v156 = ((v155 + 0x8000) ^ v155) > -1 || v155 < 0;
    v157 = (v155 + 0x8000) >> 16;
    if (!v156)
    {
      LOWORD(v157) = 0x7FFF;
    }

    *(v325 + j) = v157;
    v150 += 2;
  }

  v158 = L_shl(v144, v146);
  v160 = ((v158 + 0x8000) ^ v158) > -1 || v158 < 0;
  v161 = (v158 + 0x8000) >> 16;
  if (!v160)
  {
    LOWORD(v161) = 0x7FFF;
  }

  HIWORD(v326) = v161;
  basop_lpc2mdct(v325, v327, 17, v318, v325, v317, v318, v159, 0, 0, 0, 0);
  for (k = 0; k != 128; k += 2)
  {
    v163 = (*(v316 + k) * *(v318 + k) + 0x4000) >> 15;
    if ((v163 & 0x10000) != 0)
    {
      v164 = v163 | 0xFFFF0000;
    }

    else
    {
      v164 = (*(v316 + k) * *(v318 + k) + 0x4000) >> 15;
    }

    if (v164 <= -32768)
    {
      v164 = -32768;
    }

    if (v164 >= 0x7FFF)
    {
      LOWORD(v164) = 0x7FFF;
    }

    *(v318 + k) = v164;
    v165 = v317 + k;
    if ((v317 + k) < v317 || v165 + 2 > v318 || v165 > v165 + 2)
    {
      goto LABEL_515;
    }

    v166 = *(v315 + k) + *(v317 + k);
    if (v166 >= 0x7FFF)
    {
      v166 = 0x7FFF;
    }

    if (v166 <= -32768)
    {
      LOWORD(v166) = 0x8000;
    }

    *(v317 + k) = v166;
  }

  if (a3 >= 1)
  {
    v167 = a3;
    v168 = a7;
    while (v168 >= a7 && (v168 + 1) <= a8 && v168 <= v168 + 1)
    {
      *v168++ = 0x10000;
      if (!--v167)
      {
        goto LABEL_286;
      }
    }

    goto LABEL_515;
  }

LABEL_286:
  v169 = 0;
  LODWORD(v328[0]) = 0;
  LOWORD(v170) = v316[0];
  LOWORD(v171) = v315[0];
  LOWORD(v172) = v316[0];
  LOWORD(v173) = v315[0];
  do
  {
    v174 = (v316 + v169 + 2);
    v175 = (v316 + v169 + 4);
    v177 = v174 < v316 || v175 > v317 || v174 > v175;
    v178 = (v315 + v169 + 2);
    v179 = (v315 + v169 + 4);
    if (v177 || v178 < v315 || v179 > v316 || v178 > v179)
    {
      goto LABEL_515;
    }

    v183 = *v174;
    v184 = *v178;
    v185 = compMantExp16Unorm(v183, v184, v172, v173);
    if (v185 >= 0)
    {
      v186 = v173;
    }

    else
    {
      v186 = v184;
    }

    v173 = v186;
    if (v185 >= 0)
    {
      v187 = v172;
    }

    else
    {
      v187 = v183;
    }

    v172 = v187;
    v188 = compMantExp16Unorm(v183, v184, v170, v171);
    if (v188 <= 0)
    {
      v189 = v171;
    }

    else
    {
      v189 = v184;
    }

    v171 = v189;
    if (v188 <= 0)
    {
      v190 = v170;
    }

    else
    {
      v190 = v183;
    }

    v170 = v190;
    v169 += 2;
  }

  while (v169 != 16);
  if (v173 < 32763)
  {
    v191 = v173 + 5;
  }

  else
  {
    LODWORD(v328[0]) = 1;
    v191 = 0x7FFF;
  }

  result = compMantExp16Unorm(v190, v171, v172, v191);
  if ((result & 0x80000000) != 0 && v172 >= 1)
  {
    LOWORD(v314) = v191;
    v193 = v170 * Inv16(v172, &v314, v328);
    if (v193 == 0x40000000)
    {
      LODWORD(v328[0]) = 1;
      v194 = 0x7FFFFFFF;
    }

    else
    {
      v194 = 2 * v193;
    }

    v195 = v171 + v314;
    if (v195 < 0x8000)
    {
      if (v195 <= -32769)
      {
        LODWORD(v328[0]) = 1;
        LOWORD(v195) = 0x8000;
      }
    }

    else
    {
      LODWORD(v328[0]) = 1;
      LOWORD(v195) = 0x7FFF;
    }

    v196 = L_shl(v194, v195);
    v197 = BASOP_Util_Log2(v196, v328);
    v198 = BASOP_Util_InvLog2((v197 >> 7), v328);
    v199 = ((v198 + 0x8000) ^ v198) > -1 || v198 < 0;
    v200 = (v198 + 0x8000) >> 16;
    if (!v199)
    {
      LOWORD(v200) = 0x7FFF;
    }

    v201 = v200;
    v202 = 31;
    do
    {
      v203 = (a7 + 4 * v202);
      v204 = v203 + 1;
      v205 = v203 < a7 || v204 > a8;
      if (v205 || v203 > v204)
      {
        goto LABEL_515;
      }

      v207 = v200;
      result = Mpy_32_16_1(*v203, v200);
      *v203 = result;
      v208 = (v201 * v207 + 0x4000) >> 15;
      if ((v208 & 0x10000) != 0)
      {
        v200 = v208 | 0xFFFF0000;
      }

      else
      {
        v200 = (v201 * v207 + 0x4000) >> 15;
      }

      if (v200 <= -32768)
      {
        v200 = -32768;
      }

      if (v200 >= 0x7FFF)
      {
        LOWORD(v200) = 0x7FFF;
      }
    }

    while (v202-- != 0);
  }

  LODWORD(v328[0]) = 0;
  if (a3 < 0)
  {
    v210 = a3 >> 6;
LABEL_416:
    v246 = 0;
    v247 = v317;
    v248 = v318;
    v249 = a7;
    while (v210 < 1)
    {
      v251 = v249;
LABEL_432:
      ++v247;
      ++v248;
      v249 = v251;
      v30 = v246++ >= 0x3F;
      if (v30)
      {
        goto LABEL_434;
      }
    }

    LOWORD(v250) = 0;
    while (1)
    {
      v251 = v249 + 1;
      v252 = (v249 + 1) > a8 || v249 > v251;
      v253 = v252 || v248 + 1 > v325;
      if (v253 || v247 + 1 > v318)
      {
        goto LABEL_515;
      }

      v255 = Mpy_32_16_1(*v249, *v248);
      result = L_shl(v255, *v247);
      *v249 = result;
      v250 = (v250 + 1);
      ++v249;
      if (v250 >= v210)
      {
        goto LABEL_432;
      }
    }
  }

  v210 = a3 >> 6;
  if (v210 == 5)
  {
    if (a3 < 1)
    {
      goto LABEL_434;
    }

    LOWORD(v309) = 0;
    v311 = 0;
    LOWORD(result) = 0;
    v263 = 1;
    while (1)
    {
      v264 = v311;
      v311 = result;
      v265 = v318 + v264;
      v266 = v265 + 1;
      if (v265 < v318 || v266 > v325 || v265 > v266)
      {
        goto LABEL_515;
      }

      v269 = v318 + result;
      if (v269 < v318)
      {
        goto LABEL_515;
      }

      if (v269 + 1 > v325)
      {
        goto LABEL_515;
      }

      if (v269 > v269 + 1)
      {
        goto LABEL_515;
      }

      v270 = v318 + v263;
      if (v270 < v318)
      {
        goto LABEL_515;
      }

      if (v270 + 1 > v325)
      {
        goto LABEL_515;
      }

      if (v270 > v270 + 1)
      {
        goto LABEL_515;
      }

      v271 = v317 + result;
      if (v271 < v317)
      {
        goto LABEL_515;
      }

      if (v271 + 1 > v318)
      {
        goto LABEL_515;
      }

      if (v271 > v271 + 1)
      {
        goto LABEL_515;
      }

      v272 = v317 + v264;
      if (v272 < v317 || v272 + 1 > v318 || v272 > v272 + 1)
      {
        goto LABEL_515;
      }

      v273 = *v265;
      v274 = *v269;
      v275 = *v271;
      v276 = *v272;
      v277 = v275 - v276;
      v307 = *v270;
      if (v275 - v276 >= 0x8000)
      {
        break;
      }

      if (v277 < -32768)
      {
        LOWORD(v277) = 0x8000;
LABEL_476:
        v278 = shl(v274, v277, v328);
        goto LABEL_480;
      }

      if (v277 >= 1)
      {
        goto LABEL_478;
      }

      if (v277 < 0)
      {
        goto LABEL_476;
      }

LABEL_479:
      v278 = v274;
LABEL_480:
      if (v275 > v276)
      {
        LOWORD(v276) = v275;
      }

      v279 = mac_r(26214 * v273, v278, 19661, v328);
      v280 = (a7 + 4 * v309);
      if (v280 < a7)
      {
        goto LABEL_515;
      }

      v281 = v280 + 1;
      if ((v280 + 1) > a8)
      {
        goto LABEL_515;
      }

      if (v280 > v281)
      {
        goto LABEL_515;
      }

      v282 = Mpy_32_16_1(*v280, v279);
      v283 = v276;
      *v280 = L_shl(v282, v276);
      v284 = v280 + 2;
      v285 = mac_r(13108 * v273, v278, 26214, v328);
      if ((v280 + 2) > a8)
      {
        goto LABEL_515;
      }

      if (v281 > v284)
      {
        goto LABEL_515;
      }

      v286 = Mpy_32_16_1(v280[1], v285);
      v280[1] = L_shl(v286, v283);
      v287 = v280 + 3;
      if ((v280 + 3) > a8)
      {
        goto LABEL_515;
      }

      if (v284 > v287)
      {
        goto LABEL_515;
      }

      v288 = Mpy_32_16_1(*v284, v274);
      *v284 = L_shl(v288, v275);
      v289 = v317 + v263;
      if (v289 < v317 || v289 + 1 > v318 || v289 > v289 + 1)
      {
        goto LABEL_515;
      }

      v290 = *v289;
      v291 = v275 - v290;
      if (v275 - v290 >= 0x8000)
      {
        LOWORD(v291) = 0x7FFF;
LABEL_499:
        v292 = shr(v307, v291, v328);
        goto LABEL_500;
      }

      if (v291 < -32768)
      {
        LOWORD(v291) = 0x8000;
LABEL_496:
        LODWORD(v274) = shl(v274, v291, v328);
        goto LABEL_497;
      }

      if (v291 >= 1)
      {
        goto LABEL_499;
      }

      if (v291 < 0)
      {
        goto LABEL_496;
      }

LABEL_497:
      v292 = v307;
LABEL_500:
      if (v275 <= v290)
      {
        v293 = v290;
      }

      else
      {
        v293 = v275;
      }

      v294 = v292;
      v295 = mac_r(52428 * v274, v292, 6554, v328);
      v296 = v280 + 4;
      if ((v280 + 4) > a8)
      {
        goto LABEL_515;
      }

      if (v287 > v296)
      {
        goto LABEL_515;
      }

      v297 = Mpy_32_16_1(v280[3], v295);
      v280[3] = L_shl(v297, v293);
      v298 = mac_r(39322 * v274, v294, 13107, v328);
      if ((v280 + 5) > a8 || v296 > v280 + 5)
      {
        goto LABEL_515;
      }

      v299 = Mpy_32_16_1(*v296, v298);
      *v296 = L_shl(v299, v293);
      v300 = v263;
      if (v263 >= 62)
      {
        v300 = 62;
      }

      result = v263;
      v263 = (v300 + 1);
      v309 = (v309 + 5);
      if (v309 >= a3)
      {
        goto LABEL_434;
      }
    }

    LOWORD(v277) = 0x7FFF;
LABEL_478:
    LODWORD(v273) = shr(v273, v277, v328);
    goto LABEL_479;
  }

  if (v210 != 4)
  {
    goto LABEL_416;
  }

  if (a3 >= 1)
  {
    LOWORD(v211) = 0;
    LOWORD(result) = 0;
    v308 = 1;
    v310 = 0;
    while (1)
    {
      v212 = v310;
      v310 = result;
      v213 = v318 + v212;
      v214 = v213 + 1;
      if (v213 < v318 || v214 > v325 || v213 > v214)
      {
        goto LABEL_515;
      }

      v217 = v318 + result;
      if (v217 < v318)
      {
        goto LABEL_515;
      }

      if (v217 + 1 > v325)
      {
        goto LABEL_515;
      }

      if (v217 > v217 + 1)
      {
        goto LABEL_515;
      }

      v218 = v318 + v308;
      if (v218 < v318)
      {
        goto LABEL_515;
      }

      if (v218 + 1 > v325)
      {
        goto LABEL_515;
      }

      if (v218 > v218 + 1)
      {
        goto LABEL_515;
      }

      v219 = v317 + result;
      if (v219 < v317)
      {
        goto LABEL_515;
      }

      if (v219 + 1 > v318)
      {
        goto LABEL_515;
      }

      if (v219 > v219 + 1)
      {
        goto LABEL_515;
      }

      v220 = v317 + v212;
      if (v220 < v317 || v220 + 1 > v318 || v220 > v220 + 1)
      {
        goto LABEL_515;
      }

      v221 = *v213;
      v222 = *v217;
      v223 = *v219;
      v224 = *v220;
      v225 = v223 - v224;
      v306 = *v218;
      if (v223 - v224 >= 0x8000)
      {
        break;
      }

      if (v225 < -32768)
      {
        LOWORD(v225) = 0x8000;
LABEL_378:
        v226 = shl(v222, v225, v328);
        goto LABEL_382;
      }

      if (v225 >= 1)
      {
        goto LABEL_380;
      }

      if (v225 < 0)
      {
        goto LABEL_378;
      }

LABEL_381:
      v226 = v222;
LABEL_382:
      if (v223 <= v224)
      {
        v227 = v224;
      }

      else
      {
        v227 = v223;
      }

      v228 = mac_r(24576 * v221, v226, 20480, v328);
      v229 = (a7 + 4 * v211);
      if (v229 < a7)
      {
        goto LABEL_515;
      }

      v230 = v229 + 1;
      if ((v229 + 1) > a8)
      {
        goto LABEL_515;
      }

      if (v229 > v230)
      {
        goto LABEL_515;
      }

      v231 = Mpy_32_16_1(*v229, v228);
      *v229 = L_shl(v231, v227);
      v232 = v229 + 2;
      v233 = mac_r(v221 << 13, v226, 28672, v328);
      if ((v229 + 2) > a8)
      {
        goto LABEL_515;
      }

      if (v230 > v232)
      {
        goto LABEL_515;
      }

      v234 = Mpy_32_16_1(*v230, v233);
      *v230 = L_shl(v234, v227);
      v235 = v317 + v308;
      if (v235 < v317 || v235 + 1 > v318 || v235 > v235 + 1)
      {
        goto LABEL_515;
      }

      v236 = *v235;
      v237 = v223 - v236;
      if (v223 - v236 < 0x8000)
      {
        if (v237 < -32768)
        {
          LOWORD(v237) = 0x8000;
          goto LABEL_397;
        }

        if (v237 < 1)
        {
          if (v237 < 0)
          {
LABEL_397:
            LODWORD(v222) = shl(v222, v237, v328);
          }

          v238 = v306;
          goto LABEL_401;
        }
      }

      else
      {
        LOWORD(v237) = 0x7FFF;
      }

      v238 = shr(v306, v237, v328);
LABEL_401:
      if (v223 <= v236)
      {
        LOWORD(v223) = v236;
      }

      v239 = v238;
      v240 = mac_r(57344 * v222, v238, 4096, v328);
      v241 = v229 + 3;
      if ((v229 + 3) > a8)
      {
        goto LABEL_515;
      }

      if (v232 > v241)
      {
        goto LABEL_515;
      }

      v242 = Mpy_32_16_1(v229[2], v240);
      v229[2] = L_shl(v242, v223);
      v243 = mac_r(40960 * v222, v239, 12288, v328);
      if ((v229 + 4) > a8 || v241 > v229 + 4)
      {
        goto LABEL_515;
      }

      v244 = Mpy_32_16_1(*v241, v243);
      *v241 = L_shl(v244, v223);
      v245 = v308;
      if (v308 >= 62)
      {
        v245 = 62;
      }

      result = v308;
      v211 = (v211 + 4);
      v308 = (v245 + 1);
      if (v211 >= a3)
      {
        goto LABEL_434;
      }
    }

    LOWORD(v225) = 0x7FFF;
LABEL_380:
    LODWORD(v221) = shr(v221, v225, v328);
    goto LABEL_381;
  }

LABEL_434:
  if (a3 < a4)
  {
    v256 = a4 - a3;
    for (m = (a7 + 4 * a3); ; ++m)
    {
      v258 = (m - 1) < a7 || m > a8;
      v259 = v258 || m - 1 > m;
      v260 = m + 1;
      v261 = v259 || v260 > a8;
      if (v261 || m > v260)
      {
        break;
      }

      *m = *(m - 1);
      if (!--v256)
      {
        return result;
      }
    }

    goto LABEL_515;
  }

  return result;
}

uint64_t tcx_arith_scale_envelope(int a1, uint64_t a2, int *a3, unint64_t a4, int a5, int a6, _WORD *a7, unint64_t a8, _WORD *a9)
{
  v11 = 34360 * ((a5 * a5) >> 16) + ((17180 * ((a5 * a5) & 0xFFFDu)) >> 15);
  v12 = (30199 * a5) >> 11;
  if (a5 < 0)
  {
    v12 = (30199 * a5) >> 11;
  }

  v13 = (v11 >> 6) - v12;
  v14 = v12 ^ (v11 >> 6);
  v15 = v13 ^ (v11 >> 6);
  v16 = (v11 >> 31) ^ 0x7FFFFFFF;
  if ((v14 & v15) >= 0)
  {
    v16 = v13;
  }

  v17 = v16 + 39322;
  v19 = v16 < 0;
  v18 = (v16 + 39322) ^ v16;
  v19 = !v19 && v18 < 0;
  v20 = !v19;
  *v265 = *MEMORY[0x1E69E9840];
  if ((v14 & v15) >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  memset(__b, 170, sizeof(__b));
  v261 = -21846;
  if (v20)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  v257 = v21 ^ 1;
  v258 = -21846;
  v251 = Mpy_32_16_1(v22, a5);
  v242 = a2;
  if (a2 >= 1)
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = &a3[v23];
      v26 = v25 + 1;
      if (v25 < a3 || v26 > a4 || v25 >= v26)
      {
        goto LABEL_512;
      }

      v29 = *v25;
      if (!*v25)
      {
        break;
      }

      if (v29 == -1)
      {
        v30 = 31;
LABEL_35:
        v34 = 15 - v30;
        goto LABEL_36;
      }

      v31 = v29 ^ (v29 >> 31);
      if (v31 > 0x3FFFFFFF)
      {
        break;
      }

      LOWORD(v30) = 0;
      do
      {
        v32 = v30;
        v33 = v31 >> 29;
        v31 *= 2;
        v30 = (v30 + 1);
      }

      while (!v33);
      if (v30 > -32753)
      {
        v34 = 14 - v32;
      }

      else
      {
        v257 = 1;
        v34 = 0x7FFF;
      }

LABEL_36:
      v258 = v34;
      v35 = L_shl(v29, v30);
      v36 = ((v35 + 0x8000) ^ v35) > -1 || v35 < 0;
      v37 = (v35 + 0x8000) >> 16;
      if (!v36)
      {
        LOWORD(v37) = 0x7FFF;
      }

      v38 = Inv16(v37, &v258, &v257);
      if (v258 > -32754)
      {
        v39 = v258 - 15;
      }

      else
      {
        v257 = 1;
        v39 = 0x8000;
      }

      v40 = &__b[v23];
      if (v40 < __b || v40 + 1 > v265 || v40 > v40 + 1)
      {
        goto LABEL_512;
      }

      v41 = L_shl(v38 << 16, v39);
      *v40 = v41;
      v42 = v41 + v24;
      if (((v41 ^ v24) & 0x80000000) == 0 && (v42 ^ v24) < 0)
      {
        v42 = (v24 >> 31) ^ 0x7FFFFFFF;
        v257 = 1;
      }

      ++v23;
      v24 = v42;
      if (v23 == a2)
      {
        goto LABEL_54;
      }
    }

    v30 = 0;
    goto LABEL_35;
  }

  v42 = 0;
LABEL_54:
  v43 = a2;
  v44 = a2;
  if (a2)
  {
    if (a2 == -1)
    {
      v44 = 15;
    }

    else
    {
      v45 = a2 ^ (a2 >> 15);
      if (v45 >= 0x4000)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0;
        do
        {
          v45 = (2 * v45);
          ++v44;
        }

        while (v45 < 0x4000);
      }
    }
  }

  v259 = v44;
  v46 = shl(a2, v44, &v257);
  v47 = div_s(0x2000, v46);
  if (v44 > -32762)
  {
    v48 = v44 - 7;
  }

  else
  {
    v257 = 1;
    v48 = 0x8000;
  }

  v49 = shl(v47, v48, &v257);
  v50 = Mpy_32_16_1(v42, v49);
  v51 = v251;
  v244 = v251;
  v52 = (11698 * BASOP_Util_Divide1616_Scale(v43, v251, &v258, &v257) + 0x4000) >> 15;
  if ((v52 & 0x10000) != 0)
  {
    v53 = v52 | 0xFFFF0000;
  }

  else
  {
    v53 = v52;
  }

  if (v53 > -32769)
  {
    v54 = v53 << 16;
  }

  else
  {
    v257 = 1;
    v54 = 0x80000000;
  }

  v260 = -21846;
  v55 = v258;
  if (v50 <= 0x3F && v54)
  {
    v56 = 0;
    v260 = 0;
    goto LABEL_118;
  }

  v57 = v50 >> 6;
  if (!(v50 >> 6))
  {
    goto LABEL_82;
  }

  if (v57 == -1)
  {
    v58 = 31;
LABEL_83:
    v63 = L_shl(v57, v58);
    v65 = 15 - v58;
    goto LABEL_84;
  }

  v59 = v57 ^ (v50 >> 31);
  if (v59 > 0x3FFFFFFF)
  {
LABEL_82:
    v58 = 0;
    goto LABEL_83;
  }

  LOWORD(v60) = 0;
  do
  {
    v61 = v60;
    v62 = v59 >> 29;
    v59 *= 2;
    v60 = (v60 + 1);
  }

  while (!v62);
  v63 = L_shl(v57, v60);
  if (v60 <= -32753)
  {
    v257 = 1;
    v64 = BASOP_Util_Log2(v63, &v257);
    v65 = 0x7FFF;
    goto LABEL_87;
  }

  v65 = 14 - v61;
LABEL_84:
  v64 = BASOP_Util_Log2(v63, &v257);
  if (!v65)
  {
    v66 = v65;
    goto LABEL_95;
  }

  if (v65 == 0xFFFF)
  {
    v66 = 15;
LABEL_95:
    if (v66 >= 9)
    {
      v66 = 9;
    }

    LOWORD(v68) = v66 - 1;
LABEL_98:
    v69 = (16 - v66);
    v70 = 9 - v68;
    goto LABEL_99;
  }

LABEL_87:
  v67 = (v65 ^ (v65 >> 15));
  if (v67 >= 0x4000)
  {
    v66 = 0;
    goto LABEL_95;
  }

  v66 = 0;
  do
  {
    v67 = (2 * v67);
    ++v66;
  }

  while (v67 < 0x4000);
  if (v66 == 0x8000)
  {
    v257 = 1;
    LOWORD(v68) = 0x8000;
    goto LABEL_92;
  }

  if (v66 >= 9)
  {
    v66 = 9;
  }

  v68 = (v66 - 1);
  if (v68 >= -32752)
  {
    goto LABEL_98;
  }

  v257 = 1;
  if (v68 <= -32759)
  {
LABEL_92:
    v257 = 1;
    v69 = 0x7FFF;
    v70 = 0x7FFF;
    goto LABEL_99;
  }

  v70 = 10 - v66;
  v69 = 0x7FFF;
LABEL_99:
  v71 = L_shr(v64, v70);
  v72 = shl(v65, v68, &v257);
  v73 = (v71 + (v72 << 16));
  if (((v71 ^ (v72 << 16)) & 0x80000000) == 0 && ((v73 ^ v71) & 0x80000000) != 0)
  {
    v73 = (v71 >> 31) ^ 0x7FFFFFFFu;
    v257 = 1;
  }

  if (v54 && (v74 = v54 ^ (v54 >> 31), v74 <= 0x3FFFFFFF))
  {
    v75 = 0;
    do
    {
      v76 = v74 >> 29;
      v74 *= 2;
      ++v75;
    }

    while (!v76);
  }

  else
  {
    v75 = 0;
  }

  v77 = L_shl(v54, v75);
  v78 = v55 - v75;
  if (v78 < 0x8000)
  {
    if (v78 > -32769)
    {
      v79 = v78;
    }

    else
    {
      v257 = 1;
      v79 = -32768;
    }
  }

  else
  {
    v257 = 1;
    v79 = 0x7FFF;
  }

  v262 = -1431655766;
  v263 = -1431655766;
  Mpy_32_32_ss(v73, v77, &v263, &v262, &v257);
  v80 = v69 + v79;
  if (v69 + v79 < 0x8000)
  {
    if (v80 <= -32769)
    {
      v257 = 1;
      LOWORD(v80) = 0x8000;
    }
  }

  else
  {
    v257 = 1;
    LOWORD(v80) = 0x7FFF;
  }

  v56 = BASOP_util_Pow2(v263, v80, &v260, &v257);
LABEL_118:
  v81 = v56 + 0x8000;
  v83 = v56 < 0 || ((v56 + 0x8000) ^ v56) >= 0;
  v84 = HIWORD(v81);
  if (!v83)
  {
    LOWORD(v84) = 0x7FFF;
  }

  v85 = (22268 * v84 + 0x4000) >> 15;
  if ((v85 & 0x10000) != 0)
  {
    v86 = v85 | 0xFFFF0000;
  }

  else
  {
    v86 = (22268 * v84 + 0x4000) >> 15;
  }

  v87 = v86;
  if (v86 < -32768)
  {
    v87 = -32768;
  }

  v88 = v87 * v84;
  if (v88 == 0x40000000)
  {
    v89 = 0x7FFFFFFF;
  }

  else
  {
    v89 = 2 * v88;
  }

  v259 = v84;
  if (v86 < -32768 || v88 == 0x40000000)
  {
    v257 = 1;
  }

  v91 = v260;
  v92 = 2 * v260;
  if (v92 != (2 * v260))
  {
    v257 = 1;
    if (v260 > 0)
    {
      LOWORD(v92) = 0x7FFF;
    }

    else
    {
      LOWORD(v92) = 0x8000;
    }
  }

  if (v92 < 32765)
  {
    v93 = v92 + 3;
  }

  else
  {
    v257 = 1;
    v93 = 0x7FFF;
  }

  LOWORD(v262) = -21846;
  v94 = BASOP_Util_Divide1616_Scale(v251, v43, &v258, &v257);
  v95 = BASOP_util_Pow2(v94 << 16, v258, &v258, &v257);
  v96 = ((v95 + 0x8000) ^ v95) > -1 || v95 < 0;
  v97 = (v95 + 0x8000) >> 16;
  if (!v96)
  {
    v97 = 0x7FFF;
  }

  if (v97 == 0x8000)
  {
    LOWORD(v98) = 0x7FFF;
  }

  else
  {
    v98 = -v97;
  }

  v99 = BASOP_Util_Add_MantExp(4915, 0, v98, v258, &v262, &v257);
  v100 = v81 >> 16;
  if (!v83)
  {
    v100 = 0x7FFF;
  }

  v101 = (v100 * v262 + 0x4000) >> 15;
  if ((v101 & 0x10000) != 0)
  {
    v102 = v101 | 0xFFFF0000;
  }

  else
  {
    v102 = v101;
  }

  if (v102 < 0x8000)
  {
    if (v102 <= -32769)
    {
      v257 = 1;
      v102 = 0x8000;
    }
  }

  else
  {
    v257 = 1;
    v102 = 0x7FFF;
  }

  LOWORD(v262) = v102;
  v103 = v91 + v99;
  if (v91 + v99 < 0x8000)
  {
    if (v103 <= -32769)
    {
      v257 = 1;
      LOWORD(v103) = 0x8000;
    }
  }

  else
  {
    v257 = 1;
    LOWORD(v103) = 0x7FFF;
  }

  v104 = v102 * v102;
  if (v104 == 0x40000000)
  {
    v257 = 1;
    v105 = 0x7FFFFFFF;
  }

  else
  {
    v105 = 2 * v104;
  }

  v106 = 2 * v103;
  v107 = v103;
  if (v106 != (2 * v103))
  {
    v257 = 1;
    if (v103 > 0)
    {
      LOWORD(v106) = 0x7FFF;
    }

    else
    {
      LOWORD(v106) = 0x8000;
    }
  }

  v108 = BASOP_Util_Add_Mant32Exp(v105, v106, ((0x7FFFFFFFEE14 * v89) >> 15) - 9176 * (v89 >> 16), v93, &v258, &v257);
  v109 = ((v108 + 0x8000) ^ v108) > -1 || v108 < 0;
  v110 = (v108 + 0x8000) >> 16;
  if (!v109)
  {
    LOWORD(v110) = 0x7FFF;
  }

  v111 = v110;
  if (v111 <= 0)
  {
    v259 = 0;
    if (v43 < 1)
    {
      LOWORD(v115) = 0;
    }

    else
    {
      v113 = v43;
      v114 = a7;
      do
      {
        if (v114 < a7 || (v114 + 1) > a8 || v114 > v114 + 1)
        {
          goto LABEL_512;
        }

        *v114++ = 0;
        --v113;
      }

      while (v113);
      LOWORD(v115) = 0;
      v43 = v242;
      v51 = v251;
    }

    goto LABEL_226;
  }

  if (v110 == 0xFFFF)
  {
    v112 = 15;
  }

  else if (v111 >= 0x4000)
  {
    v112 = 0;
  }

  else
  {
    v112 = 0;
    LOWORD(v116) = v111;
    do
    {
      v116 = (2 * v116);
      ++v112;
    }

    while (v116 < 0x4000);
  }

  v117 = v258 - v112;
  if (v117 < 0x8000)
  {
    if (v117 <= -32769)
    {
      v257 = 1;
      v117 = 0x8000;
    }
  }

  else
  {
    v257 = 1;
    v117 = 0x7FFF;
  }

  v115 = shl(v111, v112, &v257);
  v118 = (v115 << 7) - 0x200000;
  if (v115 >= 16640 && ((v118 ^ ((v115 << 7) - 2129920)) & 0x80000000) != 0)
  {
    v257 = 1;
    v119 = v115 & 0x1FF;
    v118 = 0x7FFFFFFF;
    goto LABEL_205;
  }

  if (v115)
  {
    v119 = v115 & 0x1FF;
LABEL_205:
    v120 = HIWORD(v118);
    v121 = &SqrtTable[2 * SHIWORD(v118)];
    if (v121 < SqrtTable)
    {
      goto LABEL_512;
    }

    if (v121 + 1 > SqrtDiffTable)
    {
      goto LABEL_512;
    }

    if (v121 > v121 + 1)
    {
      goto LABEL_512;
    }

    v122 = &SqrtDiffTable[v120];
    if (v122 < SqrtDiffTable || v122 + 1 > ISqrtTable || v122 > v122 + 1)
    {
      goto LABEL_512;
    }

    v115 = mac_r(*v121, *v122, v119, &v257);
  }

  if (v117)
  {
    v123 = (23170 * v115 + 0x4000) >> 15;
    v115 = (v123 & 0x10000) != 0 ? v123 | 0xFFFF0000 : (23170 * v115 + 0x4000) >> 15;
    if (v115 <= -32769)
    {
      v257 = 1;
      LOWORD(v115) = 0x8000;
    }
  }

  v124 = ((v117 << 16 >> 2) + 0x4000) >> 15;
  if ((v124 & 0x10000) != 0)
  {
    v125 = v124 | 0xFFFF0000;
  }

  else
  {
    v125 = ((v117 << 16 >> 2) + 0x4000) >> 15;
  }

  if (v125 < 0x8000)
  {
    if (v125 <= -32769)
    {
      v257 = 1;
      LOWORD(v125) = 0x8000;
    }
  }

  else
  {
    v257 = 1;
    LOWORD(v125) = 0x7FFF;
  }

  v258 = v125;
  v259 = v115;
LABEL_226:
  LOWORD(v263) = -21846;
  if (v102 == 0x8000)
  {
    LOWORD(v126) = 0x7FFF;
  }

  else
  {
    v126 = -v102;
  }

  v127 = BASOP_Util_Add_MantExp(v126, v107, v115, v258, &v263, &v257);
  v128 = ((v89 + 0x8000) ^ v89) > -1 || v89 < 0;
  v129 = (v89 + 0x8000) >> 16;
  if (!v128)
  {
    LOWORD(v129) = 0x7FFF;
  }

  v130 = BASOP_Util_Divide1616_Scale(v263, v129, &v259, &v257);
  v131 = v127 + v259;
  if (v131 < 0x8000)
  {
    if (v131 > -32769)
    {
      v131 = v131;
    }

    else
    {
      v257 = 1;
      v131 = -32768;
    }
  }

  else
  {
    v257 = 1;
    v131 = 0x7FFF;
  }

  LOWORD(v132) = v259;
  v133 = v131 - v93;
  if (v133 < 0x8000)
  {
    if (v133 >= -32768 && v133 > -32768)
    {
      v134 = v133 - 1;
    }

    else
    {
      v257 = 1;
      v134 = 0x8000;
    }
  }

  else
  {
    v257 = 1;
    v134 = 32766;
  }

  v135 = shl(v130, v134, &v257);
  v136 = v135;
  v261 = 0;
  if (v135 <= 1)
  {
    v135 = 1;
  }

  LOWORD(v137) = Inv16(v135, &v261, &v257);
  v246 = 0;
  v247 = 0;
  v243 = 0;
  if (a6)
  {
    v138 = 1;
  }

  else
  {
    v138 = 2;
  }

  v240 = 0;
  v241 = v138;
  v139 = v43;
  v140 = (17203 * v251 + 0x4000) >> 15;
  if ((v140 & 0x10000) != 0)
  {
    v141 = v140 | 0xFFFF0000;
  }

  else
  {
    v141 = (17203 * v251 + 0x4000) >> 15;
  }

  v239 = v141;
  v238 = ((31130 * (v51 & 0x7FFF) + 0x4000) >> 15);
  v142 = 0;
  do
  {
    v245 = v142;
    v252 = v136;
    if (v43 >= 1)
    {
      v143 = 0;
      LOWORD(v144) = 0;
      v145 = (1147 * v137 + 0x4000) >> 15;
      if ((v145 & 0x10000) != 0)
      {
        v146 = v145 | 0xFFFF0000;
      }

      else
      {
        v146 = (1147 * v137 + 0x4000) >> 15;
      }

      v147 = 0x7FFF;
      v248 = v261;
      v250 = v146;
      while (1)
      {
        v148 = &__b[v143];
        v149 = v148 + 1;
        if (v148 < __b || v149 > v265 || v148 >= v149)
        {
          goto LABEL_512;
        }

        v152 = Mpy_32_16_1(*v148, v136);
        if (v152 < 0 && ((v152 - 5243) ^ v152) < 0)
        {
          v257 = 1;
        }

        else if (v152 > 5243)
        {
          v158 = HIWORD(v152);
          if (v152 <= 16711680)
          {
            v159 = 44536 * v158 + ((22268 * v152) >> 15);
            v160 = v159 - 0x10000000;
            v161 = 8 * v159;
            v162 = (v159 >> 31) ^ 0x7FFFFFFF;
            if (v160 >> 29 == 7)
            {
              v162 = v161;
            }

            v163 = v162 + 9830;
            if ((v162 & 0x80000000) == 0 && (v163 ^ v162) < 0)
            {
              v257 = 1;
              v163 = 0x7FFFFFFF;
            }

            v164 = &a3[v143];
            if (v164 < a3 || (v164 + 1) > a4 || v164 > v164 + 1)
            {
              goto LABEL_512;
            }

            v165 = *v164;
            if (v250 > -32769)
            {
              v166 = v250;
            }

            else
            {
              v257 = 1;
              v166 = 0x8000;
            }

            v172 = Mpy_32_16_1(v165, v166);
            v173 = L_shl(v172, v248);
            v174 = v173 + v163;
            if (((v173 ^ v163) & 0x80000000) == 0 && (v174 ^ v163) < 0)
            {
              v257 = 1;
              v174 = (v163 >> 31) ^ 0x7FFFFFFF;
              goto LABEL_320;
            }

            if (v174)
            {
              if (v174 == -1)
              {
                v175 = 31;
                goto LABEL_325;
              }

LABEL_320:
              v176 = v174 ^ (v174 >> 31);
              if (v176 <= 0x3FFFFFFF)
              {
                v175 = 0;
                do
                {
                  v177 = v176 >> 29;
                  v176 *= 2;
                  ++v175;
                }

                while (!v177);
LABEL_325:
                v178 = L_shl(v174, v175);
                v179 = ((v178 + 0x8000) ^ v178) > -1 || v178 < 0;
                v180 = (v178 + 0x8000) >> 16;
                if (!v179)
                {
                  v180 = 0x7FFF;
                }

                v181 = (v180 * v147 + 0x4000) >> 15;
                if ((v181 & 0x10000) != 0)
                {
                  v132 = v181 | 0xFFFF0000;
                }

                else
                {
                  v132 = (v180 * v147 + 0x4000) >> 15;
                }

                if (v132 < 0x8000)
                {
                  if (v132 <= -32769)
                  {
                    v257 = 1;
                    LOWORD(v132) = 0x8000;
                  }
                }

                else
                {
                  v257 = 1;
                  LOWORD(v132) = 0x7FFF;
                }

                if (v175 > -32753)
                {
                  v182 = (15 - v175);
                }

                else
                {
                  v257 = 1;
                  v182 = 0x7FFF;
                }

                v183 = v182 + v144;
                if (v183 < 0x8000)
                {
                  if (v183 > -32769)
                  {
                    v184 = v183;
                  }

                  else
                  {
                    v257 = 1;
                    v184 = -32768;
                  }
                }

                else
                {
                  v257 = 1;
                  v184 = 0x7FFF;
                }

                v185 = v132;
                if (v132)
                {
                  if (v132 == 0xFFFF)
                  {
                    LOWORD(v132) = 15;
                  }

                  else
                  {
                    v186 = (v132 ^ (v185 >> 15));
                    if (v186 >= 0x4000)
                    {
                      LOWORD(v132) = 0;
                    }

                    else
                    {
                      LOWORD(v132) = 0;
                      do
                      {
                        v186 = (2 * v186);
                        LOWORD(v132) = v132 + 1;
                      }

                      while (v186 < 0x4000);
                    }
                  }
                }

                v147 = shl(v185, v132, &v257);
                v144 = v184 - v132;
                goto LABEL_300;
              }
            }

            v175 = 0;
            goto LABEL_325;
          }

          v167 = 62984 * v158 + ((31492 * v152) >> 15);
          if (!v167 || (v168 = v167 ^ (v167 >> 31), v168 > 0x3FFFFFFF))
          {
            LOWORD(v157) = 17;
            goto LABEL_298;
          }

          LOWORD(v169) = 0;
          do
          {
            v170 = v169;
            v171 = v168 >> 29;
            v168 *= 2;
            v169 = (v169 + 1);
          }

          while (!v171);
          if (v169 > -32751)
          {
            LOWORD(v157) = 16 - v170;
            goto LABEL_298;
          }

          goto LABEL_282;
        }

        v153 = (16751 * v147 + 0x4000) >> 15;
        if ((v153 & 0x10000) != 0)
        {
          v154 = v153 | 0xFFFF0000;
        }

        else
        {
          v154 = (16751 * v147 + 0x4000) >> 15;
        }

        if (v154 > -32769)
        {
          if (!v154)
          {
            LOWORD(v132) = v154;
LABEL_296:
            v147 = shl(v154, v132, &v257);
LABEL_297:
            LOWORD(v157) = 1 - v132;
LABEL_298:
            v157 = v157;
            goto LABEL_299;
          }

          if (v154 == 0xFFFF)
          {
            LOWORD(v132) = 15;
            goto LABEL_296;
          }
        }

        else
        {
          v257 = 1;
          LOWORD(v154) = 0x8000;
        }

        v155 = v154;
        v156 = (v154 ^ (v155 >> 15));
        if (v156 >= 0x4000)
        {
          LOWORD(v132) = 0;
          goto LABEL_296;
        }

        LOWORD(v132) = 0;
        do
        {
          v156 = (2 * v156);
          v132 = (v132 + 1);
        }

        while (v156 < 0x4000);
        v147 = shl(v155, v132, &v257);
        if (v132 > -32767)
        {
          goto LABEL_297;
        }

LABEL_282:
        v257 = 1;
        v157 = 0x7FFF;
LABEL_299:
        v144 = v157 + v144;
LABEL_300:
        if (v144 < 0x8000)
        {
          if (v144 <= -32769)
          {
            v257 = 1;
            v144 = 0x8000;
          }
        }

        else
        {
          v257 = 1;
          v144 = 0x7FFF;
        }

        if (++v143 == v139)
        {
          v259 = v132;
          goto LABEL_355;
        }
      }
    }

    v144 = 0;
LABEL_355:
    v187 = v144 - v244;
    if (v187 < 0x8000)
    {
      if (v187 <= -32769)
      {
        v257 = 1;
        v43 = v242;
LABEL_364:
        if (v243 < 1)
        {
          v195 = v239;
          if (v239 <= -32769)
          {
            v257 = 1;
            v195 = 0x8000;
          }

          v196 = (BASOP_Util_Divide1616_Scale(v195, v144, &v259, &v257) * v136 + 0x4000) >> 15;
          if ((v196 & 0x10000) != 0)
          {
            v197 = v196 | 0xFFFF0000;
          }

          else
          {
            v197 = v196;
          }

          if (v197 < 0x8000)
          {
            if (v197 <= -32769)
            {
              v257 = 1;
              LOWORD(v197) = 0x8000;
            }
          }

          else
          {
            v257 = 1;
            LOWORD(v197) = 0x7FFF;
          }

          LOWORD(v132) = v259;
          v205 = 0x7FFF;
          if (v259 == 0x7FFF)
          {
            v257 = 1;
          }

          else
          {
            v205 = v259 + 1;
          }

          v136 = shl(v197, v205, &v257);
        }

        else
        {
          v189 = v240 - v244;
          if (v189 < 0x8000)
          {
            if (v189 <= -32769)
            {
              v257 = 1;
              LOWORD(v189) = 0x8000;
            }
          }

          else
          {
            v257 = 1;
            LOWORD(v189) = 0x7FFF;
          }

          v200 = v240 - v144;
          if (v200 < 0x8000)
          {
            if (v200 <= -32769)
            {
              v257 = 1;
              LOWORD(v200) = 0x8000;
            }
          }

          else
          {
            v257 = 1;
            LOWORD(v200) = 0x7FFF;
          }

          v201 = div_s(v189, v200);
          v202 = v136 - v243;
          if (v202 > -32769)
          {
            v202 = v202;
          }

          else
          {
            v257 = 1;
            v202 = -32768;
          }

          v203 = (v202 * v201 + 0x4000) >> 15;
          if ((v203 & 0x10000) != 0)
          {
            v204 = v203 | 0xFFFF0000;
          }

          else
          {
            v204 = (v202 * v201 + 0x4000) >> 15;
          }

          if (v204 < 0x8000)
          {
            if (v204 > -32769)
            {
              v204 = v204;
            }

            else
            {
              v257 = 1;
              v204 = -32768;
            }
          }

          else
          {
            v257 = 1;
            v204 = 0x7FFF;
          }

          v136 = v204 + v243;
          if (v136 >= 0x8000)
          {
            v257 = 1;
            v136 = 0x7FFF;
LABEL_432:
            v261 = 0;
LABEL_435:
            v137 = Inv16(v136, &v261, &v257);
            goto LABEL_436;
          }
        }

        goto LABEL_434;
      }

      v43 = v242;
      if (v187 <= 0)
      {
        goto LABEL_364;
      }

      if (v247 <= 0)
      {
LABEL_367:
        if (v244 < 1 || v144 <= 0)
        {
          if (v43 < 1)
          {
            v190 = 0;
          }

          else
          {
            v198 = a7;
            v199 = v139;
            do
            {
              if (v198 < a7 || (v198 + 1) > a8 || v198 > v198 + 1)
              {
                goto LABEL_512;
              }

              *v198++ = 0;
              --v199;
            }

            while (v199);
            v190 = 0;
            v43 = v242;
          }
        }

        else
        {
          v190 = div_s(v238, v144);
        }

        v206 = (v190 * v136 + 0x4000) >> 15;
        if ((v206 & 0x10000) != 0)
        {
          v136 = v206 | 0xFFFF0000;
        }

        else
        {
          v136 = (v190 * v136 + 0x4000) >> 15;
        }

        goto LABEL_427;
      }
    }

    else
    {
      v257 = 1;
      v43 = v242;
      if (v247 <= 0)
      {
        goto LABEL_367;
      }

      v257 = 1;
      LOWORD(v187) = 0x7FFF;
    }

    v188 = v144 - v246;
    if (v188 < 0x8000)
    {
      if (v188 <= -32769)
      {
        v257 = 1;
        LOWORD(v188) = 0x8000;
      }
    }

    else
    {
      v257 = 1;
      LOWORD(v188) = 0x7FFF;
    }

    v191 = div_s(v187, v188);
    v192 = v247 - v136;
    if (v192 < 0x8000)
    {
      v192 = v192;
    }

    else
    {
      v257 = 1;
      v192 = 0x7FFF;
    }

    v193 = (v192 * v191 + 0x4000) >> 15;
    if ((v193 & 0x10000) != 0)
    {
      v194 = v193 | 0xFFFF0000;
    }

    else
    {
      v194 = (v192 * v191 + 0x4000) >> 15;
    }

    if (v194 < 0x8000)
    {
      if (v194 > -32769)
      {
        v194 = v194;
      }

      else
      {
        v257 = 1;
        v194 = -32768;
      }
    }

    else
    {
      v257 = 1;
      v194 = 0x7FFF;
    }

    v136 = v194 + v136;
LABEL_427:
    if (v136 >= 0x8000)
    {
      v136 = 0x7FFF;
LABEL_431:
      v257 = 1;
      v240 = v144;
      v243 = v252;
      v144 = v246;
      v252 = v247;
      goto LABEL_432;
    }

    if (v136 <= -32769)
    {
      v136 = 0x8000;
      goto LABEL_431;
    }

    v240 = v144;
    v243 = v252;
    v144 = v246;
    v252 = v247;
LABEL_434:
    v261 = 0;
    if (v136)
    {
      goto LABEL_435;
    }

    if (v43 < 1)
    {
      v137 = 0;
    }

    else
    {
      v207 = a7;
      v208 = v139;
      do
      {
        if (v207 < a7 || (v207 + 1) > a8 || v207 > v207 + 1)
        {
          goto LABEL_512;
        }

        *v207++ = 0;
        --v208;
      }

      while (v208);
      v137 = 0;
      v43 = v242;
    }

LABEL_436:
    v246 = v144;
    v247 = v252;
    v142 = v245 + 1;
  }

  while (v241 > (v245 + 1));
  if (a4 < a3 || a1 < 0 || (a4 - a3) >> 2 < a1)
  {
    goto LABEL_512;
  }

  if (a1 < 1)
  {
    v217 = 32;
    LOWORD(v220) = 32;
    v218 = a9;
    goto LABEL_478;
  }

  v209 = 0;
  v210 = 0;
  v211 = a1;
  v212 = a3;
  do
  {
    v214 = *v212++;
    v213 = v214;
    if (v209 >= v214)
    {
      v215 = v213;
    }

    else
    {
      v215 = v209;
    }

    if (v210 <= v213)
    {
      v216 = v213;
    }

    else
    {
      v216 = v210;
    }

    if (v213 < 0)
    {
      v209 = v215;
    }

    else
    {
      v210 = v216;
    }

    --v211;
  }

  while (v211);
  if (!v210)
  {
    v217 = 32;
    v218 = a9;
    goto LABEL_468;
  }

  if (v210 > 0x3FFFFFFF)
  {
    v217 = 0;
    v218 = a9;
    if (v209)
    {
      goto LABEL_469;
    }

    goto LABEL_476;
  }

  v217 = 0;
  v218 = a9;
  do
  {
    v219 = v210 >> 29;
    v210 *= 2;
    ++v217;
  }

  while (!v219);
LABEL_468:
  if (!v209)
  {
LABEL_476:
    LOWORD(v220) = 32;
    goto LABEL_478;
  }

LABEL_469:
  if (v209 == -1)
  {
    LOWORD(v220) = 31;
  }

  else
  {
    v221 = v209 ^ (v209 >> 31);
    if (v221 > 0x3FFFFFFF)
    {
      LOWORD(v220) = 0;
    }

    else
    {
      v220 = 0;
      do
      {
        v222 = v221 >> 29;
        v221 *= 2;
        ++v220;
      }

      while (!v222);
    }
  }

LABEL_478:
  if (v217 >= v220)
  {
    LOBYTE(v217) = v220;
  }

  v223 = v217 & 0x1F;
  if (v261 < 32753)
  {
    v224 = (v261 + 15);
  }

  else
  {
    v257 = 1;
    v224 = 0x7FFF;
  }

  v225 = v224 - v223;
  if (v225 <= -32769)
  {
    *v218 = 0x8000;
    goto LABEL_486;
  }

  *v218 = v225;
  if (v225 > -32753)
  {
    v226 = 15 - v225;
  }

  else
  {
LABEL_486:
    v257 = 1;
    v226 = 0x7FFF;
  }

  result = L_shl(1265000, v226);
  if (a1)
  {
    v228 = result;
    v229 = a1;
    v230 = a3;
    for (i = a7; v230 >= a3 && (v230 + 1) <= a4 && v230 <= v230 + 1 && i >= a7 && (i + 1) <= a8 && i <= i + 1; ++i)
    {
      v232 = *v230++;
      v233 = L_shl(v232, v223);
      result = Mpy_32_16_1(v233, v137);
      if (result >= v228)
      {
        v234 = v228;
      }

      else
      {
        v234 = result;
      }

      v235 = ((v234 + 0x8000) ^ v234) > -1 || v234 < 0;
      v236 = (v234 + 0x8000) >> 16;
      if (!v235)
      {
        LOWORD(v236) = 0x7FFF;
      }

      *i = v236;
      if (!--v229)
      {
        return result;
      }
    }

LABEL_512:
    __break(0x5519u);
  }

  return result;
}