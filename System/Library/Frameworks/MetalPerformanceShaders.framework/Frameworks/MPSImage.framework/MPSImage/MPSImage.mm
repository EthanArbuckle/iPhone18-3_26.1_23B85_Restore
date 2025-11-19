uint64_t sub_23993B8D0(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v9 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v9, 53, 0, v5);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t sub_23993B970(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a1;
    v26 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v26)
    {
      v27 = a2;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      a2 = v27;
      v26 = v29;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v26, a4, a5, a6);
    a2 = v7;
    a6 = v24;
    a5 = v23;
    a4 = v22;
    a3 = v21;
    a1 = v25;
    v8 = *(v25 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v30);
    if (v30 && v31 && 3 * v30 < 2 * *(v14 + 40) && 3 * v31 < (2 * *(v14 + 48)))
    {
      result = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v30);
      goto LABEL_11;
    }

    a1 = v11;
  }

LABEL_10:
  result = (*(a1 + 176))(*(a1 + 192));
LABEL_11:
  if (v7)
  {
    return objc_msgSend_popDebugGroup(v7, v16, v17, v18, v19, v20);
  }

  return result;
}

void sub_23993BB2C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6)
  {
    objc_msgSend_popDebugGroup(v6, a2, a3, a4, a5, a6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993BB50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a1;
    v26 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v26)
    {
      v27 = a2;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      a2 = v27;
      v26 = v29;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v26, a4, a5, a6);
    a2 = v7;
    a6 = v24;
    a5 = v23;
    a4 = v22;
    a3 = v21;
    a1 = v25;
    v8 = *(v25 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v30);
    if (v30 && v31 && 3 * v30 < 2 * *(v14 + 40) && 3 * v31 < (2 * *(v14 + 48)))
    {
      result = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v30);
      goto LABEL_11;
    }

    a1 = v11;
  }

LABEL_10:
  result = (*(a1 + 176))(*(a1 + 192));
LABEL_11:
  if (v7)
  {
    return objc_msgSend_popDebugGroup(v7, v16, v17, v18, v19, v20);
  }

  return result;
}

void sub_23993BD0C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6)
  {
    objc_msgSend_popDebugGroup(v6, a2, a3, a4, a5, a6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993BD30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a1;
    v28 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v28)
    {
      v29 = a2;
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      a2 = v29;
      v28 = v31;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v28, a4, a5, a6);
    a2 = v7;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    a3 = v23;
    a1 = v27;
    v8 = *(v27 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v32);
    if (v32 && v33 && 3 * v32 < 2 * *(v14 + 40) && 3 * v33 < (2 * *(v14 + 48)))
    {
      v15 = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v32);
      goto LABEL_11;
    }

    a1 = v11;
  }

LABEL_10:
  v15 = (*(a1 + 176))(*(a1 + 192));
LABEL_11:
  v21 = v15;
  if (v7)
  {
    objc_msgSend_popDebugGroup(v7, v16, v17, v18, v19, v20);
  }

  return v21;
}

void sub_23993BEF4(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6)
  {
    objc_msgSend_popDebugGroup(v6, a2, a3, a4, a5, a6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993BF18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a1;
    v28 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v28)
    {
      v29 = a2;
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      a2 = v29;
      v28 = v31;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v28, a4, a5, a6);
    a2 = v7;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    a3 = v23;
    a1 = v27;
    v8 = *(v27 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v32);
    if (v32 && v33 && 3 * v32 < 2 * *(v14 + 40) && 3 * v33 < (2 * *(v14 + 48)))
    {
      v15 = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v32);
      goto LABEL_11;
    }

    a1 = v11;
  }

LABEL_10:
  v15 = (*(a1 + 176))(*(a1 + 192));
LABEL_11:
  v21 = v15;
  if (v7)
  {
    objc_msgSend_popDebugGroup(v7, v16, v17, v18, v19, v20);
  }

  return v21;
}

void sub_23993C0DC(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6)
  {
    objc_msgSend_popDebugGroup(v6, a2, a3, a4, a5, a6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993C100(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a1;
    v28 = *(a1 + *MEMORY[0x277CD7360]);
    if (!v28)
    {
      v29 = a2;
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      a2 = v29;
      v28 = v31;
    }

    v7 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v28, a4, a5, a6);
    a2 = v7;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    a3 = v23;
    a1 = v27;
    v8 = *(v27 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 200);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if ((*(a1 + *v6) & 4) == 0)
  {
    v9 = a2;
    v10 = a3;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v11 = a1;
    v12 = a4;
    v13 = a5;
    v14 = a6;
    v8(&v32);
    if (v32 && v33 && 3 * v32 < 2 * *(v14 + 40) && 3 * v33 < (2 * *(v14 + 48)))
    {
      v15 = MPSSubTileEncode(v11, v9, v10, v12, v13, v14, &v32);
      goto LABEL_11;
    }

    a1 = v11;
  }

LABEL_10:
  v15 = (*(a1 + 176))(*(a1 + 192));
LABEL_11:
  v21 = v15;
  if (v7)
  {
    objc_msgSend_popDebugGroup(v7, v16, v17, v18, v19, v20);
  }

  return v21;
}

void sub_23993C2B4(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6)
  {
    objc_msgSend_popDebugGroup(v6, a2, a3, a4, a5, a6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23993C2D8(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, void **a6)
{
  v419 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 208);
  v380 = *(a1 + *MEMORY[0x277CD7350]);
  v389 = *(a1 + *MEMORY[0x277CD7370]);
  v372 = *(a1 + 160);
  if (v9 > 0.14)
  {
    v12 = MEMORY[0x277CD7378];
    v13 = *(a1 + *MEMORY[0x277CD7378]);
    if (v9 < 1.0)
    {
      v14 = *(a1 + 216);
      v415 = *(a6 + 4);
      *&v416 = a6[10];
      objc_msgSend_setOffset_(v14, a2, &v415, a4, a5, a6);
      v15 = *(a6 + 2);
      v415 = *(a6 + 1);
      v416 = v15;
      v417 = *(a6 + 3);
      objc_msgSend_setClipRect_(v14, v16, &v415, v17, v18, v19);
      objc_msgSend_setOptions_(v14, v20, v13, v21, v22, v23);
      objc_msgSend_setEdgeMode_(v14, v24, v372, v25, v26, v27);
      if ((*(v14 + *v12) & 8) != 0)
      {
        v357 = *(v14 + *MEMORY[0x277CD7360]);
        if (!v357)
        {
          v358 = objc_opt_class();
          v357 = NSStringFromClass(v358);
        }

        objc_msgSend_pushDebugGroup_(a2, v28, v357, v29, v30, v31);
        v32 = a2;
        v33 = *(v14 + 200);
        if (!v33)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v32 = 0;
        v33 = *(v14 + 200);
        if (!v33)
        {
          goto LABEL_146;
        }
      }

      if ((*(v14 + *v12) & 4) == 0)
      {
        v415 = 0uLL;
        *&v416 = 0;
        v33(&v415, v14, a4, a5, a6);
        if (v415)
        {
          if (*(&v415 + 1) && 3 * v415 < (2 * a6[5]) && 3 * *(&v415 + 1) < (2 * a6[6]))
          {
            v34 = MPSSubTileEncode(v14, a2, a3, a4, a5, a6, &v415);
            goto LABEL_147;
          }
        }
      }

LABEL_146:
      v34 = (*(v14 + 176))(*(v14 + 192), a2, a3, a4, a5, a6);
LABEL_147:
      v40 = v34;
      if (v32)
      {
        objc_msgSend_popDebugGroup(v32, v35, v36, v37, v38, v39);
      }

      goto LABEL_149;
    }

    v369 = *(a1 + 256);
    v41 = *(a1 + 276);
    v373 = *(a1 + 264);
    MEMORY[0x23EE7BAC0](v412, a3, a5);
    v362 = a3;
    v364 = a5;
    v375 = a2;
    v47 = objc_msgSend_width(a4, v42, v43, v44, v45, v46);
    v53 = objc_msgSend_height(a4, v48, v49, v50, v51, v52);
    v365 = a4;
    v366 = a1 + 224;
    if (!v369)
    {
      goto LABEL_50;
    }

    v70 = 0;
    v71 = 0;
    v72.i64[1] = 0;
    v72.f32[0] = v47;
    v72.f32[1] = v53;
    v73 = xmmword_239988FE0;
    v74 = &v414;
    v75 = (a1 + 224);
    v76 = v369;
    while (1)
    {
      v85 = *v75++;
      v84 = v85;
      if (v85 > 0x19)
      {
        v86 = 0;
        if (v84 >= 24)
        {
LABEL_16:
          if (v84 == 24)
          {
            v77 = v41;
          }

          else
          {
            v77 = 1.0 / v41;
          }

          LODWORD(v78) = 0;
          *(&v78 + 1) = v77;
          v79 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v77), v72.f32[0]), v78, *v72.f32, 1), xmmword_239988FE0, v72, 2);
          v80 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v77), v73.f32[0]), v78, *v73.f32, 1), xmmword_239988FE0, v73, 2), 0);
          v80.i32[3] = v64;
          v79.i32[3] = v65;
          v81 = vaddq_f32(v79, v80);
          v80.i32[3] = 0;
          v73 = vrndmq_f32(v80);
          v81.i32[3] = 0;
          v72 = vsubq_f32(vrndpq_f32(v81), v73);
          v82 = 2 * v71;
          *(v74 - 1) = v73;
          *v74 = v72;
          v65 = v79.i32[3];
          goto LABEL_20;
        }
      }

      else
      {
        v86 = qword_239989A50[v84];
        if (v84 >= 24)
        {
          goto LABEL_16;
        }
      }

      v87 = HIDWORD(v86);
      if (v84 < 16)
      {
        LODWORD(v101) = 0;
        *(&v101 + 1) = 1.0 / *(&v86 + 1);
        v102 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v73.f32[0]), v101, *v73.f32, 1), xmmword_239988FE0, v73, 2);
        v103 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v72.f32[0]), v101, *v72.f32, 1), xmmword_239988FE0, v72, 2);
        LODWORD(v101) = 0;
        *(&v101 + 1) = -v86;
        v104 = vaddq_f32(v101, v102);
        v105 = vsubq_f32(v103, vaddq_f32(v101, v101));
        v104.i32[3] = v67;
        v105.i32[3] = v69;
        v106 = vaddq_f32(v104, v105);
        v104.i32[3] = 0;
        v107 = vrndmq_f32(v104);
        v106.i32[3] = 0;
        v108 = vsubq_f32(vrndpq_f32(v106), v107);
        *(v74 - 1) = v107;
        *v74 = v108;
        v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / *(&v86 + 1)), v107.f32[0]), xmmword_239988FD0, *v107.f32, 1), xmmword_239988FE0, v107, 2);
        *&v110 = -v86;
        v111 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / *(&v86 + 1)), v108.f32[0]), xmmword_239988FD0, *v108.f32, 1), xmmword_239988FE0, v108, 2);
        v112 = vaddq_f32(v110, v109);
        v113 = vsubq_f32(v111, COERCE_UNSIGNED_INT(*&v110 + *&v110));
        v112.i32[3] = v61;
        v113.i32[3] = v63;
        v114 = vaddq_f32(v112, v113);
        v112.i32[3] = 0;
        v114.i32[3] = 0;
        v73 = vrndmq_f32(v112);
        v72 = vsubq_f32(vrndpq_f32(v114), v73);
        v82 = v70;
        v63 = v113.i32[3];
        v69 = v105.i32[3];
      }

      else
      {
        v88 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(v86), v73.f32[0]), xmmword_239988FD0, *v73.f32, 1), xmmword_239988FE0, v73, 2);
        v89 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(HIDWORD(v86), v72.f32[0]), xmmword_239988FD0, *v72.f32, 1), xmmword_239988FE0, v72, 2);
        v90 = -v86;
        v91 = vaddq_f32(LODWORD(v90), v88);
        v92 = vsubq_f32(v89, COERCE_UNSIGNED_INT(v90 + v90));
        v91.i32[3] = v66;
        v92.i32[3] = v68;
        v93 = vaddq_f32(v91, v92);
        v91.i32[3] = 0;
        v94 = vrndmq_f32(v91);
        v93.i32[3] = 0;
        v95 = vsubq_f32(vrndpq_f32(v93), v94);
        v82 = 2 * v71;
        *(v74 - 1) = v94;
        *v74 = v95;
        v91.i32[0] = 0;
        v91.i32[1] = v87;
        v96 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v94.f32[0]), v91.u64[0], *v94.f32, 1), xmmword_239988FE0, v94, 2);
        v97 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), v95.f32[0]), v91.u64[0], *v95.f32, 1), xmmword_239988FE0, v95, 2);
        v95.i32[0] = 0;
        v95.f32[1] = v90;
        v98 = vaddq_f32(v95.u64[0], v96);
        v99 = vsubq_f32(v97, vaddq_f32(v95.u64[0], v95.u64[0]));
        v98.i32[3] = v60;
        v99.i32[3] = v62;
        v100 = vaddq_f32(v98, v99);
        v98.i32[3] = 0;
        v73 = vrndmq_f32(v98);
        v100.i32[3] = 0;
        v72 = vsubq_f32(vrndpq_f32(v100), v73);
        v62 = v99.i32[3];
        v68 = v92.i32[3];
      }

LABEL_20:
      v83 = &v413[4 * v82];
      v83[2] = v73;
      v83[3] = v72;
      ++v71;
      v70 += 2;
      v74 += 8;
      if (!--v76)
      {
        if (v369 >= 1)
        {
          *v59.f32 = vcvt_f32_f64(vcvtq_f64_u64(*(a6 + 5)));
          *v160.f32 = vcvt_f32_f64(vcvtq_f64_s64(*(a6 + 4)));
          __asm { FMOV            V2.2S, #1.0 }

          v158 = v369 & 0x7FFFFFFF;
          v159 = v158 + 1;
          v160.i64[1] = _D2;
          v161 = (4 * v158 + 224 + a1 - 4);
          v158 <<= 6;
          v162 = (&v415 + v158 - 64);
          v163 = (&v413[-4] + v158);
          do
          {
            v166 = *v161--;
            v165 = v166;
            v167 = (&unk_284C6CA20 + 56 * v166);
            v168 = v166 > 0x19;
            if (v166 <= 25)
            {
              v169 = v167;
            }

            else
            {
              v169 = 0;
            }

            if (!v168)
            {
              v170 = qword_239989A50[v165];
            }

            v171 = *v163;
            v172 = vaddq_f32(v59, v160);
            v173 = vaddq_f32(*v163, v163[1]);
            v160.i32[3] = 0;
            v171.i32[3] = 0;
            v174 = vmaxnmq_f32(v160, v171);
            v172.i32[3] = 0;
            v173.i32[3] = 0;
            v175 = vaddq_f32(v174, vsubq_f32(vminnmq_f32(v172, v173), v174));
            v174.i32[3] = 0;
            v175.i32[3] = 0;
            v176 = vrndmq_f32(v174);
            v177 = vsubq_f32(vrndpq_f32(v175), v176);
            v162[2] = v176;
            v162[3] = v177;
            if (v165 >= 23)
            {
              *v162 = v176;
              v162[1] = v177;
              v164 = (v169 + 5);
              if (v165 == 24)
              {
                v164 = &off_284C6CF70;
              }

              (*v164)(1);
            }

            else
            {
              v385 = v163[-1];
              v387 = v163[-2];
              if (v165 < 16)
              {
                *v188.i64 = v167[2](1);
                v190 = vaddq_f32(v189, v188);
                v191 = v387;
                v192 = vaddq_f32(v387, v385);
                v188.i32[3] = 0;
                v191.i32[3] = 0;
                v193 = vmaxnmq_f32(v188, v191);
                v190.i32[3] = 0;
                v192.i32[3] = 0;
                v194 = vsubq_f32(vminnmq_f32(v190, v192), v193);
                v193.i32[3] = v378;
                v194.i32[3] = v384;
                v195 = vaddq_f32(v193, v194);
                v196 = v193;
                v196.i32[3] = 0;
                v195.i32[3] = 0;
                v197 = vrndmq_f32(v196);
                *v162 = v197;
                v162[1] = vsubq_f32(vrndpq_f32(v195), v197);
                v167[5](1);
              }

              else
              {
                *v178.i64 = v167[5](0);
                v180 = vaddq_f32(v179, v178);
                v181 = v387;
                v182 = vaddq_f32(v387, v385);
                v178.i32[3] = 0;
                v181.i32[3] = 0;
                v183 = vmaxnmq_f32(v178, v181);
                v180.i32[3] = 0;
                v182.i32[3] = 0;
                v184 = vsubq_f32(vminnmq_f32(v180, v182), v183);
                v183.i32[3] = v376;
                v184.i32[3] = v379;
                v185 = vaddq_f32(v183, v184);
                v186 = v183;
                v186.i32[3] = 0;
                v185.i32[3] = 0;
                v187 = vrndmq_f32(v186);
                *v162 = v187;
                v162[1] = vsubq_f32(vrndpq_f32(v185), v187);
                v167[2](0);
              }
            }

            --v159;
            v162 -= 4;
            v163 -= 4;
          }

          while (v159 > 1);
        }

LABEL_50:
        PixelInfo = **a6;
        if ((v13 & 2) != 0 || (PixelInfo & 0xFC00000000uLL) >> 34 <= 2)
        {
          v199 = BYTE3(PixelInfo) & 0xF;
          if (v199 > 4)
          {
            v200 = MTLPixelFormatRGBA16Float;
          }

          else
          {
            v200 = qword_239989080[v199];
          }

          PixelInfo = MPSDevice::GetPixelInfo(v380, v200, MPSImageFeatureChannelFormatNone);
        }

        v411 = PixelInfo;
        if (v369)
        {
          v201 = 0;
          v202 = 0;
          v203 = 0;
          v363 = v373 + 24;
          v381 = 0;
          v361 = &v393;
          v370 = v369 - 1;
          CompressedTempTexture = a4;
          do
          {
            while (1)
            {
              v205 = *(v366 + 4 * v201);
              if (v205 > 0x19)
              {
                v206 = -1;
              }

              else
              {
                v206 = dword_2399899E8[v205];
              }

              v386 = v206;
              if (v205 <= 25)
              {
                v207 = &unk_284C6CA20 + 56 * v205;
              }

              else
              {
                v207 = 0;
              }

              if ((*(v380 + 1476) & 0x80) == 0)
              {
                **a6;
              }

              v208 = *(v207 + 2);
              ComputeState = MPSLibrary::GetComputeState();
              if (!ComputeState && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v210 = *(v207 + 8);
              v211 = MPSLibrary::GetComputeState();
              if (!v211 && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v377 = v207;
              v212 = v205 < 16;
              v213 = 8;
              if (v205 >= 16)
              {
                v214 = 8;
              }

              else
              {
                v214 = 32;
              }

              if (!v212)
              {
                v213 = 32;
              }

              v374 = v213;
              v215 = (v212 ? v211 : ComputeState);
              v216 = (v212 ? ComputeState : v211);
              v388 = v216;
              v217 = (&v415 + 4 * v201);
              if (v215)
              {
                break;
              }

              v230 = v375;
              if (!v216)
              {
                goto LABEL_58;
              }

LABEL_117:
              if (v201 == v370)
              {
                v295 = vmovn_s64(*(a6 + 1));
              }

              else
              {
                v295 = 0;
              }

              v297 = v217[2];
              v296 = v217[3];
              v391 = vuzp1_s16(vcvt_s32_f32(*v296.f32), v295);
              v392 = v297.i64[0];
              v368 = *v297.f32;
              v395 = v409[0];
              v396 = v409[1];
              v298 = xmmword_239989020;
              HIDWORD(v298) = v381.i32[0];
              v397 = v409[2];
              v398 = v409[3];
              v299 = xmmword_239988FD0;
              HIDWORD(v299) = v381.i32[1];
              v393 = v298;
              v394 = v299;
              v399 = v41;
              v300.i64[0] = 0x4F0000004F000000;
              v300.i64[1] = 0x4F0000004F000000;
              v301 = vcgtq_f32(v296, v300);
              *v301.i8 = vadd_s32(vand_s8(*v301.i8, 0x8000000080000000), *&vcvtq_s32_f32(vsubq_f32(v296, vbslq_s8(v301, v300, 0))));
              *&v302 = v301.u32[0];
              *(&v302 + 1) = v301.u32[1];
              v403 = v302;
              v404 = 1;
              CompressedTempTexture = v364;
              if (v201 != v370)
              {
                CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
              }

              Sampler = MPSDevice::GetSampler();
              v383 = v391;
              v309 = objc_msgSend_maxTotalThreadsPerThreadgroup(v388, v304, v305, v306, v307, v308);
              v315 = objc_msgSend_threadExecutionWidth(v388, v310, v311, v312, v313, v314);
              v320 = (v309 & -v315) / v315;
              if (v320 <= v315)
              {
                v321 = v315;
              }

              else
              {
                v321 = (v309 & -v315) / v315;
              }

              if (v320 >= v315)
              {
                v320 = v315;
              }

              v322 = *&v377[v374 + 16];
              if (v322)
              {
                v323 = v321;
              }

              else
              {
                v323 = v320;
              }

              if (v322)
              {
                v324 = v320;
              }

              else
              {
                v324 = v321;
              }

              objc_msgSend_setComputePipelineState_(v230, v316, v388, v317, v318, v319, v361);
              objc_msgSend_setTexture_atIndex_(v230, v325, CompressedTempTexture, 0, v326, v327);
              objc_msgSend_setTexture_atIndex_(v230, v328, v203, 1, v329, v330);
              objc_msgSend_setSamplerState_atIndex_(v230, v331, Sampler, 0, v332, v333);
              objc_msgSend_setBytes_length_atIndex_(v230, v334, &v391, 128, 0, v335);
              v400 = (v383 + v323 - 1) / v323;
              v401 = (HIWORD(v383) + v324 - 1) / v324;
              v402 = 1;
              v390[0] = v323;
              v390[1] = v324;
              v390[2] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v230, v336, &v400, v390, v337, v338);
              MPSLibrary::ReleaseComputeState();
              MPSAutoCache::ReleaseTempResource();
              v381 = vneg_f32(v368);
              v203 = CompressedTempTexture;
              v202 += v386;
              if (++v201 == v369)
              {
                goto LABEL_134;
              }
            }

            v218 = v386 - 1;
            v219 = (v363 + 8 * v202);
            v221 = *v217;
            v220 = v217[1];
            v222 = vcvt_s32_f32(*v220.f32);
            v223.f64[1] = 0.0;
            LOWORD(v223.f64[0]) = v222.i16[0];
            WORD1(v223.f64[0]) = v222.i16[2];
            v405 = LODWORD(v223.f64[0]);
            v406 = v221.i64[0];
            v367 = *v221.f32;
            v224 = ((v386 - 1) >> 2);
            if (v224 < 1)
            {
              v224 = 0;
              v229 = v218 & 3;
              if (!v229)
              {
                goto LABEL_99;
              }
            }

            else
            {
              v225 = v409;
              v226 = (v218 >> 2);
              do
              {
                v228 = *v219;
                v227 = v219[1];
                v219 += 2;
                v223 = vcvt_hight_f32_f64(vcvt_f32_f64(v228), v227);
                *v225++ = v223;
                --v226;
              }

              while (v226);
              v229 = v218 & 3;
              if (!v229)
              {
                goto LABEL_99;
              }
            }

            v231 = &v409[v224];
            *v231 = 0;
            v231[1] = 0;
            v232.f64[0] = v219->f64[0];
            if (v229 == 2)
            {
              v232.f64[1] = v219->f64[1];
              *&v232.f64[0] = vcvt_f32_f64(v232);
            }

            else if (v229 == 1)
            {
              *&v233 = v232.f64[0];
              v232 = v233;
            }

            else
            {
              v223.f64[0] = v219[1].f64[0];
              v232.f64[1] = v219->f64[1];
              v232 = vcvt_hight_f32_f64(vcvt_f32_f64(v232), v223);
              HIDWORD(v232.f64[1]) = 0;
            }

            v409[v224] = v232;
LABEL_99:
            v236 = xmmword_239988FD0;
            v235 = xmmword_239989020;
            v236.i32[3] = v381.i32[1];
            HIDWORD(v235) = v381.i32[0];
            v407 = v235;
            v408 = v236;
            v410 = 1.0 / v41;
            v236.i64[0] = 0x4F0000004F000000;
            v236.i64[1] = 0x4F0000004F000000;
            v237 = vcgtq_f32(v220, v236);
            v238 = vadd_s32(vand_s8(*v237.i8, 0x8000000080000000), *&vcvtq_s32_f32(vsubq_f32(v220, vbslq_s8(v237, v236, 0))));
            *&v239 = v238.u32[0];
            *(&v239 + 1) = v238.u32[1];
            v403 = v239;
            v404 = 1;
            v240 = MPSAutoCache::GetCompressedTempTexture();
            v241 = MPSDevice::GetSampler();
            v382 = v405;
            v247 = objc_msgSend_maxTotalThreadsPerThreadgroup(v215, v242, v243, v244, v245, v246, v361);
            v253 = objc_msgSend_threadExecutionWidth(v215, v248, v249, v250, v251, v252);
            v258 = (v247 & -v253) / v253;
            if (v258 <= v253)
            {
              v259 = v253;
            }

            else
            {
              v259 = (v247 & -v253) / v253;
            }

            if (v258 >= v253)
            {
              v258 = v253;
            }

            v260 = *&v377[v214 + 16];
            if (v260)
            {
              v261 = v259;
            }

            else
            {
              v261 = v258;
            }

            if (v260)
            {
              v262 = v258;
            }

            else
            {
              v262 = v259;
            }

            objc_msgSend_setComputePipelineState_(v375, v254, v215, v255, v256, v257);
            objc_msgSend_setTexture_atIndex_(v375, v263, v240, 0, v264, v265);
            objc_msgSend_setTexture_atIndex_(v375, v266, CompressedTempTexture, 1, v267, v268);
            objc_msgSend_setSamplerState_atIndex_(v375, v269, v241, 0, v270, v271);
            objc_msgSend_setBytes_length_atIndex_(v375, v272, &v405, 128, 0, v273);
            v391 = (v382 + v261 - 1) / v261;
            v392 = (HIWORD(v382) + v262 - 1) / v262;
            *&v393 = 1;
            v400 = v261;
            v401 = v262;
            v402 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v375, v274, &v391, &v400, v275, v276);
            MPSLibrary::ReleaseComputeState();
            if (CompressedTempTexture == v365)
            {
              v230 = v375;
              if (v365)
              {
                v277 = objc_msgSend_userDictionary(v362, v54, v55, v56, v57, v58);
                v282 = objc_msgSend_objectForKey_(v277, v278, @"_MPSCommandBufferRetainListKey", v279, v280, v281);
                if (!v282)
                {
                  v287 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  objc_msgSend_setObject_forKey_(v277, v288, v287, @"_MPSCommandBufferRetainListKey", v289, v290);

                  v391 = MEMORY[0x277D85DD0];
                  v392 = 3221225472;
                  *&v393 = sub_23993DA68;
                  *(&v393 + 1) = &unk_278AC37A8;
                  *&v394 = @"_MPSCommandBufferRetainListKey";
                  objc_msgSend_addCompletedHandler_(v362, v291, &v391, v292, v293, v294);
                  v282 = v287;
                }

                objc_msgSend_addObject_(v282, v283, v365, v284, v285, v286);
                v230 = v375;
              }
            }

            else
            {
              MPSAutoCache::ReleaseTempResource();
              v230 = v375;
            }

            v381 = vneg_f32(v367);
            v203 = v240;
            if (v388)
            {
              goto LABEL_117;
            }

LABEL_58:
            CompressedTempTexture = v203;
            v202 += v386;
            ++v201;
          }

          while (v201 != v369);
        }

LABEL_134:
        if (v364)
        {
          v339 = objc_msgSend_userDictionary(v362, v54, v55, v56, v57, v58);
          v344 = objc_msgSend_objectForKey_(v339, v340, @"_MPSCommandBufferRetainListKey", v341, v342, v343);
          if (!v344)
          {
            v349 = objc_alloc_init(MEMORY[0x277CBEB18]);
            objc_msgSend_setObject_forKey_(v339, v350, v349, @"_MPSCommandBufferRetainListKey", v351, v352);

            v405 = MEMORY[0x277D85DD0];
            v406 = 3221225472;
            *&v407 = sub_23993DA68;
            *(&v407 + 1) = &unk_278AC37A8;
            v408.i64[0] = @"_MPSCommandBufferRetainListKey";
            objc_msgSend_addCompletedHandler_(v362, v353, &v405, v354, v355, v356);
            v344 = v349;
          }

          objc_msgSend_addObject_(v344, v345, v364, v346, v347, v348, v361);
        }

        MPSAutoCache::~MPSAutoCache(v412);
LABEL_139:
        v40 = 0;
        goto LABEL_149;
      }
    }
  }

  if (a4 == a5 || (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6) & 1) != 0)
  {
    v40 = -18;
    goto LABEL_149;
  }

  v115 = vcvt_f32_f64(vcvtq_f64_s64(*(a6 + 4)));
  *&v415 = vmovn_s32(vuzp1q_s32(*(a6 + 5), *(a6 + 1)));
  *(&v415 + 1) = v115;
  v418 = 1065353216;
  v116 = MPSDevice::GetSampler();
  v117 = MPSLibrary::GetComputeState();
  if (v117)
  {
    v122 = v117;
    objc_msgSend_setComputePipelineState_(a2, v118, v117, v119, v120, v121);
    objc_msgSend_setTexture_atIndex_(a2, v123, a5, 0, v124, v125);
    objc_msgSend_setTexture_atIndex_(a2, v126, a4, 1, v127, v128);
    objc_msgSend_setSamplerState_atIndex_(a2, v129, v116, 0, v130, v131);
    objc_msgSend_setBytes_length_atIndex_(a2, v132, &v415, 128, 0, v133);
    v135 = a6[5];
    v134 = a6[6];
    v141 = objc_msgSend_maxTotalThreadsPerThreadgroup(v122, v136, v137, v138, v139, v140);
    v147 = objc_msgSend_threadExecutionWidth(v122, v142, v143, v144, v145, v146);
    v151 = (v141 & -v147) / v147;
    if (v151 <= v147)
    {
      v152 = v147;
    }

    else
    {
      v152 = (v141 & -v147) / v147;
    }

    if (v151 >= v147)
    {
      v151 = v147;
    }

    v413[0] = (v135 + v151 - 1) / v151;
    v413[1] = (v134 + v152 - 1) / v152;
    v414 = 1;
    v405 = v151;
    v406 = v152;
    *&v407 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v148, v413, &v405, v149, v150);
    MPSLibrary::ReleaseComputeState();
    goto LABEL_139;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v40 = -1;
LABEL_149:
  v359 = *MEMORY[0x277D85DE8];
  return v40;
}

void sub_23993D520(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239941EEC(a1);
  }

  _Unwind_Resume(a1);
}

double sub_23993D6AC(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  v6 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v5, *a2.f32, 1), xmmword_239988FE0, a2, 2), xmmword_239989010);
  __asm { FMOV            V1.2D, #-2.0 }

  if (a1)
  {
    v6.i64[0] = vaddq_f32(v6, xmmword_239988FB0).u64[0];
  }

  return *v6.i64;
}

double sub_23993D718(uint64_t a1, float32x4_t a2, double a3, double a4, float a5)
{
  v5 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), xmmword_239988FD0, *a2.f32, 1), xmmword_239988FE0, a2, 2), xmmword_239988FF0);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_239988FB0).u64[0];
  }

  return *v5.i64;
}

double sub_23993D788(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  v4 = vaddq_f32(a2, COERCE_UNSIGNED_INT(-a4));
  if (a1)
  {
    v4.i64[0] = vaddq_f32(v4, xmmword_239988FB0).u64[0];
  }

  return *v4.i64;
}

double sub_23993D7CC(uint64_t a1, float32x4_t a2, double a3, float a4)
{
  LODWORD(v4) = 0;
  *(&v4 + 1) = -a4;
  v5 = vaddq_f32(a2, v4);
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_239988FB0).u64[0];
  }

  return *v5.i64;
}

double sub_23993D804(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  v5 = vaddq_f32(COERCE_UNSIGNED_INT(-(a4 - (a5 * 0.5))), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), xmmword_239988FD0, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v5.i64[0] = vaddq_f32(v5, xmmword_239988FB0).u64[0];
  }

  return *v5.i64;
}

double sub_23993D878(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  LODWORD(v6) = 0;
  *(&v6 + 1) = a5;
  *(&v5 + 1) = -(a4 - (a5 * 0.5));
  v7 = vaddq_f32(v5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0), a2.f32[0]), v6, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_239988FB0).u64[0];
  }

  return *v7.i64;
}

uint64_t sub_23993D93C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993D978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993D9B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993D9F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993DA2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993DA68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993DAA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

uint64_t sub_23993DAE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_userDictionary(a2, a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel_removeObjectForKey_, v11, v8, v9, v10);
}

void sub_23993FFB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239941EEC(a1);
  }

  _Unwind_Resume(a1);
}

void **sub_2399400F0(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5, a6);

  return a1;
}

