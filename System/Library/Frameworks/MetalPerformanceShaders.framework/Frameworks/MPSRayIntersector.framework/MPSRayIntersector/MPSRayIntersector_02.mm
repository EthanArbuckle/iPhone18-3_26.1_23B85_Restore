uint64_t sub_239E0F98C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 168);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v11, 1, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 64) + 32), v15);
  v16 = *(a1 + 80);
  v17 = *(a1 + 172);
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 88) + 32), v22);
  v23 = *(a1 + 96);
  v24 = *(a1 + 176);
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 104) + 32), v29);
  v30 = *(a1 + 112);
  v31 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 128) + 32), v36);
  v37 = *(a1 + 136);
  v38 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v42 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v39, 0, v40, v41);
  sub_239E006FC(v37, v38, v42, *(*(a1 + 144) + 32), v43);
  v44 = *(a1 + 152);
  v45 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v46, 0, v47, v48);
  sub_239E006FC(v44, v45, v49, *(*(a1 + 160) + 32), v50);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v51, 2, v52, v53);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v54 = *(a1 + 120);
  if (v54)
  {
    v55 = *(v54 + 48);
    if (v55)
    {
      *(v54 + 56) = v55;
      operator delete(v55);
    }

    v56 = *(v54 + 24);
    if (v56)
    {
      *(v54 + 32) = v56;
      operator delete(v56);
    }

    v57 = *v54;
    if (*v54)
    {
      *(v54 + 8) = v57;
      operator delete(v57);
    }

    MEMORY[0x23EE7D780](v54, 0x10C40E523AF1CLL);
  }

  v58 = *(a1 + 56);
  add = atomic_fetch_add(v58 + 2, 0xFFFFFFFF);
  if (v58 && add == 1)
  {
    (*(*v58 + 8))(v58);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E0FC84(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v155 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4();
  }

  v16 = a2[2];
  v140 = a2[3];
  kdebug_trace();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18, v19, v20) == 2)
    {
      v28 = objc_msgSend_newBufferWithLength_options_(v16, v24, a8 << 6, 0, v27);
      v23 = objc_msgSend_commandBuffer(v140, v29, v30, v31, v32);
      v22 = objc_msgSend_blitCommandEncoder(v23, v33, v34, v35, v36);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v37, a3, a4, v28, 0, a8 << 6);
      v21 = objc_msgSend_contents(v28, v38, v39, v40, v41);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v21 = objc_msgSend_contents(a3, v24, v25, v26, v27) + a4;
    }
  }

  v138 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18, v19, v20) == 2)
  {
    v50 = objc_msgSend_newBufferWithLength_options_(v16, v42, 4 * a8, 0, v45);
    if (!v23)
    {
      v23 = objc_msgSend_commandBuffer(v140, v46, v47, v48, v49);
      v22 = objc_msgSend_blitCommandEncoder(v23, v51, v52, v53, v54);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v46, a6, a7, v50, 0, 4 * a8);
    v63 = objc_msgSend_contents(v50, v55, v56, v57, v58);
  }

  else
  {
    v63 = objc_msgSend_contents(a6, v42, v43, v44, v45) + a7;
  }

  if (v23)
  {
    objc_msgSend_endEncoding(v22, v59, v60, v61, v62);
    objc_msgSend_commit(v23, v64, v65, v66, v67);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v23, v68, v69, v70, v71);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v21)
  {
    v74 = a8 <= 1 ? 1 : a8;
    v75 = objc_msgSend_newBufferWithLength_options_(v138, v72, v74 << 6, 0, v73);
    v80 = objc_msgSend_contents(v75, v76, v77, v78, v79);
    if (a8)
    {
      v81 = v21 + 32;
      v82 = v80 + 32;
      v83 = a8;
      do
      {
        *(v82 - 32) = __invert_f4(*(v81 - 32));
        v82 += 64;
        v81 += 64;
        --v83;
      }

      while (v83);
    }
  }

  memset(v151, 0, sizeof(v151));
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v72, &v147, v154, 16);
  if (v88)
  {
    v89 = *v148;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v148 != v89)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v147 + 1) + 8 * i), v84, v85, v86, v87);
        LODWORD(v152[1]) = v91;
        v153 = v92;
        v152[0] = v93;
        v152[2] = v94;
        sub_239E08920(v151, v152);
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v84, &v147, v154, 16);
    }

    while (v88);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v95, 0x1000040E0EAB150uLL);
  v145 = 0;
  if (v21)
  {
    if (a8)
    {
      v96 = 0;
      v97.i64[0] = 0x7F0000007FLL;
      v97.i64[1] = 0x7F0000007FLL;
      v98.i64[0] = 0x7F0000007FLL;
      v98.i64[1] = 0x7F0000007FLL;
      v141 = vnegq_f32(v97);
      v143 = v98;
      do
      {
        v99 = (v151[0] + 32 * *(v63 + 4 * v96));
        v100 = *v99;
        v101 = v99[1];
        if ((vmovn_s32(vcgtq_f32(*v99, v101)).u8[0] & 1) == 0 && v101.f32[1] >= v100.f32[1] && v101.f32[2] >= v100.f32[2])
        {
          v103 = 0;
          v104.i64[0] = 0x7F0000007FLL;
          v104.i64[1] = 0x7F0000007FLL;
          v105 = vnegq_f32(v104);
          do
          {
            v106 = v105;
            v107 = v104;
            if (v103)
            {
              v108 = v100.f32[0];
            }

            else
            {
              v108 = v101.f32[0];
            }

            if ((v103 & 2) != 0)
            {
              v109 = v100.f32[1];
            }

            else
            {
              v109 = v101.f32[1];
            }

            if (v103 >= 4)
            {
              v110 = v100.f32[2];
            }

            else
            {
              v110 = v101.f32[2];
            }

            v111 = vaddq_f32(*(v21 + (v96 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v21 + (v96 << 6)), v108), *(v21 + (v96 << 6) + 16), v109), *(v21 + (v96 << 6) + 32), v110));
            v112 = v106;
            v112.i32[3] = 0;
            v111.i32[3] = 0;
            v113 = vminnmq_f32(v112, v111);
            v105 = v113;
            v105.i32[3] = v106.i32[3];
            v114 = v107;
            v114.i32[3] = 0;
            v115 = vmaxnmq_f32(v114, v111);
            v104 = v115;
            v104.i32[3] = v107.i32[3];
            ++v103;
          }

          while (v103 != 8);
          v116 = v141;
          v116.i32[3] = 0;
          v105.i32[3] = 0;
          v117 = v143;
          v117.i32[3] = 0;
          v104.i32[3] = 0;
          v118 = vminnmq_f32(v116, v105);
          v119 = vmaxnmq_f32(v117, v104);
          v118.i32[3] = v141.i32[3];
          v119.i32[3] = v143.i32[3];
          v120 = v145++;
          v121 = memptr + 32 * v120;
          *v121 = v113.i64[0];
          *(v121 + 2) = v113.i32[2];
          *(v121 + 3) = v96;
          *(v121 + 2) = v115.i64[0];
          *(v121 + 6) = v115.i32[2];
          *(v121 + 7) = 0;
          v141 = v118;
          v143 = v119;
        }

        ++v96;
      }

      while (v96 != a8);
    }
  }

  else if (a8)
  {
    v122 = 0;
    v123.i64[0] = 0x7F0000007FLL;
    v123.i64[1] = 0x7F0000007FLL;
    v124.i64[0] = 0x7F0000007FLL;
    v124.i64[1] = 0x7F0000007FLL;
    v142 = vnegq_f32(v123);
    v144 = v124;
    do
    {
      v125 = v151[0] + 32 * *(v63 + 4 * v122);
      v127 = *v125;
      v126 = *(v125 + 1);
      v128 = vcgt_f32(*v125, *&v126);
      if ((v128.i8[0] & 1) == 0 && (v128.i8[4] & 1) == 0 && *(&v126 + 2) >= *(&v127 + 2))
      {
        v129 = v142;
        v129.i32[3] = 0;
        v130 = *v125;
        v130.i32[3] = 0;
        v131 = vminnmq_f32(v129, v130);
        v132 = v144;
        v132.i32[3] = 0;
        v133 = *(v125 + 1);
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v132, v133);
        v131.i32[3] = v142.i32[3];
        v134.i32[3] = v144.i32[3];
        v135 = v145++;
        v136 = memptr + 32 * v135;
        *v136 = v127;
        *(v136 + 2) = DWORD2(v127);
        *(v136 + 3) = v122;
        *(v136 + 2) = v126;
        *(v136 + 6) = DWORD2(v126);
        *(v136 + 7) = 0;
        v142 = v131;
        v144 = v134;
      }

      ++v122;
    }

    while (a8 != v122);
  }

  kdebug_trace();
  sub_239E05F90();
  v137 = *(a1 + 12);
  if (v137)
  {
    if (v137 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_239E10B68(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 148);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v11, 0, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 80) + 32), v15);
  v16 = *(a1 + 88);
  v17 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 104) + 32), v22);
  v23 = *(a1 + 112);
  v24 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 120) + 32), v29);
  v30 = *(a1 + 128);
  v31 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 136) + 32), v36);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v37, 2, v38, v39);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v40 = *(a1 + 96);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      *(v40 + 56) = v41;
      operator delete(v41);
    }

    v42 = *(v40 + 24);
    if (v42)
    {
      *(v40 + 32) = v42;
      operator delete(v42);
    }

    v43 = *v40;
    if (*v40)
    {
      *(v40 + 8) = v43;
      operator delete(v43);
    }

    MEMORY[0x23EE7D780](v40, 0x10C40E523AF1CLL);
  }

  v44 = *(a1 + 56);
  add = atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
  if (v44 && add == 1)
  {
    (*(*v44 + 8))(v44);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E10DD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int **a6, uint64_t a7, uint64_t a8, __n128 *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_239E15CC0(&v106, v17, v18, v20);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_239E15D78(&v109, *a3, a3[1], (a3[1] - *a3) >> 2);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  sub_239E15CC0(&v112, *a4, a4[1], (a4[1] - *a4) >> 3);
  __p = 0;
  v116 = 0;
  v117 = 0;
  sub_239E15D78(&__p, *a5, a5[1], (a5[1] - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v112 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v106 + v33);
            v43 = *(v109 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->n128_u32[2] = v27.u32[2];
              a9[1].n128_u32[2] = v61.u32[2];
              a9->n128_u64[0] = v27.i64[0];
              a9[1].n128_u64[0] = v61.i64[0];
              v62 = v32++;
              v104 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v112 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v106 + v64);
        v73 = *(v109 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->n128_u32[2] = v27.u32[2];
          a9[1].n128_u32[2] = v87.u32[2];
          a9->n128_u64[0] = v27.i64[0];
          a9[1].n128_u64[0] = v87.i64[0];
          v88 = v32++;
          v104 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v103 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v103, *a9, a9[1]);
  v120 = v91;
  v102 = 0;
  v104 = 0;
  v118[0] = &v102;
  v118[1] = &v104;
  v119 = &v120;
  sub_239E05960(a1);
  v92 = *(a1 + 52);
  if (v92 == 4)
  {
    v93 = 192;
  }

  else
  {
    v93 = 320;
  }

  if (v92 == 4)
  {
    v94 = 192;
  }

  else
  {
    v94 = 384;
  }

  v95 = v93 * HIDWORD(v102);
  v96 = v93 * HIDWORD(v102) + v94 * v104;
  v118[0] = 0;
  if (v96)
  {
    malloc_type_posix_memalign(v118, 0x40uLL, v96, 0x9CCB6776uLL);
    v97 = v118[0];
    if (!v118[0])
    {
      v100 = 0;
      goto LABEL_67;
    }

    v92 = *(a1 + 52);
  }

  else
  {
    v97 = 0;
  }

  v98 = v97 + v95;
  if (v92 == 4)
  {
    v99 = sub_239E09514(a1, v91, memptr, v97, v98, &v106);
  }

  else
  {
    v99 = sub_239E095D8(a1, v91, memptr, v97, v98, &v106);
  }

  v100 = v99;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v116 = __p;
    operator delete(__p);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  return v100;
}

void sub_239E115F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

void sub_239E11684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v61 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v61;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v20);
  a7[1] = v20;
  if (a2)
  {
    if (a5)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v22), v16, v17, v18, v19);
        if ((vmovn_s32(vcgtq_f32(v23, v24)).u8[0] & 1) == 0 && v24.f32[1] >= v23.f32[1] && v24.f32[2] >= v23.f32[2])
        {
          v26 = 0;
          v27.i64[0] = 0x7F0000007FLL;
          v27.i64[1] = 0x7F0000007FLL;
          v28 = vnegq_f32(v27);
          do
          {
            v29 = v28;
            v30 = v27;
            if (v26)
            {
              v31 = v23.f32[0];
            }

            else
            {
              v31 = v24.f32[0];
            }

            if ((v26 & 2) != 0)
            {
              v32 = v23.f32[1];
            }

            else
            {
              v32 = v24.f32[1];
            }

            if (v26 >= 4)
            {
              v33 = v23.f32[2];
            }

            else
            {
              v33 = v24.f32[2];
            }

            v34 = vaddq_f32(*(a2 + (v22 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v22 << 6)), v31), *(a2 + (v22 << 6) + 16), v32), *(a2 + (v22 << 6) + 32), v33));
            v35 = v29;
            v35.i32[3] = 0;
            v34.i32[3] = 0;
            v36 = vminnmq_f32(v35, v34);
            v28 = v36;
            v28.i32[3] = v29.i32[3];
            v37 = v30;
            v37.i32[3] = 0;
            v38 = vmaxnmq_f32(v37, v34);
            v27 = v38;
            v27.i32[3] = v30.i32[3];
            ++v26;
          }

          while (v26 != 8);
          v39 = *a7;
          v40 = a7[1];
          v39.i32[3] = 0;
          v28.i32[3] = 0;
          v41 = vminnmq_f32(v39, v28);
          v40.i32[3] = 0;
          v27.i32[3] = 0;
          v42 = vmaxnmq_f32(v40, v27);
          a7->i32[2] = v41.i32[2];
          a7[1].i32[2] = v42.i32[2];
          a7->i64[0] = v41.i64[0];
          a7[1].i64[0] = v42.i64[0];
          v43 = v21++;
          v44 = memptr + 32 * v43;
          *v44 = v36.i64[0];
          *(v44 + 2) = v36.i32[2];
          *(v44 + 3) = v22;
          *(v44 + 2) = v38.i64[0];
          *(v44 + 6) = v38.i32[2];
          *(v44 + 7) = 0;
        }

        ++v22;
      }

      while (v22 != a5);
    }
  }

  else if (a5)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v46), v16, v17, v18, v19);
      v49 = vcgt_f32(*v47.f32, *v48.f32);
      if ((v49.i8[0] & 1) == 0 && (v49.i8[4] & 1) == 0 && v48.f32[2] >= v47.f32[2])
      {
        v50 = *a7;
        v51 = a7[1];
        v50.i32[3] = 0;
        v52 = v47;
        v52.i32[3] = 0;
        v53 = vminnmq_f32(v50, v52);
        v51.i32[3] = 0;
        v54 = v48;
        v54.i32[3] = 0;
        a7->i32[2] = v53.i32[2];
        v55 = vmaxnmq_f32(v51, v54);
        a7->i64[0] = v53.i64[0];
        a7[1].i32[2] = v55.i32[2];
        a7[1].i64[0] = v55.i64[0];
        v56 = v45++;
        v57 = memptr + 32 * v56;
        *v57 = v47.i64[0];
        *(v57 + 2) = v47.i32[2];
        *(v57 + 3) = v46;
        *(v57 + 2) = v48.i64[0];
        *(v57 + 6) = v48.i32[2];
        *(v57 + 7) = 0;
      }

      ++v46;
    }

    while (a5 != v46);
  }

  v58 = *(a1 + 12);
  if (v58 != 1)
  {
    if (!v58)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E11BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E11C0C(uint64_t a1, _DWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *(a4 + 8) = *a2;
  *(a4 + 12) = v10;
  *(a4 + 16) = v11;
  *(a4 + 20) = v12;
  *(a4 + 24) = v13;
  *(a4 + 28) = v14;
  *a4 = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E11CF0(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t sub_239E11CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v14 = &v41[-2 * v13];
  v41[0] = v14;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v15 = *a6;
      v16 = *(a6 + 8);
      v17 = *v16;
      *v17 = HIDWORD(v12);
      v18 = *v15;
      *v16 = v17 + 1;
      v19 = *(a6 + 16);
      v20 = *v19;
      *v20 = -HIDWORD(v11);
      v21 = v18 + 32 * v11;
      *v19 = v20 + 1;
      v22 = (**(a6 + 24) + 16 * (v11 >> 32));
      LODWORD(v20) = *(v21 + 28);
      v23 = -v20;
      v24 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v22 = v23;
      v22[1] = v24;
      v22[2] = v12;
      v22[3] = 0;
      if (v20)
      {
        v25 = **(a6 + 48);
        v26 = *(v21 + 12);
        v27 = 32 * v23;
        v28 = v25 + 32 * v26;
        v29 = 32 * v26;
        v30 = (v28 + 12);
        v31 = v27;
        do
        {
          v32 = *v30;
          v30 += 8;
          v33 = *(a6 + 32);
          v34 = *v33;
          *v34 = v32;
          *v33 = v34 + 1;
          v31 -= 32;
        }

        while (v31);
        v35 = (v25 + v29 + 28);
        do
        {
          v36 = *v35;
          v35 += 8;
          v37 = *(a6 + 56);
          v38 = *v37;
          *v38 = v36;
          *v37 = v38 + 1;
          v27 -= 32;
        }

        while (v27);
      }
    }

    else
    {
      result = sub_239E17918(a5, v11, v12, v41);
    }

    v39 = v41[0];
    if (v41[0] == v14)
    {
      break;
    }

    v41[0] -= 2;
    v11 = *(v39 - 2);
    v12 = *(v39 - 1);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239E11E9C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *(a5 + 8) = *a2;
  *(a5 + 12) = v9;
  *(a5 + 16) = v10;
  *(a5 + 20) = v11;
  *(a5 + 24) = v12;
  *(a5 + 28) = v13;
  *a5 = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E11F64(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t sub_239E11F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v14 = &v24[-2 * v13];
  v24[0] = v14;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v15 = *(a6 + 8);
      v16 = **a6 + 32 * v11;
      v17 = *v15;
      *v17 = HIDWORD(v12);
      *v15 = v17 + 1;
      v18 = *(a6 + 16);
      v19 = *v18;
      *v19 = -HIDWORD(v11);
      *v18 = v19 + 1;
      v20 = *(v16 + 28) ? *(**(a6 + 32) + 32 * *(v16 + 12) + 12) : -1;
      v21 = (**(a6 + 24) + 8 * (v11 >> 32));
      *v21 = v20;
      v21[1] = v12;
    }

    else
    {
      result = sub_239E17918(a5, v11, v12, v24);
    }

    v22 = v24[0];
    if (v24[0] == v14)
    {
      break;
    }

    v24[0] -= 2;
    v11 = *(v22 - 2);
    v12 = *(v22 - 1);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_239E120B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D08668;
  return result;
}

__n128 sub_239E120F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D08668;
  return result;
}

