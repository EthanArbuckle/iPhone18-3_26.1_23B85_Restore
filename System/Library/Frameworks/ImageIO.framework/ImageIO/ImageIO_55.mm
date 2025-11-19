uint64_t block_size_descriptor::get_raw_partition_info(block_size_descriptor *this, int a2, unsigned int a3)
{
  if (a3 == 0xFFFF || *(this + (a2 - 1) + 12) <= a3)
  {
    block_size_descriptor::get_raw_partition_info();
  }

  v3 = (a2 << 10) - 2048;
  if (a2 == 1)
  {
    v3 = 3072;
  }

  return this + 1088 * v3 + 1088 * a3 + 11317232;
}

uint64_t insert_result(uint64_t result, float a2, unsigned int a3, float *a4, unsigned int *a5)
{
  if (!result)
  {
    insert_result();
  }

  v5 = (result - 1);
  if (a4[v5] > a2)
  {
    v6 = 0;
    while (a4[v6] < a2)
    {
      if (result == ++v6)
      {
        return result;
      }
    }

    if (v5 > v6)
    {
      v7 = &a4[v5];
      v8 = &a5[v5];
      v9 = v7;
      v10 = v8;
      do
      {
        --v5;
        v11 = *(v9-- - 1);
        *v7 = v11;
        v12 = *--v10;
        *v8 = v12;
        v8 = v10;
        v7 = v9;
      }

      while (v5 > v6);
    }

    a4[v6] = a2;
    a5[v6] = a3;
  }

  return result;
}

void find_best_partition_candidates()
{
  __assert_rtn("kmeans_update", "astcenc_find_best_partitioning.cpp", 217, "texel_count > 0");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 389, "mismatch_counts[i] < bsd.texel_count");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 388, "mismatch_counts[i] < BLOCK_MAX_KMEANS_TEXELS");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 380, "mismatch_counts[i] < bsd.texel_count");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 379, "mismatch_counts[i] < BLOCK_MAX_KMEANS_TEXELS");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 398, "mismatch_counts[i] < bsd.texel_count");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 397, "mismatch_counts[i] < BLOCK_MAX_KMEANS_TEXELS");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 372, "active_count > 0");
}

{
  __assert_rtn("kmeans_assign", "astcenc_find_best_partitioning.cpp", 153, "texel_count > 0");
}

{
  __assert_rtn("kmeans_init", "astcenc_find_best_partitioning.cpp", 66, "texel_count > 0");
}

{
  __assert_rtn("find_best_partition_candidates", "astcenc_find_best_partitioning.cpp", 577, "partition_search_limit > 0");
}

{
  __assert_rtn("find_best_partition_candidates", "astcenc_find_best_partitioning.cpp", 576, "partition_count > 0");
}

int32x4_t rgba_delta_unpack(int32x4_t *a1, int32x4_t *a2, uint32x4_t a3, int8x16_t a4)
{
  v4.i64[0] = 0x8000000080;
  v4.i64[1] = 0x8000000080;
  v5 = vorrq_s8(vshrq_n_u32(a3, 1uLL), vandq_s8(a4, v4));
  v6 = vshrq_n_u32(a4, 1uLL);
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  v7.i64[0] = 0x2000000020;
  v7.i64[1] = 0x2000000020;
  v8 = vorrq_s8((*&vtstq_s32(v6, v7) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), vandq_s8(v6, v4));
  v9 = vaddq_s32(v8, v5);
  if (v8.i32[0] + v8.i32[1] + v8.i32[2] < 0)
  {
    v10.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v5, 2), v5), 1uLL).u64[0];
    v10.i64[1] = v5.i64[1];
    v5.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v9, 2), v9), 1uLL).u64[0];
    v5.i64[1] = v9.i64[1];
    v9 = v10;
  }

  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  *a1 = vminq_s32(vmaxq_s32(v5, 0), v11);
  result = vminq_s32(vmaxq_s32(v9, 0), v11);
  *a2 = result;
  return result;
}

__n128 *rgba_unpack(__n128 *result, __n128 *a2, int8x16_t a3, __n128 a4)
{
  v4 = vadd_s32(vadd_s32(vzip1_s32(*a3.i8, a4.n128_u64[0]), vzip2_s32(*a3.i8, a4.n128_u64[0])), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  if (vcgt_s32(v4, vdup_lane_s32(v4, 1)).u8[0])
  {
    v5.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a3, 2), a3), 1uLL).u64[0];
    v5.n128_u64[1] = a3.u64[1];
    a3.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a4, 2), a4), 1uLL).u64[0];
    a3.i64[1] = a4.n128_i64[1];
    a4 = v5;
  }

  *result = a3;
  *a2 = a4;
  return result;
}

__n128 unpack_color_endpoints(unsigned int a1, int a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, __n128 *a7, __n128 a8, int32x4_t a9, int32x4_t a10, int32x4_t a11)
{
  *a4 = 0;
  *a5 = 0;
  switch(a2)
  {
    case 0:
      v17 = *a3;
      v18 = a3[1];
      goto LABEL_99;
    case 1:
      v113 = a3[1];
      v17 = v113 & 0xC0 | (*a3 >> 2);
      v18 = v17 + (v113 & 0x3F);
      if (v18 >= 0xFF)
      {
        v18 = 255;
      }

LABEL_99:
      a8.n128_u32[3] = 255;
      LODWORD(v114) = v17;
      DWORD1(v114) = v17;
      *(&v114 + 1) = v17 | 0xFF00000000;
      a8.n128_u32[0] = v18;
      *a6 = v114;
      a8.n128_u32[1] = v18;
      a8.n128_u32[2] = v18;
      goto LABEL_104;
    case 2:
      *a4 = 1;
      v37 = *a3;
      v38 = a3[1];
      v39 = 16 * v37 - 8;
      v40 = v38 >= v37;
      if (v38 >= v37)
      {
        v41 = v37 << 8;
      }

      else
      {
        v41 = (v38 << 8) | 0x80;
      }

      if (v40)
      {
        v42 = 16 * v38;
      }

      else
      {
        v42 = v39;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = v41;
      a8.n128_u32[1] = v41;
      v43.n128_u32[3] = 30720;
      a8.n128_u32[2] = v41;
      v44 = 16 * v42;
      goto LABEL_40;
    case 3:
      *a4 = 1;
      v57 = *a3;
      v58 = *a3;
      v59 = a3[1];
      v60 = (16 * v59) & 0xF00 | (2 * v58);
      v61 = (16 * v59) & 0xE00 | (4 * (v58 & 0x7F));
      v62 = v57 >= 0;
      if (v57 < 0)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v62)
      {
        v64 = 30;
      }

      else
      {
        v64 = 124;
      }

      if (v62)
      {
        v61 = v60;
      }

      v65 = ((v59 << v63) & v64) + v61;
      if (v65 >= 0xFFF)
      {
        v65 = 4095;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * v61;
      a8.n128_u32[1] = 16 * v61;
      v43.n128_u32[3] = 30720;
      a8.n128_u32[2] = 16 * v61;
      v44 = 16 * v65;
LABEL_40:
      v43.n128_u32[0] = v44;
      *a6 = a8;
      v43.n128_u32[1] = v44;
      goto LABEL_93;
    case 4:
      a8.n128_u8[0] = *a3;
      v21 = a8.n128_u64[0];
      v21.i8[2] = a3[2];
      v22 = vzip1_s16(v21, v21);
      v22.i16[2] = a8.n128_u16[0];
      a8.n128_u8[0] = a3[1];
      v23 = a8.n128_u64[0];
      v23.i8[2] = a3[3];
      v24 = vzip1_s16(v23, v23);
      v24.i16[2] = a8.n128_u16[0];
      v25 = vmovl_u16(v22);
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      *a6 = vandq_s8(v25, v26);
      a8 = vandq_s8(vmovl_u16(v24), v26);
      goto LABEL_104;
    case 5:
      a8.n128_u8[0] = a3[1];
      a8.n128_u8[4] = a3[3];
      v115 = *&vtst_s32(a8.n128_u64[0], 0x4000000040) & 0xFFFFFF80FFFFFF80;
      *a9.i8 = vorr_s8(v115, vand_s8(a8.n128_u64[0], 0x7E0000007ELL));
      LOBYTE(v115) = *a3;
      BYTE4(v115) = a3[2];
      a8.n128_u64[0] = vorr_s8(vand_s8(vadd_s32(a8.n128_u64[0], a8.n128_u64[0]), 0x10000000100), vand_s8(v115, 0xFF000000FFLL));
      *a9.i8 = vmin_s32(vmax_s32(vsra_n_u32(vshr_n_s32(*a9.i8, 1uLL), a8.n128_u64[0], 1uLL), 0), 0xFF000000FFLL);
      v116 = vzip1q_s32(a9, a9);
      v116.i32[2] = a9.i32[0];
      a8.n128_u64[0] = vshr_n_u32(a8.n128_u64[0], 1uLL);
      v117 = vzip1q_s32(a8, a8);
      v117.i32[2] = a8.n128_u32[0];
      *a6 = v117;
      *a7 = v116;
      goto LABEL_112;
    case 6:
      v126.i32[0] = *a3;
      v126.i32[1] = a3[1];
      v126.i64[1] = a3[2];
      v127 = v126;
      v127.n128_u32[3] = 255;
      v128 = vmulq_s32(vdupq_n_s32(a3[3]), v126);
      *a7 = v127;
      a8 = vshrq_n_s32(v128, 8uLL);
      a8.n128_u32[3] = 255;
      goto LABEL_107;
    case 7:
      *a4 = 1;
      v66 = *a3;
      v67 = a3[1];
      v68 = a3[2];
      v69 = a3[3];
      v70 = (v68 >> 4) & 8 | (v67 >> 5) & 4;
      v71 = v66 >> 6 == 3;
      if (v66 >> 6 == 3)
      {
        v72 = 5;
      }

      else
      {
        v72 = 4;
      }

      if (v66 >> 6 == 3)
      {
        v73 = 0;
      }

      else
      {
        v73 = v66 >> 6;
      }

      v62 = v70 == 12;
      v74 = v70 == 12;
      v75 = v70 >> 2;
      if (v62)
      {
        v75 = v73;
      }

      else
      {
        v72 = v66 >> 6;
      }

      v76 = (v67 >> 6) & 1;
      v77 = (v67 >> 5) & 1;
      v78 = (v68 >> 6) & 1;
      v79 = (v68 >> 5) & 1;
      v80 = (v69 >> 6) & 1;
      v81 = 1 << v72;
      v82 = v76 << 6;
      if (((1 << v72) & 0x30) == 0)
      {
        v82 = 0;
      }

      v83 = v82 & 0xFFFFFFE0 | v67 & 0x1F;
      v84 = 32 * v77;
      v85 = v78 << 6;
      if ((v81 & 0x30) == 0)
      {
        v85 = 0;
      }

      if ((v81 & 0x3A) == 0)
      {
        v84 = 0;
      }

      v86 = v83 | v84;
      v87 = v85 & 0xFFFFFFE0 | v68 & 0x1F;
      v88 = 32 * v79;
      if ((v81 & 0x3A) == 0)
      {
        v88 = 0;
      }

      v89 = v87 | v88;
      v90 = (16 * v81) & (v79 << 6);
      v91 = (v69 >> 1) & 0x40;
      if ((v81 & 0x3B) == 0)
      {
        v91 = 0;
      }

      v92 = v78 << 7;
      if (v72 > 3)
      {
        v92 = 0;
      }

      v93 = v77 << 8;
      v94 = v76 << 8;
      if ((v81 & 0xA) == 0)
      {
        v94 = 0;
      }

      if ((v81 & 5) == 0)
      {
        v93 = 0;
      }

      v95 = v76 << 9;
      if ((v81 & 5) == 0)
      {
        v95 = 0;
      }

      v96 = v79 << 10;
      if (v72)
      {
        v96 = 0;
      }

      v97 = hdr_rgbo_unpack(unsigned char const*,vint4 &,vint4 &)::shamts[v72];
      v98 = (v92 & 0xFFFFFFC0 | v66 & 0x3F | v96 | v91 | v90 | (8 * v81) & (v80 << 7) | v93 | v94 | v95 | (16 * v69) & (v81 << 8) & 0x200 | (v81 << 9) & (v80 << 10)) << v97;
      v99 = v86 << v97;
      v100 = v89 << v97;
      v101 = !v74 || !v71;
      if (v74 && v71)
      {
        v102 = v100;
      }

      else
      {
        v102 = v98 - v100;
      }

      if (v101)
      {
        v103 = v98 - v99;
      }

      else
      {
        v103 = v99;
      }

      if (v75 == 1)
      {
        v104 = v98;
      }

      else
      {
        v104 = v103;
      }

      if (v75 == 1)
      {
        v105 = v103;
      }

      else
      {
        v105 = v98;
      }

      v106 = v75 == 2;
      if (v75 == 2)
      {
        v107 = v98;
      }

      else
      {
        v107 = v102;
      }

      if (!v106)
      {
        v103 = v104;
        v102 = v105;
      }

      if ((v81 & 0x3D) != 0)
      {
        v108 = 63;
      }

      else
      {
        v108 = 31;
      }

      v109 = v108 & v69;
      v110 = v80 << 6;
      if ((v81 & 0x2D) == 0)
      {
        v110 = 0;
      }

      v111 = (v69 & (32 * v81) & 0x80 | v110 | v109) << v97;
      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * ((v102 - v111) & ~((v102 - v111) >> 31));
      a8.n128_u32[1] = 16 * ((v103 - v111) & ~((v103 - v111) >> 31));
      a8.n128_u32[2] = 16 * ((v107 - v111) & ~((v107 - v111) >> 31));
      v43.n128_u32[3] = 30720;
      *a6 = a8;
      v43.n128_u32[0] = 16 * (v102 & ~(v102 >> 31));
      v44 = 16 * (v107 & ~(v107 >> 31));
      v43.n128_u32[1] = 16 * (v103 & ~(v103 >> 31));
LABEL_93:
      v43.n128_u32[2] = v44;
      *a7 = v43;
      goto LABEL_94;
    case 8:
      a8.n128_u32[3] = 0;
      a8.n128_u32[0] = *a3;
      a8.n128_u32[1] = a3[2];
      a8.n128_u32[2] = a3[4];
      v133.i32[0] = a3[1];
      v133.i32[1] = a3[3];
      v133.i64[1] = a3[5];
      if (a8.n128_u32[1] + a8.n128_u32[0] + a8.n128_u32[2] > v133.i32[1] + v133.i32[0] + v133.i32[2])
      {
        v134.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a8, 2), a8), 1uLL).u64[0];
        v134.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v133, 2), v133), 1uLL).u64[0];
        a8.n128_u64[1] = a3[5];
        v133 = v134;
      }

      *a6 = a8;
      *a7 = v133;
      goto LABEL_111;
    case 9:
      v29.i32[0] = *a3;
      v29.i32[1] = a3[2];
      v29.i64[1] = a3[4];
      v30.i32[0] = a3[1];
      v30.i32[1] = a3[3];
      v30.i64[1] = a3[5];
      v31 = vshrq_n_u32(v30, 1uLL);
      v32 = vsraq_n_u32((*&v30 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v29, 1uLL);
      v33 = vorrq_s8((*&vtstq_s32((*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v31 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v34 = vaddq_s32(v33, v32);
      if (v33.i32[0] + v33.i32[1] + v33.i32[2] < 0)
      {
        v35.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v32, 2), v32), 1uLL).u64[0];
        v35.i64[1] = v32.i64[1];
        v32.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v34, 2), v34), 1uLL).u64[0];
        v32.i64[1] = v34.i64[1];
        v34 = v35;
      }

      v36.i64[0] = 0xFF000000FFLL;
      v36.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v32, 0), v36);
      a8 = vminq_s32(vmaxq_s32(v34, 0), v36);
      *a7 = a8;
LABEL_111:
      *(a6 + 12) = 255;
      a7->n128_u32[3] = 255;
      goto LABEL_112;
    case 10:
      v129.i32[0] = *a3;
      v129.i32[1] = a3[1];
      v130 = a3[4];
      v129.i32[2] = a3[2];
      v129.i32[3] = v130;
      v131 = v129;
      v131.n128_u32[3] = a3[5];
      v132 = vmulq_s32(vdupq_n_s32(a3[3]), v129);
      *a7 = v131;
      a8 = vshrq_n_s32(v132, 8uLL);
      a8.n128_u32[3] = v130;
LABEL_107:
      *a6 = a8;
      goto LABEL_112;
    case 11:
      *a4 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
LABEL_94:
      if (a1 == 3)
      {
        *(a6 + 12) = 30720;
        a7->n128_u32[3] = 30720;
        v112 = 1;
        *a5 = 1;
LABEL_116:
        a8.n128_u32[0] = *a4;
        a8.n128_u32[1] = v112;
        a8.n128_u64[0] = vneg_s32(a8.n128_u64[0]);
        v136 = vzip1q_s32(a8, a8);
        v136.i32[2] = a8.n128_u32[0];
        v137.i64[0] = 0x100000001;
        v137.i64[1] = 0x100000001;
        v135 = vbslq_s8(v136, v137, vdupq_n_s32(0x101u));
        goto LABEL_118;
      }

      *(a6 + 12) = 255;
      a7->n128_u32[3] = 255;
      *a5 = 0;
LABEL_112:
      if (a1 >= 2)
      {
        v112 = *a5;
        goto LABEL_116;
      }

      if (*a4 == 1)
      {
        *a6 = xmmword_18622EF30;
        *a7 = xmmword_18622EF30;
        *a4 = 0;
        *a5 = 0;
        v135.i64[0] = 0x100000001;
        v135.i64[1] = 0x100000001;
      }

      else
      {
        v135 = vdupq_n_s32(0x101u);
      }

LABEL_118:
      *a6 = vmulq_s32(*a6, v135);
      result = vmulq_s32(*a7, v135);
      *a7 = result;
      return result;
    case 12:
      a10.i32[0] = *a3;
      a10.i32[1] = a3[2];
      a10.i32[2] = a3[4];
      a8 = a10;
      a8.n128_u32[3] = a3[6];
      a11.i32[0] = a3[1];
      a11.i32[1] = a3[3];
      a11.i32[2] = a3[5];
      v27 = a11;
      v27.i32[3] = a3[7];
      if (a10.i32[1] + a10.i32[0] + a10.i32[2] > (a11.i32[1] + a11.i32[0] + a11.i32[2]))
      {
        v28.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a10, 2), a8), 1uLL).u64[0];
        v28.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a11, 2), v27), 1uLL).u64[0];
        a8.n128_u64[1] = v27.u64[1];
        v27 = v28;
      }

      *a6 = a8;
      *a7 = v27;
      goto LABEL_112;
    case 13:
      v118.i32[0] = *a3;
      v118.i32[1] = a3[2];
      v118.i32[2] = a3[4];
      v118.i32[3] = a3[6];
      v119.i32[0] = a3[1];
      v119.i32[1] = a3[3];
      v119.i32[2] = a3[5];
      v119.i32[3] = a3[7];
      v120 = vshrq_n_u32(v119, 1uLL);
      v121 = vsraq_n_u32((*&v119 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v118, 1uLL);
      v122 = vorrq_s8((*&vtstq_s32((*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v120 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v123 = vaddq_s32(v122, v121);
      if (v122.i32[0] + v122.i32[1] + v122.i32[2] < 0)
      {
        v124.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v121, 2), v121), 1uLL).u64[0];
        v124.i64[1] = v121.i64[1];
        v121.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v123, 2), v123), 1uLL).u64[0];
        v121.i64[1] = v123.i64[1];
        v123 = v124;
      }

      v125.i64[0] = 0xFF000000FFLL;
      v125.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v121, 0), v125);
      a8 = vminq_s32(vmaxq_s32(v123, 0), v125);
LABEL_104:
      *a7 = a8;
      goto LABEL_112;
    case 14:
      *a4 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
      v19 = a3[6];
      v20 = a3[7];
      goto LABEL_28;
    case 15:
      *a4 = 1;
      *a5 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
      v45 = a3[6];
      v46 = a3[7];
      v47 = (v46 >> 6) & 2 | (v45 >> 7);
      v48 = v45 & 0x7F;
      v49 = v46 & 0x7F;
      v50 = (v49 << (v47 + 1)) & 0x780 | v48;
      v51 = v50 << (4 - v47);
      v52 = ((0x3Fu >> v47) & v46 ^ (0x20u >> v47)) - (0x20u >> v47) + v50;
      v53 = v52 << (4 - v47);
      if (v53 >= 4095)
      {
        v53 = 4095;
      }

      if (v52 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = 32 * v48;
      v56 = 32 * v49;
      if (v47 == 3)
      {
        v54 = v56;
      }

      else
      {
        v55 = v51;
      }

      v19 = 16 * v55;
      v20 = 16 * v54;
LABEL_28:
      *(a6 + 12) = v19;
      a7->n128_u32[3] = v20;
      goto LABEL_112;
    default:
      goto LABEL_112;
  }
}

__n128 hdr_rgb_unpack(unsigned __int8 *a1, _OWORD *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v8 >> 6) & 2 | (v7 >> 7);
  if (v9 == 3)
  {
    HIDWORD(v10) = 30720;
    LODWORD(v10) = v3 << 8;
    DWORD1(v10) = v5 << 8;
    DWORD2(v10) = (v7 & 0x7F) << 9;
    v11 = v4 << 8;
    *a2 = v10;
    v12 = v6 << 8;
    v13 = (v8 & 0x7F) << 9;
  }

  else
  {
    v14 = (v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4;
    v15 = v7 & 0x7F;
    v16 = v8 & 0x7F;
    v17 = (v6 >> 6) & 1;
    v18 = (v7 >> 6) & 1;
    v19 = (v8 >> 6) & 1;
    v20 = (v7 >> 5) & 1;
    v21 = (v8 >> 5) & 1;
    v22 = 1 << ((v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4);
    v23 = (8 * v5) & 0x200;
    if ((v22 & 0xA4) == 0)
    {
      v23 = 0;
    }

    v24 = v20 << 9;
    if ((v22 & 0x50) == 0)
    {
      v24 = 0;
    }

    v25 = v21 << 10;
    if ((v22 & 0x50) == 0)
    {
      v25 = 0;
    }

    v26 = v17 << 10;
    if ((v22 & 0xA0) == 0)
    {
      v26 = 0;
    }

    v27 = v18 << 11;
    if (v14 < 6)
    {
      v27 = 0;
    }

    v28 = v27 & 0xFFFFFEFF | (((v4 >> 6) & 1) << 8) | v23 | (v22 << 6) & (v18 << 9) | v24 | v25 | v26 | v3;
    v29 = (16 * v22) & (v17 << 6) & 0xFFFFFFC0 | v4 & 0x3F;
    v30 = v19 << 6;
    if ((v22 & 0xE8) != 0)
    {
      v31 = v19 << 6;
    }

    else
    {
      v31 = 0;
    }

    v32 = v29 | v31 | (4 * v22) & (v18 << 7);
    if ((v22 & 0x5B) != 0)
    {
      v33 = 127;
    }

    else
    {
      v33 = 63;
    }

    v34 = v33 & v6;
    v35 = v33 & v5;
    v36 = v19 << 7;
    if ((v22 & 0x12) == 0)
    {
      v36 = 0;
    }

    v37 = v34 | v36;
    if ((v22 & 0x12) != 0)
    {
      v38 = v18 << 7;
    }

    else
    {
      v38 = 0;
    }

    v39 = v35 | v38;
    v40 = 32 * v20;
    v41 = 32 * v21;
    if ((v22 & 0xAF) == 0)
    {
      v41 = 0;
    }

    v42 = v41 | v16;
    if ((v22 & 0xAF) == 0)
    {
      v40 = 0;
    }

    v43 = v40 | v15;
    v44 = v18 << 6;
    if ((v22 & 5) == 0)
    {
      v30 = 0;
    }

    v45 = v42 | v30;
    if ((v22 & 5) != 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = -hdr_rgb_unpack(unsigned char const*,vint4 &,vint4 &)::dbits_tab[v14];
    v48 = (v43 | v46) << v47 >> v47;
    v49 = v45 << v47 >> v47;
    v50 = (v14 >> 1) ^ 3;
    v51 = v28 << v50;
    v52 = v28 - v39;
    v53 = v52 << v50;
    v54 = v28 - v37;
    v55 = v54 << v50;
    v56 = (v52 - (v32 + v48)) << v50;
    v57 = (v54 - (v32 + v49)) << v50;
    v58 = ((v28 - v32) << v50) & ~(((v28 - v32) << v50) >> 31);
    if (v58 >= 4095)
    {
      v58 = 4095;
    }

    v59 = v56 & ~(v56 >> 31);
    if (v59 >= 4095)
    {
      v59 = 4095;
    }

    v60 = v57 & ~(v57 >> 31);
    if (v60 >= 4095)
    {
      v60 = 4095;
    }

    if (v51 >= 0xFFF)
    {
      v51 = 4095;
    }

    v61 = v53 & ~(v53 >> 31);
    if (v61 >= 4095)
    {
      v61 = 4095;
    }

    if ((v55 & ~(v55 >> 31)) >= 4095)
    {
      v62 = 4095;
    }

    else
    {
      v62 = v55 & ~(v55 >> 31);
    }

    if (v9 == 1)
    {
      v63 = v61;
    }

    else
    {
      v63 = v51;
    }

    if (v9 == 1)
    {
      v64 = v51;
    }

    else
    {
      v64 = v61;
    }

    if (v9 == 1)
    {
      v65 = v59;
    }

    else
    {
      v65 = v58;
    }

    if (v9 == 1)
    {
      v66 = v58;
    }

    else
    {
      v66 = v59;
    }

    v67 = v9 == 2;
    if (v9 == 2)
    {
      v68 = v62;
    }

    else
    {
      v68 = v63;
    }

    if (v67)
    {
      v62 = v51;
    }

    else
    {
      v61 = v64;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v65;
    }

    if (v67)
    {
      v60 = v58;
    }

    else
    {
      v59 = v66;
    }

    HIDWORD(v70) = 30720;
    LODWORD(v70) = 16 * v69;
    DWORD1(v70) = 16 * v59;
    v11 = 16 * v68;
    DWORD2(v70) = 16 * v60;
    *a2 = v70;
    v12 = 16 * v61;
    v13 = 16 * v62;
  }

  result.n128_u64[0] = __PAIR64__(v12, v11);
  result.n128_u64[1] = v13 | 0x780000000000;
  *a3 = result;
  return result;
}

uint64_t pack_color_endpoints(int a1, _BYTE *a2, unsigned int a3, float32x4_t a4, float32x4_t a5, int8x16_t a6, float32x4_t a7, double a8, double a9, double a10)
{
  v234 = *MEMORY[0x1E69E9840];
  if (a3 - 21 <= 0xFFFFFFEE)
  {
    pack_color_endpoints();
  }

  v13 = 0;
  v14 = vdupq_n_s32(0x477FFF00u);
  v15 = vdupq_n_s32(0x3B7F00FFu);
  v16 = vminnmq_f32(vmaxnmq_f32(a4, 0), v14);
  v229 = 0uLL;
  v17 = vminnmq_f32(vmaxnmq_f32(a5, 0), v14);
  v18 = vmulq_f32(v16, v15);
  v228 = 0uLL;
  v19 = vmulq_f32(v17, v15);
  v227 = 0uLL;
  v226 = 0uLL;
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if ((a1 - 2) >= 2)
      {
        if (!a1)
        {
          v13 = 0;
          v46 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.f32, *v19.f32), vzip2_s32(*v18.f32, *v19.f32))), vdup_n_s32(0x3EAAAAABu));
          v47 = v46.f32[1];
          v48 = vaddv_f32(v46) * 0.5;
          if (v46.f32[0] > v46.f32[1])
          {
            v47 = v48;
            v46.f32[0] = v48;
          }

          v49 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
          *a2 = v49[((v46.f32[0] - (v46.f32[0] + 0.5)) >= -0.1) | (2 * (v46.f32[0] + 0.5))];
          a2[1] = v49[((v47 - (v47 + 0.5)) >= -0.1) | (2 * (v47 + 0.5))];
        }
      }

      else
      {
        v20 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.f32, *v17.f32), vzip2_s32(*v16.f32, *v17.f32)));
        v21 = vdup_n_s32(0x3EAAAAABu);
        v22 = vmul_f32(v20, v21);
        v21.f32[0] = vaddv_f32(v22) * 0.5;
        v23 = vcvt_s32_f32(vadd_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v22.f32[1] < v22.f32[0]), 0x1FuLL)), vdup_lane_s32(v21, 0), v22), 0x3F0000003F000000));
        if (v23.i32[1] - v23.i32[0] < 2049)
        {
          if ((((v23.i32[0] + 16) >> 5) & ~((v23.i32[0] + 16) >> 31)) >= 2047)
          {
            v50 = 2047;
          }

          else
          {
            v50 = ((v23.i32[0] + 16) >> 5) & ~((v23.i32[0] + 16) >> 31);
          }

          v24 = a3 - 4;
          v51 = &color_unquant_to_uquant_tables + 512 * v24;
          v52 = v51[(2 * (v50 & 0x7F)) | 1];
          if ((v52 & 0x80000000) == 0 && ((((v23.i32[1] + 16) >> 5) & ~((v23.i32[1] + 16) >> 31)) >= 2047 ? (v53 = 2047) : (v53 = ((v23.i32[1] + 16) >> 5) & ~((v23.i32[1] + 16) >> 31)), (v54 = v53 - (v50 & 0x780 | v52), v54 <= 0xF) && (v55 = (v50 >> 3) & 0xF0, v56 = v51[(2 * (v54 | v55)) | 1], v55 == (v56 & 0xF0))) || ((((v23.i32[0] + 32) >> 6) & ~((v23.i32[0] + 32) >> 31)) >= 1023 ? (v57 = 1023) : (v57 = ((v23.i32[0] + 32) >> 6) & ~((v23.i32[0] + 32) >> 31)), (v52 = v51[(2 * (v57 & 0x7F)) | 0x101], v52 < 0) && ((((v23.i32[1] + 32) >> 6) & ~((v23.i32[1] + 32) >> 31)) >= 1023 ? (v58 = 1023) : (v58 = ((v23.i32[1] + 32) >> 6) & ~((v23.i32[1] + 32) >> 31)), (v59 = v58 - (v57 & 0x380 | v52 & 0x7F), v59 <= 0x1F) && (v60 = (v57 >> 2) & 0xE0, v56 = v51[(2 * (v59 | v60)) | 1], v60 == (v56 & 0xE0)))))
          {
            *a2 = v52;
            a2[1] = v56;
            return 3;
          }
        }

        else
        {
          v24 = a3 - 4;
        }

        v61 = vmin_s32(vmax_s32(vshr_n_s32(vadd_s32(v23, 0x8000000080), 8uLL), 0), 0xFF000000FFLL);
        v62 = vsub_s32(vshl_n_s32(v61, 8uLL), v23);
        v63 = vmul_s32(v62, v62);
        v64.i32[0] = v23.i32[0];
        v64.i32[1] = v23.i32[1] + 256;
        v65 = vmin_s32(vmax_s32(vshr_n_s32(v64, 8uLL), 0), 0xFF000000FFLL);
        v66 = vadd_s32(vsub_s32(vshl_n_s32(v65, 8uLL), v23), 0xFFFFFF8000000080);
        v67 = vmul_s32(v66, v66);
        v68 = vext_s8(v63, v67, 4uLL);
        v63.i32[1] = v67.i32[1];
        v69 = vadd_s32(v63, v68);
        v70 = vcgt_u32(vdup_lane_s32(v69, 1), v69).u8[0];
        if (v70)
        {
          v71 = v61.i32[0];
        }

        else
        {
          v71 = v65.i32[1];
        }

        v72 = v65.i32[0];
        if (v70)
        {
          v72 = v61.i32[1];
        }

        v73 = &color_unquant_to_uquant_tables + 512 * v24;
        *a2 = v73[(2 * v71) | 1];
        a2[1] = v73[(2 * v72) | 1];
        return 2;
      }

      return v13;
    }

    if (a1 == 4)
    {
      v77 = (v18.f32[2] + vaddv_f32(*v18.f32)) * 0.33333;
      v78 = (v19.f32[2] + vaddv_f32(*v19.f32)) * 0.33333;
      v79 = (v77 + 0.5);
      if (a3 >= 0x13)
      {
        v81 = 2 * v79;
        v83 = a3 - 4;
        v86 = (v78 + 0.5);
        v80 = (v18.f32[3] + 0.5);
        v89 = 2 * v86;
        v82 = 2 * v80;
        v87 = (v19.f32[3] + 0.5);
        v90 = 2 * v87;
      }

      else
      {
        v80 = (v18.f32[3] + 0.5);
        v81 = 2 * v79;
        v82 = 2 * v80;
        v83 = a3 - 4;
        v84 = &color_unquant_to_uquant_tables + 512 * v83;
        v85 = v84[(4 * ((v77 + 0.5) & 0x7F)) | 1];
        v86 = (v78 + 0.5);
        v87 = (v19.f32[3] + 0.5);
        v88 = v85 | (((v79 >> 7) & 1) << 8);
        v89 = 2 * v86;
        v90 = 2 * v87;
        v91 = 2 * v86 - v88;
        if ((v91 - 64) >= 0xFFFFFF80)
        {
          v92 = v84[(4 * ((v18.f32[3] + 0.5) & 0x7F)) | 1];
          v93 = v92 & 0xFFFFFEFF | (((v80 >> 7) & 1) << 8);
          if (v90 - v93 - 64 >= 0xFFFFFF80)
          {
            v94 = v91 & 0x7F | ((v81 & 0x100) >> 1);
            v95 = v84[(2 * v94) | 1];
            if ((v94 ^ v95) <= 0x3F)
            {
              v96 = (v90 - v92) & 0x7F | ((v82 & 0x100) >> 1);
              v97 = v84[(2 * v96) | 1];
              if ((v96 ^ v97) <= 0x3F && (v95 & 0x7F) + v88 + (((v95 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF && (v97 & 0x7F) + v93 + (((v97 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF)
              {
                *a2 = v85;
                a2[1] = v95;
                a2[2] = v92;
                v13 = 5;
                a2[3] = v97;
                return v13;
              }
            }
          }
        }
      }

      if ((v77 - v79) >= -0.1)
      {
        ++v81;
      }

      v116 = &color_unquant_to_uquant_tables + 512 * v83;
      *a2 = v116[v81];
      if ((v78 - v86) < -0.1)
      {
        v117 = v89;
      }

      else
      {
        v117 = v89 + 1;
      }

      a2[1] = v116[v117];
      if ((v18.f32[3] - v80) < -0.1)
      {
        v118 = v82;
      }

      else
      {
        v118 = v82 + 1;
      }

      a2[2] = v116[v118];
      if ((v19.f32[3] - v87) < -0.1)
      {
        v119 = v90;
      }

      else
      {
        v119 = v90 + 1;
      }

      a2[3] = v116[v119];
      return 4;
    }

    if (a1 == 6)
    {
      quantize_rgbs(a2, a3, a6);
      return 6;
    }

    if (a1 != 7)
    {
      return v13;
    }

    v25.i64[0] = vaddq_f32(a7, vdupq_laneq_s32(a7, 3)).u64[0];
    v25.f32[2] = a7.f32[2] + a7.f32[3];
    v25.i32[3] = a7.i32[3];
    v26 = vminnmq_f32(vmaxnmq_f32(v25, 0), vdupq_n_s32(0x477FFF00u));
    if (*v26.i32 <= *&v26.i32[1] || *v26.i32 <= *&v26.i32[2])
    {
      if (*&v26.i32[1] <= *&v26.i32[2])
      {
        v139 = vrev64q_s32(v26);
        v115 = vextq_s8(v139, v139, 0xCuLL);
        v114 = 2;
      }

      else
      {
        v115.i64[0] = vrev64q_s32(v26).u64[0];
        v115.i64[1] = v26.i64[1];
        v114 = 1;
      }
    }

    else
    {
      v114 = 0;
      v115 = v26;
    }

    v140 = 0;
    v141 = 4 * v114;
    v142 = v114 | 0xC;
    v143 = vextq_s8(v115, v115, 4uLL).u64[0];
    v144 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
    v145 = vdup_n_s32(0x477FFF00u);
    while (1)
    {
      v146 = (&quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_cutoffs + 8 * v140);
      v147 = (*v115.i32 - *&v115.i32[1]) <= *v146 && (*v115.i32 - *&v115.i32[2]) <= *v146;
      if (!v147 || *&v115.i32[3] > v146[1])
      {
        goto LABEL_166;
      }

      v148 = quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_scales[v140];
      v149 = v140 == 4 ? v142 : v141 | v140;
      v150 = quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_rscales[v140];
      v151 = &quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_bits + 12 * v140;
      v153 = *(v151 + 1);
      v152 = *(v151 + 2);
      v154 = ((*v115.i32 * v148) + 0.5);
      v155 = v154 & 0x3F | (v149 << 6);
      do
      {
        v156 = v144[(2 * v155) | 1];
        v157 = v155 & 0xC0;
        v155 -= v157 != (v156 & 0xC0);
      }

      while (v157 != (v156 & 0xC0));
      *v10.i32 = v150 * (v154 & 0xFFFFFFC0 | v156 & 0x3F);
      v158 = vdup_lane_s32(v10, 0);
      v159 = vsub_f32(v158, v143);
      v160 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v159, v145), v145, vmaxnm_f32(v159, 0)), v148), 0x3F0000003F000000));
      if (1 << v153 <= v160.i32[0] || 1 << v153 <= v160.i32[1])
      {
        goto LABEL_166;
      }

      if (v140 > 5)
      {
        v162 = 0;
      }

      else if (((1 << v140) & 5) != 0)
      {
        v162 = (v154 >> 9) & 1;
      }

      else if (((1 << v140) & 0xA) != 0)
      {
        v162 = (v154 >> 8) & 1;
      }

      else
      {
        v162 = (v160.i32[0] >> 6) & 1;
      }

      if (v140 >= 4)
      {
        if ((v140 - 4) >= 2)
        {
          v163 = 0;
        }

        else
        {
          v163 = (v160.i32[1] >> 6) & 1;
        }
      }

      else
      {
        v163 = (v154 >> 7) & 1;
      }

      if (v140 > 5)
      {
        v164 = 0;
      }

      else if (((1 << v140) & 0x3A) != 0)
      {
        v164 = (v160.i32[0] >> 5) & 1;
      }

      else
      {
        v164 = (v154 >> 8) & 1;
      }

      v165 = 0;
      if (v140 > 2)
      {
        if ((v140 - 3) < 3)
        {
          goto LABEL_157;
        }
      }

      else
      {
        switch(v140)
        {
          case 0:
            v165 = (v154 >> 10) & 1;
            break;
          case 1:
LABEL_157:
            v165 = (v160.i32[1] >> 5) & 1;
            break;
          case 2:
            v165 = (v154 >> 6) & 1;
            break;
        }
      }

      v166 = 1 << v152;
      v167 = 16 * v149;
      v168 = v160.i8[0] & 0x1F | (((v149 >> 2) & 1) << 7) | (v162 << 6) | (32 * v164);
      v169 = v163 << 6;
      do
      {
        v170 = v144[(2 * v168) | 1];
        v171 = v168 & 0xF0;
        v168 -= v171 != (v170 & 0xF0);
      }

      while (v171 != (v170 & 0xF0));
      v172 = v169 | v167 & 0x80 | v160.i8[4] & 0x1F | (32 * v165);
      do
      {
        v173 = v144[(2 * v172) | 1];
        v174 = v172 & 0xF0;
        v172 -= v174 != (v173 & 0xF0);
      }

      while (v174 != (v173 & 0xF0));
      v175.i32[0] = v170 & 0x1F;
      v175.i32[1] = v173 & 0xFFFFFF1F;
      v176 = vsub_f32(vsub_f32(v158, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v160 & 0xFFFFFFE0FFFFFFE0), v175)), v150)), v143);
      v176.f32[0] = *&v115.i32[3] + ((((*v10.i32 - *v115.i32) + v176.f32[0]) + v176.f32[1]) * 0.33333);
      v177 = fmaxf(v176.f32[0], 0.0);
      if (v176.f32[0] <= 1000000000.0)
      {
        v178 = v177;
      }

      else
      {
        v178 = *"(knN";
      }

      v179 = ((v148 * v178) + 0.5);
      if (v166 > v179)
      {
        v209 = v154 >> 9;
        if (v140 != 1)
        {
          LOBYTE(v209) = v179 >> 5;
        }

        v210 = v154 >> 10;
        v211 = v179 >> 6;
        if (v140 == 4)
        {
          LOBYTE(v211) = v154 >> 7;
        }

        if (v140 != 1)
        {
          LOBYTE(v210) = v211;
        }

        if (v140 == 2)
        {
          v212 = v179 >> 7;
        }

        else
        {
          v212 = v154 >> 6;
        }

        v213 = ((v148 * v178) + 0.5) & 0x1F | (v212 << 7) | (32 * (v209 & 1)) & 0xBF | ((v210 & 1) << 6);
        do
        {
          v214 = v144[(2 * v213) | 1];
          v215 = v213 & 0xF0;
          v213 -= v215 != (v214 & 0xF0);
        }

        while (v215 != (v214 & 0xF0));
        *a2 = v156;
        a2[1] = v170;
        a2[2] = v173;
        v13 = 7;
        a2[3] = v214;
        return v13;
      }