void sub_239940AB8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940ACC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940AE0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940AF4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940B08(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940B1C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940B38(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940B4C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940B60(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239940B74(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23994192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239941DD0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239941DE4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239941DF8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239941E10(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239941E24(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239941E38(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t sub_239941E5C(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v9 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v9, 53, 0, v5);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void *sub_23994204C(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 24);
  _S0 = a2[7];
  _S1 = a2[8];
  if (v8 == 1)
  {
    _S0 = -_S0 / _S1;
    _S1 = 1.0 / _S1;
  }

  a1[12] = _S0;
  a1[13] = _S1;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
  }

  *(a1 + 28) = _H0;
  *(a1 + 29) = _H1;
  v17 = -a2[8];
  if (v8)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -a2[8];
  }

  v19 = *a1;
  v20 = *(a1 + 1);
  v22 = *a2;
  v21 = *(a2 + 1);
  if (v20 * *a1)
  {
    v23 = 0;
    do
    {
      *(objc_msgSend_mutableBytes(*(a1 + 2), a2, a3, a4, a5, a6) + 4 * v23) = 0;
      *(objc_msgSend_mutableBytes(*(a1 + 3), v24, v25, v26, v27, v28) + 2 * v23++) = 0;
    }

    while (v23 < *(a1 + 1) * *a1);
    v29 = *a2;
    if (!*a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v29 = *a2;
    if (!v22)
    {
      goto LABEL_19;
    }
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = (v19 - v22) >> 1;
    v34 = (v20 - v21) >> 1;
    do
    {
      if (v30)
      {
        for (i = 0; i < v30; ++i)
        {
          v36 = v34 + i + v33 * *(a1 + 1);
          _S9 = v18 * *(objc_msgSend_bytes(*(a2 + 2), a2, a3, a4, a5, a6) + v31 * v30 + 4 * i);
          *(objc_msgSend_mutableBytes(*(a1 + 2), v38, v39, v40, v41, v42) + 4 * v36) = _S9;
          __asm { FCVT            H9, S9 }

          *(objc_msgSend_mutableBytes(*(a1 + 3), v43, v44, v45, v46, v47) + 2 * v36) = LOWORD(_S9);
          v30 = *(a2 + 1);
        }

        v29 = *a2;
      }

      ++v32;
      v31 += 4;
      ++v33;
    }

    while (v32 < v29);
  }

LABEL_19:
  v48 = *(a1 + 2);
  v49 = objc_msgSend_contents(*(a1 + 4), a2, a3, a4, a5, a6);
  v55 = objc_msgSend_bytes(v48, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_length(v48, v56, v57, v58, v59, v60);
  memcpy(v49, v55, v61);
  v62 = *(a1 + 5);
  v63 = *(a1 + 3);
  v69 = objc_msgSend_contents(v62, v64, v65, v66, v67, v68);
  v75 = objc_msgSend_bytes(v63, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_length(v63, v76, v77, v78, v79, v80);

  return memcpy(v69, v75, v81);
}

uint64_t sub_2399425CC(void *a1, void *a2, _BYTE *a3, unint64_t a4, unint64_t a5)
{
  v192 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v176 = a3;
  *a3 = 0;
  v178 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9, v10);
  v177 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14, v15);
  v183 = -1;
  v21 = &off_284C6CFE0;
  v22 = 62848;
  do
  {
    v23 = *v21;
    if (*v21)
    {
      v24 = objc_msgSend_UTF8String(*v21, v16, v17, v18, v19, v20);
      if (!strncmp(v24, "kUpsample_", 0xAuLL))
      {
        v25 = objc_msgSend_UTF8String(v23, v16, v17, v18, v19, v20);
        memset(v185, 0, sizeof(v185));
        sscanf(v25, "kUpsample_%u_%i_%u_%u_%u_%u_%s", v185, v185 + 4, v185 + 8, v185 + 12, &v185[1], &v185[1] + 4, v191);
        sscanf(v191, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v186, &v186 + 4, &v186 + 8, &v186 + 12, &v187, &v187 + 4, &v187 + 8, &v187 + 12, &v188, &v188 + 4);
        v26 = v185[1];
        if (LODWORD(v185[1]) >= a4)
        {
          v27 = DWORD1(v185[1]);
          if (DWORD1(v185[1]) >= a5 && v183 >= (DWORD1(v185[1]) * LODWORD(v185[1])))
          {
            *a1 = LODWORD(v185[1]);
            *a2 = v27;
            v183 = (v27 * v26);
          }
        }
      }
    }

    v21 += 16;
    v22 -= 128;
  }

  while (v22);
  if (v183 == -1)
  {
    goto LABEL_49;
  }

  v28 = 0;
  while (1)
  {
    v29 = &off_284C6CFE0 + v28;
    v35 = objc_autoreleasePoolPush();
    v36 = *(&off_284C6CFE0 + v28);
    if (!v36 || *(v29 + 8))
    {
      goto LABEL_12;
    }

    v37 = objc_msgSend_UTF8String(*v29, v30, v31, v32, v33, v34);
    if (strncmp(v37, "kCopy2D_", 8uLL))
    {
      break;
    }

    v88 = objc_msgSend_UTF8String(v36, v38, v39, v40, v41, v42);
    memset(v185, 0, 48);
    sscanf(v88, "kCopy2D_%u_%i_%s", v185, v185 + 4, v191);
    sscanf(v191, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v186, &v186 + 4, &v186 + 8, &v186 + 12, &v187, &v187 + 4, &v187 + 8, &v187 + 12, &v188, &v188 + 4);
    *(&v185[2] + 1) = v188;
    *(v185 + 8) = v186;
    *(&v185[1] + 8) = v187;
    if (((DWORD1(v186) * v186 * DWORD2(v186) * HIDWORD(v186)) & 0x3F) == 0)
    {
      v190[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v89, LODWORD(v185[0]), v90, v91, v92);
      v190[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v93, DWORD1(v185[0]) != 0, v94, v95, v96);
      v100 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v97, v190, 2, v98, v99);
      v105 = objc_msgSend_objectAtIndexedSubscript_(v100, v101, 0, v102, v103, v104);
      if (objc_msgSend_count(v100, v106, v107, v108, v109, v110) == 1)
      {
        v115 = v178;
      }

      else
      {
        v127 = 1;
        v128 = v178;
        for (i = objc_msgSend_objectForKey_(v178, v111, v105, v112, v113, v114); ; i = objc_msgSend_objectForKey_(v115, v111, v105, v112, v113, v114))
        {
          v115 = i;
          if (!i)
          {
            v115 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v130, v131, v132, v133, v134);
            objc_msgSend_setObject_forKey_(v128, v140, v115, v105, v141, v142);
          }

          v105 = objc_msgSend_objectAtIndexedSubscript_(v100, v130, v127++, v132, v133, v134);
          v128 = v115;
          if (v127 == objc_msgSend_count(v100, v135, v136, v137, v138, v139))
          {
            break;
          }
        }
      }

      v116 = objc_msgSend_objectForKey_(v115, v111, v105, v112, v113, v114);
      v122 = v116;
      if (v116)
      {
        if (objc_msgSend_containsObject_(v116, v117, v36, v119, v120, v121))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v122 = objc_msgSend_array(MEMORY[0x277CBEB18], v117, v118, v119, v120, v121);
        objc_msgSend_setObject_forKey_(v115, v143, v122, v105, v144, v145);
        if (objc_msgSend_containsObject_(v122, v146, v36, v147, v148, v149))
        {
          goto LABEL_48;
        }
      }

      objc_msgSend_addObject_(v122, v123, v36, v124, v125, v126);
    }

LABEL_12:
    objc_autoreleasePoolPop(v35);
    v28 += 128;
    if (v28 == 62848)
    {
      *(v176 + 1) = v178;
      *(v176 + 2) = v177;
      v173 = 1;
      goto LABEL_50;
    }
  }

  v43 = objc_msgSend_UTF8String(v36, v38, v39, v40, v41, v42);
  if (strncmp(v43, "kUpsample_", 0xAuLL))
  {
    goto LABEL_48;
  }

  v49 = objc_msgSend_UTF8String(v36, v44, v45, v46, v47, v48);
  memset(v185, 0, sizeof(v185));
  sscanf(v49, "kUpsample_%u_%i_%u_%u_%u_%u_%s", v185, v185 + 4, v185 + 8, v185 + 12, &v185[1], &v185[1] + 4, v191);
  sscanf(v191, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v186, &v186 + 4, &v186 + 8, &v186 + 12, &v187, &v187 + 4, &v187 + 8, &v187 + 12, &v188, &v188 + 4);
  *(&v185[3] + 1) = v188;
  *(&v185[2] + 8) = v187;
  *(&v185[1] + 8) = v186;
  if (((BYTE4(v186) * v186 * BYTE8(v186) * BYTE12(v186)) & 0x3F) != 0 || *(&v185[0] + 1) != 0x200000002 || *a1 != LODWORD(v185[1]) || *a2 != DWORD1(v185[1]))
  {
    goto LABEL_12;
  }

  v189[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v50, LODWORD(v185[0]), v51, v52, v53);
  v189[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v54, DWORD1(v185[0]) != 0, v55, v56, v57);
  v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v58, v189, 2, v59, v60);
  v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 0, v63, v64, v65);
  if (objc_msgSend_count(v61, v67, v68, v69, v70, v71) == 1)
  {
    v76 = v177;
  }

  else
  {
    v150 = 1;
    v151 = v177;
    for (j = objc_msgSend_objectForKey_(v177, v72, v66, v73, v74, v75); ; j = objc_msgSend_objectForKey_(v76, v72, v66, v73, v74, v75))
    {
      v76 = j;
      if (!j)
      {
        v76 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v153, v154, v155, v156, v157);
        objc_msgSend_setObject_forKey_(v151, v163, v76, v66, v164, v165);
      }

      v66 = objc_msgSend_objectAtIndexedSubscript_(v61, v153, v150++, v155, v156, v157);
      v151 = v76;
      if (v150 == objc_msgSend_count(v61, v158, v159, v160, v161, v162))
      {
        break;
      }
    }
  }

  v77 = objc_msgSend_objectForKey_(v76, v72, v66, v73, v74, v75);
  v83 = v77;
  if (v77)
  {
    if (objc_msgSend_containsObject_(v77, v78, v36, v80, v81, v82))
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v83 = objc_msgSend_array(MEMORY[0x277CBEB18], v78, v79, v80, v81, v82);
  objc_msgSend_setObject_forKey_(v76, v166, v83, v66, v167, v168);
  if ((objc_msgSend_containsObject_(v83, v169, v36, v170, v171, v172) & 1) == 0)
  {
LABEL_46:
    objc_msgSend_addObject_(v83, v84, v36, v85, v86, v87);
    goto LABEL_12;
  }

LABEL_48:
  objc_autoreleasePoolPop(v35);
LABEL_49:
  v173 = 0;
LABEL_50:
  objc_autoreleasePoolPop(context);
  v174 = *MEMORY[0x277D85DE8];
  return v173;
}

uint64_t sub_239942D58(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v513 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CD7350];
  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = objc_msgSend_pixelFormat(a4, a2, a3, a4, a5, a6);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  if ((PixelInfo & 0x800000000000) == 0 || ((PixelInfo & 0xE000000) == 0 ? (v19 = 1) : (v19 = BYTE3(PixelInfo) & 0xF), (BYTE3(PixelInfo) & 0xF) != 3 ? (v20 = v19) : (v20 = 4), v20 != 1 ? (v21 = v20 == 4) : (v21 = 1), !v21))
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_30:
      result = -19;
      goto LABEL_31;
    }

LABEL_29:
    MTLReportFailure();
    goto LABEL_30;
  }

  v22 = PixelInfo;
  if (objc_msgSend_mipmapLevelCount(a5, v14, v15, v16, v17, v18) != 1 || objc_msgSend_mipmapLevelCount(a4, v23, v24, v25, v26, v27) != 1)
  {
    objc_msgSend_mipmapLevelCount(a5, v23, v24, v25, v26, v27);
    objc_msgSend_mipmapLevelCount(a4, v28, v29, v30, v31, v32);
  }

  if (objc_msgSend_mipmapLevelCount(a5, v23, v24, v25, v26, v27) != 1 || objc_msgSend_mipmapLevelCount(a4, v33, v34, v35, v36, v37) != 1)
  {
    v38 = objc_msgSend_mipmapLevelCount(a5, v33, v34, v35, v36, v37) + 1;
    if (v38 < objc_msgSend_mipmapLevelCount(a4, v39, v40, v41, v42, v43))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      result = -5;
      goto LABEL_31;
    }
  }

  v44 = objc_msgSend_height(a5, v33, v34, v35, v36, v37);
  if (v44 == objc_msgSend_height(a4, v45, v46, v47, v48, v49))
  {
    objc_msgSend_width(a5, v50, v51, v52, v53, v54);
    objc_msgSend_width(a4, v55, v56, v57, v58, v59);
  }

  v60 = objc_msgSend_height(a5, v50, v51, v52, v53, v54);
  if (v60 != objc_msgSend_height(a4, v61, v62, v63, v64, v65) || (v71 = objc_msgSend_width(a5, v66, v67, v68, v69, v70), v71 != objc_msgSend_width(a4, v72, v73, v74, v75, v76)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    result = -6;
    goto LABEL_31;
  }

  if (a4 == a5 || (objc_msgSend_isEqual_(a4, v77, a5, v78, v79, v80), objc_msgSend_isEqual_(a4, v81, a5, v82, v83, v84)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    result = -18;
    goto LABEL_31;
  }

  v90 = objc_msgSend_pixelFormat(a5, v85, v86, v87, v88, v89);
  v96 = objc_msgSend_pixelFormat(a4, v91, v92, v93, v94, v95);
  objc_msgSend_isValidDstPixelFormat_srcPixelFormat_(a1, v97, v90, v96, v98, v99);
  v105 = objc_msgSend_pixelFormat(a5, v100, v101, v102, v103, v104);
  v111 = objc_msgSend_pixelFormat(a4, v106, v107, v108, v109, v110);
  if ((objc_msgSend_isValidDstPixelFormat_srcPixelFormat_(a1, v112, v105, v111, v113, v114) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    result = -7;
    goto LABEL_31;
  }

  v120 = objc_msgSend_pixelFormat(a5, v115, v116, v117, v118, v119);
  v126 = objc_msgSend_pixelFormat(a4, v121, v122, v123, v124, v125);
  if (objc_msgSend_isReducedPrecisionAllowedForDstPixelFormat_srcPixelFormat_(a1, v127, v120, v126, v128, v129))
  {
    v130 = (*(a1 + *MEMORY[0x277CD7378]) >> 1) & 1;
  }

  else
  {
    v130 = 0;
  }

  v133 = sub_239944578(a4);
  if (!v133)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v134 = v133;
  v135 = sub_239944578(a5);
  if (!v135)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_124:
      MTLReportFailure();
      result = -1;
      goto LABEL_31;
    }

LABEL_125:
    result = -1;
    goto LABEL_31;
  }

  if (*(a1 + 264) == 1)
  {
    if (objc_msgSend_getCopyConfigID(a1, v136, v137, v138, v139, v140) == -1)
    {
      CopyConfigID = 0;
      if (objc_msgSend_getUpsampleConfigID(a1, v141, v142, v143, v144, v145) != -1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      CopyConfigID = objc_msgSend_getCopyConfigID(a1, v141, v142, v143, v144, v145);
      if (objc_msgSend_getUpsampleConfigID(a1, v147, v148, v149, v150, v151) != -1)
      {
LABEL_41:
        UpsampleConfigID = objc_msgSend_getUpsampleConfigID(a1, v152, v153, v154, v155, v156);
LABEL_66:
        CopyConfigs = objc_msgSend_getCopyConfigs(a1, v152, v153, v154, v155, v156);
        v500[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v227, v20, v228, v229, v230);
        v500[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v231, v130, v232, v233, v234);
        v242 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v235, v500, 2, v236, v237);
        v243 = 0;
        do
        {
          if (!CopyConfigs)
          {
            break;
          }

          v244 = objc_msgSend_objectAtIndexedSubscript_(v242, v238, v243, v239, v240, v241);
          CopyConfigs = objc_msgSend_objectForKey_(CopyConfigs, v245, v244, v246, v247, v248);
          ++v243;
        }

        while (v243 != objc_msgSend_count(v242, v249, v250, v251, v252, v253));
        v254 = objc_msgSend_objectAtIndex_(CopyConfigs, v238, CopyConfigID, v239, v240, v241);
        UpsampleConfigs = objc_msgSend_getUpsampleConfigs(a1, v255, v256, v257, v258, v259);
        v499[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v261, v20, v262, v263, v264);
        v499[1] = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v265, v130, v266, v267, v268);
        v276 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v269, v499, 2, v270, v271);
        v277 = 0;
        do
        {
          if (!UpsampleConfigs)
          {
            break;
          }

          v278 = objc_msgSend_objectAtIndexedSubscript_(v276, v272, v277, v273, v274, v275);
          UpsampleConfigs = objc_msgSend_objectForKey_(UpsampleConfigs, v279, v278, v280, v281, v282);
          ++v277;
        }

        while (v277 != objc_msgSend_count(v276, v283, v284, v285, v286, v287));
        if (v254 | objc_msgSend_objectAtIndex_(UpsampleConfigs, v272, UpsampleConfigID, v273, v274, v275))
        {
          result = -20;
          goto LABEL_31;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    UpsampleConfigID = 0;
    goto LABEL_66;
  }

  v158 = MEMORY[0x277CD7370];
  v159 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v160 = *(v159 + 16);
  if (!v160)
  {
    goto LABEL_61;
  }

  v161 = 8 * (1 << -__clz((v22 >> 10) - 1));
  v162 = *(v159 + 8) + 8;
  while (1)
  {
    v163 = *(v162 + 8);
    v164 = *(a1 + 344) == (v163 & 0xF) && *(a1 + 352) == v163 >> 4;
    v165 = v164 && ((v163 >> 8) & 7) == v20;
    if (v165 && v161 == (v163 >> 11) && ((v130 ^ ((v163 & 0x80000) == 0)) & 1) != 0)
    {
      break;
    }

    v162 += 24;
    if (!--v160)
    {
      goto LABEL_61;
    }
  }

  v166 = *(v162 - 8);
  if (!v166 || (v167 = *v162, *v162 > 0xFFFFFFFEFFFFFFFFLL) || v167 == 0xFFFFFFFFLL)
  {
LABEL_61:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v168 = v135;
  IsPyramidAdd = objc_msgSend_getIsPyramidAdd(a1, v136, v137, v138, v139, v140);
  objc_msgSend_edgeMode(a1, v169, v170, v171, v172, v173);
  v494 = v166;
  v495 = v167;
  v174 = *(a1 + *v10);
  v487 = *(*(a1 + *v158) + 32);
  Sampler = MPSDevice::GetSampler();
  if (objc_msgSend_count(v134, v175, v176, v177, v178, v179) == 1 && objc_msgSend_count(v168, v180, v181, v182, v183, v184) == 1)
  {
    v185 = objc_msgSend_objectAtIndexedSubscript_(v168, v180, 0, v182, v183, v184);
    v486 = objc_msgSend_objectAtIndexedSubscript_(v134, v186, 0, v187, v188, v189);
    v490[0] = xmmword_239983230;
    v490[1] = xmmword_239983240;
    v490[2] = xmmword_239983250;
    v490[3] = xmmword_239983260;
    v490[4] = xmmword_239983270;
    v490[5] = xmmword_239983280;
    v490[6] = xmmword_239983290;
    v490[7] = xmmword_2399832A0;
    v491 = objc_msgSend_width(v185, v190, v191, v192, v193, v194);
    v492 = objc_msgSend_height(v185, v195, v196, v197, v198, v199);
    v493 = -1;
    v205 = objc_msgSend_UTF8String(0, v200, v201, v202, v203, v204);
    memset(v489, 0, sizeof(v489));
    sscanf(v205, "kCopy2D_%u_%i_%s", v489, v489 + 4, v501);
    sscanf(v501, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", &v496, &v496 + 4, &v496 + 8, &v496 + 12, &v497, &v497 + 4, &v497 + 8, &v497 + 12, &v498, &v498 + 4);
    *(v489 + 8) = v496;
    *(&v489[1] + 8) = v497;
    *(&v489[2] + 1) = v498;
    v206 = objc_autoreleasePoolPush();
    v212 = objc_msgSend_UTF8String(0, v207, v208, v209, v210, v211);
    v223 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v213, v214, v215, v216, v217);
    v224 = 62848;
    v225 = &off_284C6CFE0;
    do
    {
      v288 = *(v225 + 4);
      if (v288 != -1)
      {
        if (*v225)
        {
          v289 = objc_msgSend_UTF8String(*v225, v218, v219, v220, v221, v222);
          if (!strcmp(v289, v212))
          {
            v290 = v225[8];
            v291 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v218, v290 != 0, v220, v221, v222);
            if (objc_msgSend_objectForKey_(v223, v292, v291, v293, v294, v295))
            {
              goto LABEL_103;
            }

            v300 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v296, v288, v297, v298, v299);
            v305 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v301, v290 != 0, v302, v303, v304);
            objc_msgSend_setObject_forKey_(v223, v306, v300, v305, v307, v308);
          }
        }
      }

      v225 += 16;
      v224 -= 128;
    }

    while (v224);
    if (objc_msgSend_count(v223, v218, v219, v220, v221, v222) && v223)
    {
      goto LABEL_105;
    }

LABEL_103:
    v223 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v223 = 0;
    }

LABEL_105:
    v422 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v418, *(v487 + 24), v419, v420, v421);
    v427 = objc_msgSend_objectForKeyedSubscript_(v223, v423, v422, v424, v425, v426);
    if (v427 || (v479 = MTLReportFailureTypeEnabled(), v427 = 0, !v479))
    {
      objc_msgSend_unsignedIntegerValue(v427, v428, v429, v430, v431, v432);
    }

    else
    {
      MTLReportFailure();
      objc_msgSend_unsignedIntegerValue(0, v480, v481, v482, v483, v484);
    }

    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_autoreleasePoolPop(v206);
    v434 = (DWORD1(v489[1]) * LODWORD(v489[1]));
    v435 = (HIDWORD(v489[0]) * DWORD2(v489[0]));
    v441 = objc_msgSend_width(v185, v436, v437, v438, v439, v440);
    v442 = (v441 + (DWORD1(v489[1]) * HIDWORD(v489[0]) * LODWORD(v489[2])) - 1) / (DWORD1(v489[1]) * HIDWORD(v489[0]) * LODWORD(v489[2]));
    v448 = objc_msgSend_height(v185, v443, v444, v445, v446, v447);
    v449 = (v448 + (LODWORD(v489[1]) * DWORD2(v489[0]) * HIDWORD(v489[1])) - 1) / (LODWORD(v489[1]) * DWORD2(v489[0]) * HIDWORD(v489[1]));
    v450 = v435 * v434;
    if ((v450 > objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v451, v452, v453, v454, v455) || v450 % objc_msgSend_threadExecutionWidth(ComputeState, v456, v457, v458, v459, v460)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_setComputePipelineState_(a2, v461, ComputeState, v462, v463, v464);
    objc_msgSend_setSamplerState_atIndex_(a2, v465, Sampler, 0, v466, v467);
    objc_msgSend_setTexture_atIndex_(a2, v468, v185, 0, v469, v470);
    objc_msgSend_setTexture_atIndex_(a2, v471, v486, 1, v472, v473);
    objc_msgSend_setBytes_length_atIndex_(a2, v474, v490, 144, 0, v475);
    *v501 = v442;
    v502 = v449;
    v503 = 1;
    *&v496 = v434;
    *(&v496 + 1) = v435;
    *&v497 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v476, v501, &v496, v477, v478);
  }

  else
  {
    v309 = objc_msgSend_UTF8String(v166, v180, v181, v182, v183, v184);
    memset(v490, 0, 64);
    sscanf(v309, "kUpsample_%u_%i_%u_%u_%u_%u_%s", v490, v490 + 4, v490 + 8, v490 | 0xC, &v490[1], &v490[1] + 4, v501);
    sscanf(v501, "%u_%u_%u_%u_%u_%u_%u_%i_%i_%i", v489, v489 + 4, v489 + 8, v489 + 12, &v489[1], &v489[1] + 4, &v489[1] + 8, &v489[1] + 12, &v489[2], &v489[2] + 4);
    *(&v490[1] + 8) = v489[0];
    *(&v490[2] + 8) = v489[1];
    *(&v490[3] + 1) = *&v489[2];
    v314 = objc_msgSend_objectAtIndexedSubscript_(v134, v310, 0, v311, v312, v313);
    v320 = objc_msgSend_pixelFormat(v314, v315, v316, v317, v318, v319);
    MPSDevice::GetPixelInfo(v174, v320, MPSImageFeatureChannelFormatNone);
    v321 = *(&v495 + *(v487 + 24));
    v326 = MPSLibrary::GetComputeState();
    if (!v326 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_setComputePipelineState_(a2, v322, v326, v323, v324, v325);
    v327 = (DWORD1(v490[2]) * LODWORD(v490[2]));
    v328 = (HIDWORD(v490[1]) * DWORD2(v490[1]));
    v329 = v328 * v327;
    if ((v329 > objc_msgSend_maxTotalThreadsPerThreadgroup(v326, v330, v331, v332, v333, v334) || v329 % objc_msgSend_threadExecutionWidth(v326, v335, v336, v337, v338, v339)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v342 = 48;
    if (v130)
    {
      v342 = 56;
      v343 = 4;
    }

    else
    {
      v343 = 8;
    }

    if (v130)
    {
      v344 = 24;
    }

    else
    {
      v344 = 16;
    }

    objc_msgSend_setBytes_length_atIndex_(a2, v340, a1 + v342 + 344, v343, 1, v341);
    v350 = objc_msgSend_bytes(*(a1 + 344 + v344), v345, v346, v347, v348, v349);
    v356 = objc_msgSend_length(*(a1 + 344 + v344), v351, v352, v353, v354, v355);
    objc_msgSend_setBytes_length_atIndex_(a2, v357, v350, v356, 2, v358);
    objc_msgSend_setSamplerState_atIndex_(a2, v359, Sampler, 0, v360, v361);
    *v501 = MEMORY[0x277D85DD0];
    v502 = 3221225472;
    v503 = sub_239944654;
    v504 = &unk_278AC5088;
    v509 = v490[0];
    v510 = v490[1];
    v511 = v490[2];
    v512 = v490[3];
    v505 = a2;
    v506 = v327;
    v507 = v328;
    v508 = 1;
    v367 = objc_msgSend_count(v134, v362, v363, v364, v365, v366);
    if (IsPyramidAdd)
    {
      if (v367 >= 2)
      {
        v373 = -1;
        v374 = 1;
        do
        {
          v375 = objc_msgSend_count(v134, v368, v369, v370, v371, v372) + v373;
          v380 = objc_msgSend_objectAtIndexedSubscript_(v168, v376, v375 - 1, v377, v378, v379);
          v385 = objc_msgSend_objectAtIndexedSubscript_(v134, v381, v375 - 1, v382, v383, v384);
          if (v375 + 1 == objc_msgSend_count(v134, v386, v387, v388, v389, v390))
          {
            v395 = objc_msgSend_objectAtIndexedSubscript_(v134, v391, v375, v392, v393, v394);
          }

          else
          {
            v395 = objc_msgSend_objectAtIndexedSubscript_(v168, v391, v375, v392, v393, v394);
          }

          (v503)(v501, v380, v385, v395);
          ++v374;
          --v373;
        }

        while (v374 < objc_msgSend_count(v134, v396, v397, v398, v399, v400));
      }
    }

    else if (v367 >= 2)
    {
      v401 = 1;
      do
      {
        v402 = objc_msgSend_objectAtIndexedSubscript_(v168, v368, v401 - 1, v370, v371, v372);
        v407 = objc_msgSend_objectAtIndexedSubscript_(v134, v403, v401 - 1, v404, v405, v406);
        v412 = objc_msgSend_objectAtIndexedSubscript_(v134, v408, v401, v409, v410, v411);
        (v503)(v501, v402, v407, v412);
        ++v401;
      }

      while (v401 < objc_msgSend_count(v134, v413, v414, v415, v416, v417));
    }
  }

  MPSLibrary::ReleaseComputeState();
  result = 0;
LABEL_31:
  v132 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2399444BC(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = MPSCreateFunctionConstantValues();
  v10 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v4, v5, &v10, 53, 0, v6);
  v7 = *a2;
  v8 = _MPSNewSpecializedFunction();

  objc_autoreleasePoolPop(v3);
  return v8;
}

id sub_239944578(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_mipmapLevelCount(a1, v3, v4, v5, v6, v7);
  v18 = objc_msgSend_initWithCapacity_(v2, v9, v8, v10, v11, v12);
  if (!v18 || !objc_msgSend_mipmapLevelCount(a1, v13, v14, v15, v16, v17))
  {
    return v18;
  }

  v24 = 0;
  while (1)
  {
    v25 = objc_msgSend_pixelFormat(a1, v19, v20, v21, v22, v23);
    v27 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a1, v26, v25, 2, v24, 1, 0, 1);
    if (!v27)
    {
      break;
    }

    v31 = v27;
    objc_msgSend_setObject_atIndexedSubscript_(v18, v28, v27, v24, v29, v30);

    if (++v24 >= objc_msgSend_mipmapLevelCount(a1, v32, v33, v34, v35, v36))
    {
      return v18;
    }
  }

  return 0;
}

uint64_t sub_239944654(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50[0] = xmmword_239983230;
  v50[1] = xmmword_239983240;
  v50[2] = xmmword_239983250;
  v50[3] = xmmword_239983260;
  v50[4] = xmmword_239983270;
  v50[5] = xmmword_239983280;
  v50[6] = xmmword_239983290;
  v50[7] = xmmword_2399832A0;
  v51 = objc_msgSend_width(a2, a2, a3, a4, a5, a6);
  v52 = objc_msgSend_height(a2, v10, v11, v12, v13, v14);
  v53 = -1;
  v20 = objc_msgSend_width(a2, v15, v16, v17, v18, v19);
  v21 = (2 * *(a1 + 92) * *(a1 + 100) * *(a1 + 112));
  v22 = (v20 + v21 - 1) / v21;
  v28 = objc_msgSend_height(a2, v23, v24, v25, v26, v27);
  v29 = (2 * *(a1 + 88) * *(a1 + 96) * *(a1 + 108));
  v30 = (v28 + v29 - 1) / v29;
  objc_msgSend_setTexture_atIndex_(*(a1 + 32), v31, a2, 0, v32, v33);
  objc_msgSend_setTexture_atIndex_(*(a1 + 32), v34, a3, 1, v35, v36);
  objc_msgSend_setTexture_atIndex_(*(a1 + 32), v37, a4, 2, v38, v39);
  objc_msgSend_setBytes_length_atIndex_(*(a1 + 32), v40, v50, 144, 0, v41);
  v42 = *(a1 + 32);
  v49[0] = v22;
  v49[1] = v30;
  v49[2] = 1;
  v47 = *(a1 + 40);
  v48 = *(a1 + 56);
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v43, v49, &v47, v44, v45);
}