void sub_239E12148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10)
{
  v10 = a3;
  v362 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 32) + 40))
  {
    sub_239E24B58();
  }

  v316 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  v320 = *(a2 + 16);
  v318 = *(a2 + 24);
  if (a10 == 1)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  v355 = 0;
  v354 = 0;
  v356 = 0;
  v352 = 0;
  v351 = 0;
  v353 = 0;
  v349 = 0;
  v348 = 0;
  v350 = 0;
  v346 = 0;
  v345 = 0;
  v347 = 0;
  v327 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0;
  v14 = 0;
  v328 = 0;
  v330 = 0;
  v319 = v12 * a5;
  v321 = v10;
  for (i = objc_msgSend_count(v10, v15, v16, v17, v18); v13 < i; i = objc_msgSend_count(v321, v105, v106, v107, v108))
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v10, v20, v13, v22, v23);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a4, v25, v13, v26, v27);
    v33 = objc_msgSend_unsignedIntegerValue(v28, v29, v30, v31, v32);
    v37 = objc_msgSend_objectAtIndexedSubscript_(a6, v34, v13, v35, v36);
    v38 = v12;
    v42 = objc_msgSend_objectAtIndexedSubscript_(a7, v39, v13, v40, v41);
    v47 = objc_msgSend_unsignedIntegerValue(v42, v43, v44, v45, v46);
    v341[0] = 0;
    v357[0] = 0;
    v51 = objc_msgSend_objectAtIndexedSubscript_(a9, v48, v13, v49, v50);
    v56 = objc_msgSend_unsignedIntegerValue(v51, v52, v53, v54, v55);
    if (objc_msgSend_storageMode(v24, v57, v58, v59, v60) == 2)
    {
      v67 = objc_msgSend_length(v24, v61, v62, v63, v64) - v33;
      if (v37)
      {
        v68 = v67;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v67, 0, v66);
      }

      else
      {
        v68 = v319 * v56;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v319 * v56, 0, v66);
      }

      v74 = v69;
      if (!v330)
      {
        v330 = objc_msgSend_commandBuffer(v318, v70, v71, v72, v73);
        v328 = objc_msgSend_blitCommandEncoder(v330, v75, v76, v77, v78);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v70, v24, v33, v74, 0, v68);
      v83 = objc_msgSend_contents(v74, v79, v80, v81, v82);
    }

    else
    {
      v74 = 0;
      v83 = (objc_msgSend_contents(v24, v61, v62, v63, v64) + v33);
    }

    v341[0] = v83;
    if (v37)
    {
      if (objc_msgSend_storageMode(v37, v84, v85, v86, v87) == 2)
      {
        v96 = objc_msgSend_newBufferWithLength_options_(v320, v88, 4 * v56 * v38, 0, v91);
        if (!v330)
        {
          v330 = objc_msgSend_commandBuffer(v318, v92, v93, v94, v95);
          v328 = objc_msgSend_blitCommandEncoder(v330, v97, v98, v99, v100);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v92, v37, v47, v96, 0, 4 * v56 * v38);
        v357[0] = objc_msgSend_contents(v96, v101, v102, v103, v104);
      }

      else
      {
        v96 = 0;
        v357[0] = (objc_msgSend_contents(v37, v88, v89, v90, v91) + v47);
      }
    }

    else
    {
      v96 = 0;
    }

    sub_239DEDD74(&v354, v341);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v351, __p);
    sub_239DEDD74(&v348, v357);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v345, __p);
    if (v74)
    {
      objc_msgSend_addObject_(v327, v105, v74, v107, v108);
    }

    if (v96)
    {
      objc_msgSend_addObject_(v327, v105, v96, v107, v108);
    }

    v14 += v56 * v38;
    v12 = v38;
    ++v13;
    v10 = v321;
  }

  if (v330)
  {
    objc_msgSend_endEncoding(v328, v20, v21, v22, v23);
    objc_msgSend_commit(v330, v109, v110, v111, v112);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v330, v113, v114, v115, v116);
    kdebug_trace();
  }

  memset(v341, 0, sizeof(v341));
  sub_239E15CC0(v341, v354, v355, (v355 - v354) >> 3);
  memset(v342, 0, sizeof(v342));
  sub_239E15D78(v342, v351, v352, (v352 - v351) >> 2);
  memset(v343, 0, sizeof(v343));
  sub_239E15CC0(v343, v348, v349, (v349 - v348) >> 3);
  memset(v344, 0, sizeof(v344));
  sub_239E15D78(v344, v345, v346, (v346 - v345) >> 2);
  v121 = objc_msgSend_date(MEMORY[0x277CBEAA8], v117, v118, v119, v120);
  kdebug_trace();
  v122 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v122 = 2.0;
  }

  v123 = (v122 * (v14 / v12));
  memptr = 0;
  v124 = 32 * v123;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v123, 0x1000040E0EAB150uLL);
  v339 = 0;
  if (a10)
  {
    v129 = 0;
    v130.i64[0] = 0x7F0000007FLL;
    v130.i64[1] = 0x7F0000007FLL;
    v131.n128_u64[0] = 0x7F0000007FLL;
    v131.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v130);
    v331 = v131;
    while (v129 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v135 = objc_msgSend_objectAtIndexedSubscript_(a9, v132, v129, v133, v134);
      v140 = objc_msgSend_unsignedIntegerValue(v135, v136, v137, v138, v139);
      if (v140)
      {
        v144 = 0;
        v145 = 1;
        do
        {
          v146 = v144 + 1;
          v147 = v144 + 2;
          v148 = v144 + 3;
          v149 = *(v343[0] + v129);
          if (v149)
          {
            if (*(v344[0] + v129) == 4)
            {
              v150 = *(v149 + 4 * v144);
              v146 = *(v149 + 4 * v146);
              v147 = *(v149 + 4 * v147);
              v148 = *(v149 + 4 * v148);
            }

            else
            {
              v150 = *(v149 + 2 * v144);
              v146 = *(v149 + 2 * v146);
              v147 = *(v149 + 2 * v147);
              v148 = *(v149 + 2 * v148);
            }
          }

          else
          {
            v150 = v144;
          }

          v151 = *(v341[0] + v129);
          v152 = *(v342[0] + v129);
          v153 = v151 + v152 * v150;
          v141.i64[0] = *v153;
          v141.i32[2] = *(v153 + 8);
          v154 = v151 + v152 * v146;
          v143.i64[0] = *v154;
          v143.i32[2] = *(v154 + 8);
          v155 = v151 + v152 * v147;
          v142.i64[0] = *v155;
          v142.i32[2] = *(v155 + 8);
          v156 = vsubq_f32(v143, v141);
          v157 = vsubq_f32(v142, v141);
          v158 = vmlaq_f32(vnegq_f32(vmulq_f32(v156, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL))), v157, vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL));
          v159 = vmulq_f32(v158, v158);
          if (sqrtf(v159.f32[1] + (v159.f32[2] + v159.f32[0])) != 0.0)
          {
            v160 = v151 + v152 * v148;
            v161.i64[0] = *v160;
            v141.i32[3] = 0;
            v143.i32[3] = 0;
            v162 = vminnmq_f32(v141, v143);
            v163 = vmaxnmq_f32(v141, v143);
            v162.i32[3] = 0;
            v142.i32[3] = 0;
            v164 = vminnmq_f32(v162, v142);
            v163.i32[3] = 0;
            v164.i32[3] = 0;
            v165 = vmaxnmq_f32(v163, v142);
            v161.i64[1] = *(v160 + 8);
            v166 = vminnmq_f32(v164, v161);
            v165.i32[3] = 0;
            v167 = vmaxnmq_f32(v165, v161);
            v168 = v329;
            v168.i32[3] = 0;
            v169 = v339++;
            v170 = memptr + 32 * v169;
            *(v170 + 2) = v166.i32[2];
            *v170 = v166.i64[0];
            v166.i32[3] = 0;
            v142 = vminnmq_f32(v168, v166);
            v143 = v331;
            v143.i32[3] = 0;
            *(v170 + 2) = v167.i64[0];
            *(v170 + 6) = v167.i32[2];
            v167.i32[3] = 0;
            v141 = vmaxnmq_f32(v143, v167);
            v142.i32[3] = v329.n128_i32[3];
            v141.i32[3] = v331.n128_i32[3];
            *(v170 + 3) = v145 - 1;
            *(v170 + 7) = v129;
            v329 = v142;
            v331 = v141;
          }

          v171 = v140 > v145++;
          v144 += 4;
        }

        while (v171);
      }

      ++v129;
    }
  }

  else
  {
    v172 = 0;
    v173.i64[0] = 0x7F0000007FLL;
    v173.i64[1] = 0x7F0000007FLL;
    v174.n128_u64[0] = 0x7F0000007FLL;
    v174.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v173);
    v331 = v174;
    while (v172 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v178 = objc_msgSend_objectAtIndexedSubscript_(a9, v175, v172, v176, v177);
      v183 = objc_msgSend_unsignedIntegerValue(v178, v179, v180, v181, v182);
      if (v183)
      {
        v187 = 0;
        v188 = 1;
        do
        {
          v189 = v187 + 1;
          v190 = v187 + 2;
          v191 = *(v343[0] + v172);
          if (v191)
          {
            if (*(v344[0] + v172) == 4)
            {
              v192 = *(v191 + 4 * v187);
              v189 = *(v191 + 4 * v189);
              v190 = *(v191 + 4 * v190);
            }

            else
            {
              v192 = *(v191 + 2 * v187);
              v189 = *(v191 + 2 * v189);
              v190 = *(v191 + 2 * v190);
            }
          }

          else
          {
            v192 = v187;
          }

          v193 = *(v341[0] + v172);
          v194 = *(v342[0] + v172);
          v195 = v193 + v194 * v192;
          v184.i64[0] = *v195;
          v184.i32[2] = *(v195 + 8);
          v196 = v193 + v194 * v189;
          v185.i64[0] = *v196;
          v185.i32[2] = *(v196 + 8);
          v197 = v193 + v194 * v190;
          v186.i64[0] = *v197;
          v186.i32[2] = *(v197 + 8);
          v198 = vsubq_f32(v185, v184);
          v199 = vsubq_f32(v186, v184);
          v200 = vmlaq_f32(vnegq_f32(vmulq_f32(v198, vextq_s8(vuzp1q_s32(v199, v199), v199, 0xCuLL))), v199, vextq_s8(vuzp1q_s32(v198, v198), v198, 0xCuLL));
          v201 = vmulq_f32(v200, v200);
          if (sqrtf(v201.f32[1] + (v201.f32[2] + v201.f32[0])) != 0.0)
          {
            v184.i32[3] = 0;
            v185.i32[3] = 0;
            v202 = vminnmq_f32(v184, v185);
            v202.i32[3] = 0;
            v203 = vmaxnmq_f32(v184, v185);
            v186.i32[3] = 0;
            v204 = vminnmq_f32(v202, v186);
            v203.i32[3] = 0;
            v205 = vmaxnmq_f32(v203, v186);
            v206 = v329;
            v206.i32[3] = 0;
            v207 = v339++;
            v208 = memptr + 32 * v207;
            *(v208 + 2) = v204.i32[2];
            *v208 = v204.i64[0];
            v204.i32[3] = 0;
            v185 = vminnmq_f32(v206, v204);
            v186 = v331;
            v186.i32[3] = 0;
            *(v208 + 2) = v205.i64[0];
            *(v208 + 6) = v205.i32[2];
            v205.i32[3] = 0;
            v184 = vmaxnmq_f32(v186, v205);
            v185.i32[3] = v329.n128_i32[3];
            v184.i32[3] = v331.n128_i32[3];
            *(v208 + 3) = v188 - 1;
            *(v208 + 7) = v172;
            v329 = v185;
            v331 = v184;
          }

          v171 = v183 > v188++;
          v187 += 3;
        }

        while (v171);
      }

      ++v172;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v121, v209, v210, v211, v212);
  v213 = sub_239E05F90();
  v214 = *(a1 + 12);
  if (v214 > 1)
  {
    if (v214 == 2)
    {
      operator new();
    }

    if (v214 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v214)
    {
      operator new();
    }

    if (v214 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v213);
  v219 = objc_msgSend_date(MEMORY[0x277CBEAA8], v215, v216, v217, v218);
  kdebug_trace();
  v338 = 0;
  v220 = sub_239E05840(0, memptr, v339, v123, &v338, v329, v331);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v219, v221, v222, v223, v224);
  if (*(a1 + 8) == 1)
  {
    v229 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
    v234 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v230, v231, v232, v233);
    v235 = *(a1 + 24);
    *v357 = *(a1 + 8);
    v358 = v235;
    v359 = *(a1 + 40);
    v360 = *(a1 + 56);
    sub_239DFA254(a1, v357, v220, v234);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v236, @"CPU", @"BVH Builder", v237);
    v241 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v238, @"{ %f, %f, %f }, { %f, %f, %f }", v239, v240, v329.n128_f32[0], v329.n128_f32[1], v329.n128_f32[2], v331.n128_f32[0], v331.n128_f32[1], v331.n128_f32[2], v316);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v242, v241, @"Bounds", v243);
    if (*(v220 + 7) >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Internal", @"BVH Root Node Type", v245);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Leaf", @"BVH Root Node Type", v245);
    }

    v250 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v246, v247, v248, v249);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v251, v250, @"Temporary Memory", v252);
    v257 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v253, v254, v255, v256, vcvtd_n_f64_u64(v124, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v258, v257, @"Fragments (mb)", v259);
    v264 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v260, v261, v262, v263, vcvtd_n_f64_u64(32 * v338, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v265, v264, @"Nodes (mb)", v266);
    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v267, &v334, v361, 16);
    if (v272)
    {
      v273 = *v335;
      v274 = 0.0;
      do
      {
        for (j = 0; j != v272; ++j)
        {
          if (*v335 != v273)
          {
            objc_enumerationMutation(v250);
          }

          v276 = objc_msgSend_objectForKeyedSubscript_(v250, v268, *(*(&v334 + 1) + 8 * j), v270, v271);
          objc_msgSend_doubleValue(v276, v277, v278, v279, v280);
          v274 = v274 + v281;
        }

        v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v268, &v334, v361, 16);
      }

      while (v272);
    }

    else
    {
      v274 = 0.0;
    }

    v282 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v268, v269, v270, v271, v274);
    objc_msgSend_setObject_forKeyedSubscript_(v250, v283, v282, @"Total (mb)", v284);
    objc_msgSend_timeIntervalSinceNow(v229, v285, v286, v287, v288);
  }

  v289 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
  __p[0] = v220;
  v333 = 0;
  v339 = 0;
  v357[0] = &v333;
  v357[1] = &v339;
  *&v358 = __p;
  sub_239E05960(a1);
  objc_msgSend_timeIntervalSinceNow(v289, v290, v291, v292, v293);
  v294 = getpagesize();
  v295 = -v294;
  v296 = mmap(0, (v294 + (HIDWORD(v333) << 7) + 127) & -v294, 3, 4098, -1, 0);
  if (v296 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v297 = v294 - 1;
  v298 = mmap(0, (v294 - 1 + 16 * v333) & v295, 3, 4098, -1, 0);
  if (v298 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v297 + 4 * v339) & v295) != 0)
  {
    v299 = (v297 + 4 * v339) & v295;
  }

  else
  {
    v299 = v294;
  }

  v300 = mmap(0, v299, 3, 4098, -1, 0);
  if (v300 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v305 = mmap(0, v299, 3, 4098, -1, 0);
  if (v305 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v306 = objc_msgSend_date(MEMORY[0x277CBEAA8], v301, v302, v303, v304);
  v357[1] = 0;
  v357[0] = 0;
  *&v358 = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v357, (v333 + HIDWORD(v333)));
  sub_239E04F58(__p, (v333 + HIDWORD(v333)));
  sub_239E11C0C(a1, v220, memptr, v296, v298, v300, v305, v357[0], __p[0]);
  v307 = *(v220 + 7);
  objc_msgSend_timeIntervalSinceNow(v306, v308, v309, v310, v311);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v312, v313, v314, v315);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E138B4(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 168);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v11, 1, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 64) + 32), v15);
  v16 = *(a1 + 80);
  v17 = *(a1 + 172);
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 88) + 32), v22);
  v23 = *(a1 + 96);
  v24 = *(a1 + 176);
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 104) + 32), v29);
  v30 = *(a1 + 112);
  v31 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 128) + 32), v36);
  v37 = *(a1 + 136);
  v38 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v42 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v39, 0, v40, v41);
  sub_239E006FC(v37, v38, v42, *(*(a1 + 144) + 32), v43);
  v44 = *(a1 + 152);
  v45 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v46, 0, v47, v48);
  sub_239E006FC(v44, v45, v49, *(*(a1 + 160) + 32), v50);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v51, 2, v52, v53);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v54 = *(a1 + 120);
  if (v54)
  {
    v55 = *(v54 + 48);
    if (v55)
    {
      *(v54 + 56) = v55;
      operator delete(v55);
    }

    v56 = *(v54 + 24);
    if (v56)
    {
      *(v54 + 32) = v56;
      operator delete(v56);
    }

    v57 = *v54;
    if (*v54)
    {
      *(v54 + 8) = v57;
      operator delete(v57);
    }

    MEMORY[0x23EE7D780](v54, 0x10C40E523AF1CLL);
  }

  v58 = *(a1 + 56);
  add = atomic_fetch_add(v58 + 2, 0xFFFFFFFF);
  if (v58 && add == 1)
  {
    (*(*v58 + 8))(v58);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E13BAC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v155 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4();
  }

  v16 = a2[2];
  v140 = a2[3];
  kdebug_trace();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18, v19, v20) == 2)
    {
      v28 = objc_msgSend_newBufferWithLength_options_(v16, v24, a8 << 6, 0, v27);
      v23 = objc_msgSend_commandBuffer(v140, v29, v30, v31, v32);
      v22 = objc_msgSend_blitCommandEncoder(v23, v33, v34, v35, v36);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v37, a3, a4, v28, 0, a8 << 6);
      v21 = objc_msgSend_contents(v28, v38, v39, v40, v41);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v21 = objc_msgSend_contents(a3, v24, v25, v26, v27) + a4;
    }
  }

  v138 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18, v19, v20) == 2)
  {
    v50 = objc_msgSend_newBufferWithLength_options_(v16, v42, 4 * a8, 0, v45);
    if (!v23)
    {
      v23 = objc_msgSend_commandBuffer(v140, v46, v47, v48, v49);
      v22 = objc_msgSend_blitCommandEncoder(v23, v51, v52, v53, v54);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v46, a6, a7, v50, 0, 4 * a8);
    v63 = objc_msgSend_contents(v50, v55, v56, v57, v58);
  }

  else
  {
    v63 = objc_msgSend_contents(a6, v42, v43, v44, v45) + a7;
  }

  if (v23)
  {
    objc_msgSend_endEncoding(v22, v59, v60, v61, v62);
    objc_msgSend_commit(v23, v64, v65, v66, v67);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v23, v68, v69, v70, v71);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v21)
  {
    v74 = a8 <= 1 ? 1 : a8;
    v75 = objc_msgSend_newBufferWithLength_options_(v138, v72, v74 << 6, 0, v73);
    v80 = objc_msgSend_contents(v75, v76, v77, v78, v79);
    if (a8)
    {
      v81 = v21 + 32;
      v82 = v80 + 32;
      v83 = a8;
      do
      {
        *(v82 - 32) = __invert_f4(*(v81 - 32));
        v82 += 64;
        v81 += 64;
        --v83;
      }

      while (v83);
    }
  }

  memset(v151, 0, sizeof(v151));
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v72, &v147, v154, 16);
  if (v88)
  {
    v89 = *v148;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v148 != v89)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v147 + 1) + 8 * i), v84, v85, v86, v87);
        LODWORD(v152[1]) = v91;
        v153 = v92;
        v152[0] = v93;
        v152[2] = v94;
        sub_239E08920(v151, v152);
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v84, &v147, v154, 16);
    }

    while (v88);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v95, 0x1000040E0EAB150uLL);
  v145 = 0;
  if (v21)
  {
    if (a8)
    {
      v96 = 0;
      v97.i64[0] = 0x7F0000007FLL;
      v97.i64[1] = 0x7F0000007FLL;
      v98.i64[0] = 0x7F0000007FLL;
      v98.i64[1] = 0x7F0000007FLL;
      v141 = vnegq_f32(v97);
      v143 = v98;
      do
      {
        v99 = (v151[0] + 32 * *(v63 + 4 * v96));
        v100 = *v99;
        v101 = v99[1];
        if ((vmovn_s32(vcgtq_f32(*v99, v101)).u8[0] & 1) == 0 && v101.f32[1] >= v100.f32[1] && v101.f32[2] >= v100.f32[2])
        {
          v103 = 0;
          v104.i64[0] = 0x7F0000007FLL;
          v104.i64[1] = 0x7F0000007FLL;
          v105 = vnegq_f32(v104);
          do
          {
            v106 = v105;
            v107 = v104;
            if (v103)
            {
              v108 = v100.f32[0];
            }

            else
            {
              v108 = v101.f32[0];
            }

            if ((v103 & 2) != 0)
            {
              v109 = v100.f32[1];
            }

            else
            {
              v109 = v101.f32[1];
            }

            if (v103 >= 4)
            {
              v110 = v100.f32[2];
            }

            else
            {
              v110 = v101.f32[2];
            }

            v111 = vaddq_f32(*(v21 + (v96 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v21 + (v96 << 6)), v108), *(v21 + (v96 << 6) + 16), v109), *(v21 + (v96 << 6) + 32), v110));
            v112 = v106;
            v112.i32[3] = 0;
            v111.i32[3] = 0;
            v113 = vminnmq_f32(v112, v111);
            v105 = v113;
            v105.i32[3] = v106.i32[3];
            v114 = v107;
            v114.i32[3] = 0;
            v115 = vmaxnmq_f32(v114, v111);
            v104 = v115;
            v104.i32[3] = v107.i32[3];
            ++v103;
          }

          while (v103 != 8);
          v116 = v141;
          v116.i32[3] = 0;
          v105.i32[3] = 0;
          v117 = v143;
          v117.i32[3] = 0;
          v104.i32[3] = 0;
          v118 = vminnmq_f32(v116, v105);
          v119 = vmaxnmq_f32(v117, v104);
          v118.i32[3] = v141.i32[3];
          v119.i32[3] = v143.i32[3];
          v120 = v145++;
          v121 = memptr + 32 * v120;
          *v121 = v113.i64[0];
          *(v121 + 2) = v113.i32[2];
          *(v121 + 3) = v96;
          *(v121 + 2) = v115.i64[0];
          *(v121 + 6) = v115.i32[2];
          *(v121 + 7) = 0;
          v141 = v118;
          v143 = v119;
        }

        ++v96;
      }

      while (v96 != a8);
    }
  }

  else if (a8)
  {
    v122 = 0;
    v123.i64[0] = 0x7F0000007FLL;
    v123.i64[1] = 0x7F0000007FLL;
    v124.i64[0] = 0x7F0000007FLL;
    v124.i64[1] = 0x7F0000007FLL;
    v142 = vnegq_f32(v123);
    v144 = v124;
    do
    {
      v125 = v151[0] + 32 * *(v63 + 4 * v122);
      v127 = *v125;
      v126 = *(v125 + 1);
      v128 = vcgt_f32(*v125, *&v126);
      if ((v128.i8[0] & 1) == 0 && (v128.i8[4] & 1) == 0 && *(&v126 + 2) >= *(&v127 + 2))
      {
        v129 = v142;
        v129.i32[3] = 0;
        v130 = *v125;
        v130.i32[3] = 0;
        v131 = vminnmq_f32(v129, v130);
        v132 = v144;
        v132.i32[3] = 0;
        v133 = *(v125 + 1);
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v132, v133);
        v131.i32[3] = v142.i32[3];
        v134.i32[3] = v144.i32[3];
        v135 = v145++;
        v136 = memptr + 32 * v135;
        *v136 = v127;
        *(v136 + 2) = DWORD2(v127);
        *(v136 + 3) = v122;
        *(v136 + 2) = v126;
        *(v136 + 6) = DWORD2(v126);
        *(v136 + 7) = 0;
        v142 = v131;
        v144 = v134;
      }

      ++v122;
    }

    while (a8 != v122);
  }

  kdebug_trace();
  sub_239E05F90();
  v137 = *(a1 + 12);
  if (v137)
  {
    if (v137 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_239E14A90(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 148);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v11, 0, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 80) + 32), v15);
  v16 = *(a1 + 88);
  v17 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 104) + 32), v22);
  v23 = *(a1 + 112);
  v24 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 120) + 32), v29);
  v30 = *(a1 + 128);
  v31 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 136) + 32), v36);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v37, 2, v38, v39);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v40 = *(a1 + 96);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      *(v40 + 56) = v41;
      operator delete(v41);
    }

    v42 = *(v40 + 24);
    if (v42)
    {
      *(v40 + 32) = v42;
      operator delete(v42);
    }

    v43 = *v40;
    if (*v40)
    {
      *(v40 + 8) = v43;
      operator delete(v43);
    }

    MEMORY[0x23EE7D780](v40, 0x10C40E523AF1CLL);
  }

  v44 = *(a1 + 56);
  add = atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
  if (v44 && add == 1)
  {
    (*(*v44 + 8))(v44);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E14D00(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int **a6, uint64_t a7, uint64_t a8, __n128 *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_239E15CC0(&v106, v17, v18, v20);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_239E15D78(&v109, *a3, a3[1], (a3[1] - *a3) >> 2);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  sub_239E15CC0(&v112, *a4, a4[1], (a4[1] - *a4) >> 3);
  __p = 0;
  v116 = 0;
  v117 = 0;
  sub_239E15D78(&__p, *a5, a5[1], (a5[1] - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v112 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v106 + v33);
            v43 = *(v109 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->n128_u32[2] = v27.u32[2];
              a9[1].n128_u32[2] = v61.u32[2];
              a9->n128_u64[0] = v27.i64[0];
              a9[1].n128_u64[0] = v61.i64[0];
              v62 = v32++;
              v104 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v112 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v106 + v64);
        v73 = *(v109 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->n128_u32[2] = v27.u32[2];
          a9[1].n128_u32[2] = v87.u32[2];
          a9->n128_u64[0] = v27.i64[0];
          a9[1].n128_u64[0] = v87.i64[0];
          v88 = v32++;
          v104 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v103 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v103, *a9, a9[1]);
  v120 = v91;
  v102 = 0;
  v104 = 0;
  v118[0] = &v102;
  v118[1] = &v104;
  v119 = &v120;
  sub_239E05960(a1);
  v92 = *(a1 + 52);
  if (v92 == 4)
  {
    v93 = 192;
  }

  else
  {
    v93 = 320;
  }

  if (v92 == 4)
  {
    v94 = 192;
  }

  else
  {
    v94 = 384;
  }

  v95 = v93 * HIDWORD(v102);
  v96 = v93 * HIDWORD(v102) + v94 * v104;
  v118[0] = 0;
  if (v96)
  {
    malloc_type_posix_memalign(v118, 0x40uLL, v96, 0x9CCB6776uLL);
    v97 = v118[0];
    if (!v118[0])
    {
      v100 = 0;
      goto LABEL_67;
    }

    v92 = *(a1 + 52);
  }

  else
  {
    v97 = 0;
  }

  v98 = v97 + v95;
  if (v92 == 4)
  {
    v99 = sub_239E09514(a1, v91, memptr, v97, v98, &v106);
  }

  else
  {
    v99 = sub_239E095D8(a1, v91, memptr, v97, v98, &v106);
  }

  v100 = v99;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v116 = __p;
    operator delete(__p);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  return v100;
}

void sub_239E15518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

void sub_239E155AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v61 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v61;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v20);
  a7[1] = v20;
  if (a2)
  {
    if (a5)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v22), v16, v17, v18, v19);
        if ((vmovn_s32(vcgtq_f32(v23, v24)).u8[0] & 1) == 0 && v24.f32[1] >= v23.f32[1] && v24.f32[2] >= v23.f32[2])
        {
          v26 = 0;
          v27.i64[0] = 0x7F0000007FLL;
          v27.i64[1] = 0x7F0000007FLL;
          v28 = vnegq_f32(v27);
          do
          {
            v29 = v28;
            v30 = v27;
            if (v26)
            {
              v31 = v23.f32[0];
            }

            else
            {
              v31 = v24.f32[0];
            }

            if ((v26 & 2) != 0)
            {
              v32 = v23.f32[1];
            }

            else
            {
              v32 = v24.f32[1];
            }

            if (v26 >= 4)
            {
              v33 = v23.f32[2];
            }

            else
            {
              v33 = v24.f32[2];
            }

            v34 = vaddq_f32(*(a2 + (v22 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v22 << 6)), v31), *(a2 + (v22 << 6) + 16), v32), *(a2 + (v22 << 6) + 32), v33));
            v35 = v29;
            v35.i32[3] = 0;
            v34.i32[3] = 0;
            v36 = vminnmq_f32(v35, v34);
            v28 = v36;
            v28.i32[3] = v29.i32[3];
            v37 = v30;
            v37.i32[3] = 0;
            v38 = vmaxnmq_f32(v37, v34);
            v27 = v38;
            v27.i32[3] = v30.i32[3];
            ++v26;
          }

          while (v26 != 8);
          v39 = *a7;
          v40 = a7[1];
          v39.i32[3] = 0;
          v28.i32[3] = 0;
          v41 = vminnmq_f32(v39, v28);
          v40.i32[3] = 0;
          v27.i32[3] = 0;
          v42 = vmaxnmq_f32(v40, v27);
          a7->i32[2] = v41.i32[2];
          a7[1].i32[2] = v42.i32[2];
          a7->i64[0] = v41.i64[0];
          a7[1].i64[0] = v42.i64[0];
          v43 = v21++;
          v44 = memptr + 32 * v43;
          *v44 = v36.i64[0];
          *(v44 + 2) = v36.i32[2];
          *(v44 + 3) = v22;
          *(v44 + 2) = v38.i64[0];
          *(v44 + 6) = v38.i32[2];
          *(v44 + 7) = 0;
        }

        ++v22;
      }

      while (v22 != a5);
    }
  }

  else if (a5)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v46), v16, v17, v18, v19);
      v49 = vcgt_f32(*v47.f32, *v48.f32);
      if ((v49.i8[0] & 1) == 0 && (v49.i8[4] & 1) == 0 && v48.f32[2] >= v47.f32[2])
      {
        v50 = *a7;
        v51 = a7[1];
        v50.i32[3] = 0;
        v52 = v47;
        v52.i32[3] = 0;
        v53 = vminnmq_f32(v50, v52);
        v51.i32[3] = 0;
        v54 = v48;
        v54.i32[3] = 0;
        a7->i32[2] = v53.i32[2];
        v55 = vmaxnmq_f32(v51, v54);
        a7->i64[0] = v53.i64[0];
        a7[1].i32[2] = v55.i32[2];
        a7[1].i64[0] = v55.i64[0];
        v56 = v45++;
        v57 = memptr + 32 * v56;
        *v57 = v47.i64[0];
        *(v57 + 2) = v47.i32[2];
        *(v57 + 3) = v46;
        *(v57 + 2) = v48.i64[0];
        *(v57 + 6) = v48.i32[2];
        *(v57 + 7) = 0;
      }

      ++v46;
    }

    while (a5 != v46);
  }

  v58 = *(a1 + 12);
  if (v58 != 1)
  {
    if (!v58)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E15AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E15B34(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t *a5)
{
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v11[2] = *(a2 + 32);
  v12 = *(a2 + 48);
  v9 = sub_239E050BC(a1, v11, a3);
  *v9 = &unk_284D08500;
  sub_239E15BCC(v9 + 10, a5);
  *(a1 + 176) = a4;
  return a1;
}

void *sub_239E15BCC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_239E15CC0(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_239E15D78((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_239E15CC0((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_239E15D78((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 2);
  return a1;
}

void sub_239E15C74(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E15CC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E15D3C(result, a4);
  }

  return result;
}

void sub_239E15D20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E15D3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239DEDFE0(a1, a2);
  }

  sub_239DEDF38();
}

uint64_t sub_239E15D78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E15DF4(result, a4);
  }

  return result;
}

void sub_239E15DD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E15DF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_239DEE028(a1, a2);
  }

  sub_239DEDF38();
}