LABEL_166:
      if (++v140 == 5)
      {
        v180 = 0;
        v233 = v26;
        v232.i32[2] = 0;
        v232.i64[0] = 0;
        memset(v231, 0, 12);
        do
        {
          v181 = *&v233.i32[v180];
          v182 = fmaxf(v181, 0.0);
          if (v181 <= 65020.0)
          {
            v183 = v182;
          }

          else
          {
            v183 = *"";
          }

          *&v233.i32[v180] = v183;
          v184 = (v183 * 0.0019531) + 0.5;
          v232.i32[v180] = v184;
          v231[0].f32[v180++] = v184 * 512.0;
        }

        while (v180 != 3);
        v185 = 0;
        v186 = vsub_f32(*(v231 + 4), *(v233.i64 + 4));
        v187 = *&v233.i32[3] + ((((v231[0].f32[0] - *v233.i32) + v186.f32[0]) + v186.f32[1]) * 0.33333);
        v188 = (fmaxf(v187, 0.0) * 0.0019531) + 0.5;
        v189 = 127.49;
        if (v187 <= 65020.0)
        {
          v189 = v188;
        }

        v190.i64[0] = v232.i64[0];
        v190.i32[2] = v232.i32[2];
        v190.i32[3] = v189;
        v191.i64[0] = 0x80000000C0;
        v191.i32[2] = 128;
        v191.i32[3] = (2 * v232.i32[0]) & 0x80;
        v230 = vorrq_s8(vandq_s8(v190, xmmword_18622EFB0), v191);
        do
        {
          v192 = v230.i32[v185];
          do
          {
            v193 = v144[(2 * v192) | 1];
            v194 = v192 & 0xF0;
            v192 -= v194 != (v193 & 0xF0);
          }

          while (v194 != (v193 & 0xF0));
          a2[v185++] = v193;
        }

        while (v185 != 4);
        return 7;
      }
    }
  }

  if (a1 <= 11)
  {
    if (a1 != 8)
    {
      if (a1 == 10)
      {
        v103 = vzip2_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v18, v18, 8uLL));
        v104 = vcvt_s32_f32(vadd_f32(v103, 0x3F0000003F000000));
        v105 = vcge_f32(vsub_f32(v103, vcvt_f32_s32(v104)), vdup_n_s32(0xBDCCCCCD));
        v106 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
        a2[4] = v106[2 * v104.i32[1] - v105.i32[1]];
        a2[5] = v106[2 * v104.i32[0] - v105.i32[0]];
        quantize_rgbs(a2, a3, a6);
        return 10;
      }

      else if (a1 == 11)
      {
        quantize_hdr_rgb(a2, a3, v16, v17, *a6.i64, *a7.i64, *v19.i64, *v18.i64, a10);
        return 11;
      }

      return v13;
    }

    v220 = v19;
    v223 = v18;
    if (a3 > 0x12)
    {
      v13 = 0;
      v218 = 1.0e30;
      if (a3 != 19)
      {
LABEL_189:
        quantize_rgb(&v227, &v226, a3, v18, v19);
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_unpack(&v233, &v232, v227, v226);
        v203 = vsubq_f32(v223, vcvtq_f32_s32(v233));
        v204 = vsubq_f32(v220, vcvtq_f32_s32(v232));
        v205 = vaddq_f32(vmulq_f32(v203, v203), vmulq_f32(v204, v204));
        *v205.i8 = vadd_f32(*&vextq_s8(v205, v205, 8uLL), *v205.i8);
        if (vpadd_f32(*v205.i8, *v205.i8).f32[0] < v218)
        {
          v228 = v226;
          v229 = v227;
          v13 = 8;
        }

        v207 = v228;
        v206 = v229;
        *a2 = v229.i8[0];
        a2[1] = v207.i8[0];
        a2[2] = v206.i8[4];
        a2[3] = v207.i8[4];
        a2[4] = v206.i8[8];
        a2[5] = v207.i8[8];
        return v13;
      }
    }

    else
    {
      if (try_quantize_rgb_delta_blue_contract(&v229, &v228, a3, v18, v19))
      {
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_delta_unpack(&v233, &v232, v229, v228);
        v74 = vsubq_f32(v223, vcvtq_f32_s32(v233));
        v75 = vsubq_f32(v220, vcvtq_f32_s32(v232));
        v76 = vaddq_f32(vmulq_f32(v74, v74), vmulq_f32(v75, v75));
        *v76.i8 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.i8);
        LODWORD(v218) = vpadd_f32(*v76.i8, *v76.i8).u32[0];
        v13 = 9;
      }

      else
      {
        v13 = 0;
        v218 = 1.0e30;
      }

      if (try_quantize_rgb_delta(&v227, &v226, a3, v223, v220))
      {
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_delta_unpack(&v233, &v232, v227, v226);
        v19 = v220;
        v18 = v223;
        v195 = vsubq_f32(v223, vcvtq_f32_s32(v233));
        v196 = vsubq_f32(v220, vcvtq_f32_s32(v232));
        v197 = vaddq_f32(vmulq_f32(v195, v195), vmulq_f32(v196, v196));
        *v197.i8 = vadd_f32(*&vextq_s8(v197, v197, 8uLL), *v197.i8);
        v198 = vpadd_f32(*v197.i8, *v197.i8).f32[0];
        if (v198 < v218)
        {
          v228 = v226;
          v229 = v227;
          v13 = 9;
          v218 = v198;
        }
      }

      else
      {
        v19 = v220;
        v18 = v223;
      }
    }

    if (try_quantize_rgb_blue_contract(&v227, &v226, a3, v18, v19))
    {
      v233 = 0uLL;
      v232 = 0uLL;
      rgba_unpack(&v233, &v232, v227, v226);
      v19 = v220;
      v18 = v223;
      v199 = vsubq_f32(v223, vcvtq_f32_s32(v233));
      v200 = vsubq_f32(v220, vcvtq_f32_s32(v232));
      v201 = vaddq_f32(vmulq_f32(v199, v199), vmulq_f32(v200, v200));
      *v201.i8 = vadd_f32(*&vextq_s8(v201, v201, 8uLL), *v201.i8);
      v202 = vpadd_f32(*v201.i8, *v201.i8).f32[0];
      if (v202 < v218)
      {
        v228 = v226;
        v229 = v227;
        v13 = 8;
        v218 = v202;
      }
    }

    else
    {
      v19 = v220;
      v18 = v223;
    }

    goto LABEL_189;
  }

  switch(a1)
  {
    case 12:
      v216 = vextq_s8(v18, v18, 8uLL).u64[0];
      v217 = vextq_s8(v19, v19, 8uLL).u64[0];
      v221 = v19;
      v224 = v18;
      if (a3 > 0x12)
      {
        v13 = 0;
        v219 = 1.0e30;
        if (a3 != 19)
        {
LABEL_114:
          quantize_rgb(&v227, &v226, a3, v18, v19);
          v132 = vzip2_s32(v217, v216);
          v133 = vcvt_s32_f32(vadd_f32(v132, 0x3F0000003F000000));
          v134 = vcge_f32(vsub_f32(v132, vcvt_f32_s32(v133)), vdup_n_s32(0xBDCCCCCD));
          v135 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
          v227.i32[3] = v135[2 * v133.i32[1] - v134.i32[1]];
          v226.i32[3] = v135[2 * v133.i32[0] - v134.i32[0]];
          v233 = 0uLL;
          v232 = 0uLL;
          rgba_unpack(&v233, &v232, v227, v226);
          v136 = vsubq_f32(v224, vcvtq_f32_s32(v233));
          v137 = vsubq_f32(v221, vcvtq_f32_s32(v232));
          v138 = vaddq_f32(vmulq_f32(v136, v136), vmulq_f32(v137, v137));
          *v138.i8 = vadd_f32(*&vextq_s8(v138, v138, 8uLL), *v138.i8);
          if (vpadd_f32(*v138.i8, *v138.i8).f32[0] < v219)
          {
            v228 = v226;
            v229 = v227;
            v13 = 12;
          }

          v235.val[1] = v228;
          v235.val[0] = v229;
          *a2 = vqtbl2q_s8(v235, xmmword_18622EFC0).u64[0];
          return v13;
        }
      }

      else
      {
        v219 = 1.0e30;
        if (try_quantize_rgb_delta_blue_contract(&v229, &v228, a3, v18, v19) && try_quantize_alpha_delta(&v229, &v228, a3, v221, v224))
        {
          v233 = 0uLL;
          v232 = 0uLL;
          rgba_delta_unpack(&v233, &v232, v229, v228);
          v98 = vsubq_f32(v224, vcvtq_f32_s32(v233));
          v99 = vsubq_f32(v221, vcvtq_f32_s32(v232));
          v100 = vaddq_f32(vmulq_f32(v98, v98), vmulq_f32(v99, v99));
          *v100.i8 = vadd_f32(*&vextq_s8(v100, v100, 8uLL), *v100.i8);
          LODWORD(v219) = vpadd_f32(*v100.i8, *v100.i8).u32[0];
          v13 = 13;
          v101 = v221;
          v102 = v224;
        }

        else
        {
          v13 = 0;
          v101 = v221;
          v102 = v224;
        }

        if (try_quantize_rgb_delta(&v227, &v226, a3, v102, v101) && try_quantize_alpha_delta(&v227, &v226, a3, v224, v221))
        {
          v233 = 0uLL;
          v232 = 0uLL;
          rgba_delta_unpack(&v233, &v232, v227, v226);
          v19 = v221;
          v18 = v224;
          v120 = vsubq_f32(v224, vcvtq_f32_s32(v233));
          v121 = vsubq_f32(v221, vcvtq_f32_s32(v232));
          v122 = vaddq_f32(vmulq_f32(v120, v120), vmulq_f32(v121, v121));
          *v122.i8 = vadd_f32(*&vextq_s8(v122, v122, 8uLL), *v122.i8);
          v123 = vpadd_f32(*v122.i8, *v122.i8).f32[0];
          if (v123 < v219)
          {
            v228 = v226;
            v229 = v227;
            v13 = 13;
            v219 = v123;
          }
        }

        else
        {
          v19 = v221;
          v18 = v224;
        }
      }

      if (try_quantize_rgb_blue_contract(&v227, &v226, a3, v18, v19))
      {
        v124 = vzip2_s32(v216, v217);
        v125 = vcvt_s32_f32(vadd_f32(v124, 0x3F0000003F000000));
        v126 = vcge_f32(vsub_f32(v124, vcvt_f32_s32(v125)), vdup_n_s32(0xBDCCCCCD));
        v127 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
        v227.i32[3] = v127[2 * v125.i32[1] - v126.i32[1]];
        v226.i32[3] = v127[2 * v125.i32[0] - v126.i32[0]];
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_unpack(&v233, &v232, v227, v226);
        v19 = v221;
        v18 = v224;
        v128 = vsubq_f32(v224, vcvtq_f32_s32(v233));
        v129 = vsubq_f32(v221, vcvtq_f32_s32(v232));
        v130 = vaddq_f32(vmulq_f32(v128, v128), vmulq_f32(v129, v129));
        *v130.i8 = vadd_f32(*&vextq_s8(v130, v130, 8uLL), *v130.i8);
        v131 = vpadd_f32(*v130.i8, *v130.i8).f32[0];
        if (v131 < v219)
        {
          v228 = v226;
          v229 = v227;
          v13 = 12;
          v219 = v131;
        }
      }

      else
      {
        v19 = v221;
        v18 = v224;
      }

      goto LABEL_114;
    case 14:
      v107 = vmul_f32(vzip2_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vdup_n_s32(0x3B7F00FFu));
      v108 = vdup_n_s32(0x437F0000u);
      v109 = vbsl_s8(vcgt_f32(v107, v108), v108, vmaxnm_f32(v107, 0));
      v110 = vcvt_s32_f32(vadd_f32(v109, 0x3F0000003F000000));
      v111 = vsub_f32(v109, vcvt_f32_s32(v110));
      v112 = COERCE_DOUBLE(vcge_f32(v111, vdup_n_s32(0xBDCCCCCD)));
      v113 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
      a2[6] = v113[2 * v110.i32[1] - HIDWORD(v112)];
      a2[7] = v113[2 * v110.i32[0] - LODWORD(v112)];
      quantize_hdr_rgb(a2, a3, v16, v17, v112, *&v110, *&v111, *&v107, a10);
      return 14;
    case 15:
      v222 = v16.f32[3];
      v225 = v17.f32[3];
      quantize_hdr_rgb(a2, a3, v16, v17, *a6.i64, *a7.i64, *v19.i64, *v18.i64, a10);
      v28 = fmaxf(v222, 0.0) + 0.5;
      v29 = 65280.0;
      if (v222 > 65280.0)
      {
        v28 = 65280.0;
      }

      v30 = v28;
      v31 = fmaxf(v225, 0.0) + 0.5;
      if (v225 <= 65280.0)
      {
        v29 = v31;
      }

      v32 = v29;
      v33 = -3;
      v34 = 256;
      v35 = 2;
      v36 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
      v37 = 0x80;
      while (1)
      {
        v38 = ((0x80u >> v35) + v30) >> (v33 + 9);
        v39 = v36[(2 * (v34 & 0x80 | v38 & 0x7F)) | 1];
        if (((v34 ^ v39) & 0x80) == 0)
        {
          v40 = (((0x80u >> v35) + v32) >> (v33 + 9)) - (v38 & 0xFFFFFF80 | v39 & 0x7F);
          v41 = 0x20u >> v35;
          if (v40 + v41 < 0 == __OFADD__(v40, v41) && v40 < v41)
          {
            v43 = (v38 >> 7 << (v33 + 7)) | v37 & 0x80 | v40 & (2 * v41 - 1);
            v44 = v36[2 * v43 + 1];
            if (((v43 ^ v44) & quantize_hdr_alpha(float,float,unsigned char *,quant_method)::testbits[v35]) == 0)
            {
              break;
            }
          }
        }

        --v35;
        v37 -= 64;
        v34 -= 128;
        if (__CFADD__(v33++, 1))
        {
          a2[6] = v36[((v30 + 256) >> 8) | 0x101];
          LOBYTE(v44) = v36[((v32 + 256) >> 8) | 0x101];
LABEL_193:
          a2[7] = v44;
          return 15;
        }
      }

      a2[6] = v39;
      goto LABEL_193;
  }

  return v13;
}

uint64_t try_quantize_rgb_delta_blue_contract(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v6 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v6, v5)), vcgtq_f32(vmaxnmq_f32(v6, v5), vdupq_n_s32(0x437F0000u))));
  {
    v51 = a1;
    v55 = a2;
    v47 = a3;
    v43 = v7;
    v36 = v5;
    v39 = v6;
    compute_ideal_colors_and_weights_1plane();
    v5 = v36;
    v6 = v39;
    v7 = v43;
    a3 = v47;
    a1 = v51;
    a2 = v55;
  }

  v8 = &unk_1EA8DB000;
  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10 = vcvtq_s32_f32(vaddq_f32(v5, v9));
  v11 = vaddq_s32(v10, v10);
  v12 = vandq_s8(vaddq_s32(v11, v11), vdupq_n_s32(0x1FEu));
  v13 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v14.i32[0] = v13[v12.i32[0] | 1];
  v14.i32[1] = v13[v12.i32[1] | 1];
  v14.i64[1] = v13[v12.i32[2] | 1];
  v12.i64[0] = 0x10000000100;
  v12.i64[1] = 0x10000000100;
  v15 = vandq_s8(v11, v12);
  v16 = vcvtq_s32_f32(vaddq_f32(v6, v9));
  v17 = vsubq_s32(vaddq_s32(v16, v16), vorrq_s8(v14, v15));
  v17.i32[3] = 0;
  v16.i64[0] = 0x3F0000003FLL;
  v16.i64[1] = 0x3F0000003FLL;
  v18 = vaddq_s32(v17, v16);
  {
    v52 = a1;
    v56 = a2;
    v44 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v48 = v14;
    v37 = v17;
    v40 = v15;
    v35 = v18;
    compute_ideal_colors_and_weights_1plane();
    v18 = v35;
    v17 = v37;
    v15 = v40;
    v14 = v48;
    v13 = v44;
    v8 = &unk_1EA8DB000;
    a1 = v52;
    a2 = v56;
  }

  v19.i64[0] = 0x7F0000007FLL;
  v19.i64[1] = 0x7F0000007FLL;
  v20 = vcgtq_u32(v19, v18);
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v20, v21), v8[116])))
  {
    return 0;
  }

  v22.i64[0] = 0x7F0000007FLL;
  v22.i64[1] = 0x7F0000007FLL;
  v23 = vorrq_s8(vshrq_n_u32(v15, 1uLL), vandq_s8(v17, v22));
  v24 = vaddq_s32(v23, v23);
  v25.i32[0] = v13[v24.i32[0] | 1];
  v25.i32[1] = v13[v24.i32[1] | 1];
  v25.i64[1] = v13[v24.i32[2] | 1];
  v24.i64[0] = 0xC0000000C0;
  v24.i64[1] = 0xC0000000C0;
  v26 = vandq_s8(veorq_s8(v25, v23), v24);
  v26.i32[3] = 0;
  {
    v53 = a1;
    v57 = a2;
    v49 = v14;
    v41 = v26;
    v45 = v25;
    compute_ideal_colors_and_weights_1plane();
    v26 = v41;
    v25 = v45;
    v14 = v49;
    v8 = &unk_1EA8DB000;
    a1 = v53;
    a2 = v57;
  }

  v27.i64[0] = 0x100000001;
  v27.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v27, vceqzq_s32(v26)), v8[116])))
  {
    return 0;
  }

  v28 = vshrq_n_u32(v25, 1uLL);
  v29 = vorrq_s8((*&vtstq_s32((*&v28 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v28 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v28 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v29.i32[0] + v29.i32[1] + v29.i32[2] >= 0)
  {
    return 0;
  }

  v30 = vaddq_s32(vsraq_n_u32((*&v25 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v14, 1uLL), v29);
  v31 = vshrq_n_u32(v30, 0x1FuLL);
  {
    v54 = a1;
    v58 = a2;
    v50 = v14;
    v42 = v30;
    v46 = v25;
    v38 = v31;
    compute_ideal_colors_and_weights_1plane();
    v31 = v38;
    v30 = v42;
    v25 = v46;
    v14 = v50;
    v8 = &unk_1EA8DB000;
    a1 = v54;
    a2 = v58;
  }

  v32.i64[0] = 0xFF000000FFLL;
  v32.i64[1] = 0xFF000000FFLL;
  v33 = vcgtq_s32(v30, v32);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v31, v33), v33), v8[116])))
  {
    return 0;
  }

  *a1 = v14;
  *a2 = v25;
  return 1;
}

uint64_t try_quantize_rgb_delta(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vcvtq_s32_f32(vaddq_f32(a4, v5));
  v7 = vaddq_s32(v6, v6);
  v8 = vandq_s8(vaddq_s32(v7, v7), vdupq_n_s32(0x1FEu));
  v9 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v10.i32[0] = v9[v8.i32[0] | 1];
  v10.i32[1] = v9[v8.i32[1] | 1];
  v10.i64[1] = v9[v8.i32[2] | 1];
  v8.i64[0] = 0x10000000100;
  v8.i64[1] = 0x10000000100;
  v11 = vandq_s8(v7, v8);
  v12 = vcvtq_s32_f32(vaddq_f32(a5, v5));
  v13 = vsubq_s32(vaddq_s32(v12, v12), vorrq_s8(v10, v11));
  v13.i32[3] = 0;
  v12.i64[0] = 0x3F0000003FLL;
  v12.i64[1] = 0x3F0000003FLL;
  v14 = vaddq_s32(v13, v12);
  {
    v44 = a1;
    v47 = a2;
    v38 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v41 = v10;
    v33 = v13;
    v35 = v11;
    v32 = v14;
    compute_ideal_colors_and_weights_1plane();
    v14 = v32;
    v13 = v33;
    v11 = v35;
    v10 = v41;
    v9 = v38;
    a1 = v44;
    a2 = v47;
  }

  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16 = vcgtq_u32(v15, v14);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18 = &unk_1EA8DB000;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v16, v17), mask(vmask4)::shift)))
  {
    return 0;
  }

  v19.i64[0] = 0x7F0000007FLL;
  v19.i64[1] = 0x7F0000007FLL;
  v20 = vorrq_s8(vshrq_n_u32(v11, 1uLL), vandq_s8(v13, v19));
  v21 = vaddq_s32(v20, v20);
  v22.i32[0] = v9[v21.i32[0] | 1];
  v22.i32[1] = v9[v21.i32[1] | 1];
  v22.i64[1] = v9[v21.i32[2] | 1];
  v21.i64[0] = 0xC0000000C0;
  v21.i64[1] = 0xC0000000C0;
  v23 = vandq_s8(veorq_s8(v22, v20), v21);
  v23.i32[3] = 0;
  {
    v45 = a1;
    v48 = a2;
    v42 = v10;
    v36 = v23;
    v39 = v22;
    compute_ideal_colors_and_weights_1plane();
    v23 = v36;
    v22 = v39;
    v10 = v42;
    v18 = &unk_1EA8DB000;
    a1 = v45;
    a2 = v48;
  }

  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v24, vceqzq_s32(v23)), v18[116])))
  {
    return 0;
  }

  v26 = vshrq_n_u32(v22, 1uLL);
  v27 = vorrq_s8((*&vtstq_s32((*&v26 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v26 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v26 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v27.i32[0] + v27.i32[1] + v27.i32[2] < 0)
  {
    return 0;
  }

  v28 = vaddq_s32(vsraq_n_u32((*&v22 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v10, 1uLL), v27);
  v29 = vshrq_n_u32(v28, 0x1FuLL);
  {
    v46 = a1;
    v49 = a2;
    v43 = v10;
    v37 = v28;
    v40 = v22;
    v34 = v29;
    compute_ideal_colors_and_weights_1plane();
    v29 = v34;
    v28 = v37;
    v22 = v40;
    v10 = v43;
    v18 = &unk_1EA8DB000;
    a1 = v46;
    a2 = v49;
  }

  v30.i64[0] = 0xFF000000FFLL;
  v30.i64[1] = 0xFF000000FFLL;
  v31 = vcgtq_s32(v28, v30);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v29, v31), v31), v18[116])))
  {
    return 0;
  }

  *a1 = v10;
  *a2 = v22;
  return 1;
}

uint64_t try_quantize_rgb_blue_contract(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v6 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v5, v6)), vcgtq_f32(vmaxnmq_f32(v5, v6), vdupq_n_s32(0x437F0000u))));
  {
    v27 = a3;
    v28 = a2;
    v26 = a1;
    v25 = v7;
    v23 = v5;
    v24 = v6;
    compute_ideal_colors_and_weights_1plane();
    v5 = v23;
    v6 = v24;
    v7 = v25;
    a1 = v26;
    a3 = v27;
    a2 = v28;
  }

  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vcvtq_s32_f32(vaddq_f32(v5, v8));
  v10 = vaddq_s32(v9, v9);
  v11 = vsubq_f32(v5, vcvtq_f32_s32(v9));
  v12 = vdupq_n_s32(0xBDCCCCCD);
  v13 = vsubq_s32(v10, vcgeq_f32(v11, v12));
  v14 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v15 = v14[v13.i32[0]];
  v16 = v14[v13.i32[1]];
  v17 = v14[v13.i32[2]];
  v18 = vcvtq_s32_f32(vaddq_f32(v6, v8));
  v19 = vsubq_s32(vaddq_s32(v18, v18), vcgeq_f32(vsubq_f32(v6, vcvtq_f32_s32(v18)), v12));
  if (v14[v19.i32[1]] + v14[v19.i32[0]] + v14[v19.i32[2]] <= v16 + v15 + v17)
  {
    return 0;
  }

  LODWORD(v20) = v14[v19.i32[0]];
  DWORD1(v20) = v14[v19.i32[1]];
  *(&v20 + 1) = v14[v19.i32[2]];
  *&v21 = __PAIR64__(v16, v15);
  *(&v21 + 1) = v17;
  *a1 = v20;
  *a2 = v21;
  return 1;
}

float quantize_rgb(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vdupq_n_s32(0xBDCCCCCD);
  v7 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v8 = vdupq_n_s32(0xBE4CCCCD);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vdupq_n_s32(0x3E4CCCCDu);
  do
  {
    v11 = vmaxq_s32(vcvtq_s32_f32(vaddq_f32(a4, v5)), 0);
    v12 = vsubq_s32(vaddq_s32(v11, v11), vcgeq_f32(vsubq_f32(a4, vcvtq_f32_s32(v11)), v6));
    v13 = v7[v12.i32[0]];
    v14 = v7[v12.i32[1]];
    v15 = v7[v12.i32[2]];
    a4 = vaddq_f32(a4, v8);
    v16 = vminq_s32(vcvtq_s32_f32(vaddq_f32(a5, v5)), v9);
    v17 = vsubq_s32(vaddq_s32(v16, v16), vcgeq_f32(vsubq_f32(a5, vcvtq_f32_s32(v16)), v6));
    a5 = vaddq_f32(a5, v10);
  }

  while (v14 + v13 + v15 > v7[v17.i32[1]] + v7[v17.i32[0]] + v7[v17.i32[2]]);
  LODWORD(v18) = v7[v17.i32[0]];
  DWORD1(v18) = v7[v17.i32[1]];
  *(&v18 + 1) = v7[v17.i32[2]];
  *&v19 = __PAIR64__(v14, v13);
  *(&v19 + 1) = v15;
  *a1 = v19;
  *a2 = v18;
  return *&v19;
}