uint64_t sub_239944860(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + *MEMORY[0x277CD7378]);
  v9 = *(a1 + *MEMORY[0x277CD7350]);
  v10 = *(a1 + *MEMORY[0x277CD7370]);
  v11 = *(a1 + 160);
  v110 = *(a6 + 16);
  v12 = *(a6 + 40);
  v14 = *a6;
  v13 = *(a6 + 8);
  if (*a6 == v13)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v19 = a3;
    v20 = a5;
    v104 = *(a6 + 40);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v12 = v104;
    a3 = v19;
    a5 = v20;
    if (isEqual)
    {
      return -18;
    }
  }

  v15 = v12.i64[1];
  v16 = v12.i64[0];
  if (v12.i64[1])
  {
    v17 = v12.i64[0] == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    return 0;
  }

  v22 = *v14;
  v23 = *v13;
  if ((*v14 & 0x40000000000) != 0)
  {
    LODWORD(v22) = ((v23 ^ v22) & 0x10000000000) == 0;
    if (BYTE4(v22) >= BYTE4(v23))
    {
      LODWORD(v22) = 0;
    }

    if ((v23 & 0x40000000000) != 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }
  }

  else if ((v23 & 0x60000000000) != 0 || BYTE4(v23) < BYTE4(v22))
  {
    v24 = 0;
  }

  else if (v8)
  {
    v24 = 1;
  }

  else
  {
    v24 = 1;
    if (BYTE4(v23) == 11 && v12.i64[1] * v12.i64[0] >= 0xFFE1uLL)
    {
      v96 = a3;
      v101 = a5;
      v106 = v12;
      v32 = MTLReportFailureTypeEnabled();
      v12 = v106;
      a3 = v96;
      a5 = v101;
      if (v32)
      {
        v24 = 1;
        MTLReportFailure();
        v12 = v106;
        a3 = v96;
        a5 = v101;
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    if ((v24 & 1) == 0)
    {
      v98 = a3;
      v102 = a5;
      v108 = v12;
      v93 = MTLReportFailureTypeEnabled();
      v12 = v108;
      a3 = v98;
      a5 = v102;
      if (v93)
      {
        MTLReportFailure();
        v12 = v108;
        a3 = v98;
        a5 = v102;
      }
    }

    if ((*(v13 + 5) & 2) != 0)
    {
      v99 = a3;
      v103 = a5;
      v109 = v12;
      v94 = MTLReportFailureTypeEnabled();
      v12 = v109;
      a3 = v99;
      a5 = v103;
      if (v94)
      {
        MTLReportFailure();
        v12 = v109;
        a3 = v99;
        a5 = v103;
      }
    }
  }

  if (!v24)
  {
    return -7;
  }

  v25 = *v13;
  if ((*v13 & 0x20000000000) != 0)
  {
    return -7;
  }

  v26 = *v14;
  if ((*v14 & 0x40000000000) != 0)
  {
    v30 = BYTE3(v25) & 0xF;
    v28 = v9;
    switch(v30)
    {
      case 4u:
        v105 = v12;
        v95 = a3;
        v100 = a5;
        v33 = (v26 & 0x10000000000) == 0;
        v29 = 123;
        break;
      case 2u:
        v105 = v12;
        v95 = a3;
        v100 = a5;
        v33 = (v26 & 0x10000000000) == 0;
        v29 = 103;
        break;
      case 1u:
        v105 = v12;
        v95 = a3;
        v100 = a5;
        v17 = (v26 & 0x10000000000) == 0;
        v29 = 53;
        if (!v17)
        {
          v29 = 54;
        }

        goto LABEL_48;
      default:
        return -7;
    }

    if (!v33)
    {
      ++v29;
    }

    goto LABEL_48;
  }

  v27 = BYTE3(v25) & 0xF;
  if (v27 > 4)
  {
    return -7;
  }

  v28 = v9;
  v105 = v12;
  v95 = a3;
  v100 = a5;
  v29 = qword_239983350[v27];
LABEL_48:
  if ((v8 & 2) != 0)
  {
    v34 = *v13 & 0x3FF;
  }

  else
  {
    v34 = v29;
  }

  PixelInfo = MPSDevice::GetPixelInfo(v28, v34, MPSImageFeatureChannelFormatNone);
  MEMORY[0x23EE7BAC0](v127, v95, v100);
  v125 = v105;
  v126 = 1;
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v35 = *(v14 + 3) & 0xF;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    goto LABEL_54;
  }

  objc_msgSend_setComputePipelineState_(a2, v36, ComputeState, v37, v38, v39);
  v46 = objc_msgSend_threadExecutionWidth(ComputeState, v41, v42, v43, v44, v45);
  MPSLibrary::ReleaseComputeState();
  v47 = vmovn_s64(*(a6 + 64));
  v121[1] = v47.i16[2];
  v121[0] = v47.i16[0];
  v122 = 0;
  v48 = vmovn_s64(v105);
  v124 = v48.i16[2];
  *v107.i8 = v48;
  v123 = v48.i16[0];
  objc_msgSend_setTexture_atIndex_(a2, v49, a4, 0, v50, v51);
  objc_msgSend_setTexture_atIndex_(a2, v52, CompressedTempTexture, 1, v53, v54);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v56, Sampler, 0, v57, v58);
  objc_msgSend_setBytes_length_atIndex_(a2, v59, v121, 12, 0, v60);
  v119 = (v16 + v46 - 1) / v46;
  v120 = vdupq_n_s64(1uLL);
  v117 = v46;
  v118 = v120;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v61, &v119, &v117, v62, v63);
  v64 = *(v13 + 3) & 0xF;
  v69 = MPSLibrary::GetComputeState();
  if (v69)
  {
    objc_msgSend_setComputePipelineState_(a2, v65, v69, v66, v67, v68);
    v75 = objc_msgSend_threadExecutionWidth(v69, v70, v71, v72, v73, v74);
    MPSLibrary::ReleaseComputeState();
    v76 = vmovn_s64(v110);
    v112 = 0;
    v114 = v76.i16[2];
    v113 = v76.i16[0];
    v116 = v107.i16[2];
    v115 = v107.i16[0];
    objc_msgSend_setTexture_atIndex_(a2, v77, CompressedTempTexture, 0, v78, v79);
    objc_msgSend_setTexture_atIndex_(a2, v80, v100, 1, v81, v82);
    v83 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v84, v83, 0, v85, v86);
    objc_msgSend_setBytes_length_atIndex_(a2, v87, &v112, 12, 0, v88);
    v119 = (v15 + v75 - 1) / v75;
    v120 = vdupq_n_s64(1uLL);
    v117 = v75;
    v118 = v120;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v89, &v119, &v117, v90, v91);
    v92 = 0;
  }

  else
  {
LABEL_54:
    v92 = -1;
  }

  MPSAutoCache::~MPSAutoCache(v127);
  return v92;
}

uint64_t sub_239945034(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, float a8, uint64_t a9, __int128 *a10)
{
  v11 = a6;
  v13 = a3;
  v15 = a1;
  v16 = *(a7 + 24);
  v52 = *(a7 + 16);
  v18 = *(a7 + 40);
  v17 = *(a7 + 48);
  v19 = *a7;
  v20 = *(a7 + 8);
  if (*a7 == v20)
  {
    if (a5 == a6)
    {
      return -18;
    }

    v22 = *(a7 + 24);
    v16 = *(a7 + 48);
    v23 = *(a7 + 40);
    isEqual = objc_msgSend_isEqual_(a5, a2, a6, a4, a5, a6);
    v15 = a1;
    v11 = a6;
    v18 = v23;
    v17 = v16;
    LOWORD(v16) = v22;
    v13 = a3;
    if (isEqual)
    {
      return -18;
    }
  }

  v21 = BYTE3(*v20) & 0xF;
  if (v21 != 1 && v21 != 2 && (*(v15 + 1477) & 4) != 0)
  {
    if ((*v20 & 0xFC00uLL) > 0x1000 && *(v15 + 1472) > 6)
    {
      v28 = 16;
      goto LABEL_20;
    }

    if (BYTE4(*v19) <= 8uLL && (*v19 & 0x60000000000) == 0x20000000000)
    {
      *(v15 + 1472);
    }
  }

  v28 = 32;
LABEL_20:
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    return -1;
  }

  objc_msgSend_setComputePipelineState_(v13, v31, ComputeState, v32, v33, v34);
  MPSLibrary::ReleaseComputeState();
  v35 = vmovn_s64(*(a7 + 64));
  v56[1] = v35.i16[2];
  v56[0] = v35.i16[0];
  v56[3] = v16;
  v56[2] = v52;
  v56[5] = v17;
  v56[4] = v18;
  v57 = a8;
  v58 = *a10;
  v59 = *(a10 + 4);
  objc_msgSend_setTexture_atIndex_(v13, v36, a5, 0, v37, v38);
  objc_msgSend_setTexture_atIndex_(v13, v39, v11, 1, v40, v41);
  objc_msgSend_setBytes_length_atIndex_(v13, v42, v56, 36, 0, v43);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v13, v45, Sampler, 0, v46, v47);
  v55[0] = (v18 + v28 - 1) / v28;
  v55[1] = (v17 + v28 - 1) / v28;
  v55[2] = 1;
  v53 = vdupq_n_s64(0x10uLL);
  v54 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v13, v48, v55, &v53, v49, v50);
  return 0;
}

uint64_t sub_239945368(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 48))
  {
    v6 = *(a6 + 40) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return sub_239945034(*(a1 + *MEMORY[0x277CD7350]), *(a1 + *MEMORY[0x277CD7370]), a2, a4, a4, a5, a6, *(a1 + 208), *(a1 + 160), &xmmword_2399833C8);
  }
}

void sub_239947308(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_23994744C(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void **sub_23994744C(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5, a6);

  return a1;
}

unint64_t sub_239947598@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, char a6@<W6>, unint64_t *a7@<X8>)
{
  if ((a6 & 1) == 0)
  {
    v31 = a4;
    v11 = *a1;
    v14 = *(a1 + 8);
    v28 = *(a1 + 16);
    v32 = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, a1, a2, a3, a4, a5);
    result = objc_msgSend_threadExecutionWidth(a5, v33, v34, v35, v36, v37);
    v38 = v14 * v11;
    if (v14 * v11 <= v32)
    {
      if (!(v38 % result))
      {
        goto LABEL_44;
      }

      v39 = v32 / result;
      if (v31)
      {
        goto LABEL_37;
      }
    }

    else
    {
      while (v38 > result)
      {
        if (--v38 <= v32 && (v38 & (result - 1)) == 0)
        {
          break;
        }
      }

      v39 = v38 / result;
      if (v31)
      {
LABEL_37:
        if (result <= v39)
        {
          v11 = v39;
        }

        else
        {
          v11 = result;
        }

        if (result >= v39)
        {
          v14 = v39;
        }

        else
        {
          v14 = result;
        }

LABEL_43:
        v28 = 1;
        goto LABEL_44;
      }
    }

    if (result >= v39)
    {
      v11 = v39;
    }

    else
    {
      v11 = result;
    }

    if (result <= v39)
    {
      v14 = v39;
    }

    else
    {
      v14 = result;
    }

    goto LABEL_43;
  }

  v9 = 0x10 / a2;
  if (a2 > 0x10)
  {
    v9 = 1;
  }

  v10 = (1 << -__clz(v9));
  if ((v9 & (v9 - 1)) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = 0x10 / a3;
  if (a3 > 0x10)
  {
    v12 = 1;
  }

  v13 = (1 << -__clz(v12));
  if ((v12 & (v12 - 1)) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 * v11;
  if (v15 % objc_msgSend_threadExecutionWidth(a5, a1, a2, a3, a4, a5))
  {
    do
    {
      v21 = v11 <= v14;
      v14 <<= v11 > v14;
      v11 <<= v21;
      v15 = v11 * v14;
    }

    while (v11 * v14 % objc_msgSend_threadExecutionWidth(a5, v16, v17, v18, v19, v20));
  }

  result = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, v16, v17, v18, v19, v20);
  v28 = 1;
  if (v15 > result && v14 >= 2)
  {
    v28 = 1;
    do
    {
      v29 = v14;
      v14 >>= 1;
      result = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, v23, v24, v25, v26, v27);
    }

    while (v14 * v11 > result && v29 > 3);
  }

LABEL_44:
  *a7 = v11;
  a7[1] = v14;
  a7[2] = v28;
  return result;
}

__n128 sub_23994774C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a4;
  v10 = objc_msgSend_maxTotalThreadsPerThreadgroup(a5, a1, a2, a3, a4, a5);
  v16 = objc_msgSend_threadExecutionWidth(a5, v11, v12, v13, v14, v15);
  v17 = *(a1 + 8) * *a1;
  if (v17 > v10)
  {
    while (v17 > v16)
    {
      if (--v17 <= v10 && (v17 & (v16 - 1)) == 0)
      {
        break;
      }
    }

    v18 = v17 / v16;
    if (v16 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (v16 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    if (v7)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (!v7)
    {
      v19 = v20;
    }

LABEL_32:
    *a1 = v21;
    *(a1 + 8) = v19;
    *(a1 + 16) = 1;
    goto LABEL_33;
  }

  if (v17 % v16)
  {
    v19 = v10 / v16;
    if (v7)
    {
      if (v16 <= v10 / v16)
      {
        v21 = v10 / v16;
      }

      else
      {
        v21 = v16;
      }

      if (v16 < v10 / v16)
      {
        v19 = v16;
      }
    }

    else
    {
      if (v16 >= v10 / v16)
      {
        v21 = v10 / v16;
      }

      else
      {
        v21 = v16;
      }

      if (v16 > v10 / v16)
      {
        v19 = v16;
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  result = *a1;
  *a6 = *a1;
  *(a6 + 16) = *(a1 + 16);
  return result;
}

uint64_t sub_239947840@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 12);
  v6 = 63 - __clz(v5);
  v7 = v5 == 0;
  v8 = 0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = *(a2 + 8) >> v8;
  v10 = 3 * (31 - __clz(v9));
  if (!v9)
  {
    v10 = 0;
  }

  v12 = *(a2 + 20);
  v11 = *(a2 + 24);
  v13 = 31 - __clz(v11);
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 29);
  if (v3 == 1 && v4 == 1)
  {
    *(a2 + 29) = 0;
    *a3 = xmmword_239983450;
    *(a3 + 16) = vdupq_n_s64(0x10uLL);
    *(a3 + 32) = 774;
    return result;
  }

  if ((v3 == 1 || v4 == 1 || v3 == v4) && (v3 < 0xA || v4 < 0xA))
  {
    v24 = v3 == 1 && v4 > 9;
    v25 = v4 - 1;
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v3 > 9;
    }

    if (!v26 && !v24)
    {
      v27 = v10 + v8;
      v28 = 12 * (31 - __clz(v12 >> v14));
      v29 = dword_239983460[5 * (v25 >> 1) + ((v3 - 1) >> 1)];
      if (!(v12 >> v14))
      {
        v28 = 0;
      }

      v16 = 648 * (*(a2 + 16) ^ 1) + 324 * (*(a2 + 28) ^ 1) + v28 + 36 * v27 + v29;
      v7 = v15 == 0;
      v30 = 8;
      if (!v7)
      {
        v30 = 16;
      }

      v17 = *(result + v30);
      goto LABEL_18;
    }

    if (v24)
    {
      v31 = 3;
    }

    else
    {
      v31 = 0;
    }

    v16 = v8 + v31 + 6 * v15;
  }

  else
  {
    *(a2 + 29) = 0;
    v16 = v8 + 12;
  }

  v17 = &unk_2399885C4;
LABEL_18:
  v18 = &v17[8 * v16];
  v19 = *v18;
  v20 = (v19 >> 8) & 0xF;
  LODWORD(v21) = (((v19 >> 8) & 0xE0) + 32) / (v20 + 1);
  if ((v19 & 0x1000) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = (v20 + 1);
  }

  if ((v19 & 0x1000) != 0)
  {
    v21 = (v20 + 1);
  }

  else
  {
    v21 = v21;
  }

  *a3 = (v19 & 0xF) + 1;
  *(a3 + 8) = (v19 >> 4) + 1;
  *(a3 + 16) = v22;
  *(a3 + 24) = v21;
  *(a3 + 32) = *(v18 + 2);
  return result;
}

uint64_t sub_239947F3C(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v261 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v211 = *(a1 + 256);
  v212 = *(a1 + 248);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = MEMORY[0x277CD7370];
  v202 = *a6;
  v203 = *(a6 + 8);
  v208 = *(a1 + *MEMORY[0x277CD7370]);
  v14 = *(a1 + 160);
  _S8 = *(a1 + 264);
  v16 = objc_msgSend_width(a4, a2, a3, a4, a5, a6);
  v209 = a4;
  v22 = objc_msgSend_height(a4, v17, v18, v19, v20, v21);
  result = 0;
  v255 = v16;
  v256 = v22;
  v257 = 1;
  v24 = *(a6 + 48);
  *v254 = *(a6 + 32);
  *&v254[16] = v24;
  v253 = *(a6 + 16);
  if (*&v254[8] && *&v254[16])
  {
    v25 = *(a6 + 64);
    if (v25 <= (v16 + (v212 >> 1)) && v25 + *&v254[8] >= -(v212 >> 1))
    {
      v26 = *(a6 + 72);
      if (v26 <= (v22 + (v211 >> 1)) && v26 + *&v254[16] >= -(v211 >> 1))
      {
        if (*(a1 + 272) == 1)
        {
          v28 = *(*(a1 + 280) + *v13);
          v29 = *(a1 + 232);
          LODWORD(v30) = *(v29 + 4);
          DWORD1(v30) = *(v29 + 12);
          *(&v30 + 1) = *(v29 + 16);
          v258 = v30;
          LODWORD(v259) = *(v29 + 28);
          result = sub_239945034(v12, v28, a2, a3, a4, a5, a6, _S8, v14, &v258);
          goto LABEL_8;
        }

        v201 = a5;
        if ((v11 & 2) != 0)
        {
          v32 = a4;
          v31 = ((*v203 >> 34) & 0x3F) <= 2 && ((*v202 >> 34) & 0x3F) < 3;
        }

        else
        {
          v31 = 0;
          v32 = v209;
        }

        Sampler = MPSDevice::GetSampler();
        v200 = a3;
        v37 = *(v208 + 32);
        if (*(a1 + 268) == 1)
        {
          v235 = sub_239949630(*v203, v12, v31);
          MPSSeparatePassDimensions();
          MEMORY[0x23EE7BAC0](v234, a3, v201);
          (*(*v37 + 32))(v37);
          CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
          objc_msgSend_usage(CompressedTempTexture, v39, v40, v41, v42, v43, v237, v236);
          v44 = sub_2399496AC(*v202);
          v46 = v45;
          v47 = v235;
          v48 = sub_2399496AC(*v203);
          v50 = v49;
          v233 = 0;
          v228.i64[0] = v212 | 0x100000000;
          v228.i64[1] = __PAIR64__(v44, v46);
          LOBYTE(v46) = MPSIsTextureTwiddled();
          v51 = sub_2399496AC(v47);
          LODWORD(v47) = v52;
          LODWORD(v229) = v46;
          HIDWORD(v229) = v52;
          v230 = v51;
          v231 = MPSIsTextureTwiddled();
          v232 = v31;
          v227 = 0;
          LODWORD(v222) = 1;
          *(&v222 + 4) = __PAIR64__(v47, v211);
          HIDWORD(v222) = v51;
          LODWORD(v223) = MPSIsTextureTwiddled();
          HIDWORD(v223) = v50;
          v224 = v48;
          v225 = MPSIsTextureTwiddled();
          v226 = v31;
          v260 = 0;
          v258 = 0u;
          v259 = 0u;
          (*(*v37 + 16))(&v258, v37, &v228);
          v221 = 0;
          v219 = 0u;
          v220 = 0u;
          (*(*v37 + 16))(&v219, v37, &v222);
          v53 = v232;
          v54 = v226;
          ComputeState = MPSLibrary::GetComputeState();
          if (!ComputeState && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v56 = MPSLibrary::GetComputeState();
          if (!v56 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v57 = v258;
          v217 = 0uLL;
          v218 = 0;
          v215 = v259;
          v216 = 1;
          v58 = *(&v258 + 1);
          (*(*v37 + 24))(&v217, v37, &v215, v258);
          v59 = v217;
          v60 = vmovn_s64(v237[0]);
          v241 = v60.i16[2];
          v240 = v60.i16[0];
          v242 = 0;
          v204 = v238;
          v61 = vmovn_s64(v238);
          v244 = v61.i16[2];
          v243 = v61.i16[0];
          v246 = 0;
          v245 = 0.0;
          v247 = v212;
          objc_msgSend_setComputePipelineState_(a2, v62, ComputeState, v63, v64, v65);
          objc_msgSend_setTexture_atIndex_(a2, v66, v209, 0, v67, v68);
          objc_msgSend_setTexture_atIndex_(a2, v69, CompressedTempTexture, 1, v70, v71);
          objc_msgSend_setBytes_length_atIndex_(a2, v72, &v240, 20, 0, v73);
          v76 = *(a1 + 232);
          if (v76)
          {
            if (v53)
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v74, *(a1 + 240), 2 * v212, 1, v75);
            }

            else
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v74, v76, 4 * v212, 1, v75);
            }
          }

          else
          {
            v80 = 4;
            if (v53)
            {
              v80 = 6;
            }

            v81 = *(a1 + OBJC_IVAR___MPSImageConvolution__fWidth[v80]);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v74, v81, 0, 1, v75);
            sub_2399496F0(v200, v81, v82, v83, v84, v85);
          }

          objc_msgSend_setSamplerState_atIndex_(a2, v77, Sampler, 0, v78, v79);
          *&v215 = (v59 * v57 + v204.i64[0] - 1) / (v59 * v57);
          *(&v215 + 1) = (*(&v59 + 1) * v58 + v204.i64[1] - 1) / (*(&v59 + 1) * v58);
          v216 = 1;
          v213 = v217;
          v214 = v218;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v108, &v215, &v213, v109, v110);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_usage(v201, v111, v112, v113, v114, v115);
          v116 = v219;
          v213 = v220;
          v214 = 1;
          v117 = *(&v219 + 1);
          (*(*v37 + 24))(&v215, v37, &v213, v219);
          v217 = v215;
          v218 = v216;
          v118 = v215;
          v119 = vmovn_s64(v236[0]);
          v241 = v119.i16[2];
          v240 = v119.i16[0];
          v120 = vmovn_s64(v253);
          HIWORD(v242) = v120.i16[2];
          LOWORD(v242) = v120.i16[0];
          v207 = *&v254[8];
          _D0 = vmovn_s64(vaddq_s64(v253, *&v254[8]));
          v244 = _D0.i16[2];
          v243 = _D0.i16[0];
          __asm { FCVT            H0, S8 }

          v246 = _D0.i16[0];
          v245 = _S8;
          v247 = v211;
          objc_msgSend_setComputePipelineState_(a2, v126, v56, v127, v128, v129);
          objc_msgSend_setTexture_atIndex_(a2, v130, CompressedTempTexture, 0, v131, v132);
          objc_msgSend_setTexture_atIndex_(a2, v133, v201, 1, v134, v135);
          objc_msgSend_setBytes_length_atIndex_(a2, v136, &v240, 20, 0, v137);
          v140 = *(a1 + 232);
          if (v140)
          {
            v141 = a2;
            if (v54)
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v138, *(a1 + 240) + 2 * v212, 2 * v211, 1, v139);
            }

            else
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v138, v140 + 4 * v212, 4 * v211, 1, v139);
            }
          }

          else
          {
            v145 = 4;
            if (v54)
            {
              v145 = 6;
            }

            v146 = 1;
            if (!v54)
            {
              v146 = 2;
            }

            v147 = *(a1 + OBJC_IVAR___MPSImageConvolution__fWidth[v145]);
            v141 = a2;
            objc_msgSend_setBuffer_offset_atIndex_(a2, v138, v147, v212 << v146, 1, v139);
            sub_2399496F0(v200, v147, v148, v149, v150, v151);
          }

          objc_msgSend_setSamplerState_atIndex_(v141, v142, Sampler, 0, v143, v144);
          *&v215 = (v118 * v116 + v207 - 1) / (v118 * v116);
          *(&v215 + 1) = (*(&v118 + 1) * v117 + *(&v207 + 1) - 1) / (*(&v118 + 1) * v117);
          v216 = 1;
          v213 = v217;
          v214 = v218;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v141, v152, &v215, &v213, v153, v154);
          MPSLibrary::ReleaseComputeState();
          sub_2399496F0(v200, v209, v155, v156, v157, v158);
          sub_2399496F0(v200, v201, v159, v160, v161, v162);
          MPSAutoCache::~MPSAutoCache(v234);
        }

        else
        {
          if (v32 == v201 || (objc_msgSend_isEqual_(v32, v33, v201, v34, v35, v36) & 1) != 0)
          {
            result = -18;
            goto LABEL_8;
          }

          v86 = sub_2399496AC(*v202);
          v88 = v87;
          v205 = sub_2399496AC(*v203);
          v90 = v89;
          v220 = 0uLL;
          *&v219 = __PAIR64__(v211, v212);
          *(&v219 + 1) = __PAIR64__(v86, v88);
          LOBYTE(v220) = MPSIsTextureTwiddled();
          *(&v220 + 4) = __PAIR64__(v205, v90);
          BYTE12(v220) = MPSIsTextureTwiddled();
          BYTE13(v220) = v31;
          v260 = 0;
          v258 = 0u;
          v259 = 0u;
          (*(*v37 + 16))(&v258, v37, &v219);
          v91 = BYTE13(v220);
          v92 = v260;
          v206 = MPSLibrary::GetComputeState();
          if (!v206 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          objc_msgSend_usage(v201, v93, v94, v95, v96, v97);
          v228 = 0uLL;
          v229 = 0;
          v222 = v259;
          v223 = 1;
          v98 = v258;
          (*(*v37 + 24))(&v228);
          v103 = vmovn_s64(*(a6 + 64));
          v198 = *&v254[8];
          if (v92 - 771 > 2)
          {
            v241 = v103.i16[2];
            v240 = v103.i16[0];
            v163 = vmovn_s64(v253);
            HIWORD(v242) = v163.i16[2];
            _D0 = vmovn_s64(vaddq_s64(v253, *&v254[8]));
            LOWORD(v242) = v163.i16[0];
            v244 = _D0.i16[2];
            v243 = _D0.i16[0];
            __asm { FCVT            H0, S8 }

            v246 = _D0.i16[0];
            v245 = _S8;
            v165 = v212;
            if (v212 == 1)
            {
              v165 = v211;
            }

            v247 = v165;
            v106 = &v240;
            v107 = 20;
          }

          else
          {
            v248[1] = v103.i16[2];
            v104 = vmovn_s64(v253);
            v248[0] = v103.i16[0];
            v248[3] = v104.i16[2];
            v248[2] = v104.i16[0];
            v105 = vmovn_s64(vaddq_s64(v253, *&v254[8]));
            v248[5] = v105.i16[2];
            v248[4] = v105.i16[0];
            v249 = _S8;
            v250 = v258;
            v251 = v212;
            v252 = v211;
            v106 = v248;
            v107 = 24;
          }

          v166 = v228;
          objc_msgSend_setComputePipelineState_(a2, v99, v206, v100, v101, v102);
          objc_msgSend_setTexture_atIndex_(a2, v167, v209, 0, v168, v169);
          objc_msgSend_setTexture_atIndex_(a2, v170, v201, 1, v171, v172);
          objc_msgSend_setBytes_length_atIndex_(a2, v173, v106, v107, 0, v174);
          v177 = *(a1 + 232);
          if (v177)
          {
            if (((v92 < 0x303) & v91) != 0)
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v175, *(a1 + 240), 2 * v211 * v212, 1, v176);
            }

            else
            {
              objc_msgSend_setBytes_length_atIndex_(a2, v175, v177, 4 * v211 * v212, 1, v176);
            }
          }

          else
          {
            v181 = 4;
            if (((v92 < 0x303) & v91) != 0)
            {
              v181 = 6;
            }

            v182 = *(a1 + OBJC_IVAR___MPSImageConvolution__fWidth[v181]);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v175, v182, 0, 1, v176);
            sub_2399496F0(a3, v182, v183, v184, v185, v186);
          }

          objc_msgSend_setSamplerState_atIndex_(a2, v178, Sampler, 0, v179, v180);
          *&v222 = (v166.i64[0] * v98 + v198 - 1) / (v166.i64[0] * v98);
          *(&v222 + 1) = (v166.i64[1] * *(&v98 + 1) + *(&v198 + 1) - 1) / (v166.i64[1] * *(&v98 + 1));
          v223 = 1;
          v238 = v228;
          v239 = v229;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v187, &v222, &v238, v188, v189);
          MPSLibrary::ReleaseComputeState();
          sub_2399496F0(a3, v209, v190, v191, v192, v193);
          sub_2399496F0(a3, v201, v194, v195, v196, v197);
        }
      }
    }

    result = 0;
  }

LABEL_8:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239949630(uint64_t a1, MPSDevice *this, int a3)
{
  if (BYTE4(a1) < 0xBuLL)
  {
    a3 = 1;
  }

  v5 = BYTE3(a1) & 0xF;
  v6 = 55;
  if (a3)
  {
    v6 = 25;
  }

  v7 = 125;
  if (a3)
  {
    v7 = 115;
  }

  v8 = 105;
  if (a3)
  {
    v8 = 65;
  }

  v9 = a3 == 0;
  v10 = 125;
  if (!v9)
  {
    v10 = 115;
  }

  if (v5 == 2)
  {
    v10 = v8;
  }

  if (v5 - 3 < 2)
  {
    v10 = v7;
  }

  if (v5 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  return MPSDevice::GetPixelInfo(this, v11, MPSImageFeatureChannelFormatNone);
}

uint64_t sub_2399496AC(uint64_t a1)
{
  if ((a1 & 0xE000000) != 0)
  {
    v1 = BYTE3(a1) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  if ((BYTE3(a1) & 0xF) == 3)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x800000000000) != 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *sub_2399496F0(void *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v7 = result;
    v8 = objc_msgSend_userDictionary(result, a2, a3, a4, a5, a6);
    v13 = objc_msgSend_objectForKey_(v8, v9, @"_MPSCommandBufferRetainListKey", v10, v11, v12);
    if (!v13)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v8, v19, v18, @"_MPSCommandBufferRetainListKey", v20, v21);

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_23993D978;
      v26[3] = &unk_278AC37A8;
      v26[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v7, v22, v26, v23, v24, v25);
      v13 = v18;
    }

    return objc_msgSend_addObject_(v13, v14, a2, v15, v16, v17);
  }

  return result;
}