void sub_239E15E30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_239DE77E8();
}

char *sub_239E15E88(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_239DEDF38();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_239E15E30(a1, v15);
    }

    v36 = 16 * (v13 >> 4);
    v37 = 48 * a5;
    v38 = v36;
    do
    {
      v39 = *v7;
      v40 = v7[2];
      v38[1] = v7[1];
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v7 += 3;
      v37 -= 48;
    }

    while (v37);
    memcpy((v36 + 48 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 48 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v36;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v30 = 3 * a5;
    v31 = &__dst[48 * a5];
    v32 = (v10 - 48 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[2];
      v33[1] = v32[1];
      v33[2] = v35;
      *v33 = v34;
      v33 += 3;
      v32 += 3;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[48 * a5], __dst, v10 - v31);
    }

    v29 = 16 * v30;
    v27 = v5;
    v28 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[48 * a5];
    v21 = v10 + v18;
    if (&v19[-48 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -48 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        v24[1] = *(v23 - v7 + 16);
        v24[2] = v26;
        *v24 = v25;
        v23 += 48;
        v22 += 48;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[48 * a5], v5, v19 - v20);
    }

    v27 = v5;
    v28 = v7;
    v29 = v10 - v5;
LABEL_28:
    memmove(v27, v28, v29);
  }

  return v5;
}

uint64_t **sub_239E16118(uint64_t **result, uint64_t a2, unint64_t a3, unint64_t **a4, double a5, double a6, double a7, float32x4_t a8, float32x2_t a9)
{
  v9 = result[1];
  v10 = **result;
  v11 = *v9;
  *v11 = HIDWORD(a3);
  v12 = v10 + 32 * a2;
  *v9 = (v11 + 1);
  v13 = result[2];
  v14 = *v13;
  *v14 = HIDWORD(a2);
  *v13 = (v14 + 1);
  v15 = *result[3];
  v16 = v15 + (a2 >> 32 << 6);
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = *(v12 + 28);
  if (v17 >= 1)
  {
    v18 = v17 + 1;
    v19 = (HIDWORD(a2) | (HIDWORD(a3) << 33)) + (v17 << 32) - 0x100000000;
    v20 = (a2 >> 32 << 6) + 32 * v17 + v15 - 16;
    v21.i64[0] = 0x1700000017;
    v21.i64[1] = 0x1700000017;
    v22 = vdupq_n_s32(0xF5000001);
    do
    {
      v23 = (**result + 32 * (v18 + *(v12 + 12) - 2));
      a8.i32[0] = *v23;
      a9.i32[0] = v23[2];
      a8.i32[1] = v23[4];
      a8.i32[2] = v23[1];
      v24 = a8;
      v24.i32[3] = v23[5];
      v25 = vaddq_s32(vshlq_n_s32(vmaxq_u32((*&vshrq_n_u32(v24, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL)), v21), 0x17uLL), v22);
      a8 = vtrn2q_s32(vrev64q_s32(vsubq_f32(a8, v25)), vaddq_f32(v24, v25));
      v24.i32[0] = a9.i32[0];
      v24.i32[1] = v23[6];
      *(v20 - 16) = a8;
      *a8.f32 = vadd_s32(vshl_n_s32(vmax_u32((*&vshr_n_u32(*v24.f32, 0x17uLL) & 0xFFFFFEFFFFFFFEFFLL), 0x1700000017), 0x17uLL), *v22.i8);
      a9.i32[0] = vsub_f32(a9, *a8.f32).u32[0];
      a9.i32[1] = vadd_f32(*&v24, *&a8).i32[1];
      *v20 = *&a9;
      if (v23[7] < 1)
      {
        v27 = result[5];
        v28 = *v27;
        *v27 = v28 + 1;
        LODWORD(v27) = -v28;
      }

      else
      {
        v26 = result[4];
        v27 = *v26;
        *v26 = v27 + 1;
        v28 = v27;
      }

      *(v20 + 8) = v27;
      v29 = (--v18 + *(v12 + 12) - 1) | (v28 << 32);
      v30 = *a4;
      *a4 += 2;
      *v30 = v29;
      v30[1] = v19;
      v19 -= 0x100000000;
      v20 -= 32;
    }

    while (v18 > 1);
    LODWORD(v17) = *(v12 + 28);
  }

  if (v17 <= 1)
  {
    v31 = v17;
    do
    {
      v32 = v31;
      v33 = v16 + 32 * v31;
      *v33 = xmmword_239E27050;
      *(v33 + 16) = 0xFF8000007F800000;
      v31 = 1;
    }

    while (!v32);
  }

  *(v16 + 60) = a3;
  return result;
}

void sub_239E162F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239DE77E8();
}

void **sub_239E16338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  MEMORY[0x28223BE20]();
  v13 = &v17[-2 * v12];
  v17[0] = v13;
  while (1)
  {
    result = *(a2 + 32 * v10 + 28) < 1 ? sub_239E1661C(a6, v10, v11) : sub_239E16428(a5, v10, v11, v17);
    v15 = v17[0];
    if (v17[0] == v13)
    {
      break;
    }

    v17[0] -= 2;
    v10 = *(v15 - 2);
    v11 = *(v15 - 1);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void **sub_239E16428(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 32) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 4);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 8) = v15;
      *v9 = v17;
      v9[8] = v19;
      *(v9 - 4) = v23;
      v9[4] = v25;
      v9[12] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      v27 = *(v11 + 28);
      if (v27 < 1)
      {
        v32 = (3 - v27) >> 2;
        *(a3 + v8) = v32 | *result[2] | 0x10;
        v4 = v4 & 0xFFFFFFFF00000000 | v10;
        v33 = *result[2];
        v34 = *a4;
        *a4 += 2;
        *v34 = v4;
        v34[1] = v33;
        v30 = result[2];
        v31 = *v30 + 192 * v32;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v5 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = *result[1];
        v29 = *a4;
        *a4 += 2;
        *v29 = v5;
        v29[1] = v28;
        v30 = result[1];
        v31 = *v30 + 192;
      }

      *v30 = v31;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

void **sub_239E1661C(void **result, unsigned int a2, uint64_t a3)
{
  v3 = **result + 32 * a2;
  v4 = *(v3 + 28);
  v5 = 3 - v4;
  if ((3 - v4) >= 4)
  {
    v6 = 0;
    v7 = 0;
    v8 = -v4;
    v9 = *result[1] + 32 * *(v3 + 12) + 28;
    v10 = (a3 + 80);
    do
    {
      v11 = (a3 + 192 * v6);
      v11[10] = 0uLL;
      v11[11] = 0uLL;
      v11[8] = 0uLL;
      v11[9] = 0uLL;
      v11[6] = 0uLL;
      v11[7] = 0uLL;
      v12 = (a3 + 144 + 192 * v6);
      v11[4] = 0uLL;
      v11[5] = 0uLL;
      v11[2] = 0uLL;
      v11[3] = 0uLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      *v12 = -1;
      v12[1] = -1;
      if (v7 < v8)
      {
        v13 = 0;
        v14 = result[2];
        v15 = *v14;
        v16 = v14[6];
        v17 = v14[3];
        v18 = (v9 + 32 * v7);
        v19 = v10;
        do
        {
          v20 = *v18;
          v21 = *(v18 - 4);
          v22 = 3 * v21;
          v23 = 3 * v21 + 1;
          v24 = 3 * v21 + 2;
          v25 = *(v16 + 8 * v20);
          if (v25)
          {
            if (*(v14[9] + 4 * v20) == 4)
            {
              v22 = *(v25 + 4 * v22);
              v23 = *(v25 + 4 * v23);
              v24 = *(v25 + 4 * v24);
            }

            else
            {
              v22 = *(v25 + 2 * v22);
              v23 = *(v25 + 2 * v23);
              v24 = *(v25 + 2 * v24);
            }
          }

          v26 = *(v15 + 8 * v20);
          v27 = *(v17 + 4 * v20);
          v28 = (v26 + v27 * v22);
          v29 = v28[1];
          v30 = v28[2];
          v31 = (v26 + v27 * v23);
          v32 = *v31;
          v33 = v31[1];
          v34 = v31[2];
          v35 = (v26 + v27 * v24);
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[2];
          *(v19 - 20) = *v28;
          *(v19 - 16) = v29;
          *(v19 - 12) = v30;
          *(v19 - 8) = v32;
          *(v19 - 4) = v33;
          *v19 = v34;
          v19[4] = v36;
          v19[8] = v37;
          v19[12] = v38;
          v19[16] = v21;
          v39 = *v18;
          v18 += 8;
          v19[20] = v39;
          v40 = v13 + 1;
          if (v13 > 2)
          {
            break;
          }

          ++v19;
          ++v13;
        }

        while (v40 + v7 < v8);
        v7 += v40;
      }

      ++v6;
      v10 += 48;
    }

    while (v6 != v5 >> 2);
  }

  return result;
}

void **sub_239E167C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  MEMORY[0x28223BE20]();
  v13 = &v17[-2 * v12];
  v17[0] = v13;
  while (1)
  {
    result = *(a2 + 32 * v10 + 28) < 1 ? sub_239E16AB8(a6, v10, v11) : sub_239E168B4(a5, v10, v11, v17);
    v15 = v17[0];
    if (v17[0] == v13)
    {
      break;
    }

    v17[0] -= 2;
    v10 = *(v15 - 2);
    v11 = *(v15 - 1);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void **sub_239E168B4(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 64) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 8);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 16) = v15;
      *v9 = v17;
      v9[16] = v19;
      *(v9 - 8) = v23;
      v9[8] = v25;
      v9[24] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      v27 = *(v11 + 28);
      if (v27 < 1)
      {
        v32 = (7 - v27) >> 3;
        *(a3 + v8) = v32 | *result[2] | 0x10;
        v4 = v4 & 0xFFFFFFFF00000000 | v10;
        v33 = *result[2];
        v34 = *a4;
        *a4 += 2;
        *v34 = v4;
        v34[1] = v33;
        v30 = result[2];
        v31 = *v30 + 384 * v32;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v5 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = *result[1];
        v29 = *a4;
        *a4 += 2;
        *v29 = v5;
        v29[1] = v28;
        v30 = result[1];
        v31 = *v30 + 320;
      }

      *v30 = v31;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

void **sub_239E16AB8(void **result, unsigned int a2, uint64_t a3)
{
  v3 = **result + 32 * a2;
  v4 = *(v3 + 28);
  v5 = 7 - v4;
  if ((7 - v4) >= 8)
  {
    v6 = 0;
    v7 = 0;
    v8 = -v4;
    v9 = *result[1] + 32 * *(v3 + 12) + 28;
    v10 = (a3 + 160);
    *&v11 = -1;
    *(&v11 + 1) = -1;
    do
    {
      v12 = (a3 + 384 * v6);
      v12[22] = 0uLL;
      v12[23] = 0uLL;
      v12[20] = 0uLL;
      v12[21] = 0uLL;
      v12[18] = 0uLL;
      v12[19] = 0uLL;
      v13 = (a3 + 288 + 384 * v6);
      v12[16] = 0uLL;
      v12[17] = 0uLL;
      v12[14] = 0uLL;
      v12[15] = 0uLL;
      v12[12] = 0uLL;
      v12[13] = 0uLL;
      v12[10] = 0uLL;
      v12[11] = 0uLL;
      v12[8] = 0uLL;
      v12[9] = 0uLL;
      v12[6] = 0uLL;
      v12[7] = 0uLL;
      v12[4] = 0uLL;
      v12[5] = 0uLL;
      v12[2] = 0uLL;
      v12[3] = 0uLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      *v13 = v11;
      v13[1] = v11;
      if (v7 < v8)
      {
        v14 = 0;
        v15 = result[2];
        v16 = *v15;
        v17 = v15[6];
        v18 = v15[3];
        v19 = (v9 + 32 * v7);
        v20 = v10;
        do
        {
          v21 = *v19;
          v22 = *(v19 - 4);
          v23 = 3 * v22;
          v24 = 3 * v22 + 1;
          v25 = 3 * v22 + 2;
          v26 = *(v17 + 8 * v21);
          if (v26)
          {
            if (*(v15[9] + 4 * v21) == 4)
            {
              v23 = *(v26 + 4 * v23);
              v24 = *(v26 + 4 * v24);
              v25 = *(v26 + 4 * v25);
            }

            else
            {
              v23 = *(v26 + 2 * v23);
              v24 = *(v26 + 2 * v24);
              v25 = *(v26 + 2 * v25);
            }
          }

          v27 = *(v16 + 8 * v21);
          v28 = *(v18 + 4 * v21);
          v29 = (v27 + v28 * v23);
          v30 = v29[1];
          v31 = v29[2];
          v32 = (v27 + v28 * v24);
          v33 = *v32;
          v34 = v32[1];
          v35 = v32[2];
          v36 = (v27 + v28 * v25);
          v37 = *v36;
          v38 = v36[1];
          v39 = v36[2];
          *(v20 - 40) = *v29;
          *(v20 - 32) = v30;
          *(v20 - 24) = v31;
          *(v20 - 16) = v33;
          *(v20 - 8) = v34;
          *v20 = v35;
          v20[8] = v37;
          v20[16] = v38;
          v20[24] = v39;
          v20[32] = v22;
          v40 = *v19;
          v19 += 8;
          v20[40] = v40;
          v41 = v14 + 1;
          if (v14 > 6)
          {
            break;
          }

          ++v20;
          ++v14;
        }

        while (v41 + v7 < v8);
        v7 += v41;
      }

      ++v6;
      v10 += 96;
    }

    while (v6 != v5 >> 3);
  }

  return result;
}

void sub_239E16C78(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      sub_239DEDF38();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_239E16D8C(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_239E16D8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_239DE77E8();
}

uint64_t sub_239E16DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v17 = (&v30 - v16);
  v31 = v17;
  while (1)
  {
    if (*(a2 + 32 * v13 + 28) < 1)
    {
      v18 = **a6 + 32 * v13;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (*(v18 + 28))
      {
        v19 = *a6[1] + 32 * *(v18 + 12);
        result = objc_msgSend_bvh(*(*a6[2] + 8 * *(v19 + 12)), v12, v13, v14, v15);
        v20 = 0;
        v21 = *(v19 + 12);
        v22 = (*a6[3] + (v21 << 6));
        v23 = v22[1];
        v32[0] = *v22;
        v32[1] = v23;
        v24 = v22[3];
        v32[2] = v22[2];
        v32[3] = v24;
        v25 = a4;
        do
        {
          v26 = 0;
          v27 = v32[v20];
          do
          {
            v30 = v27;
            *(v25 + 4 * v26) = *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
            ++v26;
          }

          while (v26 != 3);
          ++v20;
          v25 += 12;
        }

        while (v20 != 4);
        *(a4 + 48) = result;
        *(a4 + 56) = v21;
      }
    }

    else
    {
      result = sub_239E16F70(a5, v13, a4, &v31);
    }

    v28 = v31;
    if (v31 == v17)
    {
      break;
    }

    v31 -= 2;
    v13 = *(v28 - 2);
    a4 = *(v28 - 1);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void **sub_239E16F70(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 32) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 4);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 8) = v15;
      *v9 = v17;
      v9[8] = v19;
      *(v9 - 4) = v23;
      v9[4] = v25;
      v9[12] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      if (*(v11 + 28) < 1)
      {
        *(a3 + v8) = *result[2] | 0x20;
        v27 = v4 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 2;
        v29 = 64;
        v4 = v27;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v27 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 1;
        v29 = 192;
        v5 = v27;
      }

      v30 = **v28;
      v31 = *a4;
      *a4 += 2;
      *v31 = v27;
      v31[1] = v30;
      **v28 += v29;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