_BYTE *quantize_rgbs(_BYTE *result, int a2, int8x16_t a3)
{
  v3 = fmaxf(0.0038911 * *a3.i32, 0.0);
  v4 = vdup_n_s32(0x437F0000u);
  if ((0.0038911 * *a3.i32) > 255.0)
  {
    v3 = 255.0;
  }

  v5 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v6 = v5[((v3 - (v3 + 0.5)) >= -0.1) | (2 * (v3 + 0.5))];
  v7 = vmul_f32(vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL), vdup_n_s32(0x3B7F00FFu));
  v8 = vbsl_s8(vcgt_f32(v7, v4), v4, vmaxnm_f32(v7, 0));
  v9 = vcvt_s32_f32(vadd_f32(v8, 0x3F0000003F000000));
  v10 = vcge_f32(vsub_f32(v8, vcvt_f32_s32(v9)), vdup_n_s32(0xBDCCCCCD));
  v11 = v5[2 * v9.i32[0] - v10.i32[0]];
  v12 = v5[2 * v9.i32[1] - v10.i32[1]];
  v13 = vmuls_lane_f32(((*&a3.i32[2] + vaddv_f32(*a3.i8)) * 0.0038911) + 1.0e-10, a3, 3) / ((v11 + v6 + v12) + 1.0e-10);
  v14 = (fmaxf(v13, 0.0) * 256.0) + 0.5;
  v15 = v13 == 1.0;
  v16 = v13 < 1.0;
  v17 = 256.5;
  if (v16 || v15)
  {
    v17 = v14;
  }

  v18 = v17 & ~(v17 >> 31);
  if (v18 >= 255)
  {
    v18 = 255;
  }

  *result = v6;
  result[1] = v11;
  result[2] = v12;
  result[3] = v5[(2 * v18) | 1];
  return result;
}

_BYTE *quantize_hdr_rgb(_BYTE *result, int a2, float32x4_t a3, float32x4_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v86 = *MEMORY[0x1E69E9840];
  v10 = vdupq_n_s32(0x477FFF00u);
  v11 = vminnmq_f32(vmaxnmq_f32(a3, 0), v10);
  v12 = vminnmq_f32(vmaxnmq_f32(a4, 0), v10);
  if (*v12.i32 <= *&v12.i32[1] || *v12.i32 <= *&v12.i32[2])
  {
    if (*&v12.i32[1] <= *&v12.i32[2])
    {
      v17 = vrev64q_s32(v11);
      v15 = vextq_s8(v17, v17, 0xCuLL);
      v18 = vrev64q_s32(v12);
      v16 = vextq_s8(v18, v18, 0xCuLL);
      v14 = 2;
    }

    else
    {
      v15.i64[0] = vrev64q_s32(v11).u64[0];
      v15.i64[1] = v11.i64[1];
      v16.i64[0] = vrev64q_s32(v12).u64[0];
      v16.i64[1] = v12.i64[1];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v15 = v11;
    v16 = v12;
  }

  *&a8 = fmaxf(*v16.i32, 0.0);
  if (*v16.i32 > 65535.0)
  {
    *&a8 = 65535.0;
  }

  *&a9 = *&a8 - *v15.i32;
  v19 = vdup_lane_s32(*&a8, 0);
  v20 = vextq_s8(v16, v16, 4uLL).u64[0];
  v21 = vsub_f32(v19, v20);
  v22 = vsub_f32(vsub_f32(v19, v21), vdup_lane_s32(*&a9, 0));
  v23 = vextq_s8(v15, v15, 4uLL).u64[0];
  v24 = vabd_f32(v22, v23);
  v25 = 7;
  v26 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v27 = vdup_n_s32(0x477FFF00u);
  v28 = vdup_n_s32(0xC77FFF00);
  do
  {
    v29 = v25;
    v30 = (&quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_cutoffs + 16 * v25);
    if (v21.f32[0] <= *v30 && v21.f32[1] <= *v30 && *&a9 <= v30[1])
    {
      v33 = v30 + 2;
      v34 = vld1_dup_f32(v33);
      v35 = vcgt_f32(v24, v34);
      if ((v35.i8[0] & 1) == 0 && (v35.i8[4] & 1) == 0)
      {
        v36 = quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_scales[v25];
        v37 = quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_rscales[v25];
        v38 = (&quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_bits + 16 * v25);
        v39 = ((*&a8 * v36) + 0.5);
        v40 = v26[(2 * v39) | 1];
        v9.f32[0] = v37 * (v39 & 0xFFFFFF00 | v40);
        v41 = fmaxf(v9.f32[0] - *v15.i32, 0.0);
        v42 = (v9.f32[0] - *v15.i32) <= 65535.0 ? v41 : 65535.0;
        v43 = ((v36 * v42) + 0.5);
        if (1 << v38[2] > v43)
        {
          v44 = 1 << v38[1];
          v45 = 1 << (v38[3] - 1);
          v46 = ((v36 * v42) + 0.5) & 0x3F | (v29 << 7) | (v39 >> 2) & 0x40;
          do
          {
            v47 = v26[(2 * v46) | 1];
            v48 = v46 & 0xC0;
            v46 -= v48 != (v47 & 0xC0);
          }

          while (v48 != (v47 & 0xC0));
          v9 = vdup_lane_s32(v9, 0);
          v49 = vsub_f32(v9, v20);
          v50 = vcgt_f32(v49, v27);
          v51 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(v50, v27, vmaxnm_f32(v49, 0)), v36), 0x3F0000003F000000));
          if (v44 > v51.i32[0] && v44 > v51.i32[1])
          {
            if (v29 > 7)
            {
              v53 = 0;
            }

            else
            {
              v53 = ((1 << v29) & 0x5B) != 0 ? (v51.i32[0] >> 6) & 1 : (v39 >> 9) & 1;
            }

            if (v29 > 7)
            {
              v54 = 0;
            }

            else if (((1 << v29) & 0x5B) != 0)
            {
              v54 = (v51.i32[1] >> 6) & 1;
            }

            else
            {
              v54 = ((1 << v29) & 0xA0) != 0 ? (v39 >> 10) & 1 : (v43 >> 6) & 1;
            }

            v55 = v54 << 6;
            v56 = v51.i8[0] & 0x3F | (v53 << 6) & 0xFFFFFF7F | (((v29 >> 1) & 1) << 7);
            do
            {
              v57 = v26[(2 * v56) | 1];
              v58 = v56 & 0xC0;
              v56 -= v58 != (v57 & 0xC0);
            }

            while (v58 != (v57 & 0xC0));
            v59 = v55 | v51.i8[4] & 0x3F | (32 * v29) & 0x80;
            do
            {
              v60 = v26[(2 * v59) | 1];
              v61 = v59 & 0xC0;
              v59 -= v61 != (v60 & 0xC0);
            }

            while (v61 != (v60 & 0xC0));
            v62.i32[0] = v57 & 0x3F;
            v62.i32[1] = v60 & 0xFFFFFF3F;
            *v50.i32 = v37 * (v43 & 0xFFFFFFC0 | v47 & 0x3F);
            v63 = vsub_f32(vsub_f32(vsub_f32(v9, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v51 & 0xFFFFFFC0FFFFFFC0), v62)), v37)), vdup_lane_s32(v50, 0)), v23);
            v64 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v63, v27), v27, vmaxnm_f32(v63, v28)), v36), 0x3F0000003F000000));
            v9 = vabs_s32(v64);
            v65 = vcgt_s32(vdup_n_s32(v45), v9);
            if (v65.i32[0] & v65.i32[1])
            {
              v74 = 0;
              if (v29 > 3)
              {
                if ((v29 - 6) < 2)
                {
                  v74 = (v39 >> 11) & 1;
                  goto LABEL_75;
                }

                if (v29 == 4)
                {
                  goto LABEL_73;
                }

                if (v29 == 5)
                {
                  v74 = (v43 >> 7) & 1;
                  goto LABEL_77;
                }
              }

              else
              {
                if (v29 > 1)
                {
                  if (v29 != 2)
                  {
                    v74 = (v39 >> 9) & 1;
                    goto LABEL_77;
                  }
                }

                else if (v29)
                {
                  if (v29 != 1)
                  {
                    goto LABEL_75;
                  }

LABEL_73:
                  v74 = (v51.i32[0] >> 7) & 1;
                  goto LABEL_75;
                }

                v74 = (v64.i32[0] >> 6) & 1;
              }

LABEL_75:
              if (v29 > 7)
              {
                v75 = 0;
                goto LABEL_80;
              }

              if (((1 << v29) & 0xE8) == 0)
              {
                v75 = (v64.i32[1] >> 6) & 1;
                if (((1 << v29) & 5) == 0)
                {
                  v75 = (v51.i32[1] >> 7) & 1;
                }

                goto LABEL_80;
              }

LABEL_77:
              v75 = (v43 >> 6) & 1;
LABEL_80:
              if ((v29 | 2) == 6)
              {
                v76 = vshl_u32(vdup_n_s32(v39), 0xFFFFFFF6FFFFFFF7);
              }

              else
              {
                v76 = vshr_n_u32(v64, 5uLL);
              }

              v77 = v64.i8[0] & 0x1F | (v74 << 6) | (32 * (v76.i8[0] & 1)) | (v14 << 7);
              v78 = (v14 << 6) & 0x80;
              do
              {
                v79 = v26[(2 * v77) | 1];
                v80 = v77 & 0xF0;
                v77 -= v80 != (v79 & 0xF0);
              }

              while (v80 != (v79 & 0xF0));
              v81 = (32 * (v76.i8[4] & 1)) | (v75 << 6) | v64.i8[4] & 0x1F | v78;
              do
              {
                v82 = v26[(2 * v81) | 1];
                v83 = v81 & 0xF0;
                v81 -= v83 != (v82 & 0xF0);
              }

              while (v83 != (v82 & 0xF0));
              *result = v40;
              result[1] = v47;
              result[2] = v57;
              result[3] = v60;
              result[4] = v79;
              result[5] = v82;
              return result;
            }
          }
        }
      }
    }

    v25 = v29 - 1;
  }

  while (v29);
  v66 = 0;
  v84 = vzip1q_s32(v11, v12);
  v85 = vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL));
  do
  {
    v67 = *&v84.i32[v66];
    v68 = fmaxf(v67, 0.0);
    if (v67 <= 65020.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = *"";
    }

    *&v84.i32[v66++] = v69;
  }

  while (v66 != 6);
  for (i = 0; i != 4; ++i)
  {
    result[i] = v26[2 * ((*&v84.i32[i] * 0.0039062) + 0.5) + 1];
  }

  do
  {
    v71 = ((*&v84.i32[i] * 0.0019531) + 0.5) ^ 0xFFFFFF80;
    do
    {
      v72 = v26[(2 * v71) | 1];
      v73 = v71 & 0xC0;
      v71 -= v73 != (v72 & 0xC0);
    }

    while (v73 != (v72 & 0xC0));
    result[i++] = v72;
  }

  while (i != 6);
  return result;
}

uint64_t try_quantize_alpha_delta(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
{
  v5 = (a4.n128_f32[3] + 0.5);
  v6 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v7 = v6[(4 * (v5 & 0x7F)) | 1];
  v8 = v7 | (((v5 >> 7) & 1) << 8);
  v9 = 2 * (a5.n128_f32[3] + 0.5) - v8;
  if ((v9 - 64) < 0xFFFFFF80)
  {
    return 0;
  }

  v10 = v9 & 0x7F | (((2 * v5) & 0x100) >> 1);
  v11 = v6[(2 * v10) | 1];
  if ((v10 ^ v11) > 0x3F || (v11 & 0x7F) + v8 + ((v11 << 25 >> 31) & 0xFFFFFF80) > 0x1FF)
  {
    return 0;
  }

  *(a1 + 12) = v7;
  *(a2 + 12) = v11;
  return 1;
}

double astc::rand_init(astc *this, unint64_t *a2)
{
  result = -2.40530959e284;
  *this = xmmword_18622F1B0;
  return result;
}

uint64_t astc::rand(astc *this, unint64_t *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = __ROR8__(v3 ^ *this, 27);
  *this ^= __ROR8__(*this, 40) ^ ((v3 ^ *this) << 16) ^ v3;
  *(this + 1) = v4;
  return v3 + v2;
}

uint64_t astcenc_config_init(unsigned int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, float a7)
{
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  *(a6 + 92) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  *a6 = 0uLL;
  *(a6 + 16) = 0uLL;
  result = validate_block_size(a2, a3, v13);
  if (!result)
  {
    *(a6 + 8) = a2;
    *(a6 + 12) = a3;
    *(a6 + 16) = v13;
    v15 = a3 * a2 * v13;
    v16 = logf(v15);
    result = 6;
    if (a7 >= 0.0 && a7 <= 100.0)
    {
      v19 = &preset_configs_low;
      if (v15 < 0x40)
      {
        v19 = &preset_configs_mid;
      }

      v20 = &preset_configs_high;
      if (v15 >= 25)
      {
        v20 = v19;
      }

      astcenc_config_init(astcenc_profile,unsigned int,unsigned int,unsigned int,float,unsigned int,astcenc_config *)::preset_configs = v20;
      v21 = *v20;
      if (*v20 >= a7)
      {
        v26 = 0;
        v25 = 1;
        v23 = v20;
      }

      else
      {
        v22 = -1;
        v23 = v20;
        do
        {
          if (v22 == 4)
          {
            goto LABEL_50;
          }

          v24 = v23[18];
          v23 += 18;
          v21 = v24;
          ++v22;
        }

        while (v24 < a7);
        v25 = v22 < 5;
        v26 = v22 + 1;
      }

      v27 = v26 - 1;
      if (!v26)
      {
        v27 = 0;
      }

      v28 = v16 / 2.3026;
      if (v27 == v26)
      {
        if (v26 < 6)
        {
          *(a6 + 44) = *(v23 + 1);
          *(a6 + 60) = *(v23 + 5);
          *(a6 + 76) = *(v23 + 9);
          v29 = v23[11] + (v28 * -35.0);
          v30 = v23[12] + (v28 * -19.0);
          if (v29 > v30)
          {
            v30 = v29;
          }

          v31 = *(v23 + 13);
          *(a6 + 84) = v30;
          *(a6 + 88) = v31;
          v32 = *(v23 + 14);
          *(a6 + 92) = v32;
          v33 = v23[17];
          *(a6 + 100) = v23[16];
LABEL_33:
          *(a6 + 104) = v33;
          __asm { FMOV            V2.4S, #1.0 }

          *(a6 + 20) = _Q2;
          *(a6 + 36) = 0;
          *a6 = a1;
          if (a1 >= 2)
          {
            if (a1 - 2 > 1)
            {
              return 5;
            }

            *(a6 + 84) = 1148829696;
            *(a6 + 104) = 0;
            v30 = 999.0;
          }

          LODWORD(_Q2) = a5 & 0xFFFFFF82;
          *&_Q2 = vcnt_s8(*&_Q2);
          LOWORD(_Q2) = vaddlv_u8(*&_Q2);
          if (_Q2)
          {
            return 8;
          }

          LODWORD(_Q2) = a5 & 0x41;
          if ((vaddlv_u8(vcnt_s8(*&_Q2)) & 0x7FE) != 0)
          {
            return 8;
          }

          if (a5)
          {
            v48 = *(a6 + 44);
            if ((v48 + 1) < 4)
            {
              v49 = v48 + 1;
            }

            else
            {
              v49 = 4;
            }

            *(a6 + 44) = v49;
            *(a6 + 24) = 0;
            __asm { FMOV            V2.2S, #1.5 }

            *(a6 + 92) = vmul_f32(v32, _D2);
            *(a6 + 100) = 1065185444;
            *(a6 + 84) = v30 * 1.03;
          }

          else if ((a5 & 0x40) != 0)
          {
            *(a6 + 40) = 1084227584;
            *(a6 + 32) = 1092616192;
          }

          else if ((a5 & 8) != 0)
          {
            *(a6 + 20) = 0x3FA9EB853F2CCCCDLL;
            *(a6 + 28) = 1048408228;
          }

          result = 0;
          *(a6 + 4) = a5;
          return result;
        }
      }

      else if (v27 < 6 && v25)
      {
        v34 = &v20[18 * v27];
        v35 = v21 - *v34;
        if (v35 > 0.0)
        {
          *v17.i32 = (v21 - a7) / v35;
          *v18.i32 = (a7 - *v34) / v35;
          v36 = vdupq_lane_s32(v18, 0).u64[0];
          v37 = vdupq_lane_s32(v17, 0).u64[0];
          v38.i64[0] = 0x3F0000003F000000;
          v38.i64[1] = 0x3F0000003F000000;
          *(a6 + 44) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v23 + 1)), *v18.i32), vcvtq_f32_u32(*(v34 + 1)), *v17.i32), v38));
          *(a6 + 60) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v23 + 5)), *v18.i32), vcvtq_f32_u32(*(v34 + 5)), *v17.i32), v38));
          *(a6 + 76) = vcvt_s32_f32(vadd_f32(vmla_f32(vmul_f32(v36, vcvt_f32_u32(*(v23 + 9))), v37, vcvt_f32_u32(*(v34 + 9))), 0x3F0000003F000000));
          v39 = vmla_n_f32(vmla_f32(vmul_f32(v36, *(v23 + 11)), v37, *(v34 + 11)), 0xC1980000C20C0000, v28);
          v30 = v39.f32[1];
          if (v39.f32[0] > v39.f32[1])
          {
            v30 = v39.f32[0];
          }

          v40 = (*v18.i32 * v23[13]) + (v34[13] * *v17.i32);
          *(a6 + 84) = v30;
          *(a6 + 88) = v40;
          v32 = vmla_f32(vmul_f32(v36, *(v23 + 14)), v37, *(v34 + 14));
          *(a6 + 92) = v32;
          v41 = v23[17];
          v42 = v34[17];
          *(a6 + 100) = (*v18.i32 * v23[16]) + (v34[16] * *v17.i32);
          v33 = (*v18.i32 * v41) + (v42 * *v17.i32);
          goto LABEL_33;
        }

LABEL_51:
        astcenc_config_init();
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  return result;
}

uint64_t validate_block_size(int a1, int a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (!is_legal_3d_block_size(a1, a2, a3))
    {
      return 4;
    }
  }

  else if ((is_legal_2d_block_size(a1, a2) & 1) == 0)
  {
    return 4;
  }

  if (a2 * a1 * a3 >= 0xD9)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t astcenc_context_alloc(uint64_t a1, int a2)
{
  LODWORD(memptr) = 1075880919;
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  if (a2)
  {
    operator new();
  }

  return 3;
}

uint64_t astcenc_context_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 128));
    free(*(v1 + 112));
    std::condition_variable::~condition_variable((v1 + 568));
    std::mutex::~mutex((v1 + 496));
    std::condition_variable::~condition_variable((v1 + 432));
    std::mutex::~mutex((v1 + 360));
    std::condition_variable::~condition_variable((v1 + 296));
    std::mutex::~mutex((v1 + 224));

    JUMPOUT(0x186602850);
  }

  return result;
}

uint64_t astcenc_compress_image(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v51 = v7;
  v47 = v3;
  v64 = *MEMORY[0x1E69E9840];
  if ((*(v2 + 4) & 0x10) != 0)
  {
    return 9;
  }

  v8.i64[0] = 0x500000005;
  v8.i64[1] = 0x500000005;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(*v4, v8))))
  {
    return 7;
  }

  v10 = v2;
  v11 = *(v2 + 108);
  if (v11 <= v6)
  {
    return 3;
  }

  if (16 * (*(v2 + 8) + *v3 - 1) / *(v2 + 8) * ((*(v2 + 12) + v3[1] - 1) / *(v2 + 12)) * ((*(v2 + 16) + v3[2] - 1) / *(v2 + 16)) > v5)
  {
    return 1;
  }

  v48 = v6;
  if (v11 == 1)
  {
    *(v2 + 288) = 0;
    atomic_store(0, (v2 + 344));
    *(v2 + 348) = 0;
    *(v2 + 424) = 0;
    atomic_store(0, (v2 + 480));
    *(v2 + 484) = 0;
  }

  v46 = v4;
  if (*(v2 + 36))
  {
    operator new();
  }

  ParallelManager::wait((v2 + 224));
  v12 = *(v10 + 112);
  v44 = *v10;
  bzero(&v56, 0xFA0uLL);
  v13 = *v12;
  v14 = v12[1];
  v43 = v12;
  v15 = v12[2];
  v57 = v14 * v13 * v15;
  v16 = *v47;
  v54 = v13;
  v17 = (v13 + *v47 - 1) / v13;
  v42 = v47[1];
  v52 = v14;
  v53 = v15;
  v50 = (v14 + v42 - 1) / v14;
  v18 = v50 * v17;
  v19 = v50 * v17 * ((v15 + v47[2] - 1) / v15);
  v62 = *(v10 + 20);
  v20 = *(v10 + 128);
  ParallelManager::init((v10 + 360), v19);
  v21 = vmvnq_s8(vceqq_s32(*v46, xmmword_186205980));
  v21.n128_u64[0] = vmovn_s32(v21);
  v21.n128_u16[0] = vmaxv_u16(v21.n128_u64[0]);
  v45 = load_image_block;
  if ((v21.n128_u8[0] & 1) == 0)
  {
    v45 = load_image_block;
    if ((v44 & 0xFFFFFFFE) != 2 && v53 == 1)
    {
      v22 = load_image_block;
      if (!v47[3])
      {
        v22 = load_image_block_fast_ldr;
      }

      v45 = v22;
    }
  }

  add_explicit = atomic_fetch_add_explicit((v10 + 480), 0x10u, memory_order_relaxed);
  v24 = *(v10 + 488);
  v25 = v24 >= add_explicit;
  v26 = v24 - add_explicit;
  if (v26 != 0 && v25)
  {
    v49 = (v20 + 231744 * v48);
    if (v26 >= 0x10)
    {
      v27 = 16;
    }

    else
    {
      v27 = v26;
    }

    do
    {
      v41 = v27;
      v28 = v27 + add_explicit;
      if (add_explicit < v27 + add_explicit)
      {
        do
        {
          v29 = add_explicit % v18 / v17;
          v30 = add_explicit % v18 % v17;
          v31 = v30 * v54;
          if (v53 != 1)
          {
            goto LABEL_40;
          }

          v32 = *(v10 + 36);
          if (!v32)
          {
            goto LABEL_40;
          }

          v33 = v31 + v54;
          if (v16 < v31 + v54)
          {
            v33 = v16;
          }

          v34 = v29 * v52 + v52;
          if (v42 < v34)
          {
            v34 = v42;
          }

          if (v42 <= (v29 * v52))
          {
            goto LABEL_39;
          }

          v35 = 0;
          v21.n128_f32[0] = 0.9 / (((2 * v32 - 2 + v54) * (2 * v32 - 2 + v52)) * 255.0);
          v36 = v29 * v52;
          do
          {
            v37 = v30 * v54;
            if (v16 > v31)
            {
              do
              {
                v38 = *(*(v10 + 120) + 4 * (v37 + v36 * v16));
                if (v38 > v21.n128_f32[0])
                {
                  v37 = v33;
                  v36 = v34;
                }

                v35 |= v38 > v21.n128_f32[0];
                ++v37;
              }

              while (v37 < v33);
            }

            ++v36;
          }

          while (v36 < v34);
          if ((v35 & 1) == 0)
          {
LABEL_39:
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v63 = 1;
          }

          else
          {
LABEL_40:
            (v45)(v44, v47, &v56, v43, v21);
            if ((*(v10 + 4) & 4) != 0)
            {
              *&v39 = vmul_n_f32(*(v10 + 20), *(&v61 + 3) * 0.000015259);
              *(&v39 + 2) = (*(&v61 + 3) * 0.000015259) * *(v10 + 28);
              HIDWORD(v39) = *(v10 + 32);
              v62 = v39;
            }
          }

          compress_block(v10, &v56, v51 + (16 * (v30 + (v29 + add_explicit / v18 * v50) * v17)), v49);
          ++add_explicit;
        }

        while (add_explicit != v28);
      }

      ParallelManager::complete_task_assignment((v10 + 360), v41);
      add_explicit = atomic_fetch_add_explicit((v10 + 480), 0x10u, memory_order_relaxed);
      v40 = *(v10 + 488);
      v27 = v40 - add_explicit;
      if (v40 - add_explicit >= 0x10)
      {
        v27 = 16;
      }
    }

    while (v40 > add_explicit);
  }

  ParallelManager::wait((v10 + 360));
  v55[0] = &unk_1EF50E198;
  v55[1] = v10;
  v55[3] = v55;
  ParallelManager::term(v10 + 360, v55);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:fe200100](v55);
  return 0;
}

void ParallelManager::init(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    *(a1 + 128) = (*(*v4 + 48))(v4);
    *(a1 + 64) = 1;
  }

  std::mutex::unlock(a1);
}

void ParallelManager::wait(ParallelManager *this)
{
  v2.__m_ = this;
  *&v2.__owns_ = 1;
  std::mutex::lock(this);
  if (*(this + 31) == *(this + 32))
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v2);
  }

  while (*(this + 31) != *(this + 32));
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

void ParallelManager::term(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 65) & 1) == 0)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    (*(*v4 + 48))(v4);
    *(a1 + 65) = 1;
  }

  std::mutex::unlock(a1);
}

void ParallelManager::init(std::mutex *this, int a2)
{
  std::mutex::lock(this);
  if ((this[1].__m_.__sig & 1) == 0)
  {
    LODWORD(this[2].__m_.__sig) = a2;
    LOBYTE(this[1].__m_.__sig) = 1;
  }

  std::mutex::unlock(this);
}

void ParallelManager::complete_task_assignment(ParallelManager *this, int a2)
{
  std::mutex::lock(this);
  v4 = *(this + 32);
  v5 = *(this + 31) + a2;
  *(this + 31) = v5;
  std::mutex::unlock(this);
  if (v5 == v4)
  {

    std::condition_variable::notify_all((this + 72));
  }
}

char *astcenc_get_error_string(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E6F44398[a1];
  }
}

void astcenc_context::~astcenc_context(astcenc_context *this)
{
  std::condition_variable::~condition_variable((this + 568));
  std::mutex::~mutex((this + 496));
  std::condition_variable::~condition_variable(this + 9);
  std::mutex::~mutex((this + 360));
  std::condition_variable::~condition_variable((this + 296));
  std::mutex::~mutex((this + 224));
}

void std::__throw_bad_function_call[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

__n128 std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0>,unsigned int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF50E108;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF50E198;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 120);
  if (result)
  {
    result = MEMORY[0x186602830](result, 0x1000C8052888210);
    v2 = *(a1 + 8);
  }

  *(v2 + 120) = 0;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t is_legal_2d_block_size(int a1, int a2)
{
  v2 = a2 | (a1 << 8);
  result = 1;
  if (v2 > 2564)
  {
    v4 = (v2 - 2565) > 5 || ((1 << (v2 - 5)) & 0x2B) == 0;
    if (v4 && v2 != 3082 && v2 != 3084)
    {
      return 0;
    }
  }

  else if (v2 > 2052)
  {
    v5 = v2 - 2053;
    if (v5 > 3 || v5 == 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1284) >= 2 && (v2 - 1541) >= 2 && v2 != 1028)
  {
    return 0;
  }

  return result;
}

uint64_t is_legal_3d_block_size(int a1, int a2, int a3)
{
  v3 = (a2 << 8) | (a1 << 16) | a3;
  result = 1;
  if (v3 > 328963)
  {
    v5 = (v3 - 328964) >= 2 && (v3 - 394757) >= 2;
    v6 = 394501;
LABEL_8:
    if (v5 && v3 != v6)
    {
      return 0;
    }

    return result;
  }

  if (v3 > 263170)
  {
    v5 = (v3 - 263171) >= 2;
    v6 = 328708;
    goto LABEL_8;
  }

  if (v3 != 197379 && v3 != 262915)
  {
    return 0;
  }

  return result;
}