uint64_t sub_2399498C0(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v91 = *(a1 + *MEMORY[0x277CD7350]);
  v10 = *(a1 + *MEMORY[0x277CD7370]);
  v90 = *(a1 + 160);
  *&v92.origin.x = *(a1 + 208);
  *&v92.origin.z = *(a1 + 224);
  v11 = *(a1 + 256);
  *&v92.size.height = *(a1 + 240);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_textureType(a4, a2, a3, a4, a5, a6);
    objc_msgSend_textureType(a5, v12, v13, v14, v15, v16);
    v22 = objc_msgSend_textureType(a4, v17, v18, v19, v20, v21);
    if (v22 != objc_msgSend_textureType(a5, v23, v24, v25, v26, v27))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v84 = a4;
        v85 = a5;
        MTLReportFailure();
      }
    }
  }

  v28 = *(a6 + 16);
  v30 = *(a6 + 40);
  v29 = *(a6 + 48);
  v31 = *a6;
  v32 = *(a6 + 8);
  if (*a6 == v32)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v89 = *(a6 + 16);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v28 = v89;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v29)
  {
    if (v30)
    {
      v88 = v28;
      memset(v98, 0, 48);
      v97.width = objc_msgSend_width(a4, a2, a3, a4, a5, a6);
      v97.height = objc_msgSend_height(a4, v34, v35, v36, v37, v38);
      v97.depth = 1;
      v96 = v92;
      MPSGetEffectiveClipRegion(v98[0].i64, &v97, &v96);
      result = -3;
      if (v98[2].i64[0])
      {
        if (v98[1].i64[1])
        {
          v39 = *v31 & 0xF000000;
          if (v39 == 0x4000000)
          {
            v40 = (*v32 & 0xF000000) == 0x1000000;
            v87 = a2;
            v41 = v11 - 1;
            if ((v11 - 1) > 6)
            {
LABEL_10:
              v42 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            v40 = 0;
            v87 = a2;
            v41 = v11 - 1;
            if ((v11 - 1) > 6)
            {
              goto LABEL_10;
            }
          }

          v42 = dword_2399886E8[v41];
LABEL_16:
          ComputeState = MPSLibrary::GetComputeState();
          if (!ComputeState)
          {
            return -1;
          }

          v49 = ComputeState;
          v86 = v40;
          objc_msgSend_setComputePipelineState_(v87, v45, ComputeState, v46, v47, v48);
          v55 = objc_msgSend_threadExecutionWidth(v49, v50, v51, v52, v53, v54);
          MPSLibrary::ReleaseComputeState();
          if ((*v31 & 0xF000000) == 0x1000000)
          {
            v59 = v42;
          }

          else
          {
            v59 = v42 + 1;
          }

          v60 = *(*(*(v10 + 280) + 16 * v59) + 64);
          if (v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v55;
          }

          v62 = 1.0;
          v63 = 0.0;
          if (v11 > 3)
          {
            if (v11 <= 5)
            {
              v64 = v87;
              if (v11 != 4)
              {
                v62 = 1.0 / v98[2].u64[0];
LABEL_37:
                v29 = v30;
                v63 = v62;
LABEL_40:
                v66 = vmovn_s64(v98[0]);
                v93[1] = v66.i16[2];
                v93[0] = v66.i16[0];
                v67 = vmovn_s64(*(&v98[1] + 8));
                v93[3] = v67.i16[2];
                v93[2] = v67.i16[0];
                v68 = vmovn_s64(v88);
                v93[5] = v68.i16[2];
                v93[4] = v68.i16[0];
                v94 = v63;
                v95 = v86;
                objc_msgSend_setTexture_atIndex_(v64, v56, a4, 0, v57, v58, v84, v85);
                objc_msgSend_setTexture_atIndex_(v64, v69, a5, 1, v70, v71);
                objc_msgSend_setBytes_length_atIndex_(v64, v72, v93, 20, 0, v73);
                Sampler = MPSDevice::GetSampler();
                objc_msgSend_setSamplerState_atIndex_(v64, v75, Sampler, 0, v76, v77);
                objc_msgSend_setThreadgroupMemoryLength_atIndex_(v64, v78, 16 * v61, 0, v79, v80);
                v96.origin.x = 1;
                v96.origin.y = v29;
                v96.origin.z = 1;
                v97.width = v61;
                *&v97.height = vdupq_n_s64(1uLL);
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v64, v81, &v96, &v97, v82, v83);
                return 0;
              }

              v62 = 1.0 / v98[1].u64[1];
              goto LABEL_39;
            }

            v64 = v87;
            if (v11 == 6)
            {
              goto LABEL_39;
            }

            v65 = v11 == 7;
          }

          else
          {
            if (v11 <= 1)
            {
              v64 = v87;
              if (v11)
              {
                v65 = v11 == 1;
                goto LABEL_35;
              }

LABEL_39:
              v63 = v62;
              goto LABEL_40;
            }

            v64 = v87;
            if (v11 == 2)
            {
              goto LABEL_39;
            }

            v65 = v11 == 3;
          }

LABEL_35:
          if (!v65)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23994A590(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v291 = *(a6 + 16);
  v9 = *(a6 + 40);
  v295 = *(a6 + 56);
  v297 = *(a6 + 32);
  v10 = *(a1 + 232);
  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = *(a1 + *MEMORY[0x277CD7370]);
  v300 = *(a1 + 160);
  v302 = *(a1 + *MEMORY[0x277CD7378]);
  v293 = *(a1 + 236);
  v13 = *(a1 + 256);
  v305 = v9;
  if (*a6 == *(a6 + 8))
  {
    if (a4 == a5)
    {
      return -18;
    }

    v24 = a3;
    v25 = *(a1 + *MEMORY[0x277CD7350]);
    v26 = *(a1 + 256);
    v27 = *(a1 + *MEMORY[0x277CD7370]);
    v28 = a5;
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v9 = v305;
    a5 = v28;
    v13 = v26;
    v11 = v25;
    v7 = a4;
    a3 = v24;
    if (isEqual)
    {
      return -18;
    }
  }

  v288 = a5;
  v286 = a3;
  v333 = v9;
  v334 = 1;
  v14 = (a6 + 64);
  v15 = *(a6 + 64);
  if (v15 > objc_msgSend_width(v7, a2, a3, a4, a5, a6) + 1)
  {
    return 0;
  }

  v21 = v305.i64[0];
  if (*v14 + v305.i64[0] < -1)
  {
    return 0;
  }

  v22 = *(a6 + 72);
  if (v22 > objc_msgSend_height(v7, v16, v17, v18, v19, v20) + 1 || *(a6 + 72) + v305.i64[1] < -1)
  {
    return 0;
  }

  v284 = **a6 & 0xF000000;
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v30 = MPSLibrary::GetComputeState();
    if (v30)
    {
      v31 = v30;
      v283 = v13;
      v32 = MPSLibrary::GetComputeState();
      if (v32)
      {
        v33 = v32;
        v34 = MPSLibrary::GetComputeState();
        if (v34)
        {
          v280 = v34;
          v281 = MPSLibrary::GetComputeState();
          if (v281)
          {
            v282 = v31;
            v35 = vmovn_s64(v291);
            LOWORD(v36) = v35.i16[0];
            WORD1(v36) = v35.i16[2];
            HIDWORD(v36) = v297;
            v323 = 0;
            v324 = v36;
            v278 = v36;
            v37 = vaddq_s64(v305, v291);
            *v37.i8 = vmovn_s64(v37);
            LOWORD(v38) = v37.i16[0];
            WORD1(v38) = v37.i16[2];
            HIDWORD(v38) = (v295 + v297);
            v289 = v38;
            v325 = v38;
            v37.i64[0] = *(a1 + 208);
            v37.i32[2] = *(a1 + 216);
            LODWORD(v38) = *(a1 + 220);
            v326 = v37;
            v37.i32[0] = *(a1 + 224);
            v327 = v38;
            v328 = v37.i32[0];
            v329 = v293;
            v39 = v11;
            Sampler = MPSDevice::GetSampler();
            MEMORY[0x23EE7BAC0](v322, v286, 0);
            v321 = 0;
            v41 = (v302 >> 1) & 1;
            v303 = v39;
            v321 = sub_23994B79C(**a6, v41, v39);
            CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
            v305.i64[0] = MPSAutoCache::GetTempBuffer(v322, 12, 0);
            TempBuffer = MPSAutoCache::GetTempBuffer(v322, 8, 0);
            v299 = MPSAutoCache::GetTempBuffer(v322, 4, 0);
            v290 = MPSAutoCache::GetTempBuffer(v322, 0x8000, 0);
            v48 = objc_msgSend_pixelFormat(CompressedTempTexture, v43, v44, v45, v46, v47);
            v319 = 0;
            PixelInfo = MPSDevice::GetPixelInfo(v303, v48, MPSImageFeatureChannelFormatNone);
            v309 = *a6;
            p_PixelInfo = &PixelInfo;
            v311 = 0;
            v312 = 0;
            v313 = 0;
            v314 = v21;
            v315 = v305.i64[1];
            v316 = 1;
            v317 = *v14;
            v318 = *(a6 + 80);
            sub_23993BB50(*(a1 + 240), a2, v286, v7, CompressedTempTexture, &v309);
            objc_msgSend_setComputePipelineState_(a2, v49, ComputeState, v50, v51, v52);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(a2, v53, CompressedTempTexture, 0, v54, v55);
            objc_msgSend_setTexture_atIndex_(a2, v56, v288, 1, v57, v58);
            objc_msgSend_setSamplerState_atIndex_(a2, v59, Sampler, 0, v60, v61);
            objc_msgSend_setBytes_length_atIndex_(a2, v62, &v323, 80, 0, v63);
            v69 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v64, v65, v66, v67, v68);
            v75 = objc_msgSend_threadExecutionWidth(ComputeState, v70, v71, v72, v73, v74);
            v81 = objc_msgSend_threadExecutionWidth(ComputeState, v76, v77, v78, v79, v80);
            v82 = (v69 & -v75) / v81;
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v83, 16 * v81 * v82, 0, v84, v85);
            v86 = v284 == 0x1000000;
            v298 = v305.i64[1] - 1;
            v296 = v21 - 1;
            *v308 = ((v81 << v86) - 2 + v21 - 1) / ((v81 << v86) - 2);
            *&v308[8] = ((v82 << v86) - 2 + v305.i64[1] - 1) / ((v82 << v86) - 2);
            *&v308[16] = 1;
            v306 = v81;
            v307.i64[0] = v82;
            v307.i64[1] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v87, v308, &v306, v88, v89);
            v95 = objc_msgSend_maxTotalThreadsPerThreadgroup(v282, v90, v91, v92, v93, v94);
            v101 = objc_msgSend_threadExecutionWidth(v282, v96, v97, v98, v99, v100);
            v107 = v101;
            v108 = v95 & -v101;
            if (v101 > 0x100 || v108 <= 0xFF)
            {
              v109 = v108 / v101;
            }

            else
            {
              v107 = 16;
              v109 = 16;
            }

            v292 = Sampler;
            v294 = v33;
            v110 = objc_msgSend_contents(*(a1 + 248), v102, v103, v104, v105, v106, v278);
            v111 = (2 * v107 + v296) / (2 * v107);
            v112 = (2 * v109 + v298) / (2 * v109);
            *v110 = v111;
            v110[1] = v112;
            v110[2] = 1;
            v113 = MPSLibrary::GetComputeState();
            objc_msgSend_setComputePipelineState_(a2, v114, v113, v115, v116, v117);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setBuffer_offset_atIndex_(a2, v118, *(a1 + 248), 0, 0, v119);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v120, v305.i64[0], 0, 1, v121);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v122, TempBuffer, 0, 2, v123);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v124, v299, 0, 3, v125);
            v131 = objc_msgSend_threadExecutionWidth(v113, v126, v127, v128, v129, v130);
            v135 = vdupq_n_s64(1uLL);
            *v308 = v135;
            if (v131 <= 1)
            {
              v136 = 1;
            }

            else
            {
              v136 = v131;
            }

            *&v308[16] = 1;
            v306 = v136;
            v307 = v135;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v132, v308, &v306, v133, v134);
            v141 = vcvtps_u32_f32(v10 * (v112 * v111));
            if (*(a1 + 228))
            {
              v142 = v141;
            }

            else
            {
              v142 = v112 * v111;
            }

            v331 = v142;
            v323 = v279;
            v324 = v279;
            v325 = v289;
            v332 = 4096;
            if ((*(v303 + 1477) & 0x80) != 0)
            {
              if (v283)
              {
                v164 = 2;
              }

              else
              {
                v164 = 1;
              }

              if (v283)
              {
                v165 = 4096;
              }

              else
              {
                v165 = 0;
              }

              objc_msgSend_encodeStartWhile_offset_comparison_referenceValue_(a2, v137, TempBuffer, 0, v164, v165);
              objc_msgSend_setComputePipelineState_(a2, v166, v294, v167, v168, v169);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v170, TempBuffer, 0, 0, v171);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v172, v299, 0, 1, v173);
              *v308 = vdupq_n_s64(1uLL);
              *&v308[16] = 1;
              v306 = objc_msgSend_threadExecutionWidth(v294, v174, v175, v176, v177, v178);
              v307 = vdupq_n_s64(1uLL);
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v179, v308, &v306, v180, v181);
              objc_msgSend_setComputePipelineState_(a2, v182, v282, v183, v184, v185);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v186, v305.i64[0], 0, 1, v187);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v188, TempBuffer, 0, 2, v189);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v190, v299, 0, 3, v191);
              if (v283)
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v192, v290, 0, 4, v194);
              }

              objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v192, 4 * v107 * v109 + 16, 0, v193, v194);
              objc_msgSend_setTexture_atIndex_(a2, v195, v288, 0, v196, v197);
              objc_msgSend_setTexture_atIndex_(a2, v198, v288, 1, v199, v200);
              objc_msgSend_setSamplerState_atIndex_(a2, v201, v292, 0, v202, v203);
              objc_msgSend_setBytes_length_atIndex_(a2, v204, &v323, 80, 0, v205);
              *v308 = (2 * v107 + v296) / (2 * v107);
              *&v308[8] = (2 * v109 + v298) / (2 * v109);
              *&v308[16] = 1;
              v306 = v107;
              v307.i64[0] = v109;
              v307.i64[1] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v206, v308, &v306, v207, v208);
              objc_msgSend_encodeEndWhile(a2, v209, v210, v211, v212, v213);
              if (v283)
              {
                objc_msgSend_setComputePipelineState_(a2, v214, v280, v215, v216, v217);
                objc_msgSend_setTexture_atIndex_(a2, v218, v288, 0, v219, v220);
                objc_msgSend_setBytes_length_atIndex_(a2, v221, &v323, 80, 0, v222);
                objc_msgSend_setBuffer_offset_atIndex_(a2, v223, v290, 0, 1, v224);
                objc_msgSend_setBuffer_offset_atIndex_(a2, v225, TempBuffer, 0, 2, v226);
                v227 = v332;
                *v308 = v227 / objc_msgSend_threadExecutionWidth(v280, v228, v229, v230, v231, v232);
                *&v308[8] = vdupq_n_s64(1uLL);
                v306 = objc_msgSend_threadExecutionWidth(v280, v233, v234, v235, v236, v237);
                v307 = vdupq_n_s64(1uLL);
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v238, v308, &v306, v239, v240);
              }
            }

            else
            {
              objc_msgSend_setComputePipelineState_(a2, v137, v282, v138, v139, v140);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v143, v305.i64[0], 0, 1, v144);
              objc_msgSend_setBuffer_offset_atIndex_(a2, v145, TempBuffer, 0, 2, v146);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v147, 4 * v107 * v109 + 16, 0, v148, v149);
              objc_msgSend_setTexture_atIndex_(a2, v150, v288, 0, v151, v152);
              objc_msgSend_setTexture_atIndex_(a2, v153, v288, 1, v154, v155);
              objc_msgSend_setSamplerState_atIndex_(a2, v156, v292, 0, v157, v158);
              if (v142)
              {
                for (i = 0; i != v142; ++i)
                {
                  v330 = i;
                  objc_msgSend_setBytes_length_atIndex_(a2, v159, &v323, 80, 0, v160);
                  *v308 = v107;
                  *&v308[8] = v109;
                  *&v308[16] = 1;
                  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(a2, v162, v305.i64[0], 0, v308, v163);
                }
              }
            }

            MPSLibrary::ReleaseComputeState();
            MPSLibrary::ReleaseComputeState();
            MPSLibrary::ReleaseComputeState();
            MPSAutoCache::~MPSAutoCache(v322);
            v246 = objc_msgSend_maxTotalThreadsPerThreadgroup(v281, v241, v242, v243, v244, v245);
            v252 = objc_msgSend_threadExecutionWidth(v281, v247, v248, v249, v250, v251);
            v257 = v252;
            v258 = v246 & -v252;
            if (v252 <= 1 && v258)
            {
              v257 = 1;
              v259 = 1;
            }

            else
            {
              v259 = v258 / v252;
            }

            objc_msgSend_setComputePipelineState_(a2, v253, v281, v254, v255, v256);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(a2, v260, v288, 0, v261, v262);
            objc_msgSend_setTexture_atIndex_(a2, v263, v288, 1, v264, v265);
            objc_msgSend_setSamplerState_atIndex_(a2, v266, v292, 0, v267, v268);
            objc_msgSend_setBytes_length_atIndex_(a2, v269, &v323, 80, 0, v270);
            v309 = (2 * v257 + v296) / (2 * v257);
            p_PixelInfo = (2 * v259 + v298) / (2 * v259);
            v311 = 1;
            v322[0] = v257;
            v322[1] = v259;
            v322[2] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v271, &v309, v322, v272, v273);
            sub_23994B820(v286, *(a1 + 248), v274, v275, v276, v277);
            return 0;
          }
        }
      }
    }
  }

  return -1;
}

uint64_t sub_23994B79C(uint64_t result, int a2, MPSDevice *this)
{
  if (BYTE4(result) == 8)
  {
    v3 = BYTE3(result) & 0xF;
    if (v3 >= 5)
    {
      return MPSDevice::GetPixelInfo(this, MTLPixelFormatRGBA8Unorm, MPSImageFeatureChannelFormatNone);
    }

    else
    {
      return MPSDevice::GetPixelInfo(this, qword_239988768[v3], MPSImageFeatureChannelFormatNone);
    }
  }

  else if (BYTE4(result) < 0xCu || a2)
  {
    v4 = BYTE3(result) & 0xF;
    if (v4 > 4)
    {
      return MPSDevice::GetPixelInfo(this, MTLPixelFormatRGBA16Float, MPSImageFeatureChannelFormatNone);
    }

    else
    {
      return MPSDevice::GetPixelInfo(this, qword_239988790[v4], MPSImageFeatureChannelFormatNone);
    }
  }

  return result;
}

void *sub_23994B820(void *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v7 = result;
    v8 = objc_msgSend_userDictionary(result, a2, a3, a4, a5, a6);
    v13 = objc_msgSend_objectForKey_(v8, v9, @"_MPSCommandBufferRetainListKey", v10, v11, v12);
    if (!v13)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v8, v19, v18, @"_MPSCommandBufferRetainListKey", v20, v21);

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_23993D9B4;
      v26[3] = &unk_278AC37A8;
      v26[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v7, v22, v26, v23, v24, v25);
      v13 = v18;
    }

    return objc_msgSend_addObject_(v13, v14, a2, v15, v16, v17);
  }

  return result;
}

uint64_t sub_23994B904(MPSDevice *a1, const char *a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, float32x4_t *a7)
{
  if (a3 < 2 || a4 < 2 || a3 == 3 && a4 == 3)
  {
    return 0;
  }

  v8 = 0;
  for (i = 0; i < a4; v8 = ++i)
  {
    v10 = 0;
    v11 = &a2[4 * v8 * a3];
    v12 = 1;
    do
    {
      if ((*&v11[4 * v10] & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        return 0;
      }

      v10 = v12++;
    }

    while (v10 < a3);
  }

  v13 = 0;
  v14 = a2 + 4;
  v15 = 4 * a3;
  v16 = a3 - 1;
  while (2)
  {
    v17 = 0;
    v18 = &a2[4 * v13 * a3];
    v19 = &a2[4 * a3];
    while (v18[v17] != 0.0)
    {
LABEL_14:
      v17 = (v17 + 1);
      ++v19;
      if (v17 >= a3)
      {
        goto LABEL_12;
      }
    }

    if (v17 || *v18 != 0.0)
    {
LABEL_22:
      if (*&a2[4 * v17] != 0.0)
      {
        return 0;
      }

      v22 = 0;
      v23 = v19;
      do
      {
        if (a4 - 1 == v22)
        {
          goto LABEL_14;
        }

        v24 = *v23;
        v23 = (v23 + v15);
        ++v22;
      }

      while (v24 == 0.0);
      if (v22 < a4)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v20 = 0;
    while (v16 != v20)
    {
      v21 = *&v14[4 * v20++];
      if (v21 != 0.0)
      {
        if (v20 >= a3)
        {
          break;
        }

        goto LABEL_22;
      }
    }

LABEL_12:
    v13 = (v13 + 1);
    v14 += v15;
    if (v13 < a4)
    {
      continue;
    }

    break;
  }

  if (a5)
  {
    v32 = objc_msgSend_pixelFormat(a5, a2, a3, a4, a5, a6);
    v33 = -2 - (MPSDevice::GetPixelInfo(a1, v32, MPSImageFeatureChannelFormatNone) >> 32);
  }

  else
  {
    v33 = -11;
  }

  v34 = ldexpf(1.0, v33);
  v35 = 0;
  v36 = a4;
  v37 = a3;
  v38 = 1;
  v39 = a7;
  v40 = a6;
  v41 = a2;
  while (1)
  {
    v42 = *&a2[4 * v35];
    if (v42 != 0.0)
    {
      break;
    }

    v35 = v38++;
    if (a4 * a3 <= v35)
    {
      v42 = *&a2[4 * v35];
      break;
    }
  }

  v43 = v35 / a3;
  v44 = v35 / a3 * a3;
  v45 = v35 % a3;
  v46 = &a2[4 * v44];
  if (a6)
  {
    if (a3 < 0x14)
    {
      goto LABEL_38;
    }

    v48 = 0;
    v47 = 0;
    if (v16 != -1 && !HIDWORD(v16))
    {
      if ((a6 - v46) < 0x20)
      {
LABEL_38:
        v47 = 0;
        v48 = 0;
      }

      else
      {
        v62 = 0;
        v47 = a3 & 0x1FFFFFFF8;
        v48 = a3 & 0xFFFFFFF8;
        v63 = (a6 + 16);
        v64 = a3 & 0x1FFFFFFF8;
        do
        {
          v65 = &v46[4 * v62];
          v66 = *(v65 + 1);
          *(v63 - 1) = *v65;
          *v63 = v66;
          v62 += 8;
          v63 += 2;
          v64 -= 8;
        }

        while (v64);
        v37 = a3;
        v39 = a7;
        v40 = a6;
        v36 = a4;
        v41 = a2;
        if (v47 == a3)
        {
          goto LABEL_41;
        }
      }
    }

    v49 = v48 + 1;
    do
    {
      *(v40 + 4 * v47) = *&v46[4 * v47];
      v47 = v49++;
    }

    while (v47 < v37);
  }

LABEL_41:
  v50 = 0;
  v51 = 0;
  while (2)
  {
    if (v51 == v43)
    {
      v52 = 1.0;
      if (!v39)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v53 = &v41[4 * v50 * v37];
    v54 = *&v53[4 * v45];
    if (v54 == 0.0)
    {
      v52 = 0.0;
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_43:
      v39->f32[v50] = v52;
      goto LABEL_44;
    }

    v55 = 0;
    v56 = 1;
    v52 = v54 / v42;
    do
    {
      if (v56 - v45 != 1)
      {
        v57 = *&v46[4 * v55];
        v58 = *&v53[4 * v55];
        if (v57 == 0.0)
        {
          if (v58 != 0.0)
          {
            return 0;
          }
        }

        else if (fabsf(((v58 / v57) - v52) / v52) > v34)
        {
          return 0;
        }
      }

      v55 = v56++;
    }

    while (v55 < v37);
    if (v39)
    {
      goto LABEL_43;
    }

LABEL_44:
    v50 = ++v51;
    if (v51 < v36)
    {
      continue;
    }

    break;
  }

  v25 = 1;
  if (v40 && v39)
  {
    if (v37 >= 1)
    {
      v59 = v37 & 0x7FFFFFFF;
      if (v59 <= 7)
      {
        v60 = 0;
        v61 = 0;
        goto LABEL_73;
      }

      v60 = v59 - (a3 & 7);
      v67 = a6 + 16;
      v61 = 0;
      v68 = v60;
      do
      {
        *v61.i32 = (((((((*v61.i32 + COERCE_FLOAT(*(v67 - 16))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*(v67 - 8))) + COERCE_FLOAT(HIDWORD(*(v67 - 16)))) + COERCE_FLOAT(*v67)) + COERCE_FLOAT(HIDWORD(*v67))) + COERCE_FLOAT(*(v67 + 8))) + COERCE_FLOAT(HIDWORD(*v67));
        v67 += 32;
        v68 -= 8;
      }

      while (v68);
      if ((a3 & 7) != 0)
      {
LABEL_73:
        v69 = v59 - v60;
        v70 = (a6 + 4 * v60);
        do
        {
          v71 = *v70++;
          *v61.i32 = *v61.i32 + v71;
          --v69;
        }

        while (v69);
      }

      LODWORD(v36) = a4;
      if (*v61.i32 != 0.0)
      {
        if (v59 <= 7)
        {
          v72 = 0;
          goto LABEL_84;
        }

        v72 = v59 - (a3 & 7);
        v76 = vdupq_lane_s32(v61, 0);
        v77 = (a6 + 16);
        v78 = v72;
        do
        {
          v79 = vdivq_f32(*v77, v76);
          v77[-1] = vdivq_f32(v77[-1], v76);
          *v77 = v79;
          v77 += 2;
          v78 -= 8;
        }

        while (v78);
        if ((a3 & 7) != 0)
        {
LABEL_84:
          v80 = v59 - v72;
          v81 = (a6 + 4 * v72);
          do
          {
            *v81 = *v81 / *v61.i32;
            ++v81;
            --v80;
          }

          while (v80);
        }

        if (a4 >= 1)
        {
          v82 = a4 & 0x7FFFFFFF;
          if (v82 <= 7)
          {
            v83 = 0;
            goto LABEL_100;
          }

          v83 = v82 - (a4 & 7);
          v90 = a7 + 1;
          v91 = v83;
          do
          {
            v92 = vmulq_n_f32(*v90, *v61.i32);
            v90[-1] = vmulq_n_f32(v90[-1], *v61.i32);
            *v90 = v92;
            v90 += 2;
            v91 -= 8;
          }

          while (v91);
          if ((a4 & 7) != 0)
          {
LABEL_100:
            v93 = v82 - v83;
            v94 = &a7->f32[v83];
            v25 = 1;
            do
            {
              *v94 = *v61.i32 * *v94;
              ++v94;
              --v93;
            }

            while (v93);
            return v25;
          }
        }

        return 1;
      }
    }

    if (v36 < 1)
    {
      return 1;
    }

    v73 = a4 & 0x7FFFFFFF;
    if (v73 <= 7)
    {
      v74 = 0;
      v75 = 0;
      goto LABEL_92;
    }

    v74 = v73 - (a4 & 7);
    v84 = a7 + 1;
    v75 = 0;
    v85 = v74;
    do
    {
      *v75.i32 = (((((((*v75.i32 + COERCE_FLOAT(*&v84[-1])) + COERCE_FLOAT(HIDWORD(v84[-1].i64[0]))) + COERCE_FLOAT(v84[-1].i64[1])) + COERCE_FLOAT(HIDWORD(*&v84[-1]))) + COERCE_FLOAT(*v84)) + COERCE_FLOAT(HIDWORD(v84->i64[0]))) + COERCE_FLOAT(v84->i64[1])) + COERCE_FLOAT(HIDWORD(*v84));
      v84 += 2;
      v85 -= 8;
    }

    while (v85);
    if ((a4 & 7) != 0)
    {
LABEL_92:
      v86 = v73 - v74;
      v87 = &a7->f32[v74];
      do
      {
        v88 = *v87++;
        *v75.i32 = *v75.i32 + v88;
        --v86;
      }

      while (v86);
    }

    if (*v75.i32 == 0.0)
    {
      return 1;
    }

    if (v73 <= 7)
    {
      v89 = 0;
      goto LABEL_106;
    }

    v89 = v73 - (a4 & 7);
    v95 = vdupq_lane_s32(v75, 0);
    v96 = a7 + 1;
    v97 = v89;
    do
    {
      v98 = vdivq_f32(*v96, v95);
      v96[-1] = vdivq_f32(v96[-1], v95);
      *v96 = v98;
      v96 += 2;
      v97 -= 8;
    }

    while (v97);
    if ((a4 & 7) != 0)
    {
LABEL_106:
      v99 = v73 - v89;
      v100 = &a7->f32[v89];
      do
      {
        *v100 = *v100 / *v75.i32;
        ++v100;
        --v99;
      }

      while (v99);
    }

    if (a3 < 1)
    {
      return 1;
    }

    v101 = a3 & 0x7FFFFFFF;
    if (v101 > 7)
    {
      v102 = v101 - (a3 & 7);
      v103 = (a6 + 16);
      v104 = v102;
      do
      {
        v105 = vmulq_n_f32(*v103, *v75.i32);
        v103[-1] = vmulq_n_f32(v103[-1], *v75.i32);
        *v103 = v105;
        v103 += 2;
        v104 -= 8;
      }

      while (v104);
      if ((a3 & 7) == 0)
      {
        return 1;
      }
    }

    else
    {
      v102 = 0;
    }

    v106 = v101 - v102;
    v107 = (a6 + 4 * v102);
    v25 = 1;
    do
    {
      *v107 = *v75.i32 * *v107;
      ++v107;
      --v106;
    }

    while (v106);
  }

  return v25;
}

uint64_t sub_23994C3F4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v12 = MEMORY[0x277CD7350];
  v13 = *(a1 + *MEMORY[0x277CD7350]);
  v14 = objc_msgSend_pixelFormat(a3, a2, a3, a4, a5, a6);
  result = MPSDevice::GetPixelInfo(v13, v14, MPSImageFeatureChannelFormatNone);
  v20 = result >> 10;
  if ((~result & 0xA00000000000) == 0 && a2 != a3 && v20 != 0)
  {
    v23 = result;
    result = objc_msgSend_isEqual_(a2, v16, a3, v17, v18, v19);
    if ((result & 1) == 0)
    {
      v24 = *(a1 + 208);
      v25 = *(a1 + *v12);
      v26 = 24;
      if (v25)
      {
        if (*(v25 + 1472) >= 8)
        {
          v26 = 24;
        }

        else
        {
          v26 = 9;
        }
      }

      v27 = v24 >> 1;
      if (v24 <= 9)
      {
        v28 = v27;
      }

      else
      {
        v28 = 5;
      }

      if (v26 <= v27)
      {
        v28 = 6;
      }

      v29 = *(*(*(*(a1 + *MEMORY[0x277CD7370]) + 280) + 16 * v28 + 112 * byte_2399887B8[(v23 >> 24) & 0xF]) + 64);
      if (v29)
      {
        v30 = __clz(v20) + v29 - 63;
        v31 = v30 & ~(v30 >> 63);
        v32 = (v31 + 1) >> 1;
        v33 = 1 << (v31 - v32);
        v34 = 1 << v32;
        if ((1 << v32) >= *(a4 + 40))
        {
          v34 = *(a4 + 40);
        }

        v35 = v30 <= v32;
        v36 = 2;
        if (!v35)
        {
          v36 = v33;
        }

        if (v36 >= *(a4 + 48))
        {
          v36 = *(a4 + 48);
        }

        *a7 = v34;
        a7[1] = v36;
      }
    }
  }

  return result;
}

uint64_t sub_23994C584(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 216);
  v9 = *(a1 + 208);
  v10 = *(a1 + 224);
  v11 = *(a1 + 228);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  if (*(a1 + *MEMORY[0x277CD7378]))
  {
    v14 = *(a1 + 208);
  }

  else
  {
    if ((v8 & v9 & 1) == 0)
    {
      v150 = a2;
      v136 = a3;
      v137 = MTLReportFailureTypeEnabled();
      a3 = v136;
      a2 = v150;
      if (v137)
      {
        v141 = v8;
        v145 = v9;
        MTLReportFailure();
        a3 = v136;
        a2 = v150;
      }
    }

    v14 = v9 | 1;
    v8 |= 1uLL;
  }

  result = 0;
  v16 = *(a6 + 8);
  v155 = *a6;
  v17 = *(a6 + 48);
  *v176 = *(a6 + 32);
  *&v176[16] = v17;
  v175 = *(a6 + 16);
  if (!v17 || !*&v176[8])
  {
    return result;
  }

  v152 = v16;
  v153 = v12;
  v151 = a5;
  v149 = a2;
  v18 = *v16;
  v19 = v10;
  if (((v18 >> 34) & 0x3F) <= 2)
  {
    if (((*v155 >> 34) & 0x3FuLL) >= 3)
    {
      v19 = v10;
    }

    else
    {
      v19 = v11;
    }
  }

  v20 = v14;
  if (v14 == v8)
  {
    v21 = v19 + 112;
    v22 = (v18 >> 24) & 0xF;
    v23 = 24;
    if (v12)
    {
      v24 = a3;
      v23 = *(v12 + 1472) >= 8 ? 24 : 9;
    }

    else
    {
      v24 = a3;
    }

    v25 = byte_2399887B8[v22];
    v26 = v14 <= 9u ? v14 >> 1 : 5;
    v27 = v23 <= v14 >> 1 ? 6 : v26;
    v28 = objc_msgSend_UTF8String(**(*(v13 + 280) + 16 * (v27 + v21 - v25 + 8 * v25)), a2, a3, a4, a5, a6, v141, v145);
    v29 = strstr(v28, "SinglePass");
    a3 = v24;
    if (v29)
    {
      if (a4 != v151 && (objc_msgSend_isEqual_(a4, a2, v151, a4, a5, a6) & 1) == 0)
      {
        if (v12)
        {
          *(v12 + 1472);
        }

        v30 = byte_2399887B8[(*v152 >> 24) & 0xF];
        ComputeState = MPSLibrary::GetComputeState();
        v32 = vmovn_s64(v175);
        *&v172 = vcvt_f32_f64(vcvtq_f64_s64(*(a6 + 64)));
        WORD5(v172) = v32.i16[2];
        WORD4(v172) = v32.i16[0];
        HIWORD(v172) = *&v176[16];
        WORD6(v172) = *&v176[8];
        objc_msgSend_setComputePipelineState_(v149, v33, ComputeState, v34, v35, v36);
        objc_msgSend_setTexture_atIndex_(v149, v37, a4, 0, v38, v39);
        objc_msgSend_setTexture_atIndex_(v149, v40, v151, 1, v41, v42);
        objc_msgSend_setBytes_length_atIndex_(v149, v43, &v172, 40, 0, v44);
        MPSLibrary::ReleaseComputeState();
        v50 = (v20 >> 1) - 1;
        if (v50 < 4)
        {
          v51 = qword_239988818[v50];
          v55 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v45, v46, v47, v48, v49) >> 6;
          if (v55 >= 8)
          {
            v55 = 8;
          }

          *v167 = (*&v176[8] + 63) >> 6;
          *&v167[8] = (*&v176[16] + v55 * v51 - 1) / (v55 * v51);
          *&v167[16] = 1;
          *v170 = 64;
          *&v170[8] = v55;
          *&v170[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v149, v52, v167, v170, v53, v54);
          return 0;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v135 = objc_opt_class();
          NSStringFromClass(v135);
          MTLReportFailure();
        }

        return -19;
      }

      return -18;
    }
  }

  if (v8 != 1)
  {
    v56 = a3;
    v160 = objc_msgSend_width(a4, a2, a3, a4, a5, a6);
    v161 = objc_msgSend_height(a4, v57, v58, v59, v60, v61);
    v162 = 1;
    v146 = &v165;
    MPSSeparatePassDimensions();
    MEMORY[0x23EE7BAC0](v159, v56, v151);
    *v167 = vextq_s8(v163, v163, 8uLL);
    *&v167[16] = 1;
    v62 = v152;
    if ((*(v155 + 5) & 0x20) != 0)
    {
      v63 = MPSGetLinearTextureSize2D();
      v62 = v155;
      if (MPSGetLinearTextureSize2D() >= v63)
      {
        v62 = v152;
      }
    }

    TempTexture = MPSAutoCache::GetTempTexture();
    v64 = *v62;
    if (((*v152 >> 34) & 0x3F) > 2)
    {
      v65 = 4;
      v66 = (v64 >> 24) & 0xF;
      v67 = v153;
      if (!v153)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (((*v155 >> 34) & 0x3FuLL) < 3 && v9 > 0x2E)
      {
        v65 = 2;
      }

      else
      {
        v65 = 4;
      }

      v66 = (v64 >> 24) & 0xF;
      v67 = v153;
      if (!v153)
      {
LABEL_47:
        v68 = byte_2399887B8[v66];
        v69 = MPSLibrary::GetComputeState();
        if (!v69)
        {
          goto LABEL_64;
        }

        v157 = v168;
        v158 = v169;
        memset(v167, 0, 24);
        *&v167[24] = v163;
        *&v167[40] = v164;
        sub_23994EE64(v170, v20, &v157, v167, v153, v69, v62, v65, 1);
        v172 = *v170;
        v173 = *&v170[16];
        v174 = v171;
        if (!*&v170[16] && MTLReportFailureTypeEnabled())
        {
          v138 = objc_opt_class();
          v142 = NSStringFromClass(v138);
          v146 = v20;
          MTLReportFailure();
        }

        objc_msgSend_setComputePipelineState_(v149, v70, v69, v71, v72, v73, v142, v146);
        MPSLibrary::ReleaseComputeState();
        objc_msgSend_setTexture_atIndex_(v149, v74, a4, 0, v75, v76);
        objc_msgSend_setTexture_atIndex_(v149, v77, TempTexture, 1, v78, v79);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v149, v80, ((DWORD2(v173) * v174) + 15) & 0x1FFFFFFF0, 0, v81, v82);
        objc_msgSend_setBytes_length_atIndex_(v149, v83, &v172, 40, 0, v84);
        *v167 = v163.i64[1];
        *&v167[8] = vdupq_n_s64(1uLL);
        *v170 = HIDWORD(v173);
        *&v170[8] = *&v167[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v149, v85, v167, v170, v86, v87);
        v88 = *v152;
        if (((*v152 >> 34) & 0x3F) > 2)
        {
          v89 = 4;
          v90 = (v88 >> 24) & 0xF;
          v91 = v153;
          if (!v153)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (((*v155 >> 34) & 0x3FuLL) < 3 && v9 > 0x2E)
          {
            v89 = 2;
          }

          else
          {
            v89 = 4;
          }

          v90 = (v88 >> 24) & 0xF;
          v91 = v153;
          if (!v153)
          {
LABEL_61:
            v93 = byte_2399887B8[v90];
            v94 = MPSLibrary::GetComputeState();
            if (v94)
            {
              *v167 = v175;
              v158 = v166;
              v156 = *&v176[8];
              v157 = vextq_s8(v165, v165, 8uLL);
              *&v167[24] = vextq_s8(v156, v156, 8uLL);
              *&v167[16] = *v176;
              *&v167[40] = *&v176[24];
              sub_23994EE64(v170, v8, &v157, v167, v153, v94, v152, v89, 1);
              v172 = *v170;
              v173 = *&v170[16];
              v174 = v171;
              if (!*&v170[16] && MTLReportFailureTypeEnabled())
              {
                v139 = objc_opt_class();
                v143 = NSStringFromClass(v139);
                v147 = v20;
                MTLReportFailure();
              }

              objc_msgSend_setComputePipelineState_(v149, v95, v94, v96, v97, v98, v143, v147);
              MPSLibrary::ReleaseComputeState();
              objc_msgSend_setTexture_atIndex_(v149, v99, TempTexture, 0, v100, v101);
              objc_msgSend_setTexture_atIndex_(v149, v102, v151, 1, v103, v104);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(v149, v105, ((DWORD2(v173) * v174) + 15) & 0x1FFFFFFF0, 0, v106, v107);
              objc_msgSend_setBytes_length_atIndex_(v149, v108, &v172, 40, 0, v109);
              *v167 = v156.i64[0];
              *&v167[8] = vdupq_n_s64(1uLL);
              *v170 = HIDWORD(v173);
              *&v170[8] = *&v167[8];
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v149, v110, v167, v170, v111, v112);
              v113 = 0;
              goto LABEL_65;
            }

LABEL_64:
            v113 = -1;
LABEL_65:
            MPSAutoCache::~MPSAutoCache(v159);
            return v113;
          }
        }

        *(v91 + 1472);
        goto LABEL_61;
      }
    }

    *(v67 + 1472);
    goto LABEL_47;
  }

  if (a4 == v151 || (objc_msgSend_isEqual_(a4, a2, v151, a4, a5, a6) & 1) != 0)
  {
    return -18;
  }

  if (((*v152 >> 34) & 0x3F) > 2)
  {
    v92 = 4;
  }

  else if (((*v155 >> 34) & 0x3FuLL) < 3 && v9 > 0x2E)
  {
    v92 = 2;
  }

  else
  {
    v92 = 4;
  }

  if (v12)
  {
    *(v12 + 1472);
  }

  v114 = byte_2399887B8[(*v152 >> 24) & 0xF];
  v115 = MPSLibrary::GetComputeState();
  if (v115)
  {
    v120 = v115;
    objc_msgSend_setComputePipelineState_(v149, v116, v115, v117, v118, v119);
    v168 = *(a6 + 64);
    v169 = *(a6 + 80);
    *v167 = v175;
    *&v167[16] = *v176;
    *&v167[32] = *&v176[16];
    sub_23994EE64(v170, v20, &v168, v167, v12, v120, v152, v92, 0);
    v172 = *v170;
    v173 = *&v170[16];
    v174 = v171;
    MPSLibrary::ReleaseComputeState();
    if (!v173 && MTLReportFailureTypeEnabled())
    {
      v140 = objc_opt_class();
      v144 = NSStringFromClass(v140);
      v145 = v20;
      MTLReportFailure();
    }

    objc_msgSend_setTexture_atIndex_(v149, v121, a4, 0, v122, v123, v144, v145);
    objc_msgSend_setTexture_atIndex_(v149, v124, v151, 1, v125, v126);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v149, v127, ((DWORD2(v173) * v174) + 15) & 0x1FFFFFFF0, 0, v128, v129);
    objc_msgSend_setBytes_length_atIndex_(v149, v130, &v172, 40, 0, v131);
    *v167 = *&v176[16];
    *&v167[8] = vdupq_n_s64(1uLL);
    *v170 = HIDWORD(v173);
    *&v170[8] = *&v167[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v149, v132, v167, v170, v133, v134);
    return 0;
  }

  return -1;
}