uint64_t sub_239E1714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void **a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v17 = (&v30 - v16);
  v31 = v17;
  while (1)
  {
    if (*(a2 + 32 * v13 + 28) < 1)
    {
      v18 = **a6 + 32 * v13;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (*(v18 + 28))
      {
        v19 = *a6[1] + 32 * *(v18 + 12);
        result = objc_msgSend_bvh(*(*a6[2] + 8 * *(v19 + 12)), v12, v13, v14, v15);
        v20 = 0;
        v21 = *(v19 + 12);
        v22 = (*a6[3] + (v21 << 6));
        v23 = v22[1];
        v32[0] = *v22;
        v32[1] = v23;
        v24 = v22[3];
        v32[2] = v22[2];
        v32[3] = v24;
        v25 = a4;
        do
        {
          v26 = 0;
          v27 = v32[v20];
          do
          {
            v30 = v27;
            *(v25 + 4 * v26) = *(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
            ++v26;
          }

          while (v26 != 3);
          ++v20;
          v25 += 12;
        }

        while (v20 != 4);
        *(a4 + 48) = result;
        *(a4 + 56) = v21;
      }
    }

    else
    {
      result = sub_239E172E8(a5, v13, a4, &v31);
    }

    v28 = v31;
    if (v31 == v17)
    {
      break;
    }

    v31 -= 2;
    v13 = *(v28 - 2);
    a4 = *(v28 - 1);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void **sub_239E172E8(void **result, unsigned int a2, _OWORD *a3, unint64_t **a4)
{
  v6 = **result + 32 * a2;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = *(v6 + 28);
  *(a3 + 64) = ~(-1 << v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a3 + 8);
    do
    {
      v10 = (v8 + *(v6 + 12));
      v11 = **result + 32 * v10;
      v12 = *(v11 + 4);
      v13 = *(v11 + 8);
      v14 = (*v11 >> 23);
      if (v14 <= 0x17)
      {
        v14 = 23;
      }

      v15 = *v11 - COERCE_FLOAT((v14 << 23) - 184549375);
      v16 = (LODWORD(v12) >> 23);
      if (v16 <= 0x17)
      {
        v16 = 23;
      }

      v17 = v12 - COERCE_FLOAT((v16 << 23) - 184549375);
      v18 = (LODWORD(v13) >> 23);
      if (v18 <= 0x17)
      {
        v18 = 23;
      }

      v19 = v13 - COERCE_FLOAT((v18 << 23) - 184549375);
      v20 = *(v11 + 20);
      v21 = *(v11 + 24);
      v22 = (*(v11 + 16) >> 23);
      if (v22 <= 0x17)
      {
        v22 = 23;
      }

      v23 = *(v11 + 16) + COERCE_FLOAT((v22 << 23) - 184549375);
      v24 = (LODWORD(v20) >> 23);
      if (v24 <= 0x17)
      {
        v24 = 23;
      }

      v25 = v20 + COERCE_FLOAT((v24 << 23) - 184549375);
      v26 = (LODWORD(v21) >> 23);
      if (v26 <= 0x17)
      {
        v26 = 23;
      }

      *(v9 - 16) = v15;
      *v9 = v17;
      v9[16] = v19;
      *(v9 - 8) = v23;
      v9[8] = v25;
      v9[24] = v21 + COERCE_FLOAT((v26 << 23) - 184549375);
      if (*(v11 + 28) < 1)
      {
        *(a3 + v8) = *result[2] | 0x20;
        v27 = v4 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 2;
        v29 = 64;
        v4 = v27;
      }

      else
      {
        *(a3 + v8) = *result[1];
        v27 = v5 & 0xFFFFFFFF00000000 | v10;
        v28 = result + 1;
        v29 = 320;
        v5 = v27;
      }

      v30 = **v28;
      v31 = *a4;
      *a4 += 2;
      *v31 = v27;
      v31[1] = v30;
      **v28 += v29;
      ++v8;
      ++v9;
    }

    while (v8 < *(v6 + 28));
  }

  return result;
}

uint64_t sub_239E174D4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t **a4)
{
  v4 = *(result + 8);
  v5 = **result + 32 * a2;
  v6 = *v4;
  *v6 = HIDWORD(a3);
  *v4 = v6 + 1;
  v7 = *(result + 16);
  v8 = *v7;
  *v8 = HIDWORD(a2);
  *v7 = v8 + 1;
  v9 = **(result + 24) + (a2 >> 32 << 6);
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = *(v5 + 28);
  if (v10 >= 1)
  {
    v11 = (HIDWORD(a2) | (HIDWORD(a3) << 33)) + (v10 << 32) - 0x100000000;
    v12 = 4 * v10 + 52;
    do
    {
      v13 = v10 - 1;
      v14 = **result + 32 * (v10 - 1 + *(v5 + 12));
      v15 = *(v14 + 4);
      v16 = *(v14 + 8);
      v17 = (*v14 >> 23);
      if (v17 <= 0x17)
      {
        v17 = 23;
      }

      v18 = *v14 - COERCE_FLOAT((v17 << 23) - 184549375);
      v19 = (LODWORD(v15) >> 23);
      if (v19 <= 0x17)
      {
        v19 = 23;
      }

      v20 = v15 - COERCE_FLOAT((v19 << 23) - 184549375);
      v21 = (LODWORD(v16) >> 23);
      if (v21 <= 0x17)
      {
        v21 = 23;
      }

      v22 = v16 - COERCE_FLOAT((v21 << 23) - 184549375);
      v23 = *(v14 + 20);
      v24 = *(v14 + 24);
      v25 = (*(v14 + 16) >> 23);
      if (v25 <= 0x17)
      {
        v25 = 23;
      }

      v26 = *(v14 + 16) + COERCE_FLOAT((v25 << 23) - 184549375);
      v27 = (LODWORD(v23) >> 23);
      if (v27 <= 0x17)
      {
        v27 = 23;
      }

      v28 = v23 + COERCE_FLOAT((v27 << 23) - 184549375);
      v29 = (LODWORD(v24) >> 23);
      if (v29 <= 0x17)
      {
        v29 = 23;
      }

      v30 = v24 + COERCE_FLOAT((v29 << 23) - 184549375);
      v31 = (v9 + v12);
      *(v31 - 10) = v18;
      *(v31 - 8) = v20;
      *(v31 - 6) = v22;
      *(v31 - 4) = v26;
      *(v31 - 2) = v28;
      *v31 = v30;
      if (*(v14 + 28) < 1)
      {
        v33 = *(result + 40);
        v34 = *v33;
        *v33 = v34 + 1;
        LODWORD(v33) = -v34;
      }

      else
      {
        v32 = *(result + 32);
        v33 = *v32;
        *v32 = v33 + 1;
        v34 = v33;
      }

      *(v9 + 4 * v10 - 4) = v33;
      v35 = (v10 + *(v5 + 12) - 1) | (v34 << 32);
      v36 = *a4;
      *a4 += 2;
      *v36 = v35;
      v36[1] = v11;
      v11 -= 0x100000000;
      v12 -= 4;
      v10 = v13;
    }

    while ((v13 + 1) > 1);
    LODWORD(v10) = *(v5 + 28);
  }

  if (v10 <= 1)
  {
    v10 = v10;
    do
    {
      result = v10;
      *(v9 + 16 + 4 * v10) = 2139095040;
      *(v9 + 24 + 4 * v10) = 2139095040;
      *(v9 + 32 + 4 * v10) = 2139095040;
      *(v9 + 40 + 4 * v10) = -8388608;
      *(v9 + 48 + 4 * v10) = -8388608;
      v10 = 1;
      *(v9 + 56 + 4 * result) = -8388608;
    }

    while (!result);
  }

  *(v9 + 8) = a3;
  return result;
}

uint64_t **sub_239E17714(uint64_t **result, uint64_t a2, unint64_t a3, unint64_t **a4, double a5, double a6, double a7, float32x4_t a8, float32x2_t a9)
{
  v9 = result[1];
  v10 = **result;
  v11 = *v9;
  *v11 = HIDWORD(a3);
  *v9 = (v11 + 1);
  v12 = result[2];
  v13 = *v12;
  *v13 = HIDWORD(a2);
  v14 = v10 + 32 * a2;
  *v12 = (v13 + 1);
  v15 = *result[3];
  v16 = v15 + (a2 >> 32 << 7);
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = *(v14 + 28);
  v18 = a2 >> 32 << 7;
  if (v17 >= 1)
  {
    v19 = v17 + 1;
    v20 = (HIDWORD(a2) | (HIDWORD(a3) << 34)) + (v17 << 32) - 0x100000000;
    v21 = v18 + 32 * v17 + v15 - 16;
    v22.i64[0] = 0x1700000017;
    v22.i64[1] = 0x1700000017;
    v23 = vdupq_n_s32(0xF5000001);
    do
    {
      v24 = (**result + 32 * (v19 + *(v14 + 12) - 2));
      a8.i32[0] = *v24;
      a9.i32[0] = v24[2];
      a8.i32[1] = v24[4];
      a8.i32[2] = v24[1];
      v25 = a8;
      v25.i32[3] = v24[5];
      v26 = vaddq_s32(vshlq_n_s32(vmaxq_u32((*&vshrq_n_u32(v25, 0x17uLL) & __PAIR128__(0xFFFFFEFFFFFFFEFFLL, 0xFFFFFEFFFFFFFEFFLL)), v22), 0x17uLL), v23);
      a8 = vtrn2q_s32(vrev64q_s32(vsubq_f32(a8, v26)), vaddq_f32(v25, v26));
      v25.i32[0] = a9.i32[0];
      v25.i32[1] = v24[6];
      *(v21 - 16) = a8;
      *a8.f32 = vadd_s32(vshl_n_s32(vmax_u32((*&vshr_n_u32(*v25.f32, 0x17uLL) & 0xFFFFFEFFFFFFFEFFLL), 0x1700000017), 0x17uLL), *v23.i8);
      a9.i32[0] = vsub_f32(a9, *a8.f32).u32[0];
      a9.i32[1] = vadd_f32(*&v25, *&a8).i32[1];
      *v21 = *&a9;
      if (v24[7] < 1)
      {
        v28 = result[5];
        v29 = *v28;
        *v28 = v29 + 1;
        LODWORD(v28) = -v29;
      }

      else
      {
        v27 = result[4];
        v28 = *v27;
        *v27 = v28 + 1;
        v29 = v28;
      }

      *(v21 + 8) = v28;
      v30 = (--v19 + *(v14 + 12) - 1) | (v29 << 32);
      v31 = *a4;
      *a4 += 2;
      *v31 = v30;
      v31[1] = v20;
      v20 -= 0x100000000;
      v21 -= 32;
    }

    while (v19 > 1);
    LODWORD(v17) = *(v14 + 28);
  }

  if (v17 <= 3)
  {
    v32 = (v18 + 32 * v17 + v15 + 16);
    v33 = v17 + 1;
    do
    {
      *(v32 - 1) = xmmword_239E27050;
      *v32 = 0xFF8000007F800000;
      v32 += 4;
    }

    while (v33++ != 4);
  }

  *(v16 + 60) = a3;
  *(v16 + 28) = ~(-1 << *(v14 + 28));
  return result;
}

uint64_t sub_239E17918(uint64_t result, uint64_t a2, unint64_t a3, unint64_t **a4)
{
  v4 = *(result + 8);
  v5 = **result + 32 * a2;
  v6 = *v4;
  *v6 = HIDWORD(a3);
  *v4 = v6 + 1;
  v7 = *(result + 16);
  v8 = *v7;
  *v8 = HIDWORD(a2);
  *v7 = v8 + 1;
  v9 = **(result + 24);
  v10 = a2 >> 32;
  v11 = v9 + (a2 >> 32 << 7);
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = *(v5 + 28);
  if (v12 >= 1)
  {
    v13 = (HIDWORD(a2) | (HIDWORD(a3) << 34)) + (v12 << 32) - 0x100000000;
    v14 = 4 * v12 + 108;
    do
    {
      v15 = v12 - 1;
      v16 = **result + 32 * (v12 - 1 + *(v5 + 12));
      v17 = *(v16 + 4);
      v18 = *(v16 + 8);
      v19 = (*v16 >> 23);
      if (v19 <= 0x17)
      {
        v19 = 23;
      }

      v20 = *v16 - COERCE_FLOAT((v19 << 23) - 184549375);
      v21 = (LODWORD(v17) >> 23);
      if (v21 <= 0x17)
      {
        v21 = 23;
      }

      v22 = v17 - COERCE_FLOAT((v21 << 23) - 184549375);
      v23 = (LODWORD(v18) >> 23);
      if (v23 <= 0x17)
      {
        v23 = 23;
      }

      v24 = v18 - COERCE_FLOAT((v23 << 23) - 184549375);
      v25 = *(v16 + 20);
      v26 = *(v16 + 24);
      v27 = (*(v16 + 16) >> 23);
      if (v27 <= 0x17)
      {
        v27 = 23;
      }

      v28 = *(v16 + 16) + COERCE_FLOAT((v27 << 23) - 184549375);
      v29 = (LODWORD(v25) >> 23);
      if (v29 <= 0x17)
      {
        v29 = 23;
      }

      v30 = v25 + COERCE_FLOAT((v29 << 23) - 184549375);
      v31 = (LODWORD(v26) >> 23);
      if (v31 <= 0x17)
      {
        v31 = 23;
      }

      v32 = v26 + COERCE_FLOAT((v31 << 23) - 184549375);
      v33 = (v11 + v14);
      *(v33 - 20) = v20;
      *(v33 - 16) = v22;
      *(v33 - 12) = v24;
      *(v33 - 8) = v28;
      *(v33 - 4) = v30;
      *v33 = v32;
      if (*(v16 + 28) < 1)
      {
        v35 = *(result + 40);
        v36 = *v35;
        *v35 = v36 + 1;
        LODWORD(v35) = -v36;
      }

      else
      {
        v34 = *(result + 32);
        v35 = *v34;
        *v34 = v35 + 1;
        v36 = v35;
      }

      *(v11 + 4 * v12 - 4) = v35;
      v37 = (v12 + *(v5 + 12) - 1) | (v36 << 32);
      v38 = *a4;
      *a4 += 2;
      *v38 = v37;
      v38[1] = v13;
      v13 -= 0x100000000;
      v14 -= 4;
      v12 = v15;
    }

    while ((v15 + 1) > 1);
    LODWORD(v12) = *(v5 + 28);
  }

  if (v12 <= 3)
  {
    v39 = v12 + 1;
    v40 = ((v10 << 7) + 4 * v12 + v9 + 64);
    do
    {
      *(v40 - 8) = 2139095040;
      *(v40 - 4) = 2139095040;
      *v40 = 2139095040;
      v40[4] = -8388608;
      v40[8] = -8388608;
      v40[12] = -8388608;
      ++v40;
    }

    while (v39++ != 4);
  }

  *(v11 + 20) = a3;
  *(v11 + 16) = ~(-1 << *(v5 + 28));
  return result;
}

intptr_t sub_239E1899C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_239E18C24(uint64_t result)
{
  if (atomic_fetch_add((result + 56), 0xFFFFFFFF) == 1)
  {
    v1 = result;
    sub_239E18CB8(*(result + 64), result);
    result = *(v1 + 64);
    add = atomic_fetch_add((result + 8), 0xFFFFFFFF);
    if (result && add == 1)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

uint64_t sub_239E18CB8(uint64_t a1, uint64_t **a2)
{
  kdebug_trace();
  if (a2)
  {
    v4 = *a2;
    v5 = *a2 + 2;
    v6 = *v5;
    if (*v5)
    {
      v7 = v4[3];
      if (v7)
      {
        *(v7 + 16) = v6;
        *(v6 + 24) = v7;
        *v5 = 0;
        v5[1] = 0;
        v8 = *v4;
        v8[1] = a2;
        *a2 = v8;
        v9 = (a2[5] + v4[5]);
        a2[4] = v4[4];
        a2[5] = v9;
        MEMORY[0x23EE7D780]();
      }
    }

    v10 = a2[1];
    v11 = v10[2];
    if (v11)
    {
      v12 = v10[3];
      if (v12)
      {
        *(v12 + 16) = v11;
        *(v11 + 24) = v12;
        v10[2] = 0;
        v10[3] = 0;
        a2[5] = (a2[5] + v10[5]);
        v13 = v10[1];
        a2[1] = v13;
        *v13 = a2;
        MEMORY[0x23EE7D780]();
      }
    }

    v14 = a2[5];
    v15 = getpagesize();
    if (v14 <= v15)
    {
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v15;
      do
      {
        v18 = v16 + 1;
        v17 *= 2;
      }

      while (v17 < v14 && v16++ < 0xE);
    }

    v20 = a1 + 144 * v18;
    v21 = *(v20 + 80);
    a2[2] = (v20 + 56);
    a2[3] = v21;
    v21[2] = a2;
    *(v20 + 80) = a2;
  }

  return kdebug_trace();
}

void sub_239E18E2C(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    v11 = objc_msgSend_blitCommandEncoder(a3, a2, a3, a4, a5);
    if (*(a1 + 32))
    {
      v12 = 0;
      do
      {
        v13 = objc_msgSend_newBufferWithLength_options_(*(a1 + 16), v7, a2, *(a1 + 40), v10);
        v17 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 24), v14, v12, v15, v16);
        v21 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 24), v18, v12, v19, v20);
        v26 = objc_msgSend_length(v21, v22, v23, v24, v25);
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v11, v27, v17, 0, v13, 0, v26);
        objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 24), v28, v13, v12, v29);

        ++v12;
      }

      while (v12 < *(a1 + 32));
    }

    objc_msgSend_endEncoding(v11, v7, v8, v9, v10);
  }

  else
  {
    *(a1 + 24) = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (*(a1 + 32))
    {
      v32 = 0;
      do
      {
        v33 = objc_msgSend_newBufferWithLength_options_(*(a1 + 16), v30, a2, *(a1 + 40), v31);
        objc_msgSend_addObject_(*(a1 + 24), v34, v33, v35, v36);

        ++v32;
      }

      while (v32 < *(a1 + 32));
    }
  }

  *(a1 + 48) = a2;
}

uint64_t sub_239E18F54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 1;
  *a1 = &unk_284D085C8;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0;
  kdebug_trace();
  for (i = 0; i != 2304; i += 144)
  {
    v8 = a1 + i;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    v9 = a1 + i + 56;
    *(a1 + i + 128) = 0;
    *(v9 + 80) = 0;
    *(v9 + 88) = v9;
    *(v9 + 16) = 0;
    *(v9 + 24) = a1 + i + 128;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 96) = 0uLL;
    *(v9 + 112) = 0uLL;
  }

  *(a1 + 128) = a1 + 56;
  *(a1 + 64) = a1 + 128;
  kdebug_trace();
  return a1;
}

uint64_t sub_239E19044(uint64_t a1)
{
  *a1 = &unk_284D085C8;
  kdebug_trace();
  for (i = 0; i != 16; ++i)
  {
    v3 = a1 + 56 + 144 * i;
    v4 = *(v3 + 24);
    v5 = v3 + 72;
    if (v4 != v3 + 72)
    {
      do
      {
        v6 = *(v4 + 24);
        MEMORY[0x23EE7D780]();
        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  kdebug_trace();
  return a1;
}

void sub_239E19140(uint64_t a1)
{
  sub_239E19044(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E19178(uint64_t a1, uint64_t a2, void *a3)
{
  kdebug_trace();
  v6 = getpagesize();
  v9 = (a2 + v6 - 1) & -v6;
  if (!*(a1 + 48))
  {
    v14 = 1;
    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 < v9);
    sub_239E18E2C(a1, v15, a3, v7, v8);
    operator new();
  }

  v10 = v6;
  if (v9 <= v6)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
      v10 *= 2;
    }

    while (v10 < v9 && v11++ < 0xE);
  }

  do
  {
    v16 = a1 + 56 + 144 * v12;
    v17 = v16 + 72;
    while (1)
    {
      v16 = *(v16 + 24);
      if (v16 == v17)
      {
        break;
      }

      v18 = *(v16 + 48);
      if (v18 >= v9)
      {
        v25 = *(v16 + 16);
        v26 = *(v16 + 24);
        *(v26 + 16) = v25;
        *(v25 + 24) = v26;
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        atomic_store(1u, (v16 + 56));
        *(v16 + 40) = a2;
        if (v18 != v9)
        {
          operator new();
        }

        goto LABEL_27;
      }
    }

    ++v12;
  }

  while (v12 != 16);
  v19 = *(a1 + 128);
  if (!v19[2])
  {
    v20 = *(a1 + 48);
    goto LABEL_29;
  }

  v20 = *(a1 + 48);
  if (!v19[3])
  {
LABEL_29:
    v28 = v20;
    do
    {
      v29 = v28;
      v28 = (2 * v28);
    }

    while (v29 < &v20[v9]);
    sub_239E18E2C(a1, v29, a3, v7, v8);
    operator new();
  }

  v21 = v19[4];
  do
  {
    v22 = v20;
    v20 = (2 * v20);
  }

  while (v22 < v21 + v9);
  sub_239E18E2C(a1, v22, a3, v7, v8);
  v16 = *(a1 + 128);
  *(v16 + 40) = a2;
  *(v16 + 48) = &v22[-v21];
  v23 = *(v16 + 16);
  v24 = *(v16 + 24);
  *(v24 + 16) = v23;
  *(v23 + 24) = v24;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  atomic_store(1u, (v16 + 56));
  if (&v22[-v21] != v9)
  {
    operator new();
  }

LABEL_27:
  atomic_fetch_add((a1 + 8), 1u);
  kdebug_trace();
  return v16;
}

uint64_t sub_239E1959C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v7 = *(a3 + 16);
  v6 = *(a3 + 32);
  *(a1 + 8) = *a3;
  *(a1 + 24) = v7;
  *(a1 + 40) = v6;
  *(a1 + 56) = v5;
  *a1 = &unk_284D08630;
  *(a1 + 64) = a2;
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 72) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3D538);
  *(a1 + 80) = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v9, 12, 32, v10);
  v15 = objc_msgSend_name(a2, v11, v12, v13, v14);
  if (objc_msgSend_containsString_(v15, v16, @"AMD", v17, v18))
  {
    v23 = 64;
  }

  else
  {
    v24 = objc_msgSend_name(a2, v19, v20, v21, v22);
    v28 = objc_msgSend_containsString_(v24, v25, @"Intel", v26, v27);
    v23 = 32;
    if (v28)
    {
      v23 = 64;
    }
  }

  *(a1 + 88) = v23;
  *(a1 + 96) = sub_239E0487C(a2, v19, v20, v21, v22);
  return a1;
}