uint64_t compute_ideal_endpoint_formats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v371 = v23;
  v372 = v24;
  v416 = *MEMORY[0x1E69E9840];
  v25 = *v13;
  if (!*v13)
  {
    compute_ideal_endpoint_formats();
  }

  v26 = v15;
  v27 = v14;
  v28 = v13;
  v375 = v17;
  v373 = v16;
  v374 = v18;
  v386 = *(v14 + 3553);
  v390 = *(v14 + 3769);
  memset(v415, 0, sizeof(v415));
  memset(v410, 0, sizeof(v410));
  v387 = v25;
  compute_avgs_and_dirs_3_comp_rgb(v13, v14, v410, 0.0, v19, v20, v21, v22);
  v30 = v387;
  v31 = 0;
  v32 = v28 + 2;
  v33 = v28 + 112;
  v34 = v27 + 324;
  v35 = v27 + 108;
  v36 = v27 + 216;
  v37 = v26 + 16;
  v38 = v26 + 80;
  v39 = vdupq_n_s32(0x3F13CD3Au);
  v40.i64[0] = 0x400000004;
  v40.i64[1] = 0x400000004;
  v41.i64[0] = 0x100000001;
  v41.i64[1] = 0x100000001;
  v42 = &unk_1EA8DB000;
  v382 = v26 + 16;
  v384 = v32;
  v381 = v26 + 80;
  do
  {
    v43 = &v410[2 * v31];
    v44 = v43[1];
    v45 = vmulq_f32(v44, v44);
    *v45.i8 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.i8);
    v46 = vpadd_f32(*v45.i8, *v45.i8);
    v47 = xmmword_18622B5B0;
    if (*v46.i32 != 0.0)
    {
      v47 = vdivq_f32(v44, vsqrtq_f32(vdupq_lane_s32(v46, 0)));
    }

    v48 = *v43;
    v49 = vmulq_f32(v48, v48);
    *v49.i8 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.i8);
    v50 = vpadd_f32(*v49.i8, *v49.i8);
    v51 = xmmword_18622B5B0;
    if (*v50.i32 != 0.0)
    {
      v51 = vdivq_f32(v48, vsqrtq_f32(vdupq_lane_s32(v50, 0)));
    }

    v52 = *(v32 + v31);
    if (!*(v32 + v31))
    {
      compute_ideal_endpoint_formats();
    }

    v53 = 0;
    v54 = *v27[442].f32;
    v55 = vmulq_f32(v48, v39);
    v55.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
    v56 = vdupq_lane_s32(*v55.f32, 0);
    v56.i32[3] = 0;
    v57 = vaddq_f32(v48, vmulq_f32(v56, xmmword_186232BC0));
    v58 = vmulq_f32(v48, v47);
    v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
    v59 = vdupq_lane_s32(*v58.f32, 0);
    v59.i32[3] = 0;
    v60 = vsubq_f32(v48, vmulq_f32(v47, v59));
    v48.i32[0] = 1190133760;
    if (!v27[471].i8[1])
    {
      v48.f32[0] = 65535.0;
    }

    v61 = vdupq_lane_s32(*v48.f32, 0);
    v62 = vdupq_lane_s32(*v60.i8, 0);
    v63 = vdupq_lane_s32(*v60.i8, 1);
    v64 = vdupq_laneq_s32(v60, 2);
    v65 = vdupq_lane_s32(*v57.i8, 0);
    v66 = vdupq_lane_s32(*v57.i8, 1);
    v67 = vdupq_laneq_s32(v57, 2);
    v68 = vdupq_n_s32(v52);
    v69 = 0uLL;
    v70 = xmmword_186205980;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    do
    {
      v395 = v73;
      v29.i32[0] = *&v33[v53 / 2];
      v75 = vmovl_u16(*&vmovl_u8(*v29.f32));
      v76 = v75.u32[2];
      v77 = v75.u32[1];
      v78 = v75.u32[3];
      v79 = vcgtq_s32(v68, v70);
      v80 = v75.i32[0];
      v81.i32[0] = v34->i32[v75.u32[0]];
      v81.i32[1] = v34->i32[v75.u32[1]];
      v81.i32[2] = v34->i32[v75.u32[2]];
      v75.i32[0] = v27->i32[v75.u32[0]];
      v75.i32[1] = v27->i32[v75.u32[1]];
      v75.i32[2] = v27->i32[v75.u32[2]];
      v82.i32[0] = v35->i32[v80];
      v81.i32[3] = v34->i32[v75.u32[3]];
      v82.i32[1] = v35->i32[v77];
      v83 = v35 + v75.u32[3];
      v75.i32[3] = v27->i32[v75.u32[3]];
      v82.i32[2] = v35->i32[v76];
      v82.i32[3] = *v83;
      v84 = vsubq_f32(v81, v61);
      v81.i32[0] = v36->i32[v80];
      v81.i32[1] = v36->i32[v77];
      v81.i32[2] = v36->i32[v76];
      v81.i32[3] = v36->i32[v78];
      v85 = vaddq_f32(vaddq_f32(vmulq_n_f32(v75, v47.f32[0]), vmulq_lane_f32(v82, *v47.f32, 1)), vmulq_laneq_f32(v81, v47, 2));
      v392 = vaddq_f32(v74, vandq_s8(vmulq_f32(v84, v84), v79));
      v86 = vsubq_f32(vaddq_f32(v62, vmulq_n_f32(v85, v47.f32[0])), v75);
      v87 = vsubq_f32(vaddq_f32(v63, vmulq_lane_f32(v85, *v47.f32, 1)), v82);
      v88 = vsubq_f32(vaddq_f32(v64, vmulq_laneq_f32(v85, v47, 2)), v81);
      v89 = vaddq_f32(vaddq_f32(vmulq_n_f32(v75, v51.f32[0]), vmulq_lane_f32(v82, *v51.f32, 1)), vmulq_laneq_f32(v81, v51, 2));
      v90 = vsubq_f32(vmulq_n_f32(v89, v51.f32[0]), v75);
      v91 = vsubq_f32(vmulq_lane_f32(v89, *v51.f32, 1), v82);
      v92 = vsubq_f32(vmulq_laneq_f32(v89, v51, 2), v81);
      v93 = vaddq_f32(vmulq_n_f32(vmulq_f32(v86, v86), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v87, v87), *v54.f32, 1));
      v94 = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v75, v39), vmulq_f32(v82, v39)), vmulq_f32(v81, v39)), v39);
      v95 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v92, v92), v54, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v90, v90), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v91, v91), *v54.f32, 1)));
      v96 = vsubq_f32(vaddq_f32(v65, v94), v75);
      v97 = vsubq_f32(vaddq_f32(v66, v94), v82);
      v98 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v88, v88), v54, 2), v93);
      v70 = vaddq_s32(v70, v40);
      v72 = vaddq_f32(v72, vandq_s8(v95, v79));
      v99 = vsubq_f32(vaddq_f32(v67, v94), v81);
      v100 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v99, v99), v54, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v96, v96), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v97, v97), *v54.f32, 1))), v79);
      v101 = vsubq_f32(v94, v75);
      v102 = vsubq_f32(v94, v82);
      v103 = vsubq_f32(v94, v81);
      v74 = v392;
      v396 = vaddq_f32(v395, vandq_s8(v98, v79));
      v73 = v396;
      v71 = vaddq_f32(v71, v100);
      v29 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v103, v103), v54, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v101, v101), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v102, v102), *v54.f32, 1))), v79);
      v69 = vaddq_f32(v69, v29);
      v53 += 4;
    }

    while (v53 < v52);
    v104 = *(v37 + 16 * v31);
    v105 = *(v38 + 16 * v31);
    {
      v388 = v39;
      v370 = v71;
      v369 = v104;
      v368 = v105;
      compress_block();
      v105 = v368;
      v104 = v369;
      v74 = v392;
      v73 = v396;
      v71 = v370;
      v42 = &unk_1EA8DB000;
      v41.i64[0] = 0x100000001;
      v41.i64[1] = 0x100000001;
      v40.i64[0] = 0x400000004;
      v40.i64[1] = 0x400000004;
      v39 = v388;
      v38 = v26 + 80;
      v37 = v26 + 16;
      v32 = v384;
      v30 = v387;
    }

    v106 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.f32);
    v107 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
    v108 = vpadd_f32(v107, v107);
    v109 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.f32);
    v110 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.f32);
    v111 = vadd_f32(*&vextq_s8(v69, v69, 8uLL), *v69.f32);
    v112 = vsubq_f32(v105, v104);
    v113 = (~vaddvq_s32(vshlq_u32(vandq_s8(vcgtq_f32(vdupq_n_s32(0x45F5C199u), vmaxq_f32(v112, vsubq_f32(0, v112))), v41), v42[116])) & 7) == 0;
    *v114.f32 = vsub_f32(vzip1_s32(vpadd_f32(v109, v109), vpadd_f32(v110, v110)), vdup_lane_s32(v108, 0));
    v115 = (v415 + 20 * v31);
    v114.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(vpadd_f32(v106, v106).f32[0], v54, 3)), vsub_f32(vpadd_f32(v111, v111), v108).u32[0]);
    *v115 = vmulq_f32(v114, xmmword_186232BD0);
    v115[1].i8[0] = v113;
    v116 = 30720.0;
    if (!v27[471].i8[1])
    {
      v116 = 65535.0;
    }

    v115[1].i8[1] = v27[444].i8[0] ^ 1 | (v27[437].f32[1] != v116) | (v27[441].f32[1] != v116);
    ++v31;
    v33 += 108;
  }

  while (v31 != v30);
  bzero(v410, 0x540uLL);
  v118 = 0;
  v119 = 0uLL;
  memset(v409, 0, sizeof(v409));
  v120 = COERCE_FLOAT(*&v27[443]) + vaddv_f32(v27[442]);
  v121 = 61440.0;
  if (v386)
  {
    *v117.i32 = 61440.0;
  }

  else
  {
    *v117.i32 = 65535.0;
  }

  if (!v390)
  {
    v121 = 65535.0;
  }

  v122 = vdupq_lane_s32(v117, 0);
  *&v122.i32[3] = v121;
  v377 = v122;
  v379 = *v27[442].f32;
  if (v390)
  {
    v123 = 15;
  }

  else
  {
    v123 = 14;
  }

  v124.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v124.i8[8] = v123;
  v124.i8[9] = v123;
  v124.i8[10] = v123;
  v124.i8[11] = v123;
  v124.i8[12] = v123;
  v124.i8[13] = v123;
  v124.i8[14] = v123;
  v124.i8[15] = v123;
  v125 = &v409[2] + 3;
  v397 = &v410[4] + 3;
  v126 = v411;
  v393 = &v409[1] + 3;
  v127 = 0.5;
  v376 = vdupq_lane_s32(201852416, 0);
  v391 = v124;
  do
  {
    v128 = &v410[21 * v118];
    v129 = v415 + 5 * v118;
    v130 = *(v382 + 16 * v118);
    v131 = *(v381 + 16 * v118);
    v132 = vmaxnmq_f32(vsubq_f32(v130, v377), v119);
    v133 = vmaxnmq_f32(vsubq_f32(v131, v377), v119);
    v134 = vminnmq_f32(v130, v119);
    v135 = vminnmq_f32(v131, v119);
    v137 = vaddq_f32(vmulq_f32(v134, v134), vmulq_f32(v135, v135));
    v136 = vmulq_f32(v379, vaddq_f32(vmulq_f32(v133, v133), vaddq_f32(vmulq_f32(v132, v132), v137)));
    v137.i32[0] = v136.i32[2];
    v137.i8[0] = *(v384 + v118);
    v138 = v137.u32[0];
    v139 = ((v136.f32[2] + vaddv_f32(*v136.f32)) * v127) * v137.u32[0];
    v140 = vmuls_lane_f32(v127, v136, 3) * v137.u32[0];
    if (v386)
    {
      v141 = *(v381 + 16 * v118);
      v141.i32[3] = v141.i32[0];
      v142 = fmaxf(vminvq_f32(v141), 0.0);
      LODWORD(v143) = HIDWORD(*(v381 + 16 * v118));
      v144 = v131.f32[0] > v131.f32[1];
      v145 = v131.f32[0] > v131.f32[2];
      if (v131.f32[1] > v131.f32[2])
      {
        v146 = 1;
      }

      else
      {
        v146 = 2;
      }

      if (v143 <= v131.f32[2])
      {
        LODWORD(v143) = *(v381 + 16 * v118 + 8);
      }

      v147 = !v144 || !v145;
      if (v144 && v145)
      {
        v148 = 0;
      }

      else
      {
        v148 = v146;
      }

      v149 = (&v399 | (4 * v148));
      if (!v147)
      {
        LODWORD(v143) = *(v381 + 16 * v118);
      }

      v399 = *(v382 + 16 * v118);
      v137.f32[0] = v143 - *v149;
      v150 = (v143 - v142);
      v151 = v137.f32[0];
      v152 = v150 < 0x2000;
      v153 = v150 < 2048;
      v154 = v150 < 1024;
      v155 = v137.f32[0] < 2048 && v150 < 0x2000;
      v156 = v151 < 2048 && v150 < 2048;
      v157 = v151 < 2048 && v150 < 1024;
      v158 = v151 < 0x2000 && v150 < 0x2000;
      v159 = v151 < 0x2000 && v150 < 2048;
      v160 = v150 < 4096;
      if (v151 >= 0x2000)
      {
        v160 = 0;
      }

      v161 = v150 < 0x8000;
      v162 = v151 < 0x2000 && v150 < 0x8000;
      v163 = v150 < 0x4000;
      v164 = vsubq_f32(v131, vdupq_lane_s32(*v137.f32, 0));
      v164.i32[3] = 0;
      v165 = v130;
      v165.i32[3] = 0;
      v166 = vsubq_f32(v164, v165);
      v167 = vmaxvq_f32(vmaxq_f32(v166, vsubq_f32(v119, v166)));
      if (v151 >= 0x2000)
      {
        v163 = 0;
      }

      v168 = v151 < 0x4000;
      if (v161 && v168)
      {
        v169 = 4;
      }

      else
      {
        v169 = 5;
      }

      v170 = v415 + 5 * v118;
      if (v152 && v168)
      {
        v171 = 3;
      }

      else
      {
        v171 = v169;
      }

      v172 = v151 < 1024;
      if (v153 && v168)
      {
        v171 = 2;
      }

      v173 = v151 < 4096;
      if (v153 && v172)
      {
        v171 = 1;
      }

      if (v163 && v167 < 0x2000)
      {
        v174 = 0;
      }

      else
      {
        v174 = 8;
      }

      v175 = v167 < 4096;
      if (v162 && v175)
      {
        v174 = 1;
      }

      if (v160 && v175)
      {
        v174 = 2;
      }

      if (v158 && v167 < 2048)
      {
        v174 = 3;
      }

      v176 = v167 < 512;
      if (v155 && v176)
      {
        v177 = 4;
      }

      else
      {
        v177 = v174;
      }

      if (v159 && v167 < 1024)
      {
        v177 = 5;
      }

      if (v156 && v167 < 256)
      {
        v178 = 6;
      }

      else
      {
        v178 = v177;
      }

      v147 = !v157 || !v176;
      v179 = 7;
      if (v147)
      {
        v179 = v178;
      }

      if (v154 && v173)
      {
        v180 = 0;
      }

      else
      {
        v180 = v171;
      }

      v181 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::rgbo_error_scales[v180];
      v182 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::rgb_error_scales[v179];
      v183 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v130, v130, 8uLL)), vadd_f32(vzip1_s32(*v131.f32, *v130.f32), vzip2_s32(*v131.f32, *v130.f32))), vdup_n_s32(0x3EAAAAABu));
      v389 = vsub_f32(v183, vdup_lane_s32(v183, 1)).f32[0];
      memset_pattern16(v128, &xmmword_18622EEE0, 0x80uLL);
      v185 = 0;
      v186 = 0x202020202020202;
      v187 = 0x707070707070707;
      v188 = v391;
      v189 = vextq_s8(v188, v188, 8uLL).u64[0];
      v190 = v409 + 84 * v118;
      vst4_s8(v190, *&v186);
      v191 = flt_186232BE8[v389 < 3968.0];
      v192 = v182 * 0.01;
      v127 = 0.5;
      if (v389 < 960.0)
      {
        v191 = 0.002;
      }

      v194 = v170[2];
      v193 = v170[3];
      v195 = v170[1];
      v196 = v125;
      v197 = v126;
      do
      {
        v198 = *&compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::baseline_quant_error[v185 + 4] * v138;
        v199 = (v120 * v198) + (v120 * v198);
        *v196 = v123;
        *(v196 - 1) = 11;
        *(v197 - 1) = v193 + (v139 + (v199 * v192));
        *v197 = v140 + (v139 + (v199 + ((v379.f32[3] * v198) + (v379.f32[3] * v198))));
        *(v197 - 3) = (v193 + (v139 + (v199 * v191))) + v194;
        *(v197 - 2) = (v193 + (v139 + (v199 * (v181 * 0.0015)))) + v195;
        *(v196 - 3) = 1794;
        ++v185;
        v197 += 4;
        v196 += 4;
      }

      while (v185 != 13);
    }

    else
    {
      memset_pattern16(v128, &xmmword_18622EEE0, 0x40uLL);
      *(v409 + 84 * v118) = v376;
      v200 = 0.625;
      if (*(v129 + 17))
      {
        v201 = v127;
      }

      else
      {
        v200 = 1.0;
        v201 = 1.0;
      }

      if (*(v129 + 16))
      {
        v202 = v127;
      }

      else
      {
        v202 = 1.0;
      }

      v203 = 0.25;
      if (!*(v129 + 16))
      {
        v203 = 1.0;
      }

      v204 = *v129;
      v206 = v129[2];
      v205 = v129[3];
      v207 = v393;
      v208 = v397;
      v209 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::baseline_quant_error;
      for (i = 4; i != 21; ++i)
      {
        if (i > 0x12)
        {
          v202 = 1.0;
        }

        v211 = *v209++;
        v212 = v211;
        if (i > 0x12)
        {
          v203 = 1.0;
        }

        v213 = (v120 * v138) * v212;
        v214 = ((v379.f32[3] * v138) + (v120 * v138)) * v212;
        *v207 = 12;
        v215 = v140 + (v139 + ((v200 * v214) * v202));
        v216 = (v139 + ((v201 * v213) * v203)) + v205;
        if ((v140 + (v139 + (v214 + v204))) >= v216)
        {
          v217 = 8;
        }

        else
        {
          v216 = v140 + (v139 + (v214 + v204));
          v217 = 10;
        }

        v218 = (v139 + v213) + v205;
        *(v207 - 1) = v217;
        v219 = (v140 + (v139 + v214)) + v206;
        *(v208 - 1) = v216;
        *v208 = v215;
        if ((v218 + v204) >= v219)
        {
          v220 = 4;
        }

        else
        {
          v219 = v218 + v204;
          v220 = 6;
        }

        *(v207 - 2) = v220;
        *(v208 - 3) = v218 + v206;
        *(v208 - 2) = v219;
        *(v207 - 3) = 0;
        v208 += 4;
        v207 += 4;
      }
    }

    ++v118;
    v126 += 84;
    v125 += 84;
    v397 += 84;
    v393 += 84;
    v221 = v387;
    v119 = 0uLL;
  }

  while (v118 != v387);
  v222 = a13 + 157120;
  v223 = a13 + 165312;
  v224 = a13 + 167360;
  v225 = v375 & 0xFFFFFFFC;
  v226 = vdupq_n_s32(0x7149F2CAu);
  *(v222 + 4 * v225) = v226;
  *(v223 + v225) = 0;
  *(v224 + v225) = 0;
  v227 = v374;
  v228 = (v374 - 1) & 0xFFFFFFFC;
  *(v222 + 4 * v228) = v226;
  v385 = a13 + 169408;
  *(v223 + v228) = 0;
  *(v224 + v228) = 0;
  if (v387 > 2)
  {
    v380 = a13 + 165312;
    v378 = a13 + 167360;
    v383 = v375 & 0xFFFFFFFC;
    if (v387 == 3)
    {
      bzero(&v401, 0x348uLL);
      bzero(v400, 0x276uLL);
      for (j = 0; j != 840; j += 40)
      {
        memset_pattern16(&v401 + j, &xmmword_18622EEE0, 0x28uLL);
      }

      v266 = &v409[11] + 8;
      v267 = &v413;
      v268 = &v407;
      v269 = &v400[7] + 10;
      v270 = 4;
      do
      {
        v271 = 0;
        v272 = v269;
        v273 = v268;
        do
        {
          v274 = 0;
          v275 = v272;
          v276 = v273;
          do
          {
            if (v271 >= v274)
            {
              v277 = v274;
            }

            else
            {
              v277 = v271;
            }

            if (v271 <= v274)
            {
              v278 = v274;
            }

            else
            {
              v278 = v271;
            }

            if (v278 - v277 <= 1)
            {
              v279 = 0;
              v280 = v275;
              do
              {
                if (v279 >= v277)
                {
                  v281 = v277;
                }

                else
                {
                  v281 = v279;
                }

                if (v279 <= v278)
                {
                  v282 = v278;
                }

                else
                {
                  v282 = v279;
                }

                if (v282 - v281 <= 1)
                {
                  v283 = fminf((*(&v410[v270] + v271) + *&v411[16 * v270 + 196 + 4 * v274]) + v267[v279], 1.0e10);
                  if (v283 <= *&v276[v279])
                  {
                    *&v276[v279] = v283;
                    *(v280 - 2) = *(v409 + 4 * v270 + v271);
                    *(v280 - 1) = *(&v409[5] + 4 * v270 + v274 + 4);
                    *v280 = v266[v279];
                  }
                }

                ++v279;
                v280 += 3;
              }

              while (v279 != 4);
            }

            ++v274;
            ++v276;
            v275 += 3;
          }

          while (v274 != 4);
          ++v271;
          ++v273;
          v272 += 3;
        }

        while (v271 != 4);
        ++v270;
        v266 += 4;
        v267 += 4;
        v268 += 10;
        v269 += 30;
      }

      while (v270 != 21);
      if (v375)
      {
        compute_ideal_endpoint_formats();
      }

      if (v374)
      {
        v284 = 0;
        v249 = -1;
        v285 = 1.0e30;
        v235 = v373;
        v221 = v387;
        v237 = a11;
        v236 = a12;
        v239 = a9;
        v238 = a10;
        v223 = a13 + 165312;
        v224 = a13 + 167360;
        LODWORD(v225) = v375 & 0xFFFFFFFC;
        do
        {
          if (*(v372 + 4 * v284) >= 1.0e30)
          {
            *(v222 + 4 * v284) = 1900671690;
          }

          else
          {
            v286 = 0;
            v287 = *(v371 + v284);
            v288 = v385 + 4 * v284;
            v289 = &quant_mode_table[v287 + 384];
            v290 = -7;
            v291 = &v401;
            v292 = 1.0e30;
            do
            {
              v294 = *v289;
              v289 += 128;
              v293 = v294;
              if (v294 < 4)
              {
                break;
              }

              v295 = 10 * v293;
              if (*&v291[v295] < v292)
              {
                v292 = *&v291[v295];
                v286 = v290 + 10;
              }

              ++v291;
              v261 = __CFADD__(v290++, 1);
            }

            while (!v261);
            v296 = &quant_mode_table[128 * v286 + v287];
            v297 = *v296;
            LOBYTE(v296) = v296[5];
            *(v380 + v284) = v297;
            *(v378 + v284) = v296;
            if (v297 <= 3)
            {
              *(v288 + 2) = 0;
              *v288 = 0;
            }

            else
            {
              v298 = v400 + 30 * v297 + 3 * v286 - 9;
              *v288 = *v298;
              *(v288 + 2) = v298[2];
            }

            v299 = v292 + *(v372 + 4 * v284);
            *(v222 + 4 * v284) = v299;
            if (v299 < v285)
            {
              v249 = v284;
              v285 = v299;
            }
          }

          ++v284;
        }

        while (v284 != v374);
        goto LABEL_272;
      }
    }

    else
    {
      if (v387 != 4)
      {
        goto LABEL_298;
      }

      bzero(&v401, 0x444uLL);
      bzero(v400, 0x444uLL);
      for (k = 0; k != 1092; k += 52)
      {
        memset_pattern16(&v401 + k, &xmmword_18622EEE0, 0x34uLL);
      }

      v314 = &v409[16] + 12;
      v315 = &v414;
      v316 = &v408;
      v317 = &v400[13] + 3;
      v318 = 4;
      do
      {
        v319 = 0;
        v394 = v317;
        v398 = v316;
        do
        {
          v320 = 0;
          v321 = v317;
          v322 = v316;
          do
          {
            if (v319 >= v320)
            {
              v323 = v320;
            }

            else
            {
              v323 = v319;
            }

            if (v319 <= v320)
            {
              v324 = v320;
            }

            else
            {
              v324 = v319;
            }

            if (v324 - v323 <= 1)
            {
              v325 = 0;
              v326 = v321;
              v327 = v322;
              do
              {
                if (v325 >= v323)
                {
                  v328 = v323;
                }

                else
                {
                  v328 = v325;
                }

                if (v325 <= v324)
                {
                  v329 = v324;
                }

                else
                {
                  v329 = v325;
                }

                if (v329 - v328 <= 1)
                {
                  v330 = 0;
                  v331 = v326;
                  do
                  {
                    if (v330 >= v328)
                    {
                      v332 = v328;
                    }

                    else
                    {
                      v332 = v330;
                    }

                    if (v330 <= v329)
                    {
                      v333 = v329;
                    }

                    else
                    {
                      v333 = v330;
                    }

                    if (v333 - v332 <= 1)
                    {
                      v334 = fminf(((*(&v410[v318] + v319) + *&v411[16 * v318 + 196 + 4 * v320]) + *&v412[16 * v318 + 272 + 4 * v325]) + v315[v330], 1.0e10);
                      if (v334 <= *&v327[v330])
                      {
                        *&v327[v330] = v334;
                        *(v331 - 3) = *(v409 + 4 * v318 + v319);
                        *(v331 - 2) = *(&v409[5] + 4 * v318 + v320 + 4);
                        *(v331 - 1) = *(&v409[10] + 4 * v318 + v325 + 8);
                        *v331 = v314[v330];
                      }
                    }

                    ++v330;
                    v331 += 4;
                  }

                  while (v330 != 4);
                }

                ++v325;
                ++v327;
                v326 += 4;
              }

              while (v325 != 4);
            }

            ++v320;
            ++v322;
            v321 += 4;
          }

          while (v320 != 4);
          ++v319;
          ++v316;
          v317 += 4;
        }

        while (v319 != 4);
        ++v318;
        v314 += 4;
        v315 += 4;
        v316 = v398 + 13;
        v317 = v394 + 52;
      }

      while (v318 != 21);
      if (v375)
      {
        compute_ideal_endpoint_formats();
      }

      v227 = v374;
      if (v374)
      {
        v335 = 0;
        v249 = -1;
        v336 = 1.0e30;
        v235 = v373;
        v221 = v387;
        v237 = a11;
        v236 = a12;
        v239 = a9;
        v238 = a10;
        v223 = a13 + 165312;
        v224 = a13 + 167360;
        LODWORD(v225) = v375 & 0xFFFFFFFC;
        do
        {
          if (*(v372 + 4 * v335) >= 1.0e30)
          {
            *(v222 + 4 * v335) = 1900671690;
          }

          else
          {
            v337 = 0;
            v338 = *(v371 + v335);
            v339 = &quant_mode_table[v338 + 512];
            v340 = -6;
            v341 = &v401;
            v342 = 1.0e30;
            do
            {
              v344 = *v339;
              v339 += 128;
              v343 = v344;
              if (v344 < 4)
              {
                break;
              }

              v345 = 13 * v343;
              if (*&v341[v345] < v342)
              {
                v342 = *&v341[v345];
                v337 = v340 + 10;
              }

              ++v341;
              v261 = __CFADD__(v340++, 1);
            }

            while (!v261);
            v346 = &quant_mode_table[128 * v337 + v338];
            v347 = *v346;
            LOBYTE(v346) = v346[8];
            *(v380 + v335) = v347;
            *(v378 + v335) = v346;
            if (v347 <= 3)
            {
              *(v385 + 4 * v335) = 0;
            }

            else
            {
              *(v385 + 4 * v335) = *(&v400[-1] + 13 * v347 + v337);
            }

            v348 = v342 + *(v372 + 4 * v335);
            *(v222 + 4 * v335) = v348;
            if (v348 < v336)
            {
              v249 = v335;
              v336 = v348;
            }
          }

          ++v335;
        }

        while (v335 != v374);
        goto LABEL_272;
      }
    }

    v249 = -1;
    v235 = v373;
    v221 = v387;
    v237 = a11;
    v236 = a12;
    v239 = a9;
    v238 = a10;
    v223 = a13 + 165312;
    v224 = a13 + 167360;
LABEL_271:
    LODWORD(v225) = v383;
    goto LABEL_272;
  }

  if (v387 != 1)
  {
    if (v387 == 2)
    {
      v383 = v375 & 0xFFFFFFFC;
      bzero(&v401, 0x24CuLL);
      v229 = 0;
      memset(v400, 0, 294);
      do
      {
        memset_pattern16(&v401 + v229, &xmmword_18622EEE0, 0x1CuLL);
        v229 += 28;
      }

      while (v229 != 588);
      v230 = &v409[6] + 4;
      v231 = v412;
      v232 = &v400[3] + 9;
      v233 = &v406;
      v234 = 4;
      v235 = v373;
      v237 = a11;
      v236 = a12;
      v239 = a9;
      v238 = a10;
      do
      {
        v240 = 0;
        v241 = v233;
        v242 = v232;
        do
        {
          v243 = 0;
          v244 = v240;
          v245 = v242;
          do
          {
            if (v244 >= 0)
            {
              v246 = v244;
            }

            else
            {
              v246 = -v244;
            }

            if (v246 <= 1)
            {
              v247 = fminf(*(&v410[v234] + v240) + *&v231[4 * v243], 1.0e10);
              if (v247 <= *&v241[v243])
              {
                *&v241[v243] = v247;
                *(v245 - 1) = *(v409 + 4 * v234 + v240);
                *v245 = v230[v243];
              }
            }

            ++v243;
            v245 += 2;
            --v244;
          }

          while (v243 != 4);
          ++v240;
          v242 += 2;
          ++v241;
        }

        while (v240 != 4);
        ++v234;
        v230 += 4;
        v231 += 16;
        v232 += 14;
        v233 += 7;
      }

      while (v234 != 21);
      if (v375)
      {
        compute_ideal_endpoint_formats();
      }

      if (v374)
      {
        v248 = 0;
        v249 = -1;
        v250 = 1.0e30;
        v221 = v387;
        do
        {
          if (*(v372 + 4 * v248) >= 1.0e30)
          {
            *(v222 + 4 * v248) = 1900671690;
          }

          else
          {
            v251 = 0;
            v252 = *(v371 + v248);
            v253 = (v385 + 4 * v248);
            v254 = &quant_mode_table[v252 + 256];
            v255 = -7;
            v256 = &v401;
            v257 = 1.0e30;
            do
            {
              v259 = *v254;
              v254 += 128;
              v258 = v259;
              if (v259 < 4)
              {
                break;
              }

              v260 = 7 * v258;
              if (*&v256[v260] < v257)
              {
                v257 = *&v256[v260];
                v251 = v255 + 9;
              }

              ++v256;
              v261 = __CFADD__(v255++, 1);
            }

            while (!v261);
            v262 = &quant_mode_table[128 * v251 + v252];
            v263 = *v262;
            LOBYTE(v262) = v262[2];
            *(v223 + v248) = v263;
            *(v224 + v248) = v262;
            if (v263 <= 3)
            {
              *v253 = 0;
            }

            else
            {
              *v253 = *(v400 + 7 * v263 + v251 - 2);
            }

            v264 = v257 + *(v372 + 4 * v248);
            *(v222 + 4 * v248) = v264;
            if (v264 < v250)
            {
              v249 = v248;
              v250 = v264;
            }
          }

          ++v248;
        }

        while (v248 != v374);
      }

      else
      {
        v249 = -1;
        v221 = v387;
      }

      goto LABEL_271;
    }

LABEL_298:
    compute_ideal_endpoint_formats();
  }

  v235 = v373;
  v237 = a11;
  v236 = a12;
  v239 = a9;
  v238 = a10;
  if (v375 >= v374)
  {
    v403 = 0;
    v402 = 0;
    v404 = 0;
    v405 = 0;
    v401 = -1;
    goto LABEL_274;
  }

  v300 = v375;
  v249 = -1;
  v301 = 1.0e30;
  do
  {
    if (*(v372 + 4 * v300) >= 1.0e30)
    {
      *(v222 + 4 * v300) = 1900671690;
    }

    else
    {
      v302 = 0;
      v303 = 0;
      v304 = *(v371 + v300);
      v305 = &quant_mode_table[v304 + 128];
      v306 = 1.0e30;
      do
      {
        v308 = *v305;
        v305 += 128;
        v307 = v308;
        if (v308 >= 4)
        {
          v309 = &v410[v307];
          if (v309[v302] < v306)
          {
            v306 = v309[v302];
            v303 = v302;
          }
        }

        ++v302;
      }

      while (v302 != 4);
      v310 = quant_mode_table[128 * v303 + 128 + v304];
      v311 = (v385 + 4 * v300);
      *(v223 + v300) = v310;
      *v311 = 0;
      if (v310 > 3)
      {
        *v311 = *(v409 + 4 * v310 + v303);
      }

      v312 = v306 + *(v372 + 4 * v300);
      *(v222 + 4 * v300) = v312;
      *(v224 + v300) = *(v223 + v300);
      if (v312 < v301)
      {
        v249 = v300;
        v301 = v312;
      }
    }

    ++v300;
  }

  while (v300 != v374);
LABEL_272:
  v403 = 0;
  v402 = 0;
  v404 = 0;
  v405 = 0;
  v401 = v249;
  if ((v249 & 0x80000000) == 0)
  {
    *(v222 + 4 * v249) = 1900671690;
  }

LABEL_274:
  if (v235 >= 2)
  {
    v349 = vorrq_s8(vdupq_n_s32(v225), xmmword_186205980);
    v350 = 1;
    v351 = vdupq_n_s32(0x7149F2CAu);
    v352.i64[0] = 0x400000004;
    v352.i64[1] = 0x400000004;
    do
    {
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = v351;
      if (v225 < v227)
      {
        v355 = v225;
        v184 = v349;
        v354 = v351;
        do
        {
          v356 = *(v222 + 4 * v355);
          v357 = vcgtq_f32(v354, v356);
          v354 = vbslq_s8(v357, v356, v354);
          v353 = vbslq_s8(v357, v184, v353);
          v184 = vaddq_s32(v184, v352);
          v355 += 4;
        }

        while (v355 < v227);
      }

      *&v184 = vminvq_f32(v354);
      v358 = vceqq_f32(v354, vdupq_lane_s32(*&v184, 0));
      v184 = *&vmvnq_s8(v358) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v359 = vminvq_s32(vorrq_s8(v184, vandq_s8(v353, v358)));
      *(&v401 + v350) = v359;
      if ((v359 & 0x80000000) != 0)
      {
        break;
      }

      *(v222 + 4 * v359) = 1900671690;
      ++v350;
    }

    while (v350 != v235);
  }

  v360 = 0;
  if (v235)
  {
    while (1)
    {
      v361 = *(&v401 + v360);
      if ((v361 & 0x80000000) != 0)
      {
        break;
      }

      *(v238 + 4 * v360) = v361;
      *(v237 + 4 * v360) = *(v223 + v361);
      v362 = *(v224 + v361);
      *(v236 + 4 * v360) = v362;
      if ((*(v237 + 4 * v360) - 21) <= 0xFFFFFFEE)
      {
        compute_ideal_endpoint_formats();
      }

      if ((v362 - 21) < 0xFFFFFFEF)
      {
        compute_ideal_endpoint_formats();
      }

      v363 = (a13 + 169408 + 4 * v361);
      v364 = v221;
      v365 = v239;
      do
      {
        v366 = *v363++;
        *v365++ = v366;
        --v364;
      }

      while (v364);
      ++v360;
      v239 += 4;
      if (v360 == v235)
      {
        v360 = v235;
        break;
      }
    }
  }

  if (v360 >= v235)
  {
    return v235;
  }

  else
  {
    return v360;
  }
}

void compute_ideal_endpoint_formats()
{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1255, "start_block_mode == 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1221, "start_block_mode == 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1188, "start_block_mode == 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1339, "quant_level_mod[i] >= QUANT_6 && quant_level_mod[i] <= QUANT_256");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1338, "quant_level[i] >= QUANT_6 && quant_level[i] <= QUANT_256");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1248, "partition_count == 4");
}

