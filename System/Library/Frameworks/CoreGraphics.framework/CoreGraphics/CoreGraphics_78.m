uint64_t CGRegionIsRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("assert_check_region", 46, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Regions/CGRegion.c", "r != NULL", "NULL region", a6, a7, a8, v15);
  }

  v9 = *(a1 + 16);
  if (v9 == &the_empty_shape || *(v9 + 4 * *(v9 + 4)) == 0x7FFFFFFF)
  {
    v10 = 1;
    if (!a2)
    {
      return v10;
    }
  }

  else
  {
    if (*(v9 + 12) != 4 || *(v9 + 28) != 2)
    {
      return 0;
    }

    v10 = *(v9 + 32) == 0x7FFFFFFF;
    if (!a2)
    {
      return v10;
    }
  }

  if (v10)
  {
    *a2 = CGRegionGetBoundingBox(a1);
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    return 1;
  }

  return v10;
}

BOOL CGRegionIntersectsRect(_BOOL8 result, double a2, double a3, double a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = *(result + 16);
    if (v5 == &the_empty_shape || *(v5 + 4 * *(v5 + 4)) == 0x7FFFFFFF)
    {
      return 0;
    }

    if (a2 == INFINITY || a3 == INFINITY)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      result = rect_to_bounds(&v10 + 1, &v10, &v9 + 1, &v9, a2, a3, a4, a5);
      if (result)
      {
        result = 0;
        v7 = v10;
        v8 = v9;
        if (v9 >= 2147483646)
        {
          v8 = 2147483646;
        }

        if (v10 == 0x80000000 || v10 == -2147483647)
        {
          v7 = -2147483647;
        }

        if (SHIDWORD(v10) < SHIDWORD(v9) && v7 < v8)
        {
          v11 = 0x280000000;
          v12 = v7;
          v13 = 4;
          v14 = HIDWORD(v10);
          v15 = HIDWORD(v9);
          v16 = v8;
          v17 = 0x7FFFFFFF00000002;
          return shape_intersects_shape(v5, &v11) != 0;
        }
      }
    }
  }

  return result;
}

BOOL CGRegionIntersectsRegion(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return shape_intersects_shape(*(a1 + 16), *(a2 + 16)) != 0;
    }
  }

  return result;
}

CFDataRef CGRegionCopyData(void *a1)
{
  if (!region_check(a1))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = shape_length(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = 4 * v3;
  if (!shape_data_valid(v2, v4))
  {
    return 0;
  }

  return CFDataCreate(0, v2, v4);
}

unint64_t CGRegionGetDataLength(void *a1)
{
  if (!region_check(a1))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = shape_length(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = 4 * v3;
  if (shape_data_valid(v2, v4))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

_DWORD *CGRegionGetDataBytePtr(void *a1)
{
  if (!region_check(a1))
  {
    return 0;
  }

  v2 = a1[2];
  v3 = shape_length(v2);
  if (!v3)
  {
    return 0;
  }

  if (shape_data_valid(v2, 4 * v3))
  {
    return v2;
  }

  return 0;
}

unint64_t rgba64_sample_RGBAf(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = *(a1 + 176);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v74 = *(a1 + 80);
  v75 = *(a1 + 88);
  v86 = *(a1 + 112);
  v85 = *(a1 + 120);
  v73 = *(a1 + 188);
  v18 = (*(a1 + 152) - 8);
  v78 = *(a1 + 144) - 1;
  v83 = *(a1 + 24);
  v84 = *(a1 + 40);
  v82 = *(a1 + 32);
  result = v82 + ((*(a1 + 260) - 1) * v83) + 4 * (4 * *(a1 + 256)) - 16;
  v76 = v17;
  v77 = v16;
  v80 = -v17;
  v81 = result;
  v79 = -v16;
  while (1)
  {
    if (a3 >= v76)
    {
      if (a3 <= v75)
      {
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        HIDWORD(v32) = HIDWORD(a3);
        v23 = a4;
        v24 = v77;
      }

      else
      {
        v26 = *(a1 + 216);
        v27 = *(a1 + 224) + v75;
        v28 = v27 - a3 + (v26 >> 1);
        v23 = a4;
        v24 = v77;
        if (v28 < 1)
        {
          goto LABEL_34;
        }

        if (v28 >= v26)
        {
          LODWORD(v29) = 0x3FFFFFFF;
        }

        else
        {
          v29 = (*(a1 + 232) * v28) >> 32;
        }

        v31 = v73 | v29;
        v32 = v27 - 0x1000000;
        v30 = 448;
      }
    }

    else
    {
      v20 = *(a1 + 216);
      v21 = v76 - *(a1 + 224);
      v22 = a3 - v21 + (v20 >> 1);
      v23 = a4;
      v24 = v77;
      if (v22 < 1)
      {
        goto LABEL_34;
      }

      if (v22 >= v20)
      {
        LODWORD(v25) = 0x3FFFFFFF;
      }

      else
      {
        v25 = (*(a1 + 232) * v22) >> 32;
      }

      v31 = v73 | v25;
      v32 = v21 + 0x1000000;
      v30 = 512;
    }

    if (a2 >= v24)
    {
      if (a2 <= v74)
      {
        v37 = (a2 >> 26) & 0x3C;
        v36 = a2;
      }

      else
      {
        v38 = *(a1 + 192);
        v39 = *(a1 + 200) + v74;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_34;
        }

        if (v40 < v38)
        {
          v31 = ((v31 >> 15) * (((*(a1 + 208) * v40) >> 32) >> 15)) | v73;
        }

        v36 = v39 - 0x1000000;
        v37 = 28;
      }
    }

    else
    {
      v33 = *(a1 + 192);
      v34 = v24 - *(a1 + 200);
      v35 = a2 - v34 + (v33 >> 1);
      if (v35 < 1)
      {
        goto LABEL_34;
      }

      if (v35 < v33)
      {
        v31 = ((v31 >> 15) * (((*(a1 + 208) * v35) >> 32) >> 15)) | v73;
      }

      v36 = v34 + 0x1000000;
      v37 = 32;
    }

    if (v31 >= 0x400000)
    {
      break;
    }

LABEL_34:
    v45 = v23 - 1;
    a2 += v86;
    a3 += v85;
    ++v18;
    *++v78 = 0;
LABEL_35:
    a4 = v45;
    if (!v45)
    {
      return result;
    }
  }

  v41 = v82 + SHIDWORD(v32) * v83 + 16 * (v36 >> 32);
  v42 = *(a1 + 32);
  if (result >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = result;
  }

  if (v43 < v42)
  {
    v43 = *(a1 + 32);
  }

  if (v84)
  {
    v44 = *(v43 + 12);
  }

  else
  {
    v44 = 1.0;
  }

  v46 = *v43;
  v47 = *(v43 + 4);
  if (v15)
  {
    v48 = *(v15 + (v37 | v30));
LABEL_56:
    v55 = v48 & 0xF;
    v56 = HIBYTE(v48) & 3;
    if (v55 == 1)
    {
      v69 = v41 + SBYTE1(v48) * v83;
      if (result < v69)
      {
        v69 = result;
      }

      if (v69 >= v42)
      {
        v42 = v69;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * v56];
    }

    else
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v57 = SBYTE1(v48) * v83;
          v58 = 16 * SBYTE2(v48);
          v59 = v41 + v58;
          if (result < v41 + v58)
          {
            v59 = result;
          }

          if (v59 < v42)
          {
            v59 = v42;
          }

          v60 = *(v59 + 4);
          if (v84)
          {
            v61 = *(v59 + 12);
            v62 = v41 + v57 + v58;
            if (result < v62)
            {
              v62 = result;
            }

            if (v62 >= v42)
            {
              v42 = v62;
            }

            v63 = *(v42 + 12);
          }

          else
          {
            v70 = v41 + v57 + v58;
            if (result < v70)
            {
              v70 = result;
            }

            if (v70 >= v42)
            {
              v42 = v70;
            }

            v61 = 1.0;
            v63 = 1.0;
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v56 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
          v46 = (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) - (((v46 - (v46 * v11.f32[0])) + (*v59 * v11.f32[0])) * v12.f32[0])) + (((*v59 - (*v59 * v11.f32[0])) + (*v42 * v11.f32[0])) * v12.f32[0]);
          v71 = vmla_n_f32(vmls_lane_f32(v47, v47, v11, 0), v60, v11.f32[0]);
          v47 = vmla_n_f32(vmls_lane_f32(v71, v71, v12, 0), vmla_n_f32(vmls_lane_f32(v60, v60, v11, 0), *(v42 + 4), v11.f32[0]), v12.f32[0]);
          v44 = (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0])) + (((v61 - (v61 * v11.f32[0])) + (v63 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_40;
      }

      v64 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (result < v64)
      {
        v64 = result;
      }

      if (v64 >= v42)
      {
        v42 = v64;
      }

      v65 = *v42;
      v66 = *(v42 + 4);
      v67 = 1.0;
      if (v84)
      {
        v67 = *(v42 + 12);
      }

      v68 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
    }

    LODWORD(a11) = v68[3];
    v46 = (v46 - (v46 * *&a11)) + (v65 * *&a11);
    v47 = vmla_n_f32(vmls_lane_f32(v47, v47, *&a11, 0), v66, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v67 * *&a11);
  }

LABEL_40:
  v49 = 0;
  v50 = v31 >> 22;
  ++v18;
  v72 = v23;
  v51 = v23 - 1;
  a3 += v85;
  v52 = v75 - a3;
  a2 += v86;
  v53 = v74 - a2;
  while (1)
  {
    RGBAF_15229(v18, v46, v47.f32[0], v47.f32[1], v44);
    *(v78 + 1 + v49) = v50;
    result = v81;
    if (v51 == v49)
    {
      return result;
    }

    if (((v52 | v53 | (v80 + a3) | (v79 + a2)) & 0x8000000000000000) != 0)
    {
      v78 += v49 + 1;
      v45 = ~v49 + v72;
      goto LABEL_35;
    }

    v41 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    v42 = *(a1 + 32);
    if (v81 >= v41)
    {
      v54 = v82 + SHIDWORD(a3) * v83 + 16 * (a2 >> 32);
    }

    else
    {
      v54 = v81;
    }

    if (v54 < v42)
    {
      v54 = *(a1 + 32);
    }

    if (v84)
    {
      v44 = *(v54 + 12);
    }

    else
    {
      v44 = 1.0;
    }

    v46 = *v54;
    v47 = *(v54 + 4);
    if (v15)
    {
      v48 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v78 += v49 + 1;
        v23 = ~v49 + v72;
        v31 = -1;
        goto LABEL_56;
      }
    }

    ++v49;
    ++v18;
    a3 += v85;
    v52 -= v85;
    a2 += v86;
    v53 -= v86;
    LOBYTE(v50) = -1;
  }
}

unint64_t *RGBAF_15229(unint64_t *result, float a2, float a3, float a4, float a5)
{
  if (a5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    LODWORD(v5) = ((a5 * 65535.0) + 0.5);
    if (a5 <= 1.0)
    {
      v5 = v5;
    }

    else
    {
      v5 = 0xFFFFLL;
    }

    LOWORD(v6) = v5;
    if (a5 > 1.0)
    {
      a5 = 1.0;
    }

    LOWORD(v7) = v5;
    if (a2 <= a5)
    {
      if (a2 >= 0.0)
      {
        v7 = ((a2 * 65535.0) + 0.5);
      }

      else
      {
        LOWORD(v7) = 0;
      }
    }

    v9 = v5;
    if (a3 <= a5)
    {
      if (a3 >= 0.0)
      {
        v9 = ((a3 * 65535.0) + 0.5);
      }

      else
      {
        v9 = 0;
      }
    }

    if (a4 <= a5)
    {
      if (a4 >= 0.0)
      {
        v6 = ((a4 * 65535.0) + 0.5);
      }

      else
      {
        LOWORD(v6) = 0;
      }
    }

    v8 = (v5 << 48) | (v6 << 32) | (v9 << 16) | v7;
  }

  *result = v8;
  return result;
}

unint64_t *rgba64_sample_RGBAF(unint64_t *result, uint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v15 = result[22];
  v71 = result[10];
  v72 = result[11];
  v81 = result[14];
  v80 = result[15];
  v70 = *(result + 47);
  v16 = (result[19] - 8);
  v75 = result[18] - 1;
  v79 = result[5];
  v76 = result[4];
  v77 = *(result + 6);
  v82 = result;
  v78 = v76 + ((*(result + 65) - 1) * v77) + 4 * (4 * *(result + 64)) - 16;
  v73 = result[9];
  v74 = result[8];
  while (1)
  {
    if (a3 >= v73)
    {
      if (a3 <= v72)
      {
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        HIDWORD(v29) = HIDWORD(a3);
        v20 = a4;
        v21 = v74;
      }

      else
      {
        v23 = v82[27];
        v24 = v82[28] + v72;
        v25 = v24 - a3 + (v23 >> 1);
        v20 = a4;
        v21 = v74;
        if (v25 < 1)
        {
          goto LABEL_33;
        }

        if (v25 >= v23)
        {
          LODWORD(v26) = 0x3FFFFFFF;
        }

        else
        {
          v26 = (v82[29] * v25) >> 32;
        }

        v28 = v70 | v26;
        v29 = v24 - 0x1000000;
        v27 = 448;
      }
    }

    else
    {
      v17 = v82[27];
      v18 = v73 - v82[28];
      v19 = a3 - v18 + (v17 >> 1);
      v20 = a4;
      v21 = v74;
      if (v19 < 1)
      {
        goto LABEL_33;
      }

      if (v19 >= v17)
      {
        LODWORD(v22) = 0x3FFFFFFF;
      }

      else
      {
        v22 = (v82[29] * v19) >> 32;
      }

      v28 = v70 | v22;
      v29 = v18 + 0x1000000;
      v27 = 512;
    }

    if (a2 >= v21)
    {
      if (a2 <= v71)
      {
        v34 = (a2 >> 26) & 0x3C;
        v33 = a2;
      }

      else
      {
        v35 = v82[24];
        v36 = v82[25] + v71;
        v37 = v36 - a2 + (v35 >> 1);
        if (v37 < 1)
        {
          goto LABEL_33;
        }

        if (v37 < v35)
        {
          v28 = ((v28 >> 15) * (((v82[26] * v37) >> 32) >> 15)) | v70;
        }

        v33 = v36 - 0x1000000;
        v34 = 28;
      }
    }

    else
    {
      v30 = v82[24];
      v31 = v21 - v82[25];
      v32 = a2 - v31 + (v30 >> 1);
      if (v32 < 1)
      {
        goto LABEL_33;
      }

      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((v82[26] * v32) >> 32) >> 15)) | v70;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
    }

    if (v28 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v42 = v20 - 1;
    a2 += v81;
    a3 += v80;
    ++v16;
    *++v75 = 0;
LABEL_34:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v38 = v76 + SHIDWORD(v29) * v77 + 16 * (v33 >> 32);
  v39 = v82[4];
  v40 = v78;
  if (v78 >= v38)
  {
    v40 = v38;
  }

  if (v40 < v39)
  {
    v40 = v82[4];
  }

  if (v79)
  {
    v41 = COERCE_FLOAT(bswap32(v40[1].u32[1]));
  }

  else
  {
    v41 = 1.0;
  }

  v43 = vrev32_s8(*v40);
  v44 = COERCE_FLOAT(bswap32(v40[1].u32[0]));
  if (v15)
  {
    v45 = *(v15 + (v34 | v27));
LABEL_54:
    v52 = v45 & 0xF;
    v53 = HIBYTE(v45) & 3;
    if (v52 == 1)
    {
      v68 = (v38 + SBYTE1(v45) * v77);
      if (v78 < v68)
      {
        v68 = v78;
      }

      if (v68 >= v39)
      {
        v39 = v68;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * v53];
    }

    else
    {
      if (v52 != 2)
      {
        if (v52 == 3)
        {
          v54 = (v38 + ((HIWORD(v45) << 56) >> 52));
          if (v78 < v54)
          {
            v54 = v78;
          }

          if (v54 < v39)
          {
            v54 = v39;
          }

          v55 = vrev32_s8(*v54);
          v56 = COERCE_FLOAT(bswap32(v54[1].u32[0]));
          v57 = 1.0;
          v58 = 1.0;
          if (v79)
          {
            v58 = COERCE_FLOAT(bswap32(v54[1].u32[1]));
          }

          v59 = v38 + SBYTE1(v45) * v77 + 16 * SBYTE2(v45);
          if (v78 < v59)
          {
            v59 = v78;
          }

          if (v59 >= v39)
          {
            v39 = v59;
          }

          v60 = vrev32_s8(*v39);
          v61 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
          if (v79)
          {
            v57 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v53 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3) + 3];
          v44 = (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) - (((v44 - (v44 * v11.f32[0])) + (v56 * v11.f32[0])) * v12.f32[0])) + (((v56 - (v56 * v11.f32[0])) + (v61 * v11.f32[0])) * v12.f32[0]);
          v62 = vmla_n_f32(vmls_lane_f32(v43, v43, v11, 0), v55, v11.f32[0]);
          v43 = vmla_n_f32(vmls_lane_f32(v62, v62, v12, 0), vmla_n_f32(vmls_lane_f32(v55, v55, v11, 0), v60, v11.f32[0]), v12.f32[0]);
          v41 = (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) - (((v41 - (v41 * v11.f32[0])) + (v58 * v11.f32[0])) * v12.f32[0])) + (((v58 - (v58 * v11.f32[0])) + (v57 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v63 = (v38 + ((HIWORD(v45) << 56) >> 52));
      if (v78 < v63)
      {
        v63 = v78;
      }

      if (v63 >= v39)
      {
        v39 = v63;
      }

      v64 = vrev32_s8(*v39);
      v65 = COERCE_FLOAT(bswap32(v39[1].u32[0]));
      v66 = 1.0;
      if (v79)
      {
        v66 = COERCE_FLOAT(bswap32(v39[1].u32[1]));
      }

      v67 = &interpolate_rgbaf_21860[4 * ((v45 >> 28) & 3)];
    }

    LODWORD(a11) = v67[3];
    v43 = vmla_n_f32(vmls_lane_f32(v43, v43, *&a11, 0), v64, *&a11);
    v44 = (v44 - (v44 * *&a11)) + (v65 * *&a11);
    v41 = (v41 - (v41 * *&a11)) + (v66 * *&a11);
  }

LABEL_39:
  v46 = 0;
  v47 = v28 >> 22;
  ++v16;
  v69 = v20;
  v48 = v20 - 1;
  a3 += v80;
  v49 = v72 - a3;
  a2 += v81;
  v50 = v71 - a2;
  while (1)
  {
    result = RGBAF_15229(v16, v43.f32[0], v43.f32[1], v44, v41);
    *(v75 + 1 + v46) = v47;
    if (v48 == v46)
    {
      return result;
    }

    if (((v49 | v50 | (a3 - v73) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v75 += v46 + 1;
      v42 = ~v46 + v69;
      goto LABEL_34;
    }

    v38 = v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32);
    v39 = v82[4];
    v51 = v78;
    if (v78 >= v38)
    {
      v51 = (v76 + SHIDWORD(a3) * v77 + 16 * (a2 >> 32));
    }

    if (v51 < v39)
    {
      v51 = v82[4];
    }

    if (v79)
    {
      v41 = COERCE_FLOAT(bswap32(v51[1].u32[1]));
    }

    else
    {
      v41 = 1.0;
    }

    v43 = vrev32_s8(*v51);
    v44 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
    if (v15)
    {
      v45 = *(v15 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v75 += v46 + 1;
        v20 = ~v46 + v69;
        v28 = -1;
        goto LABEL_54;
      }
    }

    ++v46;
    ++v16;
    a3 += v80;
    v49 -= v80;
    a2 += v81;
    v50 -= v81;
    LOBYTE(v47) = -1;
  }
}

unint64_t *rgba64_sample_RGBf(unint64_t *result, int64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = result[22];
  v60 = result[10];
  v63 = result[11];
  v68 = result[15];
  v69 = result[14];
  v13 = (result[19] - 8);
  v64 = result[18] - 1;
  v65 = result[4];
  v66 = *(result + 6);
  v70 = result;
  v59 = *(result + 47);
  v67 = v65 + ((*(result + 65) - 1) * v66) + 4 * (3 * *(result + 64)) - 16;
  v61 = result[9];
  v62 = result[8];
  while (1)
  {
    if (a3 >= v61)
    {
      if (a3 <= v63)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v62;
      }

      else
      {
        v20 = v70[27];
        v21 = v70[28] + v63;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v62;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (v70[29] * v22) >> 32;
        }

        v25 = v59 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = v70[27];
      v15 = v61 - v70[28];
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v62;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (v70[29] * v16) >> 32;
      }

      v25 = v59 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v60)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = v70[24];
        v33 = v70[25] + v60;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((v70[26] * v34) >> 32) >> 15)) | v59;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = v70[24];
      v28 = v18 - v70[25];
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((v70[26] * v29) >> 32) >> 15)) | v59;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v69;
    a3 += v68;
    ++v13;
    *++v64 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v65 + SHIDWORD(v26) * v66 + 12 * SHIDWORD(v30);
  v36 = v70[4];
  v37 = v67;
  if (v67 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = v70[4];
  }

  v38 = *v37;
  v39 = *(v37 + 4);
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v57 = v35 + SBYTE1(v40) * v66;
    if (v67 < v57)
    {
      v57 = v67;
    }

    if (v57 >= v36)
    {
      v36 = v57;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v54 = v35 + 12 * SBYTE2(v40);
    if (v67 < v54)
    {
      v54 = v67;
    }

    if (v54 >= v36)
    {
      v36 = v54;
    }

    v55 = *v36;
    v56 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v56[3];
    v38 = (v38 - (v38 * *&a8)) + (v55 * *&a8);
    v39 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a8, 0), *(v36 + 4), *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = v35 + 12 * SBYTE2(v40);
  if (v67 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v67;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = v50 + SBYTE1(v40) * v66;
  if (v67 < v52)
  {
    v52 = v67;
  }

  if (v52 >= v36)
  {
    v36 = v52;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v38 = (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) - (((v38 - (v38 * *&a9)) + (*v51 * *&a9)) * *&a10)) + (((*v51 - (*v51 * *&a9)) + (*v36 * *&a9)) * *&a10);
  a8 = *(v51 + 4);
  v53 = vmla_n_f32(vmls_lane_f32(v39, v39, *&a9, 0), *&a8, *&a9);
  v39 = vmla_n_f32(vmls_lane_f32(v53, v53, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), *(v36 + 4), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v58 = v17;
  v44 = v17 - 1;
  a3 += v68;
  v45 = v63 - a3;
  a2 += v69;
  v46 = v60 - a2;
  while (1)
  {
    result = RGBAF_15229(v13, v38, v39.f32[0], v39.f32[1], *&a8);
    *(v64 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v61) | (a2 - v62)) & 0x8000000000000000) != 0)
    {
      v64 += v42 + 1;
      v41 = ~v42 + v58;
      goto LABEL_34;
    }

    v35 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    v36 = v70[4];
    v47 = v67;
    if (v67 >= v35)
    {
      v47 = v65 + SHIDWORD(a3) * v66 + 12 * SHIDWORD(a2);
    }

    if (v47 < v36)
    {
      v47 = v70[4];
    }

    v38 = *v47;
    v39 = *(v47 + 4);
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v64 += v42 + 1;
        v17 = ~v42 + v58;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v68;
    v45 -= v68;
    a2 += v69;
    v46 -= v69;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

