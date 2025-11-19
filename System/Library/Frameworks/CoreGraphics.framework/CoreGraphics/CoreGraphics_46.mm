uint64_t Wf_sample_CMYKF(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 32);
  v15 = *(result + 40);
  v16 = *(result + 24);
  v17 = *(result + 28);
  v18 = *(result + 176);
  v19 = *(result + 72);
  v95 = *(result + 80);
  v96 = *(result + 88);
  v21 = *(result + 112);
  v20 = *(result + 120);
  v93 = *(result + 188);
  v22 = *(result + 152) - 8;
  v23 = *(result + 144) - 1;
  v24 = *(result + 260) - 1;
  v25 = *(result + 256);
  v26 = v15 + (v24 * v17) + 4 * (v25 - 1);
  v27 = v14 + (v24 * v16) + 4 * (4 * v25) - 16;
  v94 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v19)
    {
      if (a3 <= v96)
      {
        v36 = (a3 >> 22) & 0x3C0;
        v37 = 0x3FFFFFFF;
        v38 = a3;
      }

      else
      {
        v32 = *(result + 216);
        v33 = *(result + 224) + v96;
        v34 = v33 - a3 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_39;
        }

        if (v34 >= v32)
        {
          LODWORD(v35) = 0x3FFFFFFF;
        }

        else
        {
          v35 = (*(result + 232) * v34) >> 32;
        }

        v37 = v35 | v93;
        v38 = v33 - 0x1000000;
        v36 = 448;
      }
    }

    else
    {
      v28 = *(result + 216);
      v29 = v19 - *(result + 224);
      v30 = a3 - v29 + (v28 >> 1);
      if (v30 < 1)
      {
        goto LABEL_39;
      }

      if (v30 >= v28)
      {
        LODWORD(v31) = 0x3FFFFFFF;
      }

      else
      {
        v31 = (*(result + 232) * v30) >> 32;
      }

      v37 = v31 | v93;
      v38 = v29 + 0x1000000;
      v36 = 512;
    }

    if (a2 >= v94)
    {
      break;
    }

    v39 = *(result + 192);
    v40 = v94 - *(result + 200);
    v41 = a2 - v40 + (v39 >> 1);
    if (v41 >= 1)
    {
      if (v41 < v39)
      {
        v37 = ((v37 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v93;
      }

      v42 = v40 + 0x1000000;
      v43 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v21;
    a3 += v20;
    v22 += 8;
    *++v23 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v95)
  {
    v43 = (a2 >> 26) & 0x3C;
    v42 = a2;
    goto LABEL_26;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v95;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_39;
  }

  if (v46 < v44)
  {
    v37 = ((v37 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v93;
  }

  v42 = v45 - 0x1000000;
  v43 = 28;
LABEL_26:
  if (v37 < 0x400000)
  {
    goto LABEL_39;
  }

  v47 = v38 >> 32;
  v48 = v14 + SHIDWORD(v38) * v16;
  v49 = (v42 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v48 + 4 * v49;
  v51 = *(result + 32);
  if (v27 >= v50)
  {
    v52 = (v48 + 4 * v49);
  }

  else
  {
    v52 = v27;
  }

  if (v52 < v51)
  {
    v52 = *(result + 32);
  }

  if (v15)
  {
    v53 = v15 + v47 * v17 + v49;
    v54 = *(result + 40);
    if (v26 >= v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v26;
    }

    if (v55 >= v54)
    {
      v54 = v55;
    }

    v56 = COERCE_FLOAT(bswap32(*v54));
  }

  else
  {
    v53 = 0;
    v56 = 1.0;
  }

  v57 = vrev32q_s8(*v52);
  if (!v18)
  {
    goto LABEL_44;
  }

  v58 = *(v18 + (v43 | v36));
LABEL_67:
  v69 = v58 & 0xF;
  v70 = HIBYTE(v58) & 3;
  if (v69 == 1)
  {
    v89 = (v50 + SBYTE1(v58) * v16);
    if (v27 < v89)
    {
      v89 = v27;
    }

    if (v89 < v51)
    {
      v89 = v51;
    }

    v90 = vrev32q_s8(*v89);
    v91 = 1.0;
    if (v15)
    {
      v92 = (v53 + SBYTE1(v58) * v17);
      if (v26 < v92)
      {
        v92 = v26;
      }

      if (v92 < *(result + 40))
      {
        v92 = *(result + 40);
      }

      v91 = COERCE_FLOAT(bswap32(*v92));
    }

    LODWORD(a12) = interpolate_cmykaf[5 * v70 + 4];
    v57 = vmlaq_n_f32(vmlsq_lane_f32(v57, v57, *&a12, 0), v90, *&a12);
    v56 = (v56 - (v56 * *&a12)) + (v91 * *&a12);
LABEL_44:
    v59 = v95;
    goto LABEL_45;
  }

  if (v69 != 2)
  {
    if (v69 == 3)
    {
      v71 = HIWORD(v58) << 56;
      v72 = v50 + (v71 >> 52);
      if (v27 >= v72)
      {
        v73 = (v50 + (v71 >> 52));
      }

      else
      {
        v73 = v27;
      }

      if (v73 < v51)
      {
        v73 = v51;
      }

      v74 = (v72 + SBYTE1(v58) * v16);
      if (v27 < v74)
      {
        v74 = v27;
      }

      if (v74 < v51)
      {
        v74 = v51;
      }

      v75 = vrev32q_s8(*v73);
      v76 = vrev32q_s8(*v74);
      v77 = 1.0;
      v78 = 1.0;
      if (v15)
      {
        v79 = v53 + (v71 >> 54);
        v80 = *(result + 40);
        if (v26 >= v79)
        {
          v81 = (v53 + (v71 >> 54));
        }

        else
        {
          v81 = v26;
        }

        if (v81 < v80)
        {
          v81 = *(result + 40);
        }

        v78 = COERCE_FLOAT(bswap32(*v81));
        v82 = (v79 + SBYTE1(v58) * v17);
        if (v26 < v82)
        {
          v82 = v26;
        }

        if (v82 < v80)
        {
          v82 = *(result + 40);
        }

        v77 = COERCE_FLOAT(bswap32(*v82));
      }

      v12.i32[0] = interpolate_cmykaf[5 * v70 + 4];
      v13.i32[0] = interpolate_cmykaf[5 * ((v58 >> 28) & 3) + 4];
      v83 = vmlaq_n_f32(vmlsq_lane_f32(v57, v57, v12, 0), v75, v12.f32[0]);
      v57 = vmlaq_n_f32(vmlsq_lane_f32(v83, v83, v13, 0), vmlaq_n_f32(vmlsq_lane_f32(v75, v75, v12, 0), v76, v12.f32[0]), v13.f32[0]);
      v56 = (((v56 - (v56 * v12.f32[0])) + (v78 * v12.f32[0])) - (((v56 - (v56 * v12.f32[0])) + (v78 * v12.f32[0])) * v13.f32[0])) + (((v78 - (v78 * v12.f32[0])) + (v77 * v12.f32[0])) * v13.f32[0]);
    }

    goto LABEL_44;
  }

  v84 = HIWORD(v58) << 56;
  v85 = (v50 + (v84 >> 52));
  if (v27 < v85)
  {
    v85 = v27;
  }

  if (v85 < v51)
  {
    v85 = v51;
  }

  v86 = vrev32q_s8(*v85);
  v87 = 1.0;
  v59 = v95;
  if (v15)
  {
    v88 = (v53 + (v84 >> 54));
    if (v26 < v88)
    {
      v88 = v26;
    }

    if (v88 < *(result + 40))
    {
      v88 = *(result + 40);
    }

    v87 = COERCE_FLOAT(bswap32(*v88));
  }

  LODWORD(a12) = interpolate_cmykaf[5 * ((v58 >> 28) & 3) + 4];
  v57 = vmlaq_n_f32(vmlsq_lane_f32(v57, v57, *&a12, 0), v86, *&a12);
  v56 = (v56 - (v56 * *&a12)) + (v87 * *&a12);
LABEL_45:
  v60 = 0;
  v61 = v37 >> 22;
  a2 += v21;
  v62 = v59 - a2;
  v63 = (v22 + 12);
  a3 += v20;
  v64 = v96 - a3;
  while (1)
  {
    *(v63 - 1) = ((((v56 - v57.f32[1]) - v57.f32[3]) * 0.59) + (((v56 - v57.f32[0]) - v57.f32[3]) * 0.3)) + (((v56 - v57.f32[2]) - v57.f32[3]) * 0.11);
    *v63 = v56;
    *(v23 + 1 + v60) = v61;
    if (a4 - 1 == v60)
    {
      return result;
    }

    if ((v64 | v62 | (a3 - v19) | (a2 - v94)) < 0)
    {
      v23 += v60 + 1;
      v22 = (v63 - 1);
      a4 += ~v60;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v65 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v50 = v14 + SHIDWORD(a3) * v16 + 4 * v65;
    v51 = *(result + 32);
    if (v27 >= v50)
    {
      v66 = (v14 + SHIDWORD(a3) * v16 + 4 * v65);
    }

    else
    {
      v66 = v27;
    }

    if (v66 < v51)
    {
      v66 = *(result + 32);
    }

    if (v15)
    {
      v53 = v15 + SHIDWORD(a3) * v17 + v65;
      v67 = *(result + 40);
      if (v26 >= v53)
      {
        v68 = (v15 + SHIDWORD(a3) * v17 + v65);
      }

      else
      {
        v68 = v26;
      }

      if (v68 >= v67)
      {
        v67 = v68;
      }

      v56 = COERCE_FLOAT(bswap32(*v67));
    }

    else
    {
      v56 = 1.0;
    }

    v57 = vrev32q_s8(*v66);
    if (v18)
    {
      v58 = *(v18 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v58 & 0xF) != 0)
      {
        v23 += v60 + 1;
        v22 = (v63 - 1);
        a4 += ~v60;
        v37 = -1;
        goto LABEL_67;
      }
    }

    ++v60;
    v62 -= v21;
    v63 += 2;
    a3 += v20;
    v64 -= v20;
    a2 += v21;
    LOBYTE(v61) = -1;
  }
}

uint64_t Wf_sample_CMYKf(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 32);
  v15 = *(result + 40);
  v16 = *(result + 24);
  v17 = *(result + 28);
  v18 = *(result + 176);
  v19 = *(result + 72);
  v94 = *(result + 80);
  v95 = *(result + 88);
  v21 = *(result + 112);
  v20 = *(result + 120);
  v92 = *(result + 188);
  v22 = *(result + 152) - 8;
  v23 = *(result + 144) - 1;
  v24 = *(result + 260) - 1;
  v25 = *(result + 256);
  v26 = v15 + (v24 * v17) + 4 * (v25 - 1);
  v27 = v14 + (v24 * v16) + 4 * (4 * v25) - 16;
  v93 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v19)
    {
      if (a3 <= v95)
      {
        v36 = (a3 >> 22) & 0x3C0;
        v37 = 0x3FFFFFFF;
        v38 = a3;
      }

      else
      {
        v32 = *(result + 216);
        v33 = *(result + 224) + v95;
        v34 = v33 - a3 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_39;
        }

        if (v34 >= v32)
        {
          LODWORD(v35) = 0x3FFFFFFF;
        }

        else
        {
          v35 = (*(result + 232) * v34) >> 32;
        }

        v37 = v35 | v92;
        v38 = v33 - 0x1000000;
        v36 = 448;
      }
    }

    else
    {
      v28 = *(result + 216);
      v29 = v19 - *(result + 224);
      v30 = a3 - v29 + (v28 >> 1);
      if (v30 < 1)
      {
        goto LABEL_39;
      }

      if (v30 >= v28)
      {
        LODWORD(v31) = 0x3FFFFFFF;
      }

      else
      {
        v31 = (*(result + 232) * v30) >> 32;
      }

      v37 = v31 | v92;
      v38 = v29 + 0x1000000;
      v36 = 512;
    }

    if (a2 >= v93)
    {
      break;
    }

    v39 = *(result + 192);
    v40 = v93 - *(result + 200);
    v41 = a2 - v40 + (v39 >> 1);
    if (v41 >= 1)
    {
      if (v41 < v39)
      {
        v37 = ((v37 >> 15) * (((*(result + 208) * v41) >> 32) >> 15)) | v92;
      }

      v42 = v40 + 0x1000000;
      v43 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v21;
    a3 += v20;
    v22 += 8;
    *++v23 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v94)
  {
    v43 = (a2 >> 26) & 0x3C;
    v42 = a2;
    goto LABEL_26;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v94;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_39;
  }

  if (v46 < v44)
  {
    v37 = ((v37 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v92;
  }

  v42 = v45 - 0x1000000;
  v43 = 28;
LABEL_26:
  if (v37 < 0x400000)
  {
    goto LABEL_39;
  }

  v47 = v38 >> 32;
  v48 = v14 + SHIDWORD(v38) * v16;
  v49 = (v42 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v48 + 4 * v49;
  v51 = *(result + 32);
  if (v27 >= v50)
  {
    v52 = (v48 + 4 * v49);
  }

  else
  {
    v52 = v27;
  }

  if (v52 < v51)
  {
    v52 = *(result + 32);
  }

  if (v15)
  {
    v53 = v15 + v47 * v17 + v49;
    v54 = *(result + 40);
    if (v26 >= v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v26;
    }

    if (v55 >= v54)
    {
      v54 = v55;
    }

    v56 = *v54;
  }

  else
  {
    v53 = 0;
    v56 = 1.0;
  }

  v57 = *v52;
  if (!v18)
  {
    goto LABEL_44;
  }

  v58 = *(v18 + (v43 | v36));
LABEL_67:
  v69 = v58 & 0xF;
  v70 = HIBYTE(v58) & 3;
  if (v69 == 1)
  {
    v88 = (v50 + SBYTE1(v58) * v16);
    if (v27 < v88)
    {
      v88 = v27;
    }

    if (v88 < v51)
    {
      v88 = v51;
    }

    v89 = *v88;
    v90 = 1.0;
    if (v15)
    {
      v91 = (v53 + SBYTE1(v58) * v17);
      if (v26 < v91)
      {
        v91 = v26;
      }

      if (v91 < *(result + 40))
      {
        v91 = *(result + 40);
      }

      v90 = *v91;
    }

    LODWORD(a12) = interpolate_cmykaf[5 * v70 + 4];
    v57 = vmlaq_n_f32(vmlsq_lane_f32(v57, v57, *&a12, 0), v89, *&a12);
    v56 = (v56 - (v56 * *&a12)) + (v90 * *&a12);
LABEL_44:
    v59 = v94;
    goto LABEL_45;
  }

  if (v69 != 2)
  {
    if (v69 == 3)
    {
      v71 = HIWORD(v58) << 56;
      v72 = v50 + (v71 >> 52);
      if (v27 >= v72)
      {
        v73 = (v50 + (v71 >> 52));
      }

      else
      {
        v73 = v27;
      }

      if (v73 < v51)
      {
        v73 = v51;
      }

      v74 = (v72 + SBYTE1(v58) * v16);
      if (v27 < v74)
      {
        v74 = v27;
      }

      if (v74 < v51)
      {
        v74 = v51;
      }

      v75 = *v73;
      v76 = *v74;
      v77 = 1.0;
      v78 = 1.0;
      if (v15)
      {
        v79 = v53 + (v71 >> 54);
        v80 = *(result + 40);
        if (v26 >= v79)
        {
          v81 = (v53 + (v71 >> 54));
        }

        else
        {
          v81 = v26;
        }

        if (v81 < v80)
        {
          v81 = *(result + 40);
        }

        v78 = *v81;
        v82 = (v79 + SBYTE1(v58) * v17);
        if (v26 < v82)
        {
          v82 = v26;
        }

        if (v82 < v80)
        {
          v82 = *(result + 40);
        }

        v77 = *v82;
      }

      v12.i32[0] = interpolate_cmykaf[5 * v70 + 4];
      v13.i32[0] = interpolate_cmykaf[5 * ((v58 >> 28) & 3) + 4];
      v83 = vmlaq_n_f32(vmlsq_lane_f32(v57, v57, v12, 0), v75, v12.f32[0]);
      v57 = vmlaq_n_f32(vmlsq_lane_f32(v83, v83, v13, 0), vmlaq_n_f32(vmlsq_lane_f32(v75, v75, v12, 0), v76, v12.f32[0]), v13.f32[0]);
      v56 = (((v56 - (v56 * v12.f32[0])) + (v78 * v12.f32[0])) - (((v56 - (v56 * v12.f32[0])) + (v78 * v12.f32[0])) * v13.f32[0])) + (((v78 - (v78 * v12.f32[0])) + (v77 * v12.f32[0])) * v13.f32[0]);
    }

    goto LABEL_44;
  }

  v84 = HIWORD(v58) << 56;
  v85 = (v50 + (v84 >> 52));
  if (v27 < v85)
  {
    v85 = v27;
  }

  if (v85 < v51)
  {
    v85 = v51;
  }

  v86 = 1.0;
  v59 = v94;
  if (v15)
  {
    v87 = (v53 + (v84 >> 54));
    if (v26 < v87)
    {
      v87 = v26;
    }

    if (v87 < *(result + 40))
    {
      v87 = *(result + 40);
    }

    v86 = *v87;
  }

  LODWORD(a12) = interpolate_cmykaf[5 * ((v58 >> 28) & 3) + 4];
  v57 = vmlaq_n_f32(vmlsq_lane_f32(v57, v57, *&a12, 0), *v85, *&a12);
  v56 = (v56 - (v56 * *&a12)) + (v86 * *&a12);
LABEL_45:
  v60 = 0;
  v61 = v37 >> 22;
  a2 += v21;
  v62 = v59 - a2;
  v63 = (v22 + 12);
  a3 += v20;
  v64 = v95 - a3;
  while (1)
  {
    *(v63 - 1) = ((((v56 - v57.f32[1]) - v57.f32[3]) * 0.59) + (((v56 - v57.f32[0]) - v57.f32[3]) * 0.3)) + (((v56 - v57.f32[2]) - v57.f32[3]) * 0.11);
    *v63 = v56;
    *(v23 + 1 + v60) = v61;
    if (a4 - 1 == v60)
    {
      return result;
    }

    if ((v64 | v62 | (a3 - v19) | (a2 - v93)) < 0)
    {
      v23 += v60 + 1;
      v22 = (v63 - 1);
      a4 += ~v60;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v65 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v50 = v14 + SHIDWORD(a3) * v16 + 4 * v65;
    v51 = *(result + 32);
    if (v27 >= v50)
    {
      v66 = (v14 + SHIDWORD(a3) * v16 + 4 * v65);
    }

    else
    {
      v66 = v27;
    }

    if (v66 < v51)
    {
      v66 = *(result + 32);
    }

    if (v15)
    {
      v53 = v15 + SHIDWORD(a3) * v17 + v65;
      v67 = *(result + 40);
      if (v26 >= v53)
      {
        v68 = (v15 + SHIDWORD(a3) * v17 + v65);
      }

      else
      {
        v68 = v26;
      }

      if (v68 >= v67)
      {
        v67 = v68;
      }

      v56 = *v67;
    }

    else
    {
      v56 = 1.0;
    }

    v57 = *v66;
    if (v18)
    {
      v58 = *(v18 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v58 & 0xF) != 0)
      {
        v23 += v60 + 1;
        v22 = (v63 - 1);
        a4 += ~v60;
        v37 = -1;
        goto LABEL_67;
      }
    }

    ++v60;
    v62 -= v21;
    v63 += 2;
    a3 += v20;
    v64 -= v20;
    a2 += v21;
    LOBYTE(v61) = -1;
  }
}

_DWORD *Wf_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  v11 = *v9;
  v10 = v9[1];
  if (!a2 || a3 <= 7)
  {
    a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL);
    if (!a2)
    {
      return a2;
    }
  }

  if (v11 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = v11;
  }

  if (v10 < a6)
  {
    v12 = v10;
  }

  if (a5)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  switch(v13)
  {
    case 1:
      v14 = *a5;
      goto LABEL_18;
    case 4:
      v14 = (v10 - (((*a5 * v9[2]) + (a5[1] * v9[3])) + (a5[2] * v9[4]))) - a5[3];
      goto LABEL_18;
    case 3:
      v14 = ((*a5 * v9[2]) + (a5[1] * v9[3])) + (a5[2] * v9[4]);
LABEL_18:
      v11 = v12 * v14;
      break;
  }

  *a2 = xmmword_18439CA20;
  a2[6] = 0;
  *(a2 + 2) = 1;
  *(a2 + 12) = v11;
  *(a2 + 13) = v12;
  v15 = (a2 + 13);
  if (v12 >= v10)
  {
    v15 = 0;
  }

  *(a2 + 4) = a2 + 12;
  *(a2 + 5) = v15;
  return a2;
}

uint64_t Wf_mark_inner(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v705 = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 96);
  v8 = *(v3 + 48);
  v9 = *(v2 + 16 * *v3 + 8 * (v7 == 0) + 4 * (v8 == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v3;
  v12 = *(v3 + 4);
  v13 = v12 - 1;
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v3 + 8);
  v15 = (v14 - 1);
  if (v14 < 1)
  {
    return 0;
  }

  v16 = *(v3 + 136);
  if ((*v3 & 0xFF0000) == 0x50000 || !v16)
  {
    v18 = *v3 & 0xFF00;
    v654 = *(v2 + 16 * *v3 + 8 * (v7 == 0) + 4 * (v8 == 0));
    v652 = v3;
    if (v18 == 1024)
    {
      v704[0] = *(v3 + 4);
      v694[0] = v14;
      v19 = 1.0;
      if (v7)
      {
        v19 = *v7;
      }

      v20 = *(v3 + 40);
      v21 = *(v3 + 28) >> 2;
      v22 = *(v3 + 12);
      v23 = *(v3 + 16);
      if (v8)
      {
        v687 = *(v3 + 32) >> 2;
        v685 = v8 + 4 * v687 * v23 + 4 * v22;
        v681 = 1;
      }

      else
      {
        v685 = 0;
        v687 = 0;
        v681 = 0;
      }

      v6.i32[0] = **(v3 + 88);
      *v5.i32 = 1.0 - v19;
      v35 = v20 + 4 * v23 * v21 + 4 * v22;
      v689 = v5;
      v691 = v6;
      v679 = *(v3 + 28) >> 2;
      v683 = v35;
      if (v16)
      {
        shape_enum_clip_alloc(v2, v3, v16, 1, 1, 1, *(v3 + 104), *(v3 + 108), v12, v14);
        v34 = v36;
        v37 = v685;
        v38 = v687;
        if (v36)
        {
          goto LABEL_1329;
        }

        return 1;
      }

      v34 = 0;
      if (v8)
      {
        v44 = v12;
      }

      else
      {
        v44 = 0;
      }

      v37 = v685;
      v38 = v687 - v44;
      v45 = (v20 + 4 * v23 * v21 + 4 * v22);
      v46 = v12;
LABEL_972:
      v35 = v21 - v46;
      v502 = v12;
      switch(v9)
      {
        case 0:
          v503 = v21;
          v504 = v35 + v12;
          v505 = v694[0];
          v506 = v12;
          v507 = v694[0] - 1;
          v508 = &v45->i8[4 * ((v504 * v507) & (v504 >> 63))];
          if (v504 < 0)
          {
            v504 = -v504;
          }

          CGBlt_fillBytes(4 * v506, v694[0], 0, v508, 4 * v504);
          if (v8)
          {
            v509 = v38 + v506;
            v37 += 4 * ((v509 * v507) & (v509 >> 63));
            if (v509 >= 0)
            {
              v38 += v506;
            }

            else
            {
              v38 = -v509;
            }

            CGBlt_fillBytes(4 * v506, v505, 0, v37, 4 * v38);
          }

          v21 = v503;
          goto LABEL_1326;
        case 1:
          v574 = v35 + v12;
          if (v574 < 0)
          {
            v45 = (v45 + 4 * v574 * (v694[0] - 1));
            v574 = -v574;
          }

          v575 = 0;
          v576 = *(v652 + 88);
          if (v576)
          {
            v575 = *v576;
          }

          v577 = v694[0];
          CGBlt_fillBytes(4 * v12, v694[0], v575, v45, 4 * v574);
          if (v8)
          {
            v578 = *(v652 + 96);
            if (!v578)
            {
              v578 = &_CMYK_float_alpha;
            }

            v37 += 4 * (((v38 + v12) * (v577 - 1)) & ((v38 + v12) >> 63));
            if ((v38 + v12) >= 0)
            {
              v38 += v12;
            }

            else
            {
              v38 = -(v38 + v12);
            }

            CGBlt_fillBytes(4 * v12, v577, *v578, v37, 4 * v38);
          }

          LODWORD(v9) = v654;
          goto LABEL_1326;
        case 2:
          v552 = v694[0];
          v553 = v12 >> 2;
          v554 = 4 * v681;
          v555 = 16 * v681;
          if (v8)
          {
            v556 = v553 + 1;
            do
            {
              if (v12 < 4)
              {
                v558 = v12;
              }

              else
              {
                v557 = v556;
                do
                {
                  v45->f32[0] = *v6.i32 + (v45->f32[0] * *v5.i32);
                  *v37 = v19 + (*v37 * *v5.i32);
                  v45->f32[1] = *v6.i32 + (v45->f32[1] * *v5.i32);
                  *(v37 + 4) = v19 + (*(v37 + 4) * *v5.i32);
                  v45->f32[2] = *v6.i32 + (v45->f32[2] * *v5.i32);
                  *(v37 + 8) = v19 + (*(v37 + 8) * *v5.i32);
                  v45->f32[3] = *v6.i32 + (v45->f32[3] * *v5.i32);
                  *(v37 + 12) = v19 + (*(v37 + 12) * *v5.i32);
                  ++v45;
                  --v557;
                  v37 += v555;
                }

                while (v557 > 1);
                v558 = v12 & 3;
              }

              if (v558 >= 1)
              {
                v559 = v558 + 1;
                do
                {
                  v45->f32[0] = *v6.i32 + (v45->f32[0] * *v5.i32);
                  v45 = (v45 + 4);
                  *v37 = v19 + (*v37 * *v5.i32);
                  v37 += v554;
                  --v559;
                }

                while (v559 > 1);
              }

              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v552;
            }

            while (v552);
          }

          else
          {
            v646 = vdupq_lane_s32(v5, 0);
            v647 = vdupq_lane_s32(v6, 0);
            v648 = v553 + 1;
            do
            {
              if (v12 < 4)
              {
                v650 = v12;
              }

              else
              {
                v649 = v648;
                do
                {
                  *v45 = vmlaq_f32(v647, v646, *v45);
                  ++v45;
                  --v649;
                  v37 += v555;
                }

                while (v649 > 1);
                v650 = v12 & 3;
              }

              if (v650 >= 1)
              {
                v651 = v650 + 1;
                do
                {
                  v45->f32[0] = *v6.i32 + (v45->f32[0] * *v5.i32);
                  v45 = (v45 + 4);
                  v37 += v554;
                  --v651;
                }

                while (v651 > 1);
              }

              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v552;
            }

            while (v552);
          }

          goto LABEL_1325;
        case 3:
          v567 = v694[0];
          do
          {
            v568 = v12;
            do
            {
              v569 = *v37;
              if (*v37 <= 0.0)
              {
                *v37 = 0;
                v45->i32[0] = 0;
              }

              else if (v569 >= 1.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v45->f32[0] = *v6.i32 * v569;
                *v37 = v19 * v569;
              }

              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v568;
            }

            while (v568);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v567;
          }

          while (v567);
          goto LABEL_1325;
        case 4:
          v530 = v694[0];
          do
          {
            v531 = v12;
            do
            {
              v532 = 1.0 - *v37;
              if (v532 <= 0.0)
              {
                *v37 = 0;
                v45->i32[0] = 0;
              }

              else if (v532 >= 1.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v45->f32[0] = *v6.i32 * v532;
                *v37 = v19 * v532;
              }

              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v531;
            }

            while (v531);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v530;
          }

          while (v530);
          goto LABEL_1325;
        case 5:
          v591 = v694[0];
          do
          {
            v592 = v12;
            do
            {
              v593 = *v37;
              v45->f32[0] = (*v5.i32 * v45->f32[0]) + (*v6.i32 * *v37);
              v45 = (v45 + 4);
              *v37 = (*v5.i32 * v593) + (v19 * v593);
              v37 += 4 * v681;
              --v592;
            }

            while (v592);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v591;
          }

          while (v591);
          goto LABEL_1325;
        case 6:
          v605 = v694[0];
          while (1)
          {
            v606 = v12;
            do
            {
              v607 = *v37;
              v608 = 1.0 - *v37;
              if (v608 >= 1.0)
              {
                v45->i32[0] = v6.i32[0];
                v609 = v19;
              }

              else
              {
                if (v608 <= 0.0)
                {
                  goto LABEL_1225;
                }

                v45->f32[0] = v45->f32[0] + (*v6.i32 * v608);
                v609 = v607 + (v19 * v608);
              }

              *v37 = v609;
LABEL_1225:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v606;
            }

            while (v606);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v605)
            {
              goto LABEL_1325;
            }
          }

        case 7:
          v570 = v694[0];
          v571 = 4 * v681;
          if (v8)
          {
            do
            {
              v572 = v12;
              do
              {
                v45->f32[0] = v19 * v45->f32[0];
                v45 = (v45 + 4);
                *v37 = v19 * *v37;
                v37 += v571;
                --v572;
              }

              while (v572);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v570;
            }

            while (v570);
          }

          else
          {
            do
            {
              v573 = v12;
              do
              {
                v45->f32[0] = v19 * v45->f32[0];
                v45 = (v45 + 4);
                v37 += v571;
                --v573;
              }

              while (v573);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v570;
            }

            while (v570);
          }

          goto LABEL_1325;
        case 8:
          v622 = v694[0];
          v623 = 4 * v681;
          if (v8)
          {
            do
            {
              v624 = v12;
              do
              {
                v45->f32[0] = *v5.i32 * v45->f32[0];
                v45 = (v45 + 4);
                *v37 = *v5.i32 * *v37;
                v37 += v623;
                --v624;
              }

              while (v624);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v622;
            }

            while (v622);
          }

          else
          {
            do
            {
              v625 = v12;
              do
              {
                v45->f32[0] = *v5.i32 * v45->f32[0];
                v45 = (v45 + 4);
                v37 += v623;
                --v625;
              }

              while (v625);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v622;
            }

            while (v622);
          }

          goto LABEL_1325;
        case 9:
          v538 = v694[0];
          do
          {
            v539 = v12;
            do
            {
              v540 = *v37;
              v541 = 1.0 - *v37;
              v45->f32[0] = (v19 * v45->f32[0]) + (*v6.i32 * v541);
              v45 = (v45 + 4);
              *v37 = (v19 * v540) + (v19 * v541);
              v37 += 4 * v681;
              --v539;
            }

            while (v539);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v538;
          }

          while (v538);
          goto LABEL_1325;
        case 10:
          v618 = v694[0];
          do
          {
            v619 = v12;
            do
            {
              v620 = *v37;
              v621 = 1.0 - *v37;
              v45->f32[0] = (*v5.i32 * v45->f32[0]) + (*v6.i32 * v621);
              v45 = (v45 + 4);
              *v37 = (*v5.i32 * v620) + (v19 * v621);
              v37 += 4 * v681;
              --v619;
            }

            while (v619);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v618;
          }

          while (v618);
          goto LABEL_1325;
        case 11:
          v523 = v19 - *v6.i32;
          v524 = v694[0];
          v525 = 4 * v681;
          if (v8)
          {
            do
            {
              v526 = v12;
              do
              {
                v527 = v19 + *v37;
                v528 = v523 + (*v37 - v45->f32[0]);
                if (v527 > 1.0)
                {
                  v527 = 1.0;
                }

                *v37 = v527;
                v45->f32[0] = v527 - v528;
                v45 = (v45 + 4);
                v37 += v525;
                --v526;
              }

              while (v526);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v524;
            }

            while (v524);
          }

          else
          {
            do
            {
              v529 = v12;
              do
              {
                v45->f32[0] = 1.0 - (v523 + (1.0 - v45->f32[0]));
                v45 = (v45 + 4);
                v37 += v525;
                --v529;
              }

              while (v529);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v524;
            }

            while (v524);
          }

          goto LABEL_1325;
        case 12:
          v533 = v694[0];
          v534 = 4 * v681;
          if (v8)
          {
            do
            {
              v535 = v12;
              do
              {
                v536 = v19 + *v37;
                if (v536 > 1.0)
                {
                  v536 = 1.0;
                }

                v45->f32[0] = *v6.i32 + v45->f32[0];
                v45 = (v45 + 4);
                *v37 = v536;
                v37 += v534;
                --v535;
              }

              while (v535);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v533;
            }

            while (v533);
          }

          else
          {
            do
            {
              v537 = v12;
              do
              {
                v45->f32[0] = *v6.i32 + v45->f32[0];
                v45 = (v45 + 4);
                v37 += v534;
                --v537;
              }

              while (v537);
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v533;
            }

            while (v533);
          }

          goto LABEL_1325;
        case 13:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v601 = v694[0];
          while (1)
          {
            v602 = v12;
            do
            {
              if (v8)
              {
                v603 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1215;
                }
              }

              else
              {
                v603 = 1.0;
              }

              v604 = (*v6.i32 * v45->f32[0]) + (v45->f32[0] * *v5.i32);
              if (v19 == 1.0)
              {
                v604 = *v6.i32 * v45->f32[0];
              }

              if (v603 != 1.0)
              {
                v604 = v604 + (*v6.i32 * (1.0 - v603));
              }

              v45->f32[0] = v604;
              if (v8)
              {
                *v37 = (v19 + v603) - (v603 * v19);
              }

LABEL_1215:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v602;
            }

            while (v602);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v601)
            {
              goto LABEL_1325;
            }
          }

        case 14:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v520 = v694[0];
          do
          {
            v521 = v12;
            do
            {
              if (v8)
              {
                v522 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                }

                else
                {
                  v45->f32[0] = v45->f32[0] + (*v6.i32 * (1.0 - v45->f32[0]));
                  *v37 = (v19 + v522) - (v522 * v19);
                }
              }

              else
              {
                v45->f32[0] = v45->f32[0] + (*v6.i32 * (1.0 - v45->f32[0]));
              }

              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v521;
            }

            while (v521);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v520;
          }

          while (v520);
          goto LABEL_1325;
        case 15:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v560 = v694[0];
          v561 = *v6.i32 + *v6.i32;
          v562 = *v6.i32 * 0.0;
          while (1)
          {
            if (v8)
            {
              if (*v37 <= 0.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v563 = PDAoverlayPDA(v45->f32[0], *v37, *v6.i32, v19);
                v5.i32[0] = v689.i32[0];
                v6.i32[0] = v691.i32[0];
                v45->f32[0] = v563;
                *v37 = v564;
              }
            }

            else
            {
              v565 = (*v6.i32 * v45->f32[0]) + (*v6.i32 * v45->f32[0]);
              v566 = (v562 + (v45->f32[0] * *v5.i32)) + v565;
              if (v45->f32[0] >= 0.5)
              {
                v566 = ((v561 + (v45->f32[0] * (v19 + 1.0))) - v565) - v19;
              }

              v45->f32[0] = v566;
            }

            v45 = (v45 + 4);
            v37 += 4 * v681;
            LODWORD(v12) = v12 - 1;
            if (!v12)
            {
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v560;
              LODWORD(v12) = v502;
              if (!v560)
              {
                break;
              }
            }
          }

          goto LABEL_1287;
        case 16:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v515 = v694[0];
          while (1)
          {
            v516 = v12;
            do
            {
              if (v8)
              {
                v517 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1013;
                }
              }

              else
              {
                v517 = 1.0;
              }

              v518 = v19 * v45->f32[0];
              if ((*v6.i32 * v517) < v518)
              {
                v518 = *v6.i32 * v517;
              }

              v519 = v518 + (v45->f32[0] * *v5.i32);
              if (v19 == 1.0)
              {
                v519 = v518;
              }

              if (v517 != 1.0)
              {
                v519 = v519 + (*v6.i32 * (1.0 - v517));
              }

              v45->f32[0] = v519;
              if (v8)
              {
                *v37 = (v19 + v517) - (v517 * v19);
              }

LABEL_1013:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v516;
            }

            while (v516);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v515)
            {
              goto LABEL_1325;
            }
          }

        case 17:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v579 = v694[0];
          while (1)
          {
            v580 = v12;
            do
            {
              if (v8)
              {
                v581 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1168;
                }
              }

              else
              {
                v581 = 1.0;
              }

              v582 = v19 * v45->f32[0];
              if ((*v6.i32 * v581) > v582)
              {
                v582 = *v6.i32 * v581;
              }

              v583 = v582 + (v45->f32[0] * *v5.i32);
              if (v19 == 1.0)
              {
                v583 = v582;
              }

              if (v581 != 1.0)
              {
                v583 = v583 + (*v6.i32 * (1.0 - v581));
              }

              v45->f32[0] = v583;
              if (v8)
              {
                *v37 = (v19 + v581) - (v581 * v19);
              }

LABEL_1168:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v580;
            }

            while (v580);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v579)
            {
              goto LABEL_1325;
            }
          }

        case 18:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v610 = v694[0];
          v611 = v19 - *v6.i32;
          while (1)
          {
            if (v8)
            {
              if (*v37 <= 0.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v612 = PDAcolordodgePDA(v45->f32[0], *v37, *v6.i32, v19);
                v5.i32[0] = v689.i32[0];
                v6.i32[0] = v691.i32[0];
                v45->f32[0] = v612;
                *v37 = v613;
              }
            }

            else
            {
              v614 = v45->f32[0];
              if (v45->f32[0] == 0.0)
              {
                v615 = 0.0;
              }

              else
              {
                v615 = 1.0;
              }

              if (v45->f32[0] != 0.0 && *v6.i32 != v19)
              {
                v615 = ((v19 * v19) * v614) / v611;
              }

              v617 = v615 + (v614 * *v5.i32);
              if (v19 == 1.0)
              {
                v617 = v615;
              }

              if (v617 > ((v19 + 1.0) - v19))
              {
                v617 = (v19 + 1.0) - v19;
              }

              v45->f32[0] = v617;
            }

            v45 = (v45 + 4);
            v37 += 4 * v681;
            LODWORD(v12) = v12 - 1;
            if (!v12)
            {
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v610;
              LODWORD(v12) = v502;
              if (!v610)
              {
                break;
              }
            }
          }

          goto LABEL_1287;
        case 19:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v633 = v694[0];
          while (1)
          {
            if (v8)
            {
              if (*v37 <= 0.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v634 = PDAcolorburnPDA(v45->f32[0], *v37, *v6.i32, v19);
                v6.i32[0] = v691.i32[0];
                v45->i32[0] = LODWORD(v634);
                *v37 = v635;
              }
            }

            else
            {
              v636 = PDAcolorburnPDA(v45->f32[0], 1.0, *v6.i32, v19);
              v6.i32[0] = v691.i32[0];
              v45->i32[0] = LODWORD(v636);
            }

            v45 = (v45 + 4);
            v37 += 4 * v681;
            LODWORD(v12) = v12 - 1;
            if (!v12)
            {
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v633;
              LODWORD(v12) = v502;
              if (!v633)
              {
                break;
              }
            }
          }

          goto LABEL_1287;
        case 20:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v584 = v694[0];
          v585 = (*v6.i32 + *v6.i32) - v19;
          while (1)
          {
            if (v8)
            {
              if (*v37 <= 0.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v586 = PDAsoftlightPDA(v45->f32[0], *v37, *v6.i32, v19);
                v5.i32[0] = v689.i32[0];
                v6.i32[0] = v691.i32[0];
                v45->f32[0] = v586;
                *v37 = v587;
              }
            }

            else
            {
              v588 = v45->f32[0];
              v589 = ((*v6.i32 * v45->f32[0]) + (*v6.i32 * v45->f32[0])) - (v585 * (v588 * v588));
              if (v589 < 0.0)
              {
                v589 = 0.0;
              }

              v590 = v589 + (v588 * *v5.i32);
              if (v19 == 1.0)
              {
                v590 = v589;
              }

              v45->f32[0] = v590;
            }

            v45 = (v45 + 4);
            v37 += 4 * v681;
            LODWORD(v12) = v12 - 1;
            if (!v12)
            {
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v584;
              LODWORD(v12) = v502;
              if (!v584)
              {
                break;
              }
            }
          }

          goto LABEL_1287;
        case 21:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v594 = v694[0];
          v595 = *v6.i32 * 0.0;
          v596 = *v6.i32 + *v6.i32;
          while (1)
          {
            if (v8)
            {
              if (*v37 <= 0.0)
              {
                v45->i32[0] = v6.i32[0];
                *v37 = v19;
              }

              else
              {
                v597 = PDAhardlightPDA(v45->f32[0], *v37, *v6.i32, v19);
                v5.i32[0] = v689.i32[0];
                v6.i32[0] = v691.i32[0];
                v45->f32[0] = v597;
                *v37 = v598;
              }
            }

            else
            {
              v599 = (*v6.i32 * v45->f32[0]) + (*v6.i32 * v45->f32[0]);
              v600 = ((v596 + (v45->f32[0] * (v19 + 1.0))) - v599) - v19;
              if (*v6.i32 <= (v19 * 0.5))
              {
                v600 = (v595 + (v45->f32[0] * *v5.i32)) + v599;
              }

              v45->f32[0] = v600;
            }

            v45 = (v45 + 4);
            v37 += 4 * v681;
            LODWORD(v12) = v12 - 1;
            if (!v12)
            {
              v45 = (v45 + 4 * v35);
              v37 += 4 * v38;
              --v594;
              LODWORD(v12) = v502;
              if (!v594)
              {
                break;
              }
            }
          }