{
  __assert_rtn("compute_error_squared_rgb_single_partition", "astcenc_pick_best_endpoint_format.cpp", 90, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_endpoint_formats", "astcenc_pick_best_endpoint_format.cpp", 1109, "partition_count > 0");
}

void prepare_angular_tables(void)
{
  v0 = 0;
  v1 = &sin_table;
  v2 = &cos_table;
  do
  {
    v3 = 0;
    ++v0;
    v4 = v2;
    v5 = v1;
    do
    {
      v6 = __sincosf_stret((v0 * 0.099733) * v3);
      *v5 = v6.__sinval;
      v5 += 32;
      *v4 = v6.__cosval;
      v4 += 32;
      ++v3;
    }

    while (v3 != 64);
    ++v1;
    ++v2;
  }

  while (v0 != 32);
}

void compute_angular_endpoints_1plane(int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = 8;
  if (a1)
  {
    v5 = 4;
  }

  v6 = *(a2 + v5);
  if (!v6)
  {
    compute_angular_endpoints_1plane();
  }

  v9 = 0;
  v10 = (a5 + 187840);
  v11 = (a5 + 204224);
  v26 = a5 + 207008;
  v27 = a5 + 204224;
  v12 = ~(-1 << (a4 + 1));
  v13 = (a2 + 66);
  v14 = (a2 + 594);
  v15 = v6 << 6;
  v16 = (a2 + 66);
  do
  {
    v17 = *v16;
    v16 += 3;
    if ((v17 & v12) != 0)
    {
      v18 = *(v13 - 2);
      if (v18 >= a4)
      {
        v18 = a4;
      }

      if (v18 >= 7)
      {
        v19 = 7;
      }

      else
      {
        v19 = v18;
      }

      compute_angular_endpoints_for_quant_levels(*v14, (a3 + 4 * (v9 & 0xFFFFFFC0)), v19, v11, v11 + 696);
    }

    v9 += 64;
    v11 += 8;
    v14 += 129888;
    v13 = v16;
  }

  while (v15 != v9);
  v20 = 20;
  if (a1)
  {
    v20 = 16;
  }

  v21 = *(a2 + v20);
  if (!v21)
  {
    compute_angular_endpoints_1plane();
  }

  v22 = (a2 + 11304946);
  do
  {
    if (v22[3])
    {
      compute_angular_endpoints_1plane();
    }

    v23 = v22[1];
    if (v23 > 7)
    {
      *v10 = 0.0;
      v25 = 1.0;
    }

    else
    {
      v24 = *v22;
      *v10 = *(v27 + 32 * v24 + 4 * v23);
      v25 = *(v26 + 32 * v24 + 4 * v23);
    }

    v10[2048] = v25;
    ++v10;
    v22 += 6;
    --v21;
  }

  while (v21);
}

void compute_angular_endpoints_for_quant_levels(unsigned int a1, const float *a2, int a3, float *a4, float *a5)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = steps_for_quant_level[a3];
  memset(v94, 0, sizeof(v94));
  if (!a1)
  {
    compute_angular_endpoints_for_quant_levels();
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  v12 = vdupq_n_s32(0x427C0000u);
  memset(__b, 0, 256);
  v13.i64[0] = 0x3F0000003FLL;
  v13.i64[1] = 0x3F0000003FLL;
  v14 = vdupq_n_s32(0x4B400000u);
  do
  {
    __b[v9 / 4] = vandq_s8(vaddq_f32(vmulq_f32(*&a2[v9], v12), v14), v13);
    v10 += 4;
    v9 += 4;
  }

  while (v10 < a1);
  v15 = 0;
  v16 = 4 * a1;
  v83 = vdupq_n_s32(0x3E8F5C29u);
  v84 = vdupq_n_s32(0x3FC90FDBu);
  __asm { FMOV            V0.4S, #1.0 }

  v87 = _Q0;
  v81 = vdupq_n_s32(0x3E22F983u);
  v82 = vdupq_n_s32(0x40490FDBu);
  do
  {
    v22 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v25 = *(__b + v22) << 7;
      v24 = vaddq_f32(v24, *(&cos_table[v15] + v25));
      v23 = vaddq_f32(v23, *(&sin_table[v15] + v25));
      v22 += 4;
    }

    while (v16 != v22);
    v85 = v24;
    v86 = v23;
    {
      compute_angular_endpoints_for_quant_levels();
    }

    v26 = vdivq_f32(v86, v85);
    v27 = vmaxq_f32(v26, vsubq_f32(0, v26));
    v28 = vcgtq_f32(vmaxq_f32(v27, vsubq_f32(0, v27)), v87);
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v30 = vorrq_s8(vandq_s8(v27, v29), v84);
    v31 = vbslq_s8(v28, vdivq_f32(v87, v27), v27);
    v32 = vdivq_f32(v31, vaddq_f32(vmulq_f32(vmulq_f32(v31, v31), v83), v87));
    v33 = vbslq_s8(v28, vsubq_f32(v30, v32), v32);
    v94[v15 / 4] = vmulq_f32(veorq_s8(vandq_s8(v86, v29), vbslq_s8(vcgtq_u32(select_msb(vfloat4,vfloat4,vmask4)::msb, v85), v33, vsubq_f32(v82, v33))), v81);
    v15 += 4;
  }

  while (v15 < v5);
  v34 = 0;
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  v35 = xmmword_186232C80;
  v36.i64[0] = 0x200000002;
  v36.i64[1] = 0x200000002;
  v37 = vdupq_n_s32(v5 + 3);
  memset(v89, 0, sizeof(v89));
  __asm { FMOV            V3.4S, #4.0 }

  v39 = v87;
  do
  {
    v40.i64[0] = 0xC3000000C3000000;
    v40.i64[1] = 0xC3000000C3000000;
    v41.i64[0] = 0x4300000043000000;
    v41.i64[1] = 0x4300000043000000;
    v42 = a2;
    v43 = v11;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    do
    {
      v47 = *v42++;
      v48 = vsubq_f32(vmulq_n_f32(v35, v47), v94[v34 / 4]);
      v49 = vrndnq_f32(v48);
      v50 = vsubq_f32(v48, v49);
      v46 = vaddq_f32(v46, vmulq_f32(v50, v50));
      v51 = vcgtq_f32(v41, v49);
      v41 = vbslq_s8(v51, v49, v41);
      v52 = vbicq_s8(v44, v51);
      v53 = vaddq_f32(v50, v50);
      v44 = vbslq_s8(vceqq_f32(v49, v41), vsubq_f32(vaddq_f32(v52, v39), v53), v52);
      v54 = vcgtq_f32(v49, v40);
      v40 = vbslq_s8(v54, v49, v40);
      v55 = vbicq_s8(v45, v54);
      v45 = vbslq_s8(vceqq_f32(v49, v40), vaddq_f32(v53, vaddq_f32(v55, v39)), v55);
      --v43;
    }

    while (v43);
    v93[v34 / 4] = v41;
    v92[v34 / 4] = vmaxq_s32(vminq_s32(vcvtq_s32_f32(vaddq_f32(vsubq_f32(v40, v41), v39)), v37), v36);
    v56 = vdivq_f32(v39, v35);
    v57 = vmulq_f32(v56, v56);
    v91[v34 / 4] = vmulq_f32(v57, v46);
    v90[v34 / 4] = vmulq_f32(v57, v44);
    v89[v34 / 4] = vmulq_f32(v57, v45);
    v35 = vaddq_f32(v35, _Q3);
    v34 += 4;
  }

  while (v34 < v5);
  bzero(__b, 0x240uLL);
  memset_pattern16(__b, &unk_186232CA0, 16 * v5 + 64);
  v61 = 0;
  if (v5 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = v5;
  }

  do
  {
    v58.i32[0] = *(v91 + v61);
    v59.f32[0] = v58.f32[0] + *(v90 + v61);
    v63 = *(v89 + v61);
    v64 = &__b[*(v92 + v61)];
    LODWORD(v65) = v58.i32[0];
    *(&v65 + 1) = v61;
    v66.i64[1] = 1065353216;
    *v66.i32 = v59.f32[0];
    v67 = v64[-2];
    *&v66.i32[1] = v61;
    v68 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v64[-1], v59)), 0)), v66, v64[-1]);
    v59.f32[0] = v59.f32[0] + v63;
    *&v69 = v58.f32[0] + v63;
    v60.f32[0] = *&v69;
    *v64 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(*v64, v58)), 0)), v65, *v64);
    *(&v69 + 1) = v61;
    v70 = vcgtq_f32(v68, v60);
    v60.i64[1] = 1065353216;
    v60.i32[0] = v59.i32[0];
    v60.f32[1] = v61;
    v71 = vmovl_s16(vdup_lane_s16(vmovn_s32(v70), 0));
    v58 = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v67, v59)), 0)), v60, v67);
    v64[-2] = v58;
    v64[-1] = vbslq_s8(v71, v69, v68);
    ++v61;
  }

  while (v62 != v61);
  v72 = steps_for_quant_level;
  if ((a3 + 1) > 1)
  {
    v73 = (a3 + 1);
  }

  else
  {
    v73 = 1;
  }

  do
  {
    v74 = *v72++;
    v75 = &__b[v74];
    v76 = v75[2];
    LODWORD(v75) = v75[1] & ~(v75[1] >> 31);
    v77 = *(v93 + v75) + v76;
    v78 = 1.0 / (v75 + 1.0);
    v79 = *(v94 + v75);
    *a4++ = (v79 + v77) * v78;
    *a5++ = (v79 + ((v77 + v74) + -1.0)) * v78;
    --v73;
  }

  while (v73);
}

uint64_t compute_angular_endpoints_2planes(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a1[2];
  if (!v4)
  {
    compute_angular_endpoints_2planes();
  }

  v6 = 0;
  v7 = 0;
  v8 = (a4 + 204224);
  v32 = a4 + 226176;
  v33 = a4 + 207008;
  v9 = (a4 + 228960);
  v37 = ~(-1 << (a3 + 1));
  v10 = a1 + 17;
  v11 = a1 + 594;
  v31 = a4 + 228960;
  v34 = a4 + 204224;
  v12 = a1 + 17;
  v35 = a3;
  do
  {
    v13 = *v12;
    v12 = (v12 + 6);
    if ((v13 & v37) != 0)
    {
      v14 = *v11;
      v15 = *(v10 - 3);
      if (v15 >= a3)
      {
        v15 = a3;
      }

      if (v15 >= 7)
      {
        v16 = 7;
      }

      else
      {
        v16 = v15;
      }

      compute_angular_endpoints_for_quant_levels(*v11, (a2 + 4 * (v6 & 0xFFFFFFC0)), v16, v8, v8 + 696);
      compute_angular_endpoints_for_quant_levels(v14, (a2 + 4 * (v6 & 0xFFFFFFC0) + 128), v16, v9 - 696, v9);
      a3 = v35;
      v4 = a1[2];
    }

    ++v7;
    v6 += 64;
    v8 += 8;
    v9 += 8;
    v11 += 129888;
    v10 = v12;
  }

  while (v7 < v4);
  v18 = a1[5];
  v17 = a1[6];
  result = v33;
  if (v18 < v17)
  {
    v20 = a4 + 4 * v18;
    v21 = (v20 + 217984);
    v22 = v17 - v18;
    v23 = a1 + 6 * v18 + 11304947;
    v24 = (v20 + 187840);
    v25 = v23;
    do
    {
      v27 = *v25;
      v25 += 6;
      v26 = v27;
      if (v27 > 7uLL)
      {
        *v24 = 0;
        v24[2048] = 1065353216;
        v29 = 1.0;
        *(v21 - 2048) = 0.0;
      }

      else
      {
        v28 = *(v23 - 1);
        *v24 = *(v34 + 32 * v28 + 4 * v26);
        v24[2048] = *(v33 + 32 * v28 + 4 * v26);
        *(v21 - 2048) = *(v32 + 32 * v28 + 4 * v26);
        v29 = *(v31 + 32 * v28 + 4 * v26);
      }

      *v21++ = v29;
      ++v24;
      v23 = v25;
      --v22;
    }

    while (v22);
  }

  return result;
}

void compute_angular_endpoints_1plane()
{
  __assert_rtn("compute_angular_endpoints_1plane", "astcenc_weight_align.cpp", 386, "!bm.is_dual_plane");
}

{
  __assert_rtn("compute_angular_endpoints_1plane", "astcenc_weight_align.cpp", 382, "max_block_modes > 0");
}

{
  __assert_rtn("compute_angular_endpoints_1plane", "astcenc_weight_align.cpp", 352, "max_decimation_modes > 0");
}

void compute_angular_endpoints_for_quant_levels()
{
  {
    *&v0 = 0x8000000080000000;
    *(&v0 + 1) = 0x8000000080000000;
    select_msb(vfloat4,vfloat4,vmask4)::msb = v0;
  }
}

{
  __assert_rtn("compute_angular_offsets", "astcenc_weight_align.cpp", 99, "weight_count > 0");
}

void init_partition_tables(block_size_descriptor *a1, double a2, uint32x2_t a3)
{
  generate_one_partition_info_entry(a1, 1, 0, 0, a1 + 14659568, a2, a3);
  *(a1 + 8) = 1;
  *(a1 + 12) = 1;
  operator new[]();
}

BOOL generate_one_partition_info_entry(unsigned __int8 *a1, signed int a2, int a3, int a4, uint64_t a5, double a6, uint32x2_t a7)
{
  v99 = a3;
  v103 = *MEMORY[0x1E69E9840];
  v9 = a1[3];
  v100 = (a5 + 8);
  v102 = 0uLL;
  v10 = a1[2];
  if (a1[2])
  {
    v11 = 0;
    v12 = 0;
    v13 = v9 < 0x20;
    v14 = 65537 * ((-287438703 * (a3 + (a2 << 10) - 1024)) ^ ((-287438703 * (a3 + (a2 << 10) - 1024)) >> 5));
    v15 = v14 ^ (v14 >> 7) ^ ((v14 ^ (v14 >> 7)) >> 3);
    v16 = v15 ^ (v15 << 6);
    v17 = v16 ^ (v16 >> 17);
    v18 = (v16 ^ (v16 >> 17)) >> 12;
    HIDWORD(v19) = v17;
    LODWORD(v19) = v17;
    v20 = (v17 & 0xF) * (v17 & 0xF);
    v21 = (v16 ^ (v16 >> 17)) >> 4;
    v22 = v21 * v21;
    v23 = ((v17 >> 8) & 0xF) * ((v17 >> 8) & 0xF);
    v24 = vdup_n_s32(v16);
    v25 = v18 * v18;
    a7.i32[0] = v16;
    v26 = vshl_u32(v24, 0xFFFFFFF0FFFFFFE8);
    v27 = vshl_u32(v24, 0xFFFFFFEEFFFFFFEALL);
    v24.i32[1] = v16 >> 20;
    v28 = vand_s8(v26, 0xF0000000FLL);
    v29.i32[0] = vshr_n_u32(a7, 0x1CuLL).u32[0];
    v29.i32[1] = vand_s8(v24, 0xF0000000FLL).i32[1];
    v30 = vand_s8(v27, 0xF0000000FLL);
    v31 = vmul_s32(v28, v28);
    v32 = vmul_s32(v29, v29);
    v33 = vmul_s32(v30, v30);
    v34 = ((v16 >> 26) & 0xF) * ((v16 >> 26) & 0xF);
    v35 = ((v19 >> 30) & 0xF) * ((v19 >> 30) & 0xF);
    if ((a3 & 2) != 0)
    {
      v36 = 4;
    }

    else
    {
      v36 = 5;
    }

    if (a2 == 3)
    {
      v37 = 6;
    }

    else
    {
      v37 = 5;
    }

    v38 = v17 >> 14;
    v39 = v17 >> 10;
    v40 = vshl_u32(vdup_n_s32(v17), 0xFFFFFFFAFFFFFFFELL);
    v41 = vdup_n_s32(a2);
    v42 = a5 + 224;
    v43 = a1[1];
    if (v99)
    {
      v44 = v36;
    }

    else
    {
      v44 = v37;
    }

    if (v99)
    {
      v36 = v37;
    }

    if ((v99 & 0x10) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = v36;
    }

    v46 = v20 >> v44;
    v47 = v22 >> v36;
    v48 = v23 >> v44;
    v49 = vshl_u32(v31, vneg_s32(vdup_n_s32(v44)));
    v50 = v25 >> v36;
    v51 = vshl_u32(v32, vneg_s32(vdup_n_s32(v36)));
    v52 = vshl_u32(v33, vneg_s32(vdup_n_s32(v45)));
    v53 = v34 >> v45;
    v54 = v35 >> v45;
    v55 = vcgt_s32(0x300000004, v41);
    v56 = a1[1];
    v57 = v100;
    do
    {
      if (v56)
      {
        v58 = 0;
        v59 = *a1;
        v60 = vmul_s32(v52, vdup_n_s32(v12 << v13));
        do
        {
          if (v59)
          {
            v61 = 0;
            v62 = vadd_s32(vmul_s32(v51, vdup_n_s32(v58 << v13)), v60);
            do
            {
              v63 = (v38 + v46 * (v61 << v13) + v47 * (v58 << v13) + v53 * (v12 << v13)) & 0x3F;
              v64 = vand_s8(vbic_s8(vadd_s32(vmla_s32(v40, v49, vdup_n_s32(v61 << v13)), v62), v55), 0x3F0000003FLL);
              if (a2 >= 2)
              {
                v65 = (v39 + v48 * (v61 << v13) + v50 * (v58 << v13) + v54 * (v12 << v13)) & 0x3F;
              }

              else
              {
                v65 = 0;
              }

              v66 = v64.u32[1];
              v67 = v64.i32[0];
              if (v63 < v65 || ((v68 = 0, v63 >= v64.i32[1]) ? (v69 = v63 >= v64.i32[0]) : (v69 = 0), !v69))
              {
                v70 = vcgt_u32(v64, vdup_n_s32(v65));
                if ((v70.i32[1] | v70.i32[0]))
                {
                  if (v66 >= v67)
                  {
                    v68 = 2;
                  }

                  else
                  {
                    v68 = 3;
                  }
                }

                else
                {
                  v68 = 1;
                }
              }

              v71 = v102.i32[v68];
              v102.i32[v68] = v71 + 1;
              *(v42 + 216 * v68 + v71) = v11++;
              *v57++ = v68;
              ++v61;
              v59 = *a1;
            }

            while (v61 < v59);
            v43 = a1[1];
          }

          ++v58;
        }

        while (v58 < v43);
        v10 = a1[2];
        v56 = v43;
      }

      ++v12;
    }

    while (v12 < v10);
  }

  if (a2)
  {
    v72 = 0;
    v73 = a5 + 239;
    do
    {
      v74 = v102.i32[v72];
      v75 = (v74 + 3) & 0xFFFFFFFC;
      if (v74 < v75)
      {
        v76 = 0;
        v77 = *(v74 + a5 + 224 + 216 * v72 - 1);
        v78 = v75 - v74;
        v79 = vdupq_n_s64(v78 - 1);
        v80 = v73 + v74;
        do
        {
          v81 = vdupq_n_s64(v76);
          v82 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205EC0)));
          if (vuzp1_s8(vuzp1_s16(v82, 14), 14).u8[0])
          {
            *(v80 + v76 - 15) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(v82, 14), 14).i8[1])
          {
            *(v80 + v76 - 14) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205EB0)))), 14).i8[2])
          {
            *(v80 + v76 - 13) = v77;
            *(v80 + v76 - 12) = v77;
          }

          v83 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205EA0)));
          if (vuzp1_s8(14, vuzp1_s16(v83, 14)).i32[1])
          {
            *(v80 + v76 - 11) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(v83, 14)).i8[5])
          {
            *(v80 + v76 - 10) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E90))))).i8[6])
          {
            *(v80 + v76 - 9) = v77;
            *(v80 + v76 - 8) = v77;
          }

          v84 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E80)));
          if (vuzp1_s8(vuzp1_s16(v84, 14), 14).u8[0])
          {
            *(v80 + v76 - 7) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(v84, 14), 14).i8[1])
          {
            *(v80 + v76 - 6) = v77;
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E70)))), 14).i8[2])
          {
            *(v80 + v76 - 5) = v77;
            *(v80 + v76 - 4) = v77;
          }

          v85 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E60)));
          if (vuzp1_s8(14, vuzp1_s16(v85, 14)).i32[1])
          {
            *(v80 + v76 - 3) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(v85, 14)).i8[5])
          {
            *(v80 + v76 - 2) = v77;
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_186205E50))))).i8[6])
          {
            *(v80 + v76 - 1) = v77;
            *(v80 + v76) = v77;
          }

          v76 += 16;
        }

        while (((v78 + 15) & 0xFFFFFFFFFFFFFFF0) != v76);
      }

      ++v72;
      v73 += 216;
    }

    while (v72 != a2);
  }

  LOWORD(v86) = v102.i16[0];
  if (v102.i32[0])
  {
    v87 = a4;
    if (v102.i32[1])
    {
      if (v102.i32[2])
      {
        if (v102.i32[3])
        {
          v86 = 4;
        }

        else
        {
          v86 = 3;
        }

        v88 = v86;
      }

      else
      {
        LOWORD(v86) = 2;
        v88 = 2;
      }
    }

    else
    {
      LOWORD(v86) = 1;
      v88 = 1;
    }
  }

  else
  {
    v88 = 0;
    v87 = a4;
  }

  *a5 = v86;
  *(a5 + 2) = v99;
  v89 = &a1[32 * v87 + 14707824];
  v90 = &a1[24 * v87 + 14683248];
  v91 = &a1[16 * v87 + 14666864];
  if (a2 != 2)
  {
    v91 = 0;
  }

  if (a2 != 3)
  {
    v90 = v91;
  }

  if (a2 == 4)
  {
    v92 = v89;
  }

  else
  {
    v92 = v90;
  }

  v93 = vmovn_s32(v102);
  *(a5 + 4) = vuzp1_s8(v93, v93).u32[0];
  if (v92)
  {
    if (a2)
    {
      bzero(v92, 8 * a2);
    }

    if (a1[3])
    {
      v94 = 0;
      if (a1[3] >= 0x40u)
      {
        v95 = 64;
      }

      else
      {
        v95 = a1[3];
      }

      do
      {
        v96 = v100[a1[v94 + 14666800]];
        *(v92 + v96) |= 1 << v94++;
      }

      while (v95 != v94);
    }
  }

  return v88 == a2;
}

void build_partition_table_for_one_partition_count(unsigned __int8 *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v10 = a4 - 1;
  v29 = a1 + 32;
  *&a1[4 * v10 + 32] = 0;
  v31 = a1 + 48;
  *&a1[4 * v10 + 48] = 0;
  if (a2)
  {
    if (a4 > a3)
    {
      return;
    }

    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v28 = v11;
  bzero(v32, 0x400uLL);
  v14 = 0;
  v15 = 0;
  v30 = &a1[2048 * (a4 - 2) + 14660656];
  do
  {
    for (i = 0; i != 1024; ++i)
    {
      if (v15 == 1)
      {
        if (v32[i])
        {
          continue;
        }

        v17 = v14;
        one_partition_info_entry = generate_one_partition_info_entry(a1, a4, i, v14, a5 + 1088 * v14, v12, v13);
LABEL_12:
        v19 = a1[3];
        v20 = a6 + 56 * v14;
        *(v20 + 48) = 0;
        v12 = 0.0;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *v20 = 0u;
        v33[0] = -1;
        v33[1] = -1;
        if (v19)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = *(a5 + 1088 * v17 + 8 + v22);
            v25 = *(v33 + v24);
            if (v25 < 0)
            {
              *(v33 + v24) = v23;
              v25 = v23++;
            }

            *(v20 + 8 * (v22++ >> 5)) |= v25 << (v21 & 0x3E);
            v21 += 2;
          }

          while (v19 != v22);
        }

        if (v14)
        {
          v26 = 0;
          while (1)
          {
            v27 = (a6 + 8 * v26);
            if (*v20 == *v27 && *(v20 + 8) == v27[1] && *(v20 + 16) == v27[2] && *(v20 + 24) == v27[3] && *(v20 + 32) == v27[4] && *(v20 + 40) == v27[5] && *(v20 + 48) == v27[6])
            {
              break;
            }

            v26 += 7;
            if (!--v17)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          if (one_partition_info_entry)
          {
            if (v15)
            {
              continue;
            }

            *(v30 + 2 * i) = v14;
            ++*&v29[4 * v10];
            ++*&v31[4 * v10];
            v32[i] = 1;
LABEL_32:
            ++v14;
            continue;
          }
        }

        if (v15 != 1)
        {
          continue;
        }

        *(v30 + 2 * i) = v14;
        ++*&v31[4 * v10];
        goto LABEL_32;
      }

      v17 = v14;
      one_partition_info_entry = generate_one_partition_info_entry(a1, a4, i, v14, a5 + 1088 * v14, v12, v13);
      if (v15 || one_partition_info_entry)
      {
        goto LABEL_12;
      }
    }

    ++v15;
  }

  while (v15 != v28);
}

uint64_t unpack_weights(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, int32x4_t a14)
{
  v14 = *(a2 + 52);
  v15 = *(a2 + 68);
  v16 = *(a2 + 84);
  v17 = *(a2 + 100);
  if (a4)
  {
    if (*(result + 3))
    {
      v18 = 0;
      v19 = a3 + 6;
      do
      {
        v20 = (v19 + v18);
        v21 = vld1_dup_f32(v20);
        v21.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v21)));
        v22 = v21.u32[0];
        if (v21.i32[0] < 1)
        {
          unpack_weights();
        }

        v23.i64[0] = 0x800000008;
        v23.i64[1] = 0x800000008;
        v24 = a3;
        v25.i64[0] = 0x800000008;
        v25.i64[1] = 0x800000008;
        do
        {
          a13.i32[0] = *(v24 + 222);
          a14.i32[0] = *(v24 + 1086);
          a14 = vmovl_u16(*&vmovl_u8(*a14.i8));
          v26 = vmovl_s16((vmovl_u8(*a13.i8).u64[0] | 0xFF00FF00FF00FF00));
          v25 = vmlaq_s32(v25, a14, vqtbl2q_s8(*&v14, v26));
          a13 = vqtbl2q_s8(*&v16, v26);
          v23 = vmlaq_s32(v23, a14, a13);
          v24 += 216;
          --v22;
        }

        while (v22);
        v27 = 4 * v18;
        *(a5 + v27) = vshrq_n_u32(v25, 4uLL);
        *(a6 + v27) = vshrq_n_u32(v23, 4uLL);
        v18 += 4;
        a3 += 4;
      }

      while (v18 < *(result + 3));
    }
  }

  else if (*(result + 3))
  {
    v28 = 0;
    v29 = a3 + 6;
    do
    {
      v30 = (v29 + v28);
      v31 = vld1_dup_f32(v30);
      v31.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v31)));
      v32 = v31.u32[0];
      if (v31.i32[0] < 1)
      {
        unpack_weights();
      }

      v33.i64[0] = 0x800000008;
      v33.i64[1] = 0x800000008;
      v34 = a3;
      do
      {
        a12.i32[0] = *(v34 + 222);
        a13.i32[0] = *(v34 + 1086);
        a13 = vmovl_u16(*&vmovl_u8(*a13.i8));
        a12 = vqtbl4q_s8(*&v14, vmovl_s16((vmovl_u8(*a12.i8).u64[0] | 0xFF00FF00FF00FF00)));
        v33 = vmlaq_s32(v33, a13, a12);
        v34 += 216;
        --v32;
      }

      while (v32);
      *(a5 + 4 * v28) = vshrq_n_u32(v33, 4uLL);
      v28 += 4;
      a3 += 4;
    }

    while (v28 < *(result + 3));
  }

  return result;
}

float32_t compute_symbolic_block_difference_2plane(unsigned int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    return 1.0e30;
  }

  if (*(a3 + 1) != 1)
  {
    compute_symbolic_block_difference_2plane();
  }

  v6 = *(a2 + 2 * *(a3 + 4) + 11300848);
  if (v6 == 0xFFFF || *(a2 + 28) <= v6)
  {
    symbolic_to_physical();
  }

  if ((*(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304949) & 1) == 0)
  {
    compute_symbolic_block_difference_2plane();
  }

  v10 = a2 + 129888 * *(a2 + 6 * *(a2 + 2 * *(a3 + 4) + 11300848) + 11304946);
  bzero(v59, 0x360uLL);
  bzero(v58, 0x360uLL);
  unpack_weights(a2, a3, v10 + 592, 1, v59, v58, v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = *(a3 + 3);
  v57 = 0uLL;
  v56 = 0uLL;
  v55 = 0;
  v24 = unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v55 + 1, &v55, &v57, &v56, v20, v21, v22, v23);
  v27 = *(a2 + 3);
  if (*(a2 + 3))
  {
    v24.n128_u32[0] = 0;
    v25.i32[0] = a1[10];
    v28 = a4[221];
    v29 = vdupq_lane_s32(v25, 0).u64[0];
    v30 = v59;
    v31 = v58;
    v32 = vceqq_s32(vdupq_n_s32(v19), xmmword_186205980);
    v33 = vshrq_n_s32(v57, 8uLL);
    v34 = vshrq_n_s32(v56, 8uLL);
    v26.i32[0] = *a1;
    v35 = vdupq_lane_s32(*&vceqq_s32(v26, v24), 0);
    v36.i64[0] = 0x4000000040;
    v36.i64[1] = 0x4000000040;
    v37.i64[0] = 0x2000000020;
    v37.i64[1] = 0x2000000020;
    v38 = vdupq_n_s32(0x101u);
    v39 = vdupq_n_s32(0x58635FA9u);
    v40 = vdupq_n_s32(0x7149F2CAu);
    result = -1.0e30;
    v42 = 0uLL;
    do
    {
      v43 = vld1q_dup_f32(v30++);
      v44 = vld1q_dup_f32(v31++);
      v45 = v56;
      v46 = v57;
      if (!*a1)
      {
        v45 = v34;
        v46 = v33;
      }

      v47 = vbslq_s8(v32, v44, v43);
      v48 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v46, vsubq_s32(v36, v47)), v45, v47), v37), 6uLL);
      v49 = vcvtq_f32_s32(vbslq_s8(v35, vmulq_s32(v48, v38), v48));
      v45.i32[0] = a4->i32[0];
      v50 = a4[162].f32[0];
      if ((a1[1] & 0x40) != 0)
      {
        if (v49.f32[3] == 0.0)
        {
          return result;
        }

        *&v51 = vmuls_lane_f32(v49.f32[3], v49, 2) * *v25.i32;
        v49.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v49, v49, 3), *v25.i32).u64[0];
        v49.i64[1] = __PAIR64__(1.0, v51);
        v45.i32[1] = a4[54].i32[0];
        *v45.f32 = vmul_f32(vmul_n_f32(*v45.f32, v50), v29);
        v45.f32[2] = (a4[108].f32[0] * v50) * *v25.i32;
        v45.i32[3] = 1.0;
      }

      else
      {
        v45.i32[1] = a4[54].i32[0];
        v45.i32[2] = a4[108].i32[0];
        v45.i32[3] = a4[162].i32[0];
      }

      v52 = vsubq_f32(v45, v49);
      v53 = vminnmq_f32(vmaxq_f32(v52, vsubq_f32(0, v52)), v39);
      v54 = vmulq_f32(vmulq_f32(v53, v53), v28);
      *v54.i8 = vadd_f32(*&vextq_s8(v54, v54, 8uLL), *v54.i8);
      v42 = vaddq_f32(v42, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v54.i8, *v54.i8), 0), v40));
      a4 = (a4 + 4);
      --v27;
    }

    while (v27);
  }

  else
  {
    v42.i32[0] = 0;
  }

  return v42.f32[0];
}

double compute_symbolic_block_difference_1plane(unsigned int *a1, block_size_descriptor *this, uint64_t a3, float32x4_t *a4, float32x4_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = this + 11300848;
  v6 = *(this + *(a3 + 4) + 5650424);
  if (v6 == 0xFFFF || *(this + 7) <= v6)
  {
    symbolic_to_physical();
  }

  if (*(this + 6 * *(this + *(a3 + 4) + 5650424) + 11304949))
  {
    compute_symbolic_block_difference_1plane();
  }

  if (*a3)
  {
    v11 = *(a3 + 1);
    partition_info = block_size_descriptor::get_partition_info(this, *(a3 + 1), *(a3 + 6));
    v13 = *&v5[2 * *(a3 + 4)];
    if (v13 == 0xFFFF || *(this + 7) <= v13)
    {
      symbolic_to_physical();
    }

    v15 = partition_info;
    v16 = this + 129888 * *(this + 6 * *&v5[2 * *(a3 + 4)] + 11304946);
    bzero(v64, 0x360uLL);
    unpack_weights(this, a3, (v16 + 592), 0, v64, 0, v17, v18, v19, v20, v21, v22, v23, v24);
    if (!v11)
    {
      a5.i64[0] = 0;
      return *a5.i64;
    }

    v25.i32[0] = 0;
    v59 = v25;
    v29 = 0;
    v30 = v15 + 4;
    v31 = (v15 + 224);
    a5 = 0uLL;
    v57 = vdupq_n_s32(0x58635FA9u);
    v58 = vdupq_n_s32(0x101u);
    v56 = vdupq_n_s32(0x7149F2CAu);
    do
    {
      v60 = a5;
      v63 = 0uLL;
      v62 = 0uLL;
      v61 = 0;
      unpack_color_endpoints(*a1, *(a3 + 8 + v29), (a3 + 20 + 8 * v29), &v61 + 1, &v61, &v63, &v62, a5, v26, v27, v28);
      v33 = v30[v29];
      if (v30[v29])
      {
        v26 = v62;
        v27.i32[0] = a1[10];
        v28 = a4[221];
        v34 = vdupq_lane_s32(*v27.i8, 0).u64[0];
        v35 = vshrq_n_s32(v63, 8uLL);
        v36 = vshrq_n_s32(v62, 8uLL);
        v32.i32[0] = *a1;
        v37 = vdupq_lane_s32(*&vceqq_s32(v32, v59), 0);
        v38 = v31;
        a5 = v60;
        v39.i64[0] = 0x4000000040;
        v39.i64[1] = 0x4000000040;
        v40.i64[0] = 0x2000000020;
        v40.i64[1] = 0x2000000020;
        while (1)
        {
          v41 = v62;
          v42 = v63;
          if (!*a1)
          {
            v41 = v36;
            v42 = v35;
          }

          v43 = *v38++;
          v44 = &v64[v43];
          v45 = vld1q_dup_f32(v44);
          v46 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v42, vsubq_s32(v39, v45)), v41, v45), v40), 6uLL);
          v47 = vcvtq_f32_s32(vbslq_s8(v37, vmulq_s32(v46, v58), v46));
          v42.i32[0] = a4->i32[v43];
          v48 = a4[54].i32[v43];
          v49 = a4[108].f32[v43];
          v50 = a4[162].f32[v43];
          if ((a1[1] & 0x40) != 0)
          {
            if (v47.f32[3] == 0.0)
            {
              a5.i32[0] = -246811958;
              return *a5.i64;
            }

            v51 = vmuls_lane_f32(v47.f32[3], v47, 2);
            v47.i64[0] = vmulq_n_f32(vmulq_laneq_f32(v47, v47, 3), *v27.i32).u64[0];
            v47.f32[2] = v51 * *v27.i32;
            v47.i32[3] = 1.0;
            v42.i32[1] = v48;
            *v42.f32 = vmul_f32(vmul_n_f32(*v42.f32, v50), v34);
            v42.f32[2] = (v49 * v50) * *v27.i32;
            v42.i32[3] = 1.0;
          }

          else
          {
            v42.i32[1] = v48;
            v42.i64[1] = __PAIR64__(LODWORD(v50), LODWORD(v49));
          }

          v52 = vsubq_f32(v42, v47);
          v53 = vminnmq_f32(vmaxq_f32(v52, vsubq_f32(0, v52)), v57);
          v54 = vmulq_f32(vmulq_f32(v53, v53), v28);
          *v54.i8 = vadd_f32(*&vextq_s8(v54, v54, 8uLL), *v54.i8);
          a5 = vaddq_f32(a5, vminnmq_f32(vdupq_lane_s32(vpadd_f32(*v54.i8, *v54.i8), 0), v56));
          if (!--v33)
          {
            goto LABEL_23;
          }
        }
      }

      a5 = v60;