uint64_t sub_23994DF48(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + *MEMORY[0x277CD7350]);
  v9 = *(a1 + 280);
  v10 = *(a1 + 272);
  v163 = *(a1 + *MEMORY[0x277CD7370]);
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + 266);
  v13 = *(a1 + 264);
  v14 = *(a1 + 224);
  v164 = *(a1 + 232);
  v15 = *(a1 + 256);
  v16 = *(a1 + 260);
  v162 = *(a1 + 240);
  v17 = *(a1 + 216);
  if ((v11 & 1) == 0)
  {
    v18 = a4;
    if ((v9 & v10 & 1) == 0)
    {
      v161 = a3;
      v152 = *(a1 + 216);
      v147 = *(a1 + 264);
      v154 = *(a1 + 260);
      v156 = *(a1 + 256);
      v148 = MTLReportFailureTypeEnabled();
      v16 = v154;
      v15 = v156;
      v13 = v147;
      v17 = v152;
      a3 = v161;
      if (v148)
      {
        v149 = v9;
        v150 = v10;
        MTLReportFailure();
        v16 = v154;
        v15 = v156;
        v13 = v147;
        v17 = v152;
        a3 = v161;
      }
    }

    v9 |= 1uLL;
    v10 |= 1uLL;
    a4 = v18;
  }

  if (*(a6 + 48) && *(a6 + 40))
  {
    v160 = a3;
    v19 = *a6;
    if (v9 == v12 && v10 == v13)
    {
      v173 = *(a6 + 64);
      *&v174 = *(a6 + 80);
      v20 = a4;
      objc_msgSend_setOffset_(v14, a2, &v173, a4, a5, a6);
      v21 = *(a6 + 32);
      v173 = *(a6 + 16);
      v174 = v21;
      v175 = *(a6 + 48);
      objc_msgSend_setClipRect_(v14, v22, &v173, v23, v24, v25);
      objc_msgSend_setOptions_(v14, v26, v11, v27, v28, v29);
      return sub_23993BD30(v14, a2, v160, v20, a5, a6);
    }

    if (a4 == a5)
    {
      return -18;
    }

    v157 = v13;
    v158 = *(a6 + 8);
    v153 = v16;
    v155 = v15;
    v151 = v17;
    v159 = a4;
    if (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6))
    {
      return -18;
    }

    MEMORY[0x23EE7BAC0](v179, v160, a5);
    if ((*v19 & 0x200000000000) != 0)
    {
      v32 = v19;
    }

    else
    {
      v32 = v158;
    }

    v33 = v32;
    v34 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v31, *v32 & 0x3FFLL, *(a6 + 40), *(a6 + 48), 0, v149, v150);
    v35 = (*(*v8 + 32))(v8);
    objc_msgSend_setStorageMode_(v34, v36, v35, v37, v38, v39);
    objc_msgSend_setUsage_(v34, v40, 3, v41, v42, v43);
    TempTexture = MPSAutoCache::GetTempTexture();
    v173 = *(a6 + 64);
    *&v174 = *(a6 + 80);
    objc_msgSend_setOffset_(v14, v45, &v173, v46, v47, v48);
    v49 = *(MEMORY[0x277CD7200] + 16);
    v173 = *MEMORY[0x277CD7200];
    v174 = v49;
    v175 = *(MEMORY[0x277CD7200] + 32);
    objc_msgSend_setClipRect_(v14, v50, &v173, v51, v52, v53);
    objc_msgSend_setOptions_(v14, v54, v11, v55, v56, v57);
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v174 = 0u;
    *&v173 = *a6;
    *(&v173 + 1) = v33;
    *v169 = objc_msgSend_width(TempTexture, v58, v59, v60, v61, v62);
    *&v169[8] = objc_msgSend_height(TempTexture, v63, v64, v65, v66, v67);
    *&v169[16] = 1;
    if (v14)
    {
      objc_msgSend_clipRect(v14, v68, v69, v70, v71, v72);
    }

    else
    {
      memset(&v171, 0, sizeof(v171));
    }

    MPSGetEffectiveClipRegion(&v174, v169, &v171);
    v177 = *(a6 + 64);
    v178 = *(a6 + 80);
    v73 = sub_23993BD30(v14, a2, v160, v159, TempTexture, &v173);
    if (v73)
    {
      goto LABEL_29;
    }

    v172 = 0;
    v171.origin.x = vmovn_s64(*(a6 + 64));
    v171.origin.y = v171.origin.x;
    v74 = vmovn_s64(*(a6 + 16));
    WORD1(v171.origin.z) = v74.i16[2];
    LOWORD(v171.origin.z) = v74.i16[0];
    v75 = vmovn_s64(*(a6 + 40));
    HIWORD(v171.origin.z) = v75.i16[2];
    WORD2(v171.origin.z) = v75.i16[0];
    WORD1(v171.size.width) = v9;
    LOWORD(v171.size.width) = v10;
    v76 = v159;
    WORD2(v171.size.width) = byte_239988810[(*v158 >> 24) & 0xFLL];
    HIWORD(v171.size.width) = 1;
    LOWORD(v171.size.height) = (v9 - v12) >> 1;
    WORD1(v171.size.height) = v9 - LOWORD(v171.size.height);
    WORD2(v171.size.height) = (v10 - v157) >> 1;
    HIWORD(v171.size.height) = v10 - WORD2(v171.size.height);
    v171.size.depth = __PAIR64__(v153, v155);
    LOWORD(v172) = v157;
    WORD1(v172) = v12;
    if (v164)
    {
      v76 = MPSAutoCache::GetTempTexture();
      *v169 = *(a6 + 64);
      *&v169[16] = *(a6 + 80);
      objc_msgSend_setOffset_(v164, v77, v169, v78, v79, v80);
      v81 = *(MEMORY[0x277CD7200] + 16);
      *v169 = *MEMORY[0x277CD7200];
      *&v169[16] = v81;
      v170 = *(MEMORY[0x277CD7200] + 32);
      objc_msgSend_setClipRect_(v164, v82, v169, v83, v84, v85);
      objc_msgSend_setOptions_(v164, v86, v11, v87, v88, v89);
      *&v173 = *a6;
      *(&v173 + 1) = v33;
      v177 = *(a6 + 64);
      *&v178 = *(a6 + 80);
      v168.width = objc_msgSend_width(v76, v90, v91, v92, v93, v94);
      v168.height = objc_msgSend_height(v76, v95, v96, v97, v98, v99);
      v168.depth = 1;
      objc_msgSend_clipRect(v164, v100, v101, v102, v103, v104);
      MPSGetEffectiveClipRegion(v169, &v168, &v167);
      v174 = *v169;
      v175 = *&v169[16];
      v176 = v170;
      v73 = sub_23993BD30(v164, a2, v160, v159, v76, &v173);
      if (v73)
      {
LABEL_29:
        v146 = v73;
        MPSAutoCache::~MPSAutoCache(v179);
        return v146;
      }

      v171.origin.y = 0;
    }

    ComputeState = MPSLibrary::GetComputeState();
    v111 = ComputeState;
    if (ComputeState)
    {
      v112 = objc_msgSend_threadExecutionWidth(ComputeState, v106, v107, v108, v109, v110);
      objc_msgSend_setComputePipelineState_(a2, v113, v111, v114, v115, v116);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(a2, v117, v159, 0, v118, v119);
      objc_msgSend_setTexture_atIndex_(a2, v120, TempTexture, 1, v121, v122);
      objc_msgSend_setTexture_atIndex_(a2, v123, v76, 2, v124, v125);
      objc_msgSend_setTexture_atIndex_(a2, v126, a5, 3, v127, v128);
      if ((objc_msgSend_retainedReferences(v160, v129, v130, v131, v132, v133) & 1) == 0)
      {
        v136 = v151;
        v166[0] = MEMORY[0x277D85DD0];
        v166[1] = 3221225472;
        v166[2] = sub_23994F090;
        v166[3] = &unk_278AC37A8;
        v166[4] = v151;
        objc_msgSend_addCompletedHandler_(v160, v137, v166, v138, v139, v140);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v134, v151, 0, 0, v135);
      objc_msgSend_setBytes_length_atIndex_(a2, v141, &v171, 56, 1, v142);
      *v169 = (*(a6 + 48) + 1) >> 1;
      *&v169[8] = vdupq_n_s64(1uLL);
      v167.origin.x = v112;
      *&v167.origin.y = *&v169[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v143, v169, &v167, v144, v145);
    }

    v73 = 0;
    goto LABEL_29;
  }

  return 0;
}

unint64_t sub_23994EE64(float32x2_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int a9)
{
  v14 = a2;
  v16 = *(a5 + 1472);
  if (v16 < 7 || (v16 != 7 ? (v17 = 24) : (v17 = 9), a2 >> 1 == 6 ? (v18 = a2 >= 0xA) : (v18 = 1), v18 && v17 > a2 >> 1))
  {
    v19 = objc_msgSend_threadExecutionWidth(a6, a2, a3, a4, a5, a6);
    if ((*(a5 + 1472) & 0xFFFFFFFE) == 0x18)
    {
      v25 = 8;
    }

    else
    {
      v25 = v19;
    }

    v26 = objc_msgSend_maxTotalThreadsPerThreadgroup(a6, v20, v21, v22, v23, v24);
    if (v26 / v25 >= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = v26 / v25;
    }

    v33 = objc_msgSend_staticThreadgroupMemoryLength(a6, v27, v28, v29, v30, v31);
    v39 = objc_msgSend_maxComputeThreadgroupMemory(*(a5 + 16), v34, v35, v36, v37, v38);
    v40 = 0x1000000;
    if (v39 < 0x1000000)
    {
      v40 = v39;
    }

    v41 = v40 - v33;
    if ((*(a7 + 3) & 0xE) != 0)
    {
      v42 = *(a7 + 3) & 0xF;
    }

    else
    {
      v42 = 1;
    }

    v43 = v42 * a8;
    v44 = v41 / (v43 * v32);
    v45 = v14 - 1;
    v46 = -v25;
    v47 = (v44 - v45) & -v25;
    while (1)
    {
      v48 = 2 * v44;
      v49 = (2 * v44 - v45) & v46;
      result = (v47 + v45) * (v32 >> 1) * v49;
      v51 = v47 * v32 * (v49 + v45) < result || 4 * v25 > v47;
      if (!v51)
      {
        break;
      }

      v47 = (2 * v44 - v45) & v46;
      v44 *= 2;
      v51 = v32 > 3;
      v32 >>= 1;
      if (!v51)
      {
        LODWORD(v47) = v49;
        LODWORD(v44) = v48;
        break;
      }
    }

    v52 = a3;
  }

  else
  {
    result = objc_msgSend_threadExecutionWidth(a6, a2, a3, a4, a5, a6);
    v52 = a3;
    if ((*(a5 + 1472) & 0xFFFFFFFE) == 0x18)
    {
      v25 = 8;
    }

    else
    {
      v25 = result;
    }

    if ((*(a7 + 3) & 0xE) != 0)
    {
      v54 = *(a7 + 3) & 0xF;
    }

    else
    {
      v54 = 1;
    }

    v43 = v54 * a8;
    v44 = 0x1000 / v43;
    v47 = (0x1000 / v43 - v14 + 1) & -v25;
  }

  a1[4] = 0;
  *a1 = vcvt_f32_f64(vcvtq_f64_s64(*v52));
  v55 = vmovn_s64(*a4);
  a1[1].i16[1] = v55.i16[2];
  v56 = v55.i16[0];
  v57 = vmovn_s64(*(a4 + 24));
  a1[1].i16[0] = v56;
  a1[1].i16[3] = v57.i16[2];
  a1[1].i16[2] = v57.i16[0];
  a1[2].i32[0] = v47;
  a1[2].i16[2] = v14;
  a1[2].i16[3] = a9 != 0;
  a1[3].i32[0] = v44;
  a1[3].i32[1] = v25;
  a1[4].i32[0] = v43;
  return result;
}

uint64_t sub_23994F288(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v92 = *(a6 + 16);
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a6 + 32);
  v94 = *(a1 + *MEMORY[0x277CD7350]);
  v95 = *(a6 + 40);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v91 = *(a6 + 56);
  v93 = *(a1 + 160);
  v14 = *(a6 + 8);
  v15 = *v14;
  if (*a6 == v14 && (a4 == a5 || (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6) & 1) != 0))
  {
    return -18;
  }

  if ((v11 & 1) == 0)
  {
    if ((~v15 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v88 = a5;
      MTLReportFailure();
    }

    v16 = *(*(a6 + 8) + 3) & 0xF;
    if ((*(*a6 + 3) & 0xF) != v16 && v16 != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v17 = *(a6 + 64);
  if (v17 > objc_msgSend_width(a4, a2, a3, a4, a5, a6, v88) + 1)
  {
    return 0;
  }

  if (*(a6 + 64) + v95.i64[0] < -1)
  {
    return 0;
  }

  v23 = *(a6 + 72);
  if (v23 > objc_msgSend_height(a4, v18, v19, v20, v21, v22) + 1 || *(a6 + 72) + v95.i64[1] < -1)
  {
    return 0;
  }

  v24 = *a6;
  v25 = MPSIsTextureTwiddled();
  if ((**(a6 + 8) & 0xF000000) == 0x1000000)
  {
    v26 = 13;
    if ((**a6 & 0xF000000) == 0x1000000)
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  if ((*v24 & 0xE000000) != 0)
  {
    v28 = BYTE3(*v24) & 0xF;
  }

  else
  {
    v28 = 1;
  }

  if ((BYTE3(*v24) & 0xF) == 3)
  {
    v29 = 4;
  }

  else
  {
    v29 = v28;
  }

  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v31 = 3 * (v29 >> 1);
    v32 = v29 == 2;
    v33 = 1;
    if (!v32)
    {
      v33 = 2;
    }

    v34 = (*v24 >> 10) >> v33;
    v35 = 63 - __clz(v34);
    if (v25)
    {
      v36 = 3;
    }

    else
    {
      v36 = -3;
    }

    v37 = v26 + v36 + v31;
    if (v34)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0;
    }

    v30 = v37 + v38;
    if (v37 + v38 == -1)
    {
      return -19;
    }
  }

  v90 = *(*(*(v13 + 280) + 16 * v30) + 64);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v44 = ComputeState;
    v89 = a1 + 208;
    objc_msgSend_setComputePipelineState_(a2, v40, ComputeState, v41, v42, v43);
    MPSLibrary::ReleaseComputeState();
    v50 = objc_msgSend_threadExecutionWidth(v44, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(v44, v51, v52, v53, v54, v55);
    v57 = WORD2(v90) * WORD1(v90);
    v58 = v56 & -v50;
    if (v58 <= v50)
    {
      v58 = v50;
    }

    v59 = v58 / v50;
    if (v57 > v56)
    {
      v60 = v59;
    }

    else
    {
      v60 = WORD2(v90);
    }

    if (v57 <= v56)
    {
      v50 = WORD1(v90);
    }

    v61 = v50 * v90;
    v62 = v60 * BYTE1(v90);
    if (v95.i64[0] % v61)
    {
      v63 = v95.i64[0] + v61 - 1;
    }

    else
    {
      v63 = v95.i64[0];
    }

    v64 = v63 / v61;
    if (v95.i64[1] % v62)
    {
      v65 = v95.i64[1] + v62 - 1;
    }

    else
    {
      v65 = v95.u64[1];
    }

    v66 = vmovn_s64(*(a6 + 64));
    LOWORD(v67) = v66.i16[0];
    WORD1(v67) = v66.i16[2];
    HIDWORD(v67) = *(a6 + 80);
    v68 = vmovn_s64(v92);
    LOWORD(v69) = v68.i16[0];
    WORD1(v69) = v68.i16[2];
    HIDWORD(v70) = 0;
    HIDWORD(v69) = v12;
    v98[0] = v67;
    v98[1] = v69;
    v71 = vmovn_s64(vaddq_s64(v95, v92));
    v68.i16[0] = v71.i16[0];
    v68.i16[1] = v71.i16[2];
    v68.i32[1] = (v91 + v12);
    v98[2] = v68;
    *&v70 = *v89;
    DWORD2(v70) = *(v89 + 8);
    v99 = v70;
    v72 = v65 / v62;
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setTexture_atIndex_(a2, v74, a4, 0, v75, v76);
    objc_msgSend_setTexture_atIndex_(a2, v77, a5, 1, v78, v79);
    objc_msgSend_setBytes_length_atIndex_(a2, v80, v98, 48, 0, v81);
    objc_msgSend_setSamplerState_atIndex_(a2, v82, Sampler, 0, v83, v84);
    v97[0] = v64;
    v97[1] = v72;
    v97[2] = 1;
    v96[0] = v50;
    v96[1] = v60;
    v96[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v85, v97, v96, v86, v87);
    return 0;
  }

  return -1;
}

uint64_t sub_239950048(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 216);
  v12 = *(a1 + 208);
  v264 = *(a1 + *MEMORY[0x277CD7350]);
  v260 = *(a1 + *MEMORY[0x277CD7370]);
  v13 = *(a1 + 160);
  v14 = *(a1 + 224);
  v262 = *(a1 + *MEMORY[0x277CD7378]);
  if ((v262 & 1) == 0)
  {
    if ((v11 & v12 & 1) == 0)
    {
      v254 = *(a1 + 228);
      if (MTLReportFailureTypeEnabled())
      {
        v255 = v11;
        v256 = v12;
        MTLReportFailure();
      }
    }

    v11 |= 1uLL;
    v12 |= 1uLL;
  }

  v15 = *(a6 + 32);
  v287 = *(a6 + 16);
  *v288 = v15;
  *&v288[16] = *(a6 + 48);
  v263 = *(a6 + 8);
  v16 = *(v264 + 185);
  if (!v14)
  {
    v35 = *(v264 + 369);
    if ((v35 & 0x400) == 0 && *(v264 + 368) < 26)
    {
      v259 = 0;
      *v263;
      if (v11 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    if ((*v263 & 0xF000000) == 0x1000000)
    {
      if ((v35 & 0x40) == 0)
      {
        v259 = 0;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if (MPSIsTextureTwiddled() && (*(v264 + 1477) & 4) != 0 && objc_msgSend_height(a5, v130, v131, v132, v133, v134) >= 6 * v16 * BYTE2(v16))
      {
        HIDWORD(v259) = 0;
        if (objc_msgSend_width(a5, v130, v131, v132, v133, v134) < v16 << 9)
        {
          goto LABEL_116;
        }
      }

      else
      {
        HIDWORD(v259) = 1;
        if (objc_msgSend_width(a5, v130, v131, v132, v133, v134, v255, v256) < v16 << 9)
        {
          goto LABEL_116;
        }
      }

      if ((*(v264 + 1477) & 4) != 0 && !MPSIsTextureTwiddled())
      {
        LODWORD(v259) = 0;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if ((v35 & 0x40) == 0)
      {
        v259 = 0;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if ((!MPSIsTextureTwiddled() || (*v263 & 0xFC00) == 0x4000 || objc_msgSend_height(a5, v135, v136, v137, v138, v139) < 4 * v16 * BYTE2(v16)) && (!MPSIsTextureTwiddled() || (*(v264 + 1477) & 4) != 0 || objc_msgSend_height(a5, a2, a3, a4, a5, a6) < BYTE2(v16) * v16))
      {
        v259 = 0x100000001;
        if (v11 == 1)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      HIDWORD(v259) = 0;
    }

LABEL_116:
    LODWORD(v259) = 1;
    if (v11 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v259 = 0;
  if (v11 == 1)
  {
LABEL_6:
    if (a4 != a5 && (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6) & 1) == 0)
    {
      v21 = *(a1 + 232);
      if (v21)
      {
        objc_msgSend_setOptions_(v21, v17, v262, v18, v19, v20);
        *v274 = v287;
        *&v274[16] = *v288;
        *&v274[32] = *&v288[16];
        objc_msgSend_setClipRect_(*(a1 + 232), v22, v274, v23, v24, v25);
        *v274 = *(a6 + 64);
        *&v274[16] = *(a6 + 80);
        objc_msgSend_setOffset_(*(a1 + 232), v26, v274, v27, v28, v29);
        objc_msgSend_setEdgeMode_(*(a1 + 232), v30, v13, v31, v32, v33);
        return sub_23993BF18(*(a1 + 232), a2, a3, a4, a5, a6);
      }

      ComputeState = MPSLibrary::GetComputeState();
      if (ComputeState)
      {
        v108 = vmovn_s64(*(a6 + 64));
        v284.i16[1] = v108.i16[2];
        v284.i16[0] = v108.i16[0];
        v109 = vmovn_s64(v287);
        v284.i16[3] = v109.i16[2];
        v284.i16[2] = v109.i16[0];
        v110 = vmovn_s64(*&v288[8]);
        v284.i16[5] = v110.i16[2];
        v284.i16[4] = v110.i16[0];
        v284.i16[6] = v12 >> 1;
        v284.i16[7] = v13 == 1;
        v111 = ComputeState;
        v112 = objc_msgSend_threadExecutionWidth(ComputeState, v103, v104, v105, v106, v107);
        objc_msgSend_setComputePipelineState_(a2, v113, v111, v114, v115, v116);
        objc_msgSend_setTexture_atIndex_(a2, v117, a4, 0, v118, v119);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v121, Sampler, 0, v122, v123);
        objc_msgSend_setTexture_atIndex_(a2, v124, a5, 1, v125, v126);
        objc_msgSend_setBytes_length_atIndex_(a2, v127, &v284, 16, 0, v128);
        v129 = *&v288[16];
        if (!HIDWORD(v259))
        {
          v129 = (v112 + *&v288[16] - 1) / v112;
        }

        *v274 = v129;
        *&v274[8] = vdupq_n_s64(1uLL);
        v285 = v112;
        v286 = *&v274[8];
LABEL_110:
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v97, v274, &v285, v98, v99, v255, v256);
        return 0;
      }

      return -1;
    }

    return -18;
  }

LABEL_13:
  if (v12 == 1)
  {
    if (a4 != a5 && (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6) & 1) == 0)
    {
      v56 = *(a1 + 240);
      if (v56)
      {
        objc_msgSend_setOptions_(v56, v36, v262, v37, v38, v39);
        *v274 = v287;
        *&v274[16] = *v288;
        *&v274[32] = *&v288[16];
        objc_msgSend_setClipRect_(*(a1 + 240), v57, v274, v58, v59, v60);
        *v274 = *(a6 + 64);
        *&v274[16] = *(a6 + 80);
        objc_msgSend_setOffset_(*(a1 + 240), v61, v274, v62, v63, v64);
        objc_msgSend_setEdgeMode_(*(a1 + 240), v65, v13, v66, v67, v68);
        sub_23993BF18(*(a1 + 240), a2, a3, a4, a5, a6);
      }

      v69 = MPSLibrary::GetComputeState();
      if (v69)
      {
        v75 = vmovn_s64(*(a6 + 64));
        v284.i16[1] = v75.i16[2];
        v284.i16[0] = v75.i16[0];
        v76 = vmovn_s64(v287);
        v284.i16[3] = v76.i16[2];
        v284.i16[2] = v76.i16[0];
        v77 = vmovn_s64(*&v288[8]);
        v284.i16[5] = v77.i16[2];
        v284.i16[4] = v77.i16[0];
        v284.i16[6] = v11 >> 1;
        v284.i16[7] = v13 == 1;
        v78 = v69;
        v79 = objc_msgSend_threadExecutionWidth(v69, v70, v71, v72, v73, v74);
        objc_msgSend_setComputePipelineState_(a2, v80, v78, v81, v82, v83);
        objc_msgSend_setTexture_atIndex_(a2, v84, a4, 0, v85, v86);
        v87 = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v88, v87, 0, v89, v90);
        v91 = 1;
        objc_msgSend_setTexture_atIndex_(a2, v92, a5, 1, v93, v94);
        objc_msgSend_setBytes_length_atIndex_(a2, v95, &v284, 16, 0, v96);
        if (v259)
        {
          v100 = (*&v288[8] + 15) >> 4;
          if ((*v263 & 0xF000000) == 0x1000000)
          {
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v97, 2176, 0, v98, v99, v255, v256);
          }

          else
          {
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v97, 8704, 0, v98, v99, v255, v256);
          }

          v91 = 16;
          v79 = 16;
        }

        else
        {
          v100 = (v79 + *&v288[8] - 1) / v79;
        }

        *v274 = v100;
        *&v274[8] = vdupq_n_s64(1uLL);
        v285 = v79;
        *&v286 = v91;
        *(&v286 + 1) = 1;
        goto LABEL_110;
      }

      return -1;
    }

    return -18;
  }

  v257 = a5;
  v258 = v13;
  v285 = objc_msgSend_width(a4, a2, a3, a4, a5, a6);
  *&v286 = objc_msgSend_height(a4, v40, v41, v42, v43, v44);
  *(&v286 + 1) = 1;
  MPSSeparatePassDimensions();
  v45 = *v263;
  v46 = BYTE4(*v263);
  v47 = 115;
  if (v11 * v12 > 1 << (11 - v46))
  {
    v47 = 125;
  }

  if (v46 <= 0xB)
  {
    v48 = v47;
  }

  else
  {
    v48 = 125;
  }

  v49 = 115;
  if (((v45 >> 34) & 0x3F) >= 3)
  {
    v49 = v48;
  }

  if ((v262 & 2) != 0)
  {
    v48 = v49;
  }

  v50 = BYTE3(v45) & 0xF;
  v51 = 105;
  if (v48 == 115)
  {
    v51 = 65;
  }

  v52 = 55;
  if (v48 == 115)
  {
    v52 = 25;
  }

  if (v50 == 1)
  {
    v48 = v52;
  }

  if (v50 == 2)
  {
    v53 = v51;
  }

  else
  {
    v53 = v48;
  }

  if (*(v264 + 368) < 8)
  {
    v55 = a2;
    goto LABEL_87;
  }

  if (MPSIsTextureTwiddled())
  {
    v54 = MPSIsTextureTwiddled() ^ 1;
    if (*(a1 + 232))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v54 = 1;
    if (*(a1 + 232))
    {
LABEL_38:
      if ((v54 | HIDWORD(v259) ^ 1))
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }
  }

  if ((*(a1 + 240) != 0) & v54) != 0 || ((HIDWORD(v259) ^ 1))
  {
LABEL_61:
    if ((v262 >> 1) & 1 | (v259 ^ 1) & 1)
    {
      goto LABEL_86;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*&v288[16] * *&v288[8] >= 0x40000uLL)
  {
    v101 = (*v263 >> 10) < 9uLL;
    goto LABEL_61;
  }

  if ((v262 >> 1) & 1 | (v259 ^ 1) & 1)
  {
    goto LABEL_86;
  }

LABEL_62:
  if ((*v263 & 0xF000000) >= 0x2000001)
  {
    v55 = a2;
    goto LABEL_87;
  }

LABEL_86:
  v55 = a2;
LABEL_87:
  PixelInfo = MPSDevice::GetPixelInfo(v264, v53, MPSImageFeatureChannelFormatNone);
  MEMORY[0x23EE7BAC0](v278, a3, v257);
  TempTexture = MPSAutoCache::GetTempTexture();
  v145 = *(a1 + 232);
  if (v145)
  {
    objc_msgSend_setOptions_(v145, v140, v262, v141, v142, v143, &v282, &v280);
    memset(v274, 0, 24);
    v146 = *(a1 + 232);
    *&v274[24] = v284;
    *&v274[40] = 1;
    objc_msgSend_setClipRect_(v146, v147, v274, v148, v149, v150);
    *v274 = v282;
    *&v274[16] = v283;
    objc_msgSend_setOffset_(*(a1 + 232), v151, v274, v152, v153, v154);
    objc_msgSend_setEdgeMode_(*(a1 + 232), v155, v258, v156, v157, v158);
    v276 = 0u;
    v277 = 0u;
    v275 = 0u;
    memset(&v274[16], 0, 32);
    *v274 = *a6;
    *&v274[8] = &PixelInfo;
    v164 = *(a1 + 232);
    if (v164)
    {
      objc_msgSend_clipRect(v164, v159, v160, v161, v162, v163);
      v164 = *(a1 + 232);
    }

    else
    {
      v275 = 0uLL;
      memset(&v274[16], 0, 32);
    }

    v276 = v282;
    v277 = v283;
    v199 = sub_23993BF18(v164, v55, a3, a4, TempTexture, v274);
    if (v199)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v165 = MPSLibrary::GetComputeState();
    v171 = v165;
    if (!v165)
    {
      goto LABEL_105;
    }

    v172 = vmovn_s64(v282);
    v268 = v172.i16[2];
    v267 = v172.i16[0];
    v269 = 0;
    v173 = vmovn_s64(v284);
    v271 = v173.u16[2];
    v270 = v173.i16[0];
    v272 = v12 >> 1;
    v273 = v258 == 1;
    v174 = objc_msgSend_threadExecutionWidth(v165, v166, v167, v168, v169, v170, &v282, &v280);
    objc_msgSend_setComputePipelineState_(v55, v175, v171, v176, v177, v178);
    objc_msgSend_setTexture_atIndex_(v55, v179, a4, 0, v180, v181);
    v182 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v55, v183, v182, 0, v184, v185);
    objc_msgSend_setTexture_atIndex_(v55, v186, TempTexture, 1, v187, v188);
    objc_msgSend_setBytes_length_atIndex_(v55, v189, &v267, 16, 0, v190);
    v194 = v271;
    if (!HIDWORD(v259))
    {
      v194 = (v174 + v271 - 1) / v174;
    }

    *v274 = v194;
    *&v274[8] = vdupq_n_s64(1uLL);
    v265 = v174;
    v266 = *&v274[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v55, v191, v274, &v265, v192, v193);
  }

  v200 = *(a1 + 240);
  if (v200)
  {
    objc_msgSend_setOptions_(v200, v195, v262, v196, v197, v198);
    *v274 = v287;
    *&v274[16] = *v288;
    *&v274[32] = *&v288[16];
    objc_msgSend_setClipRect_(*(a1 + 240), v201, v274, v202, v203, v204);
    *v274 = v280;
    *&v274[16] = v281;
    objc_msgSend_setOffset_(*(a1 + 240), v205, v274, v206, v207, v208);
    objc_msgSend_setEdgeMode_(*(a1 + 240), v209, v258, v210, v211, v212);
    v276 = 0u;
    v277 = 0u;
    v275 = 0u;
    memset(&v274[16], 0, 32);
    v218 = *(a6 + 8);
    *v274 = &PixelInfo;
    *&v274[8] = v218;
    v219 = *(a1 + 240);
    if (v219)
    {
      objc_msgSend_clipRect(v219, v213, v214, v215, v216, v217);
      v219 = *(a1 + 240);
    }

    else
    {
      v275 = 0uLL;
      memset(&v274[16], 0, 32);
    }

    v276 = v280;
    v277 = v281;
    v199 = sub_23993BF18(v219, v55, a3, TempTexture, v257, v274);
    goto LABEL_113;
  }

  v220 = MPSLibrary::GetComputeState();
  v226 = v220;
  if (v220)
  {
    v227 = vmovn_s64(v280);
    v268 = v227.i16[2];
    v267 = v227.i16[0];
    v228 = vmovn_s64(v287);
    HIWORD(v269) = v228.i16[2];
    LOWORD(v269) = v228.i16[0];
    v229 = vmovn_s64(*&v288[8]);
    v271 = v229.u16[2];
    v270 = v229.i16[0];
    v272 = v11 >> 1;
    v273 = v258 == 1;
    v230 = objc_msgSend_threadExecutionWidth(v220, v221, v222, v223, v224, v225);
    objc_msgSend_setComputePipelineState_(v55, v231, v226, v232, v233, v234);
    objc_msgSend_setTexture_atIndex_(v55, v235, TempTexture, 0, v236, v237);
    v238 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v55, v239, v238, 0, v240, v241);
    objc_msgSend_setTexture_atIndex_(v55, v242, v257, 1, v243, v244);
    objc_msgSend_setBytes_length_atIndex_(v55, v245, &v267, 16, 0, v246);
    v250 = v270;
    if (v259)
    {
      if ((*v263 & 0xF000000) == 0x1000000)
      {
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v55, v247, 2176, 0, v248, v249);
      }

      else
      {
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v55, v247, 8704, 0, v248, v249);
      }

      v251 = (v250 + 15) >> 4;
      v230 = 16;
      v252 = 16;
    }

    else
    {
      v252 = 1;
      v251 = (v230 + v270 - 1) / v230;
    }

    *v274 = v251;
    *&v274[8] = vdupq_n_s64(1uLL);
    v265 = v230;
    *&v266 = v252;
    *(&v266 + 1) = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v55, v247, v274, &v265, v248, v249);
    v199 = 0;
    goto LABEL_113;
  }