uint64_t sub_239E19690(uint64_t a1)
{
  *a1 = &unk_284D08630;

  return a1;
}

void sub_239E196E8(uint64_t a1)
{
  sub_239E19690(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E19720(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v7 = v5[1];
  v6 = v5[2];
  v8 = *v5;
  *&v37[12] = *(v5 + 44);
  v36 = v7;
  *v37 = v6;
  v35 = v8;
  v9 = MPSCreateFunctionConstantValues();
  v11 = v9;
  v12 = *a3;
  v13 = *(a3 + 1);
  v14.i64[0] = -1;
  v14.i64[1] = -1;
  v15 = vceqq_s64(v13, v14);
  if (*a3 != -1 || ((v16 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v14), vceqq_s64(*(a3 + 4), v14)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v15, vceqq_s64(*(a3 + 3), v14)), xmmword_239E26D10)) & 0xF) == 0) ? (v17 = v16 == 0) : (v17 = 0), v17 ? (v18 = a3[5] == -1) : (v18 = 0), !v18))
  {
    if ((vuzp1_s16(vmovn_s64(v15), *v13.i8).u8[0] & 1) == 0)
    {
      v38 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v9, v10, &v38, 33, 126);
      v12 = *a3;
    }

    if (v12 != -1)
    {
      v38 = v12;
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 125);
    }

    if (a3[2] != -1)
    {
      v38 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 124);
    }

    if (a3[3] != -1)
    {
      v38 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 123);
    }

    if (a3[4] != -1)
    {
      v38 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 119);
    }

    if (a3[5] != -1)
    {
      v38 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 118);
    }

    if (a3[8] != -1)
    {
      v38 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 122);
    }

    if (a3[9] != -1)
    {
      v38 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 121);
    }

    if (a3[6] != -1)
    {
      v38 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 117);
    }

    if (a3[7] != -1)
    {
      v38 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v38, 33, 116);
    }
  }

  objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v35 + 4, 33, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v19, &v35 + 8, 33, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v20, &v35 | 0xC, 33, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v21, &v36, 33, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v22, &v36 + 4, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v23, &v36 + 8, 3, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v24, &v36 + 12, 3, 6);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v25, v37, 33, 7);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v26, &v37[4], 33, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v27, &v37[8], 53, 9);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v28, &v37[12], 33, 10);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v29, &v37[16], 53, 11);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v30, &v37[20], 33, 12);
  objc_msgSend_setConstantValue_type_atIndex_(v11, v31, &v37[24], 33, 13);
  v32 = *a2;
  v33 = _MPSNewSpecializedFunction();

  return v33;
}

uint64_t sub_239E19AB4(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, int a9)
{
  v12 = a5;
  v13 = a4;
  v14 = a2;
  v16 = *(a1 + 32);
  v17 = *(a1 + 16);
  v18 = *(a1 + 12);
  v19 = *(a1 + 88);
  if (a3)
  {
    v24 = *(a1 + 32);
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@%llu", a4, a5, a2, v19);
    v16 = v24;
    v14 = v20;
  }

  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v25 = v13;
  v26 = vextq_s8(vrev64q_s32(v16), v16, 8uLL);
  v27 = 1024;
  v28 = vrev64_s32(v17);
  v29 = v12;
  v30 = a6;
  v31 = v18 == 3;
  v32 = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  v36 = 0;
  v37 = 0;
  v38 = a9;
  v39 = v19;
  return sub_239E19BC4(v14, v21, v22, &v25);
}

uint64_t sub_239E19BC4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = a2;
  if ((atomic_load_explicit(&qword_27DF88878, memory_order_acquire) & 1) == 0)
  {
    sub_239E24D38();
  }

  std::mutex::lock(&stru_27DF88838);
  if (!qword_27DF88830)
  {
    operator new();
  }

  v5 = sub_239DE7494(qword_27DF88830, &v8);
  if (!v5)
  {
    operator new();
  }

  sub_239E1FA4C(v5[3], a4);
  std::mutex::unlock(&stru_27DF88838);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239E19D68(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v26 = a5;
  v8 = *(a1 + 72);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v10, ComputeState, v11, v12);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v13, a3, (a4 << 8), 29);
  objc_msgSend_setBytes_length_atIndex_(a2, v14, &v26, 4, 30);
  v23 = vdupq_n_s64(1uLL);
  v24 = v23;
  v25 = 1;
  v22 = objc_msgSend_threadExecutionWidth(ComputeState, v15, v16, v17, v18);
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v19, &v24, &v22, v20);
}

uint64_t sub_239E19E34(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v9 = *(a1 + 72);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v11, ComputeState, v12, v13);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v14, a3, (a4 << 8), 29);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v15, a3, (a5 << 8), 30);
  v24 = vdupq_n_s64(1uLL);
  v25 = v24;
  v26 = 1;
  v23 = objc_msgSend_threadExecutionWidth(ComputeState, v16, v17, v18, v19);
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v20, &v25, &v23, v21);
}

uint64_t sub_239E19F00(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = a1[9];
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v14, ComputeState, v15, v16);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v17, a4, (a5 << 8), 28);
  v39 = a6;
  objc_msgSend_setBytes_length_atIndex_(a2, v18, &v39, 4, 29);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v19, a1[10], 0, 30);
  v35 = vdupq_n_s64(1uLL);
  v37 = v35;
  *v38 = v35;
  *&v38[16] = 1;
  v36 = objc_msgSend_threadExecutionWidth(ComputeState, v20, v21, v22, v23);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v24, v38, &v36, v25);
  objc_msgSend_setComputePipelineState_(a2, v26, a3, v27, v28);
  v29 = a1[11];
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v30, 32 * v29, 0, v31);
  v32 = a1[10];
  *v38 = v29;
  *&v38[8] = v35;
  return objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(a2, v33, v32, 0, v38);
}

uint64_t sub_239E1A07C(void *a1, uint64_t a2, unsigned int a3)
{
  if ((a3 + *(a2 + 24) - 1) / *(a2 + 24) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (a3 + *(a2 + 24) - 1) / *(a2 + 24);
  }

  v5 = log2(a3);
  v8 = (exp2(ceil(v5)) + 1023) >> 10;
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v4;
  v11 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v6, v10, 32, v7);
  v14 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v12, v10, 32, v13);
  v16 = &v15[v11 - 1] & -v15;
  v18 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v15, 16 * (48 * v9), 32, v17);
  v20 = &v19[v14 - 1 + v16] & -v19;
  v22 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v19, 16 * (48 * v9), 32, v21);
  v24 = &v23[v18 - 1 + v20] & -v23;
  v26 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v23, 4 * (48 * v9), 32, v25);
  v28 = &v27[v22 - 1 + v24] & -v27;
  v30 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v27, 4 * (48 * v9), 32, v29);
  v32 = &v31[v26 - 1 + v28] & -v31;
  v34 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v31, 4 * (48 * v9), 32, v33);
  v36 = &v35[v30 - 1 + v32] & -v35;
  v37 = v9 + 2 * v9;
  v39 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v35, 16 * v37, 32, v38);
  v41 = &v40[v34 - 1 + v36] & -v40;
  v43 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v40, 16 * v37, 32, v42);
  v45 = &v44[v39 - 1 + v41] & -v44;
  v47 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v44, 112 * v9, 32, v46);
  v49 = &v48[v43 - 1 + v45] & -v48;
  v51 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v48, 4 * v9, 32, v50);
  v53 = &v52[v47 - 1 + v49] & -v52;
  v55 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v52, 4 * v9, 32, v54);
  v57 = &v56[v51 - 1 + v53] & -v56;
  v59 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v56, 4 * v37, 32, v58);
  v61 = &v60[v55 - 1 + v57] & -v60;
  v63 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v60, 4 * v37, 32, v62);
  v65 = &v64[v59 - 1 + v61] & -v64;
  v67 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(a1, v64, 4, 32, v66);
  return ((v63 + v68 + v65 - 1) & -v68) + v67;
}

uint64_t sub_239E1A358(uint64_t a1, unint64_t a2)
{
  v2 = 1.0;
  if (!*(a1 + 52) && *(a1 + 4) == 3)
  {
    v2 = 2.0;
  }

  return (v2 * a2);
}

uint64_t sub_239E1A384(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = 2 * a2 - 1;
  v4 = __CFADD__(v3, v2);
  v5 = (v3 + v2) / v2;
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_239E1A3A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, a2, &v63, v69, 16);
  if (v10)
  {
    v15 = v10;
    v16 = 0;
    v17 = *v64;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v64 != v17)
        {
          objc_enumerationMutation(a5);
        }

        v16 += objc_msgSend_unsignedIntegerValue(*(*(&v63 + 1) + 8 * i), v11, v12, v13, v14);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, v11, &v63, v69, 16);
    }

    while (v15);
    v19 = v16;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = *(a2 + 4);
  v21 = v20 == 3 && *(a2 + 52) == 0;
  v22 = 1.0;
  if (v21)
  {
    v22 = 2.0;
  }

  v23 = (v22 * v19);
  v24 = *(a2 + 24);
  v25 = *(a2 + 16);
  v61[0] = *a2;
  v61[1] = v25;
  v61[2] = *(a2 + 32);
  v62 = *(a2 + 48);
  v26 = sub_239E1A07C(a1, v61, v23);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v27, &v57, v68, 16);
  if (v28)
  {
    v33 = v28;
    v34 = 0;
    v35 = *v58;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(a3);
        }

        v34 += objc_msgSend_length(*(*(&v57 + 1) + 8 * j), v29, v30, v31, v32);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v29, &v57, v68, 16);
    }

    while (v33);
    if (!a4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v34 = 0;
    if (!a4)
    {
LABEL_33:
      v43 = 0;
      goto LABEL_34;
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v29, &v53, v67, 16);
  if (!v37)
  {
    goto LABEL_33;
  }

  v42 = v37;
  v43 = 0;
  v44 = *v54;
  do
  {
    for (k = 0; k != v42; ++k)
    {
      if (*v54 != v44)
      {
        objc_enumerationMutation(a4);
      }

      v43 += objc_msgSend_length(*(*(&v53 + 1) + 8 * k), v38, v39, v40, v41);
    }

    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v38, &v53, v67, 16);
  }

  while (v42);
LABEL_34:
  v46 = v24 + 2 * v23 - 1;
  if (v24 > v46)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46 / v24;
  }

  v48 = getpagesize();
  if (v20 == 3)
  {
    v49 = v34;
  }

  else
  {
    v49 = 0;
  }

  if (v20 == 3)
  {
    v50 = v43;
  }

  else
  {
    v50 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v49 + v26 + ((v48 - 1 + 32 * v23) & -v48) + 2 * ((v48 - 1 + 4 * v23) & -v48) + v50 + ((v48 - 1 + 32 * v47) & -v48) + ((v48 - 1 + 4 * v47) & -v48);
}

void sub_239E1A69C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, int a12, uint64_t a13, void *a14, void **a15, void **a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25)
{
  v409 = *MEMORY[0x277D85DE8];
  v404 = a2;
  v375 = *(a1 + 12);
  if ((a2 + *(a1 + 32) - 1) / *(a1 + 32) <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = (a2 + *(a1 + 32) - 1) / *(a1 + 32);
  }

  v29 = log2(a2);
  v30 = (exp2(ceil(v29)) + 1023) >> 10;
  if (v30 <= 1)
  {
    v30 = 1;
  }

  v376 = v30;
  v31 = *(a1 + 24);
  v400 = *(a1 + 8);
  v401 = v31;
  v402 = *(a1 + 40);
  v32 = *(a1 + 64);
  v403 = *(a1 + 56);
  v378 = sub_239E1A07C(v32, &v400, a2);
  v33 = *(a1 + 64);
  v38 = objc_msgSend_dedicatedMemorySize(v33, v34, v35, v36, v37);
  if (!v38)
  {
    v38 = objc_msgSend_sharedMemorySize(v33, v39, v40, v41, v42);
  }

  v373 = v38;
  v398 = 0u;
  v399 = 0u;
  v396 = 0u;
  v397 = 0u;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v39, &v396, v408, 16);
  if (v43)
  {
    v48 = v43;
    v49 = 0;
    v50 = *v397;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v397 != v50)
        {
          objc_enumerationMutation(a7);
        }

        v49 += objc_msgSend_length(*(*(&v396 + 1) + 8 * i), v44, v45, v46, v47);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v44, &v396, v408, 16);
    }

    while (v48);
  }

  else
  {
    v49 = 0;
  }

  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v44, &v392, v407, 16);
  if (v52)
  {
    v57 = v52;
    v58 = 0;
    v59 = *v393;
    v60 = v28;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v393 != v59)
        {
          objc_enumerationMutation(a10);
        }

        v58 += objc_msgSend_length(*(*(&v392 + 1) + 8 * j), v53, v54, v55, v56);
      }

      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v53, &v392, v407, 16);
    }

    while (v57);
  }

  else
  {
    v58 = 0;
    v60 = v28;
  }

  if (v375 == 3)
  {
    v62 = v49;
  }

  else
  {
    v62 = 0;
  }

  if (v375 != 3)
  {
    v58 = 0;
  }

  v63 = v62 + v378 + objc_msgSend_length(a14, v53, v54, v55, v56);
  v68 = v63 + objc_msgSend_length(*a15, v64, v65, v66, v67);
  v73 = v68 + objc_msgSend_length(*a16, v69, v70, v71, v72);
  v78 = v73 + objc_msgSend_length(a17, v74, v75, v76, v77);
  if (v78 + objc_msgSend_length(a18, v79, v80, v81, v82) + v58 > v373)
  {
    sub_239E24DA0();
  }

  v83 = objc_alloc_init(MEMORY[0x277CD6E48]);
  objc_msgSend_setStorageMode_(v83, v84, 2, v85, v86);
  objc_msgSend_setSize_(v83, v87, v378, v88, v89);
  v93 = objc_msgSend_newHeapWithDescriptor_(*(a1 + 64), v90, v83, v91, v92);

  v379 = objc_msgSend_newBufferWithLength_options_(v93, v94, 8 * v60, 288, v95);
  v98 = objc_msgSend_newBufferWithLength_options_(v93, v96, 8 * v60, 288, v97);
  v374 = objc_msgSend_newBufferWithLength_options_(v93, v99, 768 * v376, 288, v100);
  v372 = objc_msgSend_newBufferWithLength_options_(v93, v101, 768 * v376, 288, v102);
  v371 = objc_msgSend_newBufferWithLength_options_(v93, v103, 192 * v376, 288, v104);
  v370 = objc_msgSend_newBufferWithLength_options_(v93, v105, 192 * v376, 288, v106);
  v369 = objc_msgSend_newBufferWithLength_options_(v93, v107, 192 * v376, 288, v108);
  v368 = objc_msgSend_newBufferWithLength_options_(v93, v109, 48 * v376, 288, v110);
  v367 = objc_msgSend_newBufferWithLength_options_(v93, v111, 48 * v376, 288, v112);
  v366 = objc_msgSend_newBufferWithLength_options_(v93, v113, 112 * v376, 288, v114);
  v365 = objc_msgSend_newBufferWithLength_options_(v93, v115, 4 * v376, 288, v116);
  v364 = objc_msgSend_newBufferWithLength_options_(v93, v117, 4 * v376, 288, v118);
  v363 = objc_msgSend_newBufferWithLength_options_(v93, v119, 12 * v376, 288, v120);
  v362 = objc_msgSend_newBufferWithLength_options_(v93, v121, 12 * v376, 288, v122);
  v349 = v93;
  v377 = objc_msgSend_newBufferWithLength_options_(v93, v123, 4, 288, v124);
  v354 = objc_msgSend_count(a7, v125, v126, v127, v128);
  v361 = sub_239E19AB4(a1, @"dispatchBinsKernel", 1, 0, a9, a12, 0, v354 > 1, a25);
  v360 = sub_239E19AB4(a1, @"binFragmentsKernel", 0, 1, a9, a12, 0, v354 > 1, a25);
  v359 = sub_239E19AB4(a1, @"clearBatchesKernel", 0, 2, a9, a12, 0, v354 > 1, a25);
  v358 = sub_239E19AB4(a1, @"buildBVHKernel", 0, 3, a9, a12, 0, v354 > 1, a25);
  v357 = sub_239E19AB4(a1, @"findBestSplitKernel", 1, 4, a9, a12, 0, v354 > 1, a25);
  v356 = sub_239E19AB4(a1, @"splitObjectsKernel", 1, 5, a9, a12, 0, v354 > 1, a25);
  v353 = sub_239E19AB4(a1, @"binFragmentsSpatialKernel", 0, 6, a9, a12, 0, v354 > 1, a25);
  v352 = sub_239E19AB4(a1, @"findBestSpatialSplitKernel", 1, 7, a9, a12, 0, v354 > 1, a25);
  v129 = sub_239E19AB4(a1, @"initializeQueueKernel", 0, 8, a9, a12, 0, v354 > 1, a25);
  v130 = sub_239E19AB4(a1, @"initializeFragmentIndicesKernel", 0, 24, a9, a12, 0, v354 > 1, a25);
  v135 = objc_msgSend_commandBuffer(a6, v131, v132, v133, v134);
  *a24 = 0;
  v136 = *(a1 + 8);
  v137 = *(a1 + 96);
  v391[0] = MEMORY[0x277D85DD0];
  v391[1] = 3221225472;
  v391[2] = sub_239E1B870;
  v391[3] = &unk_278B3D940;
  v391[4] = a24;
  v345 = v135;
  v139 = sub_239E04ADC(v136, v137, v135, v391, v138);
  objc_msgSend_waitForFence_(v139, v140, a20, v141, v142);
  sub_239E19D68(a1, v139, a19, 0, 1);
  sub_239E19D68(a1, v139, a19, 6, 1);
  sub_239E19D68(a1, v139, a19, 8, 0);
  sub_239E19D68(a1, v139, a19, 9, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v143, a17, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v144, v379, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v145, *a15, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v146, a21, 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v139, v147, &v404, 4, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v148, a22, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v149, a23, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v150, v377, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v151, a19, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v139, v152, a18, 0, 9);
  v348 = v129;
  objc_msgSend_setComputePipelineState_(v139, v153, v129, v154, v155);
  v400 = vdupq_n_s64(1uLL);
  *&v401 = 1;
  v389 = *(a1 + 88);
  v390 = v400;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v139, v156, &v400, &v389, v157);
  v346 = v130;
  sub_239E19F00(a1, v139, v130, a21, 0, *(a1 + 88));
  v161 = 0;
  if (v354 >= 2)
  {
    v162 = *(a1 + 64);
    contexta = objc_autoreleasePoolPush();
    v167 = objc_msgSend_array(MEMORY[0x277CBEB18], v163, v164, v165, v166);
    v172 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v168, v169, v170, v171);
    objc_msgSend_setDataType_(v172, v173, 60, v174, v175);
    objc_msgSend_setIndex_(v172, v176, 0, v177, v178);
    objc_msgSend_setAccess_(v172, v179, 0, v180, v181);
    objc_msgSend_addObject_(v167, v182, v172, v183, v184);
    v189 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v185, v186, v187, v188);
    objc_msgSend_setDataType_(v189, v190, 60, v191, v192);
    objc_msgSend_setIndex_(v189, v193, 1, v194, v195);
    objc_msgSend_setAccess_(v189, v196, 0, v197, v198);
    objc_msgSend_addObject_(v167, v199, v189, v200, v201);
    v202 = v162;
    v206 = objc_msgSend_newArgumentEncoderWithArguments_(v162, v203, v167, v204, v205);
    objc_autoreleasePoolPop(contexta);
    MPSDevice = MPSDevice::GetMPSDevice();
    v208 = 16 * (*(*MPSDevice + 24))(MPSDevice);
    v213 = objc_msgSend_count(a7, v209, v210, v211, v212);
    v218 = objc_msgSend_encodedLength(v206, v214, v215, v216, v217);
    v161 = objc_msgSend_newBufferWithLength_options_(v202, v219, v218 * v213, v208, v220);
    if (objc_msgSend_count(a7, v221, v222, v223, v224))
    {
      v229 = 0;
      do
      {
        v230 = objc_msgSend_encodedLength(v206, v225, v226, v227, v228);
        objc_msgSend_setArgumentBuffer_offset_(v206, v231, v161, v230 * v229, v232);
        v236 = objc_msgSend_objectAtIndexedSubscript_(a7, v233, v229, v234, v235);
        v240 = objc_msgSend_objectAtIndexedSubscript_(a8, v237, v229, v238, v239);
        v245 = objc_msgSend_unsignedIntegerValue(v240, v241, v242, v243, v244);
        objc_msgSend_setBuffer_offset_atIndex_(v206, v246, v236, v245, 0);
        if (a10)
        {
          v251 = objc_msgSend_objectAtIndexedSubscript_(a10, v247, v229, v249, v250);
          v255 = objc_msgSend_objectAtIndexedSubscript_(a11, v252, v229, v253, v254);
          v260 = objc_msgSend_unsignedIntegerValue(v255, v256, v257, v258, v259);
          objc_msgSend_setBuffer_offset_atIndex_(v206, v261, v251, v260, 1);
        }

        ++v229;
      }

      while (v229 < objc_msgSend_count(a7, v247, v248, v249, v250));
    }
  }

  context = v161;
  if (*(a1 + 40))
  {
    v262 = 0;
    v263 = a16;
    v264 = a15;
    v265 = v379;
    do
    {
      v400.i32[0] = v262;
      objc_msgSend_setBytes_length_atIndex_(v139, v158, &v400, 4, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v266, *v264, 0, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v267, *v263, 0, 4);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v268, v265, 0, 5);
      v380 = v98;
      objc_msgSend_setBuffer_offset_atIndex_(v139, v269, v98, 0, 6);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v270, v377, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v271, a14, 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v272, v374, 0, 7);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v273, v372, 0, 8);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v274, v371, 0, 9);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v275, v365, 0, 10);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v276, v364, 0, 11);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v277, v370, 0, 12);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v278, v369, 0, 13);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v279, v368, 0, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v280, v367, 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v281, v363, 0, 16);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v282, v362, 0, 17);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v283, v366, 0, 18);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v284, a17, 0, 19);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v285, a19, 0, 22);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v286, a18, 0, 23);
      if (v375 == 3)
      {
        v290 = objc_msgSend_objectAtIndexedSubscript_(a7, v287, 0, v288, v289);
        v294 = objc_msgSend_objectAtIndexedSubscript_(a8, v291, 0, v292, v293);
        v299 = objc_msgSend_unsignedIntegerValue(v294, v295, v296, v297, v298);
        objc_msgSend_setBuffer_offset_atIndex_(v139, v300, v290, v299, 20);
        v304 = objc_msgSend_objectAtIndexedSubscript_(a10, v301, 0, v302, v303);
        v308 = objc_msgSend_objectAtIndexedSubscript_(a11, v305, 0, v306, v307);
        v313 = objc_msgSend_unsignedIntegerValue(v308, v309, v310, v311, v312);
        objc_msgSend_setBuffer_offset_atIndex_(v139, v314, v304, v313, 21);
        if (v354 >= 2)
        {
          objc_msgSend_setBuffer_offset_atIndex_(v139, v315, context, 0, 24);
          v387 = 0u;
          v388 = 0u;
          v385 = 0u;
          v386 = 0u;
          v317 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v316, &v385, v406, 16);
          if (v317)
          {
            v320 = v317;
            v321 = *v386;
            do
            {
              for (k = 0; k != v320; ++k)
              {
                if (*v386 != v321)
                {
                  objc_enumerationMutation(a7);
                }

                objc_msgSend_useResource_usage_(v139, v318, *(*(&v385 + 1) + 8 * k), 1, v319);
              }

              v320 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v318, &v385, v406, 16);
            }

            while (v320);
          }

          v383 = 0u;
          v384 = 0u;
          v381 = 0u;
          v382 = 0u;
          v323 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v318, &v381, v405, 16);
          if (v323)
          {
            v326 = v323;
            v327 = *v382;
            do
            {
              for (m = 0; m != v326; ++m)
              {
                if (*v382 != v327)
                {
                  objc_enumerationMutation(a10);
                }

                objc_msgSend_useResource_usage_(v139, v324, *(*(&v381 + 1) + 8 * m), 1, v325);
              }

              v326 = objc_msgSend_countByEnumeratingWithState_objects_count_(a10, v324, &v381, v405, 16);
            }

            while (v326);
          }
        }

        sub_239E19D68(a1, v139, a19, 4, 0);
        sub_239E19D68(a1, v139, a19, 5, 0);
        sub_239E19D68(a1, v139, a19, 2, 0);
        sub_239E19D68(a1, v139, a19, 3, 0);
        sub_239E19D68(a1, v139, a19, 1, 0);
        sub_239E19F00(a1, v139, v361, a19, 0, 1);
        sub_239E19F00(a1, v139, v359, a19, 2, 1);
        sub_239E19F00(a1, v139, v360, a19, 4, 1);
        sub_239E19F00(a1, v139, v357, a19, 2, 1);
        sub_239E19F00(a1, v139, v359, a19, 2, 1);
        sub_239E19F00(a1, v139, v353, a19, 5, 1);
        sub_239E19F00(a1, v139, v352, a19, 3, 1);
        v263 = a16;
        v264 = a15;
      }

      else
      {
        sub_239E19D68(a1, v139, a19, 4, 0);
        sub_239E19D68(a1, v139, a19, 5, 0);
        sub_239E19D68(a1, v139, a19, 2, 0);
        sub_239E19D68(a1, v139, a19, 3, 0);
        sub_239E19D68(a1, v139, a19, 1, 0);
        sub_239E19F00(a1, v139, v361, a19, 0, 1);
        sub_239E19F00(a1, v139, v359, a19, 2, 1);
        sub_239E19F00(a1, v139, v360, a19, 4, 1);
        sub_239E19F00(a1, v139, v357, a19, 2, 1);
      }

      sub_239E19F00(a1, v139, v356, a19, 4, 1);
      sub_239E19F00(a1, v139, v358, a19, 2, 1);
      v329 = *v264;
      *v264 = *v263;
      *v263 = v329;
      sub_239E19E34(a1, v139, a19, 0, 1);
      ++v262;
      v98 = v265;
      v330 = v380;
      v265 = v380;
    }

    while (v262 < *(a1 + 40));
  }

  else
  {
    v330 = v379;
  }

  v331 = v330;
  objc_msgSend_updateFence_(v139, v158, a20, v159, v160);
  objc_msgSend_endEncoding(v139, v332, v333, v334, v335);
  objc_msgSend_commit(v345, v336, v337, v338, v339);

  objc_msgSend_waitUntilCompleted(v345, v340, v341, v342, v343);
  v344 = *MEMORY[0x277D85DE8];
}