LABEL_23:
      ++v29;
      v31 += 216;
    }

    while (v29 != v11);
  }

  else
  {
    a5.i32[0] = 1900671690;
  }

  return *a5.i64;
}

void compute_symbolic_block_difference_1plane_1partition(unsigned int *a1, block_size_descriptor *this, uint64_t a3, float32x4_t *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    if (*block_size_descriptor::get_partition_info(this, *(a3 + 1), *(a3 + 6)) != 1)
    {
      compute_symbolic_block_difference_1plane_1partition();
    }

    v8 = *(this + *(a3 + 4) + 5650424);
    if (v8 == 0xFFFF || *(this + 7) <= v8)
    {
      symbolic_to_physical();
    }

    v10 = this + 129888 * *(this + 6 * *(this + *(a3 + 4) + 5650424) + 11304946);
    bzero(v62, 0x360uLL);
    unpack_weights(this, a3, (v10 + 592), 0, v62, 0, v11, v12, v13, v14, v15, v16, v17, v18);
    v61 = 0uLL;
    v60 = 0uLL;
    v59 = 0;
    unpack_color_endpoints(*a1, *(a3 + 8), (a3 + 20), &v59 + 1, &v59, &v61, &v60, v19, v20, v21, v22);
    if (*a1)
    {
      v23 = 1;
    }

    else
    {
      v60 = vshrq_n_s32(v60, 8uLL);
      v61 = vshrq_n_s32(v61, 8uLL);
      v23 = 257;
    }

    v24 = *(this + 3);
    if (*(this + 3))
    {
      v25 = 0;
      v26 = vdupq_n_s32(v23);
      v27 = vdupq_lane_s32(*v60.i8, 0);
      v28 = vdupq_lane_s32(*v60.i8, 1);
      v29 = vdupq_laneq_s32(v60, 2);
      v30 = vdupq_laneq_s32(v60, 3);
      v31 = vdupq_lane_s32(*v61.i8, 0);
      v32 = vdupq_lane_s32(*v61.i8, 1);
      v33 = xmmword_186205980;
      v34 = vdupq_n_s32(0x58635FA9u);
      v35 = v62;
      v36.i64[0] = 0x4000000040;
      v36.i64[1] = 0x4000000040;
      v37 = vdupq_laneq_s32(v61, 2);
      v38 = vdupq_laneq_s32(v61, 3);
      v39.i64[0] = 0x2000000020;
      v39.i64[1] = 0x2000000020;
      v40.i64[0] = 0x400000004;
      v40.i64[1] = 0x400000004;
      v41 = a4[221];
      v42 = 0uLL;
      v43 = vdupq_n_s32(v24);
      do
      {
        v44 = *v35++;
        v45 = vsubq_s32(v36, v44);
        v46 = vmulq_s32(v37, v45);
        v47 = vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v38, v45), v30, v44), v39), 6uLL), v26);
        v48 = vcvtq_f32_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v32, v45), v28, v44), v39), 6uLL), v26));
        v49 = vsubq_f32(*a4, vcvtq_f32_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v31, v45), v27, v44), v39), 6uLL), v26)));
        v50 = vminnmq_f32(vmaxq_f32(v49, vsubq_f32(0, v49)), v34);
        v51 = vsubq_f32(a4[54], v48);
        v52 = vsubq_f32(a4[108], vcvtq_f32_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(v46, v29, v44), v39), 6uLL), v26)));
        v53 = vminnmq_f32(vmaxq_f32(v51, vsubq_f32(0, v51)), v34);
        v54 = vminnmq_f32(vmaxq_f32(v52, vsubq_f32(0, v52)), v34);
        v55 = vsubq_f32(a4[162], vcvtq_f32_s32(v47));
        v56 = vminnmq_f32(vmaxq_f32(v55, vsubq_f32(0, v55)), v34);
        v57 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v56, v56), v41, 3), vaddq_f32(vmulq_laneq_f32(vmulq_f32(v54, v54), v41, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v50, v50), v41.f32[0]), vmulq_lane_f32(vmulq_f32(v53, v53), *v41.f32, 1))));
        v58 = vcgtq_s32(v43, v33);
        v33 = vaddq_s32(v33, v40);
        v42 = vaddq_f32(v42, vandq_s8(v57, v58));
        v25 += 4;
        ++a4;
      }

      while (v25 < v24);
    }
  }
}

void unpack_weights()
{
  __assert_rtn("unpack_weights", "astcenc_decompress_symbolic.cpp", 121, "max_weight_count > 0");
}

{
  __assert_rtn("unpack_weights", "astcenc_decompress_symbolic.cpp", 156, "max_weight_count > 0");
}

void compute_symbolic_block_difference_2plane()
{
  __assert_rtn("compute_symbolic_block_difference_2plane", "astcenc_decompress_symbolic.cpp", 340, "scb.partition_count == 1");
}

{
  __assert_rtn("compute_symbolic_block_difference_2plane", "astcenc_decompress_symbolic.cpp", 341, "bsd.get_block_mode(scb.block_mode).is_dual_plane == 1");
}

void load_image_block(__int32 a1, int *a2, int8x16_t *a3, unsigned __int8 *a4, unsigned int a5, int a6, int a7, _DWORD *a8, float a9)
{
  v11 = a3;
  v12 = a2[1];
  v78 = *a2;
  v13 = a2[2];
  a3[249].i32[1] = a5;
  a3[249].i32[2] = a6;
  a3[249].i32[3] = a7;
  if (a8[3] == 3 && a8[2] == 2 && a8[1] == 1 && *a8 == 0)
  {
    v17 = swz_texel_skip;
  }

  else
  {
    v17 = swz_texel;
  }

  LOBYTE(a9) = a4[3];
  v18 = 1.0 / LODWORD(a9);
  v19.i32[0] = a1 & 0xFFFFFFFE;
  v19.i32[1] = a1;
  v20 = vceq_s32(v19, 0x300000002);
  v21 = vuzp1_s16(v20, v19);
  v22 = vzip1_s16(v21, v21);
  v22.i16[2] = v21.i16[0];
  v23 = v20.i8[0] & 1;
  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  v70 = vmovl_u16(v22);
  v25 = vandq_s8(v70, v24);
  v26 = a2[3];
  v27 = load_texel_u8;
  if (v26 == 2)
  {
    v27 = load_texel_f32;
  }

  if (v26 == 1)
  {
    v28 = load_texel_f16;
  }

  else
  {
    v28 = v27;
  }

  {
    v69 = v20.i8[0] & 1;
    v85 = v18;
    v93 = v22;
    v96 = v20.i8[4];
    v91 = v25;
    compute_ideal_colors_and_weights_1plane();
    v25 = v91;
    v22 = v93;
    v20.i8[4] = v96;
    v24.i64[0] = 0x100000001;
    v24.i64[1] = 0x100000001;
    v18 = v85;
    v23 = v69;
  }

  v29 = &unk_1EA8DB000;
  v30 = encode_texel_lns;
  if (!vaddvq_s32(vshlq_u32(v25, mask(vmask4)::shift)))
  {
    v30 = encode_texel_unorm;
  }

  v31 = a4[2];
  if (a4[2])
  {
    v83 = v30;
    v86 = v17;
    v87 = a8;
    v32 = 0;
    v33 = 0;
    v34 = v20.i8[4] & 1;
    v74 = v12 - 1;
    v35 = a4[1];
    v36 = vdupq_n_s32(0xFE967699);
    v37 = vdupq_n_s32(0x7E967699u);
    v73 = &v11[235].i8[9];
    v38 = 0uLL;
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v40 = v35;
    v75 = v11;
    v84 = v18;
    v82 = vmovl_s16(v22);
    do
    {
      v41 = v33 + a7;
      if (v33 + a7 >= v13 - 1)
      {
        v41 = v13 - 1;
      }

      if (v40)
      {
        v42 = 0;
        v43 = *(*(a2 + 2) + 8 * v41);
        v44 = *a4;
        v79 = v33;
        do
        {
          if (v44)
          {
            v45 = 0;
            v46 = a5;
            v80 = v42;
            v81 = v32;
            v47 = v42 + a6;
            if (v42 + a6 >= v74)
            {
              v47 = v74;
            }

            v88 = v47 * v78;
            v48 = &v11->i32[v32];
            v49 = &v73[v32];
            do
            {
              v94 = v39;
              v89 = v38;
              v90 = v37;
              v92 = v36;
              if (v46 >= v78 - 1)
              {
                v50 = v78 - 1;
              }

              else
              {
                v50 = v46;
              }

              v51 = v23;
              v28(v43, 4 * (v50 + v88));
              v52 = (v86)(v87);
              *v53.i64 = v83(v52, v82);
              v23 = v51;
              v37 = vminnmq_f32(v90, v53);
              v38 = vaddq_f32(v89, vmulq_n_f32(v53, v84));
              v36 = vmaxnmq_f32(v92, v53);
              v54 = vextq_s8(v53, v53, 4uLL);
              v39 = vandq_s8(v94, vceqq_f32(vdupq_lane_s32(*v53.f32, 0), vzip1q_s32(v54, v54)));
              v48[216] = v53.i32[1];
              v48[432] = v53.i32[2];
              *v48 = v53.i32[0];
              v48[648] = v53.i32[3];
              *(v49 - 216) = v51;
              *v49++ = v34;
              ++v45;
              v44 = *a4;
              ++v48;
              ++v46;
            }

            while (v45 < v44);
            v42 = v80;
            v32 = v81 + v45;
            v35 = a4[1];
            v11 = v75;
            v33 = v79;
          }

          ++v42;
        }

        while (v42 < v35);
        v31 = a4[2];
        v40 = v35;
      }

      ++v33;
    }

    while (v33 < v31);
    v24 = vshrq_n_u32(v39, 0x1FuLL);
    v29 = &unk_1EA8DB000;
  }

  else
  {
    v37 = vdupq_n_s32(0x7E967699u);
    v36 = vdupq_n_s32(0xFE967699);
    v38 = 0uLL;
  }

  v55 = *v11;
  v55.i32[1] = v11[54].i32[0];
  v55.i32[2] = v11[108].i32[0];
  v55.i32[3] = v11[162].i32[0];
  v56 = vdivq_f32(v55, vdupq_n_s32(0x477FFF00u));
  v57 = 0uLL;
  if (v23)
  {
    v58 = vcvtq_s32_f32(v55);
    v59.i64[0] = 0x700000007;
    v59.i64[1] = 0x700000007;
    v60 = vandq_s8(v58, v59);
    v61 = vmovn_s32(v60);
    v62.i64[0] = 0x100000001;
    v62.i64[1] = 0x100000001;
    v63 = vcgtq_u32(v60, v62);
    v64.i64[0] = 0x100000001;
    v64.i64[1] = 0x100000001;
    v65 = vaddq_s32(vshlq_n_s32(v60, 2uLL), v64);
    v64.i64[0] = 0x500000005;
    v64.i64[1] = 0x500000005;
    v66 = vcgtq_u32(v60, v64);
    v64.i16[1] = 5;
    v64.i16[3] = 5;
    v67.i64[0] = 0x700000007;
    v67.i64[1] = 0x700000007;
    v68 = vorrq_s8(vshrq_n_u32(vbslq_s8(v63, vbslq_s8(v66, vmlal_u16(v67, v61, *v64.i8), v65), vmull_u16(v61, 0x3000300030003)), 3uLL), vshlq_n_s32(vshrq_n_u32(v58, 0xBuLL), 0xAuLL));
    v66.i64[0] = 0x7B0000007BLL;
    v66.i64[1] = 0x7B0000007BLL;
    v57 = vcvtq_f32_f16(vmovn_s32(vminq_s32(v68, v66)));
  }

  v11[217] = vbslq_s8(vcltzq_s32(vshlq_n_s32(v70, 0x1FuLL)), v57, v56);
  v11[218] = v37;
  v11[219] = v38;
  v11[220] = v36;
  {
    v95 = v24;
    compute_ideal_colors_and_weights_1plane();
    v24 = v95;
  }

  v11[222].i8[0] = vaddvq_s32(vshlq_u32(v24, v29[116])) == 15;
}

double load_texel_u8(char *a1, int a2)
{
  v2 = &a1[a2];
  v3 = vld1_dup_f32(v2);
  *&result = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v3))), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

__n64 swz_texel(unsigned int *a1, __n128 a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0x3F80000000000000;
  result.n64_u32[0] = v3.n128_u32[*a1];
  result.n64_u32[1] = v3.n128_u32[a1[1]];
  return result;
}

double encode_texel_lns(float32x4_t a1, int8x16_t a2)
{
  v2 = vdupq_n_s32(0x477FFF00u);
  v3 = vmulq_f32(a1, v2);
  v4 = *&vshrq_n_u32(a1, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL);
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v6 = *&vandq_s8(a1, vnegq_f32(v5)) | __PAIR128__(0x3F0000003F000000, 0x3F0000003F000000);
  v7 = vcgtq_f32(a1, vdupq_n_s32(0x32800000u));
  v8 = vcgeq_f32(a1, vdupq_n_s32(0x47800000u));
  v9.i64[0] = 0x7000000070;
  v9.i64[1] = 0x7000000070;
  v10.i64[0] = 0x4C0000004C000000;
  v10.i64[1] = 0x4C0000004C000000;
  v11 = vmulq_f32(a1, v10);
  v10.i64[0] = 0xBF000000BF000000;
  v10.i64[1] = 0xBF000000BF000000;
  v12 = vbslq_s8(vcgtq_u32(v4, v9), vmulq_f32(vaddq_f32(v6, v10), vdupq_n_s32(0x45800000u)), v11);
  v10.i64[0] = 0x4300000043000000;
  v10.i64[1] = 0x4300000043000000;
  v13.i64[0] = 0x4400000044000000;
  v13.i64[1] = 0x4400000044000000;
  v14 = vaddq_f32(vbslq_s8(vcgtq_f32(vdupq_n_s32(0x43C00000u), v12), vmulq_f32(v12, vdupq_n_s32(0x3FAAAAABu)), vbslq_s8(vcgeq_f32(vdupq_n_s32(0x44B00000u), v12), vaddq_f32(v12, v10), vmulq_f32(vaddq_f32(v12, v13), vdupq_n_s32(0x3F4CCCCDu)))), vcvtq_f32_u32(vshlq_n_s32(vqsubq_u32(v4, v9), 0xBuLL)));
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vbslq_s8(a2, vandq_s8(vbslq_s8(v8, v2, vaddq_f32(v14, _Q4)), v7), v3).u64[0];
  return result;
}

void load_image_block_fast_ldr(double a1, double a2, double a3, double a4, double a5, float32x4_t a6, uint64_t a7, int *a8, float32x4_t *a9, unsigned __int8 *a10, unsigned int a11, unsigned __int32 a12, __int32 a13)
{
  v14 = *a8;
  v13 = a8[1];
  a9[249].i32[1] = a11;
  a9[249].i32[2] = a12;
  a9[249].i32[3] = a13;
  v15 = a10[1] + a12;
  if (v15 <= a12)
  {
    v22 = vdupq_n_s32(0xFE967699);
    v21 = vdupq_n_s32(0x7E967699u);
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    v24 = 0uLL;
  }

  else
  {
    v16 = 0;
    v17 = **(a8 + 2);
    v18 = 4 * v14;
    v19 = v13 - 1;
    v20 = *a10;
    v21 = vdupq_n_s32(0x7E967699u);
    v22 = vdupq_n_s32(0xFE967699);
    v23 = v14 - 1;
    v24 = 0uLL;
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    do
    {
      if (v20 + a11 > a11)
      {
        if (a12 >= v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = a12;
        }

        v27 = v17 + v18 * v26;
        v28 = &a9->i32[v16];
        v29 = v20;
        v30 = a11;
        do
        {
          if (v30 >= v23)
          {
            v31 = v23;
          }

          else
          {
            v31 = v30;
          }

          a6.i32[0] = *(v27 + 4 * v31);
          a6 = vcvtq_f32_u32(vmovl_u16(vmul_s16(*&vmovl_u8(*a6.f32), 0x101010101010101)));
          v21 = vminnmq_f32(v21, a6);
          v24 = vaddq_f32(v24, a6);
          v22 = vmaxnmq_f32(v22, a6);
          v32 = vextq_s8(a6, a6, 4uLL);
          v25 = vandq_s8(v25, vceqq_f32(vdupq_lane_s32(*a6.f32, 0), vzip1q_s32(v32, v32)));
          *v28 = a6.i32[0];
          v28[216] = a6.i32[1];
          v28[432] = a6.i32[2];
          v28[648] = a6.i32[3];
          ++v30;
          ++v28;
          ++v16;
          --v29;
        }

        while (v29);
      }

      ++a12;
    }

    while (a12 != v15);
    v33 = vshrq_n_u32(v25, 0x1FuLL);
  }

  v34 = *a9;
  v34.i32[1] = a9[54].i32[0];
  v34.i32[2] = a9[108].i32[0];
  v34.i32[3] = a9[162].i32[0];
  a9[217] = vdivq_f32(v34, vdupq_n_s32(0x477FFF00u));
  a9[222].i8[1] = 0;
  a9[235].i8[9] = 0;
  a9[218] = v21;
  v21.i8[0] = a10[3];
  v21.f32[0] = v21.u32[0];
  a9[219] = vdivq_f32(v24, vdupq_lane_s32(*v21.f32, 0));
  a9[220] = v22;
  {
    v36 = a9;
    v35 = v33;
    compute_ideal_colors_and_weights_1plane();
    v33 = v35;
    a9 = v36;
  }

  a9[222].i8[0] = vaddvq_s32(vshlq_u32(v33, mask(vmask4)::shift)) == 15;
}

void init_block_size_descriptor(unsigned int a1, unsigned int a2, unsigned int a3, BOOL a4, unsigned int a5, float a6, block_size_descriptor *a7)
{
  if (a3 >= 2)
  {
    operator new();
  }

  operator new();
}

uint64_t assign_kmeans_texels(uint64_t result, unint64_t *a2)
{
  v2 = result;
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = *(result + 3);
  if (v3 > 0x40)
  {
    v26[0] = 0;
    v26[1] = 0;
    astc::rand_init(v26, a2);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v21 = *(v2 + 3);
    if (*(v2 + 3))
    {
      bzero(v24, v21);
    }

    v22 = 0;
    do
    {
      result = astc::rand(v26, v21);
      v23 = result % *(v2 + 3);
      if ((*(v24 + v23) & 1) == 0)
      {
        *(v2 + 14666800 + v22++) = v23;
        *(v24 + v23) = 1;
      }
    }

    while (v22 < 0x40);
  }

  else if (*(result + 3))
  {
    v4 = 0;
    v5 = (v3 + 15) & 0xF0;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = result + 14666807;
    v8 = xmmword_186205E50;
    v9 = xmmword_186205E60;
    v10 = xmmword_186205E70;
    v11 = xmmword_186205E80;
    v12 = xmmword_186205E90;
    v13 = xmmword_186205EA0;
    v14 = xmmword_186205EB0;
    v15 = xmmword_186205EC0;
    v16 = vdupq_n_s64(0x10uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v6, v15));
      if (vuzp1_s8(vuzp1_s16(v17, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 - 7) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 - 6) = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v14))), *&v6).i8[2])
      {
        *(v7 + v4 - 5) = v4 | 2;
        *(v7 + v4 - 4) = v4 | 3;
      }

      v18 = vmovn_s64(vcgeq_u64(v6, v13));
      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i32[1])
      {
        *(v7 + v4 - 3) = v4 | 4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i8[5])
      {
        *(v7 + v4 - 2) = v4 | 5;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v12)))).i8[6])
      {
        *(v7 + v4 - 1) = v4 | 6;
        *(v7 + v4) = v4 | 7;
      }

      v19 = vmovn_s64(vcgeq_u64(v6, v11));
      if (vuzp1_s8(vuzp1_s16(v19, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 + 1) = v4 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v19, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 + 2) = v4 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v10))), *&v6).i8[2])
      {
        *(v7 + v4 + 3) = v4 | 0xA;
        *(v7 + v4 + 4) = v4 | 0xB;
      }

      v20 = vmovn_s64(vcgeq_u64(v6, v9));
      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i32[1])
      {
        *(v7 + v4 + 5) = v4 | 0xC;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i8[5])
      {
        *(v7 + v4 + 6) = v4 | 0xD;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v8)))).i8[6])
      {
        *(v7 + v4 + 7) = v4 | 0xE;
        *(v7 + v4 + 8) = v4 | 0xF;
      }

      v13 = vaddq_s64(v13, v16);
      v4 += 16;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v12 = vaddq_s64(v12, v16);
      v11 = vaddq_s64(v11, v16);
      v10 = vaddq_s64(v10, v16);
      v9 = vaddq_s64(v9, v16);
      v8 = vaddq_s64(v8, v16);
    }

    while (v5 != v4);
  }

  return result;
}

void init_block_size_descriptor()
{
  __assert_rtn("construct_dt_entry_2d", "astcenc_block_sizes.cpp", 776, "maxprec_1plane >= 0 || maxprec_2planes >= 0");
}

{
  __assert_rtn("init_decimation_info_2d", "astcenc_block_sizes.cpp", 266, "texels_per_block > 0");
}

{
  __assert_rtn("construct_dt_entry_2d", "astcenc_block_sizes.cpp", 748, "weight_count <= BLOCK_MAX_WEIGHTS");
}

{
  __assert_rtn("construct_block_size_descriptor_2d", "astcenc_block_sizes.cpp", 962, "bsd.decimation_mode_count_always > 0");
}

{
  __assert_rtn("construct_block_size_descriptor_2d", "astcenc_block_sizes.cpp", 961, "bsd.block_mode_count_1plane_always > 0");
}

{
  __assert_rtn("init_decimation_info_3d", "astcenc_block_sizes.cpp", 452, "texels_per_block > 0");
}

{
  __assert_rtn("init_decimation_info_3d", "astcenc_block_sizes.cpp", 451, "weights_per_block > 0");
}

uint64_t compute_pixel_region_variance(uint64_t a1, uint64_t *a2)
{
  v181 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v154 = *(a2 + 12);
  v155 = *(a2 + 11);
  v152 = *(a2 + 13);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  v9 = *(a1 + 120);
  v176 = *(a2 + 9);
  v177 = a2[7];
  v10 = 2 * v7;
  result = (2 * v7) | 1u;
  v159 = *(a2 + 24);
  v160 = v7;
  if (!*(a2 + 24))
  {
    v7 = 0;
  }

  v175 = *(a2 + 8);
  v12 = result + v8;
  v169 = result + *(a2 + 9);
  v156 = v10;
  if (*(a2 + 24))
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = 0;
  }

  v161 = *(a2 + 10);
  v171 = (v13 + *(a2 + 10));
  v174 = *v2;
  v14 = v2[3];
  v151 = v2[1];
  v153 = result;
  if (v14)
  {
    if (v14 == 1)
    {
      DWORD2(v179) = 1006632960;
      if (v171 > v159)
      {
        v15 = v159;
        v164 = v152 - v159 - v7;
        v16 = v154 + ~v160;
        v17 = (v8 + v10 + 1);
        v18 = (v176 + v10 + 1);
        v19 = v177 + 16;
        result = (v17 * v18);
        v20 = result * v159;
        v21 = 16 * (v175 + v156 + 1);
        do
        {
          v22 = v2[2] - 1;
          if (v164 + v15 <= v22)
          {
            v22 = (v164 + v15) & ~((v164 + v15) >> 31);
          }

          if (v169 >= 2)
          {
            v23 = (v19 + 16 * (v17 + result * v171 + v20));
            v24 = *(*(v2 + 2) + 8 * v22);
            v25 = 1;
            v26 = (v19 + 16 * ((v175 + v156 + 1) + v20));
            do
            {
              v27 = v2[1] - 1;
              if (v16 + v25 <= v27)
              {
                v27 = (v16 + v25) & ~((v16 + v25) >> 31);
              }

              v28 = v17 - 1;
              v29 = v155 - v160;
              v30 = v26;
              v31 = v23;
              if (v12 >= 2)
              {
                do
                {
                  v32 = v29 & ~(v29 >> 31);
                  if (v29 > *v2 - 1)
                  {
                    v32 = *v2 - 1;
                  }

                  *&v179 = *(v24 + 2 * (4 * v32 + 4 * *v2 * v27));
                  v33.i16[0] = *(&v179 + v3);
                  v33.i16[1] = *(&v179 + v4);
                  v33.i16[2] = *(&v179 + v5);
                  v33.i16[3] = *(&v179 + v6);
                  v34 = vcvtq_f32_f16(v33);
                  *v30++ = v34;
                  *v31++ = vmulq_f32(v34, v34);
                  ++v29;
                  --v28;
                }

                while (v28);
              }

              ++v25;
              v23 = (v23 + v21);
              v26 = (v26 + v21);
            }

            while (v25 != v18);
          }

          ++v15;
          v20 += result;
        }

        while (v15 != v171);
      }
    }

    else
    {
      if (v14 != 2)
      {
        compute_pixel_region_variance();
      }

      v180 = 0x3F80000000000000;
      if (v171 > v159)
      {
        v57 = v159;
        v166 = v152 - v159 - v7;
        v58 = v154 + ~v160;
        v59 = (v8 + v10 + 1);
        v60 = (v176 + v10 + 1);
        v61 = v177 + 16;
        result = (v59 * v60);
        v62 = 16 * (v175 + v156 + 1);
        v63 = &v179 + v4;
        v64 = result * v159;
        v65 = &v179 + v5;
        v66 = &v179 + v6;
        do
        {
          v67 = v2[2] - 1;
          if (v166 + v57 <= v67)
          {
            v67 = (v166 + v57) & ~((v166 + v57) >> 31);
          }

          if (v169 >= 2)
          {
            v68 = (v61 + 16 * (v59 + result * v171 + v64));
            v69 = *(*(v2 + 2) + 8 * v67);
            v70 = 1;
            v71 = (v61 + 16 * ((v175 + v156 + 1) + v64));
            do
            {
              if (v58 + v70 <= v2[1] - 1)
              {
                v72 = (v58 + v70) & ~((v58 + v70) >> 31);
              }

              else
              {
                v72 = v2[1] - 1;
              }

              v73 = v59 - 1;
              v74 = v155 - v160;
              v75 = v71;
              v76 = v68;
              if (v12 >= 2)
              {
                do
                {
                  v77 = v74 & ~(v74 >> 31);
                  if (v74 > *v2 - 1)
                  {
                    v77 = *v2 - 1;
                  }

                  v179 = *(v69 + 4 * (4 * v77 + 4 * *v2 * v72));
                  v78.i32[0] = *(&v179 + v3);
                  v78.i32[1] = *v63;
                  v78.i32[2] = *v65;
                  v78.i32[3] = *v66;
                  *v75++ = v78;
                  *v76++ = vmulq_f32(v78, v78);
                  ++v74;
                  --v73;
                }

                while (v73);
              }

              ++v70;
              v68 = (v68 + v62);
              v71 = (v71 + v62);
            }

            while (v70 != v60);
          }

          ++v57;
          v64 += result;
        }

        while (v57 != v171);
      }
    }
  }

  else
  {
    WORD2(v179) = -256;
    if (v171 > v159)
    {
      v35 = v159;
      v165 = v152 - v159 - v7;
      v36 = v154 + ~v160;
      v37 = (v8 + v10 + 1);
      v38 = (v176 + v10 + 1);
      v39 = v177 + 16;
      result = (v37 * v38);
      v157 = v37 + result * v171;
      v40 = result * v159;
      v41 = 16 * (v8 + v156 + 1);
      v42 = v37 - 1;
      v43 = vdupq_n_s32(0x3B808081u);
      do
      {
        v44 = v2[2] - 1;
        if (v165 + v35 <= v44)
        {
          v44 = (v165 + v35) & ~((v165 + v35) >> 31);
        }

        if (v169 >= 2)
        {
          v45 = (v39 + 16 * (v157 + v40));
          v46 = *(*(v2 + 2) + 8 * v44);
          v47 = 1;
          v48 = (v39 + 16 * ((v175 + v156 + 1) + v40));
          do
          {
            if (v36 + v47 <= v2[1] - 1)
            {
              v49 = (v36 + v47) & ~((v36 + v47) >> 31);
            }

            else
            {
              v49 = v2[1] - 1;
            }

            v50 = v42;
            v51 = v155 - v160;
            v52 = v48;
            v53 = v45;
            if (v12 >= 2)
            {
              do
              {
                v54 = v51 & ~(v51 >> 31);
                if (v51 > *v2 - 1)
                {
                  v54 = *v2 - 1;
                }

                LODWORD(v179) = *(v46 + (4 * v54 + 4 * *v2 * v49));
                v55.i16[0] = *(&v179 + v3);
                v55.i16[1] = *(&v179 + v4);
                v55.i16[2] = *(&v179 + v5);
                v55.i16[3] = *(&v179 + v6);
                v56 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v55)), v43);
                *v52++ = v56;
                *v53++ = vmulq_f32(v56, v56);
                ++v51;
                --v50;
              }

              while (v50);
            }

            ++v47;
            v45 = (v45 + v41);
            v48 = (v48 + v41);
          }

          while (v47 != v38);
        }

        ++v35;
        v40 += result;
      }

      while (v35 != v171);
    }
  }

  v158 = v171 - 1;
  if (v171 >= 1)
  {
    v79 = 0;
    v80 = v176 + v156 + 1;
    v81 = v175 + v156 + 1;
    v82 = v81 * v80 * v171;
    v83 = v177;
    result = v169;
    do
    {
      v84 = (v176 + v156 + 1);
      v85 = v83;
      if (v169 >= 1)
      {
        do
        {
          *v85 = 0uLL;
          v85[v82] = 0uLL;
          v85 += v81;
          --v84;
        }

        while (v84);
      }

      v86 = (v175 + v156 + 1);
      v87 = v83;
      if (v12 >= 1)
      {
        do
        {
          *v87 = 0uLL;
          v87[v82] = 0uLL;
          ++v87;
          --v86;
        }

        while (v86);
      }

      ++v79;
      v83 += v81 * v80;
    }

    while (v79 != v171);
  }

  if (v159 && v169 >= 1)
  {
    v88 = 0;
    v89 = (v176 + v156 + 1);
    v90 = v177;
    do
    {
      v91 = (v175 + v156 + 1);
      v92 = v90;
      if (v12 >= 1)
      {
        do
        {
          *v92 = 0uLL;
          v92[(v175 + v156 + 1) * v89 * v171] = 0uLL;
          ++v92;
          --v91;
        }

        while (v91);
      }

      ++v88;
      v90 += (v175 + v156 + 1);
    }

    while (v88 != v89);
  }

  v93 = v12 * v169;
  if (v171 > v159)
  {
    v94 = v177;
    v95 = (v176 + v156 + 1);
    v96 = v175 + v156 + 1;
    v167 = v96 * v95;
    v97 = v175 + v96 * v95 * v159 + v156 + 2;
    v162 = v95 - 1;
    v98 = v159;
    do
    {
      v99 = v162;
      v100 = v97;
      if (v169 >= 2)
      {
        do
        {
          brent_kung_prefix_sum(v177 + 16 * v100, v12 - 1, 1);
          result = brent_kung_prefix_sum(v177 + 16 * v93 * v171 + 16 * v100, v12 - 1, 1);
          v94 = v177;
          v100 += v96;
          --v99;
        }

        while (v99);
      }

      ++v98;
      v97 += v167;
    }

    while (v98 != v171);
    v101 = v169 - 1;
    v102 = (v175 + v156 + 1);
    v103 = v102 + v102 * (v176 + v156);
    v104 = v159;
    v105 = v102 + v159 * v103;
    v106 = v94 + 16 * v105 + 16;
    v168 = 16 * v103;
    v107 = v94 + 16 * (v105 + v103 * v171) + 16;
    v163 = v102 - 1;
    do
    {
      v108 = v163;
      v109 = v107;
      v110 = v106;
      if (v12 >= 2)
      {
        do
        {
          brent_kung_prefix_sum(v110, v101, v12);
          result = brent_kung_prefix_sum(v109, v101, v12);
          v110 += 16;
          v109 += 16;
          --v108;
        }

        while (v108);
      }

      ++v104;
      v106 += v168;
      v107 += v168;
    }

    while (v104 != v171);
  }

  if (v159 && v169 >= 2)
  {
    v111 = (v175 + v156 + 1);
    v170 = (v176 + v156 + 1);
    v112 = (v176 + v156 + 2) * v111;
    v113 = 16 * v111 * v170 * v171;
    v172 = v111 - 1;
    v114 = 1;
    do
    {
      if (v12 >= 2)
      {
        v115 = v177 + 16 + 16 * v112;
        v116 = v172;
        do
        {
          brent_kung_prefix_sum(v115, v158, v93);
          result = brent_kung_prefix_sum(v115 + v113, v158, v93);
          v115 += 16;
          --v116;
        }

        while (v116);
      }

      ++v114;
      v112 += v175 + v156 + 1;
    }

    while (v114 != v170);
  }

  if (v159)
  {
    v117 = v153;
  }

  else
  {
    v117 = 1.0;
  }

  v118 = 1.0 / ((v117 * v153) * v153);
  if (v159)
  {
    if (v161 >= 1)
    {
      v119 = 0;
      v120 = v12;
      v121 = v177 + 12;
      v122 = v156 + 1;
      v123 = v156 + 1 + v175;
      v178 = (v122 + v175) * v122;
      v124 = (v122 + v175) * (v122 + v176);
      result = 16 * v123;
      v173 = (v122 + v175 + v124) * v122;
      v125 = v124 * (v156 + 1);
      v126 = v155 + v174 * (v154 + v152 * v151);
      v127 = v121;
      do
      {
        if (v176 >= 1)
        {
          v128 = 0;
          v129 = v121 + 16 * v125;
          v130 = v126;
          v131 = v173;
          v132 = v127;
          v133 = v178;
          do
          {
            if (v175 >= 1)
            {
              v134 = 0;
              v135 = v156 + 1;
              v136 = v130;
              do
              {
                *(v9 + 4 * v136) = v118 * ((((*(v129 + v134) - *(v121 + 16 * (v160 + 1 + v160 + v119) * v93 + 16 * v128 * v120 + 16 * v135)) - *(v121 + 16 * v131 + v134)) + *(v121 + 16 * (v131 + v135))) - (((*(v132 + v134) - *(v121 + 16 * v119 * v93 + 16 * v128 * v120 + 16 * v135)) - *(v121 + 16 * v133 + v134)) + *(v121 + 16 * (v133 + v135))));
                v134 += 16;
                ++v136;
                ++v135;
              }

              while (16 * v175 != v134);
            }

            ++v128;
            v133 += v123;
            v132 += result;
            v131 += v123;
            v129 += result;
            v130 += v174;
          }

          while (v128 != v176);
        }

        ++v119;
        v178 += v124;
        v127 += 16 * v124;
        v173 += v124;
        v125 += v124;
        v126 += v151 * v174;
      }

      while (v119 != v161);
    }
  }

  else if (v176 >= 1)
  {
    v137 = 0;
    v138 = v177 + 12;
    v139 = v156 + 1 + v175;
    v140 = v139 * (v156 + 1);
    v141 = v155 + v154 * v174;
    v142 = (v177 + 12);
    do
    {
      if (v175 >= 1)
      {
        v143 = (v138 + 16 * v140);
        result = v138 + 16 * v137 * v12;
        v144 = v175;
        v145 = v156 + 1;
        v146 = v141;
        v147 = v142;
        do
        {
          v148 = *v147;
          v147 += 4;
          v149 = v148 - *(result + 16 * v145);
          v150 = *v143;
          v143 += 4;
          *(v9 + 4 * v146++) = v118 * ((v149 - v150) + *(v138 + 16 * (v140 + v145++)));
          --v144;
        }

        while (v144);
      }

      ++v137;
      v140 += v139;
      v142 += 4 * v139;
      v141 += v174;
    }

    while (v137 != v176);
  }

  return result;
}