LABEL_105:
  v199 = -1;
LABEL_113:
  v253 = v199;
  MPSAutoCache::~MPSAutoCache(v278);
  return v253;
}

int8x16_t sub_239950F68@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int8x16_t *a7@<X8>)
{
  a7->i64[0] = 0;
  a7->i64[1] = 0;
  a7[1].i64[0] = 0;
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = objc_msgSend_pixelFormat(a3, a2, a3, a4, a5, a6);
  PixelInfo = MPSDevice::GetPixelInfo(v12, v13, MPSImageFeatureChannelFormatNone);
  if ((~PixelInfo & 0xA00000000000) == 0 && (PixelInfo & 0xFC00) != 0)
  {
    if (*(a1 + 208) > 9uLL)
    {
      if (a2 == a3)
      {
        return result;
      }
    }

    else if (a2 == a3 || *(a1 + 216) < 0xAuLL)
    {
      return result;
    }

    if ((objc_msgSend_isEqual_(a2, v15, a3, v16, v17, v18) & 1) == 0)
    {
      v21 = vdupq_n_s64(0x2C0uLL);
      result = vbslq_s8(vcgtq_u64(v21, *(a4 + 40)), *(a4 + 40), v21);
      *a7 = result;
    }
  }

  return result;
}

uint64_t sub_239951064@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v12 = MEMORY[0x277CD7350];
  v13 = *(a1 + *MEMORY[0x277CD7350]);
  v14 = objc_msgSend_pixelFormat(a3, a2, a3, a4, a5, a6);
  PixelInfo = MPSDevice::GetPixelInfo(v13, v14, MPSImageFeatureChannelFormatNone);
  v16 = *(a1 + *v12);
  v22 = objc_msgSend_pixelFormat(a2, v17, v18, v19, v20, v21);
  result = MPSDevice::GetPixelInfo(v16, v22, MPSImageFeatureChannelFormatNone);
  if ((~PixelInfo & 0xA00000000000) == 0 && (PixelInfo & 0xFC00) != 0)
  {
    if (*(a1 + 208) > 9uLL)
    {
      if (a2 == a3)
      {
        return result;
      }
    }

    else if (a2 == a3 || *(a1 + 216) < 0xAuLL)
    {
      return result;
    }

    v29 = result;
    result = objc_msgSend_isEqual_(a2, v24, a3, v25, v26, v27);
    if ((result & 1) == 0)
    {
      if ((*(*(a1 + *v12) + 1480) & 0xFEuLL) < 0xE)
      {
        v32 = v29 >> 10;
        if (v32 <= 7)
        {
          v33 = v32 > 3;
          v31 = 4096;
          v30 = 2048;
          if (!v33)
          {
            v30 = 4096;
          }
        }

        else
        {
          v30 = 2048;
          v31 = 2048;
        }
      }

      else
      {
        v30 = 2048;
        v31 = 4096;
        if ((v29 & 0xC000) == 0)
        {
          v30 = 4096;
        }
      }

      if (v31 >= *(a4 + 40))
      {
        v31 = *(a4 + 40);
      }

      if (v30 >= *(a4 + 48))
      {
        v30 = *(a4 + 48);
      }

      *a7 = v31;
      a7[1] = v30;
    }
  }

  return result;
}

int8x16_t sub_2399511EC@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int8x16_t *a7@<X8>)
{
  a7->i64[0] = 0;
  a7->i64[1] = 0;
  a7[1].i64[0] = 0;
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = objc_msgSend_pixelFormat(a3, a2, a3, a4, a5, a6);
  PixelInfo = MPSDevice::GetPixelInfo(v12, v13, MPSImageFeatureChannelFormatNone);
  if ((~PixelInfo & 0xA00000000000) == 0 && (PixelInfo & 0xFC00) != 0)
  {
    if (*(a1 + 208) > 9uLL)
    {
      if (a2 == a3)
      {
        return result;
      }
    }

    else if (a2 == a3 || *(a1 + 216) < 0xAuLL)
    {
      return result;
    }

    if ((objc_msgSend_isEqual_(a2, v15, a3, v16, v17, v18) & 1) == 0)
    {
      v21 = vdupq_n_s64(0x800uLL);
      result = vbslq_s8(vcgtq_u64(v21, *(a4 + 40)), *(a4 + 40), v21);
      *a7 = result;
    }
  }

  return result;
}

uint64_t sub_239951C7C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, int64x2_t *a6)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v10 = a6[2].i64[1];
  v11 = a6[3].i64[0];
  v12 = *(a1 + *MEMORY[0x277CD7378]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v14 = *(a1 + 160);
  v15 = a6->i64[0];
  v16 = a6->i64[1];
  if (a6->i64[0] == v16)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v77 = a6[3].i64[0];
    v46 = a6[2].i64[1];
    v50 = *(a1 + *MEMORY[0x277CD7350]);
    v51 = *(a1 + *MEMORY[0x277CD7370]);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v13 = v51;
    v7 = a5;
    v9 = a2;
    v8 = a4;
    v10 = v46;
    v11 = v77;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v11 && v10)
  {
    if ((*v15 & 0x40000000000) != 0)
    {
      v18 = (*v16 >> 42) & (((*v16 ^ *v15) & 0x10000000000) == 0);
    }

    else
    {
      v18 = (*v16 & 0x40000000000) == 0;
    }

    if ((v12 & 1) == 0)
    {
      if (!v18)
      {
        v73 = v13;
        v74 = MTLReportFailureTypeEnabled();
        v13 = v73;
        if (v74)
        {
          v75 = v7;
          v76 = v8;
          MTLReportFailure();
          v13 = v73;
        }
      }

      if (a6[4].i64[0] < 0 || a6[4].i64[1] < 0)
      {
        v19 = v13;
        v20 = MTLReportFailureTypeEnabled();
        v13 = v19;
        if (v20)
        {
          MTLReportFailure();
          v13 = v19;
        }
      }
    }

    if ((*v15 & 0x10000000000) != 0)
    {
      v21 = 10;
    }

    else
    {
      v21 = 5;
    }

    if ((*v15 & 0x40000000000) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(*(*(v13 + 280) + 16 * (v22 + (*(v16 + 3) & 0xFu))) + 64);
    ComputeState = MPSLibrary::GetComputeState();
    v29 = ComputeState;
    if (v23)
    {
      if (ComputeState)
      {
        objc_msgSend_setComputePipelineState_(v9, v25, ComputeState, v26, v27, v28);
        MPSLibrary::ReleaseComputeState();
        v30 = vmovn_s64(a6[4]);
        v84 = v30.i16[2];
        v83 = v30.i16[0];
        v85 = 0;
        v87 = v11;
        v86 = v10;
        objc_msgSend_setTexture_atIndex_(v9, v31, v8, 0, v32, v33);
        objc_msgSend_setTexture_atIndex_(v9, v34, v7, 1, v35, v36);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(v9, v38, Sampler, 0, v39, v40);
        objc_msgSend_setBytes_length_atIndex_(v9, v41, &v83, 12, 0, v42);
        v80 = (v10 + 15) >> 4;
        v81 = (v11 + 63) >> 6;
        v82 = 1;
        v78 = vdupq_n_s64(0x10uLL);
LABEL_32:
        v79 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v9, v43, &v80, &v78, v44, v45, v75, v76);
        return 0;
      }
    }

    else if (ComputeState)
    {
      objc_msgSend_setComputePipelineState_(v9, v25, ComputeState, v26, v27, v28);
      v58 = objc_msgSend_maxTotalThreadsPerThreadgroup(v29, v53, v54, v55, v56, v57);
      MPSLibrary::ReleaseComputeState();
      v62 = v58 > 0x3FF;
      if (v58 <= 0x3FF)
      {
        v63 = 16;
      }

      else
      {
        v63 = 32;
      }

      v64 = 4;
      if (v62)
      {
        v64 = 5;
      }

      v65 = (v10 + v63 - 1) >> v64;
      v66 = vmovn_s64(a6[4]);
      v84 = v66.i16[2];
      v83 = v66.i16[0];
      v85 = 0;
      v67 = (v11 + v63 - 1) >> v64;
      v87 = v11;
      v86 = v10;
      objc_msgSend_setTexture_atIndex_(v9, v59, v8, 0, v60, v61, v75, v76);
      objc_msgSend_setTexture_atIndex_(v9, v68, v7, 1, v69, v70);
      objc_msgSend_setBytes_length_atIndex_(v9, v71, &v83, 12, 0, v72);
      v80 = v65;
      v81 = v67;
      v82 = 1;
      v78.i64[0] = v63;
      v78.i64[1] = v63;
      goto LABEL_32;
    }

    return -1;
  }

  return result;
}

uint64_t sub_2399526E4(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, __n128 a8)
{
  v12 = *(a1 + *MEMORY[0x277CD7378]);
  v13 = *(a1 + *MEMORY[0x277CD7350]);
  v160 = *(a1 + *MEMORY[0x277CD7370]);
  a8.n128_u32[0] = *(a1 + 232);
  v165 = a8;
  v164 = *(a1 + 236);
  a8.n128_u32[0] = *(a1 + 240);
  v162 = a8;
  v167 = *(a1 + 244);
  v163 = *(a1 + 248);
  *(&v169 + 1) = *(a1 + 256);
  *&v169 = *(a1 + 264);
  v157 = *(a1 + 272);
  *&v170 = *(a1 + 288);
  *(&v170 + 1) = *(a1 + 280);
  v158 = *(a1 + 296);
  v159 = *(a1 + 304);
  v168 = objc_msgSend_arrayLength(a6, a2, a3, a4, a5, a6);
  v19 = *(a7 + 48);
  v20 = *(a7 + 64);
  v22 = *a7;
  v21 = *(a7 + 8);
  v23 = *(a7 + 16);
  if (*a7 == v23 || v21 == v23)
  {
    if (a4 == a6)
    {
      return -18;
    }

    v156 = *(a7 + 48);
    isEqual = objc_msgSend_isEqual_(a4, v14, a6, v16, v17, v18);
    result = -18;
    if (a5 == a6 || (isEqual & 1) != 0)
    {
      return result;
    }

    v35 = objc_msgSend_isEqual_(a5, v30, a6, v31, v32, v33);
    v19 = v156;
    if (v35)
    {
      return -18;
    }
  }

  v154 = a5;
  result = 0;
  v25 = *(&v19 + 1);
  if (*(&v19 + 1) && v19 && v20)
  {
    v26 = *v22;
    v27 = *v21;
    v153 = v19;
    if ((*v22 & 0x40000000000) != 0)
    {
      v36 = (v27 & 0x40000000000) != 0 && ((v27 ^ v26) & 0x10000000000) == 0;
      v28 = a4;
    }

    else
    {
      v28 = a4;
      if ((v27 & 0x40000000000) == 0)
      {
        v29 = (*(v23 + 5) & 4) == 0;
        v155 = v19;
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      v36 = 0;
    }

    v29 = v36 & (*v23 >> 42) & (((*v23 ^ v26) & 0x10000000000) == 0);
    v155 = v19;
    if (v12)
    {
LABEL_9:
      if (v29)
      {
        if (v20 != 1)
        {
          return -16;
        }

        goto LABEL_28;
      }

      return -7;
    }

LABEL_23:
    if (v29)
    {
      objc_msgSend_textureType(v28, v14, v15, v16, v17, v18);
      objc_msgSend_textureType(v154, v37, v38, v39, v40, v41);
      v47 = objc_msgSend_textureType(v28, v42, v43, v44, v45, v46);
      if (v47 != objc_msgSend_textureType(v154, v48, v49, v50, v51, v52) && MTLReportFailureTypeEnabled())
      {
        v150 = v28;
        v151 = v154;
        MTLReportFailure();
      }

      objc_msgSend_textureType(v28, v53, v54, v55, v56, v57, v150, v151);
      objc_msgSend_textureType(a6, v58, v59, v60, v61, v62);
      v68 = objc_msgSend_textureType(v28, v63, v64, v65, v66, v67);
      if (v68 != objc_msgSend_textureType(a6, v69, v70, v71, v72, v73) && MTLReportFailureTypeEnabled())
      {
        v150 = v28;
        v151 = a6;
        MTLReportFailure();
      }

      if (v20 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        return -16;
      }

      v26 = *v22;
LABEL_28:
      v74 = v169 != 0;
      v152 = v170 == 0;
      if ((v26 & 0xF000000) != 0x4000000)
      {
        goto LABEL_39;
      }

      v75 = 0;
      if ((v26 & 0xF800000000uLL) >= 0x1700000001)
      {
        if (objc_msgSend_width(v28, v14, v15, v16, v17, v18) >= 2)
        {
          if (objc_msgSend_height(v28, v14, v15, v16, v17, v18) >= 2)
          {
            v75 = 0;
            if (v153 >= 0x400 && v25 >= 0x400)
            {
              if (v170 == 0)
              {
                v75 = v169 != 0;
              }

              else
              {
                v75 = !v74 && !v152;
              }

              if ((*v22 & 0xF000000) != 0x1000000)
              {
                goto LABEL_40;
              }

LABEL_43:
              v77 = a3;
              if (objc_msgSend_width(v28, v14, v15, v16, v17, v18, v150, v151) < 2 || objc_msgSend_height(v28, v14, v15, v16, v17, v18) < 2)
              {
                v76 = v75;
              }

              else if (v170 == 0)
              {
                v76 = v74 || v75;
              }

              else
              {
                v76 = !v74 && !v152 || v75;
              }

LABEL_48:
              v78 = (*v22 >> 37) & 8;
              objc_msgSend_textureType(v28, v14, v15, v16, v17, v18, v150);
              MEMORY[0x23EE7BAC0](v193, v77, a6);
              v85 = v165;
              v85.n128_f32[1] = v164;
              HIDWORD(v84) = v162.n128_u32[3];
              v85.n128_u32[2] = v162.n128_u32[0];
              v175 = v165.n128_f32[0] * v164;
              v176 = v165.n128_f32[0] / v164;
              v86 = v163 == INFINITY && v167 == -INFINITY;
              LODWORD(v84) = 0;
              if (!v86)
              {
                *&v84 = 1.0;
              }

              *(&v84 + 1) = v167;
              *(&v84 + 2) = v163;
              v174[0] = v85;
              v174[1] = v84;
              v87 = vmovn_s64(*(a7 + 72));
              v179 = *(a7 + 88);
              v178 = vuzp1_s16(v87, v87).u32[0];
              v88 = vmovn_s64(*(a7 + 96));
              v181 = *(a7 + 112);
              v180 = vuzp1_s16(v88, v88).u32[0];
              v89 = vmovn_s64(*(a7 + 24));
              v183 = *(a7 + 40);
              v182 = vuzp1_s16(v89, v89).u32[0];
              v184 = objc_msgSend_width(a6, v79, v80, v81, v82, v83);
              v185 = objc_msgSend_height(a6, v90, v91, v92, v93, v94);
              v186 = objc_msgSend_depth(a6, v95, v96, v97, v98, v99) * v168;
              v100 = vmovn_s64(v155);
              v187 = vuzp1_s16(v100, v100).u32[0];
              *v100.i32 = *(&v169 + 1);
              v188 = v168;
              *&v100.i32[1] = v169;
              v190 = v157;
              *&v101 = *(&v170 + 1);
              *(&v101 + 1) = v170;
              v189 = v100;
              v192 = v158;
              v191 = v101;
              v177 = *(v23 + 3) & 0xF;
              ComputeState = MPSLibrary::GetComputeState();
              objc_msgSend_setComputePipelineState_(a2, v103, ComputeState, v104, v105, v106);
              v112 = objc_msgSend_threadExecutionWidth(ComputeState, v107, v108, v109, v110, v111);
              if (v112 <= 1)
              {
                v118 = 1;
              }

              else
              {
                v118 = v112;
              }

              if (v118 >= 0x10)
              {
                v119 = 16;
              }

              else
              {
                v119 = v118;
              }

              v120 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v113, v114, v115, v116, v117);
              v121 = *(a7 + 48);
              if (v76)
              {
                v121 = (v121 + 1) >> 1;
                v122 = (*(a7 + 56) + 1) >> 1;
                v123 = v120 / v119;
                if (v119 <= v120)
                {
LABEL_61:
                  v124 = (v123 + v122 - 1) / v123;
LABEL_64:
                  v125 = *(a7 + 64);
                  MPSLibrary::ReleaseComputeState();
                  objc_msgSend_setTexture_atIndex_(a2, v126, a4, 0, v127, v128);
                  objc_msgSend_setTexture_atIndex_(a2, v129, v154, 1, v130, v131);
                  objc_msgSend_setTexture_atIndex_(a2, v132, a6, 2, v133, v134);
                  objc_msgSend_setBytes_length_atIndex_(a2, v135, v174, 128, 0, v136);
                  v137 = *(a1 + 184);
                  Sampler = MPSDevice::GetSampler();
                  objc_msgSend_setSamplerState_atIndex_(a2, v139, Sampler, 0, v140, v141);
                  v142 = *(a1 + 192);
                  v143 = MPSDevice::GetSampler();
                  objc_msgSend_setSamplerState_atIndex_(a2, v144, v143, 1, v145, v146);
                  v173[0] = (v119 + v121 - 1) / v119;
                  v173[1] = v124;
                  v173[2] = v125 * v168;
                  v172[0] = v119;
                  v172[1] = v123;
                  v172[2] = 1;
                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v147, v173, v172, v148, v149);
                  MPSAutoCache::~MPSAutoCache(v193);
                  return 0;
                }
              }

              else
              {
                v122 = *(a7 + 56);
                v123 = v120 / v119;
                if (v119 <= v120)
                {
                  goto LABEL_61;
                }
              }

              v124 = 0;
              goto LABEL_64;
            }

            goto LABEL_42;
          }

LABEL_39:
          v75 = 0;
          if ((*v22 & 0xF000000) == 0x1000000)
          {
            goto LABEL_43;
          }

LABEL_40:
          v76 = v75;
          v77 = a3;
          goto LABEL_48;
        }

        v75 = 0;
      }

LABEL_42:
      if ((*v22 & 0xF000000) == 0x1000000)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -7;
  }

  return result;
}

uint64_t sub_2399536B0(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v4 = *(a2 + 64);
  v17 = v4 & 1;
  v16 = (v4 & 2) != 0;
  v5 = (v4 >> 2) & 0xF;
  v15 = (v4 >> 2) & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v6, &v17, 53, 0, v7);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v8, &v16, 53, 1, v9);
  if (v5 <= 3)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v3, v10, &v15, 41, 2, v11);
  }

  v12 = *a2;
  v13 = _MPSNewSpecializedFunction();

  return v13;
}

uint64_t sub_2399538E4(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t **a6)
{
  v6 = a6;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *(a1 + *MEMORY[0x277CD7378]);
  v184 = *(a1 + *MEMORY[0x277CD7350]);
  v186 = *(a1 + *MEMORY[0x277CD7370]);
  v185 = *(a1 + 160);
  v13 = *(a1 + 208);
  v15 = a6[5];
  v14 = a6[6];
  v16 = *a6;
  v17 = a6[1];
  if (*a6 == v17)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v173 = a6[5];
    v174 = a6[6];
    v181 = *(a1 + 208);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v13 = v181;
    v14 = v174;
    v15 = v173;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v6 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  v182 = v14;
  if (v14 && v15)
  {
    v180 = v13;
    if ((v12 & 1) == 0)
    {
      if ((*v16 & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
      {
        v176 = a4;
        MTLReportFailure();
      }

      if ((*v17 & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
      {
        v176 = a5;
        MTLReportFailure();
      }

      if ((*(v17 + 5) & 4) != 0 && MTLReportFailureTypeEnabled())
      {
        v176 = a5;
        MTLReportFailure();
      }

      v19 = objc_msgSend_width(a4, a2, a3, a4, a5, a6, v176);
      if (v19 == objc_msgSend_width(a5, v20, v21, v22, v23, v24))
      {
        objc_msgSend_height(a4, v25, v26, v27, v28, v29);
        objc_msgSend_height(a5, v30, v31, v32, v33, v34);
      }

      v35 = objc_msgSend_width(a4, v25, v26, v27, v28, v29);
      if (v35 != objc_msgSend_width(a5, v36, v37, v38, v39, v40) || (v46 = objc_msgSend_height(a4, v41, v42, v43, v44, v45), v46 != objc_msgSend_height(a5, v47, v48, v49, v50, v51)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v177 = a5;
          v178 = a4;
          MTLReportFailure();
        }
      }

      if (v15 == objc_msgSend_width(a5, v52, v53, v54, v55, v56, v177, v178))
      {
        objc_msgSend_height(a5, v57, v58, v59, v60, v61);
      }

      if ((v15 != objc_msgSend_width(a5, v57, v58, v59, v60, v61) || v182 != objc_msgSend_height(a5, v62, v63, v64, v65, v66)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    MEMORY[0x23EE7BAC0](v197, v9, a5);
    v194 = objc_msgSend_width(a5, v67, v68, v69, v70, v71);
    v195 = objc_msgSend_height(a5, v72, v73, v74, v75, v76);
    v196 = 1;
    PixelInfo = MPSDevice::GetPixelInfo(v184, MTLPixelFormatR16Sint, MPSImageFeatureChannelFormatNone);
    TempBuffer = MPSAutoCache::GetTempBuffer(v197, 8 * v194, 0);
    TempTexture = MPSAutoCache::GetTempTexture();
    v179 = MPSAutoCache::GetTempTexture();
    v79 = **v6;
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      goto LABEL_25;
    }

    objc_msgSend_setComputePipelineState_(v10, v80, ComputeState, v81, v82, v83);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(v10, v85, a4, 0, v86, v87);
    objc_msgSend_setTexture_atIndex_(v10, v88, TempTexture, 1, v89, v90);
    objc_msgSend_setBuffer_offset_atIndex_(v10, v91, TempBuffer, 0, 0, v92);
    objc_msgSend_setBuffer_offset_atIndex_(v10, v93, TempBuffer, 4 * v194, 1, v94);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v10, v96, Sampler, 0, v97, v98);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v10, v99, 2048, 0, v100, v101);
    v102 = (v15 + 7) >> 3;
    v190 = 1;
    v191 = v102;
    v192 = 1;
    v188 = xmmword_239988A20;
    v189 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v10, v103, &v190, &v188, v104, v105);
    v110 = MPSLibrary::GetComputeState();
    if (!v110)
    {
      goto LABEL_25;
    }

    objc_msgSend_setComputePipelineState_(v10, v106, v110, v107, v108, v109);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(v10, v111, TempTexture, 0, v112, v113);
    objc_msgSend_setTexture_atIndex_(v10, v114, v179, 1, v115, v116);
    objc_msgSend_setBuffer_offset_atIndex_(v10, v117, TempBuffer, 0, 0, v118);
    objc_msgSend_setBuffer_offset_atIndex_(v10, v119, TempBuffer, 4 * v194, 1, v120);
    v121 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v10, v122, v121, 0, v123, v124);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v10, v125, 2048, 0, v126, v127);
    v190 = 1;
    v191 = v102;
    v192 = 1;
    v188 = xmmword_239988A20;
    v189 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v10, v128, &v190, &v188, v129, v130);
    MPSAutoCache::ReleaseTempResource();
    v131 = (v194 + 255) & 0xFFFFFFFFFFFFFF00;
    v132 = MPSAutoCache::GetTempBuffer(v197, 4 * v131 * (v195 + 16), 0);
    v137 = MPSLibrary::GetComputeState();
    if (v137)
    {
      objc_msgSend_setComputePipelineState_(v10, v133, v137, v134, v135, v136);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(v10, v138, v179, 0, v139, v140);
      objc_msgSend_setTexture_atIndex_(v10, v141, a5, 1, v142, v143);
      objc_msgSend_setBuffer_offset_atIndex_(v10, v144, v132, 0, 0, v145);
      objc_msgSend_setBuffer_offset_atIndex_(v10, v146, v132, 2 * v131 * (v195 + 16), 1, v147);
      objc_msgSend_setBuffer_offset_atIndex_(v10, v148, TempBuffer, 0, 2, v149);
      objc_msgSend_setBuffer_offset_atIndex_(v10, v150, TempBuffer, 4 * v194, 3, v151);
      v152 = *(*(v11 + *MEMORY[0x277CD7370]) + 32);
      v153 = v152[2];
      (*(*v152 + 16))(v152);
      v157 = v153 + 64.0;
      HIDWORD(v158) = 0;
      LODWORD(v158) = v180;
      if (v194 >= 0xA01)
      {
        v157 = v153;
      }

      *(&v158 + 1) = v157;
      DWORD2(v158) = v156;
      v187 = v158;
      objc_msgSend_setBytes_length_atIndex_(v10, v154, &v187, 16, 4, v155);
      v159 = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(v10, v160, v159, 0, v161, v162);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v10, v163, 0x2000, 0, v164, v165);
      v190 = 1;
      v191 = (v182 + 7) >> 3;
      v192 = 16;
      v188 = vdupq_n_s64(8uLL);
      v189 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v10, v166, &v190, &v188, v167, v168);
      v169 = 0;
    }

    else
    {
LABEL_25:
      v169 = -1;
    }

    MPSAutoCache::~MPSAutoCache(v197);
    return v169;
  }

  return result;
}

uint64_t sub_2399543A8(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v4 = *(a2 + 64);
  v16 = v4 & 1;
  v15 = (v4 & 2) != 0;
  v14 = (v4 & 4) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v5, &v16, 53, 0, v6);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v7, &v15, 53, 1, v8);
  objc_msgSend_setConstantValue_type_atIndex_(v3, v9, &v14, 53, 2, v10);
  v11 = *a2;
  v12 = _MPSNewSpecializedFunction();

  return v12;
}