void sub_239E1B87C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, int a12, uint64_t a13, uint64_t a14, void *a15, int a16)
{
  v109 = sub_239E19AB4(a1, @"initializeFragmentsKernel", 0, 9, a9, a12, 0, 0, a16);
  v22 = sub_239E19AB4(a1, @"preprocessPolygonsKernel", 1, 10, a9, a12, 0, 0, a16);
  v27 = objc_msgSend_commandBuffer(a3, v23, v24, v25, v26);
  *a15 = 0;
  v28 = *(a1 + 8);
  v29 = *(a1 + 96);
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = sub_239E1BBB0;
  v116[3] = &unk_278B3D940;
  v116[4] = a15;
  v107 = v27;
  v31 = sub_239E04ADC(v28, v29, v27, v116, v30);
  v108 = a4;
  objc_msgSend_waitForFence_(v31, v32, a4, v33, v34);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v35, a5, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v36, a6, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v37, a13, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v31, v38, a14, 0, 8);
  objc_msgSend_setComputePipelineState_(v31, v39, v109, v40, v41);
  v42 = *(a1 + 88);
  v114 = vdupq_n_s64(1uLL);
  *v115 = v114;
  *&v115[16] = 1;
  v113 = v42;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v43, v115, &v113, v44);
  if (objc_msgSend_count(a2, v45, v46, v47, v48))
  {
    v52 = 0;
    v110 = vdupq_n_s64(1uLL);
    do
    {
      v53 = objc_msgSend_objectAtIndexedSubscript_(a2, v49, v52, v50, v51);
      v112 = objc_msgSend_unsignedIntegerValue(v53, v54, v55, v56, v57);
      if (v112)
      {
        objc_msgSend_setBytes_length_atIndex_(v31, v58, &v112, 4, 0);
        v65 = objc_msgSend_objectAtIndexedSubscript_(a7, v62, v52, v63, v64);
        v69 = objc_msgSend_objectAtIndexedSubscript_(a8, v66, v52, v67, v68);
        v74 = objc_msgSend_unsignedIntegerValue(v69, v70, v71, v72, v73);
        objc_msgSend_setBuffer_offset_atIndex_(v31, v75, v65, v74, 3);
        v79 = objc_msgSend_objectAtIndexedSubscript_(a10, v76, v52, v77, v78);
        v83 = objc_msgSend_objectAtIndexedSubscript_(a11, v80, v52, v81, v82);
        v88 = objc_msgSend_unsignedIntegerValue(v83, v84, v85, v86, v87);
        objc_msgSend_setBuffer_offset_atIndex_(v31, v89, v79, v88, 4);
        v111 = v52;
        objc_msgSend_setBytes_length_atIndex_(v31, v90, &v111, 4, 9);
        objc_msgSend_setComputePipelineState_(v31, v91, v22, v92, v93);
        v94 = *(a1 + 88);
        *v115 = (v94 + v112 - 1) / v94;
        *&v115[8] = v110;
        v113 = v94;
        v114 = v110;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v95, v115, &v113, v96);
      }

      ++v52;
    }

    while (v52 < objc_msgSend_count(a2, v58, v59, v60, v61));
  }

  objc_msgSend_updateFence_(v31, v49, v108, v50, v51);
  objc_msgSend_endEncoding(v31, v97, v98, v99, v100);
  objc_msgSend_commit(v107, v101, v102, v103, v104);
}

void sub_239E1BBBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v114 = *MEMORY[0x277D85DE8];
  v112 = a2;
  v101 = sub_239E19AB4(a1, @"initializeFragmentsKernel", 0, 9, 0, 0, a11, 0, 0);
  v100 = sub_239E19AB4(a1, @"preprocessInstancesKernel", 1, 11, 0, 0, a11, 0, 0);
  v19 = *(a1 + 72);
  ComputeState = MPSLibrary::GetComputeState();
  v21 = *(a1 + 64);
  v26 = objc_msgSend_count(a12, v22, v23, v24, v25);
  if (v26 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v26;
  }

  v30 = objc_msgSend_newBufferWithLength_options_(v21, v27, 32 * v29, 288, v28);
  v35 = objc_msgSend_commandBuffer(a3, v31, v32, v33, v34);
  *a16 = 0;
  v36 = *(a1 + 8);
  v37 = *(a1 + 96);
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = sub_239E1C01C;
  v111[3] = &unk_278B3D940;
  v111[4] = a16;
  v99 = v35;
  v39 = sub_239E04ADC(v36, v37, v35, v111, v38);
  objc_msgSend_waitForFence_(v39, v40, a4, v41, v42);
  objc_msgSend_setComputePipelineState_(v39, v43, ComputeState, v44, v45);
  v110 = 0;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(a12, v46, &v106, v113, 16);
  if (v47)
  {
    v49 = v47;
    v50 = *v107;
    v102 = vdupq_n_s64(1uLL);
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v107 != v50)
        {
          objc_enumerationMutation(a12);
        }

        v52 = *(*(&v106 + 1) + 8 * i);
        objc_msgSend_setBytes_length_atIndex_(v39, v48, &v110, 4, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v39, v53, v30, 0, 1);
        v58 = objc_msgSend_boundingBoxBuffer(v52, v54, v55, v56, v57);
        objc_msgSend_setBuffer_offset_atIndex_(v39, v59, v58, 0, 2);
        *v105 = v102;
        *&v105[16] = 1;
        v103 = objc_msgSend_threadExecutionWidth(ComputeState, v60, v61, v62, v63);
        v104 = v102;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v39, v64, v105, &v103, v65);
        ++v110;
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(a12, v48, &v106, v113, 16);
    }

    while (v49);
  }

  objc_msgSend_setBytes_length_atIndex_(v39, v48, &v112, 8, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v66, a5, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v67, a6, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v68, a7, a8, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v69, a9, a10, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v70, a13, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v71, v30, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v72, a14, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v73, a15, 0, 8);
  objc_msgSend_setComputePipelineState_(v39, v74, v101, v75, v76);
  v77 = *(a1 + 88);
  v104 = vdupq_n_s64(1uLL);
  *v105 = v104;
  *&v105[16] = 1;
  v103 = v77;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v39, v78, v105, &v103, v79);
  if (v112)
  {
    objc_msgSend_setComputePipelineState_(v39, v80, v100, v81, v82);
    v83 = *(a1 + 88);
    *v105 = (v83 + v112 - 1) / v83;
    *&v105[8] = vdupq_n_s64(1uLL);
    v103 = v83;
    v104 = *&v105[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v39, v84, v105, &v103, v85);
  }

  objc_msgSend_updateFence_(v39, v80, a4, v81, v82);
  objc_msgSend_endEncoding(v39, v86, v87, v88, v89);
  objc_msgSend_commit(v99, v90, v91, v92, v93);

  v94 = *MEMORY[0x277D85DE8];
}

void sub_239E1C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, int a20)
{
  v75 = sub_239E19AB4(a1, @"encodePolygonBVHKernel", 0, 12, 0, 0, 0, 0, a20);
  v74 = sub_239E19AB4(a1, @"encodePolygonInnerNodeKernel", 0, 14, 0, 0, 0, 0, a20);
  v24 = sub_239E19AB4(a1, @"encodePolygonLeafNodeKernel", 0, 16, 0, 0, 0, 0, a20);
  v25 = sub_239E19AB4(a1, @"encodeNode0Kernel", 0, 17, 0, 0, 0, 0, a20);
  v30 = objc_msgSend_commandBuffer(a17, v26, v27, v28, v29);
  *a19 = 0;
  v31 = *(a1 + 8);
  v32 = *(a1 + 96);
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_239E1C39C;
  v80[3] = &unk_278B3D940;
  v80[4] = a19;
  v34 = sub_239E04ADC(v31, v32, v30, v80, v33);
  objc_msgSend_waitForFence_(v34, v35, a16, v36, v37);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v38, a4, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v39, a2, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v40, a3, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v41, a5, a6, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v42, a7, a8, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v43, a9, a10, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v44, a11, a12, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v45, a13, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v46, a14, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v47, a15, 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v34, v48, a18, 0, 10);
  v49 = *(a1 + 88);
  objc_msgSend_setComputePipelineState_(v34, v50, v25, v51, v52);
  v77 = vdupq_n_s64(1uLL);
  v78 = v77;
  v79 = 1;
  v76 = v49;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v34, v53, &v78, &v76, v54);
  sub_239E19F00(a1, v34, v75, a15, 6, *(a1 + 88));
  sub_239E19F00(a1, v34, v74, a15, 8, *(a1 + 88));
  sub_239E19F00(a1, v34, v24, a15, 9, 1);
  objc_msgSend_updateFence_(v34, v55, a16, v56, v57);
  objc_msgSend_endEncoding(v34, v58, v59, v60, v61);
  objc_msgSend_commit(v30, v62, v63, v64, v65);
  objc_msgSend_waitUntilCompleted(v30, v66, v67, v68, v69);
}

void sub_239E1C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  v69 = sub_239E19AB4(a1, @"encodeInstanceBVHKernel", 0, 13, 0, 0, 0, 0, 0);
  v68 = sub_239E19AB4(a1, @"encodeInstanceInnerNodeKernel", 0, 15, 0, 0, 0, 0, 0);
  v19 = sub_239E19AB4(a1, @"encodeNode0Kernel", 0, 17, 0, 0, 0, 0, 0);
  v24 = objc_msgSend_commandBuffer(a13, v20, v21, v22, v23);
  *a15 = 0;
  v25 = *(a1 + 8);
  v26 = *(a1 + 96);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_239E1C6AC;
  v74[3] = &unk_278B3D940;
  v74[4] = a15;
  v28 = sub_239E04ADC(v25, v26, v24, v74, v27);
  objc_msgSend_waitForFence_(v28, v29, a12, v30, v31);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v32, a4, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v33, a2, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v34, a3, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v35, a5, a6, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v36, a7, a8, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v37, 0, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v38, 0, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v39, a9, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v40, a10, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v41, a11, 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v42, a14, 0, 10);
  v43 = *(a1 + 88);
  objc_msgSend_setComputePipelineState_(v28, v44, v19, v45, v46);
  v71 = vdupq_n_s64(1uLL);
  v72 = v71;
  v73 = 1;
  v70 = v43;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v47, &v72, &v70, v48);
  sub_239E19F00(a1, v28, v69, a11, 6, *(a1 + 88));
  sub_239E19F00(a1, v28, v68, a11, 8, *(a1 + 88));
  objc_msgSend_updateFence_(v28, v49, a12, v50, v51);
  objc_msgSend_endEncoding(v28, v52, v53, v54, v55);
  objc_msgSend_commit(v24, v56, v57, v58, v59);
  objc_msgSend_waitUntilCompleted(v24, v60, v61, v62, v63);
}

void sub_239E1C6B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v250 = sub_239E19AB4(a1, @"maxKeyKernel", 0, 18, 0, 0, 0, 0, 0);
  v254 = sub_239E19AB4(a1, @"clearTableKernel", 0, 19, 0, 0, 0, 0, 0);
  v252 = sub_239E19AB4(a1, @"insertPageTable1Kernel", 0, 20, 0, 0, 0, 0, 0);
  v249 = sub_239E19AB4(a1, @"scanTableKernel", 1, 21, 0, 0, 0, 0, 0);
  v251 = sub_239E19AB4(a1, @"insertPageTable0Kernel", 0, 22, 0, 0, 0, 0, 0);
  v247 = sub_239E19AB4(a1, @"insertPagesKernel", 0, 23, 0, 0, 0, 0, 0);
  v22 = objc_msgSend_commandBuffer(a6, v18, v19, v20, v21);
  *a11 = 0;
  v23 = *(a1 + 8);
  v24 = *(a1 + 96);
  v265[0] = MEMORY[0x277D85DD0];
  v265[1] = 3221225472;
  v265[2] = sub_239E1D134;
  v265[3] = &unk_278B3D940;
  v265[4] = a11;
  v26 = sub_239E04ADC(v23, v24, v22, v265, v25);
  objc_msgSend_waitForFence_(v26, v27, a5, v28, v29);
  objc_msgSend_setBuffer_offset_atIndex_(v26, v30, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v26, v31, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v26, v32, a4, 0, 2);
  sub_239E19D68(a1, v26, a4, 10, 0);
  sub_239E19F00(a1, v26, v250, a4, 6, *(a1 + 88));
  objc_msgSend_updateFence_(v26, v33, a5, v34, v35);
  objc_msgSend_endEncoding(v26, v36, v37, v38, v39);
  objc_msgSend_commit(v22, v40, v41, v42, v43);
  v48 = objc_msgSend_length(a4, v44, v45, v46, v47);
  v248 = a6;
  v245 = a5;
  v49 = sub_239E1D148(a1, v48, a4, a6, a5);
  v50 = v49[640];
  v55 = objc_msgSend_length(a4, v51, v52, v53, v54);
  munmap(v49, v55);
  if (v50 <= 0xFFFFEFFF)
  {
    v60 = (v50 + 4096) >> 12;
  }

  else
  {
    v60 = 0xFFFFF;
  }

  v264 = v60;
  v61 = objc_msgSend_commandBuffer(a6, v56, v57, v58, v59);
  *a9 = sub_239E19178(a7[8], 4 * v60, v61);
  v62 = *(a1 + 8);
  v63 = *(a1 + 96);
  v263[0] = MEMORY[0x277D85DD0];
  v263[1] = 3221225472;
  v263[2] = sub_239E1D2F0;
  v263[3] = &unk_278B3D940;
  v263[4] = a11;
  v65 = sub_239E04ADC(v62, v63, v61, v263, v64);
  objc_msgSend_waitForFence_(v65, v66, a5, v67, v68);
  v72 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v69, 0, v70, v71);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v73, v72, *(*a9 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v65, v74, &v264, 4, 1);
  objc_msgSend_setComputePipelineState_(v65, v75, v254, v76, v77);
  v78 = *(a1 + 88);
  v261 = (v78 + v264 - 1) / v78;
  v253 = vdupq_n_s64(1uLL);
  v262 = v253;
  v259 = v78;
  v260 = v253;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v65, v79, &v261, &v259, v80);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v81, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v82, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v83, a4, 0, 2);
  v87 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v84, 0, v85, v86);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v88, v87, *(*a9 + 32), 3);
  sub_239E19F00(a1, v65, v252, a4, 6, *(a1 + 88));
  sub_239E19D68(a1, v65, a4, 11, 0);
  v92 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v89, 0, v90, v91);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v93, v92, *(*a9 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v65, v94, &v264, 4, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v65, v95, a4, 0, 2);
  v258 = 11;
  objc_msgSend_setBytes_length_atIndex_(v65, v96, &v258, 4, 3);
  objc_msgSend_setComputePipelineState_(v65, v97, v249, v98, v99);
  v100 = *(a1 + 88);
  v261 = (v100 + v264 - 1) / v100;
  v262 = v253;
  v259 = v100;
  v260 = v253;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v65, v101, &v261, &v259, v102);
  objc_msgSend_updateFence_(v65, v103, a5, v104, v105);
  objc_msgSend_endEncoding(v65, v106, v107, v108, v109);
  objc_msgSend_commit(v61, v110, v111, v112, v113);
  v118 = objc_msgSend_length(a4, v114, v115, v116, v117);
  v119 = sub_239E1D148(a1, v118, a4, a6, a5);
  v258 = v119[704];
  v120 = v258;
  v125 = objc_msgSend_length(a4, v121, v122, v123, v124);
  munmap(v119, v125);
  v130 = objc_msgSend_commandBuffer(v248, v126, v127, v128, v129);
  *a8 = sub_239E19178(a7[7], 4 * v120, v130);
  v131 = *(a1 + 8);
  v132 = *(a1 + 96);
  v257[0] = MEMORY[0x277D85DD0];
  v257[1] = 3221225472;
  v257[2] = sub_239E1D304;
  v257[3] = &unk_278B3D940;
  v257[4] = a11;
  v134 = sub_239E04ADC(v131, v132, v130, v257, v133);
  objc_msgSend_waitForFence_(v134, v135, a5, v136, v137);
  v141 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v138, 0, v139, v140);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v142, v141, *(*a8 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v134, v143, &v258, 4, 1);
  objc_msgSend_setComputePipelineState_(v134, v144, v254, v145, v146);
  v147 = *(a1 + 88);
  v261 = (v147 + v258 - 1) / v147;
  v262 = v253;
  v259 = v147;
  v260 = v253;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v134, v148, &v261, &v259, v149);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v150, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v151, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v152, a4, 0, 2);
  v156 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v153, 0, v154, v155);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v157, v156, *(*a9 + 32), 3);
  v161 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v158, 0, v159, v160);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v162, v161, *(*a8 + 32), 4);
  sub_239E19F00(a1, v134, v251, a4, 6, *(a1 + 88));
  sub_239E19D68(a1, v134, a4, 12, 0);
  v166 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v163, 0, v164, v165);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v167, v166, *(*a8 + 32), 0);
  objc_msgSend_setBytes_length_atIndex_(v134, v168, &v258, 4, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v134, v169, a4, 0, 2);
  v256 = 12;
  objc_msgSend_setBytes_length_atIndex_(v134, v170, &v256, 4, 3);
  objc_msgSend_setComputePipelineState_(v134, v171, v249, v172, v173);
  v174 = *(a1 + 88);
  v261 = (v174 + v258 - 1) / v174;
  v262 = v253;
  v259 = v174;
  v260 = v253;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v134, v175, &v261, &v259, v176);
  objc_msgSend_updateFence_(v134, v177, a5, v178, v179);
  objc_msgSend_endEncoding(v134, v180, v181, v182, v183);
  objc_msgSend_commit(v130, v184, v185, v186, v187);
  v192 = objc_msgSend_length(a4, v188, v189, v190, v191);
  v193 = sub_239E1D148(a1, v192, a4, v248, a5);
  v194 = v193[768];
  v199 = objc_msgSend_length(a4, v195, v196, v197, v198);
  munmap(v193, v199);
  v204 = objc_msgSend_commandBuffer(v248, v200, v201, v202, v203);
  *a10 = sub_239E19178(a7[9], 4 * v194, v204);
  v205 = *(a1 + 8);
  v206 = *(a1 + 96);
  v255[0] = MEMORY[0x277D85DD0];
  v255[1] = 3221225472;
  v255[2] = sub_239E1D318;
  v255[3] = &unk_278B3D940;
  v255[4] = a11;
  v208 = sub_239E04ADC(v205, v206, v204, v255, v207);
  objc_msgSend_waitForFence_(v208, v209, v245, v210, v211);
  objc_msgSend_setBuffer_offset_atIndex_(v208, v212, a2, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v208, v213, a3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v208, v214, a4, 0, 2);
  v218 = objc_msgSend_objectAtIndexedSubscript_(*(a7[8] + 24), v215, 0, v216, v217);
  objc_msgSend_setBuffer_offset_atIndex_(v208, v219, v218, *(*a9 + 32), 3);
  v223 = objc_msgSend_objectAtIndexedSubscript_(*(a7[7] + 24), v220, 0, v221, v222);
  objc_msgSend_setBuffer_offset_atIndex_(v208, v224, v223, *(*a8 + 32), 4);
  v228 = objc_msgSend_objectAtIndexedSubscript_(*(a7[9] + 24), v225, 0, v226, v227);
  objc_msgSend_setBuffer_offset_atIndex_(v208, v229, v228, *(*a10 + 32), 5);
  sub_239E19F00(a1, v208, v247, a4, 6, *(a1 + 88));
  objc_msgSend_updateFence_(v208, v230, v245, v231, v232);
  objc_msgSend_endEncoding(v208, v233, v234, v235, v236);
  objc_msgSend_commit(v204, v237, v238, v239, v240);
  objc_msgSend_waitUntilCompleted(v204, v241, v242, v243, v244);
}