uint64_t brent_kung_prefix_sum(uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 2;
    v4 = 1;
    do
    {
      v5 = a2 >> v4;
      if (a2 >> v4)
      {
        v6 = result;
        do
        {
          *(v6 + 16 * a3 * (v3 - 1)) = vaddq_f32(*(v6 + 16 * a3 * (v3 - 1)), *(v6 + a3 * (16 * v3 - 16 * (v3 >> 1) - 16)));
          v6 += 16 * (a3 << v4);
          --v5;
        }

        while (v5);
      }

      ++v4;
      v3 *= 2;
    }

    while (v3 <= a2);
    do
    {
      --v4;
      v7 = v3 >> 1;
      v8 = (a2 - (v3 >> 2)) >> v4;
      if (v8)
      {
        v10 = result;
        do
        {
          v9 = 16 * a3 * (v7 + (v3 >> 2) - 1);
          *(v10 + v9) = vaddq_f32(*(v10 + v9), *(v10 + a3 * (16 * v7 - 16)));
          v10 += 16 * (a3 << v4);
          --v8;
        }

        while (v8);
      }

      v11 = v3 > 5;
      v3 >>= 1;
    }

    while (v11);
  }

  return result;
}

uint64_t init_compute_averages(int *a1, int a2, _OWORD *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (v6 <= 1)
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 16;
  }

  if (v6 > 1)
  {
    v9 = 2 * a2 + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 > 1)
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v6 < v8)
  {
    v8 = a1[2];
  }

  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = a1;
  *(a4 + 8) = *a3;
  *(a4 + 24) = v6 > 1;
  *(a4 + 28) = a2;
  *(a4 + 64) = v4;
  *(a4 + 68) = v5;
  *(a4 + 72) = v6;
  *(a4 + 76) = v7;
  *(a4 + 80) = v8;
  *(a4 + 84) = 2 * (v7 + ((2 * a2) | 1)) * (v7 + ((2 * a2) | 1)) * (v8 + v9);
  return (v6 + v8 - 1) / v8 * ((v5 + v7 - 1) >> v10);
}

uint64_t get_ise_sequence_bitcount(int a1, unsigned int a2)
{
  if (a2 > 0x14)
  {
    return 1024;
  }

  else
  {
    return (((ise_sizes[a2] >> 5) | 1) + (ise_sizes[a2] & 0x3Fu) * a1 - 1) / ((ise_sizes[a2] >> 5) | 1u);
  }
}