LABEL_1287:
          v694[0] = 0;
          LODWORD(v9) = v654;
          v21 = v679;
          goto LABEL_1326;
        case 22:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v626 = v694[0];
          while (1)
          {
            v627 = v12;
            do
            {
              if (v8)
              {
                v628 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1275;
                }
              }

              else
              {
                v628 = 1.0;
              }

              v629 = v19 * v45->f32[0];
              v630 = (*v6.i32 + v45->f32[0]) - v629;
              v631 = v629 - (*v6.i32 * v628);
              v632 = v630 - (*v6.i32 * v628);
              if (v631 < 0.0)
              {
                v631 = -v631;
              }

              v45->f32[0] = v632 + v631;
              if (v8)
              {
                *v37 = (v19 + v628) - (v628 * v19);
              }

LABEL_1275:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v627;
            }

            while (v627);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v626)
            {
              goto LABEL_1325;
            }
          }

        case 23:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v637 = v694[0];
          do
          {
            v638 = v12;
            do
            {
              if (v8)
              {
                v639 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                }

                else
                {
                  v45->f32[0] = (*v6.i32 + v45->f32[0]) + ((*v6.i32 * v45->f32[0]) * -2.0);
                  *v37 = (v19 + v639) - (v639 * v19);
                }
              }

              else
              {
                v45->f32[0] = (*v6.i32 + v45->f32[0]) + ((*v6.i32 * v45->f32[0]) * -2.0);
              }

              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v638;
            }

            while (v638);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            --v637;
          }

          while (v637);
          goto LABEL_1325;
        case 24:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v547 = v694[0];
          while (1)
          {
            v548 = v12;
            do
            {
              if (v8)
              {
                v549 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1095;
                }
              }

              else
              {
                v549 = 1.0;
              }

              v550 = v45->f32[0];
              if (v19 == 1.0)
              {
                v551 = 0.0;
              }

              else
              {
                v550 = v19 * v45->f32[0];
                v551 = v45->f32[0] - v550;
              }

              if (v549 != 1.0)
              {
                v551 = (*v6.i32 + v551) - (*v6.i32 * v549);
              }

              v45->f32[0] = v550 + v551;
              if (v8)
              {
                *v37 = (v19 + v549) - (v19 * v549);
              }

LABEL_1095:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v548;
            }

            while (v548);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v547)
            {
              goto LABEL_1325;
            }
          }

        case 25:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v542 = v694[0];
          while (1)
          {
            v543 = v12;
            do
            {
              if (v8)
              {
                v544 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1078;
                }
              }

              else
              {
                v544 = 1.0;
              }

              v545 = v45->f32[0];
              if (v19 == 1.0)
              {
                v546 = 0.0;
              }

              else
              {
                v545 = v19 * v45->f32[0];
                v546 = v45->f32[0] - v545;
              }

              if (v544 != 1.0)
              {
                v546 = (*v6.i32 + v546) - (*v6.i32 * v544);
              }

              v45->f32[0] = v545 + v546;
              if (v8)
              {
                *v37 = (v19 + v544) - (v19 * v544);
              }

LABEL_1078:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v543;
            }

            while (v543);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v542)
            {
              goto LABEL_1325;
            }
          }

        case 26:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v640 = v694[0];
          while (1)
          {
            v641 = v12;
            do
            {
              if (v8)
              {
                v642 = *v37;
                if (*v37 <= 0.0)
                {
                  v45->i32[0] = v6.i32[0];
                  *v37 = v19;
                  goto LABEL_1312;
                }
              }

              else
              {
                v642 = 1.0;
              }

              v643 = v45->f32[0];
              v644 = *v6.i32 - (*v6.i32 * v642);
              if (v642 == 1.0)
              {
                v644 = 0.0;
              }

              v645 = (v643 + v644) - (v19 * v643);
              if (v19 != 1.0)
              {
                v643 = v19 * v643;
                v644 = v645;
              }

              v45->f32[0] = v643 + v644;
              if (v8)
              {
                *v37 = (v19 + v642) - (v19 * v642);
              }

LABEL_1312:
              v45 = (v45 + 4);
              v37 += 4 * v681;
              --v641;
            }

            while (v641);
            v45 = (v45 + 4 * v35);
            v37 += 4 * v38;
            if (!--v640)
            {
              goto LABEL_1325;
            }
          }

        case 27:
          if (v19 <= 0.0)
          {
            goto LABEL_1326;
          }

          v510 = v694[0];
          break;
        default:
          goto LABEL_1327;
      }

LABEL_983:
      v511 = v12;
      while (v8)
      {
        v512 = *v37;
        if (*v37 > 0.0)
        {
          goto LABEL_988;
        }

        v45->i32[0] = v6.i32[0];
        *v37 = v19;
LABEL_995:
        v45 = (v45 + 4);
        v37 += 4 * v681;
        if (!--v511)
        {
          v45 = (v45 + 4 * v35);
          v37 += 4 * v38;
          if (!--v510)
          {
LABEL_1325:
            v694[0] = 0;
LABEL_1326:
            v35 = v683;
LABEL_1327:
            if (!v34)
            {
              return 1;
            }

            v693 = 0;
LABEL_1329:
            if (!shape_enum_clip_next(v34, &v693 + 1, &v693, v704, v694))
            {
              goto LABEL_65;
            }

            v45 = (v35 + 4 * v21 * v693 + 4 * SHIDWORD(v693));
            v46 = v704[0];
            if (v8)
            {
              v37 = v685 + 4 * v687 * v693 + 4 * SHIDWORD(v693);
              v38 = v687 - v704[0];
            }

            LODWORD(v12) = v704[0];
            v5 = v689;
            v6 = v691;
            goto LABEL_972;
          }

          goto LABEL_983;
        }
      }

      v512 = 1.0;
LABEL_988:
      v513 = v45->f32[0] - (v19 * v45->f32[0]);
      if (v19 == 1.0)
      {
        v513 = 0.0;
      }

      v514 = *v6.i32 * v512;
      if (v512 == 1.0)
      {
        v514 = *v6.i32;
      }

      else
      {
        v513 = (*v6.i32 + v513) - (*v6.i32 * v512);
      }

      v45->f32[0] = v514 + v513;
      if (v8)
      {
        *v37 = (v19 + v512) - (v19 * v512);
      }

      goto LABEL_995;
    }

    v704[0] = *(v3 + 4);
    v694[0] = v14;
    v24 = *(v3 + 12);
    v25 = *(v3 + 16);
    v26 = *(v3 + 28) >> 2;
    if (v8)
    {
      v658 = *(v3 + 32) >> 2;
      v659 = v8 + 4 * v658 * v25 + 4 * v24;
      v27 = 0xFFFFFFFFLL;
    }

    else
    {
      v658 = 0;
      v659 = 0;
      v27 = 0;
    }

    v39 = *(v3 + 88);
    v40 = *(v3 + 28) >> 2;
    v657 = *(v3 + 40) + 4 * v25 * v26 + 4 * v24;
    v41 = *(v3 + 56);
    v42 = *(v3 + 60);
    v686 = *(v3 + 76) >> 2;
    if (v18 == 256)
    {
      if (v7)
      {
        v684 = *(v3 + 80) >> 2;
        v7 += v684 * v42 + v41;
        v43 = 0xFFFFFFFFLL;
      }

      else
      {
        v684 = 0;
        v43 = 0;
      }

      v39 += v42 * v686 + v41;
      v665 = *(v3 + 28) >> 2;
      if (v686 == v26)
      {
        v53 = (v657 - v39) >> 2;
        if (v53 >= 1)
        {
          if (v53 <= v12)
          {
            v657 += 4 * v13;
            v39 += v13;
            v659 += 4 * (v27 & v13);
            v54 = -1;
            v686 = *(v3 + 28) >> 2;
            v7 += v43 & v13;
            goto LABEL_48;
          }

          if (v657 <= &v39[v26 * v15 - 1 + v12])
          {
            v657 += 4 * v26 * v15;
            v72 = v659 + 4 * v658 * v15;
            v658 = -v658;
            v659 = v72;
            v7 += v684 * v15;
            v27 &= 1u;
            v684 = -v684;
            v686 = -v26;
            v43 &= 1u;
            v54 = 1;
            v39 += v26 * v15;
            v665 = -v26;
            goto LABEL_48;
          }
        }
      }

      v27 &= 1u;
      v43 &= 1u;
      v54 = 1;
LABEL_48:
      v655 = *(v3 + 56);
      v656 = *(v3 + 60);
      if (v16)
      {
        v55 = v7;
        v690 = v43;
        v692 = v27;
        v673 = 0;
        v682 = 0;
        v56 = -1;
        v664 = v686;
        v661 = v684;
        goto LABEL_53;
      }

      v61 = v54 * v12;
      v688 = v658 - v27 * v12;
      v62 = -1;
      v63 = v684;
      v660 = v54;
      v661 = v684;
      v64 = v686;
      v65 = v686;
      v66 = v9;
      v40 = v665;
LABEL_61:
      v662 = 0;
      v663 = v39;
      v673 = 0;
      v686 = v64 - v61;
      v682 = 0;
      v684 = v63 - v43 * v12;
      v70 = v7;
      v59 = v7;
      v60 = v659;
      v71 = v657;
      goto LABEL_66;
    }

    v664 = *(v3 + 64);
    v661 = *(v3 + 68);
    if (v7)
    {
      v684 = *(v3 + 80) >> 2;
      v43 = 1;
    }

    else
    {
      v684 = 0;
      v43 = 0;
    }

    v682 = &v39[v686 * v661];
    v27 &= 1u;
    if (v16)
    {
      v665 = *(v3 + 28) >> 2;
      v55 = v7;
      v655 = *(v3 + 56);
      v656 = *(v3 + 60);
      v690 = v43;
      v692 = v27;
      v54 = 1;
      v673 = *(v3 + 88);
      v56 = v673;
LABEL_53:
      v660 = v54;
      shape_enum_clip_alloc(v26, v3, v16, v54, v665, 1, *(v3 + 104), *(v3 + 108), v12, v14);
      v58 = v57;
      v7 = v55;
      v672 = v55;
      v59 = v55;
      v60 = v659;
      v688 = v658;
      if (v57)
      {
        goto LABEL_925;
      }

      return 1;
    }

    v688 = v658 - (v27 * v12);
    if (!v39)
    {
      v655 = *(v3 + 56);
      v656 = *(v3 + 60);
      v62 = 0;
      v660 = 1;
      v61 = v12;
      v63 = v684;
      v64 = *(v3 + 76) >> 2;
      v66 = v9;
      v65 = *(v3 + 64);
      goto LABEL_61;
    }

    v65 = *(v3 + 64);
    v67 = v42 % v661;
    v656 = v42 % v661;
    v663 = *(v3 + 88);
    v68 = &v39[v686 * v67];
    v69 = v41 % v664;
    v39 = &v68[v69];
    v62 = &v68[v664];
    v66 = v9;
    v655 = v69;
    v673 = v39;
    v662 = 0;
    if (v7)
    {
      v70 = &v7[v684 * v67 + v69];
      v660 = 1;
      v43 = 1;
      v59 = v70;
    }

    else
    {
      v70 = 0;
      v59 = 0;
      v660 = 1;
    }

    v60 = v659;
    v71 = v657;
    v61 = v12;