double sub_239E1D134(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

void *sub_239E1D148(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a2;
  v12 = mmap(0, a2, 3, 4098, -1, 0);
  if (v12 == -1)
  {
    sub_239E24DDC();
  }

  v13 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(*(a1 + 64), v11, v12, v10, 256, 0);
  v18 = objc_msgSend_commandBuffer(a4, v14, v15, v16, v17);
  v23 = objc_msgSend_computeCommandEncoder(v18, v19, v20, v21, v22);
  objc_msgSend_waitForFence_(v23, v24, a5, v25, v26);
  v27 = *(a1 + 72);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v23, v29, ComputeState, v30, v31);
  objc_msgSend_setBuffer_offset_atIndex_(v23, v32, v13, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v23, v33, a3, 0, 1);
  v62 = a2 >> 2;
  objc_msgSend_setBytes_length_atIndex_(v23, v34, &v62, 4, 2);
  v39 = objc_msgSend_threadExecutionWidth(ComputeState, v35, v36, v37, v38);
  v60 = (v39 + v62 - 1) / v39;
  v61 = vdupq_n_s64(1uLL);
  v58 = v39;
  v59 = v61;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v40, &v60, &v58, v41);
  objc_msgSend_updateFence_(v23, v42, a5, v43, v44);
  objc_msgSend_endEncoding(v23, v45, v46, v47, v48);
  objc_msgSend_commit(v18, v49, v50, v51, v52);
  objc_msgSend_waitUntilCompleted(v18, v53, v54, v55, v56);

  return v12;
}

double sub_239E1D2F0(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

double sub_239E1D304(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

double sub_239E1D318(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = *v2 + a2;
  *v2 = result;
  return result;
}

void sub_239E1D330(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v365 = *MEMORY[0x277D85DE8];
  v310 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  v342 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14, v15, v16);
  if (*(a2 + 16) != *(a1 + 64))
  {
    sub_239E24E2C();
  }

  v340 = a2;
  v343 = *(a2 + 24);
  if ((*(a1 + 12) - 4) <= 0xFFFFFFFD)
  {
    sub_239E24E7C();
  }

  if (*(a1 + 52) != 2)
  {
    sub_239E24ECC();
  }

  if (*(a1 + 56))
  {
    sub_239E24F1C();
  }

  sub_239DFA24C(*(a1 + 64), v17, v18, v19, v20);
  if ((sub_239DFA24C(*(a1 + 64), v21, v22, v23, v24) & 1) == 0)
  {
    sub_239E24F6C();
  }

  v361 = 0u;
  v362 = 0u;
  v359 = 0u;
  v360 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v25, &v359, v364, 16);
  if (v30)
  {
    v31 = 0;
    v32 = *v360;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v360 != v32)
        {
          objc_enumerationMutation(a9);
        }

        v31 += objc_msgSend_unsignedIntegerValue(*(*(&v359 + 1) + 8 * i), v26, v27, v28, v29);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v26, &v359, v364, 16);
    }

    while (v30);
    v34 = v31;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = *(a1 + 12) == 3 && *(a1 + 60) == 0;
  v36 = 1.0;
  if (v35)
  {
    v36 = 2.0;
  }

  v37 = (v36 * v34);
  v38 = getpagesize();
  v41 = v38;
  v312 = 32 * v37;
  v42 = -v38;
  if (((v38 - 1 + 32 * v37) & -v38) != 0)
  {
    v43 = (v38 - 1 + 32 * v37) & -v38;
  }

  else
  {
    v43 = v38;
  }

  v44 = (a1 + 64);
  v45 = *(a1 + 32);
  v46 = v45 + 2 * v37 - 1;
  if (v45 > v46)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46 / v45;
  }

  v328 = v47;
  v337 = v38 - 1;
  v313 = v43;
  v314 = v37;
  LODWORD(v47) = (v38 - 1 + 4 * v37) & v42;
  if (v47)
  {
    v47 = v47;
  }

  else
  {
    v47 = v38;
  }

  v330 = v47;
  v336 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v39, v43, 288, v40);
  v358 = objc_msgSend_newBufferWithLength_options_(*v44, v48, v330, 288, v49);
  v311 = 32 * v328;
  v357 = objc_msgSend_newBufferWithLength_options_(*v44, v50, v330, 288, v51);
  v315 = (v337 + v311) & v42;
  v332 = objc_msgSend_newBufferWithLength_options_(*v44, v52, v315, 288, v53);
  v316 = (v337 + 4 * v328) & v42;
  v335 = objc_msgSend_newBufferWithLength_options_(*v44, v54, v316, 288, v55);
  v317 = (v41 + 3327) & v42;
  v339 = objc_msgSend_newBufferWithLength_options_(*v44, v56, v317, 288, v57);
  v60 = objc_msgSend_newBufferWithLength_options_(*v44, v58, 256, 288, v59);
  v63 = objc_msgSend_newBufferWithLength_options_(*v44, v61, 16, 288, v62);
  v66 = objc_msgSend_newBufferWithLength_options_(*v44, v64, 16, 288, v65);
  v341 = objc_msgSend_newFence(*v44, v67, v68, v69, v70);
  if (!a6)
  {
    a8 = 0;
  }

  v75 = objc_msgSend_date(MEMORY[0x277CBEAA8], v71, v72, v73, v74);
  v356 = 0.0;
  sub_239E1B87C(a1, a9, v343, v341, v60, v336, a3, a4, a5, a6, a7, a8, v63, v66, &v356, a10);
  objc_msgSend_timeIntervalSinceNow(v75, v76, v77, v78, v79);
  v81 = v80;
  v86 = objc_msgSend_date(MEMORY[0x277CBEAA8], v82, v83, v84, v85);
  v355 = 0.0;
  (*(*a1 + 32))(a1, v314, v313, v328, v315, v343, a3, a4, a5, a6, a7, a8, __PAIR64__(v316, v330), v336, &v358, &v357, v332, v335, v339, v341, v60, v63, v66, &v355, a10);
  objc_msgSend_timeIntervalSinceNow(v86, v87, v88, v89, v90);
  v92 = v91;

  v93 = sub_239E1D148(a1, v317, v339, v343, v341);
  v94 = v93[448];
  v327 = v93[512];
  v325 = v93[576];
  munmap(v93, v317);
  if (((v337 + 4 * v94) & v42) != 0)
  {
    v99 = (v337 + 4 * v94) & v42;
  }

  else
  {
    v99 = v41;
  }

  v100 = objc_msgSend_commandBuffer(v343, v95, v96, v97, v98);
  v329 = sub_239E19178(v340[5], (v41 + (v327 << 6) + 63) & v42, v100);
  v338 = sub_239E19178(v340[6], (v337 + 16 * v325) & v42, v100);
  v334 = sub_239E19178(v340[4], v99, v100);
  objc_msgSend_commit(v100, v101, v102, v103, v104);
  objc_msgSend_waitUntilCompleted(v100, v105, v106, v107, v108);
  v318 = objc_msgSend_date(MEMORY[0x277CBEAA8], v109, v110, v111, v112);
  v115 = objc_msgSend_newBufferWithLength_options_(*v44, v113, 48, 256, v114);
  v331 = objc_msgSend_newBufferWithLength_options_(*v44, v116, v316, 288, v117);
  v354 = 0.0;
  v322 = v358;
  v121 = objc_msgSend_objectAtIndexedSubscript_(*(v340[5] + 24), v118, 0, v119, v120);
  v122 = *(v329 + 32);
  v126 = objc_msgSend_objectAtIndexedSubscript_(*(v340[6] + 24), v123, 0, v124, v125);
  v127 = *(v338 + 32);
  v131 = objc_msgSend_objectAtIndexedSubscript_(*(v340[4] + 24), v128, 0, v129, v130);
  v132 = *(v334 + 32);
  v136 = objc_msgSend_objectAtIndexedSubscript_(*(v340[4] + 24), v133, 1, v134, v135);
  sub_239E1C028(a1, v336, v322, v332, v121, v122, v126, v127, v131, v132, v136, *(v334 + 32), v335, v331, v339, v341, v343, v115, &v354, a10);
  v141 = objc_msgSend_contents(v115, v137, v138, v139, v140);
  v320 = *(v141 + 16);
  v323 = *v141;
  v142 = *(v141 + 32);

  objc_msgSend_timeIntervalSinceNow(v318, v143, v144, v145, v146);
  v148 = v147;
  v153 = objc_msgSend_date(MEMORY[0x277CBEAA8], v149, v150, v151, v152);
  v352 = 0;
  v353 = 0;
  v350 = 0.0;
  v351 = 0;
  sub_239E1C6B8(a1, v335, v331, v339, v341, v343, v340, &v353, &v352, &v351, &v350);
  objc_msgSend_timeIntervalSinceNow(v153, v154, v155, v156, v157);
  v163 = v162;
  v164 = 0.0;
  if (*(a1 + 8) == 1)
  {
    v165 = objc_msgSend_date(MEMORY[0x277CBEAA8], v158, v159, v160, v161);
    v166 = sub_239E1D148(a1, v315, v332, v343, v341);
    v167 = *(a1 + 24);
    v348[0] = *(a1 + 8);
    v348[1] = v167;
    v348[2] = *(a1 + 40);
    v349 = *(a1 + 56);
    sub_239DFA254(a1, v348, v166, v342);
    munmap(v166, v315);
    objc_msgSend_timeIntervalSinceNow(v165, v168, v169, v170, v171);
    v164 = -v172;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v342, v158, @"GPU", @"BVH Builder", v161);
  v176 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v173, @"{ %f, %f, %f }, { %f, %f, %f }", v174, v175, *&v323, *(&v323 + 1), *(&v323 + 2), *&v320, *(&v320 + 1), *(&v320 + 2));
  objc_msgSend_setObject_forKeyedSubscript_(v342, v177, v176, @"Bounds", v178);
  if (v142)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v342, v179, @"Leaf", @"BVH Root Node Type", v180);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v342, v179, @"Internal", @"BVH Root Node Type", v180);
  }

  v185 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v181, v182, v183, v184);
  objc_msgSend_setObject_forKeyedSubscript_(v342, v186, v185, @"Temporary Memory", v187);
  v192 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v188, v189, v190, v191, vcvtd_n_f64_u64(v312, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v185, v193, v192, @"Fragments (mb)", v194);
  v199 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v195, v196, v197, v198, vcvtd_n_f64_u64(v311, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v185, v200, v199, @"Nodes (mb)", v201);
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v202, &v344, v363, 16);
  if (v207)
  {
    v208 = *v345;
    v209 = 0.0;
    do
    {
      for (j = 0; j != v207; ++j)
      {
        if (*v345 != v208)
        {
          objc_enumerationMutation(v185);
        }

        v211 = objc_msgSend_objectForKeyedSubscript_(v185, v203, *(*(&v344 + 1) + 8 * j), v205, v206);
        objc_msgSend_doubleValue(v211, v212, v213, v214, v215);
        v209 = v209 + v216;
      }

      v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v203, &v344, v363, 16);
    }

    while (v207);
  }

  else
  {
    v209 = 0.0;
  }

  v217 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v203, v204, v205, v206, v209);
  objc_msgSend_setObject_forKeyedSubscript_(v185, v218, v217, @"Total (mb)", v219);
  v224 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v220, v221, v222, v223);
  objc_msgSend_setObject_forKeyedSubscript_(v342, v225, v224, @"Timing", v226);
  v231 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v227, v228, v229, v230, -v92);
  objc_msgSend_setObject_forKeyedSubscript_(v224, v232, v231, @"BVH Build (s)", v233);
  v238 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v234, v235, v236, v237, -v81);
  objc_msgSend_setObject_forKeyedSubscript_(v224, v239, v238, @"Fragment Preprocessing (s)", v240);
  v245 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v241, v242, v243, v244, -v148);
  objc_msgSend_setObject_forKeyedSubscript_(v224, v246, v245, @"Encode (s)", v247);
  v252 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v248, v249, v250, v251, -v163);
  objc_msgSend_setObject_forKeyedSubscript_(v224, v253, v252, @"Sparse Table Build (s)", v254);
  v259 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v255, v256, v257, v258, v164);
  objc_msgSend_setObject_forKeyedSubscript_(v224, v260, v259, @"Compute Statistics (s)", v261);
  v262 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(v310, v263, v264, v265, v266);
  v272 = objc_msgSend_numberWithDouble_(v262, v268, v269, v270, v271, -v267);
  objc_msgSend_setObject_forKeyedSubscript_(v224, v273, v272, @"Total (s)", v274);
  v279 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v275, v276, v277, v278);
  objc_msgSend_setObject_forKeyedSubscript_(v342, v280, v279, @"Timing (GPU)", v281);
  v286 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v282, v283, v284, v285, v356 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v279, v287, v286, @"Fragment Preprocessing (s)", v288);
  v293 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v289, v290, v291, v292, v355 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v279, v294, v293, @"BVH Build (s)", v295);
  v300 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v296, v297, v298, v299, v354 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v279, v301, v300, @"Encode (s)", v302);
  v307 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v303, v304, v305, v306, v350 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v279, v308, v307, @"Sparse Table Build (s)", v309);

  operator new();
}

void sub_239E1DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v346 = *MEMORY[0x277D85DE8];
  v302 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  v328 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13, v14, v15);
  if (*(a2 + 16) != *(a1 + 64))
  {
    sub_239E24FBC();
  }

  v322 = a2;
  v329 = *(a2 + 24);
  if (*(a1 + 12) != 2)
  {
    sub_239E2500C();
  }

  if (*(a1 + 52) != 2)
  {
    sub_239E2505C();
  }

  if (*(a1 + 56))
  {
    sub_239E250AC();
  }

  sub_239DFA24C(*(a1 + 64), v16, v17, v18, v19);
  if ((sub_239DFA24C(*(a1 + 64), v20, v21, v22, v23) & 1) == 0)
  {
    sub_239E250FC();
  }

  v24 = *(a1 + 12) == 3 && *(a1 + 60) == 0;
  v25 = 1.0;
  if (v24)
  {
    v25 = 2.0;
  }

  v26 = (v25 * a8);
  v27 = getpagesize();
  v30 = 32 * v26;
  v31 = v27 - 1;
  v32 = -v27;
  if (((v27 - 1 + 32 * v26) & -v27) != 0)
  {
    v33 = (v27 - 1 + 32 * v26) & -v27;
  }

  else
  {
    v33 = v27;
  }

  v34 = *(a1 + 32);
  v35 = v34 + 2 * v26 - 1;
  if (v34 > v35)
  {
    v36 = 1;
  }

  else
  {
    v36 = v35 / v34;
  }

  v37 = 32 * v36;
  v38 = (v31 + 32 * v36) & v32;
  v307 = v26;
  if (((v31 + 4 * v26) & v32) != 0)
  {
    v39 = (v31 + 4 * v26) & v32;
  }

  else
  {
    v39 = v27;
  }

  v308 = v36;
  v309 = v33;
  v40 = (v31 + 4 * v36) & v32;
  v306 = v27;
  v41 = (v27 + 3327) & v32;
  v324 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v28, v33, 288, v29);
  v344 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v42, v39, 288, v43);
  v343 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v44, v39, 288, v45);
  v318 = v38;
  v321 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v46, v38, 288, v47);
  v312 = v40;
  v323 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v48, v40, 288, v49);
  v319 = v41;
  v325 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v50, v41, 288, v51);
  v54 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v52, 256, 288, v53);
  v57 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v55, 16, 288, v56);
  v64 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v58, 16, 288, v59);
  v303 = v37;
  v304 = v30;
  v305 = v31;
  if (a5 == 1)
  {
    v65 = 0;
  }

  else
  {
    if (a8 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = a8;
    }

    v65 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v60, v66 << 6, 32, v63);
  }

  v67 = objc_msgSend_newFence(*(a1 + 64), v60, v61, v62, v63);
  v72 = objc_msgSend_date(MEMORY[0x277CBEAA8], v68, v69, v70, v71);
  v342 = 0.0;
  v301 = v65;
  v300 = a5;
  v327 = v67;
  sub_239E1BBBC(a1, a8, v329, v67, v54, v324, a6, a7, a3, a4, v300, a9, v65, v57, v64, &v342);
  objc_msgSend_timeIntervalSinceNow(v72, v73, v74, v75, v76);
  v78 = v77;
  v83 = objc_msgSend_date(MEMORY[0x277CBEAA8], v79, v80, v81, v82);
  v341 = 0.0;
  (*(*a1 + 32))(a1, v307, v309, v308, v318, v329, 0, 0, 0, 0, 0, 0, __PAIR64__(v312, v39), v324, &v344, &v343, v321, v323, v325, v67, v54, v57, v64, &v341, 0, v301);

  objc_msgSend_timeIntervalSinceNow(v83, v84, v85, v86, v87);
  v89 = v88;
  v90 = sub_239E1D148(a1, v319, v325, v329, v67);
  v316 = v90[512];
  v314 = v90[576];
  munmap(v90, v319);
  v95 = objc_msgSend_commandBuffer(v329, v91, v92, v93, v94);
  v96 = sub_239E19178(v322[5], (v306 + (v316 << 6) + 63) & v32, v95);
  v97 = sub_239E19178(v322[6], (v305 + 8 * v314) & v32, v95);
  objc_msgSend_commit(v95, v98, v99, v100, v101);
  objc_msgSend_waitUntilCompleted(v95, v102, v103, v104, v105);
  v110 = objc_msgSend_date(MEMORY[0x277CBEAA8], v106, v107, v108, v109);
  v113 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v111, 48, 256, v112);
  v116 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v114, v312, 288, v115);
  v340 = 0.0;
  v117 = v344;
  v121 = objc_msgSend_objectAtIndexedSubscript_(*(v322[5] + 24), v118, 0, v119, v120);
  v122 = *(v96 + 32);
  v126 = objc_msgSend_objectAtIndexedSubscript_(*(v322[6] + 24), v123, 0, v124, v125);
  sub_239E1C3A8(a1, v324, v117, v321, v121, v122, v126, *(v97 + 32), v323, v116, v325, v327, v329, v113, &v340);
  v131 = objc_msgSend_contents(v113, v127, v128, v129, v130);
  *v320 = *v131;
  v317 = *(v131 + 16);
  v132 = *(v131 + 32);

  objc_msgSend_timeIntervalSinceNow(v110, v133, v134, v135, v136);
  v138 = v137;
  v143 = objc_msgSend_date(MEMORY[0x277CBEAA8], v139, v140, v141, v142);
  v338 = 0;
  v339 = 0;
  v336 = 0.0;
  v337 = 0;
  sub_239E1C6B8(a1, v323, v116, v325, v327, v329, v322, &v339, &v338, &v337, &v336);
  objc_msgSend_timeIntervalSinceNow(v143, v144, v145, v146, v147);
  v153 = v152;
  v154 = 0.0;
  if (*(a1 + 8) == 1)
  {
    v155 = objc_msgSend_date(MEMORY[0x277CBEAA8], v148, v149, v150, v151);
    v156 = sub_239E1D148(a1, v318, v321, v329, v327);
    v157 = *(a1 + 24);
    v334[0] = *(a1 + 8);
    v334[1] = v157;
    v334[2] = *(a1 + 40);
    v335 = *(a1 + 56);
    sub_239DFA254(a1, v334, v156, v328);
    munmap(v156, v318);
    objc_msgSend_timeIntervalSinceNow(v155, v158, v159, v160, v161);
    v154 = -v162;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v328, v148, @"GPU", @"BVH Builder", v151);
  v166 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v163, @"{ %f, %f, %f }, { %f, %f, %f }", v164, v165, *v320, *(v320 + 1), *&v320[1], *&v317, *(&v317 + 1), *(&v317 + 2));
  objc_msgSend_setObject_forKeyedSubscript_(v328, v167, v166, @"Bounds", v168);
  if (v132)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v328, v169, @"Leaf", @"BVH Root Node Type", v170);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v328, v169, @"Internal", @"BVH Root Node Type", v170);
  }

  v175 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v171, v172, v173, v174);
  objc_msgSend_setObject_forKeyedSubscript_(v328, v176, v175, @"Temporary Memory", v177);
  v182 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v178, v179, v180, v181, vcvtd_n_f64_u64(v304, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v175, v183, v182, @"Fragments (mb)", v184);
  v189 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v185, v186, v187, v188, vcvtd_n_f64_u64(v303, 0x14uLL));
  objc_msgSend_setObject_forKeyedSubscript_(v175, v190, v189, @"Nodes (mb)", v191);
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v192, &v330, v345, 16);
  if (v197)
  {
    v198 = *v331;
    v199 = 0.0;
    do
    {
      for (i = 0; i != v197; ++i)
      {
        if (*v331 != v198)
        {
          objc_enumerationMutation(v175);
        }

        v201 = objc_msgSend_objectForKeyedSubscript_(v175, v193, *(*(&v330 + 1) + 8 * i), v195, v196);
        objc_msgSend_doubleValue(v201, v202, v203, v204, v205);
        v199 = v199 + v206;
      }

      v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v193, &v330, v345, 16);
    }

    while (v197);
  }

  else
  {
    v199 = 0.0;
  }

  v207 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v193, v194, v195, v196, v199);
  objc_msgSend_setObject_forKeyedSubscript_(v175, v208, v207, @"Total (mb)", v209);
  v214 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v210, v211, v212, v213);
  objc_msgSend_setObject_forKeyedSubscript_(v328, v215, v214, @"Timing", v216);
  v221 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v217, v218, v219, v220, -v89);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v222, v221, @"BVH Build (s)", v223);
  v228 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v224, v225, v226, v227, -v78);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v229, v228, @"Fragment Preprocessing (s)", v230);
  v235 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v231, v232, v233, v234, -v138);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v236, v235, @"Encode (s)", v237);
  v242 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v238, v239, v240, v241, -v153);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v243, v242, @"Sparse Table Build (s)", v244);
  v249 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v245, v246, v247, v248, v154);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v250, v249, @"Compute Statistics (s)", v251);
  v252 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSinceNow(v302, v253, v254, v255, v256);
  v262 = objc_msgSend_numberWithDouble_(v252, v258, v259, v260, v261, -v257);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v263, v262, @"Total (s)", v264);
  v269 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v265, v266, v267, v268);
  objc_msgSend_setObject_forKeyedSubscript_(v328, v270, v269, @"Timing (GPU)", v271);
  v276 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v272, v273, v274, v275, v342 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v269, v277, v276, @"Fragment Preprocessing (s)", v278);
  v283 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v279, v280, v281, v282, v341 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v269, v284, v283, @"BVH Build (s)", v285);
  v290 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v286, v287, v288, v289, v340 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v269, v291, v290, @"Encode (s)", v292);
  v297 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v293, v294, v295, v296, v336 / 1000.0);
  objc_msgSend_setObject_forKeyedSubscript_(v269, v298, v297, @"Sparse Table Build (s)", v299);

  operator new();
}