unint64_t *rgba64_sample_RGBF(unint64_t *result, int64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = result[22];
  v61 = result[10];
  v64 = result[11];
  v69 = result[15];
  v70 = result[14];
  v13 = (result[19] - 8);
  v65 = result[18] - 1;
  v66 = result[4];
  v67 = *(result + 6);
  v71 = result;
  v60 = *(result + 47);
  v68 = v66 + ((*(result + 65) - 1) * v67) + 4 * (3 * *(result + 64)) - 16;
  v62 = result[9];
  v63 = result[8];
  while (1)
  {
    if (a3 >= v62)
    {
      if (a3 <= v64)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v17 = a4;
        v18 = v63;
      }

      else
      {
        v20 = v71[27];
        v21 = v71[28] + v64;
        v22 = v21 - a3 + (v20 >> 1);
        v17 = a4;
        v18 = v63;
        if (v22 < 1)
        {
          goto LABEL_33;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (v71[29] * v22) >> 32;
        }

        v25 = v60 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v14 = v71[27];
      v15 = v62 - v71[28];
      v16 = a3 - v15 + (v14 >> 1);
      v17 = a4;
      v18 = v63;
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (v71[29] * v16) >> 32;
      }

      v25 = v60 | v19;
      v26 = v15 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      if (a2 <= v61)
      {
        v31 = (a2 >> 26) & 0x3C;
        HIDWORD(v30) = HIDWORD(a2);
      }

      else
      {
        v32 = v71[24];
        v33 = v71[25] + v61;
        v34 = v33 - a2 + (v32 >> 1);
        if (v34 < 1)
        {
          goto LABEL_33;
        }

        if (v34 < v32)
        {
          v25 = ((v25 >> 15) * (((v71[26] * v34) >> 32) >> 15)) | v60;
        }

        v30 = v33 - 0x1000000;
        v31 = 28;
      }
    }

    else
    {
      v27 = v71[24];
      v28 = v18 - v71[25];
      v29 = a2 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_33;
      }

      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((v71[26] * v29) >> 32) >> 15)) | v60;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v41 = v17 - 1;
    a2 += v70;
    a3 += v69;
    ++v13;
    *++v65 = 0;
LABEL_34:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v35 = v66 + SHIDWORD(v26) * v67 + 12 * SHIDWORD(v30);
  v36 = v71[4];
  v37 = v68;
  if (v68 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = v71[4];
  }

  v38 = vrev32_s8(*v37);
  v39 = COERCE_FLOAT(bswap32(v37[1].u32[0]));
  if (!v12)
  {
    goto LABEL_36;
  }

  v40 = *(v12 + (v31 | v24));
LABEL_49:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  if (v48 == 1)
  {
    v58 = (v35 + SBYTE1(v40) * v67);
    if (v68 < v58)
    {
      v58 = v68;
    }

    if (v58 >= v36)
    {
      v36 = v58;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * v49];
    goto LABEL_72;
  }

  if (v48 == 2)
  {
    v55 = (v35 + 12 * SBYTE2(v40));
    if (v68 < v55)
    {
      v55 = v68;
    }

    if (v55 >= v36)
    {
      v36 = v55;
    }

    v56 = COERCE_FLOAT(bswap32(v36[1].u32[0]));
    v57 = &interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3)];
LABEL_72:
    LODWORD(a8) = v57[3];
    v38 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a8, 0), vrev32_s8(*v36), *&a8);
    v39 = (v39 - (v39 * *&a8)) + (v56 * *&a8);
    *&a8 = *&a8 + (1.0 - *&a8);
    goto LABEL_37;
  }

  if (v48 != 3)
  {
LABEL_36:
    LODWORD(a8) = 1.0;
    goto LABEL_37;
  }

  v50 = (v35 + 12 * SBYTE2(v40));
  if (v68 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v68;
  }

  if (v51 < v36)
  {
    v51 = v36;
  }

  v52 = COERCE_FLOAT(bswap32(v51[1].u32[0]));
  v53 = (v50 + SBYTE1(v40) * v67);
  if (v68 < v53)
  {
    v53 = v68;
  }

  if (v53 >= v36)
  {
    v36 = v53;
  }

  LODWORD(a9) = interpolate_rgbaf_21860[4 * v49 + 3];
  LODWORD(a10) = interpolate_rgbaf_21860[4 * ((v40 >> 28) & 3) + 3];
  v39 = (((v39 - (v39 * *&a9)) + (v52 * *&a9)) - (((v39 - (v39 * *&a9)) + (v52 * *&a9)) * *&a10)) + (((v52 - (v52 * *&a9)) + (COERCE_FLOAT(bswap32(v36[1].u32[0])) * *&a9)) * *&a10);
  a8 = COERCE_DOUBLE(vrev32_s8(*v51));
  v54 = vmla_n_f32(vmls_lane_f32(v38, v38, *&a9, 0), *&a8, *&a9);
  v38 = vmla_n_f32(vmls_lane_f32(v54, v54, *&a10, 0), vmla_n_f32(vmls_lane_f32(*&a8, *&a8, *&a9, 0), vrev32_s8(*v36), *&a9), *&a10);
  *&a8 = ((*&a9 + (1.0 - *&a9)) - ((*&a9 + (1.0 - *&a9)) * *&a10)) + ((*&a9 + (1.0 - *&a9)) * *&a10);
LABEL_37:
  v42 = 0;
  v43 = v25 >> 22;
  ++v13;
  v59 = v17;
  v44 = v17 - 1;
  a3 += v69;
  v45 = v64 - a3;
  a2 += v70;
  v46 = v61 - a2;
  while (1)
  {
    result = RGBAF_15229(v13, v38.f32[0], v38.f32[1], v39, *&a8);
    *(v65 + 1 + v42) = v43;
    if (v44 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v62) | (a2 - v63)) & 0x8000000000000000) != 0)
    {
      v65 += v42 + 1;
      v41 = ~v42 + v59;
      goto LABEL_34;
    }

    v35 = v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2);
    v36 = v71[4];
    v47 = v68;
    if (v68 >= v35)
    {
      v47 = (v66 + SHIDWORD(a3) * v67 + 12 * SHIDWORD(a2));
    }

    if (v47 < v36)
    {
      v47 = v71[4];
    }

    v38 = vrev32_s8(*v47);
    v39 = COERCE_FLOAT(bswap32(v47[1].u32[0]));
    if (v12)
    {
      v40 = *(v12 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v65 += v42 + 1;
        v17 = ~v42 + v59;
        v25 = -1;
        goto LABEL_49;
      }
    }

    ++v42;
    ++v13;
    a3 += v69;
    v45 -= v69;
    a2 += v70;
    v46 -= v70;
    LODWORD(a8) = 1.0;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_cmyk64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v111 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v113 = *(result + 88);
  v114 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v109 = *(result + 188);
  v14 = v5 + (v12 * v7) + 2 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 8 * v13 - 16;
  v112 = *(result + 72);
  v110 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v112)
    {
      if (a3 <= v113)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v110;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v113;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v110;
        v25 = v109 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v112 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v110;
      v25 = v109 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v109;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v114 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v111)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v111;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v109;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + SHIDWORD(v26) * v6;
  v39 = v38 + 8 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 8 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + 2 * v37;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = *v43;
  }

  else
  {
    v42 = 0;
    v45 = 0xFFFF;
  }

  v46 = *v41;
  if (!v8)
  {
    goto LABEL_44;
  }

  v47 = *(v8 + (v32 | v24));
LABEL_66:
  v59 = v47 & 0xF;
  v60 = HIBYTE(v47) & 3;
  switch(v59)
  {
    case 1:
      v98 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v98)
      {
        v98 = v15;
      }

      if (v98 < v40)
      {
        v98 = v40;
      }

      v99 = *v98;
      v100 = 0xFFFF;
      if (v5)
      {
        v101 = (v42 + SBYTE1(v47) * v7);
        if (v14 < v101)
        {
          v101 = v14;
        }

        if (v101 < *(result + 40))
        {
          v101 = *(result + 40);
        }

        v100 = *v101;
      }

      v102 = &interpolate_cmyk64 + 16 * v60;
      v103 = *v102;
      v104 = v60 + 1;
      v105 = v46 - ((*v102 & v46) >> v104);
      LODWORD(v102) = *(v102 + 4);
      v89 = v45 - ((v102 & v45) >> v104);
      v106 = (v103 & v99) >> v104;
      v90 = (v100 & v102) >> v104;
      v46 = v105 + v106;
LABEL_120:
      LOWORD(v90) = v89 + v90;
      goto LABEL_121;
    case 2:
      v91 = HIWORD(v47) << 56;
      v92 = (v39 + (v91 >> 53));
      if (v15 < v92)
      {
        v92 = v15;
      }

      if (v92 < v40)
      {
        v92 = v40;
      }

      v93 = *v92;
      v94 = -1;
      if (v5)
      {
        v95 = (v42 + (v91 >> 55));
        if (v14 < v95)
        {
          v95 = v14;
        }

        if (v95 < *(result + 40))
        {
          v95 = *(result + 40);
        }

        v94 = *v95;
      }

      v96 = (v47 >> 28) & 3;
      v97 = &interpolate_cmyk64 + 16 * v96;
      LOBYTE(v96) = v96 + 1;
      v46 = v46 - ((*v97 & v46) >> v96) + ((*v97 & v93) >> v96);
      v90 = v45 - ((*(v97 + 4) & v45) >> v96) + ((v94 & *(v97 + 4)) >> v96);
LABEL_121:
      v45 = v90;
      break;
    case 3:
      v61 = HIWORD(v47) << 56;
      v62 = (v39 + (v61 >> 53));
      if (v15 < v62)
      {
        v62 = v15;
      }

      if (v62 < v40)
      {
        v62 = v40;
      }

      v63 = *v62;
      v64 = v39 + SBYTE1(v47) * v6;
      if (v15 >= v64)
      {
        v65 = (v39 + SBYTE1(v47) * v6);
      }

      else
      {
        v65 = v15;
      }

      if (v65 < v40)
      {
        v65 = v40;
      }

      v66 = (v64 + (v61 >> 53));
      if (v15 < v66)
      {
        v66 = v15;
      }

      if (v66 < v40)
      {
        v66 = v40;
      }

      v107 = *v66;
      v108 = *v65;
      v67 = 0xFFFF;
      v68 = 0xFFFF;
      v69 = 0xFFFF;
      if (v5)
      {
        v70 = (v42 + (v61 >> 55));
        v71 = *(result + 40);
        if (v14 < v70)
        {
          v70 = v14;
        }

        if (v70 < v71)
        {
          v70 = *(result + 40);
        }

        v67 = *v70;
        v72 = v42 + SBYTE1(v47) * v7;
        if (v14 >= v72)
        {
          v73 = (v42 + SBYTE1(v47) * v7);
        }

        else
        {
          v73 = v14;
        }

        if (v73 < v71)
        {
          v73 = *(result + 40);
        }

        v68 = *v73;
        v74 = (v72 + (v61 >> 55));
        if (v14 < v74)
        {
          v74 = v14;
        }

        if (v74 < v71)
        {
          v74 = *(result + 40);
        }

        v69 = *v74;
      }

      v75 = &interpolate_cmyk64 + 16 * v60;
      v76 = *v75;
      v77 = v60 + 1;
      v78 = v46 - ((*v75 & v46) >> v77);
      LODWORD(v75) = *(v75 + 4);
      v79 = v63 - ((v76 & v63) >> v77);
      v80 = v67 - ((v67 & v75) >> v77);
      v81 = v78 + ((v76 & v108) >> v77);
      v82 = v45 - ((v75 & v45) >> v77) + ((v68 & v75) >> v77);
      v83 = v79 + ((v76 & v107) >> v77);
      v84 = v80 + ((v69 & v75) >> v77);
      v85 = (v47 >> 28) & 3;
      v86 = &interpolate_cmyk64 + 16 * v85;
      v87 = *v86;
      LOBYTE(v85) = v85 + 1;
      v88 = v81 - ((v81 & *v86) >> v85);
      LODWORD(v86) = *(v86 + 4);
      v89 = v82 - ((v82 & v86) >> v85);
      v90 = (v84 & v86) >> v85;
      v46 = v88 + ((v83 & v87) >> v85);
      goto LABEL_120;
  }