unint64_t encode_ise(unint64_t result, unsigned int a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  if (!a2)
  {
    encode_ise();
  }

  if (result >= 0x15)
  {
    __break(1u);
  }

  else
  {
    v5 = btq_counts[result];
    v6 = v5 & 0x3F;
    v7 = ~(-1 << v5);
    if ((v5 & 0x40) != 0)
    {
      if (a2 >= 5)
      {
        v11 = a2 / 5;
        v12 = v6 + 2;
        v13 = ~(-4 << v6);
        v14 = ~(-2 << v6);
        v15 = a3 + 2;
        result = (3 * v6 + 5);
        v10 = 5 * (a2 / 5);
        do
        {
          v17 = *(v15 - 1) >> v6;
          v18 = *(v15 - 2);
          v19 = integer_of_trits[81 * (v15[2] >> v6) + 27 * (v15[1] >> v6) + 9 * (*v15 >> v6) + 2 * v17 + v17 + (v18 >> v6)];
          *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(v13 << (a5 & 7)) | (((((v19 & 3) << v6) | v18 & v7) & v13) << (a5 & 7));
          v20 = a5 + v12;
          *(a4 + (v20 >> 3)) = *(a4 + (v20 >> 3)) & ~(v13 << ((a5 + v12) & 7)) | (((*(v15 - 1) & v7 | (((v19 >> 2) & 3) << v6)) & v13) << ((a5 + v12) & 7));
          v16 = 2 * v6 + 4;
          *(a4 + ((v16 + a5) >> 3)) = *(a4 + ((v16 + a5) >> 3)) & ~(v14 << ((v16 + a5) & 7)) | (((*v15 & v7 | (((v19 >> 4) & 1) << v6)) & v14) << ((v16 + a5) & 7));
          *(a4 + ((result + a5) >> 3)) = *(a4 + ((result + a5) >> 3)) & ~(v13 << ((result + a5) & 7)) | (((v15[1] & v7 | (((v19 >> 5) & 3) << v6)) & v13) << ((result + a5) & 7));
          v21 = 4 * v6 + 7 + a5;
          *(a4 + (v21 >> 3)) = *(a4 + (v21 >> 3)) & ~(v14 << (v21 & 7)) | (((v15[2] & v7 | (v19 >> 7 << v6)) & v14) << (v21 & 7));
          a5 = v20 + v12 + v6 + 1 + v12 + v6 + 1;
          v15 += 5;
          --v11;
        }

        while (v11);
      }

      else
      {
        v10 = 0;
      }

      if (a2 != v10)
      {
        v22 = v10 + 3 >= a2 ? 0 : a3[v10 + 3] >> v6;
        v24 = v10 + 2 >= a2 ? 0 : a3[v10 + 2] >> v6;
        v25 = v10 + 1 >= a2 ? 0 : a3[v10 + 1] >> v6;
        v26 = a2 - v10;
        if (a2 > v10)
        {
          v27 = &a3[v10];
          v28 = integer_of_trits[27 * v22 + 9 * v24 + 3 * v25 + (*v27 >> v6)];
          v29 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tshift;
          v30 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tbits;
          do
          {
            v31 = *v27++;
            v32 = v31 & v7;
            LOBYTE(v31) = *v29++;
            v33 = v28 >> v31;
            v34 = *v30++;
            result = a4 + (a5 >> 3);
            *result = *result & ~(~(-1 << (v34 + v6)) << (a5 & 7)) | (((((v33 & ~(-1 << v34)) << v6) | v32) & ~(-1 << (v34 + v6))) << (a5 & 7));
            a5 += v34 + v6;
            --v26;
          }

          while (v26);
        }
      }
    }

    else if ((btq_counts[result] & 0x80) != 0)
    {
      if (a2 >= 3)
      {
        v35 = a2 / 3;
        v37 = ~(-4 << v6);
        v38 = a3 + 2;
        v23 = 3 * (a2 / 3);
        result = integer_of_quints;
        do
        {
          v40 = *(v38 - 1) >> v6;
          v41 = *(v38 - 2);
          v42 = integer_of_quints[25 * (*v38 >> v6) + 4 * v40 + v40 + (v41 >> v6)];
          *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(~(-8 << v6) << (a5 & 7)) | (((((v42 & 7) << v6) | v41 & v7) & ~(-8 << v6)) << (a5 & 7));
          v36 = v6 + 3;
          *(a4 + ((v36 + a5) >> 3)) = *(a4 + ((v36 + a5) >> 3)) & ~(v37 << ((v36 + a5) & 7)) | (((*(v38 - 1) & v7 | (((v42 >> 3) & 3) << v6)) & v37) << ((v36 + a5) & 7));
          v43 = *v38;
          v38 += 3;
          v39 = 2 * v6 + 5;
          *(a4 + ((v39 + a5) >> 3)) = *(a4 + ((v39 + a5) >> 3)) & ~(v37 << ((v39 + a5) & 7)) | (((v43 & v7 | (((v42 >> 5) & 3) << v6)) & v37) << ((v39 + a5) & 7));
          a5 += 3 * v6 + 7;
          --v35;
        }

        while (v35);
      }

      else
      {
        v23 = 0;
      }

      if (a2 != v23)
      {
        if (v23 + 1 >= a2)
        {
          v44 = 0;
        }

        else
        {
          v44 = a3[v23 + 1] >> v6;
        }

        v45 = a2 - v23;
        if (a2 > v23)
        {
          v46 = &a3[v23];
          v47 = integer_of_quints[5 * v44 + (*v46 >> v6)];
          v48 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tshift;
          v49 = &encode_ise(quant_method,unsigned int,unsigned char const*,unsigned char *,unsigned int)::tbits;
          do
          {
            v50 = *v46++;
            v51 = v50 & v7;
            LOBYTE(v50) = *v48++;
            v52 = v47 >> v50;
            v53 = *v49++;
            result = a4 + (a5 >> 3);
            *result = *result & ~(~(-1 << (v53 + v6)) << (a5 & 7)) | (((((v52 & ~(-1 << v53)) << v6) | v51) & ~(-1 << (v53 + v6))) << (a5 & 7));
            a5 += v53 + v6;
            --v45;
          }

          while (v45);
        }
      }
    }

    else
    {
      v8 = a2;
      do
      {
        v9 = *a3++;
        *(a4 + (a5 >> 3)) = *(a4 + (a5 >> 3)) & ~(v7 << (a5 & 7)) | ((v9 & v7) << (a5 & 7));
        a5 += v6;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t ktxCheckHeader1_(int8x16_t *a1, uint64_t a2)
{
  if (a1->i64[0] != 0xBB31312058544BABLL || a1->i32[2] != 169478669)
  {
    return 15;
  }

  v5 = a1->i32[3];
  if (v5 != 67305985)
  {
    if (v5 != 16909060)
    {
      return 1;
    }

    v6 = a2;
    v7 = a1;
    _ktxSwapEndian32(a1 + 1, 0xCuLL);
    v8 = v7[1].u32[1];
    v3 = 1;
    if (v8 > 4)
    {
      return v3;
    }

    a1 = v7;
    a2 = v6;
    if (((1 << v8) & 0x16) == 0)
    {
      return v3;
    }
  }

  *a2 = 0;
  v9 = a1[1].i32[0];
  v10 = a1[1].i32[2];
  if (v9 && v10)
  {
    if (v10 == a1[1].i32[3])
    {
      return 1;
    }
  }

  else
  {
    v3 = 1;
    if (v9 + v10)
    {
      return v3;
    }

    *a2 = 1;
    if (v10 == a1[1].i32[3])
    {
      return 1;
    }
  }

  v11 = a1[2].u32[1];
  if (!v11)
  {
    return 1;
  }

  v13 = a1[2].u32[2];
  v12 = a1[2].u32[3];
  if (v12)
  {
    if (v13)
    {
      v14 = a1[3].i32[0];
      if (v14)
      {
        return 16;
      }

      v15 = 3;
      goto LABEL_26;
    }

    return 1;
  }

  if (!v13)
  {
    v14 = 0;
    v15 = 1;
LABEL_26:
    *(a2 + 2) = v15;
    goto LABEL_27;
  }

  *(a2 + 2) = 2;
  v14 = 1;
LABEL_27:
  v16 = a1[3].i32[1];
  if (v16 != 1 && (v16 != 6 || !v14))
  {
    return 1;
  }

  v17 = a1[3].i32[2];
  if (v17)
  {
    v18 = 0;
    LOBYTE(v17) = v17 - 1;
  }

  else
  {
    v18 = 1;
    a1[3].i32[2] = 1;
  }

  *(a2 + 1) = v18;
  if (v11 <= v13)
  {
    v11 = v13;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  return v11 >> v17 == 0;
}

uint64_t ktxCheckHeader2_(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0xBB30322058544BABLL || *(a1 + 8) != 169478669)
  {
    return 15;
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return 1;
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  if (!v5)
  {
    if (v6)
    {
      *(a2 + 2) = 2;
      v7 = 1;
      v8 = *(a1 + 36);
      if (v8 == 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      *(a2 + 2) = 1;
      v8 = *(a1 + 36);
      if (v8 == 1)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    return 16;
  }

  *(a2 + 2) = 3;
  v8 = *(a1 + 36);
  if (v8 != 1)
  {
LABEL_17:
    if (v8 != 6 || !v7)
    {
      return 1;
    }
  }

LABEL_19:
  v9 = *(a1 + 40);
  if (v9)
  {
    *(a2 + 1) = 0;
    if (v9 > 0x20)
    {
      return 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
    *(a2 + 1) = 1;
    *(a1 + 40) = 1;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v4 <= v5)
  {
    v4 = v5;
  }

  return v4 >> (v9 - 1) == 0;
}

_DWORD *createDFDUnpacked(int a1, int a2, int a3, unsigned int a4, int a5)
{
  v9 = a3 * a2;
  if (a5 == 8)
  {
    v10 = 131329;
  }

  else
  {
    v10 = 65793;
  }

  if (a1)
  {
    v11 = malloc_type_malloc(16 * v9 + 28, 0x100004052888210uLL);
    v12 = v11;
    *v11 = 16 * v9 + 28;
    v11[1] = 0;
    v11[2] = (v9 << 20) + 1572866;
    v11[3] = v10;
    v11[4] = 0;
    v11[5] = v9;
    v11[6] = 0;
    if (a2 < 1)
    {
      return v12;
    }

    v13 = (a3 - 1);
    if (a3 < 1)
    {
      return v12;
    }

    v14 = v11 + 7;
    if (a5 == 2 || a5 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 8 * a3;
      v18 = 8 * a3 - 8;
      v19 = 4 * a3;
      v20 = a3;
      v21 = a2;
      do
      {
        v22 = 0;
        v23 = (v16 & 0x7FFFFFFD) != 0 || a4 == 0;
        v24 = v16 ^ 2;
        if (v23)
        {
          v24 = v16;
        }

        if (v24 == 3)
        {
          v25 = 15;
        }

        else
        {
          v25 = v24;
        }

        v26 = v15;
        v27 = v18;
        do
        {
          v28 = &v14[v26 & 0xFFFFFFFC];
          *v28 = (v25 << 24) | v27 | 0x70000u;
          v28[2] = 0;
          v28[3] = v22++ == 0;
          v27 -= 8;
          v26 += 4;
        }

        while (v20 != v22);
        ++v16;
        v18 += v17;
        v15 += v19;
      }

      while (v16 != v21);
      return v12;
    }

    v35 = 0;
    v36 = 0;
    v37 = 8 * a3;
    v38 = 8 * a3 - 8;
    v39 = 4 * a3;
    v40 = a3;
    v41 = a2;
LABEL_36:
    v42 = 0;
    v43 = (v36 & 0x7FFFFFFD) != 0 || a4 == 0;
    v44 = v36 ^ 2;
    if (v43)
    {
      v44 = v36;
    }

    if (v44 == 3)
    {
      v45 = 15;
    }

    else
    {
      v45 = v44;
    }

    v46 = v45 << 24;
    if (v45 == 15)
    {
      v47 = 520552448;
    }

    else
    {
      v47 = (v45 << 24) | 0x70000;
    }

    v48 = v35;
    v49 = v38;
    while (1)
    {
      v52 = &v14[v48 & 0xFFFFFFFC];
      if (a5 > 5)
      {
        if (a5 == 8)
        {
          v51 = 0;
          v53 = v49 | v47;
LABEL_68:
          *v52 = v53;
          v52[1] = 0;
          v50 = 255;
          goto LABEL_50;
        }

        if (a5 == 7)
        {
          v51 = 0;
          *v52 = v46 | v49 | 0x80070000;
          v52[1] = 0;
          v50 = 1065353216;
          goto LABEL_50;
        }

        if (a5 != 6)
        {
LABEL_67:
          v51 = 0;
          v53 = v46 | v49 | 0x70000;
          goto LABEL_68;
        }

        *v52 = v46 | v49 | 0xC0070000;
        v52[1] = 0;
        v50 = 1065353216;
        v51 = -1082130432;
      }

      else
      {
        if (a5 == 1)
        {
          if (v13 == v42)
          {
            v51 = -128;
          }

          else
          {
            v51 = -256;
          }

          *v52 = v46 | v49 | 0x40070000;
          v52[1] = 0;
          v50 = ~v51;
          if (!v42)
          {
            ++v51;
          }

          goto LABEL_50;
        }

        if (a5 != 3 && a5 != 5)
        {
          goto LABEL_67;
        }

        v50 = v42 == 0;
        *v52 = v46 | v49 | 0x40070000;
        v52[1] = 0;
        v51 = -1;
      }

LABEL_50:
      v52[2] = v51;
      v52[3] = v50;
      ++v42;
      v49 -= 8;
      v48 += 4;
      if (v40 == v42)
      {
        ++v36;
        v38 += v37;
        v35 += v39;
        if (v36 == v41)
        {
          return v12;
        }

        goto LABEL_36;
      }
    }
  }

  v12 = malloc_type_malloc(16 * a2 + 28, 0x100004052888210uLL);
  *v12 = 16 * a2 + 28;
  v12[1] = 0;
  v12[2] = (a2 << 20) + 1572866;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = v9;
  v12[6] = 0;
  if (a2 >= 1)
  {
    v29 = 8 * a3;
    if (a4)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        if ((v31 & 0x7FFFFFFD) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 ^ 2;
        }

        writeSample(v12, v31++, v32, v29, v30, 1, 1, a5);
        v30 += v29;
      }

      while (a2 != v31);
    }

    else
    {
      v33 = 0;
      do
      {
        writeSample(v12, v33, v33, v29, a4, 1, 1, a5);
        ++v33;
        a4 += v29;
      }

      while (a2 != v33);
    }
  }

  return v12;
}

uint64_t writeSample(uint64_t result, int a2, int a3, int a4, unsigned int a5, int a6, int a7, int a8)
{
  v8 = (result + 16 * a2);
  if (a3 == 3)
  {
    v9 = 15;
  }

  else
  {
    v9 = a3;
  }

  if (a8 > 5)
  {
    switch(a8)
    {
      case 6:
        v8[7] = ((a4 << 16) + 1073676288) | (v9 << 24) | a5 | 0xC0000000;
        v8[8] = 0;
        v8[9] = -1082130432;
        v8[10] = 1065353216;
        return result;
      case 7:
        v8[7] = ((a4 << 16) + 2147418112) | (v9 << 24) | a5 | 0x80000000;
        v8[8] = 0;
        v8[9] = 0;
        v8[10] = 1065353216;
        return result;
      case 8:
        v10 = v9 << 24;
        if (v9 == 15)
        {
          v10 = 520093696;
        }

        *(v8 + 7) = ((a4 << 16) - 0x10000) | a5 | v10;
LABEL_27:
        if (a4 <= 32)
        {
          v15 = ~(-1 << a4);
        }

        else
        {
          v15 = -1;
        }

        v8[9] = 0;
        v8[10] = v15;
        return result;
    }

LABEL_24:
    *(v8 + 7) = ((a4 << 16) - 0x10000) | (v9 << 24) | a5;
    if (a8 == 2 || a8 == 4)
    {
      v8[9] = 0;
      v8[10] = a7 != 0;
      return result;
    }

    goto LABEL_27;
  }

  if (a8 != 1)
  {
    if (a8 == 3 || a8 == 5)
    {
      *(v8 + 7) = ((a4 << 16) - 0x10000) | (v9 << 24) | a5 | 0x40000000;
      v8[9] = -1;
      v8[10] = a7 != 0;
      return result;
    }

    goto LABEL_24;
  }

  v11 = a4 - 1;
  *(v8 + 7) = (v9 << 24) | ((a4 - 1) << 16) | a5 | 0x40000000;
  if (!a6)
  {
    v11 = a4;
  }

  v12 = -1 << v11;
  if (a4 <= 32)
  {
    v13 = ~v12;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = -v13;
  if (!a7)
  {
    v14 = ~v13;
  }

  v8[9] = v14;
  v8[10] = v13;
  return result;
}

_OWORD *createDFDPacked(int a1, int a2, int32x4_t *a3, uint64_t a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2 == 6)
  {
    v5 = malloc_type_malloc(0x7CuLL, 0x100004052888210uLL);
    *v5 = xmmword_186233930;
    v5[1] = xmmword_186233940;
    v5[2] = xmmword_186233950;
    v5[3] = xmmword_186233960;
    v5[4] = xmmword_186233970;
    v5[5] = xmmword_186233980;
    v5[6] = xmmword_186233990;
    *(v5 + 14) = 0xF00000000;
    *(v5 + 30) = 31;
    return v5;
  }

  if (!a1)
  {
    if (a2 < 1)
    {
      v33 = 0;
LABEL_34:
      v41 = 16 * a2 + 28;
      v42 = a2;
      v43 = malloc_type_malloc(16 * a2 + 28, 0x100004052888210uLL);
      v5 = v43;
      *v43 = v41;
      v43[1] = 0;
      v44 = 131329;
      if (a5 != 8)
      {
        v44 = 65793;
      }

      v43[2] = (v42 << 20) + 1572866;
      v43[3] = v44;
      v43[4] = 0;
      v43[5] = v33;
      v43[6] = 0;
      if (v42 >= 1)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          writeSample(v5, v45, *(a4 + 4 * v45), a3->i32[v45], v46, 1, 1, a5);
          v46 += a3->u32[v45++];
        }

        while (v42 != v45);
      }

      return v5;
    }

    if (a2 > 7)
    {
      v20 = a2 & 0x7FFFFFF8;
      v34 = a3 + 1;
      v35 = 0uLL;
      v36 = v20;
      v37 = 0uLL;
      do
      {
        v35 = vaddq_s32(v34[-1], v35);
        v37 = vaddq_s32(*v34, v37);
        v34 += 2;
        v36 -= 8;
      }

      while (v36);
      v21 = vaddvq_s32(vaddq_s32(v37, v35));
      if (v20 == a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v38 = &a3->i32[v20];
    v39 = a2 - v20;
    do
    {
      v40 = *v38++;
      v21 += v40;
      --v39;
    }

    while (v39);
LABEL_33:
    v33 = v21 >> 3;
    goto LABEL_34;
  }

  if (a2 < 1)
  {
    v9 = 0;
    v17 = 24;
  }

  else
  {
    v9 = 0;
    v10 = a2;
    v11 = v49;
    v12 = a2;
    v13 = a3;
    do
    {
      *v11++ = v9;
      v14 = v13->i32[0];
      v13 = (v13 + 4);
      v9 += v14;
      --v12;
    }

    while (v12);
    v15 = 0;
    v16 = 0;
    v17 = (v9 - 1) & 0x18;
    do
    {
      v49[(v16 ^ v17) + 4] = v15;
      v18 = a3->i32[v15] + v16;
      v19 = (v18 - 1) & 0xFFFFFFF8;
      if (v19 != (v16 & 0xFFFFFFF8))
      {
        v49[(v19 ^ v17) + 4] = v15;
        ++a2;
      }

      ++v15;
      v16 = v18;
    }

    while (v10 != v15);
  }

  v22 = 16 * a2 + 28;
  v23 = a2;
  v24 = malloc_type_malloc(16 * a2 + 28, 0x100004052888210uLL);
  v5 = v24;
  *v24 = v22;
  v24[1] = 0;
  v25 = 131329;
  if (a5 != 8)
  {
    v25 = 65793;
  }

  v24[2] = (v23 << 20) + 1572866;
  v24[3] = v25;
  v24[4] = 0;
  v24[5] = v9 >> 3;
  v24[6] = 0;
  v26 = a4;
  if (v9 >= 1)
  {
    v27 = 0;
    for (i = 0; i < v9; i += v32)
    {
      while (1)
      {
        while (1)
        {
          v29 = v49[i + 4];
          if (v29 != -1)
          {
            break;
          }

          i = (i & 0xFFFFFFF8) + 8;
          if (i >= v9)
          {
            return v5;
          }
        }

        v30 = v49[v29] ^ v17;
        if (v30 != i)
        {
          break;
        }

        writeSample(v5, v27++, *(v26 + 4 * v29), a3->i32[v29], i, 1, 1, a5);
        i += a3->i32[v29];
        if (i >= v9)
        {
          return v5;
        }
      }

      v31 = 8 - (v49[v29] & 7);
      v32 = a3->i32[v29] - v31;
      writeSample(v5, v27, *(v26 + 4 * v29), v31, v30, 0, 1, a5);
      v49[v30 + 4] = -1;
      v26 = a4;
      writeSample(v5, v27 + 1, *(a4 + 4 * v29), v32, i, 1, 0, a5);
      v27 += 2;
    }
  }

  return v5;
}

char *createDFDCompressed(unsigned int a1, int a2, int a3, int a4, int a5)
{
  v10 = a1;
  v11 = compSampleCount[a1];
  result = malloc_type_malloc(4 * (4 * v11 + 7), 0x100004052888210uLL);
  *result = 4 * (4 * v11 + 7);
  *(result + 1) = 0;
  *(result + 2) = (v11 << 20) + 1572866;
  if (a5 == 8)
  {
    v13 = 131328;
  }

  else
  {
    v13 = 65792;
  }

  *(result + 3) = compModelMapping[a1] | v13;
  *(result + 4) = ((a3 << 8) - 256) | (a2 - 1) | ((a4 << 16) - 0x10000);
  *(result + 5) = compBytes[a1];
  *(result + 6) = 0;
  v14 = compFirstChannel[a1];
  if (a5 <= 5)
  {
    if (a5 == 1)
    {
      v15 = (compChannelBits[v10] << 16) - 0x10000;
      *(result + 7) = v15 | (v14 << 24) | 0x40000000;
      *(result + 8) = 0;
      v16 = 0x7FFFFFFF;
      v17 = 0x80000000;
      *(result + 9) = 0x80000000;
      *(result + 10) = 0x7FFFFFFF;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    if (a5 == 3 || a5 == 5)
    {
      v15 = (compChannelBits[v10] << 16) - 0x10000;
      *(result + 7) = v15 | (v14 << 24) | 0x40000000;
      *(result + 8) = 0;
      v16 = 1;
      v17 = -1;
      *(result + 9) = -1;
      *(result + 10) = 1;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_31:
    v15 = (compChannelBits[v10] << 16) - 0x10000;
    *(result + 28) = v15 | (v14 << 24);
    if (a5 == 4 || a5 == 2)
    {
      v17 = 0;
      v16 = 1;
      *(result + 9) = 0;
      *(result + 10) = 1;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v17 = 0;
      v16 = -1;
      *(result + 9) = 0;
      *(result + 10) = -1;
      if (((0x162CuLL >> v10) & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  if (a5 == 6)
  {
    v15 = (compChannelBits[v10] << 16) - 0x10000;
    *(result + 7) = v15 | (v14 << 24) | 0xC0000000;
    *(result + 8) = 0;
    v16 = 1065353216;
    v17 = -1082130432;
    *(result + 9) = -1082130432;
    *(result + 10) = 1065353216;
    if (((0x162CuLL >> v10) & 1) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a5 == 7)
  {
    v17 = 0;
    v15 = (compChannelBits[v10] << 16) - 0x10000;
    *(result + 7) = v15 | (v14 << 24) | 0x80000000;
    *(result + 8) = 0;
    v16 = 1065353216;
    *(result + 9) = 0;
    *(result + 10) = 1065353216;
    if (((0x162CuLL >> v10) & 1) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a5 != 8)
  {
    goto LABEL_31;
  }

  v17 = 0;
  v18 = v14 << 24;
  if ((0x40CuLL >> v10))
  {
    v18 = 520093696;
  }

  v15 = (compChannelBits[v10] << 16) - 0x10000;
  *(result + 7) = v15 | v18;
  *(result + 8) = 0;
  v16 = -1;
  *(result + 9) = 0;
  *(result + 10) = -1;
  if ((0x162CuLL >> v10))
  {
LABEL_20:
    v19 = compSecondChannel[v10];
    if (a5 > 5)
    {
      if (a5 == 6)
      {
        v19 |= 0xC0u;
      }

      else if (a5 == 7)
      {
        v19 |= 0x80u;
      }

      else if (a5 == 8 && a1 == 9)
      {
        v19 = 31;
      }
    }

    else if (a5 == 1 || a5 == 3 || a5 == 5)
    {
      v19 |= 0x40u;
    }

    *(result + 44) = compSecondChannelOffset[v10] | v15 | (v19 << 24);
    *(result + 13) = v17;
    *(result + 14) = v16;
  }

  return result;
}

char *createDFDDepthStencil(int a1, int a2, int a3)
{
  if (a2 <= 0)
  {
    v6 = a1 > 0;
  }

  else
  {
    v6 = (a1 > 0) + 1;
  }

  result = malloc_type_malloc((16 * v6 + 28), 0x100004052888210uLL);
  *result = 16 * v6 + 28;
  *(result + 1) = 0;
  *(result + 2) = (v6 << 20) + 1572866;
  *(result + 12) = 65793;
  *(result + 5) = a3;
  *(result + 6) = 0;
  if (a1 == 32)
  {
    *(result + 28) = xmmword_1862339A0;
    if (a2 <= 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 <= 0)
  {
    if (a2 > 0)
    {
      v9 = (result + 28);
      v10 = (a2 << 16) - 0x10000;
      v11 = 40;
      v12 = 36;
      v13 = 32;
      goto LABEL_13;
    }
  }

  else
  {
    *(result + 7) = ((a1 << 16) - 0x10000) | 0xE000000;
    *(result + 4) = 0;
    if (a1 <= 0x20)
    {
      v8 = ~(-1 << a1);
    }

    else
    {
      v8 = -1;
    }

    *(result + 10) = v8;
    if (a2 > 0)
    {
LABEL_12:
      v9 = (result + 44);
      v10 = ((a2 << 16) - 0x10000) | a1;
      v11 = 56;
      v12 = 52;
      v13 = 48;
LABEL_13:
      *v9 = v10 | 0xD000000;
      *&result[v13] = 0;
      *&result[v12] = 0;
      *&result[v11] = 1;
    }
  }

  return result;
}

uint64_t interpretDFD(_DWORD *a1, void *a2, void *a3, void *a4, void *a5, unsigned int *a6)
{
  if (*a1 < 0x2Cu)
  {
    return 64;
  }

  v6 = (a1[2] >> 18) - 6;
  if (v6 > 0x103 || *a1 != ((4 * v6) & 0x7F0) + 28)
  {
    return 64;
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v7 = a1[5];
  if (v7 > 0xFF || a1[6])
  {
    return 66;
  }

  v9 = a1[3];
  if (v9 != 1)
  {
    return 67;
  }

  v10 = v6 >> 2;
  v11 = 4 * ((v9 & 0xFF0000) == 0x20000);
  if (v6 < 4)
  {
    goto LABEL_10;
  }

  v12 = a1 + 8;
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  do
  {
    v15 = *v12;
    v12 += 4;
    if (v15)
    {
      return 65;
    }

    --v14;
  }

  while (v14);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = (a1 + 7);
  v20 = v13;
  v21 = (a1 + 7);
  do
  {
    v22 = *v21;
    if (v18)
    {
      if ((LODWORD(v22) & 0x80000000) != 0)
      {
        if ((v11 & 0x20) == 0)
        {
          return 68;
        }
      }

      else if ((v11 & 0x20) != 0)
      {
        return 68;
      }

      v18 = 1;
    }

    else
    {
      v18 = LODWORD(v22) >> 31;
      v11 = v11 | (32 * (LODWORD(v22) >> 31));
    }

    v23 = *v21 & 0x40000000;
    if (v17)
    {
      if (v23)
      {
        if ((v11 & 0x10) == 0)
        {
          return 68;
        }
      }

      else if ((v11 & 0x10) != 0)
      {
        return 68;
      }

      v17 = 1;
    }

    else
    {
      v17 = v23 >> 30;
      v11 = v11 | (v23 >> 26);
    }

    if (v16)
    {
      goto LABEL_24;
    }

    v16 = *(v21 + 2);
    if (*(v21 + 2))
    {
      if ((v11 & 0x20) == 0)
      {
        if (*(v21 + 3) == 1)
        {
          v11 = v11;
        }

        else
        {
          v11 = v11 | 8;
        }

LABEL_24:
        v16 = 1;
        goto LABEL_25;
      }

      if (v21[3] == 1.0)
      {
        v11 = v11;
      }

      else
      {
        v11 = v11 | 8;
      }

      v16 = 1;
    }

LABEL_25:
    v21 += 4;
    --v20;
  }

  while (v20);
  while (1)
  {
    v24 = *v19;
    v19 += 16;
    if ((v24 & 7) != 0)
    {
      break;
    }

    if (!--v13)
    {
      goto LABEL_10;
    }
  }

  v11 = v11 | 2;
LABEL_10:
  if ((v11 & 2) != 0)
  {
    *a6 = v7;
    if (v6 >= 4)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (v10 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v10;
      }

      v42 = a1 + 7;
      v43 = -1;
      while (1)
      {
        while (1)
        {
          v45 = *v42;
          v42 += 4;
          v44 = v45;
          v46 = HIBYTE(v45) & 0xF;
          result = 67;
          if (v46 > 1)
          {
            v47 = a4;
            if (v46 != 2)
            {
              if (v46 != 15)
              {
                return result;
              }

              v47 = a5;
            }
          }

          else
          {
            v47 = a2;
            if (v46)
            {
              v47 = a3;
            }
          }

          v48 = BYTE2(v44) + 1;
          if (v46 == v43)
          {
            break;
          }

          if (v47[1])
          {
            return 64;
          }

          *v47 = v44;
          v47[1] = v48;
          v43 = v46;
          v38 = BYTE2(v44) + 1;
          v39 = v44 >> 3;
          v40 = v44;
          if (!--v41)
          {
            goto LABEL_51;
          }
        }

        if (v44 >> 3 != v39 - 1 || ((v44 | (v38 + v40)) & 7) != 0)
        {
          return 64;
        }

        v11 = v11 | 1;
        v47[1] += v48;
        v38 = BYTE2(v44) + 1;
        v39 = v44 >> 3;
        v40 = v44;
        if (!--v41)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
LABEL_51:
      if (v11)
      {
        v49 = 8 * *a6 - 8;
        *a2 ^= v49;
        *a3 ^= v49;
        *a4 ^= v49;
        *a5 ^= v49;
      }

      return v11;
    }
  }

  else if (v6 >= 4)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (v10 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v10;
    }

    v29 = a1 + 7;
    v30 = -1;
    do
    {
      while (1)
      {
        v33 = *v29;
        v29 += 4;
        v32 = v33;
        v34 = HIBYTE(v33) & 0xF;
        result = 67;
        if (v34 > 1)
        {
          v35 = a4;
          if (v34 != 2)
          {
            if (v34 != 15)
            {
              return result;
            }

            v35 = a5;
          }
        }

        else
        {
          v35 = a2;
          if (v34)
          {
            v35 = a3;
          }
        }

        v36 = v32 >> 3;
        v37 = (BYTE2(v32) + 1) >> 3;
        if (v34 != v30)
        {
          break;
        }

        if (v36 == v26 - 1)
        {
          if (v27 && (v11 & 1) == 0)
          {
            return 64;
          }

          v11 = v11 | 1;
          *v35 = v36;
        }

        else if (v36 != v25 + v26 || v27 && (v11 & 1) != 0)
        {
          return 64;
        }

        v31 = v35[1] + v37;
        v35[1] = v31;
        v27 = 1;
        *a6 = v31;
        v25 = v37;
        v26 = v36;
        result = v11;
        if (!--v28)
        {
          return result;
        }
      }

      if (v35[1])
      {
        return 64;
      }

      *v35 = v36;
      v35[1] = v37;
      v25 = v37;
      v30 = v34;
      *a6 = v37;
      v26 = v36;
      result = v11;
      --v28;
    }

    while (v28);
  }

  else
  {
    return v11;
  }

  return result;
}

uint64_t getDFDComponentInfoUnpacked(uint64_t result, _DWORD *a2, unsigned int *a3)
{
  v3 = (*(result + 8) >> 18) - 6;
  *a2 = 0;
  if (v3 >= 4)
  {
    LODWORD(v4) = v3 >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    v5 = (result + 28);
    v6 = -1;
    do
    {
      while (1)
      {
        v7 = *v5;
        v5 += 4;
        v8 = (BYTE2(v7) + 1) >> 3;
        v9 = HIBYTE(v7) & 0xF;
        if (v9 == v6)
        {
          break;
        }

        ++*a2;
        v6 = v9;
        *a3 = v8;
        if (!--v4)
        {
          return result;
        }
      }

      *a3 += v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t getDFDNumComponents(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 18) - 6;
  if (v1 < 4)
  {
    return 0;
  }

  LODWORD(v3) = v1 >> 2;
  if (v1 >> 2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  if (v1 >= 0x24)
  {
    if ((v3 & 7) != 0)
    {
      v7 = v3 & 7;
    }

    else
    {
      v7 = 8;
    }

    v4 = v3 - v7;
    v8 = (a1 + 92);
    v9 = v7 - v3;
    v10 = 0uLL;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    v12 = 0uLL;
    do
    {
      v13 = v8 - 16;
      v14 = vld4q_f32(v13);
      v15 = vld4q_f32(v8);
      v16 = *&vshrq_n_u32(v14, 0x18uLL) & __PAIR128__(0xFFFFFF0FFFFFFF0FLL, 0xFFFFFF0FFFFFFF0FLL);
      v17 = vextq_s8(v11, v16, 0xCuLL);
      v11 = *&vshrq_n_u32(v15, 0x18uLL) & __PAIR128__(0xFFFFFF0FFFFFFF0FLL, 0xFFFFFF0FFFFFFF0FLL);
      v10 = vsubq_s32(v10, vmvnq_s8(vceqq_s32(v16, v17)));
      v12 = vsubq_s32(v12, vmvnq_s8(vceqq_s32(v11, vextq_s8(v16, v11, 0xCuLL))));
      v8 += 32;
      v9 += 8;
    }

    while (v9);
    LODWORD(v5) = vaddvq_s32(vaddq_s32(v12, v10));
    v6 = HIDWORD(v11);
  }

  else
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = -1;
  }

  v18 = a1 + 16 * v4 + 28;
  v19 = v4 - v3;
  do
  {
    v20 = *(v18 + 3) & 0xF;
    if (v20 == v6)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v5 + 1);
    }

    v18 += 16;
    v6 = v20;
  }

  while (!__CFADD__(v19++, 1));
  return v5;
}

uint64_t recreateBytesPlane0FromSampleInfo(_DWORD *a1, unsigned int *a2)
{
  if (*a1 < 0x2Cu)
  {
    return 64;
  }

  v3 = (a1[2] >> 18) - 6;
  if (v3 > 0x103 || *a1 != ((4 * v3) & 0x7F0) + 28)
  {
    return 64;
  }

  v6 = malloc_type_malloc(v3 & 0x1FC, 0x100004052888210uLL);
  memset(v6, 255, v3 & 0x1FC);
  if (v3 >= 4)
  {
    v8 = 0;
    v9 = 0;
    v10 = v3 >> 2;
    v11 = a1 + 7;
    if (v3 >> 2 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    do
    {
      v13 = 0;
      v14 = v11[4 * v8];
      while (v14 != *(v6 + v13))
      {
        if (v12 == ++v13)
        {
          LODWORD(v13) = v12;
          break;
        }
      }

      if (v13 == v10)
      {
        v9 += BYTE2(v11[4 * v8]) + 1;
        *(v6 + v8) = v14;
      }

      ++v8;
    }

    while (v8 != v12);
    v7 = v9 >> 3;
  }

  else
  {
    v7 = 0;
  }

  free(v6);
  *a2 = v7;
  return 1;
}

char *vk2dfd(int a1)
{
  result = 0;
  v36 = *MEMORY[0x1E69E9840];
  if (a1 <= 1000054001)
  {
    switch(a1)
    {
      case 1:
        *&v35 = 1;
        *&v34 = 0x400000004;
        v3 = &v34;
        v4 = &v35;
        v5 = 2;
        goto LABEL_425;
      case 2:
        v8 = &xmmword_186233B9C;
        goto LABEL_421;
      case 3:
        v8 = &xmmword_186207DF0;
        goto LABEL_421;
      case 4:
        DWORD2(v35) = 0;
        v12 = 0x100000002;
        goto LABEL_116;
      case 5:
        DWORD2(v35) = 2;
        v12 = 0x100000000;
LABEL_116:
        *&v35 = v12;
        DWORD2(v34) = 5;
        *&v34 = 0x600000005;
        v3 = &v34;
        v4 = &v35;
        v5 = 3;
        goto LABEL_425;
      case 6:
        v22 = &xmmword_186233B9C;
        goto LABEL_423;
      case 7:
        v22 = &xmmword_186207DF0;
LABEL_423:
        v35 = *v22;
        v27 = &xmmword_186233BB0;
        goto LABEL_424;
      case 8:
        v35 = xmmword_186224A90;
        v27 = &xmmword_186233BC0;
        goto LABEL_424;
      case 9:
        v13 = 1;
        goto LABEL_152;
      case 10:
        v13 = 1;
        goto LABEL_403;
      case 11:
        v13 = 1;
        goto LABEL_331;
      case 12:
        v13 = 1;
        goto LABEL_442;
      case 13:
        v13 = 1;
        goto LABEL_433;
      case 14:
        v13 = 1;
        goto LABEL_438;
      case 15:
        v13 = 1;
        goto LABEL_412;
      case 16:
        v13 = 2;
        goto LABEL_152;
      case 17:
        v13 = 2;
        goto LABEL_403;
      case 18:
        v13 = 2;
        goto LABEL_331;
      case 19:
        v13 = 2;
        goto LABEL_442;
      case 20:
        v13 = 2;
        goto LABEL_433;
      case 21:
        v13 = 2;
        goto LABEL_438;
      case 22:
        v13 = 2;
        goto LABEL_412;
      case 23:
        v13 = 3;
        goto LABEL_152;
      case 24:
        v13 = 3;
        goto LABEL_403;
      case 25:
        v13 = 3;
        goto LABEL_331;
      case 26:
        v13 = 3;
        goto LABEL_442;
      case 27:
        v13 = 3;
        goto LABEL_433;
      case 28:
        v13 = 3;
        goto LABEL_438;
      case 29:
        v13 = 3;
        goto LABEL_412;
      case 30:
        v13 = 3;
        goto LABEL_429;
      case 31:
        v13 = 3;
        goto LABEL_222;
      case 32:
        v13 = 3;
        goto LABEL_142;
      case 33:
        v13 = 3;
        goto LABEL_157;
      case 34:
        v13 = 3;
        goto LABEL_336;
      case 35:
        v13 = 3;
        goto LABEL_183;
      case 36:
        v13 = 3;
        goto LABEL_393;
      case 37:
        v13 = 4;
LABEL_152:
        v19 = 1;
        v20 = 0;
        v21 = 0;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 38:
        v13 = 4;
LABEL_403:
        v19 = 1;
        v20 = 0;
        v21 = 1;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 39:
        v13 = 4;
LABEL_331:
        v19 = 1;
        v20 = 0;
        v21 = 2;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 40:
        v13 = 4;
LABEL_442:
        v19 = 1;
        v20 = 0;
        v21 = 3;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 41:
        v13 = 4;
LABEL_433:
        v19 = 1;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 42:
        v13 = 4;
LABEL_438:
        v19 = 1;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 43:
        v13 = 4;
LABEL_412:
        v19 = 1;
        v20 = 0;
        v21 = 8;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 44:
        v13 = 4;
LABEL_429:
        v19 = 1;
        v20 = 1;
        v21 = 0;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 45:
        v13 = 4;
LABEL_222:
        v19 = 1;
        v20 = 1;
        v21 = 1;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 46:
        v13 = 4;
LABEL_142:
        v19 = 1;
        v20 = 1;
        v21 = 2;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 47:
        v13 = 4;
LABEL_157:
        v19 = 1;
        v20 = 1;
        v21 = 3;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 48:
        v13 = 4;
LABEL_336:
        v19 = 1;
        v20 = 1;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 49:
        v13 = 4;
LABEL_183:
        v19 = 1;
        v20 = 1;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 50:
        v13 = 4;
LABEL_393:
        v19 = 1;
        v20 = 1;
        v21 = 8;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 51:
        v35 = xmmword_186205980;
        v27 = &xmmword_186233BD0;
        goto LABEL_424;
      case 52:
        v35 = xmmword_186205980;
        v16 = &xmmword_186233BD0;
        goto LABEL_295;
      case 53:
        v35 = xmmword_186205980;
        v14 = &xmmword_186233BD0;
        goto LABEL_349;
      case 54:
        v35 = xmmword_186205980;
        v26 = &xmmword_186233BD0;
        goto LABEL_196;
      case 55:
        v35 = xmmword_186205980;
        v29 = &xmmword_186233BD0;
        goto LABEL_324;
      case 56:
        v35 = xmmword_186205980;
        v32 = &xmmword_186233BD0;
        goto LABEL_292;
      case 57:
        v34 = xmmword_186233BD0;
        v35 = xmmword_186205980;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 8;
        goto LABEL_426;
      case 58:
        v18 = &xmmword_186224A90;
        goto LABEL_276;
      case 59:
        v31 = &xmmword_186224A90;
        goto LABEL_294;
      case 60:
        v33 = &xmmword_186224A90;
        goto LABEL_348;
      case 61:
        v15 = &xmmword_186224A90;
        goto LABEL_195;
      case 62:
        v17 = &xmmword_186224A90;
        goto LABEL_323;
      case 63:
        v30 = &xmmword_186224A90;
        goto LABEL_291;
      case 64:
        v18 = &xmmword_186205980;
LABEL_276:
        v35 = *v18;
        v27 = &xmmword_186233BE0;
        goto LABEL_424;
      case 65:
        v31 = &xmmword_186205980;
LABEL_294:
        v35 = *v31;
        v16 = &xmmword_186233BE0;
LABEL_295:
        v34 = *v16;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 1;
        goto LABEL_426;
      case 66:
        v33 = &xmmword_186205980;
LABEL_348:
        v35 = *v33;
        v14 = &xmmword_186233BE0;
LABEL_349:
        v34 = *v14;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 2;
        goto LABEL_426;
      case 67:
        v15 = &xmmword_186205980;
LABEL_195:
        v35 = *v15;
        v26 = &xmmword_186233BE0;
LABEL_196:
        v34 = *v26;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 3;
        goto LABEL_426;
      case 68:
        v17 = &xmmword_186205980;
LABEL_323:
        v35 = *v17;
        v29 = &xmmword_186233BE0;
LABEL_324:
        v34 = *v29;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 4;
        goto LABEL_426;
      case 69:
        v30 = &xmmword_186205980;
LABEL_291:
        v35 = *v30;
        v32 = &xmmword_186233BE0;
LABEL_292:
        v34 = *v32;
        v3 = &v34;
        v4 = &v35;
        v5 = 4;
        v28 = 5;
        goto LABEL_426;
      case 70:
        v13 = 1;
        goto LABEL_389;
      case 71:
        v13 = 1;
        goto LABEL_417;
      case 72:
        v13 = 1;
        goto LABEL_297;
      case 73:
        v13 = 1;
        goto LABEL_407;
      case 74:
        v13 = 1;
        goto LABEL_398;
      case 75:
        v13 = 1;
        goto LABEL_385;
      case 76:
        v13 = 1;
        goto LABEL_375;
      case 77:
        v13 = 2;
        goto LABEL_389;
      case 78:
        v13 = 2;
        goto LABEL_417;
      case 79:
        v13 = 2;
        goto LABEL_297;
      case 80:
        v13 = 2;
        goto LABEL_407;
      case 81:
        v13 = 2;
        goto LABEL_398;
      case 82:
        v13 = 2;
        goto LABEL_385;
      case 83:
        v13 = 2;
        goto LABEL_375;
      case 84:
        v13 = 3;
        goto LABEL_389;
      case 85:
        v13 = 3;
        goto LABEL_417;
      case 86:
        v13 = 3;
        goto LABEL_297;
      case 87:
        v13 = 3;
        goto LABEL_407;
      case 88:
        v13 = 3;
        goto LABEL_398;
      case 89:
        v13 = 3;
        goto LABEL_385;
      case 90:
        v13 = 3;
        goto LABEL_375;
      case 91:
        v13 = 4;
LABEL_389:
        v19 = 2;
        v20 = 0;
        v21 = 0;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 92:
        v13 = 4;
LABEL_417:
        v19 = 2;
        v20 = 0;
        v21 = 1;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 93:
        v13 = 4;
LABEL_297:
        v19 = 2;
        v20 = 0;
        v21 = 2;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 94:
        v13 = 4;
LABEL_407:
        v19 = 2;
        v20 = 0;
        v21 = 3;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 95:
        v13 = 4;
LABEL_398:
        v19 = 2;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 96:
        v13 = 4;
LABEL_385:
        v19 = 2;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 97:
        v13 = 4;
LABEL_375:
        v19 = 2;
        v20 = 0;
        v21 = 6;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 98:
        v13 = 1;
        goto LABEL_287;
      case 99:
        v13 = 1;
        goto LABEL_279;
      case 100:
        v13 = 1;
        goto LABEL_371;
      case 101:
        v13 = 2;
        goto LABEL_287;
      case 102:
        v13 = 2;
        goto LABEL_279;
      case 103:
        v13 = 2;
        goto LABEL_371;
      case 104:
        v13 = 3;
        goto LABEL_287;
      case 105:
        v13 = 3;
        goto LABEL_279;
      case 106:
        v13 = 3;
        goto LABEL_371;
      case 107:
        v13 = 4;
LABEL_287:
        v19 = 4;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 108:
        v13 = 4;
LABEL_279:
        v19 = 4;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 109:
        v13 = 4;
LABEL_371:
        v19 = 4;
        v20 = 0;
        v21 = 6;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 110:
        v13 = 1;
        goto LABEL_379;
      case 111:
        v13 = 1;
        goto LABEL_357;
      case 112:
        v13 = 1;
        goto LABEL_340;
      case 113:
        v13 = 2;
        goto LABEL_379;
      case 114:
        v13 = 2;
        goto LABEL_357;
      case 115:
        v13 = 2;
        goto LABEL_340;
      case 116:
        v13 = 3;
        goto LABEL_379;
      case 117:
        v13 = 3;
        goto LABEL_357;
      case 118:
        v13 = 3;
        goto LABEL_340;
      case 119:
        v13 = 4;
LABEL_379:
        v19 = 8;
        v20 = 0;
        v21 = 4;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 120:
        v13 = 4;
LABEL_357:
        v19 = 8;
        v20 = 0;
        v21 = 5;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 121:
        v13 = 4;
LABEL_340:
        v19 = 8;
        v20 = 0;
        v21 = 6;

        return createDFDUnpacked(0, v13, v19, v20, v21);
      case 122:
        DWORD2(v35) = 2;
        *&v35 = 0x100000000;
        DWORD2(v34) = 10;
        *&v34 = 0xB0000000BLL;
        v3 = &v34;
        v4 = &v35;
        v5 = 3;
        v28 = 7;
        goto LABEL_426;
      case 123:
        LODWORD(v35) = 0;
        LODWORD(v34) = 0;
        v3 = &v35;
        v4 = &v34;
        v5 = 6;
        v28 = 7;
        goto LABEL_426;
      case 124:
        v23 = 16;
        v24 = 0;
        v25 = 2;

        return createDFDDepthStencil(v23, v24, v25);
      case 125:
        v23 = 24;
        v24 = 0;
        v25 = 4;

        return createDFDDepthStencil(v23, v24, v25);
      case 126:
        v23 = 32;
        v24 = 0;
        v25 = 4;

        return createDFDDepthStencil(v23, v24, v25);
      case 127:
        v23 = 0;
        v24 = 8;
        v25 = 1;

        return createDFDDepthStencil(v23, v24, v25);
      case 128:
        v23 = 16;
        v24 = 8;
        v25 = 3;

        return createDFDDepthStencil(v23, v24, v25);
      case 129:
        v23 = 24;
        v24 = 8;
        v25 = 4;

        return createDFDDepthStencil(v23, v24, v25);
      case 130:
        v23 = 32;
        v24 = 8;
        v25 = 5;

        return createDFDDepthStencil(v23, v24, v25);
      case 131:
        v6 = 0;
        goto LABEL_365;
      case 132:
        v6 = 0;
        goto LABEL_352;
      case 133:
        v6 = 1;
        goto LABEL_365;
      case 134:
        v6 = 1;
        goto LABEL_352;
      case 135:
        v6 = 2;
        goto LABEL_365;
      case 136:
        v6 = 2;
        goto LABEL_352;
      case 137:
        v6 = 3;
        goto LABEL_365;
      case 138:
        v6 = 3;
        goto LABEL_352;
      case 139:
        v6 = 4;
        goto LABEL_365;
      case 140:
        v6 = 4;
        goto LABEL_318;
      case 141:
        v6 = 5;
        goto LABEL_365;
      case 142:
        v6 = 5;
        goto LABEL_318;
      case 143:
        v6 = 6;
        v7 = 4;
        v9 = 4;
        v10 = 1;
        v11 = 7;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 144:
        v6 = 6;
        v7 = 4;
        goto LABEL_458;
      case 145:
        v6 = 7;
        goto LABEL_365;
      case 146:
        v6 = 7;
        goto LABEL_352;
      case 147:
        v6 = 8;
        goto LABEL_365;
      case 148:
        v6 = 8;
        goto LABEL_352;
      case 149:
        v6 = 9;
        goto LABEL_365;
      case 150:
        v6 = 9;
        goto LABEL_352;
      case 151:
        v6 = 10;
        goto LABEL_365;
      case 152:
        v6 = 10;
        goto LABEL_352;
      case 153:
        v6 = 11;
        goto LABEL_365;
      case 154:
        v6 = 11;
        goto LABEL_318;
      case 155:
        v6 = 12;
        goto LABEL_365;
      case 156:
        v6 = 12;
LABEL_318:
        v7 = 4;
        v9 = 4;
        v10 = 1;
        v11 = 1;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 157:
        v6 = 13;
        goto LABEL_365;
      case 158:
        v6 = 13;
        goto LABEL_352;
      case 159:
        v6 = 13;
        v7 = 5;
        goto LABEL_366;
      case 160:
        v6 = 13;
        v7 = 5;
        goto LABEL_353;
      case 161:
        v6 = 13;
        v7 = 5;
        goto LABEL_314;
      case 162:
        v6 = 13;
        v7 = 5;
        goto LABEL_283;
      case 163:
        v6 = 13;
        v7 = 6;
        goto LABEL_314;
      case 164:
        v6 = 13;
        v7 = 6;
        goto LABEL_283;
      case 165:
        v6 = 13;
        v7 = 6;
        goto LABEL_303;
      case 166:
        v6 = 13;
        v7 = 6;
        goto LABEL_266;
      case 167:
        v6 = 13;
        v7 = 8;
        goto LABEL_314;
      case 168:
        v6 = 13;
        v7 = 8;
        goto LABEL_283;
      case 169:
        v6 = 13;
        v7 = 8;
        goto LABEL_303;
      case 170:
        v6 = 13;
        v7 = 8;
        goto LABEL_266;
      case 171:
        v6 = 13;
        v7 = 8;
        goto LABEL_256;
      case 172:
        v6 = 13;
        v7 = 8;
        goto LABEL_260;
      case 173:
        v6 = 13;
        v7 = 10;
LABEL_314:
        v9 = 5;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 174:
        v6 = 13;
        v7 = 10;
LABEL_283:
        v9 = 5;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 175:
        v6 = 13;
        v7 = 10;
LABEL_303:
        v9 = 6;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 176:
        v6 = 13;
        v7 = 10;
LABEL_266:
        v9 = 6;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 177:
        v6 = 13;
        v7 = 10;
LABEL_256:
        v9 = 8;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 178:
        v6 = 13;
        v7 = 10;
LABEL_260:
        v9 = 8;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 179:
        v6 = 13;
        v7 = 10;
        goto LABEL_249;
      case 180:
        v6 = 13;
        v7 = 10;
        goto LABEL_218;
      case 181:
        v6 = 13;
        v7 = 12;
LABEL_249:
        v9 = 10;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 182:
        v6 = 13;
        v7 = 12;
LABEL_218:
        v9 = 10;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 183:
        v6 = 13;
        v7 = 12;
        v9 = 12;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      case 184:
        v6 = 13;
        v7 = 12;
        v9 = 12;
        v10 = 1;
        v11 = 8;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      default:
        if (a1 == 1000054000)
        {
          v6 = 15;
          v7 = 8;
          goto LABEL_366;
        }

        if (a1 != 1000054001)
        {
          return result;
        }

        v6 = 15;
        break;
    }

    goto LABEL_365;
  }

  if (a1 <= 1000287999)
  {
    if (a1 <= 1000054005)
    {
      if (a1 <= 1000054003)
      {
        if (a1 == 1000054002)
        {
          v6 = 16;
          v7 = 8;
          goto LABEL_366;
        }

        v6 = 16;
LABEL_365:
        v7 = 4;
LABEL_366:
        v9 = 4;
        v10 = 1;
        v11 = 0;

        return createDFDCompressed(v6, v7, v9, v10, v11);
      }

      if (a1 == 1000054004)
      {
        v6 = 15;
LABEL_447:
        v7 = 8;
        goto LABEL_353;
      }

      v6 = 15;
    }

    else
    {
      switch(a1)
      {
        case 1000066000:
          v6 = 13;
          v7 = 4;
          goto LABEL_458;
        case 1000066001:
          v6 = 13;
          v7 = 5;
LABEL_458:
          v9 = 4;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066002:
          v6 = 13;
          v7 = 5;
          goto LABEL_474;
        case 1000066003:
          v6 = 13;
          v7 = 6;
          goto LABEL_474;
        case 1000066004:
          v6 = 13;
          v7 = 6;
          goto LABEL_466;
        case 1000066005:
          v6 = 13;
          v7 = 8;
          goto LABEL_474;
        case 1000066006:
          v6 = 13;
          v7 = 8;
          goto LABEL_466;
        case 1000066007:
          v6 = 13;
          v7 = 8;
          goto LABEL_470;
        case 1000066008:
          v6 = 13;
          v7 = 10;
LABEL_474:
          v9 = 5;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066009:
          v6 = 13;
          v7 = 10;
LABEL_466:
          v9 = 6;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066010:
          v6 = 13;
          v7 = 10;
LABEL_470:
          v9 = 8;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066011:
          v6 = 13;
          v7 = 10;
          goto LABEL_450;
        case 1000066012:
          v6 = 13;
          v7 = 12;
LABEL_450:
          v9 = 10;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        case 1000066013:
          v6 = 13;
          v7 = 12;
          v9 = 12;
          v10 = 1;
          v11 = 6;

          return createDFDCompressed(v6, v7, v9, v10, v11);
        default:
          if (a1 == 1000054006)
          {
            v6 = 16;
            goto LABEL_447;
          }

          if (a1 != 1000054007)
          {
            return result;
          }

          v6 = 16;
          break;
      }
    }

LABEL_352:
    v7 = 4;
LABEL_353:
    v9 = 4;
    v10 = 1;
    v11 = 8;

    return createDFDCompressed(v6, v7, v9, v10, v11);
  }

  switch(a1)
  {
    case 1000288000:
      v6 = 13;
      v7 = 3;
      goto LABEL_54;
    case 1000288001:
      v6 = 13;
      v7 = 3;
      goto LABEL_61;
    case 1000288002:
      v6 = 13;
      v7 = 3;
      goto LABEL_69;
    case 1000288003:
      v6 = 13;
      v7 = 4;
LABEL_54:
      v9 = 3;
      v10 = 3;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288004:
      v6 = 13;
      v7 = 4;
LABEL_61:
      v9 = 3;
      v10 = 3;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288005:
      v6 = 13;
      v7 = 4;
LABEL_69:
      v9 = 3;
      v10 = 3;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288006:
      v6 = 13;
      v7 = 4;
      v9 = 4;
      v10 = 3;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288007:
      v6 = 13;
      v7 = 4;
      v9 = 4;
      v10 = 3;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288008:
      v6 = 13;
      v7 = 4;
      v9 = 4;
      v10 = 3;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288009:
      v6 = 13;
      v7 = 4;
      goto LABEL_40;
    case 1000288010:
      v6 = 13;
      v7 = 4;
      goto LABEL_82;
    case 1000288011:
      v6 = 13;
      v7 = 4;
      goto LABEL_34;
    case 1000288012:
      v6 = 13;
      v7 = 5;
LABEL_40:
      v9 = 4;
      v10 = 4;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288013:
      v6 = 13;
      v7 = 5;
LABEL_82:
      v9 = 4;
      v10 = 4;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288014:
      v6 = 13;
      v7 = 5;
LABEL_34:
      v9 = 4;
      v10 = 4;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288015:
      v6 = 13;
      v7 = 5;
      v9 = 5;
      v10 = 4;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288016:
      v6 = 13;
      v7 = 5;
      v9 = 5;
      v10 = 4;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288017:
      v6 = 13;
      v7 = 5;
      v9 = 5;
      v10 = 4;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288018:
      v6 = 13;
      v7 = 5;
      goto LABEL_78;
    case 1000288019:
      v6 = 13;
      v7 = 5;
      goto LABEL_91;
    case 1000288020:
      v6 = 13;
      v7 = 5;
      goto LABEL_95;
    case 1000288021:
      v6 = 13;
      v7 = 6;
LABEL_78:
      v9 = 5;
      v10 = 5;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288022:
      v6 = 13;
      v7 = 6;
LABEL_91:
      v9 = 5;
      v10 = 5;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288023:
      v6 = 13;
      v7 = 6;
LABEL_95:
      v9 = 5;
      v10 = 5;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288024:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 5;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288025:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 5;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288026:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 5;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288027:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 6;
      v11 = 0;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288028:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 6;
      v11 = 8;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    case 1000288029:
      v6 = 13;
      v7 = 6;
      v9 = 6;
      v10 = 6;
      v11 = 6;

      return createDFDCompressed(v6, v7, v9, v10, v11);
    default:
      if (a1 == 1000340000)
      {
        v8 = &xmmword_186224A90;
      }

      else
      {
        if (a1 != 1000340001)
        {
          return result;
        }

        v8 = &xmmword_186205980;
      }

LABEL_421:
      v35 = *v8;
      v27 = &xmmword_186233BF0;
LABEL_424:
      v34 = *v27;
      v3 = &v34;
      v4 = &v35;
      v5 = 4;
LABEL_425:
      v28 = 0;
LABEL_426:
      result = createDFDPacked(0, v5, v3, v4, v28);
      break;
  }

  return result;
}