uint64_t sub_23995478C(float32x4_t *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v14, 1, a5, a6);
  result = sub_239954834(a1, a2, a3, v11, a5, a6);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239954834(float32x4_t *a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1->i64 + *MEMORY[0x277CD7378]);
  v8 = a1[17].u8[0];
  v104 = *(a1->i64 + *MEMORY[0x277CD7350]);
  v113 = *(a1->i64 + *MEMORY[0x277CD7370]);
  v112 = a1[16].u8[0];
  v107 = a1[15];
  v108 = a1[14];
  v110 = a1[13].u64[0];
  v105 = a1[16].i64[1];
  v111 = a1[10].i64[0];
  v109 = *(a6 + 16);
  v117 = *(a6 + 40);
  v9 = *a6;
  v10 = *(a6 + 8);
  v11 = *(a6 + 88);
  v114 = a1[13].u8[8];
  if (v11)
  {
    v12 = objc_msgSend_graph(v11, a2, a3, a4, a5, a6);
    v13 = **(***(v12 + 56) + 8);
    if (*(*(***(v12 + 56) + 8) + 8) == v13)
    {
      sub_239955C4C();
    }

    v14 = *(*v13 + 16);
    v16 = *v14;
    v15 = v14[1];
    if (v15 != v16)
    {
      if (((v15 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_239955CF4();
    }

    if ((MEMORY[0] - 1) >= 4)
    {
      abort();
    }

    v17 = MEMORY[0];
    operator delete(0);
    v23 = 0;
    v24 = 0;
    v25 = v117;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v23 = a5;
  v26 = objc_msgSend_objectAtIndexedSubscript_(a4, a2, 0, a4, a5, a6);
  v24 = v26;
  if (v9 == v10 && (v26 == v23 || (objc_msgSend_isEqual_(v26, v18, v23, v20, v21, v22) & 1) != 0))
  {
    return -18;
  }

  v17 = *(v9 + 3) & 0xF;
  v25 = v117;
  if ((v7 & 1) == 0)
  {
LABEL_10:
    if (!v8)
    {
      v98 = MTLReportFailureTypeEnabled();
      v25 = v117;
      if (v98)
      {
        v99 = objc_opt_class();
        v102 = NSStringFromClass(v99);
        MTLReportFailure();
        v25 = v117;
      }
    }

    if (!v11)
    {
      if ((*(v9 + 3) & 0xF) == 0)
      {
        v100 = MTLReportFailureTypeEnabled();
        v25 = v117;
        if (v100)
        {
          v102 = v24;
          MTLReportFailure();
          v25 = v117;
        }
      }

      if ((*(v10 + 3) & 0xF) == 0)
      {
        v101 = MTLReportFailureTypeEnabled();
        v25 = v117;
        if (v101)
        {
          v102 = v23;
          MTLReportFailure();
          v25 = v117;
        }
      }
    }
  }

LABEL_14:
  if (!v8)
  {
    return -20;
  }

  result = 0;
  v28 = v25.i64[1];
  if (v25.i64[1])
  {
    v29 = v25.i64[0];
    if (v25.i64[0])
    {
      *&v30 = -1;
      *(&v30 + 1) = -1;
      v134 = v30;
      v135 = v30;
      v131 = v30;
      v132 = -1;
      v136 = -1;
      v133 = 0;
      v103 = v24;
      if (v11)
      {
        v31 = *(objc_msgSend_graph(v11, v18, v19, v20, v21, v22) + 80) == 1;
        v136 = *(objc_msgSend_graph(v11, v32, v33, v34, v35, v36, v102) + 72) | (v31 << 16);
        v42 = ((v111 == 0) << 7) | ((v17 == 4) << 8) | (2 * (*(objc_msgSend_graph(v11, v37, v38, v39, v40, v41) + 76) & 0x3FLL)) | 1;
      }

      else
      {
        v136 = 0;
        v42 = 256;
      }

      v137 = v42;
      if (v114)
      {
        v43 = 4;
      }

      else
      {
        v43 = 3;
      }

      if (v17 != 4)
      {
        v43 = v17;
      }

      if (v112)
      {
        v44 = 0;
      }

      else
      {
        v44 = 5;
      }

      v45 = (v43 + v44);
      objc_msgSend_copy(**(*(v113 + 280) + 16 * v45), v18, v19, v20, v21, v22, v102);
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      if (PipelineStateForMPSKey)
      {
        v51 = PipelineStateForMPSKey;
        objc_msgSend_setComputePipelineState_(a2, v47, PipelineStateForMPSKey, v48, v49, v50, v11, 0, 0, 0, 0);
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseComputeState();
        v57 = objc_msgSend_maxTotalThreadsPerThreadgroup(v51, v52, v53, v54, v55, v56);
        v64 = (&unk_239988AE0 + 32 * *(*(*(v113 + 280) + 16 * v45) + 64));
        v65 = *v64;
        if (v57 >= 16 * *v64)
        {
          v66 = 16;
        }

        else
        {
          v66 = v57 / v65;
        }

        *v63.i32 = v110;
        v68 = v64[2] * v65;
        v69 = v64[3] * v66;
        v70 = v28 + v69 - 1;
        v129 = 0;
        v130 = 0;
        v121[0] = v108;
        v121[1] = vdivq_f32(vdupq_lane_s32(v63, 0), vsubq_f32(v107, v108));
        v71 = vmovn_s64(*(a6 + 64));
        v123 = v71.i16[2];
        v122 = v71.i16[0];
        v72 = vmovn_s64(v109);
        v125 = v72.i16[2];
        v124 = v72.i16[0];
        v73 = vmovn_s64(v117);
        v127 = v73.i16[2];
        v126 = v73.i16[0];
        v128 = (v110 - 1);
        LOWORD(v129) = v110;
        if ((objc_msgSend_retainedReferences(a3, v58, v59, v60, v61, v62) & 1) == 0)
        {
          v77 = v105;
          v120[0] = MEMORY[0x277D85DD0];
          v120[1] = 3221225472;
          v120[2] = sub_239955C44;
          v120[3] = &unk_278AC37A8;
          v120[4] = v105;
          objc_msgSend_addCompletedHandler_(a3, v78, v120, v79, v80, v81);
        }

        v82 = (v29 + v68 - 1) / v68;
        v83 = v70 / v69;
        if (v11)
        {
          MPSSetResourcesOnCommandEncoder();
        }

        else
        {
          objc_msgSend_setTexture_atIndex_(a2, v74, v103, 1, v75, v76);
          Sampler = MPSDevice::GetSampler();
          objc_msgSend_setSamplerState_atIndex_(a2, v87, Sampler, 0, v88, v89);
          objc_msgSend_setTexture_atIndex_(a2, v90, a5, 0, v91, v92);
        }

        objc_msgSend_setBytes_length_atIndex_(a2, v84, v121, 64, 29, v85);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v93, v105, 0, 28, v94);
        v119[0] = v82;
        v119[1] = v83;
        v119[2] = 1;
        v118[0] = v65;
        v118[1] = v66;
        v118[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v95, v119, v118, v96, v97);
        return 0;
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          v67 = objc_opt_class();
          NSStringFromClass(v67);
          MTLReportFailure();
        }

        return -19;
      }
    }
  }

  return result;
}

void sub_239955C64(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239955CC0(exception, a1);
  __cxa_throw(exception, &unk_284C6BF00, MEMORY[0x277D825F8]);
}

std::logic_error *sub_239955CC0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_239955D0C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239955D68(exception, a1);
  __cxa_throw(exception, &unk_284C6BF28, MEMORY[0x277D825F0]);
}

std::logic_error *sub_239955D68(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_239956830(uint64_t result, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    if (*(result + *MEMORY[0x277CD7380]))
    {
      return vfprintf(*MEMORY[0x277D85DF8], a3, va);
    }
  }

  return result;
}

uint64_t sub_239956C20(void *a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = objc_msgSend_scaleTransform(a1, a2, a3, a4, a5, a6);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v79 = a1[20];
  v15 = *(a6 + 64);
  v14 = *(a6 + 72);
  v80 = objc_msgSend_width(a4, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_height(a4, v21, v22, v23, v24, v25);
  v27.f32[0] = v80;
  v27.f32[1] = v26;
  v81 = v27;
  v33 = objc_msgSend_width(a5, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_height(a5, v34, v35, v36, v37, v38);
  if (v11)
  {
    __asm { FMOV            V2.2S, #1.0 }

    v49 = vmaxnm_f32(vcvt_f32_f64(*v11), vdiv_f32(_D2, v81));
    v50 = vcvt_f32_f64(v11[1]);
    if (a4 == a5)
    {
      return -18;
    }
  }

  else
  {
    v51.f32[0] = v33;
    v51.f32[1] = v39;
    v49 = vdiv_f32(v51, v81);
    v50 = 0;
    if (a4 == a5)
    {
      return -18;
    }
  }

  if (objc_msgSend_isEqual_(a4, v40, a5, v41, v42, v43))
  {
    return -18;
  }

  if (*(a6 + 48) && *(a6 + 40))
  {
    if ((**a6 & 0x80000000000) != 0)
    {
      _ZF = (*(v12 + 1476) & 0x80) == 0;
    }

    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a2, v54, ComputeState, v55, v56, v57);
    v90 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v85[0] = vdiv_f32(_D0, v49);
    v85[1] = v50;
    v59 = vmovn_s64(*(a6 + 16));
    v87 = v59.i16[2];
    v86 = v59.i16[0];
    v60 = *(a6 + 48);
    v61 = vmovn_s64(*(a6 + 40));
    v62 = (*(a6 + 40) + 15) >> 4;
    v63 = (v60 + 15) >> 4;
    v89 = v61.i16[2];
    v88 = v61.i16[0];
    WORD1(v90) = v14;
    LOWORD(v90) = v15;
    objc_msgSend_setTexture_atIndex_(a2, v64, a4, 0, v65, v66);
    objc_msgSend_setTexture_atIndex_(a2, v67, a5, 1, v68, v69);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v71, Sampler, 0, v72, v73);
    objc_msgSend_setBytes_length_atIndex_(a2, v74, v85, 32, 0, v75);
    v84[0] = v62;
    v84[1] = v63;
    v84[2] = 1;
    v82 = vdupq_n_s64(0x10uLL);
    v83 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v76, v84, &v82, v77, v78);
  }

  return 0;
}

void sub_239957D10(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239957D30(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23995818C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  operator delete(v21);
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_239959014(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t MPSSubTileEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, unint64_t *a7)
{
  v9 = *a7;
  if (*a7 && (v10 = a7[1]) != 0)
  {
    v12 = *(a6 + 5);
    v11 = *(a6 + 6);
    v13 = 4;
    if (*(*(a1 + *MEMORY[0x277CD7350]) + 1482) > 4uLL)
    {
      v13 = *(*(a1 + *MEMORY[0x277CD7350]) + 1482);
    }

    if (v9 >= v12)
    {
      v15 = 1;
      v16 = *(a6 + 5);
    }

    else
    {
      v14 = v12 - 1;
      v15 = (v12 - 1 + v9) / v9;
      if (v15 * v9 == v12)
      {
        v16 = *a7;
      }

      else
      {
        v16 = v9 - (v15 * v9 - v12) / (v15 * v13) * v13;
        v33 = v16 * v15 - v12;
        if (v33)
        {
          if (v15 >= 2)
          {
            v35 = v9 + (v15 * v13 - v13 + v14 - (v15 - 1) * v9) / (v15 * v13 - v13) * v13;
            v36 = v35 * (v15 - 1) - v12;
            if (v36 >= v33 || (v16 = v9 + (v15 * v13 - v13 + v14 - (v15 - 1) * v9) / (v15 * v13 - v13) * v13, v33 = v35 * (v15 - 1) - v12, --v15, v36))
            {
              v37 = v9 > v13;
              v38 = v9 - v13;
              if (v37)
              {
                v39 = (v38 + v14) / v38;
                if (v39 * v38 - v12 < v33)
                {
                  v16 = v38;
                  v15 = v39;
                }
              }
            }
          }

          else
          {
            v15 = 1;
          }
        }
      }
    }

    if (v10 >= v11)
    {
      v21 = 1;
      v22 = *(a6 + 6);
    }

    else
    {
      v20 = v11 - 1;
      v21 = (v11 - 1 + v10) / v10;
      if (v21 * v10 == v11)
      {
        v22 = a7[1];
      }

      else
      {
        v22 = v10 - (v21 * v10 - v11) / (v21 * v13) * v13;
        v34 = v22 * v21 - v11;
        if (v34)
        {
          if (v21 >= 2)
          {
            v40 = v10 + (v21 * v13 - v13 + v20 - (v21 - 1) * v10) / (v21 * v13 - v13) * v13;
            v41 = v40 * (v21 - 1) - v11;
            if (v41 >= v34 || (v22 = v10 + (v21 * v13 - v13 + v20 - (v21 - 1) * v10) / (v21 * v13 - v13) * v13, v34 = v40 * (v21 - 1) - v11, --v21, v41))
            {
              v37 = v10 > v13;
              v42 = v10 - v13;
              if (v37 && (v42 + v20) / v42 * v42 - v11 < v34)
              {
                v22 = v42;
                v21 = (v42 + v20) / v42;
              }
            }
          }

          else
          {
            v21 = 1;
          }
        }
      }
    }

    v23 = a6[3];
    v53 = a6[2];
    v54 = v23;
    v24 = a6[5];
    v55 = a6[4];
    v56 = v24;
    v25 = a6[1];
    v51 = *a6;
    v52 = v25;
    if (v11 && v12)
    {
      v26 = 0;
      v27 = (v15 - 1) * v16;
      v28 = (v21 - 1) * v22;
      v45 = v22;
      v46 = v11;
      v44 = v28;
      while (2)
      {
        v29 = 0;
        *(&v55 + 1) = *(a6 + 9) + v26;
        v30 = v11 - v26;
        if (v26 < v28)
        {
          v30 = v22;
        }

        *(&v52 + 1) = *(a6 + 3) + v26;
        *&v54 = v30;
        v31 = v12;
        do
        {
          *&v55 = v29 + *(a6 + 8);
          if (v29 >= v27)
          {
            v32 = v31;
          }

          else
          {
            v32 = v16;
          }

          *&v52 = v29 + *(a6 + 2);
          *(&v53 + 1) = v32;
          result = (*(a1 + 176))(*(a1 + 192), a2, a3, a4, a5, &v51);
          if (result)
          {
            if (v29 | v26)
            {
              v43 = result;
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              return v43;
            }

            return result;
          }

          v29 += v16;
          v31 -= v16;
        }

        while (v29 < v12);
        result = 0;
        v22 = v45;
        v11 = v46;
        v26 += v45;
        v28 = v44;
        if (v26 < v46)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 176);
    v18 = *(a1 + 192);

    return v17(v18, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_23995A480(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, int64x2_t *a6)
{
  v761 = *MEMORY[0x277D85DE8];
  v6 = &a6[2].i64[1];
  v7 = *(a6 + 40);
  v8 = a6[3].i64[0];
  v695 = v7;
  if (v8)
  {
    v9 = v7.i64[0] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_440;
  }

  v664 = v7.i64[0];
  v10 = *(a1 + *MEMORY[0x277CD7350]);
  v626 = a6[1];
  v669 = a6[4];
  v11 = a6->i64[1];
  v12 = *(a1 + 312);
  v627 = *(a1 + 360);
  v686 = *(a1 + 368);
  if (*(a1 + 320) > 1 || v12 < 1)
  {
    v15 = a6[3].i64[0];
    v16 = *(a1 + *MEMORY[0x277CD7350]);
    v609 = a6->i64[1];
    v618 = *(a1 + 312);
    MEMORY[0x23EE7BAC0](v701, a3, a5);
    MPSDevice::GetPixelInfo(v16, MTLPixelFormatRGBA32Float, MPSImageFeatureChannelFormatNone);
    v17 = objc_alloc_init(MEMORY[0x277CD7058]);
    v23 = objc_msgSend_textureType(a5, v18, v19, v20, v21, v22);
    objc_msgSend_setTextureType_(v17, v24, v23, v25, v26, v27);
    objc_msgSend_setPixelFormat_(v17, v28, 125, v29, v30, v31);
    objc_msgSend_setWidth_(v17, v32, *v6, v33, v34, v35);
    objc_msgSend_setHeight_(v17, v36, a6[3].i64[0], v37, v38, v39);
    v40 = (*(*v16 + 32))(v16);
    objc_msgSend_setStorageMode_(v17, v41, v40, v42, v43, v44);
    objc_msgSend_setUsage_(v17, v45, 3, v46, v47, v48);
    v699 = *v6;
    v700 = v6[2];
    v616 = (v618 - 2);
    if (v618 < 2)
    {
      v614 = 0;
      CompressedTempTexture = a5;
      v50 = v626;
    }

    else
    {
      CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
      v614 = MPSAutoCache::GetCompressedTempTexture();
      v50 = 0uLL;
    }

    v694 = v50;

    if (v618 < 1)
    {
LABEL_335:
      MPSAutoCache::~MPSAutoCache(v701);
      goto LABEL_440;
    }

    v74 = 0;
    v612 = (v15 + 1) >> 1;
    v613 = v664 - 1;
    v611 = vmovn_s64(v695);
    v608 = &v703;
    v75 = vmovn_s64(v669);
    v610 = (v15 + 7) >> 3;
    while (1)
    {
      v691 = a4;
      a4 = CompressedTempTexture;
      v79 = &v627[8 * v74];
      v80 = *(v79 + 2);
      v688 = v75;
      if (v80 > 3)
      {
        if ((v80 - 4) >= 6)
        {
          goto LABEL_32;
        }

        v696 = v74;
        v649 = *(v79 + 2);
        if (v80 == 5)
        {
          v81 = 45;
          v82 = v686;
        }

        else
        {
          v82 = v686;
          if ((v80 - 6) > 3)
          {
            v81 = 44;
          }

          else
          {
            v81 = qword_239988CA0[v80 - 6];
          }
        }

        v87 = *(a1 + *MEMORY[0x277CD7370]);
        v88 = (v82 + 4 * *v79);
        v646 = *(a1 + *MEMORY[0x277CD7350]);
        v642 = *(a1 + 160);
        v679 = *(a1 + 480);
        v89 = *(a1 + 488);
        v670 = *(a1 + 288);
        v656 = *(a1 + 292);
        v660 = *(a1 + 296);
        v665 = *(a1 + 300);
        v90 = *(a1 + 312);
        v92 = *(a1 + 336);
        v91 = *(a1 + 340);
        v637 = *(a1 + 408);
        v620 = *(a1 + 416);
        v622 = *(a1 + 376);
        v674 = *v88;
        v93 = (&off_278AB4DA0)[16 * v81];
        *&v94 = -1;
        *(&v94 + 1) = -1;
        v712 = v94;
        v713 = v94;
        *&v711[8] = v94;
        *&v94 = *(a1 + 348);
        v95.i64[0] = v94;
        v95.i64[1] = DWORD1(v94);
        *&v710[8] = vextq_s8(v95, v95, 8uLL);
        v96 = *(a1 + 356);
        *v710 = v90;
        *v711 = v96;
        MPSLibrary::CreateUberShaderKey();
        PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
        v98 = v88[5];
        v104 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v99, v100, v101, v102, v103, 0, 0, 0, 0, 0);
        v105 = v104;
        if (v104 <= 1)
        {
          v106 = 1;
        }

        else
        {
          v106 = v104;
        }

        v107 = MPSIsTextureTwiddled();
        if (v105 <= 1)
        {
          v112 = 1;
        }

        else
        {
          v112 = v106 >> 1;
        }

        if (v105 > 7)
        {
          v113 = v107;
        }

        else
        {
          v113 = 0;
        }

        v114 = (v112 + v613) / v112;
        if ((v106 & 7) != 0)
        {
          v629 = 2;
          v633 = v612;
          v117 = v106 >> 1;
        }

        else
        {
          v115 = v113 == 0;
          if (v113)
          {
            v114 = ((v106 >> 3) + v613) / (v106 >> 3);
            v116 = v610;
          }

          else
          {
            v116 = v612;
          }

          if (v113)
          {
            v117 = v106 >> 3;
          }

          else
          {
            v117 = v106 >> 1;
          }

          v118 = 2;
          if (!v115)
          {
            v118 = 8;
          }

          v629 = v118;
          v633 = v116;
        }

        v120 = v679 == 1 || v92 > 3;
        v122 = v89 != 1 && v91 < 4;
        if (!v696)
        {
          v123 = v98 | 0x10;
          if (v120)
          {
            v123 = v98;
          }

          if (v679 == 2)
          {
            v98 = v123;
          }

          if (!v120 && !v122)
          {
            v98 |= 0x20u;
          }
        }

        if (v696 == v90 - 1 && v91 <= 3)
        {
          v124 = !v120;
          if (v89 == 1)
          {
            v124 = 0;
          }

          if (v124)
          {
            if (v89 == 2)
            {
              v98 |= 0x40u;
            }
          }

          else
          {
            v98 |= 0x80u;
          }
        }

        objc_msgSend_setComputePipelineState_(a2, v108, PipelineStateForMPSKey, v109, v110, v111);
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseMPSKey();
        objc_msgSend_setTexture_atIndex_(a2, v125, v691, 0, v126, v127);
        objc_msgSend_setTexture_atIndex_(a2, v128, CompressedTempTexture, 1, v129, v130);
        *&v133 = __PAIR64__(v656, v670);
        *(&v133 + 1) = __PAIR64__(v665, v660);
        v134 = vmovn_s64(v694);
        if ((v649 & 0xFFFFFFFD) == 4)
        {
          *v710 = v133;
          *&v710[18] = v688.i16[2];
          *&v710[16] = v688.i16[0];
          *&v710[22] = v134.i16[2];
          *&v710[20] = v134.i16[0];
          *&v711[2] = v611.i16[2];
          *v711 = v611.i16[0];
          *&v711[4] = v98;
          *&v711[8] = v620;
          *&v711[16] = v696;
          v135 = v622 + 4 * v674;
          DWORD1(v712) = *v135;
          LODWORD(v712) = *(v135 + 4);
          *(&v712 + 1) = *(v135 + 8);
          *&v713 = *(v135 + 16);
          objc_msgSend_setBytes_length_atIndex_(a2, v131, v710, 80, 0, v132);
        }

        else
        {
          switch(v649)
          {
            case 5:
              *v710 = v133;
              *&v710[18] = v688.i16[2];
              *&v710[16] = v688.i16[0];
              *&v710[22] = v134.i16[2];
              *&v710[20] = v134.i16[0];
              *&v711[2] = v611.i16[2];
              *v711 = v611.i16[0];
              *&v711[4] = v98;
              *&v711[8] = v620;
              *&v711[16] = v696;
              v712 = *(v622 + 4 * v674);
              objc_msgSend_setBytes_length_atIndex_(a2, v131, v710, 64, 0, v132);
              break;
            case 9:
              *v710 = v133;
              *&v710[18] = v688.i16[2];
              *&v710[16] = v688.i16[0];
              *&v710[22] = v134.i16[2];
              *&v710[20] = v134.i16[0];
              *&v711[2] = v611.i16[2];
              *v711 = v611.i16[0];
              *&v711[4] = v98;
              *&v711[8] = v620;
              *&v711[16] = v696;
              v249 = (v622 + 4 * v674);
              v712 = *v249;
              v713 = v249[1];
              *&v711[12] = v674 + 8;
              objc_msgSend_setBytes_length_atIndex_(a2, v131, v710, 80, 0, v132);
              break;
            case 8:
              *v710 = v133;
              *&v710[18] = v688.i16[2];
              *&v710[16] = v688.i16[0];
              *&v710[22] = v134.i16[2];
              *&v710[20] = v134.i16[0];
              *&v711[2] = v611.i16[2];
              *v711 = v611.i16[0];
              *&v711[4] = v98;
              *&v711[8] = v620;
              *&v711[16] = v696;
              *&v711[12] = v674;
              v248 = v622 + 4 * v674;
              LODWORD(v712) = *v248;
              *(&v712 + 4) = *(v248 + 4);
              HIDWORD(v712) = *(v248 + 12);
              v713 = *(v248 + 16);
              v714 = *(v248 + 32);
              v715 = *(v248 + 48);
              LODWORD(v716) = *(v248 + 64);
              objc_msgSend_setBytes_length_atIndex_(a2, v131, v710, 128, 0, v132);
              break;
            case 7:
              *v710 = v133;
              *&v710[18] = v688.i16[2];
              *&v710[16] = v688.i16[0];
              *&v710[22] = v134.i16[2];
              *&v710[20] = v134.i16[0];
              *&v711[2] = v611.i16[2];
              *v711 = v611.i16[0];
              *&v711[4] = v98;
              *&v711[8] = v620;
              *&v711[16] = v696;
              *&v711[12] = v674;
              v136 = v622 + 4 * v674;
              v712 = *v136;
              v713 = *(v136 + 16);
              *&v714 = *(v136 + 32);
              objc_msgSend_setBytes_length_atIndex_(a2, v131, v710, 96, 0, v132);
              break;
          }
        }

        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v251, Sampler, 0, v252, v253);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v254, v637, 0, 3, v255);
        *v710 = v114;
        *&v710[8] = v633;
        *&v710[16] = 1;
        *v750 = v117;
        *&v750[8] = v629;
        *&v750[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v256, v710, v750, v257, v258);
        goto LABEL_31;
      }

      if (v80 == 1)
      {
        break;
      }

      if (v80 == 2)
      {
        v179 = (v686 + 4 * *v79);
        v180 = *(a1 + *MEMORY[0x277CD7370]);
        v680 = *(a1 + *MEMORY[0x277CD7350]);
        v634 = *(a1 + 160);
        v648 = *(a1 + 480);
        v181 = *(a1 + 488);
        v667 = *(a1 + 288);
        v651 = *(a1 + 292);
        v658 = *(a1 + 296);
        v662 = *(a1 + 300);
        v644 = *(a1 + 312);
        v182 = *(a1 + 340);
        v639 = *(a1 + 336);
        v183 = *(a1 + 384);
        v184 = *(a1 + 416);
        v630 = *(a1 + 408);
        if ((*v609 & 0xF000000000) != 0)
        {
          v185 = 0;
        }

        else
        {
          v185 = (*(a1 + *MEMORY[0x277CD7378]) >> 1) & 1;
        }

        v676 = v185;
        v186 = v179[3];
        *(&v753 + 1) = v186;
        *&v753 = 1.0 / v186;
        *(&v753 + 2) = 0.5 / v186;
        *(&v753 + 3) = (v186 - 1) / v186;
        v672 = *(v183 + 8 * v179[4]);
        if (a3 && (objc_msgSend_retainedReferences(a3, v69, v70, v71, v72, v73) & 1) == 0)
        {
          v187 = v672;
          *&v702 = MEMORY[0x277D85DD0];
          *(&v702 + 1) = 3221225472;
          v703 = sub_239963ED0;
          v704 = &unk_278AC37A8;
          v705 = v672;
          objc_msgSend_addCompletedHandler_(a3, v188, &v702, v189, v190, v191);
        }

        v192 = v179[1];
        if (v192 > 2)
        {
          if (v192 == 3)
          {
            v194 = v676 == 0;
            v195 = 9;
            v196 = 5;
            goto LABEL_257;
          }

          v193 = 7;
          if (v192 == 4)
          {
            v194 = v676 == 0;
            v195 = 10;
            v196 = 6;
            goto LABEL_257;
          }
        }

        else if (v192 == 1)
        {
          if (v676)
          {
            v193 = 3;
          }

          else
          {
            v193 = 7;
          }
        }

        else
        {
          v193 = 7;
          if (v192 == 2)
          {
            v194 = v676 == 0;
            v195 = 8;
            v196 = 4;
LABEL_257:
            if (v194)
            {
              v193 = v195;
            }

            else
            {
              v193 = v196;
            }
          }
        }

        v311 = (&off_278AB4DA0)[16 * v193];
        *&v312 = -1;
        *(&v312 + 1) = -1;
        *&v711[8] = v312;
        v712 = v312;
        v713 = v312;
        v313 = *(a1 + 312);
        *&v312 = *(a1 + 348);
        v314.i64[0] = v312;
        v314.i64[1] = DWORD1(v312);
        *&v710[8] = vextq_s8(v314, v314, 8uLL);
        v315 = *(a1 + 356);
        *v710 = v313;
        *v711 = v315;
        MPSLibrary::CreateUberShaderKey();
        v316 = MPSLibrary::GetPipelineStateForMPSKey();
        v317 = v179[5];
        v323 = objc_msgSend_threadExecutionWidth(v316, v318, v319, v320, v321, v322, 0, 0, 0, 0, 0);
        v324 = v323;
        if (v323 <= 1)
        {
          v325 = 1;
        }

        else
        {
          v325 = v323;
        }

        v326 = MPSIsTextureTwiddled();
        v331 = v184;
        v332 = v325 >> 1;
        if (v324 <= 1)
        {
          v333 = 1;
        }

        else
        {
          v333 = v325 >> 1;
        }

        if (v324 > 7)
        {
          v334 = v326;
        }

        else
        {
          v334 = 0;
        }

        v335 = (v333 + v613) / v333;
        if ((v325 & 7) != 0)
        {
          v338 = v612;
          v339 = 2;
        }

        else
        {
          v336 = v325 >> 3;
          v337 = v334 == 0;
          if (v334)
          {
            v335 = ((v325 >> 3) + v613) / (v325 >> 3);
            v338 = v610;
          }

          else
          {
            v338 = v612;
          }

          if (v334)
          {
            v332 = v336;
          }

          v339 = 2;
          if (!v337)
          {
            v339 = 8;
          }
        }

        v624 = v339;
        v341 = v648 == 1 || v639 > 3;
        v343 = v181 != 1 && v182 < 4;
        if (!v74)
        {
          v344 = v317 | 0x10;
          if (v341)
          {
            v344 = v317;
          }

          if (v648 == 2)
          {
            v317 = v344;
          }

          if (!v341 && !v343)
          {
            v317 |= 0x20u;
          }
        }

        if (v74 == v644 - 1 && v182 <= 3)
        {
          v345 = !v341;
          if (v181 == 1)
          {
            v345 = 0;
          }

          if (v345)
          {
            if (v181 == 2)
            {
              v317 |= 0x40u;
            }
          }

          else
          {
            v317 |= 0x80u;
          }
        }

        *&v346 = __PAIR64__(v651, v667);
        *(&v346 + 1) = __PAIR64__(v662, v658);
        v347 = vmovn_s64(v694);
        *v750 = v346;
        *&v750[18] = v688.i16[2];
        *&v750[16] = v688.i16[0];
        *&v750[22] = v347.i16[2];
        *&v750[20] = v347.i16[0];
        WORD1(v751) = v611.i16[2];
        LOWORD(v751) = v611.i16[0];
        HIDWORD(v751) = v317;
        *&v752 = v331;
        DWORD2(v752) = v74;
        objc_msgSend_setComputePipelineState_(a2, v327, v316, v328, v329, v330);
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseMPSKey();
        objc_msgSend_setTexture_atIndex_(a2, v348, v691, 0, v349, v350);
        objc_msgSend_setTexture_atIndex_(a2, v351, a4, 1, v352, v353);
        objc_msgSend_setTexture_atIndex_(a2, v354, v672, 2, v355, v356);
        v357 = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v358, v357, 0, v359, v360);
        v361 = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v362, v361, 1, v363, v364);
        objc_msgSend_setBytes_length_atIndex_(a2, v365, v750, 64, 0, v366);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v367, v630, 0, 3, v368);
        *v710 = v335;
        *&v710[8] = v338;
        *&v710[16] = 1;
        v759.i64[0] = v332;
        v759.i64[1] = v624;
        *&v760 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v369, v710, &v759, v370, v371);
        goto LABEL_32;
      }

      if (v80 == 3)
      {
        v696 = v74;
        v755 = 0;
        v756 = 0;
        v757 = 0;
        v83 = *(v79 + 3);
        if (v83 <= 0)
        {
          v84 = 0;
          v85 = a1;
        }

        else
        {
          v84 = v686 + 4 * *v79;
          v755 = v84;
          v85 = a1;
          if (v83 != 1)
          {
            v756 = v686 + 4 * v79[1];
            if (v83 > 2)
            {
              v757 = v686 + 4 * v79[2];
              if (v83 == 3)
              {
                v86 = 0;
              }

              else
              {
                v86 = v686 + 4 * v79[3];
              }

              goto LABEL_174;
            }

LABEL_173:
            v86 = 0;
            v757 = 0;
LABEL_174:
            v197 = *(v85 + *MEMORY[0x277CD7370]);
            v198 = *(v85 + *MEMORY[0x277CD7350]);
            v199 = *(v85 + 160);
            v200 = *(v85 + 480);
            v758 = v86;
            v201 = *(v85 + 488);
            v202 = v85 + 288;
            v203 = *(v85 + 288);
            v204 = *(v85 + 292);
            v206 = *(v85 + 296);
            v205 = *(v85 + 300);
            v207 = *(v85 + 312);
            v208 = *(v85 + 340);
            v659 = *(v85 + 336);
            v209 = (v85 + 360);
            v210 = v209[2];
            v211 = v209[4];
            v640 = v209[6];
            v681 = v209[7];
            if (v83 >= 4)
            {
              v212 = 4;
            }

            else
            {
              v212 = v83;
            }

            v759 = 0u;
            v760 = 0u;
            LODWORD(v723) = v212;
            v673 = v205;
            v677 = v203;
            v663 = v204;
            v668 = v206;
            if (v83 <= 0)
            {
              v623 = 0;
LABEL_191:
              v652 = 1;
              v222 = 1;
            }

            else
            {
              v213 = 0;
              v214 = 0;
              v215 = 0;
LABEL_179:
              v216 = &v722 + v213;
              v217 = &v713 + 8 * v213 + 3;
              do
              {
                v218 = *(&v755 + v213);
                v219 = *v218;
                v220 = *(v218 + 2);
                *(v216 - 8) = v220;
                *(v216 - 4) = v218[2];
                if (v220 == 5)
                {
                  v214 = *(v211 + 8 * v218[3]);
                  *v216 = *(v218 + 3);
                  v759.i64[v213] = v214;
                  v215 = 1;
                  v9 = v212 - 1 == v213++;
                  if (!v9)
                  {
                    goto LABEL_179;
                  }

                  v623 = v214;
                  goto LABEL_189;
                }

                v221 = (v210 + 4 * v219);
                if (v220 > 4)
                {
                  v215 = 1;
                }

                *(v217 - 7) = *v221;
                *(v217 - 6) = v221[1];
                *(v217 - 5) = v221[2];
                *(v217 - 4) = v221[3];
                *(v217 - 3) = v221[4];
                *(v217 - 2) = v221[5];
                *(v217 - 1) = v221[6];
                *v217 = v221[7];
                v217 += 8;
                v759.i64[v213++] = 0;
                ++v216;
              }

              while (v212 != v213);
              v623 = v214;
              if (!v215)
              {
                goto LABEL_191;
              }

LABEL_189:
              v652 = 0;
              v222 = 2;
            }

            v223 = (&off_278AB4DA0)[16 * v222];
            *&v224 = -1;
            *(&v224 + 1) = -1;
            v753 = v224;
            v754 = v224;
            v752 = v224;
            *v750 = v207;
            *&v224 = *(v202 + 60);
            v225.i64[0] = v224;
            v225.i64[1] = DWORD1(v224);
            *&v750[8] = vextq_s8(v225, v225, 8uLL);
            v751 = *(v202 + 68);
            MPSLibrary::CreateUberShaderKey();
            v226 = MPSLibrary::GetPipelineStateForMPSKey();
            v227 = *(v84 + 8);
            v233 = objc_msgSend_threadExecutionWidth(v226, v228, v229, v230, v231, v232, 0, 0, 0, 0, 0);
            v234 = v233;
            if (v233 <= 1)
            {
              v235 = 1;
            }

            else
            {
              v235 = v233;
            }

            v236 = MPSIsTextureTwiddled();
            if (v234 <= 1)
            {
              v241 = 1;
            }

            else
            {
              v241 = v235 >> 1;
            }

            if (v234 > 7)
            {
              v242 = v236;
            }

            else
            {
              v242 = 0;
            }

            v243 = (v241 + v613) / v241;
            if ((v235 & 7) != 0)
            {
              v631 = 2;
              v635 = v612;
              v246 = v235 >> 1;
            }

            else
            {
              v244 = v242 == 0;
              if (v242)
              {
                v243 = ((v235 >> 3) + v613) / (v235 >> 3);
                v245 = v610;
              }

              else
              {
                v245 = v612;
              }

              if (v242)
              {
                v246 = v235 >> 3;
              }

              else
              {
                v246 = v235 >> 1;
              }

              v247 = 2;
              if (!v244)
              {
                v247 = 8;
              }

              v631 = v247;
              v635 = v245;
            }

            LODWORD(v259) = v677;
            v261 = v200 == 1 || v659 > 3;
            v263 = v201 != 1 && v208 < 4;
            if (!v696)
            {
              v264 = v227 | 0x10;
              if (v261)
              {
                v264 = v227;
              }

              if (v200 == 2)
              {
                v227 = v264;
              }

              if (!v261 && !v263)
              {
                v227 |= 0x20u;
              }
            }

            if (v696 == v207 - 1 && v208 <= 3)
            {
              v265 = !v261;
              if (v201 == 1)
              {
                v265 = 0;
              }

              v266 = v681;
              if (v265)
              {
                if (v201 == 2)
                {
                  v227 |= 0x40u;
                }
              }

              else
              {
                v227 |= 0x80u;
              }
            }

            else
            {
              v266 = v681;
            }

            DWORD1(v259) = v663;
            *(&v259 + 1) = __PAIR64__(v673, v668);
            v267 = vmovn_s64(v694);
            *v710 = v259;
            *&v710[18] = v688.i16[2];
            *&v710[16] = v688.i16[0];
            *&v710[22] = v267.i16[2];
            *&v710[20] = v267.i16[0];
            *&v711[2] = v611.i16[2];
            *v711 = v611.i16[0];
            *&v711[4] = v227;
            *&v711[8] = v266;
            *&v711[16] = v696;
            objc_msgSend_setComputePipelineState_(a2, v237, v226, v238, v239, v240);
            MPSLibrary::ReleaseComputeState();
            MPSLibrary::ReleaseMPSKey();
            objc_msgSend_setBytes_length_atIndex_(a2, v268, v710, 240, 0, v269);
            objc_msgSend_setTexture_atIndex_(a2, v270, v691, 0, v271, v272);
            objc_msgSend_setTexture_atIndex_(a2, v273, CompressedTempTexture, 1, v274, v275);
            if (v652)
            {
              v278 = 3;
              goto LABEL_334;
            }

            v279 = v759.i64[0];
            if (a3)
            {
              if (v759.i64[0])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v276, v759.i64[0], 0, 1, v277);
                if ((objc_msgSend_retainedReferences(a3, v280, v281, v282, v283, v284) & 1) == 0)
                {
                  v287 = v279;
                  *&v702 = MEMORY[0x277D85DD0];
                  *(&v702 + 1) = 3221225472;
                  v703 = sub_239963EC8;
                  v704 = &unk_278AC37A8;
                  v705 = v279;
                  objc_msgSend_addCompletedHandler_(a3, v288, &v702, v289, v290, v291);
                }
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v276, v623, 0, 1, v277);
              }

              v374 = v759.i64[1];
              if (v759.i64[1])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v285, v759.i64[1], 0, 2, v286);
                if ((objc_msgSend_retainedReferences(a3, v375, v376, v377, v378, v379) & 1) == 0)
                {
                  v382 = v374;
                  *&v702 = MEMORY[0x277D85DD0];
                  *(&v702 + 1) = 3221225472;
                  v703 = sub_239963EC8;
                  v704 = &unk_278AC37A8;
                  v705 = v374;
                  objc_msgSend_addCompletedHandler_(a3, v383, &v702, v384, v385, v386);
                }
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v285, v623, 0, 2, v286);
              }

              v387 = v760;
              if (v760)
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v380, v760, 0, 3, v381);
                if ((objc_msgSend_retainedReferences(a3, v388, v389, v390, v391, v392) & 1) == 0)
                {
                  v395 = v387;
                  *&v702 = MEMORY[0x277D85DD0];
                  *(&v702 + 1) = 3221225472;
                  v703 = sub_239963EC8;
                  v704 = &unk_278AC37A8;
                  v705 = v387;
                  objc_msgSend_addCompletedHandler_(a3, v396, &v702, v397, v398, v399);
                }
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v380, v623, 0, 3, v381);
              }

              v400 = *(&v760 + 1);
              if (*(&v760 + 1))
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v393, *(&v760 + 1), 0, 4, v394);
                if ((objc_msgSend_retainedReferences(a3, v401, v402, v403, v404, v405) & 1) == 0)
                {
                  v406 = v400;
                  *&v702 = MEMORY[0x277D85DD0];
                  *(&v702 + 1) = 3221225472;
                  v703 = sub_239963EC8;
                  v704 = &unk_278AC37A8;
                  v705 = v400;
                  objc_msgSend_addCompletedHandler_(a3, v407, &v702, v408, v409, v410);
                }

                goto LABEL_333;
              }