LABEL_44:
  v48 = 0;
  v49 = v25 >> 22;
  a2 += v10;
  v50 = v111 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v113 - a3;
  while (1)
  {
    v53 = v45 - (HIWORD(v46) + v46);
    v54 = v45 - (HIWORD(v46) + WORD1(v46));
    v55 = v45 - (HIWORD(v46) + WORD2(v46));
    *(v51 - 1) = (v53 & ~(v53 >> 31)) + ((v54 & ~(v54 >> 31)) << 16);
    *v51 = (v55 & ~(v55 >> 31)) + (v45 << 16);
    *(v114 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v52 | v50 | (a3 - v112) | (a2 - v110)) < 0)
    {
      v114 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v56 = (v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32));
    }

    else
    {
      v56 = v15;
    }

    if (v56 < v40)
    {
      v56 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      v57 = *(result + 40);
      if (v14 >= v42)
      {
        v58 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      }

      else
      {
        v58 = v14;
      }

      if (v58 >= v57)
      {
        v57 = v58;
      }

      v45 = *v57;
    }

    else
    {
      v45 = 0xFFFF;
    }

    v46 = *v56;
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v114 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v25 = -1;
        goto LABEL_66;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t rgba64_sample_CMYK64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v107 = *(result + 80);
  v109 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v110 = *(result + 144) - 1;
  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v105 = *(result + 188);
  v14 = v5 + (v12 * v7) + 2 * (v13 - 1);
  v15 = v4 + (v12 * v6) + 8 * v13 - 16;
  v108 = *(result + 72);
  v106 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v108)
    {
      if (a3 <= v109)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v106;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v109;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_39;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v106;
        v25 = v105 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v108 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v106;
      v25 = v105 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v105;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_39:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v110 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v107)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v107;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_39;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v105;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v25 < 0x400000)
  {
    goto LABEL_39;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + SHIDWORD(v26) * v6;
  v39 = v38 + 8 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 8 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  if (v5)
  {
    v42 = v5 + v36 * v7 + 2 * v37;
    v43 = *(result + 40);
    if (v14 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v14;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v45 = bswap32(*v43) >> 16;
  }

  else
  {
    v42 = 0;
    v45 = 0xFFFF;
  }

  v46 = ((bswap32(v41[2]) >> 16) << 32) | ((bswap32(v41[3]) >> 16) << 48) | bswap32(v41[1]) & 0xFFFF0000 | (bswap32(*v41) >> 16);
  if (!v8)
  {
    goto LABEL_44;
  }

  v47 = *(v8 + (v32 | v24));
LABEL_67:
  v60 = v47 & 0xF;
  v61 = HIBYTE(v47) & 3;
  switch(v60)
  {
    case 1:
      v93 = (v39 + SBYTE1(v47) * v6);
      if (v15 < v93)
      {
        v93 = v15;
      }

      if (v93 < v40)
      {
        v93 = v40;
      }

      v94 = ((bswap32(v93[2]) >> 16) << 32) | ((bswap32(v93[3]) >> 16) << 48) | bswap32(v93[1]) & 0xFFFF0000 | (bswap32(*v93) >> 16);
      v95 = 0xFFFF;
      if (v5)
      {
        v96 = (v42 + SBYTE1(v47) * v7);
        if (v14 < v96)
        {
          v96 = v14;
        }

        if (v96 < *(result + 40))
        {
          v96 = *(result + 40);
        }

        v95 = bswap32(*v96) >> 16;
      }

      v97 = &interpolate_cmyk64 + 16 * v61;
      v98 = *v97;
      v99 = v61 + 1;
      v100 = v46 - ((*v97 & v46) >> v99);
      LODWORD(v97) = *(v97 + 4);
      v84 = v45 - ((v97 & v45) >> v99);
      v85 = (v95 & v97) >> v99;
      v46 = v100 + ((v98 & v94) >> v99);
LABEL_121:
      LOWORD(v85) = v84 + v85;
      goto LABEL_122;
    case 2:
      v86 = HIWORD(v47) << 56;
      v87 = (v39 + (v86 >> 53));
      if (v15 < v87)
      {
        v87 = v15;
      }

      if (v87 < v40)
      {
        v87 = v40;
      }

      v88 = ((bswap32(v87[2]) >> 16) << 32) | ((bswap32(v87[3]) >> 16) << 48) | bswap32(v87[1]) & 0xFFFF0000 | (bswap32(*v87) >> 16);
      LOWORD(v89) = -1;
      if (v5)
      {
        v90 = (v42 + (v86 >> 55));
        if (v14 < v90)
        {
          v90 = v14;
        }

        if (v90 < *(result + 40))
        {
          v90 = *(result + 40);
        }

        v89 = bswap32(*v90) >> 16;
      }

      v91 = (v47 >> 28) & 3;
      v92 = &interpolate_cmyk64 + 16 * v91;
      LOBYTE(v91) = v91 + 1;
      v46 = v46 - ((*v92 & v46) >> v91) + ((*v92 & v88) >> v91);
      v85 = v45 - ((*(v92 + 4) & v45) >> v91) + ((v89 & *(v92 + 4)) >> v91);
LABEL_122:
      v45 = v85;
      break;
    case 3:
      v103 = HIBYTE(v47) & 3;
      v62 = HIWORD(v47) << 56;
      v63 = (v39 + (v62 >> 53));
      if (v15 < v63)
      {
        v63 = v15;
      }

      if (v63 < v40)
      {
        v63 = v40;
      }

      v104 = ((bswap32(v63[2]) >> 16) << 32) | ((bswap32(v63[3]) >> 16) << 48) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16);
      v64 = v39 + SBYTE1(v47) * v6;
      if (v15 >= v64)
      {
        v65 = (v39 + SBYTE1(v47) * v6);
      }

      else
      {
        v65 = v15;
      }

      if (v65 < v40)
      {
        v65 = v40;
      }

      v102 = ((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16);
      v66 = (v64 + (v62 >> 53));
      if (v15 < v66)
      {
        v66 = v15;
      }

      if (v66 < v40)
      {
        v66 = v40;
      }

      v101 = ((bswap32(v66[2]) >> 16) << 32) | ((bswap32(v66[3]) >> 16) << 48) | bswap32(v66[1]) & 0xFFFF0000 | (bswap32(*v66) >> 16);
      v67 = 0xFFFF;
      v68 = 0xFFFF;
      v69 = 0xFFFF;
      if (v5)
      {
        v70 = (v42 + (v62 >> 55));
        v71 = *(result + 40);
        if (v14 < v70)
        {
          v70 = v14;
        }

        if (v70 < v71)
        {
          v70 = *(result + 40);
        }

        v69 = bswap32(*v70) >> 16;
        v72 = v42 + SBYTE1(v47) * v7;
        if (v14 >= v72)
        {
          v73 = (v42 + SBYTE1(v47) * v7);
        }

        else
        {
          v73 = v14;
        }

        if (v73 < v71)
        {
          v73 = *(result + 40);
        }

        v68 = bswap32(*v73) >> 16;
        v74 = (v72 + (v62 >> 55));
        if (v14 < v74)
        {
          v74 = v14;
        }

        if (v74 < v71)
        {
          v74 = *(result + 40);
        }

        v67 = bswap32(*v74) >> 16;
      }

      v75 = &interpolate_cmyk64 + 16 * v61;
      v76 = *v75;
      v77 = v46 - ((*v75 & v46) >> (v61 + 1));
      LODWORD(v75) = *(v75 + 4);
      v78 = v69 - ((v69 & v75) >> (v61 + 1));
      v79 = v45 - ((v75 & v45) >> (v61 + 1)) + ((v68 & v75) >> (v61 + 1));
      LODWORD(v75) = v78 + ((v67 & v75) >> (v61 + 1));
      v80 = (v47 >> 28) & 3;
      v81 = &interpolate_cmyk64 + 16 * v80;
      v82 = *v81;
      LOBYTE(v80) = v80 + 1;
      v83 = v77 + ((v76 & v102) >> (v103 + 1)) - (((v77 + ((v76 & v102) >> (v103 + 1))) & *v81) >> v80);
      LODWORD(v81) = *(v81 + 4);
      v84 = v79 - ((v79 & v81) >> v80);
      v85 = (v75 & v81) >> v80;
      v46 = v83 + (((v104 - ((v76 & v104) >> (v103 + 1)) + ((v76 & v101) >> (v103 + 1))) & v82) >> v80);
      goto LABEL_121;
  }

LABEL_44:
  v48 = 0;
  v49 = v25 >> 22;
  a2 += v10;
  v50 = v107 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v109 - a3;
  while (1)
  {
    v53 = v45 - (HIWORD(v46) + v46);
    v54 = v45 - (HIWORD(v46) + WORD1(v46));
    v55 = v45 - (HIWORD(v46) + WORD2(v46));
    *(v51 - 1) = (v53 & ~(v53 >> 31)) + ((v54 & ~(v54 >> 31)) << 16);
    *v51 = (v55 & ~(v55 >> 31)) + (v45 << 16);
    *(v110 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v52 | v50 | (a3 - v108) | (a2 - v106)) < 0)
    {
      v110 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v56 = v4 + SHIDWORD(a3) * v6 + 8 * (a2 >> 32);
    }

    else
    {
      v56 = v15;
    }

    if (v56 >= v40)
    {
      v57 = v56;
    }

    else
    {
      v57 = *(result + 32);
    }

    if (v5)
    {
      v42 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      v58 = *(result + 40);
      if (v14 >= v42)
      {
        v59 = v5 + SHIDWORD(a3) * v7 + 2 * (a2 >> 32);
      }

      else
      {
        v59 = v14;
      }

      if (v59 >= v58)
      {
        v58 = v59;
      }

      v45 = bswap32(*v58) >> 16;
    }

    else
    {
      v45 = 0xFFFF;
    }

    v46 = ((bswap32(v57[2]) >> 16) << 32) | ((bswap32(v57[3]) >> 16) << 48) | bswap32(v57[1]) & 0xFFFF0000 | (bswap32(*v57) >> 16);
    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v110 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v25 = -1;
        goto LABEL_67;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t rgba64_sample_rgba64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFF000000000000;
  }

  v102 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 8 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 8 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = *v47;
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_16161616_21862[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (v98 & *v97) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 8 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_16161616_21862[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((interpolate_16161616_21862[(v49 >> 28) & 3] & *v91) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 8 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = *v74;
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = *v77;
        v79 = (v76 + 8 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_16161616_21862[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((v80 & *v79) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_16161616_21862[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 8) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -8;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 8 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = *v60;
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 8 * v50 + 16) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 8;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t rgba64_sample_RGBA64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v101 = *(result + 112);
    if (v5 > v6)
    {
      v101 = v5 % v6;
    }
  }

  else
  {
    v101 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v100 = v11;
  }

  else
  {
    v100 = 0;
  }

  v99 = *(result + 80);
  v96 = *(result + 64);
  v97 = *(result + 88);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFF000000000000;
  }

  v95 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v102 = -*(result + 64);
  v98 = *(result + 72);
  while (1)
  {
    if (a3 >= v98)
    {
      v19 = a4;
      if (a3 <= v97)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v96;
        v30 = v99;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v97;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_54;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v29 = v96;
        v30 = v99;
        v27 = v95 | v24;
        v28 = v22 - 0x1000000;
        v25 = a3 - v28;
        v26 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v98 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      v19 = a4;
      if (v18 < 1)
      {
        goto LABEL_54;
      }

      if (v18 >= v16)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v18) >> 32;
      }

      v29 = v96;
      v30 = v99;
      v27 = v95 | v20;
      v28 = v17 + 0x1000000;
      v25 = a3 - v28;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      if (a2 <= v30)
      {
        v35 = 0;
        v36 = (a2 >> 26) & 0x3C;
        v34 = a2;
      }

      else
      {
        v37 = *(result + 192);
        v38 = *(result + 200) + v30;
        v39 = v38 - a2 + (v37 >> 1);
        if (v39 < 1)
        {
          goto LABEL_54;
        }

        if (v39 < v37)
        {
          v27 = ((v27 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v95;
        }

        v34 = v38 - 0x1000000;
        v35 = a2 - (v38 - 0x1000000);
        v36 = 28;
      }
    }

    else
    {
      v31 = *(result + 192);
      v32 = v29 - *(result + 200);
      v33 = a2 - v32 + (v31 >> 1);
      if (v33 < 1)
      {
        goto LABEL_54;
      }

      if (v33 < v31)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v95;
      }

      v34 = v32 + 0x1000000;
      v35 = a2 - (v32 + 0x1000000);
      v36 = 32;
    }

    if (v27 >= 0x400000)
    {
      break;
    }

LABEL_54:
    v51 = v19 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
LABEL_55:
    a4 = v51;
    if (!v51)
    {
      return result;
    }
  }

  if (v6)
  {
    v40 = (v7 & ((v28 % v7) >> 63)) + v28 % v7;
    v41 = (v6 & ((v34 % v6) >> 63)) + v34 % v6;
    if (v40 >= v7)
    {
      v42 = v7;
    }

    else
    {
      v42 = 0;
    }

    v28 = v40 - v42;
    if (v41 >= v6)
    {
      v43 = v6;
    }

    else
    {
      v43 = 0;
    }

    v34 = v41 - v43;
    v25 += v28;
    v35 += v34;
  }

  v44 = v9 + SHIDWORD(v28) * v4;
  v45 = v34 >> 32;
  v46 = v44 + 8 * v45;
  v47 = *(result + 32);
  if (v15 >= v46)
  {
    v48 = (v44 + 8 * v45);
  }

  else
  {
    v48 = v15;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  v49 = ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
  if (!v8)
  {
    goto LABEL_57;
  }

  v50 = *(v8 + (v36 | v26));
  while (1)
  {
    v63 = v50 & 0xF;
    v64 = HIBYTE(v50) & 3;
    switch(v63)
    {
      case 1:
        LODWORD(v89) = SBYTE1(v50);
        if (v6)
        {
          v90 = v25 + (SBYTE1(v50) << 32);
          v91 = v7 & (v90 >> 63);
          if (v91 + v90 >= v7)
          {
            v92 = v7;
          }

          else
          {
            v92 = 0;
          }

          v89 = (v91 + (SBYTE1(v50) << 32) - v92) >> 32;
        }

        v93 = (v46 + v89 * v4);
        if (v15 < v93)
        {
          v93 = v15;
        }

        if (v93 < v47)
        {
          v93 = v47;
        }

        v49 = v49 - ((interpolate_16161616_21862[v64] & v49) >> (v64 + 1)) + (((((bswap32(v93[2]) >> 16) << 32) | ((bswap32(v93[3]) >> 16) << 48) | bswap32(v93[1]) & 0xFFFF0000 | (bswap32(*v93) >> 16)) & interpolate_16161616_21862[v64]) >> (v64 + 1));
        break;
      case 2:
        v83 = SBYTE2(v50);
        if (v6)
        {
          v84 = v35 + (SBYTE2(v50) << 32);
          v85 = v6 & (v84 >> 63);
          if (v85 + v84 >= v6)
          {
            v86 = v6;
          }

          else
          {
            v86 = 0;
          }

          v83 = (v85 + ((HIWORD(v50) << 56) >> 24) - v86) >> 32;
        }

        v87 = (v46 + 8 * v83);
        if (v15 < v87)
        {
          v87 = v15;
        }

        if (v87 < v47)
        {
          v87 = v47;
        }

        v88 = (v50 >> 28) & 3;
        v49 = v49 - ((interpolate_16161616_21862[v88] & v49) >> (v88 + 1)) + (((((bswap32(v87[2]) >> 16) << 32) | ((bswap32(v87[3]) >> 16) << 48) | bswap32(v87[1]) & 0xFFFF0000 | (bswap32(*v87) >> 16)) & interpolate_16161616_21862[v88]) >> (v88 + 1));
        break;
      case 3:
        v94 = v27;
        LODWORD(v65) = SBYTE1(v50);
        v66 = SBYTE2(v50);
        if (v6)
        {
          v67 = HIWORD(v50) << 56;
          v68 = v25 + (SBYTE1(v50) << 32);
          v69 = v35 + (v67 >> 24);
          v70 = v7 & (v68 >> 63);
          v71 = v6 & (v69 >> 63);
          v72 = v71 + v69;
          if (v70 + v68 >= v7)
          {
            v73 = v7;
          }

          else
          {
            v73 = 0;
          }

          if (v72 >= v6)
          {
            v74 = v6;
          }

          else
          {
            v74 = 0;
          }

          v65 = (v70 + (((v50 >> 8) << 56) >> 24) - v73) >> 32;
          v66 = (v71 + (v67 >> 24) - v74) >> 32;
        }

        v75 = (v46 + 8 * v66);
        if (v15 < v75)
        {
          v75 = v15;
        }

        if (v75 < v47)
        {
          v75 = v47;
        }

        v76 = ((bswap32(v75[2]) >> 16) << 32) | ((bswap32(v75[3]) >> 16) << 48) | bswap32(v75[1]) & 0xFFFF0000 | (bswap32(*v75) >> 16);
        v77 = (v46 + v65 * v4);
        if (v15 >= v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = v15;
        }

        if (v78 < v47)
        {
          v78 = v47;
        }

        v79 = ((bswap32(v78[2]) >> 16) << 32) | ((bswap32(v78[3]) >> 16) << 48) | bswap32(v78[1]) & 0xFFFF0000 | (bswap32(*v78) >> 16);
        v80 = &v77[4 * v66];
        if (v15 < v80)
        {
          v80 = v15;
        }

        if (v80 < v47)
        {
          v80 = v47;
        }

        v81 = interpolate_16161616_21862[v64];
        v82 = v49 - ((v81 & v49) >> (v64 + 1)) + ((v79 & v81) >> (v64 + 1));
        v49 = v82 - ((v82 & interpolate_16161616_21862[(v50 >> 28) & 3]) >> (((v50 >> 28) & 3) + 1)) + (((v76 - ((v81 & v76) >> (v64 + 1)) + (((((bswap32(v80[2]) >> 16) << 32) | ((bswap32(v80[3]) >> 16) << 48) | bswap32(v80[1]) & 0xFFFF0000 | (bswap32(*v80) >> 16)) & v81) >> (v64 + 1))) & interpolate_16161616_21862[(v50 >> 28) & 3]) >> (((v50 >> 28) & 3) + 1));
        v27 = v94;
        break;
    }

LABEL_57:
    *(v12 + 8) = v49 | v14;
    *(v13 + 1) = v27 >> 22;
    if (v19 == 1)
    {
      return result;
    }

    v52 = 0;
    a2 += v5;
    v53 = v99 - a2;
    a3 += v10;
    v54 = v97 - a3;
    v55 = -8;
    while (1)
    {
      if ((v54 | v53 | (a3 - v98) | (v102 + a2)) < 0)
      {
        v13 += v52 + 1;
        v12 -= v55;
        v51 = ~v52 + v19;
        goto LABEL_55;
      }

      if (v6)
      {
        v56 = (v7 & ((v25 + v100) >> 63)) + v25 + v100;
        v57 = (v6 & ((v35 + v101) >> 63)) + v35 + v101;
        v58 = v56 >= v7 ? v7 : 0;
        v25 = v56 - v58;
        v59 = v57 >= v6 ? v6 : 0;
        v35 = v57 - v59;
        v60 = HIDWORD(v25);
        v61 = v57 - v59;
      }

      else
      {
        v60 = HIDWORD(a3);
        v61 = a2;
      }

      v46 = v9 + v60 * v4 + 8 * (v61 >> 32);
      v47 = *(result + 32);
      v62 = (v15 >= v46 ? v46 : v15);
      if (v62 < v47)
      {
        v62 = *(result + 32);
      }

      v49 = ((bswap32(v62[2]) >> 16) << 32) | ((bswap32(v62[3]) >> 16) << 48) | bswap32(v62[1]) & 0xFFFF0000 | (bswap32(*v62) >> 16);
      if (v8)
      {
        v50 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v50 & 0xF) != 0)
        {
          break;
        }
      }

      *(v12 + 8 * v52 + 16) = v49 | v14;
      *(v13 + v52++ + 2) = -1;
      v55 -= 8;
      a2 += v5;
      v53 -= v5;
      a3 += v10;
      v54 -= v10;
      if (v19 - 1 == v52)
      {
        return result;
      }
    }

    v13 += v52 + 1;
    v12 -= v55;
    v19 += ~v52;
    v27 = -1;
  }
}

uint64_t rgba64_sample_rgb48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
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
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  v14 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  v65 = *(result + 188);
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
    v12 += 8;
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
LABEL_51:
  v47 = v40 & 0xF;
  v48 = HIBYTE(v40) & 3;
  switch(v47)
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

      v58 = *v64 | (*(v64 + 2) << 32) | 0xFFFF000000000000;
      goto LABEL_78;
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

      v58 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v48 = (v40 >> 28) & 3;
LABEL_78:
      v60 = interpolate_16161616_21862[v48];
      v61 = v48 + 1;
      v62 = v39 - ((v60 & v39) >> v61);
      goto LABEL_79;
    case 3:
      v49 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v49)
      {
        v49 = v14;
      }

      if (v49 < v37)
      {
        v49 = v37;
      }

      v50 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
      v51 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v51)
      {
        v52 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = (v51 + 6 * SBYTE2(v40));
      if (v14 < v54)
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = interpolate_16161616_21862[v48];
      v56 = v48 + 1;
      v57 = v39 - ((v55 & v39) >> v56) + ((v53 & v55) >> v56);
      v58 = v50 - ((v55 & v50) >> v56) + (((*v54 | (*(v54 + 2) << 32) | 0xFFFF000000000000) & v55) >> v56);
      v59 = (v40 >> 28) & 3;
      v60 = interpolate_16161616_21862[v59];
      v61 = v59 + 1;
      v62 = v57 - ((v57 & v60) >> v61);
LABEL_79:
      v39 = v62 + ((v58 & v60) >> v61);
      break;
  }