void *sub_239E1EA18(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = *(a3 + 32);
  v6 = *(a3 + 48);
  result = sub_239E1959C(a1, a2, v5);
  *result = &unk_284D085F0;
  return result;
}

void sub_239E1EA78(uint64_t a1)
{
  sub_239E19690(a1);

  JUMPOUT(0x23EE7D780);
}

void sub_239E1EAB0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = objc_msgSend_length(a2, a2, a3, a4, a5);
  v11 = sub_239E1D148(a1, v10, a2, a4, a5);
  v16 = objc_msgSend_length(a3, v12, v13, v14, v15);
  *malloc_type_malloc(v16, 0x100004052888210uLL) = 0;
  printf("I%u (%f, %f)\n", 0, *v11, v11[4]);
  operator new[]();
}

uint64_t sub_239E1EC78(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, int a11, int *a12, uint64_t a13, int a14, __n128 *a15)
{
  v15 = result + 32 * a2;
  if ((a3 & 0x80000000) == 0)
  {
    v16 = result;
    if ((*(a4 + 8 * a3) & 0x80000000) != 0 && (*(a4 + 8 * a3) & 0x8000000000000000) != 0)
    {
      ++*(a8 + 2304);
      *(v15 + 28) = -2;
LABEL_8:
      *(v15 + 12) = *(a7 + 8 * a3) + 1;
      v20 = a10 + 32 * a3;
      a9 = *v20;
      *v15 = *v20;
      *(v15 + 8) = a9.n128_u32[2];
      v21 = *(v20 + 16);
      *(v15 + 16) = v21;
      *(v15 + 24) = DWORD2(v21);
      goto LABEL_9;
    }

    if (a11 == 30)
    {
      ++*(a8 + 2304);
      *(v15 + 28) = vsub_s32(*(a7 + 8 * a3), vdup_lane_s32(*(a7 + 8 * a3), 1)).u32[0];
      goto LABEL_8;
    }

    v22 = (a10 + 32 * a3);
    v23 = *v22;
    *v15 = *v22;
    *(v15 + 8) = DWORD2(v23);
    a9 = v22[1];
    *(v15 + 16) = a9.n128_u64[0];
    *(v15 + 24) = a9.n128_u32[2];
    v24 = vsub_s32(vdup_lane_s32(*(a7 + 8 * a3), 1), *(a7 + 8 * a3)).u32[0];
    if (v24 <= 3)
    {
      ++*(a8 + 2304);
      *(v15 + 28) = -v24;
      *(v15 + 12) = *(a7 + 8 * a3) + 1;
      a9.n128_u64[0] = *v15;
      a9.n128_u32[2] = *(v15 + 8);
      goto LABEL_9;
    }

    ++*(a8 + 2048);
    *(v15 + 28) = 2;
    v25 = *a12;
    *(v15 + 12) = *a12;
    *a12 = v25 + 2;
    sub_239E1EC78(result, *(v15 + 12));
    result = sub_239E1EC78(v16, (*(v15 + 12) + 1));
    v26 = *(v15 + 12);
    v27 = *(v16 + 32 * v26 + 28);
    if (v27 == -1)
    {
      v28 = (v26 + 1);
      if ((*(v16 + 32 * v28 + 28) & 0x80000000) != 0)
      {
LABEL_17:
        v29 = dword_27DF88888++;
        result = printf("3T%u\n", v29);
        v26 = *(v15 + 12);
        goto LABEL_18;
      }
    }

    else
    {
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v28 = (v26 + 1);
    }

    if (*(v16 + 32 * v28 + 28) == -1)
    {
      goto LABEL_17;
    }

LABEL_18:
    *(a13 + 4 * v26) = 2 * a14;
    *(a13 + 4 * (*(v15 + 12) + 1)) = (2 * a14) | 1;
    a9.n128_u64[0] = *v15;
    a9.n128_u32[2] = *(v15 + 8);
    goto LABEL_9;
  }

  ++*(a8 + 2304);
  *(v15 + 28) = -1;
  *(v15 + 12) = a3 & 0x7FFFFFFF;
  v17 = (a5 + 32 * *(a6 + 4 * (a3 & 0x7FFFFFFF)));
  v18 = *v17;
  *(v15 + 8) = *(v17 + 2);
  *v15 = v18;
  v19 = v17[2];
  *(v15 + 24) = *(v17 + 6);
  *(v15 + 16) = v19;
  a9.n128_u64[0] = *v15;
  a9.n128_u32[2] = *(v15 + 8);
LABEL_9:
  *a15 = a9;
  return result;
}

uint64_t sub_239E1EFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, _DWORD *a10)
{
  a9.n128_u64[0] = *(a2 + 8 * (a5 - 1));
  v13 = 1;
  *a10 = 1;
  result = sub_239E1EC78(a1, 0, a9.n128_u32[0], a2, a3, a4, a6, a7, a9, a8, 0, &v13, a10, 1, &v12);
  *(a7 + 1536) = v13;
  return result;
}

void sub_239E1F030(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25)
{
  v201 = a4;
  v26 = a2;
  v211 = a4;
  v212[0] = a2;
  v28 = objc_msgSend_count(a7, a2, a3, a4, a5) > 1;
  v200 = sub_239E19AB4(a1, @"generateMortonCodes", 1, 0, a9, a12, 0, v28, a25);
  v199 = sub_239E19AB4(a1, @"generateDistances", 1, 0, a9, a12, 0, v28, a25);
  v29 = sub_239E19AB4(a1, @"generateHierarchy1", 1, 0, a9, a12, 0, v28, a25);
  v30 = sub_239E19AB4(a1, @"generateHierarchy2", 1, 0, a9, a12, 0, v28, a25);
  v198 = sub_239E19AB4(a1, @"generateNodesInit", 1, 0, a9, a12, 0, v28, a25);
  v31 = sub_239E19AB4(a1, @"generateNodesStep", 1, 0, a9, a12, 0, v28, a25);
  *a24 = 0;
  v193 = a6;
  v36 = objc_msgSend_commandBuffer(a6, v32, v33, v34, v35);
  v37 = 4 * v26;
  v207 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v38, v37, 32, v39);
  v192 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v40, v37, 32, v41);
  v197 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v42, v37, 32, v43);
  v196 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v44, v37, 32, v45);
  v206 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v46, 8 * v26, 32, v47);
  v205 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v48, 8 * v26, 32, v49);
  v203 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v50, 32 * v26, 32, v51);
  v52 = 4 * v201;
  v202 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v53, v52, 32, v54);
  v195 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v55, v52, 32, v56);
  v59 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v57, v37, 32, v58);
  v62 = objc_msgSend_newBufferWithLength_options_(*(a1 + 64), v60, v37, 32, v61);
  v67 = objc_msgSend_computeCommandEncoder(v36, v63, v64, v65, v66);
  objc_msgSend_waitForFence_(v67, v68, a20, v69, v70);
  sub_239E19D68(a1, v67, a19, 6, 0);
  sub_239E19D68(a1, v67, a19, 8, 0);
  sub_239E19D68(a1, v67, a19, 9, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v71, v207, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v72, a14, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v73, a21, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v74, a22, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v75, a23, 0, 4);
  objc_msgSend_setBytes_length_atIndex_(v67, v76, v212, 4, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v67, v77, *a16, 0, 14);
  objc_msgSend_setComputePipelineState_(v67, v78, v200, v79, v80);
  v89 = objc_msgSend_maxTotalThreadsPerThreadgroup(v200, v81, v82, v83, v84);
  v90 = *(a1 + 64);
  if (v90)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v90, v85, v86, v87, v88);
    v91 = *v210;
  }

  else
  {
    v91 = 0;
  }

  if (v91 >= v89)
  {
    v91 = v89;
  }

  *v210 = (v91 + v212[0] - 1) / v91;
  *&v210[8] = vdupq_n_s64(1uLL);
  v208 = v91;
  v209 = *&v210[8];
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v67, v85, v210, &v208, v88);
  objc_msgSend_endEncoding(v67, v92, v93, v94, v95);
  v96 = objc_alloc(MEMORY[0x277CD7270]);
  v98 = objc_msgSend_initWithDevice_keyPairDataType_valuePairDataType_(v96, v97, *(a1 + 64), 32, 32);
  objc_msgSend_encodeToCommandBuffer_sourceKeyBuffer_sourceKeyOffset_sourceValueBuffer_sourceValueOffset_destinationKeyBuffer_destinationKeyOffset_destinationValueBuffer_destinationValueOffset_numEntries_(v98, v99, v36, v207, 0, *a16, 0, v192, 0, *a15, 0, v212[0]);
  objc_msgSend_commit(v36, v100, v101, v102, v103);
  v194 = objc_msgSend_commandBuffer(v193, v104, v105, v106, v107);
  v112 = objc_msgSend_computeCommandEncoder(v194, v108, v109, v110, v111);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v113, v192, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v114, v197, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v115, v196, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v116, v205, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v117, a21, 0, 5);
  v122 = objc_msgSend_threadExecutionWidth(v199, v118, v119, v120, v121);
  sub_239E19F00(a1, v112, v199, a21, 0, v122);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v123, v206, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v124, v205, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v125, v203, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v126, a21, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v127, v202, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v128, a14, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v129, a19, 0, 9);
  objc_msgSend_setBytes_length_atIndex_(v112, v130, &v211, 4, 10);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v131, *a15, 0, 14);
  sub_239E19D68(a1, v112, a19, 1, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v132, v59, 0, 13);
  v137 = objc_msgSend_threadExecutionWidth(v29, v133, v134, v135, v136);
  sub_239E19F00(a1, v112, v29, a21, 0, v137);
  sub_239E19E34(a1, v112, a19, 0, 1);
  v138 = 64;
  do
  {
    v139 = v62;
    v62 = v59;
    sub_239E19D68(a1, v112, a19, 1, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v112, v140, v59, 0, 12);
    objc_msgSend_setBuffer_offset_atIndex_(v112, v141, v139, 0, 13);
    v146 = objc_msgSend_threadExecutionWidth(v29, v142, v143, v144, v145);
    sub_239E19F00(a1, v112, v30, a19, 0, v146);
    sub_239E19E34(a1, v112, a19, 0, 1);
    v59 = v139;
    --v138;
  }

  while (v138);
  sub_239E19D68(a1, v112, a19, 1, 0);
  sub_239E19D68(a1, v112, a19, 6, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v147, v206, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v148, v205, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v149, v203, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v150, a21, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v151, v202, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v152, a14, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v153, a19, 0, 9);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v154, v139, 0, 13);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v155, *a15, 0, 14);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v156, a18, 0, 15);
  objc_msgSend_setBuffer_offset_atIndex_(v112, v157, a17, 0, 16);
  v210[0] = 0;
  objc_msgSend_setBytes_length_atIndex_(v112, v158, v210, 1, 17);
  objc_msgSend_setComputePipelineState_(v112, v159, v198, v160, v161);
  v204 = vdupq_n_s64(1uLL);
  *v210 = v204;
  *&v210[16] = 1;
  v208 = objc_msgSend_threadExecutionWidth(v198, v162, v163, v164, v165);
  v209 = v204;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v112, v166, v210, &v208, v167);
  sub_239E19E34(a1, v112, a19, 0, 1);
  if (*(a1 + 40) < 2u)
  {
    v172 = v62;
  }

  else
  {
    v171 = 1;
    do
    {
      v172 = v139;
      sub_239E19D68(a1, v112, a19, 1, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v112, v173, v139, 0, 12);
      objc_msgSend_setBuffer_offset_atIndex_(v112, v174, v62, 0, 13);
      if (v171 == *(a1 + 40) - 1)
      {
        v210[0] = 1;
        objc_msgSend_setBytes_length_atIndex_(v112, v175, v210, 1, 17);
      }

      v179 = objc_msgSend_threadExecutionWidth(v31, v175, v176, v177, v178);
      sub_239E19F00(a1, v112, v31, a19, 0, v179);
      sub_239E19E34(a1, v112, a19, 0, 1);
      ++v171;
      v139 = v62;
      v62 = v172;
    }

    while (v171 < *(a1 + 40));
  }

  objc_msgSend_updateFence_(v112, v168, a20, v169, v170);
  objc_msgSend_endEncoding(v112, v180, v181, v182, v183);
  objc_msgSend_commit(v194, v184, v185, v186, v187);
  objc_msgSend_waitUntilCompleted(v194, v188, v189, v190, v191);
}

uint64_t sub_239E1FA4C(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v11[0] = a2[2];
  *(v11 + 12) = *(a2 + 44);
  v5 = sub_239E1FAF4(a1, &v9);
  if (v5)
  {
    return v5[10];
  }

  v6 = a1[3];
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11[0] = a2[2];
  *(v11 + 12) = *(a2 + 44);
  v12 = &v9;
  sub_239E1FC28(a1, &v9)[10] = v6;
  return v6;
}

void *sub_239E1FAF4(void *a1, char *__s2)
{
  v3 = 0;
  v4 = 1193066;
  do
  {
    v4 = (1540483477 * ((1540483477 * *&__s2[v3]) ^ ((1540483477 * *&__s2[v3]) >> 24))) ^ (1540483477 * v4);
    v3 += 4;
  }

  while (v3 != 60);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
    if (*&v5 <= v6)
    {
      v9 = v6 % v5.i32[0];
    }
  }

  else
  {
    v9 = (v5.i32[0] - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (!memcmp(v11 + 2, __s2, 0x3CuLL))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_239E1FC28(void *a1, char *__s2)
{
  v3 = 0;
  v4 = 1193066;
  do
  {
    v4 = (1540483477 * ((1540483477 * *&__s2[v3]) ^ ((1540483477 * *&__s2[v3]) >> 24))) ^ (1540483477 * v4);
    v3 += 4;
  }

  while (v3 != 60);
  v5 = 1540483477 * (v4 ^ (v4 >> 13));
  v6 = v5 ^ (v5 >> 15);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ (v5 >> 15);
    if (*&v7 <= v6)
    {
      v10 = v6 % v7.i32[0];
    }
  }

  else
  {
    v10 = (v7.i32[0] - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (memcmp(v12 + 2, __s2, 0x3CuLL))
  {
    goto LABEL_19;
  }

  return v12;
}

uint64_t sub_239E1FECC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E1FF1C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E1FF6C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E1FFBC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2000C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2005C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E200AC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E200FC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2014C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2019C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E201EC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2023C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2028C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E202DC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2032C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2037C()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E203CC()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2041C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20458()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20494()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E204D0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2050C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20548()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20598()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E205D4()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20610()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2064C()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20698()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E206E4()
{
  if (__cxa_guard_acquire(&qword_27DF884E8))
  {
    __cxa_atexit(MEMORY[0x277D82690], &unk_27DF884A8, &dword_239DE2000);

    __cxa_guard_release(&qword_27DF884E8);
  }
}

uint64_t sub_239E2074C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2079C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E207EC()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20838()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20884()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E208D4()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20920()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2096C()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E209B8()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20A04()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20A50()
{
  result = sub_239DF192C();
  if (result)
  {
    sub_239DF18F0();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20A9C()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20AE8()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E20B34()
{
  if (__cxa_guard_acquire(&qword_27DF88718))
  {
    __cxa_atexit(MEMORY[0x277D82690], &unk_27DF886D8, &dword_239DE2000);

    __cxa_guard_release(&qword_27DF88718);
  }
}

uint64_t sub_239E20B9C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20BEC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20C3C()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20C94()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20CE4()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20D3C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20D8C()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20DE4()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20E34()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20E84()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20ED4()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20F24()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20F7C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E20FCC()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21024()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21074()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E210CC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2111C()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2116C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E211BC()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2120C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2125C()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E212AC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E212FC()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2134C()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2139C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E213EC()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2143C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2148C()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E214DC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2152C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2157C()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E215D4()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21624()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2167C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E216CC()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2171C()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21774()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E217C4()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2181C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2186C()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E218BC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2190C()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2195C()
{
  result = sub_239DE7E3C();
  if (result)
  {
    v2 = *v0;
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E219AC()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E219FC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21A4C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21A9C()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21AF4()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21B44()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21B9C()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21BF4()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21C44()
{
  result = sub_239DF18A8();
  if (result)
  {
    sub_239DF18FC(result, v1, v2, v3, v4);
    sub_239DF18E4();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21C9C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21CEC()
{
  result = sub_239DF18C8();
  if (result)
  {
    sub_239DF1914(result, v1, v2, v3, v4);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21D3C()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21D88()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21DD8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21E28()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21E78()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21EC8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E21F18()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

void sub_239E21F70()
{
  if (__cxa_guard_acquire(&qword_27DF88768))
  {
    __cxa_atexit(MEMORY[0x277D82690], &unk_27DF88728, &dword_239DE2000);

    __cxa_guard_release(&qword_27DF88768);
  }
}

uint64_t sub_239E21FD8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22028()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22078()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E220C8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22118(void *a1, uint64_t a2)
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    objc_msgSend_channelCount_(a1, v5, a2, v6, v7);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2217C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E221CC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2221C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2226C()
{
  result = sub_239DF18C8();
  if (result)
  {
    v7 = *v1;
    objc_msgSend_length(*v0, v3, v4, v5, v6);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E222C4()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(*v0, v2, v3, v4, v5);
    sub_239DF5F2C();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22318()
{
  result = sub_239DE7E3C();
  if (result)
  {
    v2 = *v0;
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2236C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E223BC()
{
  result = sub_239DF18C8();
  if (result)
  {
    v7 = *v1;
    objc_msgSend_length(*v0, v3, v4, v5, v6);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22414()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(*v1, v3, v4, v5, v6);
    v7 = 8 * *v0;
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22474()
{
  result = sub_239DE7E3C();
  if (result)
  {
    v2 = *v0;
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E224C8()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(*v0, v2, v3, v4, v5);
    sub_239DF5F2C();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2251C()
{
  result = sub_239DF18C8();
  if (result)
  {
    v7 = *v1;
    objc_msgSend_length(*v0, v3, v4, v5, v6);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22574()
{
  result = sub_239DE7E3C();
  if (result)
  {
    v2 = *v0;
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E225C8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22618()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22654()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22690()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E226CC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22708()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22744()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22780()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E227BC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E227F8()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22844()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22880()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E228BC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E228F8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22948()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22984()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E229C0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E229FC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22A38()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22A84()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22AD0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22B20()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22B70()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22BC0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22C10()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22C60()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22CB0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22D00()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22D50()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22DA0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22DF0()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22E44()
{
  result = sub_239DFA214();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22EA0()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22EEC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22F3C()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22F90()
{
  result = sub_239DFA214();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E22FEC()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23038()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23088()
{
  result = sub_239DFA1F8();
  if (result)
  {
    objc_msgSend_device(v0, v2, v3, v4, v5);
    v6 = sub_239DFA240();
    objc_msgSend_device(v6, v7, v8, v9, v10);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E230F0()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2313C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2318C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E231DC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2322C()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23280()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E232CC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2331C()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23370()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E233BC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2340C()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23460()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E234B0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23500()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_device(v1, v3, v4, v5, v6);
    objc_msgSend_device(v0, v7, v8, v9, v10);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23560()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E235B0()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23600()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23650()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E236A0()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E236F4()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23740()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23790()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E237E4()
{
  result = sub_239DFA214();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23840()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2388C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E238DC()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23930()
{
  result = sub_239DFA214();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    sub_239DFA234();
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E2398C()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E239D8()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23A28()
{
  result = sub_239DFA1F8();
  if (result)
  {
    objc_msgSend_device(v0, v2, v3, v4, v5);
    v6 = sub_239DFA240();
    objc_msgSend_device(v6, v7, v8, v9, v10);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23A90()
{
  result = sub_239DE7E3C();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23ADC()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23B2C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23B7C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23BCC()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23C20()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23C6C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23CBC()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23D10()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23D5C()
{
  result = MTLReportFailureTypeEnabled();
  if (result)
  {

    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23DAC()
{
  result = sub_239DF18C8();
  if (result)
  {
    objc_msgSend_length(v0, v2, v3, v4, v5);
    return MTLReportFailure();
  }

  return result;
}

uint64_t sub_239E23E00()
{
  result = sub_239DFA1F8();
  if (result)
  {
    return MTLReportFailure();
  }

  return result;
}