LABEL_332:
              objc_msgSend_setBuffer_offset_atIndex_(a2, v393, v623, 0, 4, v394);
            }

            else
            {
              if (v759.i64[0])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v276, v759.i64[0], 0, 1, v277);
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v276, v623, 0, 1, v277);
              }

              if (v759.i64[1])
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v372, v759.i64[1], 0, 2, v373);
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v372, v623, 0, 2, v373);
              }

              if (v760)
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v411, v760, 0, 3, v412);
              }

              else
              {
                objc_msgSend_setBuffer_offset_atIndex_(a2, v411, v623, 0, 3, v412);
              }

              if (!*(&v760 + 1))
              {
                goto LABEL_332;
              }

              objc_msgSend_setBuffer_offset_atIndex_(a2, v393, *(&v760 + 1), 0, 4, v394);
            }

LABEL_333:
            v278 = 5;
LABEL_334:
            v413 = MPSDevice::GetSampler();
            objc_msgSend_setSamplerState_atIndex_(a2, v414, v413, 0, v415, v416);
            objc_msgSend_setBuffer_offset_atIndex_(a2, v417, v640, 0, v278, v418);
            *v710 = v243;
            *&v710[8] = v635;
            *&v710[16] = 1;
            *v750 = v246;
            *&v750[8] = v631;
            *&v750[16] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v419, v710, v750, v420, v421);
LABEL_31:
            v74 = v696;
            goto LABEL_32;
          }
        }

        v756 = 0;
        goto LABEL_173;
      }

LABEL_32:
      v76 = v614;
      if (v74)
      {
        v76 = v691;
      }

      if (v74 == v616)
      {
        CompressedTempTexture = a5;
      }

      else
      {
        CompressedTempTexture = v76;
      }

      v77 = vdup_n_s32(v74 == v616);
      v78.i64[0] = v77.u32[0];
      v78.i64[1] = v77.u32[1];
      v694 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v78, 0x3FuLL)), v626, v694);
      ++v74;
      v75 = 0;
      if (v74 == v618)
      {
        goto LABEL_335;
      }
    }

    v696 = v74;
    v137 = (v686 + 4 * *v79);
    v138 = *(a1 + *MEMORY[0x277CD7370]);
    v657 = *(a1 + *MEMORY[0x277CD7350]);
    v650 = *(a1 + 160);
    v139 = *(a1 + 480);
    v140 = *(a1 + 488);
    v661 = *(a1 + 288);
    v141 = *(a1 + 312);
    v143 = *(a1 + 336);
    v142 = *(a1 + 340);
    v675 = *(a1 + 376);
    v647 = *(a1 + 408);
    v666 = *(a1 + 416);
    v671 = *v137;
    *&v144 = -1;
    *(&v144 + 1) = -1;
    v712 = v144;
    v713 = v144;
    *&v711[8] = v144;
    *&v144 = *(a1 + 348);
    v145.i64[0] = v144;
    v145.i64[1] = DWORD1(v144);
    *&v710[8] = vextq_s8(v145, v145, 8uLL);
    v146 = *(a1 + 356);
    *v710 = v141;
    *v711 = v146;
    MPSLibrary::CreateUberShaderKey();
    v147 = MPSLibrary::GetPipelineStateForMPSKey();
    v148 = v137[1];
    v154 = objc_msgSend_threadExecutionWidth(v147, v149, v150, v151, v152, v153, 0, 0, 0, 0, 0, v608);
    v155 = v154;
    if (v154 <= 1)
    {
      v156 = 1;
    }

    else
    {
      v156 = v154;
    }

    v157 = MPSIsTextureTwiddled();
    if (v155 <= 1)
    {
      v162 = 1;
    }

    else
    {
      v162 = v156 >> 1;
    }

    v163 = (v162 + v613) / v162;
    if (v155 > 7)
    {
      v164 = v157;
    }

    else
    {
      v164 = 0;
    }

    v165 = (v156 & 7) != 0 || v164 == 0;
    if (v165)
    {
      v166 = v163;
    }

    else
    {
      v166 = ((v156 >> 3) + v613) / (v156 >> 3);
    }

    v167 = v612;
    if (!v165)
    {
      v167 = v610;
    }

    v638 = v167;
    if (v165)
    {
      v168 = v156 >> 1;
    }

    else
    {
      v168 = v156 >> 3;
    }

    v169 = 2;
    if (!v165)
    {
      v169 = 8;
    }

    v643 = v169;
    v171 = v139 == 1 || v143 > 3;
    v173 = v140 != 1 && v142 < 4;
    if (!v696)
    {
      v174 = v148 | 0x10;
      if (v171)
      {
        v174 = v148;
      }

      if (v139 == 2)
      {
        v148 = v174;
      }

      if (!v171 && !v173)
      {
        v148 |= 0x20u;
      }
    }

    if (v696 == v141 - 1 && v142 <= 3)
    {
      v175 = !v171;
      if (v140 == 1)
      {
        v175 = 0;
      }

      v176 = v675;
      v177 = v671;
      v178 = v666;
      if (v175)
      {
        if (v140 == 2)
        {
          v148 |= 0x40u;
        }
      }

      else
      {
        v148 |= 0x80u;
      }
    }

    else
    {
      v176 = v675;
      v177 = v671;
      v178 = v666;
    }

    v292 = vmovn_s64(v694);
    *v710 = v661;
    *&v710[18] = v688.i16[2];
    *&v710[16] = v688.i16[0];
    *&v710[22] = v292.i16[2];
    *&v710[20] = v292.i16[0];
    *&v711[2] = v611.i16[2];
    *v711 = v611.i16[0];
    *&v711[4] = v148;
    *&v711[8] = v178;
    *&v711[16] = v696;
    v293 = (v176 + 4 * v177);
    v712 = *v293;
    v713 = v293[1];
    v714 = v293[2];
    objc_msgSend_setComputePipelineState_(a2, v158, v147, v159, v160, v161);
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_setTexture_atIndex_(a2, v294, v691, 0, v295, v296);
    objc_msgSend_setTexture_atIndex_(a2, v297, a4, 1, v298, v299);
    objc_msgSend_setBytes_length_atIndex_(a2, v300, v710, 96, 0, v301);
    v302 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v303, v302, 0, v304, v305);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v306, v647, 0, 3, v307);
    *v750 = v166;
    *&v750[8] = v638;
    *&v750[16] = 1;
    *&v702 = v168;
    *(&v702 + 1) = v643;
    v703 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v308, v750, &v702, v309, v310);
    goto LABEL_31;
  }

  v51 = a6[2].i64[0];
  v52 = a6[3].i64[1];
  v53 = a6[5].i64[0];
  v693 = *(a1 + *MEMORY[0x277CD7370]);
  v54 = *(v11 + 4);
  v55 = *(a1 + 160);
  v56 = *(a1 + 480);
  v57 = *(a1 + 488);
  v655 = *(a1 + 288);
  v58 = *(a1 + 336);
  v59 = *(a1 + 340);
  v60 = *(a1 + 344);
  v61 = *(a1 + 384);
  v62 = *(a1 + 400);
  v63 = (v60 | (*(a1 + 352) >> 13)) != 0;
  v64 = *(a1 + 416);
  v65 = *(a1 + 312);
  if (v12 != 2 || v60 | (*(a1 + 352) >> 13))
  {
    if (v12 != 3 || (v60 | (*(a1 + 352) >> 13)) != 0)
    {
      v67 = *(a1 + 360);
      if (v12 == 5 && (v60 | (*(a1 + 352) >> 13)) == 0)
      {
        v68 = *(v627 + 2);
        if (v68 == 3)
        {
          v67 = *(a1 + 360);
          if (*(v627 + 6) == 1 && *(v627 + 10) == 3 && *(v627 + 14) == 1 && *(v627 + 18) == 2 && (*(v686 + 4 * v627[32] + 4) - 5) >= 0xFFFFFFFE)
          {
            *v710 = v626;
            *v711 = v7;
            *&v710[16] = v51;
            *&v711[16] = v52;
            v759 = v669;
            *&v760 = v53;
            sub_2399632FC(a1, a2, a3, a4, a5, v710, v759.i64, v54, 1u);
            goto LABEL_440;
          }
        }

        else
        {
          v67 = *(a1 + 360);
          if (v68 == 2 && *(v627 + 6) == 1 && *(v627 + 10) == 3 && *(v627 + 14) == 1 && *(v627 + 18) == 3 && (*(v686 + 4 * *v627 + 4) - 5) >= 0xFFFFFFFE)
          {
            *v710 = v626;
            *v711 = v7;
            *&v710[16] = v51;
            *&v711[16] = v52;
            v759 = v669;
            *&v760 = v53;
            sub_2399632FC(a1, a2, a3, a4, a5, v710, v759.i64, v54, 0);
            goto LABEL_440;
          }
        }
      }

      goto LABEL_351;
    }

    v67 = *(a1 + 360);
    if (*(v627 + 2) != 3 || *(v627 + 6) != 1 || *(v627 + 10) != 3)
    {
      goto LABEL_351;
    }

    v422 = *(v627 + 3);
    v423 = v686 + 8;
    if (v422 < 1)
    {
      v427 = 1;
    }

    else
    {
      v424 = 1;
      do
      {
        v425 = *v67++;
        v426 = *(v423 + 4 * v425);
        v427 = v426 == 3;
        if (v424 >= v422)
        {
          break;
        }

        ++v424;
      }

      while (v426 == 3);
    }

    v654 = *(a1 + 416);
    v519 = *(v627 + 11);
    if (v519 >= 1 && v427)
    {
      v521 = 1;
      v522 = v627 + 16;
      do
      {
        v523 = *v522++;
        v524 = *(v423 + 4 * v523);
        v427 = v524 == 3;
        if (v521 >= v519)
        {
          break;
        }

        ++v521;
      }

      while (v524 == 3);
    }

    v525 = v8;
    v683 = *(a1 + 408);
    v690 = *(a1 + 376);
    v527 = v56 == 1 || v58 > 3;
    if (v527)
    {
      v528 = 0;
    }

    else
    {
      v528 = 16;
    }

    if (v56 != 2)
    {
      v528 = 0;
    }

    if (v59 >= 4 || v57 == 1)
    {
      v528 |= 0x20u;
    }

    if (v527)
    {
      v530 = 0;
    }

    else
    {
      v530 = v528;
    }

    if (v427)
    {
      v531 = 28;
    }

    else
    {
      v531 = 24;
    }

    MPSIsTextureTwiddled();
    v532 = !v527;
    if (v57 == 1)
    {
      v532 = 0;
    }

    v533 = v530 | 0x40;
    v534 = v57;
    if (v57 != 2)
    {
      v533 = v530;
    }

    if (v532)
    {
      v535 = v533;
    }

    else
    {
      v535 = v530 | 0x80;
    }

    v536 = v59;
    if (v59 > 3)
    {
      v535 = v530;
    }

    if ((v535 & 0x30) != 0)
    {
      v537 = v531 + 1;
    }

    else
    {
      v537 = v531;
    }

    if ((v535 & 0xC0) != 0)
    {
      v538 = v537 | 2;
    }

    else
    {
      v538 = v537;
    }

    v539 = (&off_278AB4DA0)[16 * v538];
    *&v540 = -1;
    *(&v540 + 1) = -1;
    *&v711[8] = v540;
    v712 = v540;
    v713 = v540;
    v541 = *(a1 + 312);
    *&v540 = *(a1 + 348);
    v542.i64[0] = v540;
    v542.i64[1] = DWORD1(v540);
    *&v710[8] = vextq_s8(v542, v542, 8uLL);
    v543 = *(a1 + 356);
    *v710 = v541;
    *v711 = v543;
    MPSLibrary::CreateUberShaderKey();
    v544 = MPSLibrary::GetPipelineStateForMPSKey();
    v550 = objc_msgSend_threadExecutionWidth(v544, v545, v546, v547, v548, v549, 0, 0, 0, 0, 0);
    v551 = v550;
    if (v550 <= 1)
    {
      v552 = 1;
    }

    else
    {
      v552 = v550;
    }

    v553 = v552 >> 1;
    if (v550 <= 1)
    {
      v554 = 4;
    }

    else
    {
      v554 = 4 * (v552 >> 1);
    }

    v555 = MPSIsTextureTwiddled();
    if (v551 > 7)
    {
      v560 = v555;
    }

    else
    {
      v560 = 0;
    }

    v561 = (v552 & 7) != 0 || v560 == 0;
    v562 = v552 >> 3;
    if (v561)
    {
      v563 = (v554 + v664 - 1) / v554;
    }

    else
    {
      v563 = (v553 + v664 - 1) / v553;
    }

    if (v561)
    {
      v564 = (v525 + 1) >> 1;
    }

    else
    {
      v564 = (v525 + 7) >> 3;
    }

    if (v561)
    {
      v565 = v553;
    }

    else
    {
      v565 = v562;
    }

    if (v561)
    {
      v566 = 2;
    }

    else
    {
      v566 = 8;
    }

    if (v536 <= 3)
    {
      v567 = !v527;
      if (v534 == 1)
      {
        v567 = 0;
      }

      if (v567)
      {
        if (v534 == 2)
        {
          v530 |= 0x40u;
        }
      }

      else
      {
        v530 |= 0x80u;
      }
    }

    v568 = vmovn_s64(v669);
    v569 = vmovn_s64(v626);
    *v710 = v655;
    v570 = vmovn_s64(v695);
    *&v710[18] = v568.i16[2];
    *&v710[16] = v568.i16[0];
    *&v710[22] = v569.i16[2];
    *&v710[20] = v569.i16[0];
    *&v711[2] = v570.i16[2];
    *v711 = v570.i16[0];
    *&v711[4] = v530;
    *&v711[8] = v654;
    *&v711[12] = 0;
    objc_msgSend_setComputePipelineState_(a2, v556, v544, v557, v558, v559);
    v571 = *(v627 + 3);
    v572 = *(v627 + 11);
    if (v571 <= 0)
    {
      v573 = 0;
    }

    else
    {
      v573 = (v686 + 4 * *v627);
    }

    if (v572 < 1)
    {
      v575 = 0;
      v574 = v686;
    }

    else
    {
      v574 = v686;
      v575 = (v686 + 4 * v627[16]);
    }

    if (v571 <= 1)
    {
      v576 = 0;
    }

    else
    {
      v576 = (v574 + 4 * v627[1]);
    }

    if (v572 < 2)
    {
      v577 = 0;
    }

    else
    {
      v577 = (v574 + 4 * v627[17]);
    }

    if (v571 <= 2)
    {
      v578 = 0;
    }

    else
    {
      v578 = (v574 + 4 * v627[2]);
    }

    if (v572 < 3)
    {
      v579 = 0;
    }

    else
    {
      v579 = (v574 + 4 * v627[18]);
    }

    if (v571 <= 3)
    {
      v580 = 0;
    }

    else
    {
      v580 = (v574 + 4 * v627[3]);
    }

    if (v572 < 4)
    {
      v581 = 0;
    }

    else
    {
      v581 = (v574 + 4 * v627[19]);
    }

    v748 = *(v627 + 3);
    v749 = v572;
    if (v571 < 1)
    {
      v712 = xmmword_239988C80;
      v713 = unk_239988C90;
    }

    else
    {
      v582 = (v690 + 4 * *v573);
      v728 = v573[2];
      v712 = *v582;
      v713 = v582[1];
      if (v571 >= 2)
      {
        v583 = (v690 + 4 * *v576);
        v729 = v576[2];
        v714 = *v583;
        v715 = v583[1];
        if (v571 >= 3)
        {
          v584 = (v690 + 4 * *v578);
          v730 = v578[2];
          v716 = *v584;
          v717 = v584[1];
          if (v571 > 3)
          {
            v585 = (v690 + 4 * *v580);
            v731 = v580[2];
            v718 = *v585;
            v719 = v585[1];
            goto LABEL_551;
          }

LABEL_550:
          v718 = xmmword_239988C80;
          v719 = unk_239988C90;
LABEL_551:
          if (v572 < 1)
          {
            v720 = xmmword_239988C80;
            v721 = unk_239988C90;
          }

          else
          {
            v586 = (v690 + 4 * *v575);
            v732 = v575[2];
            v720 = *v586;
            v721 = v586[1];
            if (v572 >= 2)
            {
              v587 = (v690 + 4 * *v577);
              v733 = v577[2];
              v722 = *v587;
              v723 = v587[1];
              if (v572 >= 3)
              {
                v588 = (v690 + 4 * *v579);
                v734 = v579[2];
                v724 = *v588;
                v725 = v588[1];
                if (v572 > 3)
                {
                  v589 = (v690 + 4 * *v581);
                  v735 = v581[2];
                  v726 = *v589;
                  v727 = v589[1];
LABEL_560:
                  v590 = (v690 + 4 * *(v574 + 4 * v627[8]));
                  v736 = *v590;
                  v737 = v590[1];
                  v738 = v590[2];
                  v739 = v590[3];
                  v740 = v590[4];
                  v741 = v590[5];
                  v742 = v590[6];
                  v743 = v590[7];
                  v744 = v590[8];
                  v745 = v590[9];
                  v746 = v590[10];
                  v747 = v590[11];
                  MPSLibrary::ReleaseComputeState();
                  MPSLibrary::ReleaseMPSKey();
                  objc_msgSend_setTexture_atIndex_(a2, v591, a4, 0, v592, v593);
                  objc_msgSend_setTexture_atIndex_(a2, v594, a5, 1, v595, v596);
                  objc_msgSend_setBytes_length_atIndex_(a2, v597, v710, 400, 0, v598);
                  objc_msgSend_setBuffer_offset_atIndex_(a2, v599, v683, 0, 3, v600);
                  v601 = MPSDevice::GetSampler();
                  objc_msgSend_setSamplerState_atIndex_(a2, v602, v601, 0, v603, v604);
                  v759.i64[0] = v563;
                  v759.i64[1] = v564;
                  *&v760 = 1;
                  v755 = v565;
                  v756 = v566;
                  v757 = 1;
                  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v605, &v759, &v755, v606, v607);
                  goto LABEL_440;
                }

LABEL_559:
                v726 = xmmword_239988C80;
                v727 = unk_239988C90;
                goto LABEL_560;
              }

LABEL_558:
              v724 = xmmword_239988C80;
              v725 = unk_239988C90;
              goto LABEL_559;
            }
          }

          v722 = xmmword_239988C80;
          v723 = unk_239988C90;
          goto LABEL_558;
        }

LABEL_549:
        v716 = xmmword_239988C80;
        v717 = unk_239988C90;
        goto LABEL_550;
      }
    }

    v714 = xmmword_239988C80;
    v715 = unk_239988C90;
    goto LABEL_549;
  }

  v66 = *(v627 + 2);
  if (v66 == 1)
  {
    v67 = *(a1 + 360);
    if (*(v627 + 6) == 3)
    {
      *v710 = v626;
      *v711 = v7;
      *&v710[16] = v51;
      *&v711[16] = v52;
      v759 = v669;
      *&v760 = v53;
      sub_239962C58(a1, a2, a3, a4, a5, v710, v759.i64, 1u);
      goto LABEL_440;
    }
  }

  else
  {
    v67 = *(a1 + 360);
    if (v66 == 3 && *(v627 + 6) == 1)
    {
      *v710 = v626;
      *v711 = v7;
      *&v710[16] = v51;
      *&v711[16] = v52;
      v759 = v669;
      *&v760 = v53;
      sub_239962C58(a1, a2, a3, a4, a5, v710, v759.i64, 0);
      goto LABEL_440;
    }
  }

LABEL_351:
  v628 = *(a1 + *MEMORY[0x277CD7378]);
  v632 = *(a1 + 320);
  v636 = *(a1 + 400);
  v641 = *(v11 + 4);
  v645 = *(a1 + 344);
  v617 = *(a1 + 480);
  v621 = *(a1 + 488);
  v625 = v8;
  v653 = *(a1 + 416);
  v689 = 0;
  v692 = 0;
  v678 = 0;
  v428 = 0;
  v429 = 0;
  v682 = 0;
  v619 = *(a1 + 340);
  v709 = v619;
  v615 = v58;
  v708 = v58;
  v707 = v12;
  v430 = v67 + 4;
  v431 = 1;
  do
  {
    if (*v430 == 2)
    {
      v432 = v686 + 4 * *(v430 - 4);
      v433 = *(v432 + 4);
      v434 = ((1 << v433) & v428) != 0;
      if (v429)
      {
        v429 = -1;
      }

      else
      {
        v429 = *(v432 + 4);
      }

      v428 |= 1 << v433;
      objc_msgSend_setTexture_atIndex_(a2, v10, *(v61 + 8 * *(v432 + 16)), v433 + 1, v60, v62);
      if (v433 > 2)
      {
        if (v433 == 3)
        {
          v678 = *(v61 + 8 * *(v432 + 16));
        }

        else if (v433 == 4)
        {
          v682 = *(v61 + 8 * *(v432 + 16));
        }
      }

      else if (v433 == 1)
      {
        v689 = *(v61 + 8 * *(v432 + 16));
      }

      else if (v433 == 2)
      {
        v692 = *(v61 + 8 * *(v432 + 16));
      }
    }

    else
    {
      v434 = 0;
    }

    if (v431 >= v65)
    {
      break;
    }

    ++v431;
    v430 += 4;
  }

  while (!v434);
  v435 = v632 != 0;
  v437 = (v628 & 2) == 0 || v641 > 0xF;
  v438 = v435 && v437;
  if (v435 && v437)
  {
    v439 = 12;
  }

  else
  {
    v439 = 11;
  }

  if ((v428 & 2) != 0)
  {
    v440 = v678;
    if ((v428 & 4) != 0)
    {
LABEL_380:
      if ((v428 & 8) == 0)
      {
        goto LABEL_381;
      }

      goto LABEL_385;
    }
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(a2, v10, *v636, 2, v60, v62);
    v689 = *v636;
    v440 = v678;
    if ((v428 & 4) != 0)
    {
      goto LABEL_380;
    }
  }

  objc_msgSend_setTexture_atIndex_(a2, v10, v636[1], 3, v60, v62);
  v692 = v636[1];
  if ((v428 & 8) == 0)
  {
LABEL_381:
    objc_msgSend_setTexture_atIndex_(a2, v10, v636[2], 4, v60, v62);
    v440 = v636[2];
    v441 = v439 + 2;
    if ((v428 & 0x10) != 0)
    {
      goto LABEL_387;
    }

    goto LABEL_386;
  }

LABEL_385:
  v441 = v439 + 2;
  if ((v428 & 0x10) == 0)
  {
LABEL_386:
    objc_msgSend_setTexture_atIndex_(a2, v10, v636[3], 5, v60, v62);
    v682 = v636[3];
  }

LABEL_387:
  if (v438)
  {
    v442 = 18;
  }

  else
  {
    v442 = 14;
  }

  LODWORD(v443) = v429 + v442;
  if (v429 < 1)
  {
    LODWORD(v443) = v439;
  }

  if (v645)
  {
    v443 = v441;
  }

  else
  {
    v443 = v443;
  }

  if (v434)
  {
    v444 = 23;
  }

  else
  {
    v444 = v443;
  }

  v445 = (&off_278AB4DA0)[16 * v444];
  *&v446 = -1;
  *(&v446 + 1) = -1;
  *&v711[8] = v446;
  v712 = v446;
  v713 = v446;
  v447 = *(a1 + 312);
  *&v446 = *(a1 + 348);
  v448.i64[0] = v446;
  v448.i64[1] = DWORD1(v446);
  *&v710[8] = vextq_s8(v448, v448, 8uLL);
  v449 = *(a1 + 356);
  *v710 = v447;
  *v711 = v449;
  MPSLibrary::CreateUberShaderKey();
  v450 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v451, v450, v452, v453, v454, 0, 0, 0, 0, 0);
  v460 = objc_msgSend_threadExecutionWidth(v450, v455, v456, v457, v458, v459);
  v461 = v460;
  if (v460 <= 1)
  {
    v462 = 1;
  }

  else
  {
    v462 = v460;
  }

  v463 = v462 >> 1;
  if (v460 <= 1)
  {
    v464 = 4;
  }

  else
  {
    v464 = 4 * (v462 >> 1);
  }

  v465 = MPSIsTextureTwiddled();
  v466 = (v625 + 1) >> 1;
  if (v461 > 7)
  {
    v467 = v465;
  }

  else
  {
    v467 = 0;
  }

  v468 = 2;
  v469 = (v464 + v664 - 1) / v464;
  if (v462 & 7) == 0 && (v467)
  {
    v469 = (v463 + v664 - 1) / v463;
    v466 = (v625 + 7) >> 3;
    v463 = v462 >> 3;
    v468 = 8;
  }

  v471 = v617 == 1 || v615 > 3;
  if (v471)
  {
    v472 = 0;
  }

  else
  {
    v472 = 16;
  }

  if (v617 != 2)
  {
    v472 = 0;
  }

  if (v619 >= 4 || v621 == 1)
  {
    v472 |= 0x20u;
  }

  if (v471)
  {
    v472 = 0;
  }

  if (v619 <= 3)
  {
    v474 = !v471;
    if (v621 == 1)
    {
      v474 = 0;
    }

    if (v474)
    {
      if (v621 == 2)
      {
        v472 |= 0x40u;
      }
    }

    else
    {
      v472 |= 0x80u;
    }
  }

  v475 = vmovn_s64(v669);
  v476 = vmovn_s64(v626);
  v702 = v655;
  v477 = vmovn_s64(v695);
  WORD1(v703) = v475.i16[2];
  LOWORD(v703) = v475.i16[0];
  HIWORD(v703) = v476.i16[2];
  WORD2(v703) = v476.i16[0];
  WORD1(v704) = v477.i16[2];
  LOWORD(v704) = v477.i16[0];
  HIDWORD(v704) = v472;
  v705 = v653;
  v706 = 0;
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setTexture_atIndex_(a2, v478, a4, 0, v479, v480);
  objc_msgSend_setTexture_atIndex_(a2, v481, a5, 1, v482, v483);
  objc_msgSend_setBytes_length_atIndex_(a2, v484, &v702, 64, 0, v485);
  v486 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v487, v486, 0, v488, v489);
  objc_msgSend_setBytes_length_atIndex_(a2, v490, *(a1 + 360), 16 * *(a1 + 312), 1, v491);
  objc_msgSend_setBytes_length_atIndex_(a2, v492, *(a1 + 368), 4 * *(a1 + 304), 2, v493);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v494, *(a1 + 408), 0, 3, v495);
  if (a3 && (objc_msgSend_retainedReferences(a3, v496, v497, v498, v499, v500) & 1) == 0)
  {
    v501 = *(a1 + 408);
    v502 = v689;
    v503 = v692;
    v504 = v440;
    v505 = v682;
    *v750 = MEMORY[0x277D85DD0];
    *&v750[8] = 3221225472;
    *&v750[16] = sub_239963E5C;
    v751 = &unk_278AF68E8;
    *&v752 = a1;
    *(&v752 + 1) = v689;
    *&v753 = v692;
    *(&v753 + 1) = v440;
    *&v754 = v682;
    objc_msgSend_addCompletedHandler_(a3, v506, v750, v507, v508, v509);
  }

  v510 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v511, v510, 1, v512, v513);
  *v710 = v469;
  *&v710[8] = v466;
  *&v710[16] = 1;
  v759.i64[0] = v463;
  v759.i64[1] = v468;
  *&v760 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v514, v710, &v759, v515, v516);
LABEL_440:
  v517 = *MEMORY[0x277D85DE8];
  return 0;
}