LABEL_36:
  *(v12 + 8) = v39;
  *(v13 + 1) = v24 >> 22;
  if (a4 != 1)
  {
    v41 = 0;
    a2 += v10;
    v42 = v66 - a2;
    a3 += v11;
    v43 = v9 - a3;
    v44 = -8;
    while (((v43 | v42 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) == 0)
    {
      v45 = v4 + SHIDWORD(a3) * v5;
      v36 = v45 + 6 * SHIDWORD(a2);
      v37 = *(result + 32);
      if (v14 >= v36)
      {
        v46 = (v45 + 6 * SHIDWORD(a2));
      }

      else
      {
        v46 = v14;
      }

      if (v46 < v37)
      {
        v46 = *(result + 32);
      }

      v39 = *v46 | (*(v46 + 2) << 32) | 0xFFFF000000000000;
      if (v6)
      {
        v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v40 & 0xF) != 0)
        {
          v13 += v41 + 1;
          v12 -= v44;
          a4 += ~v41;
          v24 = -1;
          goto LABEL_51;
        }
      }

      *(v12 + 8 * v41 + 16) = v39;
      *(v13 + v41++ + 2) = -1;
      v44 -= 8;
      a2 += v10;
      v42 -= v10;
      a3 += v11;
      v43 -= v11;
      if (a4 - 1 == v41)
      {
        return result;
      }
    }

    v13 += v41 + 1;
    v12 -= v44;
    a4 += ~v41;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t rgba64_sample_RGB48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v67 = *(result + 80);
  v68 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  v66 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v68)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v68;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v66 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v8 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v66 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v7 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v66;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v67)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v67;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v66;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v28 >> 32;
  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = v34 + 6 * v33;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v34 + 6 * v33);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = (bswap32(*v37) >> 16) | ((bswap32(v37[1]) >> 16) << 16) | ((bswap32(v37[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (v6)
  {
    v39 = *(v6 + (v29 | v22));
LABEL_51:
    v46 = v39 & 0xF;
    v47 = HIBYTE(v39) & 3;
    switch(v46)
    {
      case 1:
        v64 = (v35 + SBYTE1(v39) * v5);
        if (v13 < v64)
        {
          v64 = v13;
        }

        if (v64 < v36)
        {
          v64 = v36;
        }

        v65 = interpolate_16161616_21862[v47];
        v60 = v38 - ((v65 & v38) >> (v47 + 1));
        v61 = (((bswap32(*v64) >> 16) | ((bswap32(v64[1]) >> 16) << 16) | ((bswap32(v64[2]) >> 16) << 32) | 0xFFFF000000000000) & v65) >> (v47 + 1);
LABEL_78:
        v38 = v60 + v61;
        break;
      case 2:
        v62 = (v35 + 6 * SBYTE2(v39));
        if (v13 < v62)
        {
          v62 = v13;
        }

        if (v62 < v36)
        {
          v62 = v36;
        }

        v63 = (v39 >> 28) & 3;
        v38 = v38 - ((interpolate_16161616_21862[v63] & v38) >> (v63 + 1)) + ((((bswap32(*v62) >> 16) | ((bswap32(v62[1]) >> 16) << 16) | ((bswap32(v62[2]) >> 16) << 32) | 0xFFFF000000000000) & interpolate_16161616_21862[v63]) >> (v63 + 1));
        break;
      case 3:
        v48 = (v35 + 6 * SBYTE2(v39));
        if (v13 < v48)
        {
          v48 = v13;
        }

        if (v48 < v36)
        {
          v48 = v36;
        }

        v49 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
        v50 = v35 + SBYTE1(v39) * v5;
        if (v13 >= v50)
        {
          v51 = (v35 + SBYTE1(v39) * v5);
        }

        else
        {
          v51 = v13;
        }

        if (v51 < v36)
        {
          v51 = v36;
        }

        v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
        v53 = (v50 + 6 * SBYTE2(v39));
        if (v13 < v53)
        {
          v53 = v13;
        }

        if (v53 < v36)
        {
          v53 = v36;
        }

        v54 = interpolate_16161616_21862[v47];
        v55 = v47 + 1;
        v56 = v38 - ((v54 & v38) >> v55) + ((v52 & v54) >> v55);
        v57 = v49 - ((v54 & v49) >> v55) + ((((bswap32(*v53) >> 16) | ((bswap32(v53[1]) >> 16) << 16) | ((bswap32(v53[2]) >> 16) << 32) | 0xFFFF000000000000) & v54) >> v55);
        v58 = (v39 >> 28) & 3;
        v59 = interpolate_16161616_21862[v58];
        LOBYTE(v58) = v58 + 1;
        v60 = v56 - ((v56 & v59) >> v58);
        v61 = (v57 & v59) >> v58;
        goto LABEL_78;
    }
  }

  *(v11 + 8) = v38;
  *(v12 + 1) = v23 >> 22;
  if (a4 != 1)
  {
    v40 = 0;
    a2 += v9;
    v41 = v67 - a2;
    a3 += v10;
    v42 = v68 - a3;
    v43 = -8;
    while (((v42 | v41 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) == 0)
    {
      v44 = v4 + SHIDWORD(a3) * v5;
      v35 = v44 + 6 * SHIDWORD(a2);
      v36 = *(result + 32);
      if (v13 >= v35)
      {
        v45 = (v44 + 6 * SHIDWORD(a2));
      }

      else
      {
        v45 = v13;
      }

      if (v45 < v36)
      {
        v45 = *(result + 32);
      }

      v38 = (bswap32(*v45) >> 16) | ((bswap32(v45[1]) >> 16) << 16) | ((bswap32(v45[2]) >> 16) << 32) | 0xFFFF000000000000;
      if (v6)
      {
        v39 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v39 & 0xF) != 0)
        {
          v12 += v40 + 1;
          v11 -= v43;
          a4 += ~v40;
          v23 = -1;
          goto LABEL_51;
        }
      }

      *(v11 + 8 * v40 + 16) = v38;
      *(v12 + v40++ + 2) = -1;
      v43 -= 8;
      a2 += v9;
      v41 -= v9;
      a3 += v10;
      v42 -= v10;
      if (a4 - 1 == v40)
      {
        return result;
      }
    }

    v12 += v40 + 1;
    v11 -= v43;
    a4 += ~v40;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t rgba64_sample_w16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v90 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
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
  v87 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v89 = *(result + 64);
  v91 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v90)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v89;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v90;
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

        v29 = v89;
        v27 = v87 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v91 - *(result + 224);
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

      v29 = v89;
      v27 = v87 | v21;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v88;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v87;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v4 + v38 * v6 + v39;
  v41 = *(result + 32);
  if (v17 >= v40)
  {
    v42 = (v4 + v38 * v6 + v39);
  }

  else
  {
    v42 = v17;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v34 | v26));
LABEL_69:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v82)
        {
          v82 = v17;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = *v82;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v84)
          {
            v84 = v16;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= *v84 << 16;
        }

        v85 = interpolate_1616[v58];
        v77 = v43 - ((v85 & v43) >> (v58 + 1));
        v78 = (v85 & v83) >> (v58 + 1);
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v79)
        {
          v79 = v17;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = *v79;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v16 < v81)
          {
            v81 = v16;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= *v81 << 16;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v86 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v59)
        {
          v59 = v17;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = *v59;
        v61 = (v40 + SBYTE1(v47) * v6);
        if (v17 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v17;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = *v62;
        v64 = &v61[SBYTE2(v47)];
        if (v17 < v64)
        {
          v64 = v17;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = *v64;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v16 < v44 + v66)
          {
            v67 = v16;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= *v67 << 16;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v16;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= *v70 << 16;
          v71 = (v69 + v66);
          if (v16 < v71)
          {
            v71 = v16;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= *v71 << 16;
        }

        v72 = interpolate_1616[v86];
        v73 = v43 - ((v72 & v43) >> (v86 + 1)) + ((v72 & v63) >> (v86 + 1));
        v74 = v60 - ((v72 & v60) >> (v86 + 1)) + ((v72 & v65) >> (v86 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v38 * v7 + v39;
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

  v43 |= *v45 << 16;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  *(v11 + 8) = 65537 * v43;
  *(v11 + 12) = v43 | v13;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    v49 = (v11 + 20);
    a2 += v9;
    v50 = v88 - a2;
    a3 += v10;
    v51 = v90 - a3;
    while (((v51 | v50 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) == 0)
    {
      v52 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v40 = v4 + SHIDWORD(a3) * v6 + v52;
      v41 = *(result + 32);
      if (v17 >= v40)
      {
        v53 = (v4 + SHIDWORD(a3) * v6 + v52);
      }

      else
      {
        v53 = v17;
      }

      if (v53 < v41)
      {
        v53 = *(result + 32);
      }

      v43 = *v53;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v52;
        v54 = *(result + 40);
        if (v16 >= v44)
        {
          v55 = (v5 + SHIDWORD(a3) * v7 + v52);
        }

        else
        {
          v55 = v16;
        }

        if (v55 >= v54)
        {
          v54 = v55;
        }

        v43 |= *v54 << 16;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          v11 = (v49 - 3);
          a4 += ~v48;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v49 - 1) = 65537 * v43;
      *v49 = v43 | v13;
      v56 = v12 + v48++;
      v49 += 2;
      *(v56 + 2) = -1;
      a2 += v9;
      v50 -= v9;
      a3 += v10;
      v51 -= v10;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    v11 = (v49 - 3);
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t rgba64_sample_W16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v90 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
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
  v87 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v89 = *(result + 64);
  v91 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v90)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v89;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v90;
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

        v29 = v89;
        v27 = v87 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v91 - *(result + 224);
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

      v29 = v89;
      v27 = v87 | v21;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v88;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v87;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v4 + v38 * v6 + v39;
  v41 = *(result + 32);
  if (v17 >= v40)
  {
    v42 = (v4 + v38 * v6 + v39);
  }

  else
  {
    v42 = v17;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = bswap32(*v42) >> 16;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v34 | v26));
LABEL_69:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v82)
        {
          v82 = v17;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = bswap32(*v82) >> 16;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v84)
          {
            v84 = v16;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= bswap32(*v84) & 0xFFFF0000;
        }

        v85 = interpolate_1616[v58];
        v77 = v43 - ((v85 & v43) >> (v58 + 1));
        v78 = (v85 & v83) >> (v58 + 1);
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v79)
        {
          v79 = v17;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = bswap32(*v79) >> 16;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v16 < v81)
          {
            v81 = v16;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= bswap32(*v81) & 0xFFFF0000;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v86 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v17 < v59)
        {
          v59 = v17;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = bswap32(*v59) >> 16;
        v61 = (v40 + SBYTE1(v47) * v6);
        if (v17 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v17;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = bswap32(*v62) >> 16;
        v64 = &v61[SBYTE2(v47)];
        if (v17 < v64)
        {
          v64 = v17;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = bswap32(*v64) >> 16;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v16 < v44 + v66)
          {
            v67 = v16;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= bswap32(*v67) & 0xFFFF0000;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v16;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= bswap32(*v70) & 0xFFFF0000;
          v71 = (v69 + v66);
          if (v16 < v71)
          {
            v71 = v16;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= bswap32(*v71) & 0xFFFF0000;
        }

        v72 = interpolate_1616[v86];
        v73 = v43 - ((v72 & v43) >> (v86 + 1)) + ((v72 & v63) >> (v86 + 1));
        v74 = v60 - ((v72 & v60) >> (v86 + 1)) + ((v72 & v65) >> (v86 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v38 * v7 + v39;
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

  v43 |= bswap32(*v45) & 0xFFFF0000;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  *(v11 + 8) = 65537 * v43;
  *(v11 + 12) = v43 | v13;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    v49 = (v11 + 20);
    a2 += v9;
    v50 = v88 - a2;
    a3 += v10;
    v51 = v90 - a3;
    while (((v51 | v50 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) == 0)
    {
      v52 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v40 = v4 + SHIDWORD(a3) * v6 + v52;
      v41 = *(result + 32);
      if (v17 >= v40)
      {
        v53 = (v4 + SHIDWORD(a3) * v6 + v52);
      }

      else
      {
        v53 = v17;
      }

      if (v53 < v41)
      {
        v53 = *(result + 32);
      }

      v43 = bswap32(*v53) >> 16;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + v52;
        v54 = *(result + 40);
        if (v16 >= v44)
        {
          v55 = (v5 + SHIDWORD(a3) * v7 + v52);
        }

        else
        {
          v55 = v16;
        }

        if (v55 >= v54)
        {
          v54 = v55;
        }

        v43 |= bswap32(*v54) & 0xFFFF0000;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          v11 = (v49 - 3);
          a4 += ~v48;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v49 - 1) = 65537 * v43;
      *v49 = v43 | v13;
      v56 = v12 + v48++;
      v49 += 2;
      *(v56 + 2) = -1;
      a2 += v9;
      v50 -= v9;
      a3 += v10;
      v51 -= v10;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    v11 = (v49 - 3);
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t rgba64_sample_argb32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v75 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v74 = *(result + 188);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v74 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v74 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v74;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v75;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v74;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v71)
      {
        v71 = v15;
      }

      if (v71 < v38)
      {
        v71 = v38;
      }

      v72 = interpolate_8888_21865[v50];
      v73 = v50 + 1;
      v65 = v40 - ((v72 & v40) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_81:
      v40 = v65 + v70;
      break;
    case 2:
      v67 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v67)
      {
        v67 = v15;
      }

      if (v67 < v38)
      {
        v67 = v38;
      }

      v68 = (v41 >> 28) & 3;
      v69 = interpolate_8888_21865[v68];
      v64 = v68 + 1;
      v65 = v40 - ((v69 & v40) >> v64);
      v66 = v69 & *v67;
LABEL_75:
      v70 = v66 >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = *v52;
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = v25 >> 22;
  a2 += v9;
  v44 = v75 - a2;
  v45 = (v11 + 12);
  a3 += v10;
  v46 = v8 - a3;
  while (1)
  {
    *(v45 - 1) = ((v40 | v14) << 8) & 0xFF0000 | ((v40 | v14) >> 8 << 24) | ((v40 | v14) >> 8) & 0xFF00 | ((v40 | v14) >> 16);
    *v45 = (v40 | v14) & 0xFF000000 | ((v40 | v14) >> 8) & 0xFF0000 | v40 | (v40 << 8);
    *(v12 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v46 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v42 + 1;
      v11 = (v45 - 1);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = *v48;
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v42 + 1;
        v11 = (v45 - 1);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v44 -= v9;
    v45 += 2;
    a3 += v10;
    v46 -= v10;
    a2 += v9;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_ARGB32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v71 = *(result + 188);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v71 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v71 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v72;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_8888_21865[v50];
      v70 = v50 + 1;
      v66 = v40 - ((v69 & v40) >> v70);
      v67 = (bswap32(*v68) & v69) >> v70;
LABEL_81:
      v40 = v66 + v67;
      break;
    case 2:
      v64 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v64)
      {
        v64 = v15;
      }

      if (v64 < v38)
      {
        v64 = v38;
      }

      v60 = bswap32(*v64);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v62 & v40;
LABEL_75:
      v65 = v61 + 1;
      v66 = v40 - (v63 >> v65);
      v67 = (v60 & v62) >> v65;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = bswap32(*v52);
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v40 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v40 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = v25 >> 22;
  a2 += v9;
  v44 = v72 - a2;
  v45 = (v11 + 12);
  a3 += v10;
  v46 = v8 - a3;
  while (1)
  {
    *(v45 - 1) = ((v40 | v14) << 8) & 0xFF0000 | ((v40 | v14) >> 8 << 24) | ((v40 | v14) >> 8) & 0xFF00 | ((v40 | v14) >> 16);
    *v45 = (v40 | v14) & 0xFF000000 | ((v40 | v14) >> 8) & 0xFF0000 | v40 | (v40 << 8);
    *(v12 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v46 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v42 + 1;
      v11 = (v45 - 1);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = bswap32(*v48);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v42 + 1;
        v11 = (v45 - 1);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v44 -= v9;
    v45 += 2;
    a3 += v10;
    v46 -= v10;
    a2 += v9;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_rgba32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v74 = *(result + 80);
  v76 = *(result + 72);
  v77 = *(result + 88);
  v6 = *(result + 112);
  v7 = *(result + 120);
  v8 = *(result + 152) - 8;
  v9 = *(result + 144) - 1;
  v11 = *(result + 32);
  v10 = *(result + 40);
  v73 = *(result + 188);
  v12 = v11 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v75 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v76)
    {
      if (a3 <= v77)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        HIDWORD(v23) = HIDWORD(a3);
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v77;
        v19 = v18 - a3 + (v17 >> 1);
        if (v19 < 1)
        {
          goto LABEL_34;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v22 = v73 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v76 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v15) >> 32;
      }

      v22 = v73 | v16;
      v23 = v14 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v75)
    {
      break;
    }

    v24 = *(result + 192);
    v25 = v75 - *(result + 200);
    v26 = a2 - v25 + (v24 >> 1);
    if (v26 >= 1)
    {
      if (v26 < v24)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v26) >> 32) >> 15)) | v73;
      }

      v27 = v25 + 0x1000000;
      v28 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v6;
    a3 += v7;
    v8 += 8;
    *++v9 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v74)
  {
    v28 = (a2 >> 26) & 0x3C;
    v27 = a2;
    goto LABEL_26;
  }

  v29 = *(result + 192);
  v30 = *(result + 200) + v74;
  v31 = v30 - a2 + (v29 >> 1);
  if (v31 < 1)
  {
    goto LABEL_34;
  }

  if (v31 < v29)
  {
    v22 = ((v22 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v73;
  }

  v27 = v30 - 0x1000000;
  v28 = 28;
LABEL_26:
  if (v22 < 0x400000)
  {
    goto LABEL_34;
  }

  v32 = v11 + SHIDWORD(v23) * v4;
  v33 = v27 >> 32;
  v34 = v32 + 4 * v33;
  v35 = *(result + 32);
  if (v12 >= v34)
  {
    v36 = (v32 + 4 * v33);
  }

  else
  {
    v36 = v12;
  }

  if (v36 < v35)
  {
    v36 = *(result + 32);
  }

  v37 = *v36;
  if (!v5)
  {
    v39 = v74;
    goto LABEL_37;
  }

  v38 = *(v5 + (v28 | v21));
LABEL_53:
  v39 = v74;
  v48 = v38 & 0xF;
  v49 = HIBYTE(v38) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v34 + SBYTE1(v38) * v4);
      if (v12 < v70)
      {
        v70 = v12;
      }

      if (v70 < v35)
      {
        v70 = v35;
      }

      v71 = interpolate_8888_21865[v49];
      v72 = v49 + 1;
      v64 = v37 - ((v71 & v37) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v37 = v64 + v69;
      break;
    case 2:
      v66 = (v34 + ((HIWORD(v38) << 56) >> 54));
      if (v12 < v66)
      {
        v66 = v12;
      }

      if (v66 < v35)
      {
        v66 = v35;
      }

      v67 = (v38 >> 28) & 3;
      v68 = interpolate_8888_21865[v67];
      v63 = v67 + 1;
      v64 = v37 - ((v68 & v37) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v38) << 56;
      v51 = (v34 + (v50 >> 54));
      if (v12 < v51)
      {
        v51 = v12;
      }

      if (v51 < v35)
      {
        v51 = v35;
      }

      v52 = *v51;
      v53 = v34 + SBYTE1(v38) * v4;
      if (v12 >= v53)
      {
        v54 = (v34 + SBYTE1(v38) * v4);
      }

      else
      {
        v54 = v12;
      }

      if (v54 < v35)
      {
        v54 = v35;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 54));
      if (v12 < v56)
      {
        v56 = v12;
      }

      if (v56 < v35)
      {
        v56 = v35;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v37 - ((v57 & v37) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v38 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_37:
  v40 = 0;
  v41 = 0;
  v42 = v22 >> 22;
  a3 += v7;
  v43 = v77 - a3;
  a2 += v6;
  v44 = v39 - a2;
  while (1)
  {
    v45 = (v37 | (v37 << 8)) << 48;
    if (!v10)
    {
      v45 = 0xFFFF000000000000;
    }

    *(v8 + 8 + 8 * v41) = v45 | ((BYTE1(v37) | (BYTE1(v37) << 8)) << 32) | v37 & 0xFF0000 | (BYTE2(v37) << 24) | (HIBYTE(v37) | (HIBYTE(v37) << 8));
    *(v9 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v76) | (a2 - v75)) & 0x8000000000000000) != 0)
    {
      v9 += v41 + 1;
      v8 = v8 - v40 + 8;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v46 = v11 + SHIDWORD(a3) * v4;
    v34 = v46 + 4 * (a2 >> 32);
    v35 = *(result + 32);
    if (v12 >= v34)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v12;
    }

    if (v47 < v35)
    {
      v47 = *(result + 32);
    }

    v37 = *v47;
    if (v5)
    {
      v38 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v38 & 0xF) != 0)
      {
        v9 += v41 + 1;
        v8 = v8 - v40 + 8;
        a4 += ~v41;
        v22 = -1;
        goto LABEL_53;
      }
    }

    ++v41;
    v40 -= 8;
    a3 += v7;
    v43 -= v7;
    a2 += v6;
    v44 -= v6;
    LOBYTE(v42) = -1;
  }
}