LABEL_66:
    v692 = v27;
    v690 = v43;
    v664 = v65;
    v665 = v40;
    v74 = v40 - v61;
    v671 = v40 - v61;
    switch(v66)
    {
      case 0:
        v653 = v7;
        v672 = v70;
        v9 = v66;
        v56 = v62;
        v75 = v74 - v12;
        v76 = &v71[-v12 + 1];
        if (v660 >= 0)
        {
          v76 = v71;
          v75 = v74 + v12;
        }

        v77 = v694[0];
        v78 = v694[0] - 1;
        v79 = (v76 + 4 * ((v75 * v78) & (v75 >> 63)));
        if (v75 < 0)
        {
          v75 = -v75;
        }

        CGBlt_fillBytes(4 * v12, v694[0], 0, v79, 4 * v75);
        if (v692)
        {
          if (v660 < 0)
          {
            v80 = v688 - v12;
            v60 = &v60[-4 * v12 + 4];
          }

          else
          {
            v80 = v688 + v12;
          }

          v60 += 4 * ((v80 * v78) & (v80 >> 63));
          if (v80 < 0)
          {
            v80 = -v80;
          }

          v688 = v80;
          CGBlt_fillBytes(4 * v12, v77, 0, v60, 4 * v80);
        }

        goto LABEL_885;
      case 1:
        v229 = *(v11 + 1);
        if (v229 == 2)
        {
          v116 = v673;
          if (v12 >= 8)
          {
            v448 = 4 * v65;
            if ((4 * v664) <= 0x40)
            {
              LODWORD(v4) = v448;
              v449 = vcnt_s8(*&v4);
              v449.i16[0] = vaddlv_u8(v449);
              if (v449.i32[0] <= 1u)
              {
                v653 = v7;
                v672 = v70;
                v9 = v66;
                v56 = v62;
                v450 = v694[0];
                CGSFillDRAM64(v71, 4 * (v12 + v74), 4 * v12, v694[0], v663, 4 * v686, v448, v661, 4 * v655, v656);
                if (v692)
                {
                  if (v690)
                  {
                    CGSFillDRAM64(v60, 4 * (v12 + v688), 4 * v12, v450, v7, 4 * v684, 4 * v664, v661, 4 * v655, v656);
                  }

                  else
                  {
                    CGBlt_fillBytes(4 * v12, v450, 1065353216, v60, 4 * (v12 + v688));
                  }

LABEL_677:
                  v7 = v653;
                  goto LABEL_922;
                }

                goto LABEL_885;
              }
            }
          }
        }

        else
        {
          v116 = v673;
          if (v229 == 1)
          {
            v672 = v70;
            v9 = v66;
            v230 = v12;
            v653 = v7;
            v56 = v62;
            if (v660 < 0)
            {
              v231 = v686 - v12;
              v482 = 4 * v12 - 4;
              v39 = (v39 - v482);
              v232 = v671 - v12;
              v71 = (v71 - v482);
            }

            else
            {
              v231 = v686 + v12;
              v232 = v671 + v12;
            }

            v483 = v12;
            v484 = v694[0] - 1;
            v485 = &v39[(v231 * v484) & (v231 >> 63)];
            if (v231 >= 0)
            {
              v486 = v231;
            }

            else
            {
              v486 = -v231;
            }

            v487 = &v71[(v232 * v484) & (v232 >> 63)];
            if (v232 >= 0)
            {
              LODWORD(v488) = v232;
            }

            else
            {
              v488 = -v232;
            }

            v489 = v483;
            v490 = 4 * v483;
            v686 = v486;
            v680 = v694[0];
            CGBlt_copyBytes(4 * v483, v694[0], v485, v487, 4 * v486, 4 * v488);
            if (v692)
            {
              v491 = v490;
              v39 = v663;
              if (v690)
              {
                v492 = v684 - v230;
                v493 = 4 * v489 - 4;
                v494 = &v59[-v493];
                v495 = v688 - v230;
                v496 = &v60[-v493];
                if (v660 >= 0)
                {
                  v494 = v59;
                  v496 = v60;
                  v492 = v684 + v230;
                  v495 = v688 + v230;
                }

                v59 = &v494[4 * ((v492 * v484) & (v492 >> 63))];
                if (v492 >= 0)
                {
                  v497 = v492;
                }

                else
                {
                  v497 = -v492;
                }

                v60 = &v496[4 * ((v495 * v484) & (v495 >> 63))];
                if (v495 >= 0)
                {
                  v498 = v495;
                }

                else
                {
                  v498 = -v495;
                }

                v684 = v497;
                v688 = v498;
                CGBlt_copyBytes(v491, v680, v59, v60, 4 * v497, 4 * v498);
              }

              else
              {
                v499 = v688 - v230;
                v500 = &v60[-4 * v489 + 4];
                if (v660 >= 0)
                {
                  v500 = v60;
                  v499 = v688 + v230;
                }

                v501 = (v499 * v484) & (v499 >> 63);
                v60 = (v500 + 4 * v501);
                if (v499 < 0)
                {
                  v499 = -v499;
                }

                v688 = v499;
                CGBlt_fillBytes(v491, v680, 1065353216, (v500 + 4 * v501), 4 * v499);
              }

              goto LABEL_886;
            }

LABEL_885:
            v39 = v663;
LABEL_886:
            v58 = v662;
            v7 = v653;
            goto LABEL_923;
          }
        }

        if (v27)
        {
          if (v43)
          {
            v451 = v694[0];
            do
            {
              v452 = v12;
              do
              {
                *v71 = *v39;
                *v60 = *v59;
                v453 = &v39[v660];
                if (v453 >= v62)
                {
                  v454 = -v664;
                }

                else
                {
                  v454 = 0;
                }

                v59 += 4 * v43 + 4 * v454;
                v39 = &v453[v454];
                v60 += 4 * v27;
                v71 += v660;
                --v452;
              }

              while (v452);
              if (v682)
              {
                v455 = &v116[v686];
                if (v455 >= v682)
                {
                  v456 = -(v684 * v661);
                }

                else
                {
                  v456 = 0;
                }

                v70 += 4 * v684 + 4 * v456;
                if (v455 >= v682)
                {
                  v457 = -(v686 * v661);
                }

                else
                {
                  v457 = 0;
                }

                v116 = &v455[v457];
                v62 += 4 * v457 + 4 * v686;
                v59 = v70;
                v39 = v116;
              }

              else
              {
                v39 += v686;
                v59 += 4 * v684;
              }

              v71 += v74;
              v60 += 4 * v688;
              --v451;
            }

            while (v451);
          }

          else
          {
            v465 = v694[0];
            do
            {
              v466 = v12;
              do
              {
                *v71 = *v39;
                *v60 = 1065353216;
                v467 = &v39[v660];
                if (v467 >= v62)
                {
                  v468 = -v664;
                }

                else
                {
                  v468 = 0;
                }

                v59 += 4 * v468;
                v39 = &v467[v468];
                v60 += 4 * v27;
                v71 += v660;
                --v466;
              }

              while (v466);
              if (v682)
              {
                v469 = &v116[v686];
                if (v469 >= v682)
                {
                  v470 = -(v684 * v661);
                }

                else
                {
                  v470 = 0;
                }

                v70 += 4 * v684 + 4 * v470;
                if (v469 >= v682)
                {
                  v471 = -(v686 * v661);
                }

                else
                {
                  v471 = 0;
                }

                v116 = &v469[v471];
                v62 += 4 * v471 + 4 * v686;
                v59 = v70;
                v39 = v116;
              }

              else
              {
                v39 += v686;
                v59 += 4 * v684;
              }

              v71 += v74;
              v60 += 4 * v688;
              --v465;
            }

            while (v465);
          }
        }

        else
        {
          v458 = v694[0];
          do
          {
            v459 = v12;
            do
            {
              *v71 = *v39;
              v460 = &v39[v660];
              if (v460 >= v62)
              {
                v461 = -v664;
              }

              else
              {
                v461 = 0;
              }

              v59 += 4 * v43 + 4 * v461;
              v39 = &v460[v461];
              v71 += v660;
              --v459;
            }

            while (v459);
            if (v682)
            {
              v462 = &v116[v686];
              if (v462 >= v682)
              {
                v463 = -(v684 * v661);
              }

              else
              {
                v463 = 0;
              }

              v70 += 4 * v684 + 4 * v463;
              if (v462 >= v682)
              {
                v464 = -(v686 * v661);
              }

              else
              {
                v464 = 0;
              }

              v116 = &v462[v464];
              v62 += 4 * v464 + 4 * v686;
              v59 = v70;
              v39 = v116;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            --v458;
          }

          while (v458);
        }

        goto LABEL_920;
      case 2:
        v184 = 4 * v660;
        if (v27)
        {
          v185 = v694[0];
          v116 = v673;
          while (1)
          {
            v186 = v12;
            do
            {
              v187 = *v59;
              if (*v59 >= 1.0)
              {
                *v71 = *v39;
                v188 = *v59;
              }

              else
              {
                if (v187 <= 0.0)
                {
                  goto LABEL_324;
                }

                *v71 = *v39 + (*v71 * (1.0 - v187));
                v188 = v187 + (*v60 * (1.0 - v187));
              }

              *v60 = v188;
LABEL_324:
              v189 = &v39[v660];
              if (v189 >= v62)
              {
                v190 = -v65;
              }

              else
              {
                v190 = 0;
              }

              v59 += 4 * v43 + 4 * v190;
              v39 = &v189[v190];
              v60 += 4 * v27;
              v71 = (v71 + v184);
              --v186;
            }

            while (v186);
            if (v682)
            {
              v191 = &v116[v686];
              if (v191 >= v682)
              {
                v192 = -(v684 * v661);
              }

              else
              {
                v192 = 0;
              }

              v70 += 4 * v684 + 4 * v192;
              if (v191 >= v682)
              {
                v193 = -(v686 * v661);
              }

              else
              {
                v193 = 0;
              }

              v116 = &v191[v193];
              v62 += 4 * v193 + 4 * v686;
              v59 = v70;
              v39 = v116;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            if (!--v185)
            {
              goto LABEL_920;
            }
          }
        }

        v409 = v694[0];
        v148 = v673;
LABEL_772:
        v410 = v12;
        while (1)
        {
          v411 = *v59;
          if (*v59 >= 1.0)
          {
            break;
          }

          if (v411 > 0.0)
          {
            v412 = *v39 + (*v71 * (1.0 - v411));
LABEL_777:
            *v71 = v412;
          }

          v413 = &v39[v660];
          if (v413 >= v62)
          {
            v414 = -v65;
          }

          else
          {
            v414 = 0;
          }

          v59 += 4 * v43 + 4 * v414;
          v39 = &v413[v414];
          v71 = (v71 + v184);
          if (!--v410)
          {
            if (v682)
            {
              v415 = &v148[v686];
              if (v415 >= v682)
              {
                v416 = -(v684 * v661);
              }

              else
              {
                v416 = 0;
              }

              v70 += 4 * v684 + 4 * v416;
              if (v415 >= v682)
              {
                v417 = -(v686 * v661);
              }

              else
              {
                v417 = 0;
              }

              v148 = &v415[v417];
              v62 += 4 * v417 + 4 * v686;
              v59 = v70;
              v39 = v148;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            if (!--v409)
            {
LABEL_855:
              v673 = v148;
              goto LABEL_921;
            }

            goto LABEL_772;
          }
        }

        v412 = *v39;
        goto LABEL_777;
      case 3:
        v209 = 4 * v27;
        v210 = 4 * v660;
        if (v43)
        {
          v211 = v694[0];
          v116 = v673;
          do
          {
            v212 = v12;
            do
            {
              v213 = *v60;
              if (*v60 <= 0.0)
              {
                *v60 = 0;
                *v71 = 0.0;
              }

              else
              {
                v214 = *v39;
                if (v213 >= 1.0)
                {
                  *v71 = v214;
                  v215 = *v59;
                }

                else
                {
                  *v71 = v213 * v214;
                  v215 = v213 * *v59;
                }

                *v60 = v215;
              }

              v216 = &v39[v660];
              if (v216 >= v62)
              {
                v217 = -v65;
              }

              else
              {
                v217 = 0;
              }

              v59 += 4 * v43 + 4 * v217;
              v39 = &v216[v217];
              v60 += v209;
              v71 = (v71 + v210);
              --v212;
            }

            while (v212);
            if (v682)
            {
              v218 = &v116[v686];
              if (v218 >= v682)
              {
                v219 = -(v684 * v661);
              }

              else
              {
                v219 = 0;
              }

              v70 += 4 * v684 + 4 * v219;
              if (v218 >= v682)
              {
                v220 = -(v686 * v661);
              }

              else
              {
                v220 = 0;
              }

              v116 = &v218[v220];
              v62 += 4 * v220 + 4 * v686;
              v59 = v70;
              v39 = v116;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            --v211;
          }

          while (v211);
          goto LABEL_920;
        }

        v418 = v694[0];
        v419 = v673;
        do
        {
          v420 = v12;
          do
          {
            v421 = *v60;
            v422 = 0.0;
            if (*v60 > 0.0)
            {
              v422 = *v39;
              v423 = v421 < 1.0;
              v424 = v421 * *v39;
              if (v423)
              {
                v422 = v424;
              }
            }

            *v71 = v422;
            v425 = &v39[v660];
            if (v425 >= v62)
            {
              v426 = -v65;
            }

            else
            {
              v426 = 0;
            }

            v59 += 4 * v426;
            v39 = &v425[v426];
            v60 += v209;
            v71 = (v71 + v210);
            --v420;
          }

          while (v420);
          if (v682)
          {
            v427 = &v419[v686];
            if (v427 >= v682)
            {
              v428 = -(v684 * v661);
            }

            else
            {
              v428 = 0;
            }

            v70 += 4 * v684 + 4 * v428;
            if (v427 >= v682)
            {
              v429 = -(v686 * v661);
            }

            else
            {
              v429 = 0;
            }

            v419 = &v427[v429];
            v62 += 4 * v429 + 4 * v686;
            v59 = v70;
            v39 = v419;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v418;
        }

        while (v418);
        v673 = v419;
        goto LABEL_921;
      case 4:
        v127 = v694[0];
        v116 = v673;
        do
        {
          v128 = v12;
          do
          {
            v129 = 1.0 - *v60;
            if (v129 <= 0.0)
            {
              *v60 = 0;
              *v71 = 0.0;
            }

            else
            {
              if (v129 >= 1.0)
              {
                if (v43)
                {
                  v131 = *v59;
                }

                else
                {
                  v131 = 1.0;
                }
              }

              else
              {
                *v71 = v129 * *v39;
                if (v43)
                {
                  v130 = *v59;
                }

                else
                {
                  v130 = 1.0;
                }

                v131 = v129 * v130;
              }

              *v60 = v131;
            }

            v132 = &v39[v660];
            if (v132 >= v62)
            {
              v133 = -v65;
            }

            else
            {
              v133 = 0;
            }

            v59 += 4 * v43 + 4 * v133;
            v39 = &v132[v133];
            v60 += 4 * v27;
            v71 += v660;
            --v128;
          }

          while (v128);
          if (v682)
          {
            v134 = &v116[v686];
            if (v134 >= v682)
            {
              v135 = -(v684 * v661);
            }

            else
            {
              v135 = 0;
            }

            v70 += 4 * v684 + 4 * v135;
            if (v134 >= v682)
            {
              v136 = -(v686 * v661);
            }

            else
            {
              v136 = 0;
            }

            v116 = &v134[v136];
            v62 += 4 * v136 + 4 * v686;
            v59 = v70;
            v39 = v116;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v127;
        }

        while (v127);
        goto LABEL_920;
      case 5:
        v259 = v694[0];
        v260 = 4 * v27;
        v148 = v673;
        do
        {
          v261 = v12;
          do
          {
            v262 = *v60;
            v263 = *v59;
            v264 = 1.0 - *v59;
            *v71 = (v264 * *v71) + (*v39 * *v60);
            *v60 = (v262 * v264) + (v263 * v262);
            v265 = &v39[v660];
            if (v265 >= v62)
            {
              v266 = -v65;
            }

            else
            {
              v266 = 0;
            }

            v59 += 4 * v43 + 4 * v266;
            v39 = &v265[v266];
            v60 += v260;
            v71 += v660;
            --v261;
          }

          while (v261);
          if (v682)
          {
            v267 = &v148[v686];
            if (v267 >= v682)
            {
              v268 = -(v684 * v661);
            }

            else
            {
              v268 = 0;
            }

            v70 += 4 * v684 + 4 * v268;
            if (v267 >= v682)
            {
              v269 = -(v686 * v661);
            }

            else
            {
              v269 = 0;
            }

            v148 = &v267[v269];
            v62 += 4 * v269 + 4 * v686;
            v59 = v70;
            v39 = v148;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v259;
        }

        while (v259);
        goto LABEL_855;
      case 6:
        v295 = v694[0];
        v116 = v673;
        while (1)
        {
          v296 = v12;
          do
          {
            v297 = *v60;
            v298 = 1.0 - *v60;
            if (v298 >= 1.0)
            {
              *v71 = *v39;
              if (v43)
              {
                v300 = *v59;
              }

              else
              {
                v300 = 1.0;
              }
            }

            else
            {
              if (v298 <= 0.0)
              {
                goto LABEL_549;
              }

              *v71 = *v71 + (*v39 * v298);
              if (v43)
              {
                v299 = *v59;
              }

              else
              {
                v299 = 1.0;
              }

              v300 = v297 + (v299 * v298);
            }

            *v60 = v300;
LABEL_549:
            v301 = &v39[v660];
            if (v301 >= v62)
            {
              v302 = -v65;
            }

            else
            {
              v302 = 0;
            }

            v59 += 4 * v43 + 4 * v302;
            v39 = &v301[v302];
            v60 += 4 * v27;
            v71 += v660;
            --v296;
          }

          while (v296);
          if (v682)
          {
            v303 = &v116[v686];
            if (v303 >= v682)
            {
              v304 = -(v684 * v661);
            }

            else
            {
              v304 = 0;
            }

            v70 += 4 * v684 + 4 * v304;
            if (v303 >= v682)
            {
              v305 = -(v686 * v661);
            }

            else
            {
              v305 = 0;
            }

            v116 = &v303[v305];
            v62 += 4 * v305 + 4 * v686;
            v59 = v70;
            v39 = v116;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v295)
          {
LABEL_920:
            v673 = v116;
LABEL_921:
            v672 = v70;
            v9 = v66;
            v56 = v62;
            v694[0] = 0;
LABEL_922:
            v58 = v662;
            v39 = v663;
LABEL_923:
            if (!v58)
            {
              return 1;
            }

            v693 = 0;
LABEL_925:
            if (!shape_enum_clip_next(v58, &v693 + 1, &v693, v704, v694))
            {
              v73 = v58;
LABEL_947:
              free(v73);
              return 1;
            }

            v662 = v58;
            v663 = v39;
            if (v682)
            {
              v65 = v664;
              v40 = v665;
              v71 = (v657 + 4 * v665 * v693 + 4 * SHIDWORD(v693));
              v472 = (v693 + *(v11 + 60)) % v661;
              v61 = v704[0];
              v473 = (HIDWORD(v693) + *(v11 + 56)) % v664;
              v474 = &v39[v686 * v472];
              v39 = &v474[v473];
              v62 = &v474[v664];
              v27 = v692;
              if (v692)
              {
                v60 = (v659 + 4 * v658 * v693 + 4 * SHIDWORD(v693));
              }

              v475 = v688;
              if (v692)
              {
                v475 = v658 - v704[0];
              }

              v688 = v475;
              if (v690)
              {
                v43 = v690;
              }

              else
              {
                v43 = 0;
              }

              v70 = v672;
              if (v690)
              {
                v70 = &v7[v684 * v472 + v473];
                v59 = v70;
              }

              LODWORD(v12) = v704[0];
              v673 = &v474[v473];
              v655 = (HIDWORD(v693) + *(v11 + 56)) % v664;
              v656 = (v693 + *(v11 + 60)) % v661;
              v66 = v9;
            }

            else
            {
              v682 = 0;
              v476 = HIDWORD(v693) * v660;
              LODWORD(v12) = v704[0];
              v477 = v704[0] * v660;
              v65 = v664;
              v40 = v665;
              v71 = (v657 + 4 * v665 * v693 + 4 * HIDWORD(v693) * v660);
              v61 = v704[0] * v660;
              v39 += v693 * v664 + HIDWORD(v693) * v660;
              v27 = v692;
              if (v692)
              {
                v60 = (v659 + 4 * v658 * v693 + 4 * v476);
              }

              v478 = v688;
              v43 = v690;
              if (v692)
              {
                v478 = v658 - v477;
              }

              v686 = v664 - v477;
              v688 = v478;
              v479 = &v7[v693 * v661 + v476];
              v480 = v661 - v477;
              if (v690)
              {
                v59 = v479;
              }

              v481 = v684;
              if (v690)
              {
                v481 = v480;
              }

              v684 = v481;
              v62 = v56;
              v66 = v9;
              v70 = v672;
            }

            goto LABEL_66;
          }
        }

      case 7:
        if (v27)
        {
          v221 = v694[0];
          v116 = v673;
          do
          {
            v222 = v12;
            do
            {
              v223 = *v59;
              if (*v59 <= 0.0)
              {
                *v60 = 0;
                *v71 = 0.0;
              }

              else if (v223 < 1.0)
              {
                *v71 = v223 * *v71;
                *v60 = v223 * *v60;
              }

              v224 = &v39[v660];
              if (v224 >= v62)
              {
                v225 = -v65;
              }

              else
              {
                v225 = 0;
              }

              v59 += 4 * v43 + 4 * v225;
              v39 = &v224[v225];
              v60 += 4 * v27;
              v71 += v660;
              --v222;
            }

            while (v222);
            if (v682)
            {
              v226 = &v116[v686];
              if (v226 >= v682)
              {
                v227 = -(v684 * v661);
              }

              else
              {
                v227 = 0;
              }

              v70 += 4 * v684 + 4 * v227;
              if (v226 >= v682)
              {
                v228 = -(v686 * v661);
              }

              else
              {
                v228 = 0;
              }

              v116 = &v226[v228];
              v62 += 4 * v228 + 4 * v686;
              v59 = v70;
              v39 = v116;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            --v221;
          }

          while (v221);
          goto LABEL_920;
        }

        v430 = v694[0];
        v148 = v673;
LABEL_815:
        v431 = v12;
        while (1)
        {
          v432 = *v59;
          v433 = 0.0;
          if (*v59 <= 0.0)
          {
            goto LABEL_819;
          }

          if (v432 < 1.0)
          {
            break;
          }

LABEL_820:
          v434 = &v39[v660];
          if (v434 >= v62)
          {
            v435 = -v65;
          }

          else
          {
            v435 = 0;
          }

          v59 += 4 * v43 + 4 * v435;
          v39 = &v434[v435];
          v71 += v660;
          if (!--v431)
          {
            if (v682)
            {
              v436 = &v148[v686];
              if (v436 >= v682)
              {
                v437 = -(v684 * v661);
              }

              else
              {
                v437 = 0;
              }

              v70 += 4 * v684 + 4 * v437;
              if (v436 >= v682)
              {
                v438 = -(v686 * v661);
              }

              else
              {
                v438 = 0;
              }

              v148 = &v436[v438];
              v62 += 4 * v438 + 4 * v686;
              v59 = v70;
              v39 = v148;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            if (!--v430)
            {
              goto LABEL_855;
            }

            goto LABEL_815;
          }
        }

        v433 = v432 * *v71;
LABEL_819:
        *v71 = v433;
        goto LABEL_820;
      case 8:
        if (v27)
        {
          v333 = v694[0];
          v116 = v673;
          do
          {
            v334 = v12;
            do
            {
              v335 = 1.0 - *v59;
              if (v335 <= 0.0)
              {
                *v60 = 0;
                *v71 = 0.0;
              }

              else if (v335 < 1.0)
              {
                *v71 = v335 * *v71;
                *v60 = v335 * *v60;
              }

              v336 = &v39[v660];
              if (v336 >= v62)
              {
                v337 = -v65;
              }

              else
              {
                v337 = 0;
              }

              v59 += 4 * v43 + 4 * v337;
              v39 = &v336[v337];
              v60 += 4 * v27;
              v71 += v660;
              --v334;
            }

            while (v334);
            if (v682)
            {
              v338 = &v116[v686];
              if (v338 >= v682)
              {
                v339 = -(v684 * v661);
              }

              else
              {
                v339 = 0;
              }

              v70 += 4 * v684 + 4 * v339;
              if (v338 >= v682)
              {
                v340 = -(v686 * v661);
              }

              else
              {
                v340 = 0;
              }

              v116 = &v338[v340];
              v62 += 4 * v340 + 4 * v686;
              v59 = v70;
              v39 = v116;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            --v333;
          }

          while (v333);
          goto LABEL_920;
        }

        v439 = v694[0];
        v148 = v673;
LABEL_836:
        v440 = v12;
        while (1)
        {
          v441 = 1.0 - *v59;
          v442 = 0.0;
          if (v441 <= 0.0)
          {
            goto LABEL_840;
          }

          if (v441 < 1.0)
          {
            break;
          }

LABEL_841:
          v443 = &v39[v660];
          if (v443 >= v62)
          {
            v444 = -v65;
          }

          else
          {
            v444 = 0;
          }

          v59 += 4 * v43 + 4 * v444;
          v39 = &v443[v444];
          v71 += v660;
          if (!--v440)
          {
            if (v682)
            {
              v445 = &v148[v686];
              if (v445 >= v682)
              {
                v446 = -(v684 * v661);
              }

              else
              {
                v446 = 0;
              }

              v70 += 4 * v684 + 4 * v446;
              if (v445 >= v682)
              {
                v447 = -(v686 * v661);
              }

              else
              {
                v447 = 0;
              }

              v148 = &v445[v447];
              v62 += 4 * v447 + 4 * v686;
              v59 = v70;
              v39 = v148;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            if (!--v439)
            {
              goto LABEL_855;
            }

            goto LABEL_836;
          }
        }

        v442 = v441 * *v71;
LABEL_840:
        *v71 = v442;
        goto LABEL_841;
      case 9:
        v146 = v694[0];
        v147 = 4 * v27;
        v148 = v673;
        do
        {
          v149 = v12;
          do
          {
            v150 = *v60;
            v151 = *v59;
            v152 = 1.0 - *v60;
            *v71 = (*v59 * *v71) + (*v39 * v152);
            *v60 = (v150 * v151) + (v151 * v152);
            v153 = &v39[v660];
            if (v153 >= v62)
            {
              v154 = -v65;
            }

            else
            {
              v154 = 0;
            }

            v59 += 4 * v43 + 4 * v154;
            v39 = &v153[v154];
            v60 += v147;
            v71 += v660;
            --v149;
          }

          while (v149);
          if (v682)
          {
            v155 = &v148[v686];
            if (v155 >= v682)
            {
              v156 = -(v684 * v661);
            }

            else
            {
              v156 = 0;
            }

            v70 += 4 * v684 + 4 * v156;
            if (v155 >= v682)
            {
              v157 = -(v686 * v661);
            }

            else
            {
              v157 = 0;
            }

            v148 = &v155[v157];
            v62 += 4 * v157 + 4 * v686;
            v59 = v70;
            v39 = v148;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v146;
        }

        while (v146);
        goto LABEL_855;
      case 10:
        v321 = v694[0];
        v322 = 4 * v27;
        v148 = v673;
        do
        {
          v323 = v12;
          do
          {
            v324 = *v60;
            v325 = *v59;
            v326 = 1.0 - *v60;
            v327 = 1.0 - *v59;
            *v71 = (v327 * *v71) + (*v39 * v326);
            *v60 = (v324 * v327) + (v325 * v326);
            v328 = &v39[v660];
            if (v328 >= v62)
            {
              v329 = -v65;
            }

            else
            {
              v329 = 0;
            }

            v59 += 4 * v43 + 4 * v329;
            v39 = &v328[v329];
            v60 += v322;
            v71 += v660;
            --v323;
          }

          while (v323);
          if (v682)
          {
            v330 = &v148[v686];
            if (v330 >= v682)
            {
              v331 = -(v684 * v661);
            }

            else
            {
              v331 = 0;
            }

            v70 += 4 * v684 + 4 * v331;
            if (v330 >= v682)
            {
              v332 = -(v686 * v661);
            }

            else
            {
              v332 = 0;
            }

            v148 = &v330[v332];
            v62 += 4 * v332 + 4 * v686;
            v59 = v70;
            v39 = v148;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v321;
        }

        while (v321);
        goto LABEL_855;
      case 11:
        v114 = 4 * v660;
        if (v27)
        {
          v115 = v694[0];
          v116 = v673;
          do
          {
            v117 = v12;
            do
            {
              if (v43)
              {
                v118 = *v59;
              }

              else
              {
                v118 = 1.0;
              }

              v119 = *v60 + v118;
              v120 = (*v60 - *v71) + (v118 - *v39);
              if (v119 <= 1.0)
              {
                v121 = v119;
              }

              else
              {
                v121 = 1.0;
              }

              *v60 = v121;
              *v71 = v121 - v120;
              v122 = &v39[v660];
              if (v122 >= v62)
              {
                v123 = -v65;
              }

              else
              {
                v123 = 0;
              }

              v59 += 4 * v43 + 4 * v123;
              v39 = &v122[v123];
              v60 += 4 * v27;
              v71 = (v71 + v114);
              --v117;
            }

            while (v117);
            if (v682)
            {
              v124 = &v116[v686];
              if (v124 >= v682)
              {
                v125 = -(v684 * v661);
              }

              else
              {
                v125 = 0;
              }

              v70 += 4 * v684 + 4 * v125;
              if (v124 >= v682)
              {
                v126 = -(v686 * v661);
              }

              else
              {
                v126 = 0;
              }

              v116 = &v124[v126];
              v62 += 4 * v126 + 4 * v686;
              v59 = v70;
              v39 = v116;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            --v115;
          }

          while (v115);
          goto LABEL_920;
        }

        v394 = v694[0];
        v148 = v673;
        do
        {
          v395 = v12;
          do
          {
            v396 = 1.0;
            if (v43)
            {
              v396 = *v59;
            }

            *v71 = 1.0 - ((1.0 - *v71) + (v396 - *v39));
            v397 = &v39[v660];
            if (v397 >= v62)
            {
              v398 = -v65;
            }

            else
            {
              v398 = 0;
            }

            v59 += 4 * v43 + 4 * v398;
            v39 = &v397[v398];
            v71 = (v71 + v114);
            --v395;
          }

          while (v395);
          if (v682)
          {
            v399 = &v148[v686];
            if (v399 >= v682)
            {
              v400 = -(v684 * v661);
            }

            else
            {
              v400 = 0;
            }

            v70 += 4 * v684 + 4 * v400;
            if (v399 >= v682)
            {
              v401 = -(v686 * v661);
            }

            else
            {
              v401 = 0;
            }

            v148 = &v399[v401];
            v62 += 4 * v401 + 4 * v686;
            v59 = v70;
            v39 = v148;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v394;
        }

        while (v394);
        goto LABEL_855;
      case 12:
        if (!v27)
        {
          v402 = v694[0];
          v148 = v673;
          do
          {
            v403 = v12;
            do
            {
              *v71 = *v71 + *v39;
              v404 = &v39[v660];
              if (v404 >= v62)
              {
                v405 = -v65;
              }

              else
              {
                v405 = 0;
              }

              v59 += 4 * v43 + 4 * v405;
              v39 = &v404[v405];
              v71 += v660;
              --v403;
            }

            while (v403);
            if (v682)
            {
              v406 = &v148[v686];
              if (v406 >= v682)
              {
                v407 = -(v684 * v661);
              }

              else
              {
                v407 = 0;
              }

              v70 += 4 * v684 + 4 * v407;
              if (v406 >= v682)
              {
                v408 = -(v686 * v661);
              }

              else
              {
                v408 = 0;
              }

              v148 = &v406[v408];
              v62 += 4 * v408 + 4 * v686;
              v59 = v70;
              v39 = v148;
            }

            else
            {
              v39 += v686;
              v59 += 4 * v684;
            }

            v71 += v74;
            v60 += 4 * v688;
            --v402;
          }

          while (v402);
          goto LABEL_855;
        }

        v137 = v694[0];
        v116 = v673;
        do
        {
          v138 = v12;
          do
          {
            if (v43)
            {
              v139 = *v59;
            }

            else
            {
              v139 = 1.0;
            }

            v140 = *v60 + v139;
            if (v140 > 1.0)
            {
              v140 = 1.0;
            }

            *v71 = *v71 + *v39;
            *v60 = v140;
            v141 = &v39[v660];
            if (v141 >= v62)
            {
              v142 = -v65;
            }

            else
            {
              v142 = 0;
            }

            v59 += 4 * v43 + 4 * v142;
            v39 = &v141[v142];
            v60 += 4 * v27;
            v71 += v660;
            --v138;
          }

          while (v138);
          if (v682)
          {
            v143 = &v116[v686];
            if (v143 >= v682)
            {
              v144 = -(v684 * v661);
            }

            else
            {
              v144 = 0;
            }

            v70 += 4 * v684 + 4 * v144;
            if (v143 >= v682)
            {
              v145 = -(v686 * v661);
            }

            else
            {
              v145 = 0;
            }

            v116 = &v143[v145];
            v62 += 4 * v145 + 4 * v686;
            v59 = v70;
            v39 = v116;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          --v137;
        }

        while (v137);
        goto LABEL_920;
      case 13:
        v285 = v694[0];
        v82 = v673;
        while (1)
        {
          v286 = v12;
          do
          {
            v287 = 1.0;
            v288 = 1.0;
            if (v43)
            {
              v288 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_522;
              }
            }

            if (v27)
            {
              v287 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_520;
              }
            }

            v289 = (*v71 * *v39) + (*v71 * (1.0 - v288));
            if (v288 == 1.0)
            {
              v289 = *v71 * *v39;
            }

            if (v287 != 1.0)
            {
              v289 = v289 + (*v39 * (1.0 - v287));
            }

            if (v27)
            {
              v288 = (v288 + v287) - (v287 * v288);
              *v71 = v289;
LABEL_520:
              *v60 = v288;
              goto LABEL_522;
            }

            *v71 = v289;
LABEL_522:
            v290 = &v39[v660];
            if (v290 >= v62)
            {
              v291 = -v65;
            }

            else
            {
              v291 = 0;
            }

            v59 += 4 * v43 + 4 * v291;
            v39 = &v290[v291];
            v60 += 4 * v27;
            v71 += v660;
            --v286;
          }

          while (v286);
          if (v682)
          {
            v292 = &v82[v686];
            if (v292 >= v682)
            {
              v293 = -(v684 * v661);
            }

            else
            {
              v293 = 0;
            }

            v70 += 4 * v684 + 4 * v293;
            if (v292 >= v682)
            {
              v294 = -(v686 * v661);
            }

            else
            {
              v294 = 0;
            }

            v82 = &v292[v294];
            v62 += 4 * v294 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v285)
          {
LABEL_734:
            v673 = v82;
            goto LABEL_921;
          }
        }

      case 14:
        v106 = v694[0];
        v82 = v673;
        while (1)
        {
          v107 = v12;
          do
          {
            if (v43)
            {
              v108 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_147;
              }

              if (!v27)
              {
LABEL_144:
                *v71 = *v71 + (*v39 * (1.0 - *v71));
                goto LABEL_147;
              }
            }

            else
            {
              v108 = 1.0;
              if (!v27)
              {
                goto LABEL_144;
              }
            }

            if (*v60 <= 0.0)
            {
              *v71 = *v39;
            }

            else
            {
              v108 = (v108 + *v60) - (*v60 * v108);
              *v71 = *v71 + (*v39 * (1.0 - *v71));
            }

            *v60 = v108;
LABEL_147:
            v109 = &v39[v660];
            if (v109 >= v62)
            {
              v110 = -v65;
            }

            else
            {
              v110 = 0;
            }

            v59 += 4 * v43 + 4 * v110;
            v39 = &v109[v110];
            v60 += 4 * v27;
            v71 += v660;
            --v107;
          }

          while (v107);
          if (v682)
          {
            v111 = &v82[v686];
            if (v111 >= v682)
            {
              v112 = -(v684 * v661);
            }

            else
            {
              v112 = 0;
            }

            v70 += 4 * v684 + 4 * v112;
            if (v111 >= v682)
            {
              v113 = -(v686 * v661);
            }

            else
            {
              v113 = 0;
            }

            v82 = &v111[v113];
            v62 += 4 * v113 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v106)
          {
            goto LABEL_734;
          }
        }

      case 15:
        v672 = v70;
        v653 = v7;
        v194 = v43;
        v195 = v694[0];
        v196 = 4 * v27;
        v197 = 4 * v660;
        v198 = -v65;
        v674 = v198;
        do
        {
          v666 = v195;
          v199 = v12;
          do
          {
            v200 = 1.0;
            v201 = 1.0;
            if (!v43 || (v201 = *v59, *v59 > 0.0))
            {
              if (v27 && (v200 = *v60, *v60 <= 0.0))
              {
                *v71 = *v39;
                *v60 = v201;
              }

              else
              {
                v202 = PDAoverlayPDA(*v71, v200, *v39, v201);
                LODWORD(v27) = v692;
                *v71 = v202;
                if (v692)
                {
                  *v60 = v203;
                }

                LODWORD(v43) = v690;
                v198 = v674;
                v197 = 4 * v660;
              }
            }

            v204 = &v39[v660];
            if (v204 >= v62)
            {
              v205 = v198;
            }

            else
            {
              v205 = 0;
            }

            v59 += 4 * v194 + 4 * v205;
            v39 = &v204[v205];
            v60 += v196;
            v71 = (v71 + v197);
            --v199;
          }

          while (v199);
          if (v682)
          {
            v206 = &v673[v686];
            v207 = -(v684 * v661);
            if (v206 < v682)
            {
              v207 = 0;
            }

            v59 = (v672 + 4 * v684 + 4 * v207);
            v208 = -(v686 * v661);
            if (v206 < v682)
            {
              v208 = 0;
            }

            v39 = &v206[v208];
            v62 += 4 * v208 + 4 * v686;
            v672 += 4 * v684 + 4 * v207;
            v673 = v39;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v671;
          v60 += 4 * v688;
          v195 = v666 - 1;
        }

        while (v666 != 1);
        goto LABEL_676;
      case 16:
        v95 = v694[0];
        v82 = v673;
        while (1)
        {
          v96 = v12;
          do
          {
            v97 = 1.0;
            v98 = 1.0;
            if (v43)
            {
              v98 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_121;
              }
            }

            if (v27)
            {
              v97 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_119;
              }
            }

            v99 = v98 * *v71;
            if ((v97 * *v39) < v99)
            {
              v99 = v97 * *v39;
            }

            v100 = v99 + (*v71 * (1.0 - v98));
            if (v98 == 1.0)
            {
              v100 = v99;
            }

            if (v97 != 1.0)
            {
              v100 = v100 + (*v39 * (1.0 - v97));
            }

            if (v27)
            {
              v98 = (v98 + v97) - (v97 * v98);
              *v71 = v100;
LABEL_119:
              *v60 = v98;
              goto LABEL_121;
            }

            *v71 = v100;
LABEL_121:
            v101 = &v39[v660];
            if (v101 >= v62)
            {
              v102 = -v65;
            }

            else
            {
              v102 = 0;
            }

            v59 += 4 * v43 + 4 * v102;
            v39 = &v101[v102];
            v60 += 4 * v27;
            v71 += v660;
            --v96;
          }

          while (v96);
          if (v682)
          {
            v103 = &v82[v686];
            if (v103 >= v682)
            {
              v104 = -(v684 * v661);
            }

            else
            {
              v104 = 0;
            }

            v70 += 4 * v684 + 4 * v104;
            if (v103 >= v682)
            {
              v105 = -(v686 * v661);
            }

            else
            {
              v105 = 0;
            }

            v82 = &v103[v105];
            v62 += 4 * v105 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v95)
          {
            goto LABEL_734;
          }
        }

      case 17:
        v233 = v694[0];
        v82 = v673;
        while (1)
        {
          v234 = v12;
          do
          {
            v235 = 1.0;
            v236 = 1.0;
            if (v43)
            {
              v236 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_429;
              }
            }

            if (v27)
            {
              v235 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_427;
              }
            }

            v237 = v236 * *v71;
            if ((v235 * *v39) > v237)
            {
              v237 = v235 * *v39;
            }

            v238 = v237 + (*v71 * (1.0 - v236));
            if (v236 == 1.0)
            {
              v238 = v237;
            }

            if (v235 != 1.0)
            {
              v238 = v238 + (*v39 * (1.0 - v235));
            }

            if (v27)
            {
              v236 = (v236 + v235) - (v235 * v236);
              *v71 = v238;
LABEL_427:
              *v60 = v236;
              goto LABEL_429;
            }

            *v71 = v238;
LABEL_429:
            v239 = &v39[v660];
            if (v239 >= v62)
            {
              v240 = -v65;
            }

            else
            {
              v240 = 0;
            }

            v59 += 4 * v43 + 4 * v240;
            v39 = &v239[v240];
            v60 += 4 * v27;
            v71 += v660;
            --v234;
          }

          while (v234);
          if (v682)
          {
            v241 = &v82[v686];
            if (v241 >= v682)
            {
              v242 = -(v684 * v661);
            }

            else
            {
              v242 = 0;
            }

            v70 += 4 * v684 + 4 * v242;
            if (v241 >= v682)
            {
              v243 = -(v686 * v661);
            }

            else
            {
              v243 = 0;
            }

            v82 = &v241[v243];
            v62 += 4 * v243 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v233)
          {
            goto LABEL_734;
          }
        }

      case 18:
        v672 = v70;
        v653 = v7;
        v306 = v43;
        v307 = v694[0];
        v308 = 4 * v27;
        v309 = 4 * v660;
        v310 = -v65;
        v677 = v310;
        do
        {
          v669 = v307;
          v311 = v12;
          do
          {
            v312 = 1.0;
            v313 = 1.0;
            if (!v43 || (v313 = *v59, *v59 > 0.0))
            {
              if (v27 && (v312 = *v60, *v60 <= 0.0))
              {
                *v71 = *v39;
                *v60 = v313;
              }

              else
              {
                v314 = PDAcolordodgePDA(*v71, v312, *v39, v313);
                LODWORD(v27) = v692;
                *v71 = v314;
                if (v692)
                {
                  *v60 = v315;
                }

                LODWORD(v43) = v690;
                v310 = v677;
                v309 = 4 * v660;
              }
            }

            v316 = &v39[v660];
            if (v316 >= v62)
            {
              v317 = v310;
            }

            else
            {
              v317 = 0;
            }

            v59 += 4 * v306 + 4 * v317;
            v39 = &v316[v317];
            v60 += v308;
            v71 = (v71 + v309);
            --v311;
          }

          while (v311);
          if (v682)
          {
            v318 = &v673[v686];
            v319 = -(v684 * v661);
            if (v318 < v682)
            {
              v319 = 0;
            }

            v59 = (v672 + 4 * v684 + 4 * v319);
            v320 = -(v686 * v661);
            if (v318 < v682)
            {
              v320 = 0;
            }

            v39 = &v318[v320];
            v62 += 4 * v320 + 4 * v686;
            v672 += 4 * v684 + 4 * v319;
            v673 = v39;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v671;
          v60 += 4 * v688;
          v307 = v669 - 1;
        }

        while (v669 != 1);
        goto LABEL_676;
      case 19:
        v672 = v70;
        v653 = v7;
        v356 = v43;
        v357 = v694[0];
        v358 = 4 * v27;
        v359 = 4 * v660;
        v360 = -v65;
        v678 = v360;
        do
        {
          v670 = v357;
          v361 = v12;
          do
          {
            v362 = 1.0;
            v363 = 1.0;
            if (!v43 || (v363 = *v59, *v59 > 0.0))
            {
              if (v27 && (v362 = *v60, *v60 <= 0.0))
              {
                *v71 = *v39;
                *v60 = v363;
              }

              else
              {
                v364 = PDAcolorburnPDA(*v71, v362, *v39, v363);
                LODWORD(v27) = v692;
                *v71 = *&v364;
                if (v692)
                {
                  *v60 = v365;
                }

                LODWORD(v43) = v690;
                v360 = v678;
                v359 = 4 * v660;
              }
            }

            v366 = &v39[v660];
            if (v366 >= v62)
            {
              v367 = v360;
            }

            else
            {
              v367 = 0;
            }

            v59 += 4 * v356 + 4 * v367;
            v39 = &v366[v367];
            v60 += v358;
            v71 = (v71 + v359);
            --v361;
          }

          while (v361);
          if (v682)
          {
            v368 = &v673[v686];
            v369 = -(v684 * v661);
            if (v368 < v682)
            {
              v369 = 0;
            }

            v59 = (v672 + 4 * v684 + 4 * v369);
            v370 = -(v686 * v661);
            if (v368 < v682)
            {
              v370 = 0;
            }

            v39 = &v368[v370];
            v62 += 4 * v370 + 4 * v686;
            v672 += 4 * v684 + 4 * v369;
            v673 = v39;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v671;
          v60 += 4 * v688;
          v357 = v670 - 1;
        }

        while (v670 != 1);
        goto LABEL_676;
      case 20:
        v672 = v70;
        v653 = v7;
        v244 = v43;
        v245 = v694[0];
        v246 = 4 * v27;
        v247 = 4 * v660;
        v248 = -v65;
        v675 = v248;
        do
        {
          v667 = v245;
          v249 = v12;
          do
          {
            v250 = 1.0;
            v251 = 1.0;
            if (!v43 || (v251 = *v59, *v59 > 0.0))
            {
              if (v27 && (v250 = *v60, *v60 <= 0.0))
              {
                *v71 = *v39;
                *v60 = v251;
              }

              else
              {
                v252 = PDAsoftlightPDA(*v71, v250, *v39, v251);
                LODWORD(v27) = v692;
                *v71 = v252;
                if (v692)
                {
                  *v60 = v253;
                }

                LODWORD(v43) = v690;
                v248 = v675;
                v247 = 4 * v660;
              }
            }

            v254 = &v39[v660];
            if (v254 >= v62)
            {
              v255 = v248;
            }

            else
            {
              v255 = 0;
            }

            v59 += 4 * v244 + 4 * v255;
            v39 = &v254[v255];
            v60 += v246;
            v71 = (v71 + v247);
            --v249;
          }

          while (v249);
          if (v682)
          {
            v256 = &v673[v686];
            v257 = -(v684 * v661);
            if (v256 < v682)
            {
              v257 = 0;
            }

            v59 = (v672 + 4 * v684 + 4 * v257);
            v258 = -(v686 * v661);
            if (v256 < v682)
            {
              v258 = 0;
            }

            v39 = &v256[v258];
            v62 += 4 * v258 + 4 * v686;
            v672 += 4 * v684 + 4 * v257;
            v673 = v39;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v671;
          v60 += 4 * v688;
          v245 = v667 - 1;
        }

        while (v667 != 1);
        goto LABEL_676;
      case 21:
        v672 = v70;
        v653 = v7;
        v270 = v43;
        v271 = v694[0];
        v272 = 4 * v27;
        v273 = 4 * v660;
        v274 = -v65;
        v676 = v274;
        do
        {
          v668 = v271;
          v275 = v12;
          do
          {
            v276 = 1.0;
            v277 = 1.0;
            if (!v43 || (v277 = *v59, *v59 > 0.0))
            {
              if (v27 && (v276 = *v60, *v60 <= 0.0))
              {
                *v71 = *v39;
                *v60 = v277;
              }

              else
              {
                v278 = PDAhardlightPDA(*v71, v276, *v39, v277);
                LODWORD(v27) = v692;
                *v71 = v278;
                if (v692)
                {
                  *v60 = v279;
                }

                LODWORD(v43) = v690;
                v274 = v676;
                v273 = 4 * v660;
              }
            }

            v280 = &v39[v660];
            if (v280 >= v62)
            {
              v281 = v274;
            }

            else
            {
              v281 = 0;
            }

            v59 += 4 * v270 + 4 * v281;
            v39 = &v280[v281];
            v60 += v272;
            v71 = (v71 + v273);
            --v275;
          }

          while (v275);
          if (v682)
          {
            v282 = &v673[v686];
            v283 = -(v684 * v661);
            if (v282 < v682)
            {
              v283 = 0;
            }

            v59 = (v672 + 4 * v684 + 4 * v283);
            v284 = -(v686 * v661);
            if (v282 < v682)
            {
              v284 = 0;
            }

            v39 = &v282[v284];
            v62 += 4 * v284 + 4 * v686;
            v672 += 4 * v684 + 4 * v283;
            v673 = v39;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v671;
          v60 += 4 * v688;
          v271 = v668 - 1;
        }

        while (v668 != 1);
LABEL_676:
        v56 = v62;
        v694[0] = 0;
        v9 = v654;
        v11 = v652;
        goto LABEL_677;
      case 22:
        v341 = v694[0];
        v82 = v673;
        while (1)
        {
          v342 = v12;
          do
          {
            v343 = 1.0;
            v344 = 1.0;
            if (v43)
            {
              v344 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_639;
              }
            }

            if (v27)
            {
              v343 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_637;
              }
            }

            v345 = v344 * *v71;
            v346 = v343 * *v39;
            v347 = (*v71 + *v39) - v345;
            v348 = v345 - v346;
            v349 = v347 - v346;
            if (v348 < 0.0)
            {
              v348 = -v348;
            }

            v350 = v349 + v348;
            if (v27)
            {
              v344 = (v344 + v343) - (v343 * v344);
              *v71 = v350;
LABEL_637:
              *v60 = v344;
              goto LABEL_639;
            }

            *v71 = v350;
LABEL_639:
            v351 = &v39[v660];
            if (v351 >= v62)
            {
              v352 = -v65;
            }

            else
            {
              v352 = 0;
            }

            v59 += 4 * v43 + 4 * v352;
            v39 = &v351[v352];
            v60 += 4 * v27;
            v71 += v660;
            --v342;
          }

          while (v342);
          if (v682)
          {
            v353 = &v82[v686];
            if (v353 >= v682)
            {
              v354 = -(v684 * v661);
            }

            else
            {
              v354 = 0;
            }

            v70 += 4 * v684 + 4 * v354;
            if (v353 >= v682)
            {
              v355 = -(v686 * v661);
            }

            else
            {
              v355 = 0;
            }

            v82 = &v353[v355];
            v62 += 4 * v355 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v341)
          {
            goto LABEL_734;
          }
        }

      case 23:
        v371 = v694[0];
        v82 = v673;
        while (1)
        {
          v372 = v12;
          do
          {
            v373 = 1.0;
            v374 = 1.0;
            if (v43)
            {
              v374 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_689;
              }
            }

            if (v27)
            {
              v373 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_687;
              }
            }

            v375 = (*v71 + *v39) + ((*v39 * *v71) * -2.0);
            if (v27)
            {
              v374 = (v374 + v373) - (v373 * v374);
              *v71 = v375;
LABEL_687:
              *v60 = v374;
              goto LABEL_689;
            }

            *v71 = v375;
LABEL_689:
            v376 = &v39[v660];
            if (v376 >= v62)
            {
              v377 = -v65;
            }

            else
            {
              v377 = 0;
            }

            v59 += 4 * v43 + 4 * v377;
            v39 = &v376[v377];
            v60 += 4 * v27;
            v71 += v660;
            --v372;
          }

          while (v372);
          if (v682)
          {
            v378 = &v82[v686];
            if (v378 >= v682)
            {
              v379 = -(v684 * v661);
            }

            else
            {
              v379 = 0;
            }

            v70 += 4 * v684 + 4 * v379;
            if (v378 >= v682)
            {
              v380 = -(v686 * v661);
            }

            else
            {
              v380 = 0;
            }

            v82 = &v378[v380];
            v62 += 4 * v380 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v371)
          {
            goto LABEL_734;
          }
        }

      case 24:
        v171 = v694[0];
        v82 = v673;
        while (1)
        {
          v172 = v12;
          do
          {
            v173 = 1.0;
            v174 = 1.0;
            if (v43)
            {
              v174 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_301;
              }
            }

            if (v27)
            {
              v173 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_299;
              }
            }

            v175 = *v71;
            if (v174 == 1.0)
            {
              v176 = 0.0;
            }

            else
            {
              v175 = v174 * *v71;
              v176 = *v71 - v175;
            }

            v177 = (*v39 + v176) - (v173 * *v39);
            if (v173 == 1.0)
            {
              v177 = v176;
            }

            v178 = v175 + v177;
            if (v27)
            {
              v174 = (v174 + v173) - (v174 * v173);
              *v71 = v178;
LABEL_299:
              *v60 = v174;
              goto LABEL_301;
            }

            *v71 = v178;
LABEL_301:
            v179 = &v39[v660];
            if (v179 >= v62)
            {
              v180 = -v65;
            }

            else
            {
              v180 = 0;
            }

            v59 += 4 * v43 + 4 * v180;
            v39 = &v179[v180];
            v60 += 4 * v27;
            v71 += v660;
            --v172;
          }

          while (v172);
          if (v682)
          {
            v181 = &v82[v686];
            if (v181 >= v682)
            {
              v182 = -(v684 * v661);
            }

            else
            {
              v182 = 0;
            }

            v70 += 4 * v684 + 4 * v182;
            if (v181 >= v682)
            {
              v183 = -(v686 * v661);
            }

            else
            {
              v183 = 0;
            }

            v82 = &v181[v183];
            v62 += 4 * v183 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v171)
          {
            goto LABEL_734;
          }
        }

      case 25:
        v158 = v694[0];
        v82 = v673;
        while (1)
        {
          v159 = v12;
          do
          {
            v160 = 1.0;
            v161 = 1.0;
            if (v43)
            {
              v161 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_270;
              }
            }

            if (v27)
            {
              v160 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_268;
              }
            }

            v162 = *v71;
            if (v161 == 1.0)
            {
              v163 = 0.0;
            }

            else
            {
              v162 = v161 * *v71;
              v163 = *v71 - v162;
            }

            v164 = (*v39 + v163) - (v160 * *v39);
            if (v160 == 1.0)
            {
              v164 = v163;
            }

            v165 = v162 + v164;
            if (v27)
            {
              v161 = (v161 + v160) - (v161 * v160);
              *v71 = v165;
LABEL_268:
              *v60 = v161;
              goto LABEL_270;
            }

            *v71 = v165;
LABEL_270:
            v166 = &v39[v660];
            if (v166 >= v62)
            {
              v167 = -v65;
            }

            else
            {
              v167 = 0;
            }

            v59 += 4 * v43 + 4 * v167;
            v39 = &v166[v167];
            v60 += 4 * v27;
            v71 += v660;
            --v159;
          }

          while (v159);
          if (v682)
          {
            v168 = &v82[v686];
            if (v168 >= v682)
            {
              v169 = -(v684 * v661);
            }

            else
            {
              v169 = 0;
            }

            v70 += 4 * v684 + 4 * v169;
            if (v168 >= v682)
            {
              v170 = -(v686 * v661);
            }

            else
            {
              v170 = 0;
            }

            v82 = &v168[v170];
            v62 += 4 * v170 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v158)
          {
            goto LABEL_734;
          }
        }

      case 26:
        v381 = v694[0];
        v82 = v673;
        while (1)
        {
          v382 = v12;
          do
          {
            v383 = 1.0;
            v384 = 1.0;
            if (v43)
            {
              v384 = *v59;
              if (*v59 <= 0.0)
              {
                goto LABEL_720;
              }
            }

            if (v27)
            {
              v383 = *v60;
              if (*v60 <= 0.0)
              {
                *v71 = *v39;
                goto LABEL_718;
              }
            }

            v385 = *v71;
            v386 = *v39 - (v383 * *v39);
            if (v383 == 1.0)
            {
              v386 = 0.0;
            }

            v387 = (v385 + v386) - (v384 * v385);
            if (v384 != 1.0)
            {
              v385 = v384 * v385;
              v386 = v387;
            }

            v388 = v385 + v386;
            if (v27)
            {
              v384 = (v384 + v383) - (v384 * v383);
              *v71 = v388;
LABEL_718:
              *v60 = v384;
              goto LABEL_720;
            }

            *v71 = v388;
LABEL_720:
            v389 = &v39[v660];
            if (v389 >= v62)
            {
              v390 = -v65;
            }

            else
            {
              v390 = 0;
            }

            v59 += 4 * v43 + 4 * v390;
            v39 = &v389[v390];
            v60 += 4 * v27;
            v71 += v660;
            --v382;
          }

          while (v382);
          if (v682)
          {
            v391 = &v82[v686];
            if (v391 >= v682)
            {
              v392 = -(v684 * v661);
            }

            else
            {
              v392 = 0;
            }

            v70 += 4 * v684 + 4 * v392;
            if (v391 >= v682)
            {
              v393 = -(v686 * v661);
            }

            else
            {
              v393 = 0;
            }

            v82 = &v391[v393];
            v62 += 4 * v393 + 4 * v686;
            v59 = v70;
            v39 = v82;
          }

          else
          {
            v39 += v686;
            v59 += 4 * v684;
          }

          v71 += v74;
          v60 += 4 * v688;
          if (!--v381)
          {
            goto LABEL_734;
          }
        }

      case 27:
        v81 = v694[0];
        v82 = v673;
        break;
      default:
        v672 = v70;
        v9 = v66;
        v56 = v62;
        goto LABEL_922;
    }

LABEL_75:
    v83 = v12;
    while (1)
    {
      v84 = 1.0;
      v85 = 1.0;
      if (!v43 || (v85 = *v59, *v59 > 0.0))
      {
        if (v27 && (v84 = *v60, *v60 <= 0.0))
        {
          *v71 = *v39;
        }

        else
        {
          v86 = *v39;
          v87 = *v71 - (v85 * *v71);
          if (v85 == 1.0)
          {
            v87 = 0.0;
          }

          v88 = (v86 + v87) - (v84 * v86);
          if (v84 != 1.0)
          {
            v86 = v84 * v86;
            v87 = v88;
          }

          v89 = v86 + v87;
          if (!v27)
          {
            *v71 = v89;
            goto LABEL_89;
          }

          v85 = (v85 + v84) - (v85 * v84);
          *v71 = v89;
        }

        *v60 = v85;
      }

LABEL_89:
      v90 = &v39[v660];
      if (v90 >= v62)
      {
        v91 = -v65;
      }

      else
      {
        v91 = 0;
      }

      v59 += 4 * v43 + 4 * v91;
      v39 = &v90[v91];
      v60 += 4 * v27;
      v71 += v660;
      if (!--v83)
      {
        if (v682)
        {
          v92 = &v82[v686];
          if (v92 >= v682)
          {
            v93 = -(v684 * v661);
          }

          else
          {
            v93 = 0;
          }

          v70 += 4 * v684 + 4 * v93;
          if (v92 >= v682)
          {
            v94 = -(v686 * v661);
          }

          else
          {
            v94 = 0;
          }

          v82 = &v92[v94];
          v62 += 4 * v94 + 4 * v686;
          v59 = v70;
          v39 = v82;
        }

        else
        {
          v39 += v686;
          v59 += 4 * v684;
        }

        v71 += v74;
        v60 += 4 * v688;
        if (!--v81)
        {
          goto LABEL_734;
        }

        goto LABEL_75;
      }
    }
  }

  v17 = *(v3 + 128);
  if ((v17 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      Wf_mark_constmask(v3, v9, v4);
    }

    else
    {
      Wf_mark_pixelmask(v3, v9);
    }
  }

  else
  {
    v28 = *(v3 + 112);
    v29 = *(v3 + 116);
    v30 = v3;
    v31 = (v28 + 15) & 0xFFFFFFF0;
    v32 = v31 * v29;
    if (v32 <= 4096)
    {
      v34 = v704;
    }

    else
    {
      v33 = malloc_type_malloc(v32, 0x100004077774924uLL);
      if (!v33)
      {
        return 1;
      }

      v34 = v33;
      v16 = *(v30 + 136);
      v17 = *(v30 + 128);
    }

    CGSConvertBitsToMask(v16, *(v30 + 124), v34, v31, v28, v29, v17);
    v47 = *(v30 + 112);
    v700 = *(v30 + 96);
    v701 = v47;
    v48 = *(v30 + 144);
    v702 = *(v30 + 128);
    v703 = v48;
    v49 = *(v30 + 48);
    v696 = *(v30 + 32);
    v697 = v49;
    v50 = *(v30 + 80);
    v698 = *(v30 + 64);
    v699 = v50;
    v51 = *v30;
    v52 = *(v30 + 16);
    *v694 = *v30;
    v695 = v52;
    HIDWORD(v701) = (v28 + 15) & 0xFFFFFFF0;
    *(&v702 + 1) = v34;
    if (BYTE1(v694[0]) << 8 == 1024)
    {
      Wf_mark_constmask(v694, v9, *&v51);
    }

    else
    {
      Wf_mark_pixelmask(v694, v9);
    }

    if (v34 != v704)
    {
LABEL_65:
      v73 = v34;
      goto LABEL_947;
    }
  }

  return 1;
}

float PDAoverlayPDA(float a1, float a2, float a3, float a4)
{
  v4 = (a1 * a3) + (a1 * a3);
  v5 = a1 < (a2 * 0.5);
  v6 = ((((a2 + 1.0) * a3) + (a1 * (a4 + 1.0))) - v4) - (a2 * a4);
  result = (((1.0 - a2) * a3) + (a1 * (1.0 - a4))) + v4;
  if (!v5)
  {
    return v6;
  }

  return result;
}

float PDAcolordodgePDA(float a1, float a2, float a3, float a4)
{
  v4 = 0.0;
  if (a1 != 0.0)
  {
    if (a3 == a4)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = (a1 * (a4 * a4)) / (a4 - a3);
    }
  }

  result = v4 + (a1 * (1.0 - a4));
  if (a4 == 1.0)
  {
    result = v4;
  }

  v6 = result + (a3 * (1.0 - a2));
  if (a2 != 1.0)
  {
    result = v6;
  }

  v7 = (a2 + a4) - (a2 * a4);
  if (result > v7)
  {
    return v7;
  }

  return result;
}

double PDAcolorburnPDA(float a1, float a2, float a3, float a4)
{
  v5 = (a2 * a4) + (a1 * (1.0 - a4));
  if (a4 == 1.0)
  {
    v5 = a2 * a4;
  }

  if (a2 == 1.0)
  {
    *&result = v5;
  }

  else
  {
    *&result = v5 + (a3 * (1.0 - a2));
  }

  v7 = a2 - a1;
  if (v7 != 0.0)
  {
    if (a3 == 0.0)
    {
      return 0.0;
    }

    *&result = *&result - ((v7 * (a4 * a4)) / a3);
    if (*&result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

float PDAhardlightPDA(float a1, float a2, float a3, float a4)
{
  v4 = (a1 * a3) + (a1 * a3);
  v5 = (((1.0 - a2) * a3) + (a1 * (1.0 - a4))) + v4;
  result = ((((a2 + 1.0) * a3) + (a1 * (a4 + 1.0))) - v4) - (a2 * a4);
  if (a3 <= (a4 * 0.5))
  {
    return v5;
  }

  return result;
}

float PDAsoftlightPDA(float a1, float a2, float a3, float a4)
{
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = ((a1 * a3) + (a1 * a3)) - (((a1 * a1) * ((a3 + a3) - a4)) / a2);
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }
  }

  result = v4 + (a1 * (1.0 - a4));
  if (a4 == 1.0)
  {
    result = v4;
  }

  v6 = result + (a3 * (1.0 - a2));
  if (a2 != 1.0)
  {
    return v6;
  }

  return result;
}

void Wf_mark_constmask(uint64_t a1, int a2, double a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 136);
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  if (v4)
  {
    v10 = *(a1 + 32) >> 2;
    v11 = (v4 + 4 * v10 * v9 + 4 * v8);
    v12 = 1;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    if (!v5)
    {
      return;
    }
  }

  v13 = *(a1 + 4);
  v14 = v10 - v13;
  if (v4)
  {
    v15 = v10 - v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = *(a1 + 8);
  v17 = *(a1 + 28) >> 2;
  v3.i32[0] = **(a1 + 88);
  v18 = (*(a1 + 40) + 4 * v17 * v9 + 4 * v8);
  v19 = *(a1 + 124);
  v20 = v5 + *(a1 + 108) * v19 + *(a1 + 104);
  v21 = v19 - v13;
  v22 = v17 - v13;
  v347 = v3.i32[0];
  v346 = v22;
  v23 = v21;
  v24 = v13;
  v25 = v15;
  switch(a2)
  {
    case 0:
      if (v4)
      {
        v26 = 4 * v12;
        do
        {
          v27 = v13;
          do
          {
            v28 = *v20;
            if (*v20)
            {
              if (v28 == 255)
              {
                *v11 = 0.0;
                *v18 = 0.0;
              }

              else
              {
                v29 = (v28 ^ 0xFFu) * 0.0039216;
                *v18 = v29 * *v18;
                *v11 = v29 * *v11;
              }
            }

            ++v20;
            ++v18;
            v11 = (v11 + v26);
            --v27;
          }

          while (v27);
          v20 += v21;
          v18 += v22;
          v11 += v15;
          --v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v260 = v13;
          do
          {
            v261 = *v20;
            if (*v20)
            {
              v262 = 0.0;
              if (v261 != 255)
              {
                v262 = ((v261 ^ 0xFFu) * 0.0039216) * *v18;
              }

              *v18 = v262;
            }

            ++v20;
            ++v18;
            --v260;
          }

          while (v260);
          v20 += v21;
          v18 += v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 1:
      v134 = v20 & 3;
      if (!v4)
      {
        v263 = -1 << (8 * v134);
        if ((v20 & 3) != 0)
        {
          v264 = v20 & 0xFC;
        }

        else
        {
          v264 = v20;
        }

        if ((v20 & 3) != 0)
        {
          v265 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v263 = -1;
          v265 = v20;
        }

        if ((v20 & 3) != 0)
        {
          v266 = &v18[-(v20 & 3)];
        }

        else
        {
          v266 = v18;
        }

        if ((v20 & 3) != 0)
        {
          v267 = v134 + v13;
        }

        else
        {
          v267 = v13;
        }

        if (((v267 + v264) & 3) != 0)
        {
          v268 = 4 - ((v267 + v264) & 3);
          v134 += v268;
          v269 = 0xFFFFFFFF >> (8 * v268);
          if (v267 >= 4)
          {
            v270 = v269;
          }

          else
          {
            v270 = 0;
          }

          if (v267 >= 4)
          {
            v269 = -1;
          }

          v263 &= v269;
        }

        else
        {
          v270 = 0;
        }

        v334 = v21 - v134;
        v335 = v267 >> 2;
        v336 = vdupq_lane_s32(v3, 0);
        v337 = v22 - v134;
        while (1)
        {
          v338 = *v265 & v263;
          v339 = v335;
          v340 = v270;
          if (!v338)
          {
            goto LABEL_558;
          }

LABEL_556:
          if (v338 == -1)
          {
            *v266 = v336;
            goto LABEL_558;
          }

          while (1)
          {
            if (v338)
            {
              v342 = *v3.i32;
              if (v338 != 255)
              {
                v342 = (*v3.i32 * (v338 * 0.0039216)) + (*v266 * (1.0 - (v338 * 0.0039216)));
              }

              *v266 = v342;
            }

            if (BYTE1(v338))
            {
              v343 = *v3.i32;
              if (BYTE1(v338) != 255)
              {
                v343 = (*v3.i32 * (BYTE1(v338) * 0.0039216)) + (v266[1] * (1.0 - (BYTE1(v338) * 0.0039216)));
              }

              v266[1] = v343;
            }

            if (BYTE2(v338))
            {
              v344 = *v3.i32;
              if (BYTE2(v338) != 255)
              {
                v344 = (*v3.i32 * (BYTE2(v338) * 0.0039216)) + (v266[2] * (1.0 - (BYTE2(v338) * 0.0039216)));
              }

              v266[2] = v344;
            }

            v345 = HIBYTE(v338);
            if (v345 == 255)
            {
              v266[3] = *v3.i32;
            }

            else if (v345)
            {
              v266[3] = (*v3.i32 * (v345 * 0.0039216)) + (v266[3] * (1.0 - (v345 * 0.0039216)));
            }

LABEL_558:
            while (1)
            {
              v341 = v339;
              v266 += 4;
              --v339;
              ++v265;
              if (v341 < 2)
              {
                break;
              }

              v338 = *v265;
              if (*v265)
              {
                goto LABEL_556;
              }
            }

            if (!v340)
            {
              break;
            }

            v340 = 0;
            v338 = *v265 & v270;
          }

          v265 = (v265 + v334);
          v266 += v337;
          if (!--v16)
          {
            return;
          }
        }
      }

      v135 = -1 << (8 * v134);
      v136 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      v137 = 4 * (v20 & 3);
      v138 = &v18[v137 / 0xFFFFFFFFFFFFFFFCLL];
      v139 = &v11[v137 / 0xFFFFFFFFFFFFFFFCLL];
      if ((v20 & 3) != 0)
      {
        v140 = v20 & 0xFC;
      }

      else
      {
        v140 = v20;
      }

      if ((v20 & 3) != 0)
      {
        v141 = v134 + v13;
      }

      else
      {
        v135 = -1;
        v136 = v20;
        v139 = v11;
        v138 = v18;
        v141 = v13;
      }

      if (((v141 + v140) & 3) != 0)
      {
        v142 = 4 - ((v141 + v140) & 3);
        v134 += v142;
        v143 = 0xFFFFFFFF >> (8 * v142);
        if (v141 >= 4)
        {
          v144 = v143;
        }

        else
        {
          v144 = 0;
        }

        if (v141 >= 4)
        {
          v143 = -1;
        }

        v135 &= v143;
      }

      else
      {
        v144 = 0;
      }

      v296 = v21 - v134;
      v297 = v22 - v134;
      v298 = v141 >> 2;
      v299 = v14 - v134;
      do
      {
        v300 = *v136 & v135;
        v301 = v298;
        v302 = v144;
        if (!v300)
        {
          goto LABEL_507;
        }

LABEL_505:
        if (v300 == -1)
        {
          *v138 = *v3.i32;
          *v139 = v7;
          v138[1] = *v3.i32;
          v139[1] = v7;
          v138[2] = *v3.i32;
          v139[2] = v7;
LABEL_528:
          v138[3] = *v3.i32;
          v139[3] = v7;
          goto LABEL_507;
        }

        while (1)
        {
          if (v300)
          {
            if (v300 == 255)
            {
              *v138 = *v3.i32;
              v304 = v7;
            }

            else
            {
              v305 = v300 * 0.0039216;
              v306 = *v3.i32 * v305;
              v307 = v7 * v305;
              v308 = 1.0 - v305;
              *v138 = v306 + (*v138 * v308);
              v304 = v307 + (*v139 * v308);
            }

            *v139 = v304;
          }

          if (BYTE1(v300))
          {
            if (BYTE1(v300) == 255)
            {
              v138[1] = *v3.i32;
              v309 = v7;
            }

            else
            {
              v310 = BYTE1(v300) * 0.0039216;
              v311 = *v3.i32 * v310;
              v312 = v7 * v310;
              v313 = 1.0 - v310;
              v138[1] = v311 + (v138[1] * v313);
              v309 = v312 + (v139[1] * v313);
            }

            v139[1] = v309;
          }

          if (BYTE2(v300))
          {
            if (BYTE2(v300) == 255)
            {
              v138[2] = *v3.i32;
              v314 = v7;
            }

            else
            {
              v315 = BYTE2(v300) * 0.0039216;
              v316 = *v3.i32 * v315;
              v317 = v7 * v315;
              v318 = 1.0 - v315;
              v138[2] = v316 + (v138[2] * v318);
              v314 = v317 + (v139[2] * v318);
            }

            v139[2] = v314;
          }

          v319 = HIBYTE(v300);
          if (v319 == 255)
          {
            goto LABEL_528;
          }

          if (v319)
          {
            v320 = v319 * 0.0039216;
            v321 = *v3.i32 * v320;
            v322 = v7 * v320;
            v323 = 1.0 - v320;
            v138[3] = v321 + (v138[3] * v323);
            v139[3] = v322 + (v139[3] * v323);
          }

LABEL_507:
          while (1)
          {
            v303 = v301;
            v138 += 4;
            v139 += 4;
            --v301;
            ++v136;
            if (v303 < 2)
            {
              break;
            }

            v300 = *v136;
            if (*v136)
            {
              goto LABEL_505;
            }
          }

          if (!v302)
          {
            break;
          }

          v302 = 0;
          v300 = *v136 & v144;
        }

        v136 = (v136 + v296);
        v138 += v297;
        v139 += v299;
        --v16;
      }

      while (v16);
      return;
    case 2:
      *&a3 = 1.0 - v7;
      v102 = v20 & 3;
      if (v4)
      {
        v103 = -1 << (8 * v102);
        v104 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        v105 = 4 * (v20 & 3);
        v106 = &v18[v105 / 0xFFFFFFFFFFFFFFFCLL];
        v107 = &v11[v105 / 0xFFFFFFFFFFFFFFFCLL];
        if ((v20 & 3) != 0)
        {
          v108 = v20 & 0xFC;
        }

        else
        {
          v108 = v20;
        }

        if ((v20 & 3) != 0)
        {
          v109 = v102 + v13;
        }

        else
        {
          v103 = -1;
          v104 = v20;
          v107 = v11;
          v106 = v18;
          v109 = v13;
        }

        if (((v109 + v108) & 3) != 0)
        {
          v110 = 4 - ((v109 + v108) & 3);
          v102 += v110;
          v111 = 0xFFFFFFFF >> (8 * v110);
          if (v109 >= 4)
          {
            v112 = v111;
          }

          else
          {
            v112 = 0;
          }

          if (v109 >= 4)
          {
            v111 = -1;
          }

          v103 &= v111;
        }

        else
        {
          v112 = 0;
        }

        v274 = v21 - v102;
        v275 = v22 - v102;
        v276 = v109 >> 2;
        v277 = v14 - v102;
        while (1)
        {
          v278 = *v104 & v103;
          v279 = v276;
          v280 = v112;
          if (!v278)
          {
            goto LABEL_486;
          }

LABEL_484:
          if (v278 == -1)
          {
            break;
          }

          while (1)
          {
            if (v278)
            {
              v283 = v278 * 0.0039216;
              v284 = *v3.i32 * v283;
              v285 = v7 * v283;
              *v106 = v284 + (*v106 * (1.0 - v285));
              *v107 = v285 + (*v107 * (1.0 - v285));
            }

            if ((v278 & 0xFF00) != 0)
            {
              v286 = BYTE1(v278) * 0.0039216;
              v287 = *v3.i32 * v286;
              v288 = v7 * v286;
              v106[1] = v287 + (v106[1] * (1.0 - v288));
              v107[1] = v288 + (v107[1] * (1.0 - v288));
            }

            if ((v278 & 0xFF0000) != 0)
            {
              v289 = BYTE2(v278) * 0.0039216;
              v290 = *v3.i32 * v289;
              v291 = v7 * v289;
              v106[2] = v290 + (v106[2] * (1.0 - v291));
              v107[2] = v291 + (v107[2] * (1.0 - v291));
            }

            v292 = HIBYTE(v278);
            if (v292)
            {
              v293 = v292 * 0.0039216;
              v294 = *v3.i32 * v293;
              v295 = v7 * v293;
              v106[3] = v294 + (v106[3] * (1.0 - v295));
              v281 = v295 + (v107[3] * (1.0 - v295));
              goto LABEL_499;
            }

LABEL_486:
            while (1)
            {
              v282 = v279;
              v106 += 4;
              v107 += 4;
              --v279;
              ++v104;
              if (v282 < 2)
              {
                break;
              }

              v278 = *v104;
              if (*v104)
              {
                goto LABEL_484;
              }
            }

            if (!v280)
            {
              break;
            }

            v280 = 0;
            v278 = *v104 & v112;
          }

          v104 = (v104 + v274);
          v106 += v275;
          v107 += v277;
          if (!--v16)
          {
            return;
          }
        }

        *v106 = *v3.i32 + (*v106 * *&a3);
        *v107 = v7 + (*v107 * *&a3);
        v106[1] = *v3.i32 + (v106[1] * *&a3);
        v107[1] = v7 + (v107[1] * *&a3);
        v106[2] = *v3.i32 + (v106[2] * *&a3);
        v107[2] = v7 + (v107[2] * *&a3);
        v106[3] = *v3.i32 + (v106[3] * *&a3);
        v281 = v7 + (v107[3] * *&a3);
LABEL_499:
        v107[3] = v281;
        goto LABEL_486;
      }

      v249 = v102 + v13;
      v250 = -1 << (8 * v102);
      if ((v20 & 3) != 0)
      {
        v251 = v20 & 0xFC;
      }

      else
      {
        v251 = v20;
      }

      if ((v20 & 3) != 0)
      {
        v252 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v250 = -1;
        v252 = v20;
      }

      if ((v20 & 3) != 0)
      {
        v253 = &v18[-(v20 & 3)];
      }

      else
      {
        v253 = v18;
      }

      if ((v20 & 3) == 0)
      {
        v249 = v13;
      }

      if (((v249 + v251) & 3) != 0)
      {
        v254 = 4 - ((v249 + v251) & 3);
        v102 += v254;
        v255 = 0xFFFFFFFF >> (8 * v254);
        if (v249 >= 4)
        {
          v256 = v255;
        }

        else
        {
          v256 = 0;
        }

        if (v249 >= 4)
        {
          v255 = -1;
        }

        v250 &= v255;
      }

      else
      {
        v256 = 0;
      }

      v324 = v249 >> 2;
      v325 = v21 - v102;
      v326 = vdupq_lane_s32(*&a3, 0);
      v327 = vdupq_lane_s32(v3, 0);
      v328 = v22 - v102;
      do
      {
        v329 = *v252 & v250;
        v330 = v324;
        v331 = v256;
        if (!v329)
        {
          goto LABEL_538;
        }

LABEL_536:
        if (v329 == -1)
        {
          *v253 = vmlaq_f32(v327, v326, *v253);
          goto LABEL_538;
        }

        while (1)
        {
          if (v329)
          {
            v253->f32[0] = (*v3.i32 * (v329 * 0.0039216)) + (v253->f32[0] * (1.0 - (v7 * (v329 * 0.0039216))));
          }

          if ((v329 & 0xFF00) != 0)
          {
            v253->f32[1] = (*v3.i32 * (BYTE1(v329) * 0.0039216)) + (v253->f32[1] * (1.0 - (v7 * (BYTE1(v329) * 0.0039216))));
          }

          if ((v329 & 0xFF0000) != 0)
          {
            v253->f32[2] = (*v3.i32 * (BYTE2(v329) * 0.0039216)) + (v253->f32[2] * (1.0 - (v7 * (BYTE2(v329) * 0.0039216))));
          }

          v333 = HIBYTE(v329);
          if (v333)
          {
            v253->f32[3] = (*v3.i32 * (v333 * 0.0039216)) + (v253->f32[3] * (1.0 - (v7 * (v333 * 0.0039216))));
          }

LABEL_538:
          while (1)
          {
            v332 = v330;
            ++v253;
            --v330;
            ++v252;
            if (v332 < 2)
            {
              break;
            }

            v329 = *v252;
            if (*v252)
            {
              goto LABEL_536;
            }
          }

          if (!v331)
          {
            break;
          }

          v331 = 0;
          v329 = *v252 & v256;
        }

        v252 = (v252 + v325);
        v253 = (v253 + 4 * v328);
        --v16;
      }

      while (v16);
      return;
    case 3:
      v121 = 4 * v12;
      do
      {
        v122 = v13;
        do
        {
          v123 = *v20;
          if (*v20)
          {
            if (v123 == 255)
            {
              v124 = v7 * *v11;
              *v18 = *v3.i32 * *v11;
            }

            else
            {
              v125 = v123 * 0.0039216;
              v126 = *v11;
              v127 = v125 * *v11;
              v128 = 1.0 - v125;
              *v18 = (*v3.i32 * v127) + (*v18 * v128);
              v124 = (v7 * v127) + (v126 * v128);
            }

            *v11 = v124;
          }

          ++v20;
          ++v18;
          v11 = (v11 + v121);
          --v122;
        }

        while (v122);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        --v16;
      }

      while (v16);
      return;
    case 4:
      v60 = 4 * v12;
      do
      {
        v61 = v13;
        do
        {
          v62 = *v20;
          if (*v20)
          {
            if (v62 == 255)
            {
              v63 = 1.0 - *v11;
              v64 = *v3.i32 * v63;
              v65 = v7 * v63;
              *v18 = v64;
            }

            else
            {
              v66 = v62 * 0.0039216;
              v67 = *v11;
              v68 = v66 * (1.0 - *v11);
              v69 = 1.0 - v66;
              *v18 = (*v3.i32 * v68) + (*v18 * v69);
              v65 = (v7 * v68) + (v67 * v69);
            }

            *v11 = v65;
          }

          ++v20;
          ++v18;
          v11 = (v11 + v60);
          --v61;
        }

        while (v61);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        --v16;
      }

      while (v16);
      return;
    case 5:
      v161 = 4 * v12;
      do
      {
        v162 = v13;
        do
        {
          if (*v20)
          {
            v163 = *v11;
            v164 = *v20 * 0.0039216;
            v165 = *v3.i32 * v164;
            v166 = v7 * v164;
            *v18 = ((1.0 - v166) * *v18) + (v165 * *v11);
            *v11 = ((1.0 - v166) * v163) + (v166 * v163);
          }

          ++v20;
          ++v18;
          v11 = (v11 + v161);
          --v162;
        }

        while (v162);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        --v16;
      }

      while (v16);
      return;
    case 6:
      v182 = 4 * v12;
      while (1)
      {
        v183 = v13;
        do
        {
          v184 = *v20;
          if (!*v20)
          {
            goto LABEL_304;
          }

          v185 = *v11;
          v186 = 1.0 - *v11;
          if (v186 >= 1.0)
          {
            v189 = v184 * 0.0039216;
            v190 = *v3.i32 * v189;
            v188 = v7 * v189;
            *v18 = v190;
          }

          else
          {
            if (v186 <= 0.0)
            {
              goto LABEL_304;
            }

            v187 = v184 * 0.0039216;
            *v18 = *v18 + ((*v3.i32 * v187) * v186);
            v188 = v185 + ((v7 * v187) * v186);
          }

          *v11 = v188;
LABEL_304:
          ++v20;
          ++v18;
          v11 = (v11 + v182);
          --v183;
        }

        while (v183);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 7:
      if (v4)
      {
        v129 = 4 * v12;
        do
        {
          v130 = v13;
          do
          {
            v131 = *v20;
            if (*v20)
            {
              if (v131 == 255)
              {
                v132 = v7 * *v18;
                v133 = v7;
              }

              else
              {
                v133 = (v7 * (v131 * 0.0039216)) + (1.0 - (v131 * 0.0039216));
                v132 = v133 * *v18;
              }

              *v18 = v132;
              *v11 = v133 * *v11;
            }

            ++v20;
            ++v18;
            v11 = (v11 + v129);
            --v130;
          }

          while (v130);
          v20 += v21;
          v18 += v22;
          v11 += v15;
          --v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v257 = v13;
          do
          {
            v258 = *v20;
            if (*v20)
            {
              if (v258 == 255)
              {
                v259 = v7 * *v18;
              }

              else
              {
                v259 = ((v7 * (v258 * 0.0039216)) + (1.0 - (v258 * 0.0039216))) * *v18;
              }

              *v18 = v259;
            }

            ++v20;
            ++v18;
            --v257;
          }

          while (v257);
          v20 += v21;
          v18 += v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 8:
      v206 = 1.0 - v7;
      if (v4)
      {
        v207 = 4 * v12;
        do
        {
          v208 = v13;
          do
          {
            v209 = *v20;
            if (*v20)
            {
              if (v209 == 255)
              {
                v210 = v206 * *v18;
                v211 = 1.0 - v7;
              }

              else
              {
                v211 = (v7 * (v209 * -0.0039216)) + 1.0;
                v210 = v211 * *v18;
              }

              *v18 = v210;
              *v11 = v211 * *v11;
            }

            ++v20;
            ++v18;
            v11 = (v11 + v207);
            --v208;
          }

          while (v208);
          v20 += v21;
          v18 += v22;
          v11 += v15;
          --v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v271 = v13;
          do
          {
            v272 = *v20;
            if (*v20)
            {
              if (v272 == 255)
              {
                v273 = v206 * *v18;
              }

              else
              {
                v273 = ((v7 * (v272 * -0.0039216)) + 1.0) * *v18;
              }

              *v18 = v273;
            }

            ++v20;
            ++v18;
            --v271;
          }

          while (v271);
          v20 += v21;
          v18 += v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 9:
      v76 = 4 * v12;
      do
      {
        v77 = v13;
        do
        {
          if (*v20)
          {
            v78 = *v20 * 0.0039216;
            v79 = *v11;
            v80 = *v3.i32 * v78;
            v81 = v7 * v78;
            v82 = 1.0 - *v11;
            v83 = (1.0 - v78) + (v7 * v78);
            *v18 = (v83 * *v18) + (v80 * v82);
            *v11 = (v83 * v79) + (v81 * v82);
          }

          ++v20;
          ++v18;
          v11 = (v11 + v76);
          --v77;
        }

        while (v77);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        --v16;
      }

      while (v16);
      return;
    case 10:
      v199 = 4 * v12;
      do
      {
        v200 = v13;
        do
        {
          if (*v20)
          {
            v201 = *v11;
            v202 = *v20 * 0.0039216;
            v203 = *v3.i32 * v202;
            v204 = v7 * v202;
            v205 = 1.0 - *v11;
            *v18 = ((1.0 - v204) * *v18) + (v203 * v205);
            *v11 = ((1.0 - v204) * v201) + (v204 * v205);
          }

          ++v20;
          ++v18;
          v11 = (v11 + v199);
          --v200;
        }

        while (v200);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        --v16;
      }

      while (v16);
      return;
    case 11:
      if (v4)
      {
        v52 = 4 * v12;
        do
        {
          v53 = v13;
          do
          {
            if (*v20)
            {
              v54 = *v20 * 0.0039216;
              v55 = *v3.i32 * v54;
              v56 = v7 * v54;
              v57 = v56 + *v11;
              v58 = (v56 - v55) + (*v11 - *v18);
              if (v57 <= 1.0)
              {
                v59 = v57;
              }

              else
              {
                v59 = 1.0;
              }

              *v11 = v59;
              *v18 = v59 - v58;
            }

            ++v20;
            ++v18;
            v11 = (v11 + v52);
            --v53;
          }

          while (v53);
          v20 += v21;
          v18 += v22;
          v11 += v15;
          --v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v247 = v13;
          do
          {
            if (*v20)
            {
              *v18 = 1.0 - (((v7 * (*v20 * 0.0039216)) - (*v3.i32 * (*v20 * 0.0039216))) + (1.0 - *v18));
            }

            ++v20;
            ++v18;
            --v247;
          }

          while (v247);
          v20 += v21;
          v18 += v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 12:
      if (v4)
      {
        v70 = 4 * v12;
        do
        {
          v71 = v13;
          do
          {
            if (*v20)
            {
              v72 = *v20 * 0.0039216;
              v73 = *v3.i32 * v72;
              v74 = (v7 * v72) + *v11;
              v75 = v73 + *v18;
              if (v74 > 1.0)
              {
                v74 = 1.0;
              }

              *v18 = v75;
              *v11 = v74;
            }

            ++v20;
            ++v18;
            v11 = (v11 + v70);
            --v71;
          }

          while (v71);
          v20 += v21;
          v18 += v22;
          v11 += v15;
          --v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v248 = v13;
          do
          {
            if (*v20)
            {
              *v18 = (*v3.i32 * (*v20 * 0.0039216)) + *v18;
            }

            ++v20;
            ++v18;
            --v248;
          }

          while (v248);
          v20 += v21;
          v18 += v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 13:
      v175 = 4 * v12;
      while (1)
      {
        v176 = v13;
        do
        {
          if (*v20)
          {
            v177 = *v20 * 0.0039216;
            v178 = v7 * v177;
            if ((v7 * v177) > 0.0)
            {
              v179 = *v3.i32 * v177;
              if (v4)
              {
                v180 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_291;
                }
              }

              else
              {
                v180 = 1.0;
              }

              v181 = (v179 * *v18) + (*v18 * (1.0 - v178));
              if (v178 == 1.0)
              {
                v181 = v179 * *v18;
              }

              v179 = v181 + (v179 * (1.0 - v180));
              if (v180 == 1.0)
              {
                v179 = v181;
              }

              if (v4)
              {
                v178 = (v178 + v180) - (v180 * v178);
LABEL_291:
                *v18 = v179;
                *v11 = v178;
                goto LABEL_293;
              }

              *v18 = v179;
            }
          }

LABEL_293:
          ++v20;
          ++v18;
          v11 = (v11 + v175);
          --v176;
        }

        while (v176);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 14:
      v46 = 4 * v12;
      while (1)
      {
        v47 = v13;
        do
        {
          if (*v20)
          {
            v48 = *v20 * 0.0039216;
            v49 = v7 * v48;
            if ((v7 * v48) > 0.0)
            {
              v50 = *v3.i32 * v48;
              if (v4)
              {
                v51 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v51 = 1.0;
              }

              v50 = *v18 + (v50 * (1.0 - *v18));
              if (v4)
              {
                v49 = (v49 + v51) - (v51 * v49);
LABEL_72:
                *v18 = v50;
                *v11 = v49;
                goto LABEL_74;
              }

              *v18 = v50;
            }
          }

LABEL_74:
          ++v20;
          ++v18;
          v11 = (v11 + v46);
          --v47;
        }

        while (v47);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 15:
      v113 = 4 * v12;
      while (1)
      {
        v114 = v13;
        do
        {
          if (*v20)
          {
            v115 = *v20 * 0.0039216;
            v116 = v7 * v115;
            if ((v7 * v115) > 0.0)
            {
              v117 = *v3.i32 * v115;
              if (v4)
              {
                v118 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_179;
                }
              }

              else
              {
                v118 = 1.0;
              }

              v119 = PDAoverlayPDA(*v18, v118, v117, v116);
              v117 = v119;
              if (v4)
              {
                v116 = v120;
                v3.i32[0] = v347;
LABEL_179:
                *v18 = v117;
                *v11 = v116;
                goto LABEL_181;
              }

              *v18 = v119;
              v3.i32[0] = v347;
            }
          }

LABEL_181:
          ++v20;
          ++v18;
          v11 = (v11 + v113);
          --v114;
        }

        while (v114);
        v20 += v23;
        v18 += v346;
        v11 += v25;
        --v16;
        v13 = v24;
        if (!v16)
        {
          return;
        }
      }

    case 16:
      v38 = 4 * v12;
      while (1)
      {
        v39 = v13;
        do
        {
          if (*v20)
          {
            v40 = *v20 * 0.0039216;
            v41 = v7 * v40;
            if ((v7 * v40) > 0.0)
            {
              v42 = *v3.i32 * v40;
              if (v4)
              {
                v43 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v43 = 1.0;
              }

              v44 = v41 * *v18;
              if ((v42 * v43) < v44)
              {
                v44 = v42 * v43;
              }

              v45 = v44 + (*v18 * (1.0 - v41));
              if (v41 == 1.0)
              {
                v45 = v44;
              }

              v42 = v45 + (v42 * (1.0 - v43));
              if (v43 == 1.0)
              {
                v42 = v45;
              }

              if (v4)
              {
                v41 = (v41 + v43) - (v43 * v41);
LABEL_57:
                *v18 = v42;
                *v11 = v41;
                goto LABEL_59;
              }

              *v18 = v42;
            }
          }

LABEL_59:
          ++v20;
          ++v18;
          v11 = (v11 + v38);
          --v39;
        }

        while (v39);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 17:
      v145 = 4 * v12;
      while (1)
      {
        v146 = v13;
        do
        {
          if (*v20)
          {
            v147 = *v20 * 0.0039216;
            v148 = v7 * v147;
            if ((v7 * v147) > 0.0)
            {
              v149 = *v3.i32 * v147;
              if (v4)
              {
                v150 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_235;
                }
              }

              else
              {
                v150 = 1.0;
              }

              v151 = v148 * *v18;
              if ((v149 * v150) > v151)
              {
                v151 = v149 * v150;
              }

              v152 = v151 + (*v18 * (1.0 - v148));
              if (v148 == 1.0)
              {
                v152 = v151;
              }

              v149 = v152 + (v149 * (1.0 - v150));
              if (v150 == 1.0)
              {
                v149 = v152;
              }

              if (v4)
              {
                v148 = (v148 + v150) - (v150 * v148);
LABEL_235:
                *v18 = v149;
                *v11 = v148;
                goto LABEL_237;
              }

              *v18 = v149;
            }
          }

LABEL_237:
          ++v20;
          ++v18;
          v11 = (v11 + v145);
          --v146;
        }

        while (v146);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 18:
      v191 = 4 * v12;
      while (1)
      {
        v192 = v13;
        do
        {
          if (*v20)
          {
            v193 = *v20 * 0.0039216;
            v194 = v7 * v193;
            if ((v7 * v193) > 0.0)
            {
              v195 = *v3.i32 * v193;
              if (v4)
              {
                v196 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_317;
                }
              }

              else
              {
                v196 = 1.0;
              }

              v197 = PDAcolordodgePDA(*v18, v196, v195, v194);
              v195 = v197;
              if (v4)
              {
                v194 = v198;
                v3.i32[0] = v347;
LABEL_317:
                *v18 = v195;
                *v11 = v194;
                goto LABEL_319;
              }

              *v18 = v197;
              v3.i32[0] = v347;
            }
          }

LABEL_319:
          ++v20;
          ++v18;
          v11 = (v11 + v191);
          --v192;
        }

        while (v192);
        v20 += v23;
        v18 += v346;
        v11 += v25;
        --v16;
        v13 = v24;
        if (!v16)
        {
          return;
        }
      }

    case 19:
      v224 = 4 * v12;
      while (1)
      {
        v225 = v13;
        do
        {
          if (*v20)
          {
            v226 = *v20 * 0.0039216;
            v227 = v7 * v226;
            if ((v7 * v226) > 0.0)
            {
              v228 = *v3.i32 * v226;
              if (v4)
              {
                v229 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_367;
                }
              }

              else
              {
                v229 = 1.0;
              }

              v230 = PDAcolorburnPDA(*v18, v229, v228, v227);
              v228 = *&v230;
              if (v4)
              {
                v227 = v231;
                v3.i32[0] = v347;
LABEL_367:
                *v18 = v228;
                *v11 = v227;
                goto LABEL_369;
              }

              *v18 = *&v230;
              v3.i32[0] = v347;
            }
          }

LABEL_369:
          ++v20;
          ++v18;
          v11 = (v11 + v224);
          --v225;
        }

        while (v225);
        v20 += v23;
        v18 += v346;
        v11 += v25;
        --v16;
        v13 = v24;
        if (!v16)
        {
          return;
        }
      }

    case 20:
      v153 = 4 * v12;
      while (1)
      {
        v154 = v13;
        do
        {
          if (*v20)
          {
            v155 = *v20 * 0.0039216;
            v156 = v7 * v155;
            if ((v7 * v155) > 0.0)
            {
              v157 = *v3.i32 * v155;
              if (v4)
              {
                v158 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_250;
                }
              }

              else
              {
                v158 = 1.0;
              }

              v159 = PDAsoftlightPDA(*v18, v158, v157, v156);
              v157 = v159;
              if (v4)
              {
                v156 = v160;
                v3.i32[0] = v347;
LABEL_250:
                *v18 = v157;
                *v11 = v156;
                goto LABEL_252;
              }

              *v18 = v159;
              v3.i32[0] = v347;
            }
          }

LABEL_252:
          ++v20;
          ++v18;
          v11 = (v11 + v153);
          --v154;
        }

        while (v154);
        v20 += v23;
        v18 += v346;
        v11 += v25;
        --v16;
        v13 = v24;
        if (!v16)
        {
          return;
        }
      }

    case 21:
      v167 = 4 * v12;
      while (1)
      {
        v168 = v13;
        do
        {
          if (*v20)
          {
            v169 = *v20 * 0.0039216;
            v170 = v7 * v169;
            if ((v7 * v169) > 0.0)
            {
              v171 = *v3.i32 * v169;
              if (v4)
              {
                v172 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v172 = 1.0;
              }

              v173 = PDAhardlightPDA(*v18, v172, v171, v170);
              v171 = v173;
              if (v4)
              {
                v170 = v174;
                v3.i32[0] = v347;
LABEL_272:
                *v18 = v171;
                *v11 = v170;
                goto LABEL_274;
              }

              *v18 = v173;
              v3.i32[0] = v347;
            }
          }

LABEL_274:
          ++v20;
          ++v18;
          v11 = (v11 + v167);
          --v168;
        }

        while (v168);
        v20 += v23;
        v18 += v346;
        v11 += v25;
        --v16;
        v13 = v24;
        if (!v16)
        {
          return;
        }
      }

    case 22:
      v212 = 4 * v12;
      while (1)
      {
        v213 = v13;
        do
        {
          if (*v20)
          {
            v214 = *v20 * 0.0039216;
            v215 = v7 * v214;
            if ((v7 * v214) > 0.0)
            {
              v216 = *v3.i32 * v214;
              if (v4)
              {
                v217 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_352;
                }
              }

              else
              {
                v217 = 1.0;
              }

              v218 = v216 + *v18;
              v219 = v215 * *v18;
              v220 = v216 * v217;
              v221 = v218 - v219;
              v222 = v219 - v220;
              v223 = v221 - v220;
              if (v222 < 0.0)
              {
                v222 = -v222;
              }

              v216 = v223 + v222;
              if (v4)
              {
                v215 = (v215 + v217) - (v217 * v215);
LABEL_352:
                *v18 = v216;
                *v11 = v215;
                goto LABEL_354;
              }

              *v18 = v216;
            }
          }

LABEL_354:
          ++v20;
          ++v18;
          v11 = (v11 + v212);
          --v213;
        }

        while (v213);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 23:
      v232 = 4 * v12;
      while (1)
      {
        v233 = v13;
        do
        {
          if (*v20)
          {
            v234 = *v20 * 0.0039216;
            v235 = v7 * v234;
            if ((v7 * v234) > 0.0)
            {
              v236 = *v3.i32 * v234;
              if (v4)
              {
                v237 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_382;
                }
              }

              else
              {
                v237 = 1.0;
              }

              v236 = (v236 + *v18) + ((v236 * *v18) * -2.0);
              if (v4)
              {
                v235 = (v235 + v237) - (v237 * v235);
LABEL_382:
                *v18 = v236;
                *v11 = v235;
                goto LABEL_384;
              }

              *v18 = v236;
            }
          }

LABEL_384:
          ++v20;
          ++v18;
          v11 = (v11 + v232);
          --v233;
        }

        while (v233);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 24:
      v93 = 4 * v12;
      while (1)
      {
        v94 = v13;
        do
        {
          if (*v20)
          {
            v95 = *v20 * 0.0039216;
            v96 = v7 * v95;
            if ((v7 * v95) > 0.0)
            {
              v97 = *v3.i32 * v95;
              if (v4)
              {
                v98 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_150;
                }
              }

              else
              {
                v98 = 1.0;
              }

              v99 = *v18;
              if (v96 == 1.0)
              {
                v100 = 0.0;
              }

              else
              {
                v99 = v96 * *v18;
                v100 = *v18 - v99;
              }

              v101 = (v97 + v100) - (v97 * v98);
              if (v98 == 1.0)
              {
                v101 = v100;
              }

              v97 = v99 + v101;
              if (v4)
              {
                v96 = (v96 + v98) - (v96 * v98);
LABEL_150:
                *v18 = v97;
                *v11 = v96;
                goto LABEL_152;
              }

              *v18 = v97;
            }
          }

LABEL_152:
          ++v20;
          ++v18;
          v11 = (v11 + v93);
          --v94;
        }

        while (v94);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 25:
      v84 = 4 * v12;
      while (1)
      {
        v85 = v13;
        do
        {
          if (*v20)
          {
            v86 = *v20 * 0.0039216;
            v87 = v7 * v86;
            if ((v7 * v86) > 0.0)
            {
              v88 = *v3.i32 * v86;
              if (v4)
              {
                v89 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_130;
                }
              }

              else
              {
                v89 = 1.0;
              }

              v90 = *v18;
              if (v87 == 1.0)
              {
                v91 = 0.0;
              }

              else
              {
                v90 = v87 * *v18;
                v91 = *v18 - v90;
              }

              v92 = (v88 + v91) - (v88 * v89);
              if (v89 == 1.0)
              {
                v92 = v91;
              }

              v88 = v90 + v92;
              if (v4)
              {
                v87 = (v87 + v89) - (v87 * v89);
LABEL_130:
                *v18 = v88;
                *v11 = v87;
                goto LABEL_132;
              }

              *v18 = v88;
            }
          }

LABEL_132:
          ++v20;
          ++v18;
          v11 = (v11 + v84);
          --v85;
        }

        while (v85);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        if (!--v16)
        {
          return;
        }
      }

    case 26:
      v238 = 4 * v12;
      do
      {
        v239 = v13;
        do
        {
          if (*v20)
          {
            v240 = *v20 * 0.0039216;
            v241 = v7 * v240;
            if ((v7 * v240) > 0.0)
            {
              v242 = *v3.i32 * v240;
              if (v4)
              {
                v243 = *v11;
                if (*v11 <= 0.0)
                {
                  goto LABEL_401;
                }
              }

              else
              {
                v243 = 1.0;
              }

              v244 = *v18;
              v245 = v242 - (v242 * v243);
              if (v243 == 1.0)
              {
                v245 = 0.0;
              }

              v246 = (v244 + v245) - (v241 * v244);
              if (v241 != 1.0)
              {
                v244 = v241 * v244;
                v245 = v246;
              }

              v242 = v244 + v245;
              if (v4)
              {
                v241 = (v241 + v243) - (v241 * v243);
LABEL_401:
                *v18 = v242;
                *v11 = v241;
                goto LABEL_403;
              }

              *v18 = v242;
            }
          }

LABEL_403:
          ++v20;
          ++v18;
          v11 = (v11 + v238);
          --v239;
        }

        while (v239);
        v20 += v21;
        v18 += v22;
        v11 += v15;
        --v16;
      }

      while (v16);
      return;
    case 27:
      v30 = 4 * v12;
      break;
    default:
      return;
  }

LABEL_23:
  v31 = v13;
  while (1)
  {
    if (!*v20)
    {
      goto LABEL_38;
    }

    v32 = *v20 * 0.0039216;
    v33 = v7 * v32;
    if ((v7 * v32) <= 0.0)
    {
      goto LABEL_38;
    }

    v34 = *v3.i32 * v32;
    if (v4)
    {
      v35 = *v11;
      if (*v11 <= 0.0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v35 = 1.0;
    }

    v36 = *v18 - (v33 * *v18);
    if (v33 == 1.0)
    {
      v36 = 0.0;
    }

    v37 = (v34 + v36) - (v34 * v35);
    if (v35 != 1.0)
    {
      v34 = v34 * v35;
      v36 = v37;
    }

    v34 = v34 + v36;
    if (!v4)
    {
      *v18 = v34;
      goto LABEL_38;
    }

    v33 = (v33 + v35) - (v33 * v35);
LABEL_36:
    *v18 = v34;
    *v11 = v33;
LABEL_38:
    ++v20;
    ++v18;
    v11 = (v11 + v30);
    if (!--v31)
    {
      v20 += v21;
      v18 += v22;
      v11 += v15;
      if (!--v16)
      {
        return;
      }

      goto LABEL_23;
    }
  }
}

void Wf_mark_pixelmask(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 136);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  if (v2)
  {
    v6 = *(a1 + 32) >> 2;
    v7 = (v2 + 4 * v6 * v5 + 4 * v4);
    v641 = -1;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v641 = 0;
    if (!v3)
    {
      return;
    }
  }

  v9 = *(a1 + 4);
  v8 = *(a1 + 8);
  v10 = *(a1 + 96);
  v642 = *(a1 + 88);
  v11 = *(a1 + 28) >> 2;
  v12 = (*(a1 + 40) + 4 * v11 * v5 + 4 * v4);
  v13 = *(a1 + 124);
  v14 = (v3 + *(a1 + 108) * v13 + *(a1 + 104));
  v15 = *(a1 + 56);
  v16 = *(a1 + 60);
  v17 = *(a1 + 76);
  if ((*a1 & 0xFF00) == 0x100)
  {
    v18 = v17 >> 2;
    if (v10)
    {
      v19 = *(a1 + 80) >> 2;
      v10 += 4 * v19 * v16 + 4 * v15;
      v20 = -1;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v23 = (v642 + 4 * v18 * v16 + 4 * v15);
    if (v18 == v11)
    {
      v24 = (v12 - v23) >> 2;
      if (v24 >= 1)
      {
        if (v24 <= v9)
        {
          v12 += v9 - 1;
          v23 += 4 * v9 - 4;
          v14 += v9 - 1;
          v7 += v641 & (v9 - 1);
          v27 = -1;
          v18 = *(a1 + 28) >> 2;
          v10 += 4 * (v20 & (v9 - 1));
          goto LABEL_16;
        }

        v25 = v8 - 1;
        v26 = &v23[4 * v11 * v25];
        if (v12 <= &v26[4 * v9 - 4])
        {
          v12 += v11 * v25;
          v18 = -v11;
          v14 += v13 * v25;
          v13 = -v13;
          v7 += v6 * v25;
          v6 = -v6;
          v641 &= 1u;
          v10 += 4 * v19 * v25;
          v19 = -v19;
          v20 &= 1u;
          v27 = 1;
          v23 = v26;
          v11 = -v11;
          goto LABEL_16;
        }
      }
    }

    v641 &= 1u;
    v20 &= 1u;
    v27 = 1;
LABEL_16:
    v28 = 0;
    v29 = 0;
    v642 = -1;
    v22 = v19;
    v21 = v18;
    goto LABEL_19;
  }

  v21 = *(a1 + 64);
  v22 = *(a1 + 68);
  v18 = v17 >> 2;
  if (v10)
  {
    v19 = *(a1 + 80) >> 2;
    v20 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v23 = *(a1 + 88);
  v28 = v642 + 4 * v18 * v22;
  v641 &= 1u;
  v27 = 1;
  v29 = v23;
LABEL_19:
  v30 = v27 * v9;
  if (v28)
  {
    v31 = v16 % v22;
    v32 = &v23[4 * v18 * v31];
    v33 = v15 % v21;
    v23 = &v32[4 * v33];
    v34 = v21;
    v642 = &v32[4 * v21];
    v35 = v10 + 4 * v19 * v31 + 4 * v33;
    if (v20)
    {
      v10 = v35;
    }

    v640 = &v32[4 * v33];
  }

  else
  {
    v640 = v29;
    v18 -= v30;
    v19 -= v20 * v9;
    v34 = v21;
  }

  v36 = v13 - v30;
  v37 = v11 - v30;
  v638 = v6 - v641 * v9;
  v639 = v20;
  v38 = v27;
  v620 = v18;
  v621 = v9;
  v618 = v36;
  v619 = v28;
  v616 = v19;
  v617 = v37;
  switch(a2)
  {
    case 0:
      if (v641)
      {
        do
        {
          v39 = v9;
          do
          {
            v40 = *v14;
            if (*v14)
            {
              if (v40 == 255)
              {
                *v7 = 0.0;
                *v12 = 0.0;
              }

              else
              {
                v41 = (v40 * -0.0039216) + 1.0;
                *v12 = v41 * *v12;
                *v7 = v41 * *v7;
              }
            }

            v14 += v27;
            v7 += v641;
            v12 += v27;
            --v39;
          }

          while (v39);
          v14 += v36;
          v12 += v37;
          v7 += v638;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v568 = v9;
          do
          {
            v569 = *v14;
            if (*v14)
            {
              v570 = 0.0;
              if (v569 != 255)
              {
                v570 = ((v569 * -0.0039216) + 1.0) * *v12;
              }

              *v12 = v570;
            }

            v14 += v27;
            v12 += v27;
            --v568;
          }

          while (v568);
          v14 += v36;
          v12 += v37;
          --v8;
        }

        while (v8);
      }

      return;
    case 1:
      if (v641)
      {
        if (v20)
        {
          v269 = -v34;
          v270 = -(v18 * v22);
          v271 = -(v19 * v22);
          v272 = v10;
          do
          {
            v273 = v9;
            do
            {
              v274 = *v14;
              if (*v14)
              {
                if (v274 == 255)
                {
                  *v12 = *v23;
                  v275 = *v272;
                }

                else
                {
                  v276 = v274 * 0.0039216;
                  *v12 = ((1.0 - v276) * *v12) + (*v23 * v276);
                  v275 = ((1.0 - v276) * *v7) + (*v272 * v276);
                }

                *v7 = v275;
              }

              v14 += v27;
              v277 = &v23[4 * v27];
              v278 = &v272[v20];
              if (v277 >= v642)
              {
                v279 = v269;
              }

              else
              {
                v279 = 0;
              }

              v272 = &v278[v279];
              v23 = &v277[4 * v279];
              v7 += v641;
              v12 += v27;
              --v273;
            }

            while (v273);
            if (v28)
            {
              v280 = &v640[4 * v18];
              if (v280 >= v28)
              {
                v281 = v271;
              }

              else
              {
                v281 = 0;
              }

              v10 += 4 * v19 + 4 * v281;
              if (v280 >= v28)
              {
                v282 = v270;
              }

              else
              {
                v282 = 0;
              }

              v23 = &v280[4 * v282];
              v642 += 4 * v282 + 4 * v18;
              v272 = v10;
              v640 = v23;
            }

            else
            {
              v23 += 4 * v18;
              v272 += v19;
            }

            v14 += v36;
            v12 += v37;
            v7 += v638;
            --v8;
          }

          while (v8);
        }

        else
        {
          v594 = -(v18 * v22);
          do
          {
            v595 = v9;
            do
            {
              v596 = *v14;
              if (*v14)
              {
                if (v596 == 255)
                {
                  *v12 = *v23;
                  v597 = 1.0;
                }

                else
                {
                  v598 = v596 * 0.0039216;
                  *v12 = ((1.0 - v598) * *v12) + (*v23 * v598);
                  v597 = v598 + ((1.0 - v598) * *v7);
                }

                *v7 = v597;
              }

              v14 += v38;
              v599 = &v23[4 * v38];
              if (v599 >= v642)
              {
                v600 = -v34;
              }

              else
              {
                v600 = 0;
              }

              v23 = &v599[4 * v600];
              v7 += v641;
              v12 += v38;
              --v595;
            }

            while (v595);
            v14 += v36;
            v12 += v37;
            v7 += v638;
            v601 = v640;
            v602 = &v640[4 * v18];
            if (v602 >= v28)
            {
              v603 = v594;
            }

            else
            {
              v603 = 0;
            }

            v604 = v642;
            v605 = &v602[4 * v603];
            v606 = v642 + 4 * v603 + 4 * v18;
            if (v28)
            {
              v604 = v606;
            }

            v642 = v604;
            if (v28)
            {
              v601 = v605;
            }

            v640 = v601;
            if (v28)
            {
              v23 = v605;
            }

            else
            {
              v23 += 4 * v18;
            }

            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v571 = -v34;
        v572 = -(v18 * v22);
        do
        {
          v573 = v9;
          do
          {
            v574 = *v14;
            if (*v14)
            {
              if (v574 == 255)
              {
                v575 = *v23;
              }

              else
              {
                v575 = ((1.0 - (v574 * 0.0039216)) * *v12) + (*v23 * (v574 * 0.0039216));
              }

              *v12 = v575;
            }

            v14 += v38;
            v576 = &v23[4 * v38];
            if (v576 >= v642)
            {
              v577 = v571;
            }

            else
            {
              v577 = 0;
            }

            v23 = &v576[4 * v577];
            v12 += v38;
            --v573;
          }

          while (v573);
          v14 += v36;
          v12 += v37;
          v578 = v640;
          v579 = &v640[4 * v18];
          if (v579 >= v28)
          {
            v580 = v572;
          }

          else
          {
            v580 = 0;
          }

          v581 = v642;
          v582 = &v579[4 * v580];
          v583 = v642 + 4 * v580 + 4 * v18;
          if (v28)
          {
            v581 = v583;
          }

          v642 = v581;
          if (v28)
          {
            v578 = v582;
          }

          v640 = v578;
          if (v28)
          {
            v23 = v582;
          }

          else
          {
            v23 += 4 * v18;
          }

          --v8;
        }

        while (v8);
      }

      return;
    case 2:
      v199 = -v34;
      v200 = -(v18 * v22);
      v201 = -(v19 * v22);
      if (v641)
      {
        v202 = v10;
        while (1)
        {
          v203 = v9;
          do
          {
            v204 = *v14;
            if (!*v14)
            {
              goto LABEL_315;
            }

            if (v204 == 255)
            {
              v205 = *v202;
              if (*v202 >= 1.0)
              {
                *v12 = *v23;
                goto LABEL_314;
              }

              if (v205 <= 0.0)
              {
                goto LABEL_315;
              }

              v206 = *v23;
            }

            else
            {
              v207 = v204 * 0.0039216;
              v205 = v207 * *v202;
              if (v205 <= 0.0)
              {
                goto LABEL_315;
              }

              v206 = v207 * *v23;
            }

            *v12 = v206 + (*v12 * (1.0 - v205));
            v205 = v205 + (*v7 * (1.0 - v205));
LABEL_314:
            *v7 = v205;
LABEL_315:
            v14 += v27;
            v208 = &v23[4 * v27];
            v209 = &v202[v20];
            if (v208 >= v642)
            {
              v210 = v199;
            }

            else
            {
              v210 = 0;
            }

            v202 = &v209[v210];
            v23 = &v208[4 * v210];
            v7 += v641;
            v12 += v27;
            --v203;
          }

          while (v203);
          if (v28)
          {
            v211 = &v640[4 * v18];
            if (v211 >= v28)
            {
              v212 = v201;
            }

            else
            {
              v212 = 0;
            }

            v10 += 4 * v19 + 4 * v212;
            if (v211 >= v28)
            {
              v213 = v200;
            }

            else
            {
              v213 = 0;
            }

            v23 = &v211[4 * v213];
            v642 += 4 * v213 + 4 * v18;
            v202 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v202 += v19;
          }

          v14 += v36;
          v12 += v37;
          v7 += v638;
          if (!--v8)
          {
            return;
          }
        }
      }

      v545 = v10;
LABEL_843:
      v546 = v9;
      while (1)
      {
        v547 = *v14;
        if (*v14)
        {
          if (v547 == 255)
          {
            v548 = *v545;
            if (*v545 >= 1.0)
            {
              v549 = *v23;
              goto LABEL_852;
            }

            if (v548 > 0.0)
            {
              v549 = *v23 + (*v12 * (1.0 - v548));
LABEL_852:
              *v12 = v549;
            }
          }

          else
          {
            v550 = v547 * 0.0039216;
            v551 = v550 * *v545;
            if (v551 > 0.0)
            {
              v549 = (v550 * *v23) + (*v12 * (1.0 - v551));
              goto LABEL_852;
            }
          }
        }

        v14 += v38;
        v552 = &v23[4 * v38];
        v553 = &v545[v20];
        if (v552 >= v642)
        {
          v554 = v199;
        }

        else
        {
          v554 = 0;
        }

        v545 = &v553[v554];
        v23 = &v552[4 * v554];
        v12 += v38;
        if (!--v546)
        {
          if (v28)
          {
            v555 = &v640[4 * v18];
            if (v555 >= v28)
            {
              v556 = v201;
            }

            else
            {
              v556 = 0;
            }

            v10 += 4 * v19 + 4 * v556;
            if (v555 >= v28)
            {
              v557 = v200;
            }

            else
            {
              v557 = 0;
            }

            v23 = &v555[4 * v557];
            v642 += 4 * v557 + 4 * v18;
            v545 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v545 += v19;
          }

          v14 += v36;
          v12 += v37;
          if (!--v8)
          {
            return;
          }

          goto LABEL_843;
        }
      }

    case 3:
      v235 = -v34;
      v236 = -(v18 * v22);
      v237 = -(v19 * v22);
      v238 = v10;
      do
      {
        v239 = v9;
        do
        {
          v240 = *v14;
          if (*v14)
          {
            if (v240 == 255)
            {
              *v12 = *v23 * *v7;
              if (v20)
              {
                v241 = *v238;
              }

              else
              {
                v241 = 1.0;
              }

              v247 = v241 * *v7;
            }

            else
            {
              v242 = v240 * 0.0039216;
              v243 = *v7;
              v244 = v242 * *v7;
              v245 = 1.0;
              v246 = 1.0 - v242;
              *v12 = (v246 * *v12) + (*v23 * v244);
              if (v20)
              {
                v245 = *v238;
              }

              v247 = (v246 * v243) + (v245 * v244);
            }

            *v7 = v247;
          }

          v14 += v27;
          v248 = &v23[4 * v27];
          v249 = &v238[v20];
          if (v248 >= v642)
          {
            v250 = v235;
          }

          else
          {
            v250 = 0;
          }

          v238 = &v249[v250];
          v23 = &v248[4 * v250];
          v7 += v641;
          v12 += v27;
          --v239;
        }

        while (v239);
        if (v28)
        {
          v251 = &v640[4 * v18];
          if (v251 >= v28)
          {
            v252 = v237;
          }

          else
          {
            v252 = 0;
          }

          v10 += 4 * v19 + 4 * v252;
          if (v251 >= v28)
          {
            v253 = v236;
          }

          else
          {
            v253 = 0;
          }

          v23 = &v251[4 * v253];
          v642 += 4 * v253 + 4 * v18;
          v238 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v238 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        --v8;
      }

      while (v8);
      return;
    case 4:
      v111 = -v34;
      v112 = -(v18 * v22);
      v113 = -(v19 * v22);
      v114 = v10;
      do
      {
        v115 = v9;
        do
        {
          v116 = *v14;
          if (*v14)
          {
            if (v116 == 255)
            {
              v117 = 1.0;
              *v12 = *v23 * (1.0 - *v7);
              if (v20)
              {
                v117 = *v114;
              }

              v118 = v117 * (1.0 - *v7);
            }

            else
            {
              v119 = v116 * 0.0039216;
              v120 = *v7;
              v121 = 1.0;
              v122 = v119 * (1.0 - *v7);
              v123 = 1.0 - v119;
              *v12 = (v123 * *v12) + (*v23 * v122);
              if (v20)
              {
                v121 = *v114;
              }

              v118 = (v123 * v120) + (v121 * v122);
            }

            *v7 = v118;
          }

          v14 += v27;
          v124 = &v23[4 * v27];
          v125 = &v114[v20];
          if (v124 >= v642)
          {
            v126 = v111;
          }

          else
          {
            v126 = 0;
          }

          v114 = &v125[v126];
          v23 = &v124[4 * v126];
          v7 += v641;
          v12 += v27;
          --v115;
        }

        while (v115);
        if (v28)
        {
          v127 = &v640[4 * v18];
          if (v127 >= v28)
          {
            v128 = v113;
          }

          else
          {
            v128 = 0;
          }

          v10 += 4 * v19 + 4 * v128;
          if (v127 >= v28)
          {
            v129 = v112;
          }

          else
          {
            v129 = 0;
          }

          v23 = &v127[4 * v129];
          v642 += 4 * v129 + 4 * v18;
          v114 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v114 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        --v8;
      }

      while (v8);
      return;
    case 5:
      v324 = -v34;
      v325 = -(v18 * v22);
      v326 = -(v19 * v22);
      v327 = v10;
      do
      {
        v328 = v9;
        do
        {
          if (*v14)
          {
            v329 = *v7;
            v330 = *v14 * 0.0039216;
            v331 = v330 * *v23;
            v332 = v330 * *v327;
            *v12 = (*v12 * (1.0 - v332)) + (v331 * *v7);
            *v7 = (v329 * (1.0 - v332)) + (v332 * v329);
          }

          v14 += v27;
          v333 = &v23[4 * v27];
          v334 = &v327[v20];
          if (v333 >= v642)
          {
            v335 = v324;
          }

          else
          {
            v335 = 0;
          }

          v327 = &v334[v335];
          v23 = &v333[4 * v335];
          v7 += v641;
          v12 += v27;
          --v328;
        }

        while (v328);
        if (v28)
        {
          v336 = &v640[4 * v18];
          if (v336 >= v28)
          {
            v337 = v326;
          }

          else
          {
            v337 = 0;
          }

          v10 += 4 * v19 + 4 * v337;
          if (v336 >= v28)
          {
            v338 = v325;
          }

          else
          {
            v338 = 0;
          }

          v23 = &v336[4 * v338];
          v642 += 4 * v338 + 4 * v18;
          v327 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v327 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        --v8;
      }

      while (v8);
      return;
    case 6:
      v377 = -v34;
      v378 = -(v18 * v22);
      v379 = -(v19 * v22);
      v380 = v10;
      while (1)
      {
        v381 = v9;
        do
        {
          v382 = *v14;
          if (!*v14)
          {
            goto LABEL_591;
          }

          v383 = *v7;
          v384 = 1.0 - *v7;
          if (v384 >= 1.0)
          {
            v387 = v382 * 0.0039216;
            *v12 = v387 * *v23;
            if (v20)
            {
              v388 = *v380;
            }

            else
            {
              v388 = 1.0;
            }

            v389 = v387 * v388;
          }

          else
          {
            if (v384 <= 0.0)
            {
              goto LABEL_591;
            }

            v385 = (v382 * 0.0039216) * v384;
            *v12 = *v12 + (*v23 * v385);
            if (v20)
            {
              v386 = *v380;
            }

            else
            {
              v386 = 1.0;
            }

            v389 = v383 + (v386 * v385);
          }

          *v7 = v389;
LABEL_591:
          v14 += v27;
          v390 = &v23[4 * v27];
          v391 = &v380[v20];
          if (v390 >= v642)
          {
            v392 = v377;
          }

          else
          {
            v392 = 0;
          }

          v380 = &v391[v392];
          v23 = &v390[4 * v392];
          v7 += v641;
          v12 += v27;
          --v381;
        }

        while (v381);
        if (v28)
        {
          v393 = &v640[4 * v18];
          if (v393 >= v28)
          {
            v394 = v379;
          }

          else
          {
            v394 = 0;
          }

          v10 += 4 * v19 + 4 * v394;
          if (v393 >= v28)
          {
            v395 = v378;
          }

          else
          {
            v395 = 0;
          }

          v23 = &v393[4 * v395];
          v642 += 4 * v395 + 4 * v18;
          v380 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v380 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 7:
      v254 = -v34;
      v255 = -(v18 * v22);
      v256 = -(v19 * v22);
      if (v641)
      {
        v257 = v10;
        do
        {
          v258 = v9;
          do
          {
            v259 = *v14;
            if (*v14)
            {
              if (v259 == 255)
              {
                *v12 = *v12 * *v257;
                v260 = *v7 * *v257;
              }

              else
              {
                v261 = v259 * 0.0039216;
                v262 = *v7;
                *v12 = ((1.0 - v261) * *v12) + (*v12 * (v261 * *v257));
                v260 = ((1.0 - v261) * v262) + (v262 * (v261 * *v257));
              }

              *v7 = v260;
            }

            v14 += v27;
            v263 = &v23[4 * v27];
            v264 = &v257[v20];
            if (v263 >= v642)
            {
              v265 = v254;
            }

            else
            {
              v265 = 0;
            }

            v257 = &v264[v265];
            v23 = &v263[4 * v265];
            v7 += v641;
            v12 += v27;
            --v258;
          }

          while (v258);
          if (v28)
          {
            v266 = &v640[4 * v18];
            if (v266 >= v28)
            {
              v267 = v256;
            }

            else
            {
              v267 = 0;
            }

            v10 += 4 * v19 + 4 * v267;
            if (v266 >= v28)
            {
              v268 = v255;
            }

            else
            {
              v268 = 0;
            }

            v23 = &v266[4 * v268];
            v642 += 4 * v268 + 4 * v18;
            v257 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v257 += v19;
          }

          v14 += v36;
          v12 += v37;
          v7 += v638;
          --v8;
        }

        while (v8);
      }

      else
      {
        v558 = v10;
        do
        {
          v559 = v9;
          do
          {
            v560 = *v14;
            if (*v14)
            {
              if (v560 == 255)
              {
                v561 = *v12 * *v558;
              }

              else
              {
                v561 = ((1.0 - (v560 * 0.0039216)) * *v12) + (*v12 * ((v560 * 0.0039216) * *v558));
              }

              *v12 = v561;
            }

            v14 += v38;
            v562 = &v23[4 * v38];
            v563 = &v558[v20];
            if (v562 >= v642)
            {
              v564 = v254;
            }

            else
            {
              v564 = 0;
            }

            v558 = &v563[v564];
            v23 = &v562[4 * v564];
            v12 += v38;
            --v559;
          }

          while (v559);
          if (v28)
          {
            v565 = &v640[4 * v18];
            if (v565 >= v28)
            {
              v566 = v256;
            }

            else
            {
              v566 = 0;
            }

            v10 += 4 * v19 + 4 * v566;
            if (v565 >= v28)
            {
              v567 = v255;
            }

            else
            {
              v567 = 0;
            }

            v23 = &v565[4 * v567];
            v642 += 4 * v567 + 4 * v18;
            v558 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v558 += v19;
          }

          v14 += v36;
          v12 += v37;
          --v8;
        }

        while (v8);
      }

      return;
    case 8:
      v433 = -v34;
      v434 = -(v18 * v22);
      v435 = -(v19 * v22);
      if (v641)
      {
        v436 = v10;
        do
        {
          v437 = v9;
          do
          {
            v438 = *v14;
            if (*v14)
            {
              if (v438 == 255)
              {
                *v12 = *v12 * (1.0 - *v436);
                v439 = *v436;
              }

              else
              {
                v440 = v438 * 0.0039216;
                *v12 = *v12 * (1.0 - (v440 * *v436));
                v439 = v440 * *v436;
              }

              *v7 = *v7 * (1.0 - v439);
            }

            v14 += v27;
            v441 = &v23[4 * v27];
            v442 = &v436[v20];
            if (v441 >= v642)
            {
              v443 = v433;
            }

            else
            {
              v443 = 0;
            }

            v436 = &v442[v443];
            v23 = &v441[4 * v443];
            v7 += v641;
            v12 += v27;
            --v437;
          }

          while (v437);
          if (v28)
          {
            v444 = &v640[4 * v18];
            if (v444 >= v28)
            {
              v445 = v435;
            }

            else
            {
              v445 = 0;
            }

            v10 += 4 * v19 + 4 * v445;
            if (v444 >= v28)
            {
              v446 = v434;
            }

            else
            {
              v446 = 0;
            }

            v23 = &v444[4 * v446];
            v642 += 4 * v446 + 4 * v18;
            v436 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v436 += v19;
          }

          v14 += v36;
          v12 += v37;
          v7 += v638;
          --v8;
        }

        while (v8);
      }

      else
      {
        v584 = v10;
        do
        {
          v585 = v9;
          do
          {
            v586 = *v14;
            if (*v14)
            {
              if (v586 == 255)
              {
                v587 = *v584;
              }

              else
              {
                v587 = (v586 * 0.0039216) * *v584;
              }

              *v12 = *v12 * (1.0 - v587);
            }

            v14 += v38;
            v588 = &v23[4 * v38];
            v589 = &v584[v20];
            if (v588 >= v642)
            {
              v590 = v433;
            }

            else
            {
              v590 = 0;
            }

            v584 = &v589[v590];
            v23 = &v588[4 * v590];
            v12 += v38;
            --v585;
          }

          while (v585);
          if (v28)
          {
            v591 = &v640[4 * v18];
            if (v591 >= v28)
            {
              v592 = v435;
            }

            else
            {
              v592 = 0;
            }

            v10 += 4 * v19 + 4 * v592;
            if (v591 >= v28)
            {
              v593 = v434;
            }

            else
            {
              v593 = 0;
            }

            v23 = &v591[4 * v593];
            v642 += 4 * v593 + 4 * v18;
            v584 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v584 += v19;
          }

          v14 += v36;
          v12 += v37;
          --v8;
        }

        while (v8);
      }

      return;
    case 9:
      v144 = -v34;
      v145 = -(v18 * v22);
      v146 = -(v19 * v22);
      v147 = v10;
      do
      {
        v148 = v9;
        do
        {
          if (*v14)
          {
            v149 = *v7;
            v150 = *v14 * 0.0039216;
            v151 = v150 * *v23;
            v152 = v150 * *v147;
            v153 = 1.0 - *v7;
            v154 = (1.0 - v150) + v152;
            *v12 = (*v12 * v154) + (v151 * v153);
            *v7 = (v149 * v154) + (v152 * v153);
          }

          v14 += v27;
          v155 = &v23[4 * v27];
          v156 = &v147[v20];
          if (v155 >= v642)
          {
            v157 = v144;
          }

          else
          {
            v157 = 0;
          }

          v147 = &v156[v157];
          v23 = &v155[4 * v157];
          v7 += v641;
          v12 += v27;
          --v148;
        }

        while (v148);
        if (v28)
        {
          v158 = &v640[4 * v18];
          if (v158 >= v28)
          {
            v159 = v146;
          }

          else
          {
            v159 = 0;
          }

          v10 += 4 * v19 + 4 * v159;
          if (v158 >= v28)
          {
            v160 = v145;
          }

          else
          {
            v160 = 0;
          }

          v23 = &v158[4 * v160];
          v642 += 4 * v160 + 4 * v18;
          v147 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v147 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        --v8;
      }

      while (v8);
      return;
    case 10:
      v417 = -v34;
      v418 = -(v18 * v22);
      v419 = -(v19 * v22);
      v420 = v10;
      do
      {
        v421 = v9;
        do
        {
          if (*v14)
          {
            v422 = *v7;
            v423 = *v14 * 0.0039216;
            v424 = v423 * *v23;
            v425 = v423 * *v420;
            v426 = 1.0 - *v7;
            *v12 = (*v12 * (1.0 - v425)) + (v424 * v426);
            *v7 = (v422 * (1.0 - v425)) + (v425 * v426);
          }

          v14 += v27;
          v427 = &v23[4 * v27];
          v428 = &v420[v20];
          if (v427 >= v642)
          {
            v429 = v417;
          }

          else
          {
            v429 = 0;
          }

          v420 = &v428[v429];
          v23 = &v427[4 * v429];
          v7 += v641;
          v12 += v27;
          --v421;
        }

        while (v421);
        if (v28)
        {
          v430 = &v640[4 * v18];
          if (v430 >= v28)
          {
            v431 = v419;
          }

          else
          {
            v431 = 0;
          }

          v10 += 4 * v19 + 4 * v431;
          if (v430 >= v28)
          {
            v432 = v418;
          }

          else
          {
            v432 = 0;
          }

          v23 = &v430[4 * v432];
          v642 += 4 * v432 + 4 * v18;
          v420 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v420 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        --v8;
      }

      while (v8);
      return;
    case 11:
      v94 = -v34;
      v95 = -(v18 * v22);
      v96 = -(v19 * v22);
      if (v641)
      {
        v97 = v10;
        do
        {
          v98 = v9;
          do
          {
            if (*v14)
            {
              if (v20)
              {
                v99 = *v97;
              }

              else
              {
                v99 = 1.0;
              }

              v100 = *v14 * 0.0039216;
              v101 = v100 * v99;
              v102 = *v7 + v101;
              v103 = (v101 - (v100 * *v23)) + (*v7 - *v12);
              if (v102 <= 1.0)
              {
                v104 = v102;
              }

              else
              {
                v104 = 1.0;
              }

              *v7 = v104;
              *v12 = v104 - v103;
            }

            v14 += v27;
            v105 = &v23[4 * v27];
            v106 = &v97[v20];
            if (v105 >= v642)
            {
              v107 = v94;
            }

            else
            {
              v107 = 0;
            }

            v97 = &v106[v107];
            v23 = &v105[4 * v107];
            v7 += v641;
            v12 += v27;
            --v98;
          }

          while (v98);
          if (v28)
          {
            v108 = &v640[4 * v18];
            if (v108 >= v28)
            {
              v109 = v96;
            }

            else
            {
              v109 = 0;
            }

            v10 += 4 * v19 + 4 * v109;
            if (v108 >= v28)
            {
              v110 = v95;
            }

            else
            {
              v110 = 0;
            }

            v23 = &v108[4 * v110];
            v642 += 4 * v110 + 4 * v18;
            v97 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v97 += v19;
          }

          v14 += v36;
          v12 += v37;
          v7 += v638;
          --v8;
        }

        while (v8);
      }

      else
      {
        v525 = v10;
        do
        {
          v526 = v9;
          do
          {
            if (*v14)
            {
              if (v20)
              {
                v527 = *v525;
              }

              else
              {
                v527 = 1.0;
              }

              *v12 = 1.0 - ((1.0 - *v12) + (((*v14 * 0.0039216) * v527) - ((*v14 * 0.0039216) * *v23)));
            }

            v14 += v38;
            v528 = &v23[4 * v38];
            v529 = &v525[v20];
            if (v528 >= v642)
            {
              v530 = v94;
            }

            else
            {
              v530 = 0;
            }

            v525 = &v529[v530];
            v23 = &v528[4 * v530];
            v12 += v38;
            --v526;
          }

          while (v526);
          if (v28)
          {
            v531 = &v640[4 * v18];
            if (v531 >= v28)
            {
              v532 = v96;
            }

            else
            {
              v532 = 0;
            }

            v10 += 4 * v19 + 4 * v532;
            if (v531 >= v28)
            {
              v533 = v95;
            }

            else
            {
              v533 = 0;
            }

            v23 = &v531[4 * v533];
            v642 += 4 * v533 + 4 * v18;
            v525 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v525 += v19;
          }

          v14 += v36;
          v12 += v37;
          --v8;
        }

        while (v8);
      }

      return;
    case 12:
      if (v641)
      {
        v130 = -v34;
        v131 = -(v18 * v22);
        v132 = -(v19 * v22);
        v133 = v10;
        do
        {
          v134 = v9;
          do
          {
            if (*v14)
            {
              if (v20)
              {
                v135 = *v133;
              }

              else
              {
                v135 = 1.0;
              }

              v136 = *v14 * 0.0039216;
              v137 = *v7 + (v136 * v135);
              if (v137 > 1.0)
              {
                v137 = 1.0;
              }

              *v12 = (v136 * *v23) + *v12;
              *v7 = v137;
            }

            v14 += v27;
            v138 = &v23[4 * v27];
            v139 = &v133[v20];
            if (v138 >= v642)
            {
              v140 = v130;
            }

            else
            {
              v140 = 0;
            }

            v133 = &v139[v140];
            v23 = &v138[4 * v140];
            v7 += v641;
            v12 += v27;
            --v134;
          }

          while (v134);
          if (v28)
          {
            v141 = &v640[4 * v18];
            if (v141 >= v28)
            {
              v142 = v132;
            }

            else
            {
              v142 = 0;
            }

            v10 += 4 * v19 + 4 * v142;
            if (v141 >= v28)
            {
              v143 = v131;
            }

            else
            {
              v143 = 0;
            }

            v23 = &v141[4 * v143];
            v642 += 4 * v143 + 4 * v18;
            v133 = v10;
            v640 = v23;
          }

          else
          {
            v23 += 4 * v18;
            v133 += v19;
          }

          v14 += v36;
          v12 += v37;
          v7 += v638;
          --v8;
        }

        while (v8);
      }

      else
      {
        v534 = -v34;
        v535 = -(v18 * v22);
        do
        {
          v536 = v9;
          do
          {
            if (*v14)
            {
              *v12 = *v12 + ((*v14 * 0.0039216) * *v23);
            }

            v14 += v38;
            v537 = &v23[4 * v38];
            if (v537 >= v642)
            {
              v538 = v534;
            }

            else
            {
              v538 = 0;
            }

            v23 = &v537[4 * v538];
            v12 += v38;
            --v536;
          }

          while (v536);
          v14 += v36;
          v12 += v37;
          v539 = v640;
          v540 = &v640[4 * v18];
          if (v540 >= v28)
          {
            v541 = v535;
          }

          else
          {
            v541 = 0;
          }

          v542 = v642;
          v543 = &v540[4 * v541];
          v544 = v642 + 4 * v541 + 4 * v18;
          if (v28)
          {
            v542 = v544;
          }

          v642 = v542;
          if (v28)
          {
            v539 = v543;
          }

          v640 = v539;
          if (v28)
          {
            v23 = v543;
          }

          else
          {
            v23 += 4 * v18;
          }

          --v8;
        }

        while (v8);
      }

      return;
    case 13:
      v360 = -v34;
      v361 = -(v18 * v22);
      v362 = -(v19 * v22);
      v363 = v10;
      while (1)
      {
        v364 = v9;
        do
        {
          if (*v14)
          {
            v365 = v20 ? *v363 : 1.0;
            v366 = *v14 * 0.0039216;
            v367 = v366 * v365;
            if (v367 > 0.0)
            {
              v368 = v366 * *v23;
              if (v641)
              {
                v369 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_560;
                }
              }

              else
              {
                v369 = 1.0;
              }

              v370 = (v368 * *v12) + (*v12 * (1.0 - v367));
              if (v367 == 1.0)
              {
                v370 = v368 * *v12;
              }

              v368 = v370 + (v368 * (1.0 - v369));
              if (v369 == 1.0)
              {
                v368 = v370;
              }

              if (v641)
              {
                v367 = (v367 + v369) - (v369 * v367);
LABEL_560:
                *v12 = v368;
                *v7 = v367;
                goto LABEL_562;
              }

              *v12 = v368;
            }
          }

LABEL_562:
          v14 += v27;
          v371 = &v23[4 * v27];
          v372 = &v363[v20];
          if (v371 >= v642)
          {
            v373 = v360;
          }

          else
          {
            v373 = 0;
          }

          v363 = &v372[v373];
          v23 = &v371[4 * v373];
          v7 += v641;
          v12 += v27;
          --v364;
        }

        while (v364);
        if (v28)
        {
          v374 = &v640[4 * v18];
          if (v374 >= v28)
          {
            v375 = v362;
          }

          else
          {
            v375 = 0;
          }

          v10 += 4 * v19 + 4 * v375;
          if (v374 >= v28)
          {
            v376 = v361;
          }

          else
          {
            v376 = 0;
          }

          v23 = &v374[4 * v376];
          v642 += 4 * v376 + 4 * v18;
          v363 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v363 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 14:
      v78 = -v34;
      v79 = -(v18 * v22);
      v80 = -(v19 * v22);
      v81 = v10;
      while (1)
      {
        v82 = v9;
        do
        {
          if (*v14)
          {
            v83 = v20 ? *v81 : 1.0;
            v84 = *v14 * 0.0039216;
            v85 = v84 * v83;
            if (v85 > 0.0)
            {
              v86 = v84 * *v23;
              if (v641)
              {
                v87 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v87 = 1.0;
              }

              v86 = *v12 + (v86 * (1.0 - *v12));
              if (v641)
              {
                v85 = (v85 + v87) - (v87 * v85);
LABEL_119:
                *v12 = v86;
                *v7 = v85;
                goto LABEL_121;
              }

              *v12 = v86;
            }
          }

LABEL_121:
          v14 += v27;
          v88 = &v23[4 * v27];
          v89 = &v81[v20];
          if (v88 >= v642)
          {
            v90 = v78;
          }

          else
          {
            v90 = 0;
          }

          v81 = &v89[v90];
          v23 = &v88[4 * v90];
          v7 += v641;
          v12 += v27;
          --v82;
        }

        while (v82);
        if (v28)
        {
          v91 = &v640[4 * v18];
          if (v91 >= v28)
          {
            v92 = v80;
          }

          else
          {
            v92 = 0;
          }

          v10 += 4 * v19 + 4 * v92;
          if (v91 >= v28)
          {
            v93 = v79;
          }

          else
          {
            v93 = 0;
          }

          v23 = &v91[4 * v93];
          v642 += 4 * v93 + 4 * v18;
          v81 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v81 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 15:
      v214 = v20;
      v215 = -v34;
      v607 = -(v19 * v22);
      v611 = -(v18 * v22);
      v216 = 4 * v641;
      v217 = v10;
      v622 = v216;
      while (1)
      {
        v628 = v10;
        v633 = v8;
        v218 = v9;
        v219 = v641;
        do
        {
          if (*v14)
          {
            v220 = v20 ? *v217 : 1.0;
            v221 = *v14 * 0.0039216;
            v222 = v221 * v220;
            if ((v221 * v220) > 0.0)
            {
              v223 = v221 * *v23;
              if (v219)
              {
                v224 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_343;
                }
              }

              else
              {
                v224 = 1.0;
              }

              v225 = PDAoverlayPDA(*v12, v224, v223, v222);
              v219 = v641;
              v223 = v225;
              if (v641)
              {
                v222 = v226;
                v20 = v639;
                v216 = 4 * v641;
LABEL_343:
                *v12 = v223;
                *v7 = v222;
                goto LABEL_345;
              }

              *v12 = v225;
              v20 = v639;
              v216 = v622;
            }
          }

LABEL_345:
          v14 += v38;
          v227 = &v23[4 * v38];
          if (v227 >= v642)
          {
            v228 = v215;
          }

          else
          {
            v228 = 0;
          }

          v217 += v214 + v228;
          v23 = &v227[4 * v228];
          v7 = (v7 + v216);
          v12 += v38;
          --v218;
        }

        while (v218);
        if (v619)
        {
          v229 = &v640[4 * v620];
          v230 = v607;
          if (v229 < v619)
          {
            v230 = 0;
          }

          v10 = v628 + 4 * v616 + 4 * v230;
          v231 = v611;
          if (v229 < v619)
          {
            v231 = 0;
          }

          v23 = &v229[4 * v231];
          v642 += 4 * v231 + 4 * v620;
          v217 = (v628 + 4 * v616 + 4 * v230);
          v640 = v23;
          v232 = v633;
          v9 = v621;
          v234 = v617;
          v233 = v618;
        }

        else
        {
          v9 = v621;
          v23 += 4 * v620;
          v234 = v617;
          v217 += v616;
          v10 = v628;
          v232 = v633;
          v233 = v618;
        }

        v14 += v233;
        v12 += v234;
        v7 += v638;
        v8 = v232 - 1;
        if (!v8)
        {
          return;
        }
      }

    case 16:
      v60 = -v34;
      v61 = -(v18 * v22);
      v62 = -(v19 * v22);
      v63 = v10;
      while (1)
      {
        v64 = v9;
        do
        {
          if (*v14)
          {
            v65 = v20 ? *v63 : 1.0;
            v66 = *v14 * 0.0039216;
            v67 = v66 * v65;
            if (v67 > 0.0)
            {
              v68 = v66 * *v23;
              if (v641)
              {
                v69 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v69 = 1.0;
              }

              v70 = v67 * *v12;
              if ((v68 * v69) < v70)
              {
                v70 = v68 * v69;
              }

              v71 = v70 + (*v12 * (1.0 - v67));
              if (v67 == 1.0)
              {
                v71 = v70;
              }

              v68 = v71 + (v68 * (1.0 - v69));
              if (v69 == 1.0)
              {
                v68 = v71;
              }

              if (v641)
              {
                v67 = (v67 + v69) - (v69 * v67);
LABEL_89:
                *v12 = v68;
                *v7 = v67;
                goto LABEL_91;
              }

              *v12 = v68;
            }
          }

LABEL_91:
          v14 += v27;
          v72 = &v23[4 * v27];
          v73 = &v63[v20];
          if (v72 >= v642)
          {
            v74 = v60;
          }

          else
          {
            v74 = 0;
          }

          v63 = &v73[v74];
          v23 = &v72[4 * v74];
          v7 += v641;
          v12 += v27;
          --v64;
        }

        while (v64);
        if (v28)
        {
          v75 = &v640[4 * v18];
          if (v75 >= v28)
          {
            v76 = v62;
          }

          else
          {
            v76 = 0;
          }

          v10 += 4 * v19 + 4 * v76;
          if (v75 >= v28)
          {
            v77 = v61;
          }

          else
          {
            v77 = 0;
          }

          v23 = &v75[4 * v77];
          v642 += 4 * v77 + 4 * v18;
          v63 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v63 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 17:
      v283 = -v34;
      v284 = -(v18 * v22);
      v285 = -(v19 * v22);
      v286 = v10;
      while (1)
      {
        v287 = v9;
        do
        {
          if (*v14)
          {
            v288 = v20 ? *v286 : 1.0;
            v289 = *v14 * 0.0039216;
            v290 = v289 * v288;
            if (v290 > 0.0)
            {
              v291 = v289 * *v23;
              if (v641)
              {
                v292 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_451;
                }
              }

              else
              {
                v292 = 1.0;
              }

              v293 = v290 * *v12;
              if ((v291 * v292) > v293)
              {
                v293 = v291 * v292;
              }

              v294 = v293 + (*v12 * (1.0 - v290));
              if (v290 == 1.0)
              {
                v294 = v293;
              }

              v291 = v294 + (v291 * (1.0 - v292));
              if (v292 == 1.0)
              {
                v291 = v294;
              }

              if (v641)
              {
                v290 = (v290 + v292) - (v292 * v290);
LABEL_451:
                *v12 = v291;
                *v7 = v290;
                goto LABEL_453;
              }

              *v12 = v291;
            }
          }

LABEL_453:
          v14 += v27;
          v295 = &v23[4 * v27];
          v296 = &v286[v20];
          if (v295 >= v642)
          {
            v297 = v283;
          }

          else
          {
            v297 = 0;
          }

          v286 = &v296[v297];
          v23 = &v295[4 * v297];
          v7 += v641;
          v12 += v27;
          --v287;
        }

        while (v287);
        if (v28)
        {
          v298 = &v640[4 * v18];
          if (v298 >= v28)
          {
            v299 = v285;
          }

          else
          {
            v299 = 0;
          }

          v10 += 4 * v19 + 4 * v299;
          if (v298 >= v28)
          {
            v300 = v284;
          }

          else
          {
            v300 = 0;
          }

          v23 = &v298[4 * v300];
          v642 += 4 * v300 + 4 * v18;
          v286 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v286 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 18:
      v396 = v20;
      v397 = -v34;
      v609 = -(v19 * v22);
      v614 = -(v18 * v22);
      v398 = 4 * v641;
      v399 = v10;
      v625 = v398;
      while (1)
      {
        v631 = v10;
        v636 = v8;
        v400 = v9;
        v401 = v641;
        do
        {
          if (*v14)
          {
            v402 = v20 ? *v399 : 1.0;
            v403 = *v14 * 0.0039216;
            v404 = v403 * v402;
            if ((v403 * v402) > 0.0)
            {
              v405 = v403 * *v23;
              if (v401)
              {
                v406 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_619;
                }
              }

              else
              {
                v406 = 1.0;
              }

              v407 = PDAcolordodgePDA(*v12, v406, v405, v404);
              v401 = v641;
              v405 = v407;
              if (v641)
              {
                v404 = v408;
                v20 = v639;
                v398 = 4 * v641;
LABEL_619:
                *v12 = v405;
                *v7 = v404;
                goto LABEL_621;
              }

              *v12 = v407;
              v20 = v639;
              v398 = v625;
            }
          }

LABEL_621:
          v14 += v38;
          v409 = &v23[4 * v38];
          if (v409 >= v642)
          {
            v410 = v397;
          }

          else
          {
            v410 = 0;
          }

          v399 += v396 + v410;
          v23 = &v409[4 * v410];
          v7 = (v7 + v398);
          v12 += v38;
          --v400;
        }

        while (v400);
        if (v619)
        {
          v411 = &v640[4 * v620];
          v412 = v609;
          if (v411 < v619)
          {
            v412 = 0;
          }

          v10 = v631 + 4 * v616 + 4 * v412;
          v413 = v614;
          if (v411 < v619)
          {
            v413 = 0;
          }

          v23 = &v411[4 * v413];
          v642 += 4 * v413 + 4 * v620;
          v399 = (v631 + 4 * v616 + 4 * v412);
          v640 = v23;
          v414 = v636;
          v9 = v621;
          v416 = v617;
          v415 = v618;
        }

        else
        {
          v9 = v621;
          v23 += 4 * v620;
          v416 = v617;
          v399 += v616;
          v10 = v631;
          v414 = v636;
          v415 = v618;
        }

        v14 += v415;
        v12 += v416;
        v7 += v638;
        v8 = v414 - 1;
        if (!v8)
        {
          return;
        }
      }

    case 19:
      v469 = v20;
      v470 = -v34;
      v610 = -(v19 * v22);
      v615 = -(v18 * v22);
      v471 = 4 * v641;
      v472 = v10;
      v626 = v471;
      while (1)
      {
        v632 = v10;
        v637 = v8;
        v473 = v9;
        v474 = v641;
        do
        {
          if (*v14)
          {
            v475 = v20 ? *v472 : 1.0;
            v476 = *v14 * 0.0039216;
            v477 = v476 * v475;
            if ((v476 * v475) > 0.0)
            {
              v478 = v476 * *v23;
              if (v474)
              {
                v479 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_721;
                }
              }

              else
              {
                v479 = 1.0;
              }

              v480 = PDAcolorburnPDA(*v12, v479, v478, v477);
              v474 = v641;
              v478 = *&v480;
              if (v641)
              {
                v477 = v481;
                v20 = v639;
                v471 = 4 * v641;
LABEL_721:
                *v12 = v478;
                *v7 = v477;
                goto LABEL_723;
              }

              *v12 = *&v480;
              v20 = v639;
              v471 = v626;
            }
          }

LABEL_723:
          v14 += v38;
          v482 = &v23[4 * v38];
          if (v482 >= v642)
          {
            v483 = v470;
          }

          else
          {
            v483 = 0;
          }

          v472 += v469 + v483;
          v23 = &v482[4 * v483];
          v7 = (v7 + v471);
          v12 += v38;
          --v473;
        }

        while (v473);
        if (v619)
        {
          v484 = &v640[4 * v620];
          v485 = v610;
          if (v484 < v619)
          {
            v485 = 0;
          }

          v10 = v632 + 4 * v616 + 4 * v485;
          v486 = v615;
          if (v484 < v619)
          {
            v486 = 0;
          }

          v23 = &v484[4 * v486];
          v642 += 4 * v486 + 4 * v620;
          v472 = (v632 + 4 * v616 + 4 * v485);
          v640 = v23;
          v487 = v637;
          v9 = v621;
          v489 = v617;
          v488 = v618;
        }

        else
        {
          v9 = v621;
          v23 += 4 * v620;
          v489 = v617;
          v472 += v616;
          v10 = v632;
          v487 = v637;
          v488 = v618;
        }

        v14 += v488;
        v12 += v489;
        v7 += v638;
        v8 = v487 - 1;
        if (!v8)
        {
          return;
        }
      }

    case 20:
      v301 = v20;
      v302 = -v34;
      v623 = -(v18 * v22);
      v612 = -(v19 * v22);
      v303 = 4 * v641;
      v304 = 4 * v27;
      v305 = v10;
      v627 = v27;
      while (1)
      {
        v629 = v10;
        v634 = v8;
        v306 = v9;
        v307 = v641;
        do
        {
          if (*v14)
          {
            v308 = v20 ? *v305 : 1.0;
            v309 = *v14 * 0.0039216;
            v310 = v309 * v308;
            if ((v309 * v308) > 0.0)
            {
              v311 = v309 * *v23;
              if (v307)
              {
                v312 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_481;
                }
              }

              else
              {
                v312 = 1.0;
              }

              v313 = v303;
              v314 = PDAsoftlightPDA(*v12, v312, v311, v310);
              v307 = v641;
              v311 = v314;
              if (v641)
              {
                v310 = v315;
                v20 = v639;
                v303 = v313;
                v38 = v627;
LABEL_481:
                *v12 = v311;
                *v7 = v310;
                goto LABEL_483;
              }

              *v12 = v314;
              v20 = v639;
              v303 = v313;
              v38 = v627;
            }
          }

LABEL_483:
          v14 += v38;
          v316 = &v23[4 * v38];
          if (v316 >= v642)
          {
            v317 = v302;
          }

          else
          {
            v317 = 0;
          }

          v305 += v301 + v317;
          v23 = &v316[4 * v317];
          v7 = (v7 + v303);
          v12 = (v12 + v304);
          --v306;
        }

        while (v306);
        if (v619)
        {
          v318 = &v640[4 * v620];
          v319 = v612;
          if (v318 < v619)
          {
            v319 = 0;
          }

          v10 = v629 + 4 * v616 + 4 * v319;
          v320 = v623;
          if (v318 < v619)
          {
            v320 = 0;
          }

          v23 = &v318[4 * v320];
          v642 += 4 * v320 + 4 * v620;
          v305 = (v629 + 4 * v616 + 4 * v319);
          v640 = v23;
          v321 = v634;
          v9 = v621;
          v323 = v617;
          v322 = v618;
        }

        else
        {
          v9 = v621;
          v23 += 4 * v620;
          v323 = v617;
          v305 += v616;
          v10 = v629;
          v321 = v634;
          v322 = v618;
        }

        v14 += v322;
        v12 += v323;
        v7 += v638;
        v8 = v321 - 1;
        if (!v8)
        {
          return;
        }
      }

    case 21:
      v339 = v20;
      v340 = -v34;
      v608 = -(v19 * v22);
      v613 = -(v18 * v22);
      v341 = 4 * v27;
      v342 = v10;
      v624 = v341;
      do
      {
        v630 = v10;
        v635 = v8;
        v343 = v9;
        v344 = v641;
        do
        {
          if (*v14)
          {
            v345 = v20 ? *v342 : 1.0;
            v346 = *v14 * 0.0039216;
            v347 = v346 * v345;
            if ((v346 * v345) > 0.0)
            {
              v348 = v346 * *v23;
              if (v344)
              {
                v349 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_528;
                }
              }

              else
              {
                v349 = 1.0;
              }

              v350 = PDAhardlightPDA(*v12, v349, v348, v347);
              v344 = v641;
              v348 = v350;
              if (v641)
              {
                v347 = v351;
                v20 = v639;
                v341 = v624;
LABEL_528:
                *v12 = v348;
                *v7 = v347;
                goto LABEL_530;
              }

              *v12 = v350;
              v20 = v639;
              v341 = v624;
            }
          }

LABEL_530:
          v14 += v38;
          v352 = &v23[4 * v38];
          if (v352 >= v642)
          {
            v353 = v340;
          }

          else
          {
            v353 = 0;
          }

          v342 += v339 + v353;
          v23 = &v352[4 * v353];
          v7 += v641;
          v12 = (v12 + v341);
          --v343;
        }

        while (v343);
        if (v619)
        {
          v354 = &v640[4 * v620];
          v355 = v608;
          if (v354 < v619)
          {
            v355 = 0;
          }

          v10 = v630 + 4 * v616 + 4 * v355;
          v356 = v613;
          if (v354 < v619)
          {
            v356 = 0;
          }

          v23 = &v354[4 * v356];
          v642 += 4 * v356 + 4 * v620;
          v342 = (v630 + 4 * v616 + 4 * v355);
          v640 = v23;
          v357 = v635;
          v9 = v621;
          v359 = v617;
          v358 = v618;
        }

        else
        {
          v9 = v621;
          v23 += 4 * v620;
          v359 = v617;
          v342 += v616;
          v10 = v630;
          v357 = v635;
          v358 = v618;
        }

        v14 += v358;
        v12 += v359;
        v7 += v638;
        v8 = v357 - 1;
      }

      while (v8);
      return;
    case 22:
      v447 = -v34;
      v448 = -(v18 * v22);
      v449 = -(v19 * v22);
      v450 = v10;
      while (1)
      {
        v451 = v9;
        do
        {
          if (*v14)
          {
            v452 = v20 ? *v450 : 1.0;
            v453 = *v14 * 0.0039216;
            v454 = v453 * v452;
            if (v454 > 0.0)
            {
              v455 = v453 * *v23;
              if (v641)
              {
                v456 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_691;
                }
              }

              else
              {
                v456 = 1.0;
              }

              v457 = v455 + *v12;
              v458 = v454 * *v12;
              v459 = v455 * v456;
              v460 = v457 - v458;
              v461 = v458 - v459;
              v462 = v460 - v459;
              if (v461 < 0.0)
              {
                v461 = -v461;
              }

              v455 = v462 + v461;
              if (v641)
              {
                v454 = (v454 + v456) - (v456 * v454);
LABEL_691:
                *v12 = v455;
                *v7 = v454;
                goto LABEL_693;
              }

              *v12 = v455;
            }
          }

LABEL_693:
          v14 += v27;
          v463 = &v23[4 * v27];
          v464 = &v450[v20];
          if (v463 >= v642)
          {
            v465 = v447;
          }

          else
          {
            v465 = 0;
          }

          v450 = &v464[v465];
          v23 = &v463[4 * v465];
          v7 += v641;
          v12 += v27;
          --v451;
        }

        while (v451);
        if (v28)
        {
          v466 = &v640[4 * v18];
          if (v466 >= v28)
          {
            v467 = v449;
          }

          else
          {
            v467 = 0;
          }

          v10 += 4 * v19 + 4 * v467;
          if (v466 >= v28)
          {
            v468 = v448;
          }

          else
          {
            v468 = 0;
          }

          v23 = &v466[4 * v468];
          v642 += 4 * v468 + 4 * v18;
          v450 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v450 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 23:
      v490 = -v34;
      v491 = -(v18 * v22);
      v492 = -(v19 * v22);
      v493 = v10;
      while (1)
      {
        v494 = v9;
        do
        {
          if (*v14)
          {
            v495 = v20 ? *v493 : 1.0;
            v496 = *v14 * 0.0039216;
            v497 = v496 * v495;
            if (v497 > 0.0)
            {
              v498 = v496 * *v23;
              if (v641)
              {
                v499 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_749;
                }
              }

              else
              {
                v499 = 1.0;
              }

              v498 = (v498 + *v12) + ((v498 * *v12) * -2.0);
              if (v641)
              {
                v497 = (v497 + v499) - (v499 * v497);
LABEL_749:
                *v12 = v498;
                *v7 = v497;
                goto LABEL_751;
              }

              *v12 = v498;
            }
          }

LABEL_751:
          v14 += v27;
          v500 = &v23[4 * v27];
          v501 = &v493[v20];
          if (v500 >= v642)
          {
            v502 = v490;
          }

          else
          {
            v502 = 0;
          }

          v493 = &v501[v502];
          v23 = &v500[4 * v502];
          v7 += v641;
          v12 += v27;
          --v494;
        }

        while (v494);
        if (v28)
        {
          v503 = &v640[4 * v18];
          if (v503 >= v28)
          {
            v504 = v492;
          }

          else
          {
            v504 = 0;
          }

          v10 += 4 * v19 + 4 * v504;
          if (v503 >= v28)
          {
            v505 = v491;
          }

          else
          {
            v505 = 0;
          }

          v23 = &v503[4 * v505];
          v642 += 4 * v505 + 4 * v18;
          v493 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v493 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 24:
      v180 = -v34;
      v181 = -(v18 * v22);
      v182 = -(v19 * v22);
      v183 = v10;
      while (1)
      {
        v184 = v9;
        do
        {
          if (*v14)
          {
            v185 = v20 ? *v183 : 1.0;
            v186 = *v14 * 0.0039216;
            v187 = v186 * v185;
            if (v187 > 0.0)
            {
              v188 = v186 * *v23;
              if (v641)
              {
                v189 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_285;
                }
              }

              else
              {
                v189 = 1.0;
              }

              v190 = *v12;
              if (v187 == 1.0)
              {
                v191 = 0.0;
              }

              else
              {
                v190 = v187 * *v12;
                v191 = *v12 - v190;
              }

              v192 = (v188 + v191) - (v188 * v189);
              if (v189 == 1.0)
              {
                v192 = v191;
              }

              v188 = v190 + v192;
              if (v641)
              {
                v187 = (v187 + v189) - (v187 * v189);
LABEL_285:
                *v12 = v188;
                *v7 = v187;
                goto LABEL_287;
              }

              *v12 = v188;
            }
          }

LABEL_287:
          v14 += v27;
          v193 = &v23[4 * v27];
          v194 = &v183[v20];
          if (v193 >= v642)
          {
            v195 = v180;
          }

          else
          {
            v195 = 0;
          }

          v183 = &v194[v195];
          v23 = &v193[4 * v195];
          v7 += v641;
          v12 += v27;
          --v184;
        }

        while (v184);
        if (v28)
        {
          v196 = &v640[4 * v18];
          if (v196 >= v28)
          {
            v197 = v182;
          }

          else
          {
            v197 = 0;
          }

          v10 += 4 * v19 + 4 * v197;
          if (v196 >= v28)
          {
            v198 = v181;
          }

          else
          {
            v198 = 0;
          }

          v23 = &v196[4 * v198];
          v642 += 4 * v198 + 4 * v18;
          v183 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v183 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 25:
      v161 = -v34;
      v162 = -(v18 * v22);
      v163 = -(v19 * v22);
      v164 = v10;
      while (1)
      {
        v165 = v9;
        do
        {
          if (*v14)
          {
            v166 = v20 ? *v164 : 1.0;
            v167 = *v14 * 0.0039216;
            v168 = v167 * v166;
            if (v168 > 0.0)
            {
              v169 = v167 * *v23;
              if (v641)
              {
                v170 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_250;
                }
              }

              else
              {
                v170 = 1.0;
              }

              v171 = *v12;
              if (v168 == 1.0)
              {
                v172 = 0.0;
              }

              else
              {
                v171 = v168 * *v12;
                v172 = *v12 - v171;
              }

              v173 = (v169 + v172) - (v169 * v170);
              if (v170 == 1.0)
              {
                v173 = v172;
              }

              v169 = v171 + v173;
              if (v641)
              {
                v168 = (v168 + v170) - (v168 * v170);
LABEL_250:
                *v12 = v169;
                *v7 = v168;
                goto LABEL_252;
              }

              *v12 = v169;
            }
          }

LABEL_252:
          v14 += v27;
          v174 = &v23[4 * v27];
          v175 = &v164[v20];
          if (v174 >= v642)
          {
            v176 = v161;
          }

          else
          {
            v176 = 0;
          }

          v164 = &v175[v176];
          v23 = &v174[4 * v176];
          v7 += v641;
          v12 += v27;
          --v165;
        }

        while (v165);
        if (v28)
        {
          v177 = &v640[4 * v18];
          if (v177 >= v28)
          {
            v178 = v163;
          }

          else
          {
            v178 = 0;
          }

          v10 += 4 * v19 + 4 * v178;
          if (v177 >= v28)
          {
            v179 = v162;
          }

          else
          {
            v179 = 0;
          }

          v23 = &v177[4 * v179];
          v642 += 4 * v179 + 4 * v18;
          v164 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v164 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 26:
      v506 = -v34;
      v507 = -(v18 * v22);
      v508 = -(v19 * v22);
      v509 = v10;
      while (1)
      {
        v510 = v9;
        do
        {
          if (*v14)
          {
            v511 = v20 ? *v509 : 1.0;
            v512 = *v14 * 0.0039216;
            v513 = v512 * v511;
            if (v513 > 0.0)
            {
              v514 = v512 * *v23;
              if (v641)
              {
                v515 = *v7;
                if (*v7 <= 0.0)
                {
                  goto LABEL_783;
                }
              }

              else
              {
                v515 = 1.0;
              }

              v516 = *v12;
              v517 = v514 - (v514 * v515);
              if (v515 == 1.0)
              {
                v517 = 0.0;
              }

              v518 = (v516 + v517) - (v513 * v516);
              if (v513 != 1.0)
              {
                v516 = v513 * v516;
                v517 = v518;
              }

              v514 = v516 + v517;
              if (v641)
              {
                v513 = (v513 + v515) - (v513 * v515);
LABEL_783:
                *v12 = v514;
                *v7 = v513;
                goto LABEL_785;
              }

              *v12 = v514;
            }
          }

LABEL_785:
          v14 += v27;
          v519 = &v23[4 * v27];
          v520 = &v509[v20];
          if (v519 >= v642)
          {
            v521 = v506;
          }

          else
          {
            v521 = 0;
          }

          v509 = &v520[v521];
          v23 = &v519[4 * v521];
          v7 += v641;
          v12 += v27;
          --v510;
        }

        while (v510);
        if (v28)
        {
          v522 = &v640[4 * v18];
          if (v522 >= v28)
          {
            v523 = v508;
          }

          else
          {
            v523 = 0;
          }

          v10 += 4 * v19 + 4 * v523;
          if (v522 >= v28)
          {
            v524 = v507;
          }

          else
          {
            v524 = 0;
          }

          v23 = &v522[4 * v524];
          v642 += 4 * v524 + 4 * v18;
          v509 = v10;
          v640 = v23;
        }

        else
        {
          v23 += 4 * v18;
          v509 += v19;
        }

        v14 += v36;
        v12 += v37;
        v7 += v638;
        if (!--v8)
        {
          return;
        }
      }

    case 27:
      v42 = -v34;
      v43 = -(v18 * v22);
      v44 = -(v19 * v22);
      v45 = v10;
      break;
    default:
      return;
  }

LABEL_37:
  v46 = v9;
  while (1)
  {
    if (!*v14)
    {
      goto LABEL_55;
    }

    v47 = v20 ? *v45 : 1.0;
    v48 = *v14 * 0.0039216;
    v49 = v48 * v47;
    if (v49 <= 0.0)
    {
      goto LABEL_55;
    }

    v50 = v48 * *v23;
    if (v641)
    {
      v51 = *v7;
      if (*v7 <= 0.0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v51 = 1.0;
    }

    v52 = *v12 - (v49 * *v12);
    if (v49 == 1.0)
    {
      v52 = 0.0;
    }

    v53 = (v50 + v52) - (v50 * v51);
    if (v51 != 1.0)
    {
      v50 = v50 * v51;
      v52 = v53;
    }

    v50 = v50 + v52;
    if (!v641)
    {
      *v12 = v50;
      goto LABEL_55;
    }

    v49 = (v49 + v51) - (v49 * v51);
LABEL_53:
    *v12 = v50;
    *v7 = v49;
LABEL_55:
    v14 += v27;
    v54 = &v23[4 * v27];
    v55 = &v45[v20];
    if (v54 >= v642)
    {
      v56 = v42;
    }

    else
    {
      v56 = 0;
    }

    v45 = &v55[v56];
    v23 = &v54[4 * v56];
    v7 += v641;
    v12 += v27;
    if (!--v46)
    {
      if (v28)
      {
        v57 = &v640[4 * v18];
        if (v57 >= v28)
        {
          v58 = v44;
        }

        else
        {
          v58 = 0;
        }

        v10 += 4 * v19 + 4 * v58;
        if (v57 >= v28)
        {
          v59 = v43;
        }

        else
        {
          v59 = 0;
        }

        v23 = &v57[4 * v59];
        v642 += 4 * v59 + 4 * v18;
        v45 = v10;
        v640 = v23;
      }

      else
      {
        v23 += 4 * v18;
        v45 += v19;
      }

      v14 += v36;
      v12 += v37;
      v7 += v638;
      if (!--v8)
      {
        return;
      }

      goto LABEL_37;
    }
  }
}