uint64_t rgba64_sample_RGBA32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v73 = *(result + 80);
  v75 = *(result + 88);
  v76 = *(result + 72);
  v6 = *(result + 112);
  v7 = *(result + 120);
  v8 = *(result + 152) - 8;
  v9 = *(result + 144) - 1;
  v11 = *(result + 32);
  v10 = *(result + 40);
  v72 = *(result + 188);
  v12 = v11 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v74 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v76)
    {
      if (a3 <= v75)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        HIDWORD(v23) = HIDWORD(a3);
        v24 = v74;
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v75;
        v19 = v18 - a3 + (v17 >> 1);
        if (v19 < 1)
        {
          goto LABEL_34;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v24 = v74;
        v22 = v72 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v13 = *(result + 216);
      v14 = v76 - *(result + 224);
      v15 = a3 - v14 + (v13 >> 1);
      if (v15 < 1)
      {
        goto LABEL_34;
      }

      if (v15 >= v13)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v15) >> 32;
      }

      v24 = v74;
      v22 = v72 | v16;
      v23 = v14 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v24)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v24 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v72;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v6;
    a3 += v7;
    v8 += 8;
    *++v9 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v73)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v73;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v22 = ((v22 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v72;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v22 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v11 + SHIDWORD(v23) * v4;
  v34 = v28 >> 32;
  v35 = v33 + 4 * v34;
  v36 = *(result + 32);
  if (v12 >= v35)
  {
    v37 = (v33 + 4 * v34);
  }

  else
  {
    v37 = v12;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (!v5)
  {
    v40 = v73;
    goto LABEL_37;
  }

  v39 = *(v5 + (v29 | v21));
LABEL_53:
  v40 = v73;
  v49 = v39 & 0xF;
  v50 = HIBYTE(v39) & 3;
  switch(v49)
  {
    case 1:
      v69 = (v35 + SBYTE1(v39) * v4);
      if (v12 < v69)
      {
        v69 = v12;
      }

      if (v69 < v36)
      {
        v69 = v36;
      }

      v70 = interpolate_8888_21865[v50];
      v71 = v50 + 1;
      v65 = v38 - ((v70 & v38) >> v71);
      v68 = (bswap32(*v69) & v70) >> v71;
LABEL_81:
      v38 = v65 + v68;
      break;
    case 2:
      v66 = (v35 + ((HIWORD(v39) << 56) >> 54));
      if (v12 < v66)
      {
        v66 = v12;
      }

      if (v66 < v36)
      {
        v66 = v36;
      }

      v61 = bswap32(*v66);
      v67 = (v39 >> 28) & 3;
      v63 = interpolate_8888_21865[v67];
      v64 = v67 + 1;
      v65 = v38 - ((v63 & v38) >> v64);
LABEL_75:
      v68 = (v61 & v63) >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v39) << 56;
      v52 = (v35 + (v51 >> 54));
      if (v12 < v52)
      {
        v52 = v12;
      }

      if (v52 < v36)
      {
        v52 = v36;
      }

      v53 = bswap32(*v52);
      v54 = v35 + SBYTE1(v39) * v4;
      if (v12 >= v54)
      {
        v55 = (v35 + SBYTE1(v39) * v4);
      }

      else
      {
        v55 = v12;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v12 < v57)
      {
        v57 = v12;
      }

      if (v57 < v36)
      {
        v57 = v36;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v38 - ((v58 & v38) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v62 = (v39 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      goto LABEL_75;
  }

LABEL_37:
  v41 = 0;
  v42 = 0;
  v43 = v22 >> 22;
  a3 += v7;
  v44 = v75 - a3;
  a2 += v6;
  v45 = v40 - a2;
  while (1)
  {
    v46 = (v38 | (v38 << 8)) << 48;
    if (!v10)
    {
      v46 = 0xFFFF000000000000;
    }

    *(v8 + 8 + 8 * v42) = v46 | ((BYTE1(v38) | (BYTE1(v38) << 8)) << 32) | v38 & 0xFF0000 | (BYTE2(v38) << 24) | (HIBYTE(v38) | (HIBYTE(v38) << 8));
    *(v9 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v76) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v9 += v42 + 1;
      v8 = v8 - v41 + 8;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v11 + SHIDWORD(a3) * v4;
    v35 = v47 + 4 * (a2 >> 32);
    v36 = *(result + 32);
    if (v12 >= v35)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v12;
    }

    if (v48 < v36)
    {
      v48 = *(result + 32);
    }

    v38 = bswap32(*v48);
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v9 += v42 + 1;
        v8 = v8 - v41 + 8;
        a4 += ~v42;
        v22 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 8;
    a3 += v7;
    v44 -= v7;
    a2 += v6;
    v45 -= v6;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgba64_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v73 = *(result + 64);
  v74 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  v72 = *(result + 188);
  v13 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      v17 = v74;
      if (a3 <= v8)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
        v26 = v73;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v8;
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

        v26 = v73;
        v24 = v72 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      v17 = v74;
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v16) >> 32;
      }

      v26 = v73;
      v24 = v72 | v18;
      v25 = v15 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v26)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v26 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v72;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v17;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_34;
  }

  if (v34 < v32)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v72;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = 3 * (v30 >> 32);
  v37 = v35 + v36;
  v38 = *(result + 32);
  if (v13 >= v35 + v36)
  {
    v39 = (v35 + v36);
  }

  else
  {
    v39 = v13;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = (v39[1] << 16) | (*v39 << 24) | (v39[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v41 = *(v6 + (v31 | v23));
LABEL_50:
  v50 = v41 & 0xF;
  v51 = HIBYTE(v41) & 3;
  switch(v50)
  {
    case 1:
      v69 = (v37 + SBYTE1(v41) * v5);
      if (v13 < v69)
      {
        v69 = v13;
      }

      if (v69 < v38)
      {
        v69 = v38;
      }

      v70 = interpolate_8888_21865[v51];
      v71 = v51 + 1;
      v67 = v40 - ((v70 & v40) >> v71);
      v68 = (((v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF) & v70) >> v71;
LABEL_78:
      v40 = v67 + v68;
      break;
    case 2:
      v65 = (v37 + 3 * SBYTE2(v41));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v61 = (v65[1] << 16) | (*v65 << 24) | (v65[2] << 8) | 0xFF;
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v63 & v40;
LABEL_72:
      v66 = v62 + 1;
      v67 = v40 - (v64 >> v66);
      v68 = (v61 & v63) >> v66;
      goto LABEL_78;
    case 3:
      v52 = 3 * SBYTE2(v41);
      v53 = (v37 + v52);
      if (v13 < v37 + v52)
      {
        v53 = v13;
      }

      if (v53 < v38)
      {
        v53 = v38;
      }

      v54 = (v53[1] << 16) | (*v53 << 24) | (v53[2] << 8) | 0xFF;
      v55 = v37 + SBYTE1(v41) * v5;
      if (v13 >= v55)
      {
        v56 = (v37 + SBYTE1(v41) * v5);
      }

      else
      {
        v56 = v13;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = (v56[1] << 16) | (*v56 << 24) | (v56[2] << 8) | 0xFF;
      v58 = (v55 + v52);
      if (v13 < v58)
      {
        v58 = v13;
      }

      if (v58 < v38)
      {
        v58 = v38;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v40 = v40 - ((v59 & v40) >> v60) + ((v57 & v59) >> v60);
      v61 = v54 - ((v59 & v54) >> v60) + ((((v58[1] << 16) | (*v58 << 24) | (v58[2] << 8) | 0xFF) & v59) >> v60);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v40 & v63;
      goto LABEL_72;
  }

LABEL_36:
  v42 = 0;
  v43 = 0;
  v44 = v24 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v17 - a2;
  while (1)
  {
    *(v11 + 8 + 8 * v43) = ((v40 | (v40 << 8)) << 48) | ((BYTE1(v40) | (BYTE1(v40) << 8)) << 32) | v40 & 0xFF0000 | (BYTE2(v40) << 24) | (HIBYTE(v40) | (HIBYTE(v40) << 8));
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v73)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 8;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v48 = 3 * (a2 >> 32);
    v37 = v47 + v48;
    v38 = *(result + 32);
    if (v13 >= v47 + v48)
    {
      v49 = (v47 + v48);
    }

    else
    {
      v49 = v13;
    }

    if (v49 < v38)
    {
      v49 = *(result + 32);
    }

    v40 = (v49[1] << 16) | (*v49 << 24) | (v49[2] << 8) | 0xFF;
    if (v6)
    {
      v41 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 8;
        a4 += ~v43;
        v24 = -1;
        v17 = v74;
        goto LABEL_50;
      }
    }

    ++v43;
    v42 -= 8;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgba64_shade(uint64_t a1, __n128 a2)
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

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = rgba64_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = rgba64_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = rgba64_shade_axial_RGB;
    }

    else
    {
      v14 = rgba64_shade_custom_RGB;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 3, 3, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 480)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 3, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x8C254358uLL);
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
  rgba64_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void rgba64_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v364 = a3;
  v375 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v359 = v4;
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 184);
  v374.i64[0] = *(a1 + 136);
  v9 = *(a2 + 104);
  v369 = *(a2 + 96);
  v371 = v9;
  v372 = v6;
  v11 = *(a1 + 24);
  v10 = *(a1 + 28);
  v12 = *(a1 + 16);
  v13 = *(a1 + 20);
  v14 = *(a1 + 12);
  v370 = *(a1 + 8);
  v363 = a1;
  v366 = a2;
  v15 = *(a2 + 16);
  v16 = (v15 + 10) * v5;
  if (v16 > 65439)
  {
    v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
    v18 = v19;
    v21 = v19;
    v22 = v366;
    v23 = v363;
    if (!v19)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v18 = &v354 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v17);
    v21 = 0;
    v22 = v366;
    v23 = v363;
  }

  v356 = v21;
  v365 = ((v8 * 65535.0) + 0.5);
  v355 = v7 + (v11 - 1) * v10 + 8 * v13;
  v24 = v10 >> 3;
  v25 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v25 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v27 = 8 * v5;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 + v27;
  v22[18] = v25;
  v22[19] = v26 + v27;
  v22[20] = v26;
  v29 = (v7 + 8 * v24 * v12 + 8 * v14);
  v30 = v359;
  v354 = v10 >> 3;
  v362 = v24 - v359;
  v31 = *(v23 + 104);
  v32 = *(v23 + 108);
  v33 = *(v23 + 2);
  if (v33 == 6 || v33 == 1)
  {
    v34 = v369;
    v35 = v371;
    if (!v374.i64[0])
    {
      goto LABEL_484;
    }

    v36 = 0;
    v37 = 0;
    v38 = *(v23 + 124);
    v39 = (v374.i64[0] + v38 * v32 + v31);
    v30 = v359;
    v361 = v38 - v359;
    v40 = v364;
    v41 = v366;
  }

  else
  {
    v34 = v369;
    if (v374.i64[0])
    {
      shape_enum_clip_alloc(v19, v20, v374.i64[0], 1, 1, 1, v31, v32, v4, v370);
      v41 = v366;
      if (!v42)
      {
        goto LABEL_484;
      }

      v43 = ((v15 * v5 + 15) & 0xFFFFFFF0);
      if (!v15)
      {
        v43 = 8 * v5;
      }

      v44 = v28 + v43;
      v37 = 0;
      v361 = -v359;
      v39 = (v44 + 16);
      v40 = v364;
      v35 = v371;
      v36 = v42;
      while (1)
      {
LABEL_487:
        while (1)
        {
          v352 = *(v39 - 4);
          v353 = v352 - v37;
          if (v352 <= v37)
          {
            break;
          }

          v370 -= v353;
          if (v370 < 1)
          {
LABEL_483:
            free(v36);
            goto LABEL_484;
          }

          v34 += v41[16] * v353;
          v35 += v41[17] * v353;
          v29 += v354 * v353;
          v37 = v352;
        }

        if (v37 < *(v39 - 3) + v352)
        {
          break;
        }

        if (!shape_enum_clip_scan(v36, v39 - 4))
        {
          goto LABEL_483;
        }
      }

      v30 = v359;
    }

    else
    {
      v39 = 0;
      v36 = 0;
      v361 = 0;
      v37 = 0;
      v40 = v364;
      v41 = v366;
      v35 = v371;
    }
  }

  v368 = v37;
  v45 = v365 ^ 0xFFFF;
  v46 = vdup_n_s32(v365 ^ 0xFFFFu);
  v358 = (v4 - 1);
  v357 = -v30;
  v360 = v355 - 8;
  v373 = xmmword_18439CB80;
  v374 = xmmword_18439CB70;
  v47 = vdup_n_s32(0x101u);
  v48 = v36;
  while (2)
  {
    v367 = v48;
    v49 = *v41;
    v371 = v35;
    v49(v41, v34, v35, v4);
    v50 = v41[20];
    v51 = v41[18];
    v52 = *(v41 + 2);
    if (v52 == *(v41 + 3))
    {
      if (v365 != 0xFFFF)
      {
        v53 = v4;
        v54 = v41[18];
        do
        {
          if (*v54)
          {
            v55 = *v50 * v45 + 0x8000;
            v56 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v50), v373));
            v57.i32[1] = v56.i32[1];
            v57.i32[0] = v56.u16[0];
            v58 = vmla_s32(0x800000008000, v57, v46);
            v59 = vand_s8(vsub_s32(v56, vshr_n_u32(vsra_n_u32(v58, v58, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v60.i64[0] = v59.u32[0];
            v60.i64[1] = v59.u32[1];
            v61 = vshlq_u64(v60, v374);
            *v50 = vorrq_s8(v61, vdupq_laneq_s64(v61, 1)).u64[0] | ((WORD1(*v50) - ((WORD1(*v50) * v45 + 0x8000 + ((WORD1(*v50) * v45 + 0x8000) >> 16)) >> 16)) << 16) | (*v50 - ((v55 + HIWORD(v55)) >> 16));
          }

          ++v54;
          v50 += 8;
          --v53;
        }

        while (v53);
        v50 += 8 * v357;
        v51 += v358 + v357 + 1;
      }
    }

    else
    {
      v62 = v41[19];
      v63 = HIWORD(v52) & 0x3F;
      if (v63 == 16)
      {
        if (v365 == 0xFFFF)
        {
          v106 = 0;
          do
          {
            if (v51[v106])
            {
              *(v50 + 8 * v106) = *(v62 + 8 * v106);
            }

            ++v106;
          }

          while (v4 != v106);
        }

        else
        {
          v79 = 0;
          do
          {
            if (v51[v79])
            {
              v80 = *(v62 + 8 * v79);
              v81 = vmovn_s64(vshlq_u64(vdupq_n_s64(v80), v373));
              v82.i32[1] = v81.i32[1];
              v82.i32[0] = v81.u16[0];
              v83 = vmla_s32(0x800000008000, v82, v46);
              v84 = vand_s8(vsub_s32(v81, vshr_n_u32(vsra_n_u32(v83, v83, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
              v85.i64[0] = v84.u32[0];
              v85.i64[1] = v84.u32[1];
              v86 = vshlq_u64(v85, v374);
              *(v50 + 8 * v79) = vorrq_s8(v86, vdupq_laneq_s64(v86, 1)).u64[0] | ((WORD1(v80) - ((WORD1(v80) * v45 + 0x8000 + ((WORD1(v80) * v45 + 0x8000) >> 16)) >> 16)) << 16) | (v80 - ((v80 * v45 + 0x8000 + ((v80 * v45 + 0x8000) >> 16)) >> 16));
            }

            ++v79;
          }

          while (v4 != v79);
        }
      }

      else if (v63 == 32)
      {
        if (v365 == 0xFFFF)
        {
          v95 = 0;
          v96 = (v62 + 8);
          do
          {
            if (v51[v95])
            {
              v97 = v96[1];
              if (v97 <= 0.0)
              {
                v102 = 0;
              }

              else
              {
                v98 = *(v96 - 2);
                LODWORD(v99) = ((v97 * 65535.0) + 0.5);
                if (v97 <= 1.0)
                {
                  v99 = v99;
                }

                else
                {
                  v99 = 0xFFFFLL;
                }

                LOWORD(v100) = v99;
                if (v97 > 1.0)
                {
                  v97 = 1.0;
                }

                LOWORD(v101) = v99;
                if (v98 <= v97)
                {
                  if (v98 >= 0.0)
                  {
                    v101 = ((v98 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v101) = 0;
                  }
                }

                v103 = *(v96 - 1);
                v104 = v99;
                if (v103 <= v97)
                {
                  if (v103 >= 0.0)
                  {
                    v104 = ((v103 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v104 = 0;
                  }
                }

                v105 = *v96;
                if (*v96 <= v97)
                {
                  if (v105 >= 0.0)
                  {
                    v100 = ((v105 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v100) = 0;
                  }
                }

                v102 = (v99 << 48) | (v100 << 32) | (v104 << 16) | v101;
              }

              *(v50 + 8 * v95) = v102;
            }

            v96 += 4;
            ++v95;
          }

          while (v4 != v95);
        }

        else
        {
          v64 = 0;
          v65 = (v62 + 8);
          do
          {
            if (v51[v64])
            {
              v66 = v65[1];
              if (v66 <= 0.0)
              {
                v71 = 0;
              }

              else
              {
                v67 = *(v65 - 2);
                v68 = ((v66 * 65535.0) + 0.5);
                if (v66 > 1.0)
                {
                  v68 = 0xFFFF;
                }

                v69 = v68;
                if (v66 > 1.0)
                {
                  v66 = 1.0;
                }

                v70 = v68;
                if (v67 <= v66)
                {
                  if (v67 >= 0.0)
                  {
                    v70 = ((v67 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v70 = 0;
                  }
                }

                v72 = *(v65 - 1);
                v73 = v68;
                if (v72 <= v66)
                {
                  if (v72 >= 0.0)
                  {
                    v73 = ((v72 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v73 = 0;
                  }
                }

                v74 = *v65;
                if (*v65 <= v66)
                {
                  if (v74 >= 0.0)
                  {
                    v69 = ((v74 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v69 = 0;
                  }
                }

                v75 = v70 * v45;
                v76 = v73 * v45;
                v77 = v69 * v45;
                v78 = v68 * v45;
                if ((v70 * v45) >= 0xFFFE8000)
                {
                  v75 = -98304;
                }

                if (v76 >= 0xFFFE8000)
                {
                  v76 = -98304;
                }

                if (v77 >= 0xFFFE8000)
                {
                  v77 = -98304;
                }

                if (v78 >= 0xFFFE8000)
                {
                  v78 = -98304;
                }

                v71 = ((v68 - ((v78 + 0x8000 + ((v78 + 0x8000) >> 16)) >> 16)) << 48) | ((v69 - ((v77 + 0x8000 + ((v77 + 0x8000) >> 16)) >> 16)) << 32) | ((v73 - ((v76 + 0x8000 + ((v76 + 0x8000) >> 16)) >> 16)) << 16) | (v70 - ((v75 + 0x8000 + ((v75 + 0x8000) >> 16)) >> 16));
              }

              *(v50 + 8 * v64) = v71;
            }

            v65 += 4;
            ++v64;
          }

          while (v4 != v64);
        }
      }

      else if (v365 == 0xFFFF)
      {
        v107 = 0;
        do
        {
          if (v51[v107])
          {
            v108 = *(v62 + 4 * v107);
            v109 = *(v62 + 4 * v107);
            *(v50 + 8 * v107) = ((v109 | (v109 << 8)) << 48) | ((BYTE1(v108) | (BYTE1(v108) << 8)) << 32) | v108 & 0xFF0000 | (BYTE2(v108) << 24) | (v108 >> 24) | (v108 >> 24 << 8);
          }

          ++v107;
        }

        while (v4 != v107);
      }

      else
      {
        v87 = 0;
        do
        {
          if (v51[v87])
          {
            v88 = *(v62 + 4 * v87);
            v89.i32[0] = v88 >> 8;
            v89.i32[1] = v88;
            v90 = vmul_s32(vand_s8(v89, 0xFF000000FFLL), v47);
            v91 = vmla_s32(0x800000008000, v90, v46);
            v92 = vand_s8(vsub_s32(v90, vshr_n_u32(vsra_n_u32(v91, v91, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v93.i64[0] = v92.u32[0];
            v93.i64[1] = v92.u32[1];
            v94 = vshlq_u64(v93, v374);
            *(v50 + 8 * v87) = vorrq_s8(v94, vdupq_laneq_s64(v94, 1)).u64[0] | (((BYTE2(v88) | (BYTE2(v88) << 8)) - (((BYTE2(v88) | (BYTE2(v88) << 8)) * v45 + 0x8000 + (((BYTE2(v88) | (BYTE2(v88) << 8)) * v45 + 0x8000) >> 16)) >> 16)) << 16) | ((HIBYTE(v88) | (HIBYTE(v88) << 8)) - (((HIBYTE(v88) | (HIBYTE(v88) << 8)) * v45 + 0x8000 + (((HIBYTE(v88) | (HIBYTE(v88) << 8)) * v45 + 0x8000) >> 16)) >> 16));
          }

          ++v87;
        }

        while (v4 != v87);
      }
    }

    v369 = v34;
    switch(v40)
    {
      case 0:
        v110 = v4;
        v111 = v39;
        do
        {
          v112 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v112 = ((*v111 * v112 + ((*v111 * v112) >> 8) + 1) >> 8);
            }

            if (v112)
            {
              if (v112 == 255)
              {
                *v29 = 0;
              }

              else
              {
                rgba64_DM(v29, *v29, (v112 | (v112 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v111 += v39 != 0;
          ++v29;
          --v110;
        }

        while (v110);
        v39 = &v111[v361];
        v29 += v362;
        goto LABEL_451;
      case 1:
        v224 = *v51;
        if (v39)
        {
          v225 = v51 + 1;
          v226 = v4;
          do
          {
            if (v224)
            {
              v227 = *v39 * v224 + ((*v39 * v224) >> 8) + 1;
              v228 = v360;
              if (v360 >= v29)
              {
                v228 = v29;
              }

              if (v228 >= *(v363 + 40))
              {
                v229 = v228;
              }

              else
              {
                v229 = *(v363 + 40);
              }

              if (BYTE1(v227))
              {
                if (BYTE1(v227) == 255)
                {
                  *v229 = *v50;
                }

                else
                {
                  rgba64_DMplusDM(v229, *v50, (257 * (v227 >> 8)), *v229, ~(257 * (v227 >> 8)));
                }
              }
            }

            else
            {
              v229 = v29;
            }

            v230 = *v225++;
            v224 = v230;
            v50 += 8;
            ++v39;
            v29 = v229 + 1;
            --v226;
          }

          while (v226);
          v39 += v361;
          v36 = v367;
        }

        else
        {
          v348 = v51 + 1;
          v349 = v4;
          v36 = v367;
          do
          {
            v350 = v360;
            if (v360 >= v29)
            {
              v350 = v29;
            }

            if (v350 >= *(v363 + 40))
            {
              v229 = v350;
            }

            else
            {
              v229 = *(v363 + 40);
            }

            if (v224)
            {
              if (v224 == 255)
              {
                *v229 = *v50;
              }

              else
              {
                rgba64_DMplusDM(v229, *v50, v224 | (v224 << 8), *v229, (v224 | (v224 << 8)) ^ 0xFFFF);
              }
            }

            v351 = *v348++;
            v224 = v351;
            v50 += 8;
            v29 = v229 + 1;
            --v349;
          }

          while (v349);
          v39 = 0;
        }

        v29 = &v229[v362 + 1];
        v34 = v369;
        v337 = v371;
        goto LABEL_453;
      case 2:
        v194 = *v51;
        if (v39)
        {
          v195 = v51 + 1;
          v196 = v4;
          while (1)
          {
            v197 = v29;
            if (!v194)
            {
              goto LABEL_236;
            }

            v198 = *v39 * v194 + ((*v39 * v194) >> 8) + 1;
            if (!BYTE1(v198))
            {
              goto LABEL_236;
            }

            if (BYTE1(v198) == 255)
            {
              v199 = *v50;
              v200 = HIWORD(*v50);
              if (v200)
              {
                if (v200 != 0xFFFF)
                {
                  v204 = *v29;
                  v205 = v200 ^ 0xFFFF;
                  goto LABEL_235;
                }

                *v29 = v199;
              }
            }

            else
            {
              v202 = HIWORD(*v50);
              v203 = (257 * (v198 >> 8)) ^ 0xFFFF;
              if (v202 != (v203 * v202 + 0x8000 + ((v203 * v202 + 0x8000) >> 16)) >> 16)
              {
                v204 = *v29;
                v201 = *v50;
                v199 = ((v202 - ((v203 * v202 + 0x8000 + ((v203 * v202 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v201) - ((WORD2(v201) * v203 + 0x8000 + ((WORD2(v201) * v203 + 0x8000) >> 16)) >> 16)) << 32) | (v201 - ((v201 * v203 + 0x8000 + ((v201 * v203 + 0x8000) >> 16)) >> 16)) | ((WORD1(v201) - ((WORD1(v201) * v203 + 0x8000 + ((WORD1(v201) * v203 + 0x8000) >> 16)) >> 16)) << 16);
                v205 = ~(v202 - ((v203 * v202 + 0x8000 + ((v203 * v202 + 0x8000) >> 16)) >> 16));
LABEL_235:
                rgba64_DplusDM(v29, v199, v204, v205);
              }
            }

LABEL_236:
            v206 = *v195++;
            v194 = v206;
            v50 += 8;
            ++v39;
            ++v29;
            if (!--v196)
            {
              v39 += v361;
              v41 = v366;
              goto LABEL_468;
            }
          }
        }

        v338 = v51 + 1;
        v339 = v4;
        do
        {
          if (!v194)
          {
            goto LABEL_466;
          }

          if (v194 == 255)
          {
            v340 = *v50;
            v341 = HIWORD(*v50);
            if (!v341)
            {
              goto LABEL_466;
            }

            if (v341 == 0xFFFF)
            {
              *v29 = v340;
              goto LABEL_466;
            }

            v345 = *v29;
            v346 = v341 ^ 0xFFFF;
          }

          else
          {
            v343 = HIWORD(*v50);
            v344 = (257 * v194) ^ 0xFFFF;
            if (v343 == (v344 * v343 + 0x8000 + ((v344 * v343 + 0x8000) >> 16)) >> 16)
            {
              goto LABEL_466;
            }

            v345 = *v29;
            v342 = *v50;
            v340 = ((v343 - ((v344 * v343 + 0x8000 + ((v344 * v343 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v342) - ((WORD2(v342) * v344 + 0x8000 + ((WORD2(v342) * v344 + 0x8000) >> 16)) >> 16)) << 32) | (v342 - ((v342 * v344 + 0x8000 + ((v342 * v344 + 0x8000) >> 16)) >> 16)) | ((WORD1(v342) - ((WORD1(v342) * v344 + 0x8000 + ((WORD1(v342) * v344 + 0x8000) >> 16)) >> 16)) << 16);
            v346 = ~(v343 - ((v344 * v343 + 0x8000 + ((v344 * v343 + 0x8000) >> 16)) >> 16));
          }

          rgba64_DplusDM(v29, v340, v345, v346);
LABEL_466:
          v347 = *v338++;
          v194 = v347;
          v50 += 8;
          ++v29;
          --v339;
        }

        while (v339);
        v39 = 0;
        v197 = v29 - 1;
LABEL_468:
        v29 = &v197[v362 + 1];
LABEL_451:
        v34 = v369;
LABEL_452:
        v337 = v371;
        v36 = v367;
LABEL_453:
        if (--v370)
        {
          v48 = 0;
          ++v368;
          v34 += v41[16];
          v35 = v41[17] + v337;
          if (v36)
          {
            v37 = v368;
            goto LABEL_487;
          }

          continue;
        }

        if (v36)
        {
          goto LABEL_483;
        }

LABEL_484:
        if (v356)
        {
          free(v356);
        }

        return;
      case 3:
        v216 = v4;
        v114 = v39;
        do
        {
          v217 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v217 = ((*v114 * v217 + ((*v114 * v217) >> 8) + 1) >> 8);
            }

            if (v217)
            {
              if (v217 == 255)
              {
                rgba64_DM(v29, *v50, v29->u16[3]);
              }

              else
              {
                v218 = v217 | (v217 << 8);
                v219 = HIWORD(*v29) * v218 + 0x8000;
                rgba64_DMplusDM(v29, *v50, (v219 + HIWORD(v219)) >> 16, *v29, v218 ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          --v216;
        }

        while (v216);
        goto LABEL_449;
      case 4:
        v152 = v4;
        v114 = v39;
        do
        {
          v153 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v153 = ((*v114 * v153 + ((*v114 * v153) >> 8) + 1) >> 8);
            }

            if (v153)
            {
              if (v153 == 255)
              {
                rgba64_DM(v29, *v50, v29->u16[3] ^ 0xFFFF);
              }

              else
              {
                v154 = v153 | (v153 << 8);
                v155 = (HIWORD(*v29) ^ 0xFFFF) * v154 + 0x8000;
                rgba64_DMplusDM(v29, *v50, (v155 + HIWORD(v155)) >> 16, *v29, v154 ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          --v152;
        }

        while (v152);
        goto LABEL_449;
      case 5:
        v249 = v4;
        v114 = v39;
        while (1)
        {
          v250 = *v51;
          if (*v51)
          {
            if (!v39)
            {
              goto LABEL_320;
            }

            v251 = *v114 * v250 + ((*v114 * v250) >> 8) + 1;
            if (v251 >= 0x100)
            {
              break;
            }
          }

LABEL_321:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v249)
          {
            goto LABEL_449;
          }
        }

        v250 = v251 >> 8;
LABEL_320:
        v252 = (v250 | (v250 << 8)) ^ 0xFFFF;
        v253 = *v50 * v252 + 0x8000;
        v254 = WORD2(*v50) * v252 + 0x8000;
        v255 = *v50 - ((v253 + HIWORD(v253)) >> 16);
        LOWORD(v253) = WORD1(*v50) - ((WORD1(*v50) * v252 + 0x8000 + ((WORD1(*v50) * v252 + 0x8000) >> 16)) >> 16);
        v256 = HIWORD(*v50) - ((v252 * HIWORD(*v50) + 0x8000 + ((v252 * HIWORD(*v50) + 0x8000) >> 16)) >> 16);
        rgba64_DMplusDM(v29, (v256 << 48) | ((HIDWORD(*v50) - ((v254 + HIWORD(v254)) >> 16)) << 32) | v255 | (v253 << 16), HIWORD(*v29), *v29, ~v256);
        goto LABEL_321;
      case 6:
        v275 = v4;
        v276 = v39;
        while (1)
        {
          v277 = *v51;
          if (*v51)
          {
            if (!v39)
            {
              goto LABEL_356;
            }

            v278 = *v276 * v277 + ((*v276 * v277) >> 8) + 1;
            if (v278 >= 0x100)
            {
              break;
            }
          }

LABEL_360:
          ++v51;
          v50 += 8;
          v276 += v39 != 0;
          ++v29;
          if (!--v275)
          {
            v39 = &v276[v361];
            v29 += v362;
LABEL_450:
            v41 = v366;
            goto LABEL_451;
          }
        }

        v277 = v278 >> 8;
LABEL_356:
        v279 = HIWORD(*v29);
        if (v279 != 0xFFFF)
        {
          if (~v279 == 0xFFFF)
          {
            rgba64_DM(v29, *v50, v277 | (v277 << 8));
          }

          else
          {
            rgba64_DplusDM(v29, *v29, *v50, (257 * v277 * ~v279 + 0x8000 + ((257 * v277 * ~v279 + 0x8000) >> 16)) >> 16);
          }
        }

        goto LABEL_360;
      case 7:
        v220 = v4;
        v114 = v39;
        do
        {
          v221 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v221 = ((*v114 * v221 + ((*v114 * v221) >> 8) + 1) >> 8);
            }

            if (v221)
            {
              if (v221 == 255)
              {
                rgba64_DM(v29, *v29, *(v50 + 6));
              }

              else
              {
                v222 = v221 | (v221 << 8);
                v223 = *(v50 + 6) * v222 + 0x8000;
                rgba64_DMplusDM(v29, *v29, (v223 + HIWORD(v223)) >> 16, *v29, v222 ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          --v220;
        }

        while (v220);
        goto LABEL_449;
      case 8:
        v297 = v4;
        v114 = v39;
        do
        {
          v298 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v298 = ((*v114 * v298 + ((*v114 * v298) >> 8) + 1) >> 8);
            }

            if (v298)
            {
              if (v298 == 255)
              {
                rgba64_DM(v29, *v29, *(v50 + 6) ^ 0xFFFF);
              }

              else
              {
                v299 = v298 | (v298 << 8);
                v300 = (*(v50 + 6) ^ 0xFFFF) * v299 + 0x8000;
                rgba64_DMplusDM(v29, *v29, (v300 + HIWORD(v300)) >> 16, *v29, v299 ^ 0xFFFF);
              }
            }
          }

          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          --v297;
        }

        while (v297);
        goto LABEL_449;
      case 9:
        v167 = v4;
        v114 = v39;
        while (1)
        {
          v168 = *v51;
          if (*v51)
          {
            if (!v39)
            {
              goto LABEL_193;
            }

            v169 = *v114 * v168 + ((*v114 * v168) >> 8) + 1;
            if (v169 >= 0x100)
            {
              break;
            }
          }

LABEL_194:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v167)
          {
            goto LABEL_449;
          }
        }

        v168 = v169 >> 8;
LABEL_193:
        v170 = ~(v168 | (v168 << 8));
        v171 = v170;
        v172 = *v50 * v170 + 0x8000;
        v173 = WORD2(*v50) * v170 + 0x8000;
        v174 = *v50 - ((v172 + HIWORD(v172)) >> 16);
        LOWORD(v172) = WORD1(*v50) - ((WORD1(*v50) * v171 + 0x8000 + ((WORD1(*v50) * v171 + 0x8000) >> 16)) >> 16);
        v175 = HIWORD(*v50) - ((HIWORD(*v50) * v171 + 0x8000 + ((HIWORD(*v50) * v171 + 0x8000) >> 16)) >> 16);
        rgba64_DMplusDM(v29, (v175 << 48) | ((HIDWORD(*v50) - ((v173 + HIWORD(v173)) >> 16)) << 32) | v174 | (v172 << 16), HIWORD(*v29) ^ 0xFFFF, *v29, (v175 + v170));
        goto LABEL_194;
      case 10:
        v289 = v4;
        v114 = v39;
        while (1)
        {
          v290 = *v51;
          if (*v51)
          {
            if (!v39)
            {
              goto LABEL_381;
            }

            v291 = *v114 * v290 + ((*v114 * v290) >> 8) + 1;
            if (v291 >= 0x100)
            {
              break;
            }
          }

LABEL_382:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v289)
          {
            goto LABEL_449;
          }
        }

        v290 = v291 >> 8;
LABEL_381:
        v292 = (v290 | (v290 << 8)) ^ 0xFFFF;
        v293 = *v50 * v292 + 0x8000;
        v294 = WORD2(*v50) * v292 + 0x8000;
        v295 = *v50 - ((v293 + HIWORD(v293)) >> 16);
        LOWORD(v293) = WORD1(*v50) - ((WORD1(*v50) * v292 + 0x8000 + ((WORD1(*v50) * v292 + 0x8000) >> 16)) >> 16);
        v296 = HIWORD(*v50) - ((v292 * HIWORD(*v50) + 0x8000 + ((v292 * HIWORD(*v50) + 0x8000) >> 16)) >> 16);
        rgba64_DMplusDM(v29, (v296 << 48) | ((HIDWORD(*v50) - ((v294 + HIWORD(v294)) >> 16)) << 32) | v295 | (v293 << 16), HIWORD(*v29) ^ 0xFFFF, *v29, ~v296);
        goto LABEL_382;
      case 11:
        v141 = v4;
        v114 = v39;
        while (1)
        {
          v142 = *v51;
          if (*v51)
          {
            if (!v39)
            {
              goto LABEL_165;
            }

            v143 = *v114 * v142 + ((*v114 * v142) >> 8) + 1;
            if (v143 >= 0x100)
            {
              break;
            }
          }

LABEL_168:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v141)
          {
            goto LABEL_449;
          }
        }

        v142 = v143 >> 8;
LABEL_165:
        v144 = (v142 | (v142 << 8)) ^ 0xFFFF;
        v145 = *v50 * v144 + 0x8000;
        v146 = WORD2(*v50) * v144 + 0x8000;
        v147 = v146 + HIWORD(v146);
        v148 = *v50 - ((v145 + HIWORD(v145)) >> 16);
        LOWORD(v145) = WORD1(*v50) - ((WORD1(*v50) * v144 + 0x8000 + ((WORD1(*v50) * v144 + 0x8000) >> 16)) >> 16);
        v149 = HIWORD(*v50) - ((v144 * HIWORD(*v50) + 0x8000 + ((v144 * HIWORD(*v50) + 0x8000) >> 16)) >> 16);
        v150 = v148 | (v145 << 16);
        v151 = HIWORD(*v29);
        if (!v372)
        {
          LOWORD(v151) = -1;
        }

        rgba64_DAplusdDA(v29, *v29, v151, (v149 << 48) | ((HIDWORD(*v50) - HIWORD(v147)) << 32) | v150, v149);
        goto LABEL_168;
      case 12:
        v156 = v4;
        v114 = v39;
        while (1)
        {
          v157 = *v51;
          if (*v51)
          {
            if (!v39)
            {
              goto LABEL_185;
            }

            v158 = *v114 * v157 + ((*v114 * v157) >> 8) + 1;
            if (v158 >= 0x100)
            {
              break;
            }
          }

LABEL_186:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v156)
          {
            goto LABEL_449;
          }
        }

        v157 = v158 >> 8;
LABEL_185:
        v159 = (v157 | (v157 << 8)) ^ 0xFFFF;
        v160 = *v50 * v159 + 0x8000;
        v161 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v50), v373));
        v162.i32[1] = v161.i32[1];
        v162.i32[0] = v161.u16[0];
        v163 = vmla_s32(0x800000008000, vdup_n_s32(v159), v162);
        v164 = vand_s8(vsub_s32(v161, vshr_n_u32(vsra_n_u32(v163, v163, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = vshlq_u64(v165, v374);
        rgba64_DpluslD(v29, *v29, vorrq_s8(v166, vdupq_laneq_s64(v166, 1)).u64[0] | ((WORD1(*v50) - ((WORD1(*v50) * v159 + 0x8000 + ((WORD1(*v50) * v159 + 0x8000) >> 16)) >> 16)) << 16) | (*v50 - ((v160 + HIWORD(v160)) >> 16)));
        goto LABEL_186;
      case 13:
        v266 = v4;
        v114 = v39;
        while (1)
        {
          v267 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v268 = *v114 * v267 + ((*v114 * v267) >> 8) + 1;
              if (v268 < 0x100)
              {
                goto LABEL_349;
              }

              v267 = v268 >> 8;
            }

            v270 = HIWORD(*v50);
            v271 = (v267 | (v267 << 8)) ^ 0xFFFF;
            if (v270 != (v271 * v270 + 0x8000 + ((v271 * v270 + 0x8000) >> 16)) >> 16)
            {
              v269 = *v50;
              v272 = ((v270 - ((v271 * v270 + 0x8000 + ((v271 * v270 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v269) - ((WORD2(v269) * v271 + 0x8000 + ((WORD2(v269) * v271 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v271 + 0x8000 + ((*v50 * v271 + 0x8000) >> 16)) >> 16)) | ((WORD1(v269) - ((WORD1(v269) * v271 + 0x8000 + ((WORD1(v269) * v271 + 0x8000) >> 16)) >> 16)) << 16);
              v273 = *v29;
              if (v372)
              {
                v274 = HIWORD(v273);
                if (!HIWORD(v273))
                {
                  goto LABEL_348;
                }
              }

              else
              {
                LODWORD(v274) = 0xFFFF;
              }

              v272 = PDAmultiplyPDA_15236(v273, v274, v272, (v270 - ((v271 * v270 + 0x8000 + ((v271 * v270 + 0x8000) >> 16)) >> 16)));
LABEL_348:
              *v29 = v272;
            }
          }

LABEL_349:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v266)
          {
            goto LABEL_449;
          }
        }

      case 14:
        v132 = v4;
        v114 = v39;
        while (1)
        {
          v133 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v134 = *v114 * v133 + ((*v114 * v133) >> 8) + 1;
              if (v134 < 0x100)
              {
                goto LABEL_158;
              }

              v133 = v134 >> 8;
            }

            v136 = HIWORD(*v50);
            v137 = (v133 | (v133 << 8)) ^ 0xFFFF;
            if (v136 != (v137 * v136 + 0x8000 + ((v137 * v136 + 0x8000) >> 16)) >> 16)
            {
              v135 = *v50;
              v138 = ((v136 - ((v137 * v136 + 0x8000 + ((v137 * v136 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v135) - ((WORD2(v135) * v137 + 0x8000 + ((WORD2(v135) * v137 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v137 + 0x8000 + ((*v50 * v137 + 0x8000) >> 16)) >> 16)) | ((WORD1(v135) - ((WORD1(v135) * v137 + 0x8000 + ((WORD1(v135) * v137 + 0x8000) >> 16)) >> 16)) << 16);
              v139 = *v29;
              if (v372)
              {
                v140 = HIWORD(v139);
                if (!HIWORD(v139))
                {
                  goto LABEL_157;
                }
              }

              else
              {
                LODWORD(v140) = 0xFFFF;
              }

              v138 = PDAscreenPDA_15237(v139, v140, v138, (v136 - ((v137 * v136 + 0x8000 + ((v137 * v136 + 0x8000) >> 16)) >> 16)));
LABEL_157:
              *v29 = v138;
            }
          }

LABEL_158:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v132)
          {
            goto LABEL_449;
          }
        }

      case 15:
        v207 = v4;
        v114 = v39;
        while (1)
        {
          v208 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v209 = *v114 * v208 + ((*v114 * v208) >> 8) + 1;
              if (v209 < 0x100)
              {
                goto LABEL_250;
              }

              v208 = v209 >> 8;
            }

            v211 = HIWORD(*v50);
            v212 = (v208 | (v208 << 8)) ^ 0xFFFF;
            if (v211 != (v212 * v211 + 0x8000 + ((v212 * v211 + 0x8000) >> 16)) >> 16)
            {
              v210 = *v50;
              v213 = ((v211 - ((v212 * v211 + 0x8000 + ((v212 * v211 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v210) - ((WORD2(v210) * v212 + 0x8000 + ((WORD2(v210) * v212 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v212 + 0x8000 + ((*v50 * v212 + 0x8000) >> 16)) >> 16)) | ((WORD1(v210) - ((WORD1(v210) * v212 + 0x8000 + ((WORD1(v210) * v212 + 0x8000) >> 16)) >> 16)) << 16);
              v214 = *v29;
              if (v372)
              {
                v215 = HIWORD(v214);
                if (!HIWORD(v214))
                {
                  goto LABEL_249;
                }
              }

              else
              {
                LODWORD(v215) = 0xFFFF;
              }

              v213 = PDAoverlayPDA_15238(v214, v215, v213, (v211 - ((v212 * v211 + 0x8000 + ((v212 * v211 + 0x8000) >> 16)) >> 16)));
LABEL_249:
              *v29 = v213;
            }
          }

LABEL_250:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v207)
          {
            goto LABEL_449;
          }
        }

      case 16:
        v123 = v4;
        v114 = v39;
        while (1)
        {
          v124 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v125 = *v114 * v124 + ((*v114 * v124) >> 8) + 1;
              if (v125 < 0x100)
              {
                goto LABEL_144;
              }

              v124 = v125 >> 8;
            }

            v127 = HIWORD(*v50);
            v128 = (v124 | (v124 << 8)) ^ 0xFFFF;
            if (v127 != (v128 * v127 + 0x8000 + ((v128 * v127 + 0x8000) >> 16)) >> 16)
            {
              v126 = *v50;
              v129 = ((v127 - ((v128 * v127 + 0x8000 + ((v128 * v127 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v126) - ((WORD2(v126) * v128 + 0x8000 + ((WORD2(v126) * v128 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v128 + 0x8000 + ((*v50 * v128 + 0x8000) >> 16)) >> 16)) | ((WORD1(v126) - ((WORD1(v126) * v128 + 0x8000 + ((WORD1(v126) * v128 + 0x8000) >> 16)) >> 16)) << 16);
              v130 = *v29;
              if (v372)
              {
                v131 = HIWORD(v130);
                if (!HIWORD(v130))
                {
                  goto LABEL_143;
                }
              }

              else
              {
                LODWORD(v131) = 0xFFFF;
              }

              v129 = PDAdarkenPDA_15240(v130, v131, v129, (v127 - ((v128 * v127 + 0x8000 + ((v128 * v127 + 0x8000) >> 16)) >> 16)));
LABEL_143:
              *v29 = v129;
            }
          }

LABEL_144:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v123)
          {
            goto LABEL_449;
          }
        }

      case 17:
        v231 = v4;
        v114 = v39;
        while (1)
        {
          v232 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v233 = *v114 * v232 + ((*v114 * v232) >> 8) + 1;
              if (v233 < 0x100)
              {
                goto LABEL_299;
              }

              v232 = v233 >> 8;
            }

            v235 = HIWORD(*v50);
            v236 = (v232 | (v232 << 8)) ^ 0xFFFF;
            if (v235 != (v236 * v235 + 0x8000 + ((v236 * v235 + 0x8000) >> 16)) >> 16)
            {
              v234 = *v50;
              v237 = ((v235 - ((v236 * v235 + 0x8000 + ((v236 * v235 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v234) - ((WORD2(v234) * v236 + 0x8000 + ((WORD2(v234) * v236 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v236 + 0x8000 + ((*v50 * v236 + 0x8000) >> 16)) >> 16)) | ((WORD1(v234) - ((WORD1(v234) * v236 + 0x8000 + ((WORD1(v234) * v236 + 0x8000) >> 16)) >> 16)) << 16);
              v238 = *v29;
              if (v372)
              {
                v239 = HIWORD(v238);
                if (!HIWORD(v238))
                {
                  goto LABEL_298;
                }
              }

              else
              {
                LODWORD(v239) = 0xFFFF;
              }

              v237 = PDAlightenPDA_15239(v238, v239, v237, (v235 - ((v236 * v235 + 0x8000 + ((v236 * v235 + 0x8000) >> 16)) >> 16)));
LABEL_298:
              *v29 = v237;
            }
          }

LABEL_299:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v231)
          {
            goto LABEL_449;
          }
        }

      case 18:
        v280 = v4;
        v114 = v39;
        while (1)
        {
          v281 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v282 = *v114 * v281 + ((*v114 * v281) >> 8) + 1;
              if (v282 < 0x100)
              {
                goto LABEL_374;
              }

              v281 = v282 >> 8;
            }

            v284 = HIWORD(*v50);
            v285 = (v281 | (v281 << 8)) ^ 0xFFFF;
            if (v284 != (v285 * v284 + 0x8000 + ((v285 * v284 + 0x8000) >> 16)) >> 16)
            {
              v283 = *v50;
              v286 = ((v284 - ((v285 * v284 + 0x8000 + ((v285 * v284 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v283) - ((WORD2(v283) * v285 + 0x8000 + ((WORD2(v283) * v285 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v285 + 0x8000 + ((*v50 * v285 + 0x8000) >> 16)) >> 16)) | ((WORD1(v283) - ((WORD1(v283) * v285 + 0x8000 + ((WORD1(v283) * v285 + 0x8000) >> 16)) >> 16)) << 16);
              v287 = *v29;
              if (v372)
              {
                v288 = HIWORD(v287);
                if (!HIWORD(v287))
                {
                  goto LABEL_373;
                }
              }

              else
              {
                LODWORD(v288) = 0xFFFF;
              }

              v286 = PDAcolordodgePDA_15241(v287, v288, v286, (v284 - ((v285 * v284 + 0x8000 + ((v285 * v284 + 0x8000) >> 16)) >> 16)));
LABEL_373:
              *v29 = v286;
            }
          }

LABEL_374:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v280)
          {
            goto LABEL_449;
          }
        }

      case 19:
        v310 = v4;
        v114 = v39;
        while (1)
        {
          v311 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v312 = *v114 * v311 + ((*v114 * v311) >> 8) + 1;
              if (v312 < 0x100)
              {
                goto LABEL_420;
              }

              v311 = v312 >> 8;
            }

            v314 = HIWORD(*v50);
            v315 = (v311 | (v311 << 8)) ^ 0xFFFF;
            if (v314 != (v315 * v314 + 0x8000 + ((v315 * v314 + 0x8000) >> 16)) >> 16)
            {
              v313 = *v50;
              v316 = ((v314 - ((v315 * v314 + 0x8000 + ((v315 * v314 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v313) - ((WORD2(v313) * v315 + 0x8000 + ((WORD2(v313) * v315 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v315 + 0x8000 + ((*v50 * v315 + 0x8000) >> 16)) >> 16)) | ((WORD1(v313) - ((WORD1(v313) * v315 + 0x8000 + ((WORD1(v313) * v315 + 0x8000) >> 16)) >> 16)) << 16);
              v317 = *v29;
              if (v372)
              {
                v318 = HIWORD(v317);
                if (!HIWORD(v317))
                {
                  goto LABEL_419;
                }
              }

              else
              {
                LODWORD(v318) = 0xFFFF;
              }

              v316 = PDAcolorburnPDA_15242(v317, v318, v316, (v314 - ((v315 * v314 + 0x8000 + ((v315 * v314 + 0x8000) >> 16)) >> 16)));
LABEL_419:
              *v29 = v316;
            }
          }

LABEL_420:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v310)
          {
            goto LABEL_449;
          }
        }

      case 20:
        v240 = v4;
        v114 = v39;
        while (1)
        {
          v241 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v242 = *v114 * v241 + ((*v114 * v241) >> 8) + 1;
              if (v242 < 0x100)
              {
                goto LABEL_313;
              }

              v241 = v242 >> 8;
            }

            v244 = HIWORD(*v50);
            v245 = (v241 | (v241 << 8)) ^ 0xFFFF;
            if (v244 != (v245 * v244 + 0x8000 + ((v245 * v244 + 0x8000) >> 16)) >> 16)
            {
              v243 = *v50;
              v246 = ((v244 - ((v245 * v244 + 0x8000 + ((v245 * v244 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v243) - ((WORD2(v243) * v245 + 0x8000 + ((WORD2(v243) * v245 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v245 + 0x8000 + ((*v50 * v245 + 0x8000) >> 16)) >> 16)) | ((WORD1(v243) - ((WORD1(v243) * v245 + 0x8000 + ((WORD1(v243) * v245 + 0x8000) >> 16)) >> 16)) << 16);
              v247 = *v29;
              if (v372)
              {
                v248 = HIWORD(v247);
                if (!HIWORD(v247))
                {
                  goto LABEL_312;
                }
              }

              else
              {
                LODWORD(v248) = 0xFFFF;
              }

              v246 = PDAsoftlightPDA_15244(v247, v248, v246, (v244 - ((v245 * v244 + 0x8000 + ((v245 * v244 + 0x8000) >> 16)) >> 16)));
LABEL_312:
              *v29 = v246;
            }
          }

LABEL_313:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v240)
          {
            goto LABEL_449;
          }
        }

      case 21:
        v257 = v4;
        v114 = v39;
        while (1)
        {
          v258 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v259 = *v114 * v258 + ((*v114 * v258) >> 8) + 1;
              if (v259 < 0x100)
              {
                goto LABEL_335;
              }

              v258 = v259 >> 8;
            }

            v261 = HIWORD(*v50);
            v262 = (v258 | (v258 << 8)) ^ 0xFFFF;
            if (v261 != (v262 * v261 + 0x8000 + ((v262 * v261 + 0x8000) >> 16)) >> 16)
            {
              v260 = *v50;
              v263 = ((v261 - ((v262 * v261 + 0x8000 + ((v262 * v261 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v260) - ((WORD2(v260) * v262 + 0x8000 + ((WORD2(v260) * v262 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v262 + 0x8000 + ((*v50 * v262 + 0x8000) >> 16)) >> 16)) | ((WORD1(v260) - ((WORD1(v260) * v262 + 0x8000 + ((WORD1(v260) * v262 + 0x8000) >> 16)) >> 16)) << 16);
              v264 = *v29;
              if (v372)
              {
                v265 = HIWORD(v264);
                if (!HIWORD(v264))
                {
                  goto LABEL_334;
                }
              }

              else
              {
                LODWORD(v265) = 0xFFFF;
              }

              v263 = PDAhardlightPDA_15243(v264, v265, v263, (v261 - ((v262 * v261 + 0x8000 + ((v262 * v261 + 0x8000) >> 16)) >> 16)));
LABEL_334:
              *v29 = v263;
            }
          }

LABEL_335:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v257)
          {
            goto LABEL_449;
          }
        }

      case 22:
        v301 = v4;
        v114 = v39;
        while (1)
        {
          v302 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v303 = *v114 * v302 + ((*v114 * v302) >> 8) + 1;
              if (v303 < 0x100)
              {
                goto LABEL_406;
              }

              v302 = v303 >> 8;
            }

            v305 = HIWORD(*v50);
            v306 = (v302 | (v302 << 8)) ^ 0xFFFF;
            if (v305 != (v306 * v305 + 0x8000 + ((v306 * v305 + 0x8000) >> 16)) >> 16)
            {
              v304 = *v50;
              v307 = ((v305 - ((v306 * v305 + 0x8000 + ((v306 * v305 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v304) - ((WORD2(v304) * v306 + 0x8000 + ((WORD2(v304) * v306 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v306 + 0x8000 + ((*v50 * v306 + 0x8000) >> 16)) >> 16)) | ((WORD1(v304) - ((WORD1(v304) * v306 + 0x8000 + ((WORD1(v304) * v306 + 0x8000) >> 16)) >> 16)) << 16);
              v308 = *v29;
              if (v372)
              {
                v309 = HIWORD(v308);
                if (!HIWORD(v308))
                {
                  goto LABEL_405;
                }
              }

              else
              {
                LODWORD(v309) = 0xFFFF;
              }

              v307 = PDAdifferencePDA_15245(v308, v309, v307, (v305 - ((v306 * v305 + 0x8000 + ((v306 * v305 + 0x8000) >> 16)) >> 16)));
LABEL_405:
              *v29 = v307;
            }
          }

LABEL_406:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v301)
          {
            goto LABEL_449;
          }
        }

      case 23:
        v319 = v4;
        v114 = v39;
        while (1)
        {
          v320 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v321 = *v114 * v320 + ((*v114 * v320) >> 8) + 1;
              if (v321 < 0x100)
              {
                goto LABEL_434;
              }

              v320 = v321 >> 8;
            }

            v323 = HIWORD(*v50);
            v324 = (v320 | (v320 << 8)) ^ 0xFFFF;
            if (v323 != (v324 * v323 + 0x8000 + ((v324 * v323 + 0x8000) >> 16)) >> 16)
            {
              v322 = *v50;
              v325 = ((v323 - ((v324 * v323 + 0x8000 + ((v324 * v323 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v322) - ((WORD2(v322) * v324 + 0x8000 + ((WORD2(v322) * v324 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v324 + 0x8000 + ((*v50 * v324 + 0x8000) >> 16)) >> 16)) | ((WORD1(v322) - ((WORD1(v322) * v324 + 0x8000 + ((WORD1(v322) * v324 + 0x8000) >> 16)) >> 16)) << 16);
              v326 = *v29;
              if (v372)
              {
                v327 = HIWORD(v326);
                if (!HIWORD(v326))
                {
                  goto LABEL_433;
                }
              }

              else
              {
                LODWORD(v327) = 0xFFFF;
              }

              v325 = PDAexclusionPDA_15246(v326, v327, v325, (v323 - ((v324 * v323 + 0x8000 + ((v324 * v323 + 0x8000) >> 16)) >> 16)));
LABEL_433:
              *v29 = v325;
            }
          }

LABEL_434:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v319)
          {
            goto LABEL_449;
          }
        }

      case 24:
        v185 = v4;
        v114 = v39;
        while (1)
        {
          v186 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v187 = *v114 * v186 + ((*v114 * v186) >> 8) + 1;
              if (v187 < 0x100)
              {
                goto LABEL_222;
              }

              v186 = v187 >> 8;
            }

            v189 = HIWORD(*v50);
            v190 = (v186 | (v186 << 8)) ^ 0xFFFF;
            if (v189 != (v190 * v189 + 0x8000 + ((v190 * v189 + 0x8000) >> 16)) >> 16)
            {
              v188 = *v50;
              v191 = ((v189 - ((v190 * v189 + 0x8000 + ((v190 * v189 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v188) - ((WORD2(v188) * v190 + 0x8000 + ((WORD2(v188) * v190 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v190 + 0x8000 + ((*v50 * v190 + 0x8000) >> 16)) >> 16)) | ((WORD1(v188) - ((WORD1(v188) * v190 + 0x8000 + ((WORD1(v188) * v190 + 0x8000) >> 16)) >> 16)) << 16);
              v192 = *v29;
              if (v372)
              {
                v193 = HIWORD(v192);
                if (!HIWORD(v192))
                {
                  goto LABEL_221;
                }
              }

              else
              {
                LODWORD(v193) = 0xFFFF;
              }

              v191 = PDAhuePDA_15247(v192, v193, v191, (v189 - ((v190 * v189 + 0x8000 + ((v190 * v189 + 0x8000) >> 16)) >> 16)));
LABEL_221:
              *v29 = v191;
            }
          }

LABEL_222:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v185)
          {
            goto LABEL_449;
          }
        }

      case 25:
        v176 = v4;
        v114 = v39;
        while (1)
        {
          v177 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v178 = *v114 * v177 + ((*v114 * v177) >> 8) + 1;
              if (v178 < 0x100)
              {
                goto LABEL_208;
              }

              v177 = v178 >> 8;
            }

            v180 = HIWORD(*v50);
            v181 = (v177 | (v177 << 8)) ^ 0xFFFF;
            if (v180 != (v181 * v180 + 0x8000 + ((v181 * v180 + 0x8000) >> 16)) >> 16)
            {
              v179 = *v50;
              v182 = ((v180 - ((v181 * v180 + 0x8000 + ((v181 * v180 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v179) - ((WORD2(v179) * v181 + 0x8000 + ((WORD2(v179) * v181 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v181 + 0x8000 + ((*v50 * v181 + 0x8000) >> 16)) >> 16)) | ((WORD1(v179) - ((WORD1(v179) * v181 + 0x8000 + ((WORD1(v179) * v181 + 0x8000) >> 16)) >> 16)) << 16);
              v183 = *v29;
              if (v372)
              {
                v184 = HIWORD(v183);
                if (!HIWORD(v183))
                {
                  goto LABEL_207;
                }
              }

              else
              {
                LODWORD(v184) = 0xFFFF;
              }

              v182 = PDAsaturationPDA_15248(v183, v184, v182, (v180 - ((v181 * v180 + 0x8000 + ((v181 * v180 + 0x8000) >> 16)) >> 16)));
LABEL_207:
              *v29 = v182;
            }
          }

LABEL_208:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v176)
          {
            goto LABEL_449;
          }
        }

      case 26:
        v328 = v4;
        v114 = v39;
        while (1)
        {
          v329 = *v51;
          if (*v51)
          {
            if (v39)
            {
              v330 = *v114 * v329 + ((*v114 * v329) >> 8) + 1;
              if (v330 < 0x100)
              {
                goto LABEL_448;
              }

              v329 = v330 >> 8;
            }

            v332 = HIWORD(*v50);
            v333 = (v329 | (v329 << 8)) ^ 0xFFFF;
            if (v332 != (v333 * v332 + 0x8000 + ((v333 * v332 + 0x8000) >> 16)) >> 16)
            {
              v331 = *v50;
              v334 = ((v332 - ((v333 * v332 + 0x8000 + ((v333 * v332 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v331) - ((WORD2(v331) * v333 + 0x8000 + ((WORD2(v331) * v333 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v333 + 0x8000 + ((*v50 * v333 + 0x8000) >> 16)) >> 16)) | ((WORD1(v331) - ((WORD1(v331) * v333 + 0x8000 + ((WORD1(v331) * v333 + 0x8000) >> 16)) >> 16)) << 16);
              v335 = *v29;
              if (v372)
              {
                v336 = HIWORD(v335);
                if (!HIWORD(v335))
                {
                  goto LABEL_447;
                }
              }

              else
              {
                LODWORD(v336) = 0xFFFF;
              }

              v334 = PDAluminosityPDA_15249(v334, (v332 - ((v333 * v332 + 0x8000 + ((v333 * v332 + 0x8000) >> 16)) >> 16)), v335, v336);
LABEL_447:
              *v29 = v334;
            }
          }

LABEL_448:
          ++v51;
          v50 += 8;
          v114 += v39 != 0;
          ++v29;
          if (!--v328)
          {
            goto LABEL_449;
          }
        }

      case 27:
        v113 = v4;
        v114 = v39;
        break;
      default:
        goto LABEL_452;
    }

    break;
  }

  while (1)
  {
    v115 = *v51;
    if (*v51)
    {
      if (v39)
      {
        v116 = *v114 * v115 + ((*v114 * v115) >> 8) + 1;
        if (v116 < 0x100)
        {
          goto LABEL_130;
        }

        v115 = v116 >> 8;
      }

      v118 = HIWORD(*v50);
      v119 = (v115 | (v115 << 8)) ^ 0xFFFF;
      if (v118 != (v119 * v118 + 0x8000 + ((v119 * v118 + 0x8000) >> 16)) >> 16)
      {
        v117 = *v50;
        v120 = ((v118 - ((v119 * v118 + 0x8000 + ((v119 * v118 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v117) - ((WORD2(v117) * v119 + 0x8000 + ((WORD2(v117) * v119 + 0x8000) >> 16)) >> 16)) << 32) | (*v50 - ((*v50 * v119 + 0x8000 + ((*v50 * v119 + 0x8000) >> 16)) >> 16)) | ((WORD1(v117) - ((WORD1(v117) * v119 + 0x8000 + ((WORD1(v117) * v119 + 0x8000) >> 16)) >> 16)) << 16);
        v121 = *v29;
        if (v372)
        {
          v122 = HIWORD(v121);
          if (!HIWORD(v121))
          {
            goto LABEL_129;
          }
        }

        else
        {
          LODWORD(v122) = 0xFFFF;
        }

        v120 = PDAluminosityPDA_15249(v121, v122, v120, (v118 - ((v119 * v118 + 0x8000 + ((v119 * v118 + 0x8000) >> 16)) >> 16)));
LABEL_129:
        *v29 = v120;
      }
    }

LABEL_130:
    ++v51;
    v50 += 8;
    v114 += v39 != 0;
    ++v29;
    if (!--v113)
    {
LABEL_449:
      v39 = &v114[v361];
      v29 += v362;
      v40 = v364;
      goto LABEL_450;
    }
  }
}

int *rgba64_DM(int *result, unint64_t a2, int a3)
{
  v3 = HIWORD(a2) * (a3 ^ 0xFFFF) + 0x8000;
  *result = (a2 - ((a2 * (a3 ^ 0xFFFF) + 0x8000 + ((a2 * (a3 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) | ((WORD1(a2) - ((WORD1(a2) * (a3 ^ 0xFFFF) + 0x8000 + ((WORD1(a2) * (a3 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) << 16);
  result[1] = (WORD2(a2) - ((WORD2(a2) * (a3 ^ 0xFFFF) + 0x8000 + ((WORD2(a2) * (a3 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) | ((HIWORD(a2) - ((v3 + HIWORD(v3)) >> 16)) << 16);
  return result;
}

_DWORD *rgba64_DMplusDM(_DWORD *result, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = a2 * a3 + a4 * a5;
  v6 = WORD1(a2) * a3 + WORD1(a4) * a5;
  v7 = WORD2(a2) * a3 + WORD2(a4) * a5;
  v8 = HIWORD(a2) * a3 + HIWORD(a4) * a5;
  if (v5 >= 0xFFFE8000)
  {
    v5 = 4294868992;
  }

  if (v6 >= 0xFFFE8000)
  {
    v6 = 4294868992;
  }

  if (v7 >= 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  if (v8 >= 0xFFFE8000)
  {
    v8 = 4294868992;
  }

  *result = (((v6 + 0x8000) >> 16) + v6 + 0x8000) & 0xFFFF0000 | ((((v5 + 0x8000) >> 16) + v5 + 0x8000) >> 16);
  result[1] = (((v8 + 0x8000) >> 16) + v8 + 0x8000) & 0xFFFF0000 | ((((v7 + 0x8000) >> 16) + v7 + 0x8000) >> 16);
  return result;
}

uint16x4_t rgba64_DplusDM(uint16x4_t *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = vqadd_u16(a2, (((HIWORD(a3) * a4 + 0x8000 + ((HIWORD(a3) * a4 + 0x8000) >> 16)) >> 16 << 48) | (((WORD2(a3) * a4 + 0x8000 + ((WORD2(a3) * a4 + 0x8000) >> 16)) >> 16) << 32) | (WORD1(a3) * a4 + 0x8000 + ((WORD1(a3) * a4 + 0x8000) >> 16)) & 0xFFFF0000 | ((a3 * a4 + 0x8000 + ((a3 * a4 + 0x8000) >> 16)) >> 16)));
  *a1 = result;
  return result;
}

int8x8_t rgba64_DAplusdDA(int8x8_t *a1, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = vshlq_u64(vdupq_n_s64(a2), xmmword_18439CD60);
  v6 = vshlq_u64(vdupq_n_s64(a4), xmmword_18439CD60);
  v7 = a3 - a2;
  if (a3 < a2)
  {
    v7 = 0;
  }

  v8 = a5 - a4;
  if (a5 < a4)
  {
    v8 = 0;
  }

  v9 = v8 + v7;
  v10 = a5 + a3;
  if (v9 >= 0xFFFF)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9;
  }

  if (v10 >= 0xFFFF)
  {
    v10 = 0xFFFFLL;
  }

  if (v9 >= v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v10 - v11);
  }

  v13.i64[0] = 0xFFFFLL;
  v13.i64[1] = 0xFFFFLL;
  v14 = vaddq_s64(vqsubq_u64(vdupq_n_s64(a5), vandq_s8(v6, v13)), vqsubq_u64(vdupq_n_s64(a3), vandq_s8(v5, v13)));
  v15 = vbslq_s8(vcgtq_u64(v13, v14), v14, v13);
  v16 = vdupq_n_s64(v10);
  *v14.i8 = vmovn_s64(vcgtq_u64(v16, v14));
  *v15.i8 = vmovn_s64(vsubq_s64(v16, v15));
  v16.i32[0] = vshl_n_s32(*v15.i8, 0x10uLL).u32[0];
  v16.i32[1] = v15.u16[2];
  v15.i32[0] = v12;
  v15.i32[1] = v10 << 16;
  result = vorr_s8(vand_s8(*v16.i8, *v14.i8), *v15.i8);
  *a1 = result;
  return result;
}

_DWORD *rgba64_DpluslD(_DWORD *result, unint64_t a2, unint64_t a3)
{
  v3 = a3 + a2;
  v4 = WORD1(a3) + WORD1(a2);
  v5 = WORD2(a3) + WORD2(a2);
  v6 = HIWORD(a3) + HIWORD(a2);
  if (v3 >= 0xFFFF)
  {
    LODWORD(v3) = 0xFFFF;
  }

  if (v4 >= 0xFFFF)
  {
    LODWORD(v4) = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    LODWORD(v5) = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    LODWORD(v6) = 0xFFFF;
  }

  *result = v3 | (v4 << 16);
  result[1] = v5 | (v6 << 16);
  return result;
}

unint64_t PDAmultiplyPDA_15236(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = ((a4 ^ 0xFFFF) + a3) * a1;
  v5 = ((a4 ^ 0xFFFF) + WORD2(a3)) * WORD2(a1);
  v6 = ((a4 ^ 0xFFFF) + WORD1(a3)) * WORD1(a1);
  if (a2 != 0xFFFF)
  {
    v6 += WORD1(a3) * (a2 ^ 0xFFFF);
    v5 += WORD2(a3) * (a2 ^ 0xFFFF);
    v4 += a3 * (a2 ^ 0xFFFF);
  }

  v7 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v4 <= 0xFFFE8000)
  {
    v8 = v4 + 0x8000;
  }

  else
  {
    v8 = 4294868992;
  }

  v9 = ((v8 >> 16) + v8) >> 16;
  if (v6 <= 0xFFFE8000)
  {
    v10 = v6 + 0x8000;
  }

  else
  {
    v10 = 4294868992;
  }

  v11 = (v10 >> 16) + v10;
  if (v7 <= 4294868992)
  {
    v12 = v7 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = ((v12 >> 16) + v12) >> 16;
  v14 = (65537 * v5 + 2147516416u) & 0xFFFF00000000;
  v15 = v5 > 0xFFFE8000;
  v16 = 0xFFFF00000000;
  if (!v15)
  {
    v16 = v14;
  }

  return v16 & 0xFFFFFFFFFFFFLL | (v13 << 48) | v11 & 0xFFFF0000 | v9;
}

unint64_t PDAscreenPDA_15237(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3 * (a1 ^ 0xFFFFu) - a1 + (a1 << 16);
  v5 = WORD1(a3) * (WORD1(a1) ^ 0xFFFFu) - WORD1(a1) + (WORD1(a1) << 16);
  v6 = WORD2(a3) * (WORD2(a1) ^ 0xFFFFu) - WORD2(a1) + (WORD2(a1) << 16);
  v7 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v4 <= 0xFFFE8000)
  {
    v8 = v4 + 0x8000;
  }

  else
  {
    v8 = 4294868992;
  }

  v9 = v8 + (v8 >> 16);
  if (v5 <= 0xFFFE8000)
  {
    v10 = v5 + 0x8000;
  }

  else
  {
    v10 = 4294868992;
  }

  v11 = (v10 >> 16) + v10;
  if (v7 <= 4294868992)
  {
    v12 = v7 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = ((v12 >> 16) + v12) >> 16;
  v14 = (65537 * v6 + 2147516416u) & 0xFFFF00000000;
  v15 = v6 > 0xFFFE8000;
  v16 = 0xFFFF00000000;
  if (!v15)
  {
    v16 = v14;
  }

  return v16 & 0xFFFFFFFFFFFFLL | (v9 >> 16) | v11 & 0xFFFF0000 | (v13 << 48);
}

unint64_t PDAoverlayPDA_15238(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = WORD1(a1);
  v5 = WORD2(a1);
  v6 = a3;
  v7 = WORD1(a3);
  v8 = WORD2(a3);
  if (a3 >= a4)
  {
    v6 = a4;
  }

  if (a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = 2 * v9 * v6;
  if (v7 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  if (v4 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v4;
  }

  if (v8 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v8;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v14 = a4 * a2;
  v15 = (a2 + 1) >> 1;
  if (v9 >= v15)
  {
    v16 = (a4 + 0xFFFF) * v9 + v6 * (a2 + 0xFFFF) - (v14 + v10);
  }

  else
  {
    v16 = v6 * (a2 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v9 + v10;
  }

  v17 = 2 * v12 * v11;
  if (v12 >= v15)
  {
    v18 = (a4 + 0xFFFF) * v12 + v11 * (a2 + 0xFFFF) - (v14 + v17);
  }

  else
  {
    v18 = v11 * (a2 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v12 + v17;
  }

  v19 = 2 * v5 * v13;
  if (v5 >= v15)
  {
    v20 = (a4 + 0xFFFF) * v5 + v13 * (a2 + 0xFFFF) - (v14 + v19);
  }

  else
  {
    v20 = v13 * (a2 ^ 0xFFFF) + (a4 ^ 0xFFFF) * v5 + v19;
  }

  v21 = 0xFFFF * (a4 + a2) - v14;
  v22 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v22 = 4294868992;
  }

  v23 = ((v22 >> 16) + v22) >> 16;
  v24 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  if (v21 <= 4294868992)
  {
    v26 = v21 + 0x8000;
  }

  else
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  v28 = 0xFFFF00000000;
  if (v20 <= 4294868992)
  {
    v28 = (65537 * v20 + 2147516416) & 0xFFFF00000000;
  }

  return (v23 | (v27 << 32)) & 0xFFFF00000000FFFFLL | v25 & 0xFFFF0000 | v28;
}

unint64_t PDAlightenPDA_15239(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a3;
  v8 = WORD1(a3);
  v9 = WORD2(a3);
  if (a3 >= a4)
  {
    v7 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  v10 = v4 * a4;
  if (v7 * a2 > v10)
  {
    v10 = v7 * a2;
  }

  if (WORD1(a3) >= a4)
  {
    v8 = a4;
  }

  if (WORD1(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = v5 * a4;
  if (v8 * a2 > v11)
  {
    v11 = v8 * a2;
  }

  if (WORD2(a3) >= a4)
  {
    v9 = a4;
  }

  if (WORD2(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = v6 * a4;
  if (v9 * a2 > v12)
  {
    v12 = v9 * a2;
  }

  v13 = v10 + (a4 ^ 0xFFFF) * v4;
  v14 = v11 + (a4 ^ 0xFFFF) * v5;
  v15 = v12 + (a4 ^ 0xFFFF) * v6;
  if (a4 == 0xFFFF)
  {
    v14 = v11;
    v15 = v12;
    v13 = v10;
  }

  v16 = v13 + v7 * (a2 ^ 0xFFFF);
  v17 = v14 + v8 * (a2 ^ 0xFFFF);
  v18 = v15 + v9 * (a2 ^ 0xFFFF);
  if (a2 != 0xFFFF)
  {
    v14 = v17;
    v15 = v18;
    v13 = v16;
  }

  v19 = 0xFFFF * (a4 + a2) - a4 * a2;
  v20 = v13 + 0x8000;
  if (v13 > 0xFFFE8000)
  {
    v20 = 4294868992;
  }

  v21 = ((v20 >> 16) + v20) >> 16;
  v22 = v14 + 0x8000;
  if (v14 > 0xFFFE8000)
  {
    v22 = 4294868992;
  }

  v23 = (v22 >> 16) + v22;
  if (v19 <= 4294868992)
  {
    v24 = v19 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = ((v24 >> 16) + v24) >> 16;
  v26 = (65537 * v15 + 2147516416u) & 0xFFFF00000000;
  if (v15 > 0xFFFE8000)
  {
    v26 = 0xFFFF00000000;
  }

  return v26 & 0xFFFFFFFFFFFFLL | (v25 << 48) | v23 & 0xFFFF0000 | v21;
}

unint64_t PDAdarkenPDA_15240(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = a1;
  v5 = WORD1(a1);
  v6 = WORD2(a1);
  v7 = a3;
  v8 = WORD1(a3);
  v9 = WORD2(a3);
  if (a3 >= a4)
  {
    v7 = a4;
  }

  if (a1 >= a2)
  {
    v4 = a2;
  }

  v10 = v4 * a4;
  if (v7 * a2 < v10)
  {
    v10 = v7 * a2;
  }

  if (WORD1(a3) >= a4)
  {
    v8 = a4;
  }

  if (WORD1(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = v5 * a4;
  if (v8 * a2 < v11)
  {
    v11 = v8 * a2;
  }

  if (WORD2(a3) >= a4)
  {
    v9 = a4;
  }

  if (WORD2(a1) >= a2)
  {
    v6 = a2;
  }

  v12 = v6 * a4;
  if (v9 * a2 < v12)
  {
    v12 = v9 * a2;
  }

  v13 = v10 + (a4 ^ 0xFFFF) * v4;
  v14 = v11 + (a4 ^ 0xFFFF) * v5;
  v15 = v12 + (a4 ^ 0xFFFF) * v6;
  if (a4 == 0xFFFF)
  {
    v14 = v11;
    v15 = v12;
    v13 = v10;
  }

  v16 = v13 + v7 * (a2 ^ 0xFFFF);
  v17 = v14 + v8 * (a2 ^ 0xFFFF);
  v18 = v15 + v9 * (a2 ^ 0xFFFF);
  if (a2 != 0xFFFF)
  {
    v14 = v17;
    v15 = v18;
    v13 = v16;
  }

  v19 = 0xFFFF * (a4 + a2) - a4 * a2;
  v20 = v13 + 0x8000;
  if (v13 > 0xFFFE8000)
  {
    v20 = 4294868992;
  }

  v21 = ((v20 >> 16) + v20) >> 16;
  v22 = v14 + 0x8000;
  if (v14 > 0xFFFE8000)
  {
    v22 = 4294868992;
  }

  v23 = (v22 >> 16) + v22;
  if (v19 <= 4294868992)
  {
    v24 = v19 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = ((v24 >> 16) + v24) >> 16;
  v26 = (65537 * v15 + 2147516416u) & 0xFFFF00000000;
  if (v15 > 0xFFFE8000)
  {
    v26 = 0xFFFF00000000;
  }

  return v26 & 0xFFFFFFFFFFFFLL | (v25 << 48) | v23 & 0xFFFF0000 | v21;
}

unint64_t PDAcolordodgePDA_15241(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = WORD1(a1);
  v5 = 4294836225;
  v6 = WORD1(a3);
  v7 = a4 * a4;
  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (a3 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  if (v8)
  {
    v10 = 4294836225;
    if (a3 < a4)
    {
      v10 = (v7 * v8) / (a4 - v9);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = WORD2(a1);
  v12 = WORD2(a3);
  if (v4 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v4;
  }

  if (v6 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v6;
  }

  if (v13)
  {
    v15 = 4294836225;
    if (v6 < a4)
    {
      v15 = (v7 * v13) / (a4 - v14);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v11 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v11;
  }

  if (v12 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v12;
  }

  if (v16)
  {
    if (v12 < a4)
    {
      v5 = (v7 * v16) / (a4 - v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = v10 + (a4 ^ 0xFFFF) * v8;
  v19 = v15 + (a4 ^ 0xFFFF) * v13;
  if (a4 == 0xFFFF)
  {
    v19 = v15;
  }

  else
  {
    v5 += (a4 ^ 0xFFFF) * v16;
  }

  if (a4 == 0xFFFF)
  {
    v18 = v10;
  }

  v20 = v18 + v9 * (a2 ^ 0xFFFF);
  v21 = v19 + v14 * (a2 ^ 0xFFFF);
  if (a2 == 0xFFFF)
  {
    v21 = v19;
  }

  else
  {
    v5 += v17 * (a2 ^ 0xFFFF);
  }

  if (a2 == 0xFFFF)
  {
    v20 = v18;
  }

  v22 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v20 >= v22)
  {
    v23 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  else
  {
    v23 = v20;
  }

  if (v21 >= v22)
  {
    v24 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  else
  {
    v24 = v21;
  }

  if (v5 >= v22)
  {
    v5 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v24 <= 4294868992)
  {
    v25 = v24 + 0x8000;
  }

  else
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  if (v23 <= 4294868992)
  {
    v27 = v23 + 0x8000;
  }

  else
  {
    v27 = 4294868992;
  }

  v28 = ((v27 >> 16) + v27) >> 16;
  if (v22 <= 4294868992)
  {
    v29 = v22 + 0x8000;
  }

  else
  {
    v29 = 4294868992;
  }

  v30 = ((v29 >> 16) + v29) >> 16;
  v31 = (65537 * v5 + 2147516416) & 0xFFFF00000000;
  v32 = v5 <= 4294868992;
  v33 = 0xFFFF00000000;
  if (v32)
  {
    v33 = v31;
  }

  return v33 & 0xFFFFFFFFFFFFLL | (v30 << 48) | v26 & 0xFFFF0000 | v28;
}