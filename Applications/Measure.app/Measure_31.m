void *sub_1002422FC(void *a1)
{
  if (qword_1004BD410)
  {
    v2 = qword_1004BD410;
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);

  return sub_100241184(a1, v2, v3);
}

uint64_t sub_100242358(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_100242428(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

float sub_100242450(float a1)
{
  sub_1002ACE7C(v9, &off_100473F58);
  if (v10)
  {
    sub_1002ACC1C(v9);
  }

  v2 = ((LODWORD(a1) >> 23) - 127) % 3;
  if (v2 >= 0)
  {
    v3 = -3;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 + v2;
  v5 = vmlaq_n_f64(xmmword_1003E3A00, vmlaq_n_f64(xmmword_1003E39F0, vmlaq_n_f64(xmmword_1003E39E0, vmlaq_n_f64(xmmword_1003E39D0, xmmword_1003E39C0, COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216)), COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216)), COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216)), COERCE_FLOAT((LODWORD(a1) & 0x7FFFFF | (v4 << 23)) + 1065353216));
  v6 = vdivq_f64(vdupq_laneq_s64(v5, 1), v5).f64[0];
  LODWORD(v7) = (LODWORD(a1) & 0x80000000) + ((((21846 * ((LODWORD(a1) >> 23) - 127 - v4)) >> 16) + ((21846 * ((LODWORD(a1) >> 23) - 127 - v4)) >> 31)) << 23) + LODWORD(v6);
  if (a1 == 0.0)
  {
    return 0.0;
  }

  return v7;
}

uint64_t sub_10024255C(uint64_t result, int *a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  *result = a3 & 0xFFF | 0x42FF0000;
  *(result + 4) = 2;
  v6 = a2[1];
  *(result + 8) = v6;
  v7 = *a2;
  *(result + 12) = *a2;
  *(result + 16) = a4;
  *(result + 24) = a4;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 80) = 0;
  *(result + 64) = result + 8;
  *(result + 72) = result + 80;
  *(result + 88) = 0;
  if (!a4 && v7 * v6)
  {
    v12 = 0;
    v13 = 0;
    qmemcpy(sub_1002A80E0(&v12, 30), "total() == 0 || data != __null", 30);
    sub_1002A8980(-215, &v12, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/mat.inl.hpp", 533);
  }

  v8 = (((a3 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a3 & 7))) & 3);
  v9 = v7 * v8;
  if (!a5)
  {
    v5 = v7 * v8;
LABEL_11:
    *result |= 0x4000u;
    goto LABEL_12;
  }

  if (a5 % ((0x88442211uLL >> (4 * (a3 & 7))) & 0xF))
  {
    v12 = 0;
    v13 = 0;
    qmemcpy(sub_1002A80E0(&v12, 31), "Step must be a multiple of esz1", 31);
    sub_1002A8980(-13, &v12, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/include/opencv2/core/mat.inl.hpp", 548);
  }

  if (v9 == a5 || *(result + 8) == 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = *(result + 72);
  *v10 = v5;
  v10[1] = v8;
  v11 = *(result + 24) + v5 * *(result + 8);
  *(result + 32) = v11 - v5 + v9;
  *(result + 40) = v11;
  return result;
}

float sub_100242754(float a1, float a2)
{
  v2 = fabsf(a2);
  v3 = fabsf(a1);
  v4 = v2 < v3;
  v5 = v2 / (v3 + 2.2204e-16);
  v6 = 90.0 - ((((((((v5 * v5) * -2.5397) + 8.914) * (v5 * v5)) + -18.667) * (v5 * v5)) + 57.284) * v5);
  v7 = v3 / (v2 + 2.2204e-16);
  v8 = v7 * (((((((v7 * v7) * -2.5397) + 8.914) * (v7 * v7)) + -18.667) * (v7 * v7)) + 57.284);
  if (v4)
  {
    v8 = v6;
  }

  if (a2 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 180.0 - v8;
  }

  if (a1 >= 0.0)
  {
    return v9;
  }

  else
  {
    return 360.0 - v9;
  }
}

void sub_100242840(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, float a9, float a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  *v107 = 1124007936;
  *&v107[4] = 0u;
  if (a14)
  {
    v19 = a11;
  }

  else
  {
    v19 = a12;
  }

  *&v107[20] = 0uLL;
  if (a14)
  {
    v20 = a12;
  }

  else
  {
    v20 = a11;
  }

  *&v107[36] = 0uLL;
  if ((a14 & 2) != 0)
  {
    v21 = a13;
  }

  else
  {
    v21 = v19;
  }

  if ((a14 & 2) != 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = a13;
  }

  *&v107[48] = 0uLL;
  v108 = &v107[8];
  v109 = v110;
  if ((a14 & 4) != 0)
  {
    v23 = a13;
  }

  else
  {
    v23 = v20;
  }

  if ((a14 & 4) != 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = a13;
  }

  v61 = v24;
  v62 = v23;
  v110[0] = 0;
  v110[1] = 0;
  *v103 = 1124007936;
  memset(&v103[4], 0, 60);
  v104 = &v103[8];
  v105 = v106;
  v106[1] = 0;
  v106[0] = 0;
  *v99 = 1124007936;
  memset(&v99[4], 0, 60);
  v100 = &v99[8];
  v101 = v102;
  v102[1] = 0;
  v102[0] = 0;
  if (!a1)
  {
    goto LABEL_33;
  }

  sub_10000A690(v95, a11, a12, a15, a1, a2);
  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  if (*&v107[4] >= 1)
  {
    v25 = 0;
    v26 = v108;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < *&v107[4]);
  }

  *v107 = *v95;
  *&v107[16] = *&v95[16];
  *&v107[32] = *&v95[32];
  *&v107[48] = *&v95[48];
  v27 = v109;
  if (v109 == v110)
  {
    v28 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    j__free(v109);
    v27 = v110;
    v108 = &v107[8];
    v109 = v110;
    v28 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_28:
      *v27 = *v28;
      v27[1] = v28[1];
      goto LABEL_31;
    }
  }

  v108 = v96;
  v109 = v28;
  v97 = v98;
  v96 = &v95[8];
LABEL_31:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_33:
  if (!a3)
  {
    goto LABEL_47;
  }

  sub_10000A690(v95, v21, v22, a15, a3, a4);
  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  if (*&v103[4] >= 1)
  {
    v29 = 0;
    v30 = v104;
    do
    {
      *&v30[4 * v29++] = 0;
    }

    while (v29 < *&v103[4]);
  }

  *v103 = *v95;
  *&v103[16] = *&v95[16];
  *&v103[32] = *&v95[32];
  *&v103[48] = *&v95[48];
  v31 = v105;
  if (v105 == v106)
  {
    v32 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    j__free(v105);
    v31 = v106;
    v105 = v106;
    v104 = &v103[8];
    v32 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_42:
      *v31 = *v32;
      v31[1] = v32[1];
      goto LABEL_45;
    }
  }

  v105 = v32;
  v104 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_45:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_47:
  if (!a5 || a10 == 0.0)
  {
    goto LABEL_62;
  }

  sub_10000A690(v95, v62, v61, a15, a5, a6);
  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  if (*&v99[4] >= 1)
  {
    v33 = 0;
    v34 = v100;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v99[4]);
  }

  *v99 = *v95;
  *&v99[16] = *&v95[16];
  *&v99[32] = *&v95[32];
  *&v99[48] = *&v95[48];
  v35 = v101;
  if (v101 == v102)
  {
    v36 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_57;
    }
  }

  else
  {
    j__free(v101);
    v35 = v102;
    v101 = v102;
    v100 = &v99[8];
    v36 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_57:
      *v35 = *v36;
      v35[1] = v36[1];
      goto LABEL_60;
    }
  }

  v101 = v36;
  v100 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_60:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_62:
  sub_10000A690(v95, v20, a13, a15, a7, a8);
  v88 = *v107;
  v89 = *&v107[16];
  v90 = *&v107[32];
  v91 = *&v107[48];
  v92 = &v88 + 8;
  v93 = v94;
  v94[0] = 0;
  v94[1] = 0;
  if (*&v107[56])
  {
    atomic_fetch_add((*&v107[56] + 20), 1u);
    if (*&v107[4] <= 2)
    {
LABEL_64:
      v37 = v109;
      v38 = v93;
      *v93 = *v109;
      v38[1] = v37[1];
      goto LABEL_67;
    }
  }

  else if (*&v107[4] <= 2)
  {
    goto LABEL_64;
  }

  DWORD1(v88) = 0;
  sub_100269B58(&v88, v107);
LABEL_67:
  v81 = *v103;
  v82 = *&v103[16];
  v83 = *&v103[32];
  v84 = *&v103[48];
  v85 = &v81 + 8;
  v86 = v87;
  v87[0] = 0;
  v87[1] = 0;
  if (*&v103[56])
  {
    atomic_fetch_add((*&v103[56] + 20), 1u);
    if (*&v103[4] <= 2)
    {
LABEL_69:
      v39 = v105;
      v40 = v86;
      *v86 = *v105;
      v40[1] = v39[1];
      goto LABEL_72;
    }
  }

  else if (*&v103[4] <= 2)
  {
    goto LABEL_69;
  }

  DWORD1(v81) = 0;
  sub_100269B58(&v81, v103);
LABEL_72:
  v74 = *v99;
  v75 = *&v99[16];
  v76 = *&v99[32];
  v77 = *&v99[48];
  v78 = &v74 + 8;
  v79 = v80;
  v80[0] = 0;
  v80[1] = 0;
  if (*&v99[56])
  {
    atomic_fetch_add((*&v99[56] + 20), 1u);
    if (*&v99[4] <= 2)
    {
LABEL_74:
      v41 = v101;
      v42 = v79;
      *v79 = *v101;
      v42[1] = v41[1];
      goto LABEL_77;
    }
  }

  else if (*&v99[4] <= 2)
  {
    goto LABEL_74;
  }

  DWORD1(v74) = 0;
  sub_100269B58(&v74, v99);
LABEL_77:
  v67 = *v95;
  v68 = *&v95[16];
  v69 = *&v95[32];
  v70 = *&v95[48];
  v71 = &v67 + 8;
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  if (!*&v95[56])
  {
    if (*&v95[4] <= 2)
    {
      goto LABEL_79;
    }

LABEL_81:
    DWORD1(v67) = 0;
    sub_100269B58(&v67, v95);
    goto LABEL_82;
  }

  atomic_fetch_add((*&v95[56] + 20), 1u);
  if (*&v95[4] > 2)
  {
    goto LABEL_81;
  }

LABEL_79:
  v43 = v97;
  v44 = v72;
  *v72 = *v97;
  v44[1] = v43[1];
LABEL_82:
  sub_1002532D0(&v88, &v81, &v74, &v67, a14, a9, a10);
  if (*(&v70 + 1) && atomic_fetch_add((*(&v70 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v67);
  }

  *(&v70 + 1) = 0;
  v68 = 0u;
  v69 = 0u;
  if (SDWORD1(v67) >= 1)
  {
    v45 = 0;
    v46 = v71;
    do
    {
      *&v46[4 * v45++] = 0;
    }

    while (v45 < SDWORD1(v67));
  }

  if (v72 != v73)
  {
    j__free(v72);
  }

  if (*(&v77 + 1) && atomic_fetch_add((*(&v77 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v74);
  }

  *(&v77 + 1) = 0;
  v75 = 0u;
  v76 = 0u;
  if (SDWORD1(v74) >= 1)
  {
    v47 = 0;
    v48 = v78;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v74));
  }

  if (v79 != v80)
  {
    j__free(v79);
  }

  if (*(&v84 + 1) && atomic_fetch_add((*(&v84 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v81);
  }

  *(&v84 + 1) = 0;
  v82 = 0u;
  v83 = 0u;
  if (SDWORD1(v81) >= 1)
  {
    v49 = 0;
    v50 = v85;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v81));
  }

  if (v86 != v87)
  {
    j__free(v86);
  }

  if (*(&v91 + 1) && atomic_fetch_add((*(&v91 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v88);
  }

  *(&v91 + 1) = 0;
  v89 = 0u;
  v90 = 0u;
  if (SDWORD1(v88) >= 1)
  {
    v51 = 0;
    v52 = v92;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < SDWORD1(v88));
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *&v95[56] = 0;
  memset(&v95[16], 0, 32);
  if (*&v95[4] >= 1)
  {
    v53 = 0;
    v54 = v96;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < *&v95[4]);
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  *&v99[56] = 0;
  memset(&v99[16], 0, 32);
  if (*&v99[4] >= 1)
  {
    v55 = 0;
    v56 = v100;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < *&v99[4]);
  }

  if (v101 != v102)
  {
    j__free(v101);
  }

  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  *&v103[56] = 0;
  memset(&v103[16], 0, 32);
  if (*&v103[4] >= 1)
  {
    v57 = 0;
    v58 = v104;
    do
    {
      *&v58[4 * v57++] = 0;
    }

    while (v57 < *&v103[4]);
  }

  if (v105 != v106)
  {
    j__free(v105);
  }

  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  *&v107[56] = 0;
  memset(&v107[16], 0, 32);
  if (*&v107[4] >= 1)
  {
    v59 = 0;
    v60 = v108;
    do
    {
      *&v60[4 * v59++] = 0;
    }

    while (v59 < *&v107[4]);
  }

  if (v109 != v110)
  {
    j__free(v109);
  }
}

void sub_1002432B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a67);
  sub_100006D14(&STACK[0x230]);
  sub_100006D14(&STACK[0x290]);
  sub_100006D14(v67 - 208);
  _Unwind_Resume(a1);
}

void sub_100243378(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  *v107 = 1124007936;
  *&v107[4] = 0u;
  if (a14)
  {
    v19 = a11;
  }

  else
  {
    v19 = a12;
  }

  *&v107[20] = 0uLL;
  if (a14)
  {
    v20 = a12;
  }

  else
  {
    v20 = a11;
  }

  *&v107[36] = 0uLL;
  if ((a14 & 2) != 0)
  {
    v21 = a13;
  }

  else
  {
    v21 = v19;
  }

  if ((a14 & 2) != 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = a13;
  }

  *&v107[48] = 0uLL;
  v108 = &v107[8];
  v109 = v110;
  if ((a14 & 4) != 0)
  {
    v23 = a13;
  }

  else
  {
    v23 = v20;
  }

  if ((a14 & 4) != 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = a13;
  }

  v61 = v24;
  v62 = v23;
  v110[0] = 0;
  v110[1] = 0;
  *v103 = 1124007936;
  memset(&v103[4], 0, 60);
  v104 = &v103[8];
  v105 = v106;
  v106[1] = 0;
  v106[0] = 0;
  *v99 = 1124007936;
  memset(&v99[4], 0, 60);
  v100 = &v99[8];
  v101 = v102;
  v102[1] = 0;
  v102[0] = 0;
  if (!a1)
  {
    goto LABEL_33;
  }

  sub_10000A690(v95, a11, a12, a15, a1, a2);
  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  if (*&v107[4] >= 1)
  {
    v25 = 0;
    v26 = v108;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < *&v107[4]);
  }

  *v107 = *v95;
  *&v107[16] = *&v95[16];
  *&v107[32] = *&v95[32];
  *&v107[48] = *&v95[48];
  v27 = v109;
  if (v109 == v110)
  {
    v28 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    j__free(v109);
    v27 = v110;
    v108 = &v107[8];
    v109 = v110;
    v28 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_28:
      *v27 = *v28;
      v27[1] = v28[1];
      goto LABEL_31;
    }
  }

  v108 = v96;
  v109 = v28;
  v97 = v98;
  v96 = &v95[8];
LABEL_31:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_33:
  if (!a3)
  {
    goto LABEL_47;
  }

  sub_10000A690(v95, v21, v22, a15, a3, a4);
  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  if (*&v103[4] >= 1)
  {
    v29 = 0;
    v30 = v104;
    do
    {
      *&v30[4 * v29++] = 0;
    }

    while (v29 < *&v103[4]);
  }

  *v103 = *v95;
  *&v103[16] = *&v95[16];
  *&v103[32] = *&v95[32];
  *&v103[48] = *&v95[48];
  v31 = v105;
  if (v105 == v106)
  {
    v32 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    j__free(v105);
    v31 = v106;
    v105 = v106;
    v104 = &v103[8];
    v32 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_42:
      *v31 = *v32;
      v31[1] = v32[1];
      goto LABEL_45;
    }
  }

  v105 = v32;
  v104 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_45:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_47:
  if (!a5 || a10 == 0.0)
  {
    goto LABEL_62;
  }

  sub_10000A690(v95, v62, v61, a15, a5, a6);
  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  if (*&v99[4] >= 1)
  {
    v33 = 0;
    v34 = v100;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v99[4]);
  }

  *v99 = *v95;
  *&v99[16] = *&v95[16];
  *&v99[32] = *&v95[32];
  *&v99[48] = *&v95[48];
  v35 = v101;
  if (v101 == v102)
  {
    v36 = v97;
    if (*&v95[4] <= 2)
    {
      goto LABEL_57;
    }
  }

  else
  {
    j__free(v101);
    v35 = v102;
    v101 = v102;
    v100 = &v99[8];
    v36 = v97;
    if (*&v95[4] <= 2)
    {
LABEL_57:
      *v35 = *v36;
      v35[1] = v36[1];
      goto LABEL_60;
    }
  }

  v101 = v36;
  v100 = v96;
  v97 = v98;
  v96 = &v95[8];
LABEL_60:
  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  if (v97 != v98)
  {
    j__free(v97);
  }

LABEL_62:
  sub_10000A690(v95, v20, a13, a15, a7, a8);
  v88 = *v107;
  v89 = *&v107[16];
  v90 = *&v107[32];
  v91 = *&v107[48];
  v92 = &v88 + 8;
  v93 = v94;
  v94[0] = 0;
  v94[1] = 0;
  if (*&v107[56])
  {
    atomic_fetch_add((*&v107[56] + 20), 1u);
    if (*&v107[4] <= 2)
    {
LABEL_64:
      v37 = v109;
      v38 = v93;
      *v93 = *v109;
      v38[1] = v37[1];
      goto LABEL_67;
    }
  }

  else if (*&v107[4] <= 2)
  {
    goto LABEL_64;
  }

  DWORD1(v88) = 0;
  sub_100269B58(&v88, v107);
LABEL_67:
  v81 = *v103;
  v82 = *&v103[16];
  v83 = *&v103[32];
  v84 = *&v103[48];
  v85 = &v81 + 8;
  v86 = v87;
  v87[0] = 0;
  v87[1] = 0;
  if (*&v103[56])
  {
    atomic_fetch_add((*&v103[56] + 20), 1u);
    if (*&v103[4] <= 2)
    {
LABEL_69:
      v39 = v105;
      v40 = v86;
      *v86 = *v105;
      v40[1] = v39[1];
      goto LABEL_72;
    }
  }

  else if (*&v103[4] <= 2)
  {
    goto LABEL_69;
  }

  DWORD1(v81) = 0;
  sub_100269B58(&v81, v103);
LABEL_72:
  v74 = *v99;
  v75 = *&v99[16];
  v76 = *&v99[32];
  v77 = *&v99[48];
  v78 = &v74 + 8;
  v79 = v80;
  v80[0] = 0;
  v80[1] = 0;
  if (*&v99[56])
  {
    atomic_fetch_add((*&v99[56] + 20), 1u);
    if (*&v99[4] <= 2)
    {
LABEL_74:
      v41 = v101;
      v42 = v79;
      *v79 = *v101;
      v42[1] = v41[1];
      goto LABEL_77;
    }
  }

  else if (*&v99[4] <= 2)
  {
    goto LABEL_74;
  }

  DWORD1(v74) = 0;
  sub_100269B58(&v74, v99);
LABEL_77:
  v67 = *v95;
  v68 = *&v95[16];
  v69 = *&v95[32];
  v70 = *&v95[48];
  v71 = &v67 + 8;
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  if (!*&v95[56])
  {
    if (*&v95[4] <= 2)
    {
      goto LABEL_79;
    }

LABEL_81:
    DWORD1(v67) = 0;
    sub_100269B58(&v67, v95);
    goto LABEL_82;
  }

  atomic_fetch_add((*&v95[56] + 20), 1u);
  if (*&v95[4] > 2)
  {
    goto LABEL_81;
  }

LABEL_79:
  v43 = v97;
  v44 = v72;
  *v72 = *v97;
  v44[1] = v43[1];
LABEL_82:
  sub_1002532D0(&v88, &v81, &v74, &v67, a14, a9, a10);
  if (*(&v70 + 1) && atomic_fetch_add((*(&v70 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v67);
  }

  *(&v70 + 1) = 0;
  v68 = 0u;
  v69 = 0u;
  if (SDWORD1(v67) >= 1)
  {
    v45 = 0;
    v46 = v71;
    do
    {
      *&v46[4 * v45++] = 0;
    }

    while (v45 < SDWORD1(v67));
  }

  if (v72 != v73)
  {
    j__free(v72);
  }

  if (*(&v77 + 1) && atomic_fetch_add((*(&v77 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v74);
  }

  *(&v77 + 1) = 0;
  v75 = 0u;
  v76 = 0u;
  if (SDWORD1(v74) >= 1)
  {
    v47 = 0;
    v48 = v78;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v74));
  }

  if (v79 != v80)
  {
    j__free(v79);
  }

  if (*(&v84 + 1) && atomic_fetch_add((*(&v84 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v81);
  }

  *(&v84 + 1) = 0;
  v82 = 0u;
  v83 = 0u;
  if (SDWORD1(v81) >= 1)
  {
    v49 = 0;
    v50 = v85;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v81));
  }

  if (v86 != v87)
  {
    j__free(v86);
  }

  if (*(&v91 + 1) && atomic_fetch_add((*(&v91 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v88);
  }

  *(&v91 + 1) = 0;
  v89 = 0u;
  v90 = 0u;
  if (SDWORD1(v88) >= 1)
  {
    v51 = 0;
    v52 = v92;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < SDWORD1(v88));
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *&v95[56] = 0;
  memset(&v95[16], 0, 32);
  if (*&v95[4] >= 1)
  {
    v53 = 0;
    v54 = v96;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < *&v95[4]);
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  *&v99[56] = 0;
  memset(&v99[16], 0, 32);
  if (*&v99[4] >= 1)
  {
    v55 = 0;
    v56 = v100;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < *&v99[4]);
  }

  if (v101 != v102)
  {
    j__free(v101);
  }

  if (*&v103[56] && atomic_fetch_add((*&v103[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v103);
  }

  *&v103[56] = 0;
  memset(&v103[16], 0, 32);
  if (*&v103[4] >= 1)
  {
    v57 = 0;
    v58 = v104;
    do
    {
      *&v58[4 * v57++] = 0;
    }

    while (v57 < *&v103[4]);
  }

  if (v105 != v106)
  {
    j__free(v105);
  }

  if (*&v107[56] && atomic_fetch_add((*&v107[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v107);
  }

  *&v107[56] = 0;
  memset(&v107[16], 0, 32);
  if (*&v107[4] >= 1)
  {
    v59 = 0;
    v60 = v108;
    do
    {
      *&v60[4 * v59++] = 0;
    }

    while (v59 < *&v107[4]);
  }

  if (v109 != v110)
  {
    j__free(v109);
  }
}

void sub_100243DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a67);
  sub_100006D14(&STACK[0x230]);
  sub_100006D14(&STACK[0x290]);
  sub_100006D14(v67 - 208);
  _Unwind_Resume(a1);
}

void sub_100243EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7)
{
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v112 = *v14;
    v113 = v16;
    v114 = *(v14 + 32);
    v17 = *(v14 + 56);
    v115 = *(v14 + 48);
    v116 = v17;
    v117 = &v112 + 2;
    v118 = v119;
    v119[0] = 0;
    v119[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v18 = *(v14 + 72);
        v19 = v118;
        *v118 = *v18;
        v19[1] = v18[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v112) = 0;
    sub_100269B58(&v112, v14);
  }

  else
  {
    sub_1002703C0(a1, -1, &v112);
  }

LABEL_8:
  if (sub_100271148(a2) == 0x10000)
  {
    v20 = *(a2 + 8);
    v21 = *v20;
    v22 = *(v20 + 16);
    v104 = *v20;
    v105 = v22;
    v106 = *(v20 + 32);
    v23 = *(v20 + 56);
    v107 = *(v20 + 48);
    v108 = v23;
    v109 = &v104 + 8;
    v110 = v111;
    v111[0] = 0;
    v111[1] = 0;
    if (v23)
    {
      atomic_fetch_add((v23 + 20), 1u);
      if (*(v20 + 4) <= 2)
      {
LABEL_11:
        v24 = *(v20 + 72);
        v25 = v110;
        *v110 = *v24;
        v25[1] = v24[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v21) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v104) = 0;
    sub_100269B58(&v104, v20);
  }

  else
  {
    sub_1002703C0(a2, -1, &v104);
  }

LABEL_15:
  if (a7 == 0.0)
  {
    *v99 = 1124007936;
    memset(&v99[4], 0, 60);
    v100 = &v99[8];
    v101 = &v102;
    v102 = 0;
    v103 = 0;
  }

  else if (sub_100271148(a3) == 0x10000)
  {
    v26 = *(a3 + 8);
    v27 = *v26;
    v28 = *(v26 + 16);
    *v99 = *v26;
    *&v99[16] = v28;
    *&v99[32] = *(v26 + 32);
    v29 = *(v26 + 56);
    *&v99[48] = *(v26 + 48);
    *&v99[56] = v29;
    v100 = &v99[8];
    v101 = &v102;
    v102 = 0;
    v103 = 0;
    if (v29)
    {
      atomic_fetch_add((v29 + 20), 1u);
      if (*(v26 + 4) <= 2)
      {
LABEL_19:
        v30 = *(v26 + 72);
        v31 = v101;
        *v101 = *v30;
        v31[1] = v30[1];
        goto LABEL_24;
      }
    }

    else if (SDWORD1(v27) <= 2)
    {
      goto LABEL_19;
    }

    *&v99[4] = 0;
    sub_100269B58(v99, v26);
  }

  else
  {
    sub_1002703C0(a3, -1, v99);
  }

LABEL_24:
  v32 = *v117;
  v33 = v117[1];
  v34 = v112 & 0xFFF;
  if (v34 != (v104 & 0xFFF))
  {
    v91 = 0uLL;
    *sub_1002A80E0(&v91, 16) = *"type == B.type()";
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1558);
  }

  if ((v112 & 0xFF7) - 5 >= 2)
  {
    v91 = 0uLL;
    qmemcpy(sub_1002A80E0(&v91, 210), "(type == (((5) & ((1 << 3) - 1)) + (((1)-1) << 3)) || type == (((6) & ((1 << 3) - 1)) + (((1)-1) << 3)) || type == (((5) & ((1 << 3) - 1)) + (((2)-1) << 3)) || type == (((6) & ((1 << 3) - 1)) + (((2)-1) << 3)))", 210);
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1558);
  }

  if ((a5 & 3u) <= 1)
  {
    if ((a5 & 3) == 0)
    {
      v35 = HIDWORD(v104);
      if (v33 != DWORD2(v104))
      {
        v91 = 0uLL;
        v36 = sub_1002A80E0(&v91, 19);
        *(v36 + 15) = 1852140576;
        *v36 = *"a_size.width == len";
        sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1565);
      }

      goto LABEL_35;
    }

    v35 = HIDWORD(v104);
    if (v32 != DWORD2(v104))
    {
      v91 = 0uLL;
      v39 = sub_1002A80E0(&v91, 20);
      *(v39 + 16) = 1852140576;
      *v39 = *"a_size.height == len";
      sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1570);
    }

LABEL_41:
    v38 = v117[1];
    if (!*&v99[16])
    {
      goto LABEL_58;
    }

    goto LABEL_42;
  }

  if ((a5 & 3) != 2)
  {
    v35 = DWORD2(v104);
    if (v32 != HIDWORD(v104))
    {
      v91 = 0uLL;
      v40 = sub_1002A80E0(&v91, 20);
      *(v40 + 16) = 1852140576;
      *v40 = *"a_size.height == len";
      sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1580);
    }

    goto LABEL_41;
  }

  v35 = DWORD2(v104);
  if (v33 != HIDWORD(v104))
  {
    v91 = 0uLL;
    v37 = sub_1002A80E0(&v91, 19);
    *(v37 + 15) = 1852140576;
    *v37 = *"a_size.width == len";
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1575);
  }

LABEL_35:
  v38 = *v117;
  if (!*&v99[16])
  {
    goto LABEL_58;
  }

LABEL_42:
  if (*&v99[4] >= 3)
  {
    v42 = (v100 + 4);
    v43 = 1;
    v44 = *&v99[4] & 0x7FFFFFFE;
    v45 = 1;
    do
    {
      v43 *= *(v42 - 1);
      v45 *= *v42;
      v42 += 2;
      v44 -= 2;
    }

    while (v44);
    v41 = v45 * v43;
    v46 = *&v99[4] - (*&v99[4] & 0x7FFFFFFE);
    if (v46)
    {
      v47 = &v100[8 * ((*&v99[4] >> 1) & 0x3FFFFFFF)];
      do
      {
        v48 = *v47++;
        v41 *= v48;
        --v46;
      }

      while (v46);
    }
  }

  else
  {
    v41 = *&v99[12] * *&v99[8];
  }

  if (*&v99[4] && v41)
  {
    if ((*v99 & 0xFFF) != v34)
    {
      v91 = 0uLL;
      *sub_1002A80E0(&v91, 16) = *"C.type() == type";
      sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1588);
    }

    if ((a5 & 4) != 0)
    {
      if (*&v99[8] == __PAIR64__(v38, v35))
      {
        goto LABEL_58;
      }
    }

    else if (*&v99[8] == __PAIR64__(v35, v38))
    {
      goto LABEL_58;
    }

    v91 = 0uLL;
    qmemcpy(sub_1002A80E0(&v91, 158), "(((flags&GEMM_3_T) == 0 && C.rows == d_size.height && C.cols == d_size.width) || ((flags&GEMM_3_T) != 0 && C.rows == d_size.width && C.cols == d_size.height))", 158);
    sub_1002A8980(-215, &v91, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1588);
  }

LABEL_58:
  sub_100275A84(a4, v38, v35, v34, -1, 0, 0);
  if (sub_100271148(a4) != 0x10000)
  {
    sub_1002703C0(a4, -1, &v91);
    goto LABEL_65;
  }

  v49 = *(a4 + 8);
  v50 = *v49;
  v51 = *(v49 + 16);
  v91 = *v49;
  v92 = v51;
  v93 = *(v49 + 32);
  v52 = *(v49 + 56);
  v94 = *(v49 + 48);
  v95 = v52;
  v96 = &v91 + 8;
  v97 = v98;
  v98[0] = 0;
  v98[1] = 0;
  if (!v52)
  {
    if (SDWORD1(v50) <= 2)
    {
      goto LABEL_61;
    }

LABEL_64:
    DWORD1(v91) = 0;
    sub_100269B58(&v91, v49);
    goto LABEL_65;
  }

  atomic_fetch_add((v52 + 20), 1u);
  if (*(v49 + 4) > 2)
  {
    goto LABEL_64;
  }

LABEL_61:
  v53 = *(v49 + 72);
  v54 = v97;
  *v97 = *v53;
  v54[1] = v53[1];
LABEL_65:
  v55 = v92;
  if ((a5 & 4) != 0 && *&v99[16] == v92)
  {
    *v87 = 16842752;
    *&v87[8] = v99;
    *&v87[16] = 0;
    *v83 = 33619968;
    *&v83[8] = v99;
    *&v83[16] = 0;
    sub_10026EF8C(v87, v83);
    a5 &= ~4u;
    v55 = v92;
  }

  *v87 = 1124007936;
  memset(&v87[4], 0, 60);
  v88 = &v87[8];
  v89 = v90;
  v90[0] = 0;
  v90[1] = 0;
  if (v55 != v113 && v55 != v105)
  {
    v56 = &v97;
    v57 = &v91;
    if (v34 <= 12)
    {
      goto LABEL_71;
    }

    goto LABEL_88;
  }

  *v83 = 1124007936;
  memset(&v83[4], 0, 60);
  v84 = &v83[8];
  v85 = v86;
  v86[0] = 0;
  v86[1] = 0;
  __src = __PAIR64__(v35, v38);
  sub_100268ED0(v83, 2, &__src, v91 & 0xFFF);
  if (*&v87[56] && atomic_fetch_add((*&v87[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v87);
  }

  if (*&v87[4] >= 1)
  {
    v67 = 0;
    v68 = v88;
    do
    {
      *&v68[4 * v67++] = 0;
    }

    while (v67 < *&v87[4]);
  }

  *v87 = *v83;
  *&v87[16] = *&v83[16];
  *&v87[32] = *&v83[32];
  *&v87[48] = *&v83[48];
  v69 = v89;
  if (v89 == v90)
  {
    v70 = v85;
    if (*&v83[4] <= 2)
    {
      goto LABEL_82;
    }
  }

  else
  {
    j__free(v89);
    v88 = &v87[8];
    v89 = v90;
    v69 = v90;
    v70 = v85;
    if (*&v83[4] <= 2)
    {
LABEL_82:
      *v69 = *v70;
      v69[1] = v70[1];
      goto LABEL_85;
    }
  }

  v88 = v84;
  v89 = v70;
  v84 = &v83[8];
  v85 = v86;
LABEL_85:
  *v83 = 1124007936;
  memset(&v83[4], 0, 60);
  if (v85 != v86)
  {
    j__free(v85);
  }

  v56 = &v89;
  v57 = v87;
  if (v34 <= 12)
  {
LABEL_71:
    if (v34 != 5)
    {
      if (v34 == 6)
      {
        v58 = v113;
        v59 = v119[0];
        v60 = v105;
        v61 = v111[0];
        v62 = *&v99[16];
        v63 = v102;
        v64 = (v56 + 1);
        v65 = 6;
        v66 = *(v57 + 2);
LABEL_92:
        sub_100243378(v58, v59, v60, v61, v62, v63, v66, *v64, a6, a7, v32, v33, *(v57 + 3), a5, v65);
        goto LABEL_94;
      }

      goto LABEL_90;
    }

    goto LABEL_93;
  }

LABEL_88:
  if (v34 != 13)
  {
    if (v34 == 14)
    {
      v58 = v113;
      v59 = v119[0];
      v60 = v105;
      v61 = v111[0];
      v62 = *&v99[16];
      v63 = v102;
      v64 = v98;
      v65 = 14;
      v66 = v92;
      goto LABEL_92;
    }

LABEL_90:
    *v83 = 0uLL;
    qmemcpy(sub_1002A80E0(v83, 49), "type == (((6) & ((1 << 3) - 1)) + (((2)-1) << 3))", 49);
    sub_1002A8980(-215, v83, "gemm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 1623);
  }

LABEL_93:
  v71 = a6;
  v72 = a7;
  sub_100242840(v113, v119[0], v105, v111[0], *&v99[16], v102, *(v57 + 2), v56[1], v71, v72, v32, v33, *(v57 + 3), a5, v34);
LABEL_94:
  if (v57 != &v91)
  {
    *v83 = 33619968;
    *&v83[8] = &v91;
    *&v83[16] = 0;
    sub_10022B754(v57, v83);
  }

  if (*&v87[56] && atomic_fetch_add((*&v87[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v87);
  }

  *&v87[56] = 0;
  memset(&v87[16], 0, 32);
  if (*&v87[4] >= 1)
  {
    v73 = 0;
    v74 = v88;
    do
    {
      *&v74[4 * v73++] = 0;
    }

    while (v73 < *&v87[4]);
  }

  if (v89 != v90)
  {
    j__free(v89);
  }

  if (v95 && atomic_fetch_add((v95 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v91);
  }

  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  if (SDWORD1(v91) >= 1)
  {
    v75 = 0;
    v76 = v96;
    do
    {
      *&v76[4 * v75++] = 0;
    }

    while (v75 < SDWORD1(v91));
  }

  if (v97 != v98)
  {
    j__free(v97);
  }

  if (*&v99[56] && atomic_fetch_add((*&v99[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v99);
  }

  *&v99[56] = 0;
  memset(&v99[16], 0, 32);
  if (*&v99[4] >= 1)
  {
    v77 = 0;
    v78 = v100;
    do
    {
      *&v78[4 * v77++] = 0;
    }

    while (v77 < *&v99[4]);
  }

  if (v101 != &v102)
  {
    j__free(v101);
  }

  if (v108 && atomic_fetch_add((v108 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v104);
  }

  v108 = 0;
  v105 = 0u;
  v106 = 0u;
  if (SDWORD1(v104) >= 1)
  {
    v79 = 0;
    v80 = v109;
    do
    {
      *&v80[4 * v79++] = 0;
    }

    while (v79 < SDWORD1(v104));
  }

  if (v110 != v111)
  {
    j__free(v110);
  }

  if (v116 && atomic_fetch_add((v116 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v112);
  }

  v116 = 0;
  v113 = 0u;
  v114 = 0u;
  if (SDWORD1(v112) >= 1)
  {
    v81 = 0;
    v82 = v117;
    do
    {
      v82[v81++] = 0;
    }

    while (v81 < SDWORD1(v112));
  }

  if (v118 != v119)
  {
    j__free(v118);
  }
}

void sub_100244BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100244D98(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v82 = a4;
  sub_1002ACE7C(v80, &off_100473F78);
  v7 = sub_100271A88(a1, -1);
  if (v7 != sub_100271A88(a2, -1))
  {
    v72 = 0uLL;
    v8 = sub_1002A80E0(&v72, 20);
    *(v8 + 16) = 690513264;
    *v8 = *"type == _src2.type()";
    sub_1002A8980(-215, &v72, "scaleAdd", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2415);
  }

  v9 = v7 & 7;
  if (v9 <= 4)
  {
    sub_1001DD438(a1, a2, a3, v7 & 7, v82, 1.0, 0.0);
    goto LABEL_82;
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v72 = *v10;
    v73 = v12;
    v74 = *(v10 + 32);
    v13 = *(v10 + 56);
    v75 = *(v10 + 48);
    v76 = v13;
    v77 = (&v72 + 8);
    v78 = v79;
    v79[0] = 0;
    v79[1] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_8:
        v14 = *(v10 + 72);
        v15 = v78;
        *v78 = *v14;
        v15[1] = v14[1];
        goto LABEL_12;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_8;
    }

    DWORD1(v72) = 0;
    sub_100269B58(&v72, v10);
  }

  else
  {
    sub_1002703C0(a1, -1, &v72);
  }

LABEL_12:
  if (sub_100271148(a2) == 0x10000)
  {
    v16 = *(a2 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v64 = *v16;
    v65 = v18;
    v66 = *(v16 + 32);
    v19 = *(v16 + 56);
    v67 = *(v16 + 48);
    v68 = v19;
    v69 = &v64 + 2;
    v70 = v71;
    v71[0] = 0;
    v71[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_15:
        v20 = *(v16 + 72);
        v21 = v70;
        *v70 = *v20;
        v21[1] = v20[1];
        goto LABEL_19;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_15;
    }

    DWORD1(v64) = 0;
    sub_100269B58(&v64, v16);
  }

  else
  {
    sub_1002703C0(a2, -1, &v64);
  }

LABEL_19:
  v22 = v77[-1].u32[3];
  if (v22 != *(v69 - 1))
  {
    goto LABEL_23;
  }

  if (v22 == 2)
  {
    if (v77->i32[0] != *v69 || v77->i32[1] != v69[1])
    {
      goto LABEL_23;
    }
  }

  else if (v22 >= 1)
  {
    v29 = 0;
    v30 = 4 * v22;
    while (v77->i32[v29 / 4] == v69[v29 / 4])
    {
      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_24;
      }
    }

LABEL_23:
    v56 = 0uLL;
    qmemcpy(sub_1002A80E0(&v56, 22), "src1.size == src2.size", 22);
    sub_1002A8980(-215, &v56, "scaleAdd", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2427);
  }

LABEL_24:
  sub_10026BEEC(a3, SDWORD1(v72), v77->i64, v7, -1, 0, 0);
  if (sub_100271148(a3) == 0x10000)
  {
    v23 = *(a3 + 8);
    v24 = *v23;
    v25 = *(v23 + 16);
    v56 = *v23;
    v57 = v25;
    v58 = *(v23 + 32);
    v26 = *(v23 + 56);
    v59 = *(v23 + 48);
    v60 = v26;
    v61 = &v56 + 8;
    v62 = v63;
    v63[0] = 0;
    v63[1] = 0;
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
      if (*(v23 + 4) <= 2)
      {
LABEL_27:
        v27 = *(v23 + 72);
        v28 = v62;
        *v62 = *v27;
        v28[1] = v27[1];
        goto LABEL_36;
      }
    }

    else if (SDWORD1(v24) <= 2)
    {
      goto LABEL_27;
    }

    DWORD1(v56) = 0;
    sub_100269B58(&v56, v23);
  }

  else
  {
    sub_1002703C0(a3, -1, &v56);
  }

LABEL_36:
  v31 = ((v7 >> 3) & 0x1FF) + 1;
  v32 = v82;
  v55 = v32;
  if (v9 == 5)
  {
    v33 = &v55;
  }

  else
  {
    v33 = &v82;
  }

  if (v9 == 5)
  {
    v34 = sub_100245568;
  }

  else
  {
    v34 = sub_10024566C;
  }

  if ((BYTE1(v72) & 0x40) == 0 || (BYTE1(v64) & 0x40) == 0 || (BYTE1(v56) & 0x40) == 0)
  {
    v86[0] = &v72;
    v86[1] = &v64;
    v86[2] = &v56;
    v86[3] = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    sub_100267CC8(v53, v86, &v83, -1);
    v35 = (v31 * v54);
    v36 = -1;
    while (++v36 < v53[4])
    {
      v34(v83, v84, v85, v35, v33);
      sub_100267D14(v53);
    }

    goto LABEL_58;
  }

  if (SDWORD1(v72) >= 3)
  {
    if (DWORD1(v72) > 7)
    {
      v38 = DWORD1(v72) & 0x7FFFFFF8;
      v39 = v77 + 1;
      v40.i64[0] = 0x100000001;
      v40.i64[1] = 0x100000001;
      v41 = v38;
      v42.i64[0] = 0x100000001;
      v42.i64[1] = 0x100000001;
      do
      {
        v40 = vmulq_s32(v39[-1], v40);
        v42 = vmulq_s32(*v39, v42);
        v39 += 2;
        v41 -= 8;
      }

      while (v41);
      v43 = vmulq_s32(v42, v40);
      *v43.i8 = vmul_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
      v37 = v43.i32[0] * v43.i32[1];
      if (v38 == DWORD1(v72))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v38 = 0;
      v37 = 1;
    }

    v44 = DWORD1(v72) - v38;
    v45 = &v77->i32[v38];
    do
    {
      v46 = *v45++;
      v37 *= v46;
      --v44;
    }

    while (v44);
  }

  else
  {
    v37 = HIDWORD(v72) * DWORD2(v72);
  }

LABEL_57:
  v34(v73, v65, v57, (v37 * v31), v33);
LABEL_58:
  if (v60 && atomic_fetch_add((v60 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v56);
  }

  v60 = 0;
  v57 = 0u;
  v58 = 0u;
  if (SDWORD1(v56) >= 1)
  {
    v47 = 0;
    v48 = v61;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v56));
  }

  if (v62 != v63)
  {
    j__free(v62);
  }

  if (v68 && atomic_fetch_add((v68 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v64);
  }

  v68 = 0;
  v65 = 0u;
  v66 = 0u;
  if (SDWORD1(v64) >= 1)
  {
    v49 = 0;
    v50 = v69;
    do
    {
      v50[v49++] = 0;
    }

    while (v49 < SDWORD1(v64));
  }

  if (v70 != v71)
  {
    j__free(v70);
  }

  if (v76 && atomic_fetch_add((v76 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v72);
  }

  v76 = 0;
  v73 = 0u;
  v74 = 0u;
  if (SDWORD1(v72) >= 1)
  {
    v51 = 0;
    v52 = v77;
    do
    {
      *(v52 + v51++) = 0;
    }

    while (v51 < SDWORD1(v72));
  }

  if (v78 != v79)
  {
    j__free(v78);
  }

LABEL_82:
  if (v81)
  {
    sub_1002ACC1C(v80);
  }
}

void sub_10024546C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_100006D14(&a19);
  sub_100006D14(&a31);
  sub_100006D14(v31 - 256);
  sub_1001D8BF4(v31 - 152);
  _Unwind_Resume(a1);
}

float32x4_t *sub_100245568(float32x4_t *result, float32x4_t *a2, float32x4_t *a3, int a4, _DWORD *a5, double a6)
{
  LODWORD(a6) = *a5;
  if (a4 >= 4)
  {
    v6 = 0;
    v7 = result;
    v8 = a2;
    v9 = a3;
    do
    {
      v10 = *v7++;
      v11 = v10;
      v12 = *v8++;
      *v9++ = vaddq_f32(vmulq_n_f32(v11, *&a6), v12);
      v6 += 4;
    }

    while (v6 <= (a4 - 4));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a4)
  {
    v13 = a4 - v6;
    if (v13 <= 7 || (a3 - result) < 0x20 || (a3 - a2) < 0x20)
    {
      v14 = v6;
    }

    else
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + v6;
      v22 = 4 * v6 + 16;
      v23 = vdupq_lane_s32(*&a6, 0);
      v24 = (a3 + v22);
      v25 = (result + v22);
      v26 = (a2 + v22);
      v27 = v13 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v28 = vmlaq_f32(*v26, v23, *v25);
        v24[-1] = vmlaq_f32(v26[-1], v23, v25[-1]);
        *v24 = v28;
        v24 += 2;
        v25 += 2;
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      if (v13 == (v13 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    v15 = &a3->f32[v14];
    v16 = &a2->f32[v14];
    v17 = &result->f32[v14];
    v18 = a4 - v14;
    do
    {
      v19 = *v17++;
      v20 = v19;
      v21 = *v16++;
      *v15++ = v21 + (v20 * *&a6);
      --v18;
    }

    while (v18);
  }

  return result;
}

float64x2_t *sub_10024566C(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, int a4, double *a5)
{
  v5 = *a5;
  if (a4 >= 4)
  {
    v6 = 0;
    v7 = a3 + 1;
    v8 = a2 + 1;
    v9 = result + 1;
    do
    {
      v10 = vaddq_f64(vmulq_n_f64(*v9, *&v5), *v8);
      v6 += 4;
      v7[-1] = vaddq_f64(vmulq_n_f64(v9[-1], *&v5), v8[-1]);
      *v7 = v10;
      v7 += 2;
      v8 += 2;
      v9 += 2;
    }

    while (v6 <= (a4 - 4));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a4)
  {
    v11 = a4 - v6;
    if (v11 <= 5 || (a3 - result) < 0x20 || (a3 - a2) < 0x20)
    {
      v12 = v6;
    }

    else
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + v6;
      v20 = 8 * v6 + 16;
      v21 = vdupq_lane_s64(v5, 0);
      v22 = (a3 + v20);
      v23 = (result + v20);
      v24 = (a2 + v20);
      v25 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v26 = vmlaq_f64(*v24, v21, *v23);
        v22[-1] = vmlaq_f64(v24[-1], v21, v23[-1]);
        *v22 = v26;
        v22 += 2;
        v23 += 2;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    v13 = &a3->f64[v12];
    v14 = &a2->f64[v12];
    v15 = &result->f64[v12];
    v16 = a4 - v12;
    do
    {
      v17 = *v15++;
      v18 = v17;
      v19 = *v14++;
      *v13++ = v19 + v18 * *&v5;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_100245784(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, double a6)
{
  sub_1002ACE7C(v117, &off_100473F98);
  if (sub_100271148(a1) == 0x10000)
  {
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = *(v12 + 16);
    v109 = *v12;
    v110 = v14;
    v111 = *(v12 + 32);
    v15 = *(v12 + 56);
    v112 = *(v12 + 48);
    v113 = v15;
    v114 = &v109 + 2;
    v115 = v116;
    v116[0] = 0;
    v116[1] = 0;
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*(v12 + 4) <= 2)
      {
LABEL_4:
        v16 = *(v12 + 72);
        v17 = v115;
        *v115 = *v16;
        v17[1] = v16[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v13) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v109) = 0;
    sub_100269B58(&v109, v12);
  }

  else
  {
    sub_1002703C0(a1, -1, &v109);
  }

LABEL_8:
  if (sub_100271148(a4) == 0x10000)
  {
    v18 = *(a4 + 8);
    v19 = *v18;
    v20 = *(v18 + 16);
    v101 = *v18;
    v102 = v20;
    v103 = *(v18 + 32);
    v21 = *(v18 + 56);
    v104 = *(v18 + 48);
    v105 = v21;
    v106 = &v101 + 2;
    v107 = v108;
    v108[0] = 0;
    v108[1] = 0;
    if (v21)
    {
      atomic_fetch_add((v21 + 20), 1u);
      if (*(v18 + 4) <= 2)
      {
LABEL_11:
        v22 = *(v18 + 72);
        v23 = v107;
        *v107 = *v22;
        v23[1] = v22[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v19) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v101) = 0;
    sub_100269B58(&v101, v18);
  }

  else
  {
    sub_1002703C0(a4, -1, &v101);
  }

LABEL_15:
  v24 = v109;
  if (a5 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = v109;
  }

  v26 = v25 & 7;
  if (v26 <= (v101 & 7u))
  {
    v27 = v101 & 7;
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 5)
  {
    v28 = 5;
  }

  else
  {
    v28 = v27;
  }

  if ((v109 & 0xFF8) != 0)
  {
    v93 = 0uLL;
    v29 = sub_1002A80E0(&v93, 19);
    *(v29 + 15) = 824196413;
    *v29 = *"src.channels() == 1";
    sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2888);
  }

  if (v102)
  {
    if (SDWORD1(v101) >= 3)
    {
      v31 = v106 + 1;
      v32 = 1;
      v33 = DWORD1(v101) & 0x7FFFFFFE;
      v34 = 1;
      do
      {
        v32 *= *(v31 - 1);
        v34 *= *v31;
        v31 += 2;
        v33 -= 2;
      }

      while (v33);
      v30 = v34 * v32;
      v35 = DWORD1(v101) - (DWORD1(v101) & 0x7FFFFFFE);
      if (v35)
      {
        v36 = &v106[2 * ((DWORD1(v101) >> 1) & 0x3FFFFFFF)];
        do
        {
          v37 = *v36++;
          v30 *= v37;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v30 = SHIDWORD(v101) * SDWORD2(v101);
    }

    if (DWORD1(v101) && v30)
    {
      if ((v101 & 0xFF8) != 0)
      {
        v93 = 0uLL;
        qmemcpy(sub_1002A80E0(&v93, 21), "delta.channels() == 1", 21);
        sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2894);
      }

      if (DWORD2(v101) != 1 && DWORD2(v101) != DWORD2(v109))
      {
        v93 = 0uLL;
        qmemcpy(sub_1002A80E0(&v93, 43), "(delta.rows == src.rows || delta.rows == 1)", 43);
        sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2894);
      }

      if (HIDWORD(v101) != 1 && HIDWORD(v101) != HIDWORD(v109))
      {
        v93 = 0uLL;
        qmemcpy(sub_1002A80E0(&v93, 43), "(delta.cols == src.cols || delta.cols == 1)", 43);
        sub_1002A8980(-215, &v93, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2894);
      }

      if ((v101 & 0xFFF) != v28)
      {
        LODWORD(v93) = 33619968;
        *(&v93 + 1) = &v101;
        *&v94 = 0;
        sub_10020EF14(&v101, &v93, v28, 1.0, 0.0);
      }
    }
  }

  v38 = 8;
  if (a3)
  {
    v38 = 12;
  }

  sub_100275A84(a2, *(&v109 | v38), *(&v109 | v38), v28, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, &v93);
    goto LABEL_55;
  }

  v39 = *(a2 + 8);
  v40 = *v39;
  v41 = *(v39 + 16);
  v93 = *v39;
  v94 = v41;
  v95 = *(v39 + 32);
  v42 = *(v39 + 56);
  v96 = *(v39 + 48);
  v97 = v42;
  v98 = &v93 + 8;
  v99 = v100;
  v100[0] = 0;
  v100[1] = 0;
  if (!v42)
  {
    if (SDWORD1(v40) <= 2)
    {
      goto LABEL_51;
    }

LABEL_54:
    DWORD1(v93) = 0;
    sub_100269B58(&v93, v39);
    goto LABEL_55;
  }

  atomic_fetch_add((v42 + 20), 1u);
  if (*(v39 + 4) > 2)
  {
    goto LABEL_54;
  }

LABEL_51:
  v43 = *(v39 + 72);
  v44 = v99;
  *v99 = *v43;
  v44[1] = v43[1];
LABEL_55:
  if (v110 != v94)
  {
    v45 = v24 & 0xFFF;
    if (v45 != v28 || (v46.i64[0] = *(&v93 + 1), v46.i64[1] = *(&v109 + 1), v47.i64[0] = 0x6400000064, v47.i64[1] = 0x6400000064, (vaddvq_s32(vandq_s8(vcgtq_s32(v47, v46), xmmword_1003E3A20)) & 0xF) != 0))
    {
      if ((v24 & 0xFFF) != 0 || v27 > 5)
      {
        if ((v24 & 0xFFF) != 0 || v27 != 6)
        {
          if (v45 == 2 && v27 <= 5)
          {
            v49 = a3 == 0;
            v50 = sub_10024B8A4;
            v51 = sub_10024B1C4;
          }

          else if (v45 == 2 && v27 == 6)
          {
            v49 = a3 == 0;
            v50 = sub_10024CDD8;
            v51 = sub_10024C63C;
          }

          else if (v45 == 3 && v27 <= 5)
          {
            v49 = a3 == 0;
            v50 = sub_10024E01C;
            v51 = sub_10024D91C;
          }

          else if (v45 == 3 && v27 == 6)
          {
            v49 = a3 == 0;
            v50 = sub_10024F6A4;
            v51 = sub_10024EED0;
          }

          else if (v45 == 5 && v27 <= 5)
          {
            v49 = a3 == 0;
            v50 = sub_100250984;
            v51 = sub_100250320;
          }

          else
          {
            if (v45 != 5 || v27 != 6)
            {
              v50 = sub_100252ADC;
              if (a3)
              {
                v50 = sub_1002523BC;
              }

              if (v45 != 6 || v27 != 6)
              {
                *v89 = 0;
                *&v89[8] = 0;
                sub_1002A8980(-210, v89, "mulTransposed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matmul.cpp", 2989);
              }

              goto LABEL_121;
            }

            v49 = a3 == 0;
            v50 = sub_100251A74;
            v51 = sub_1002512D4;
          }
        }

        else
        {
          v49 = a3 == 0;
          v50 = sub_100249540;
          v51 = sub_10024882C;
        }
      }

      else
      {
        v49 = a3 == 0;
        v50 = sub_100246E48;
        v51 = sub_1002464C4;
      }

      if (!v49)
      {
        v50 = v51;
      }

LABEL_121:
      v50(&v109, &v93, &v101, a6);
      *v89 = 50397184;
      *&v89[8] = &v93;
      *&v89[16] = 0;
      sub_100277334(v89, 0);
      goto LABEL_122;
    }
  }

  *v89 = 1124007936;
  memset(&v89[4], 0, 60);
  v90 = &v89[8];
  v91 = v92;
  v92[0] = 0;
  v92[1] = 0;
  if (v102)
  {
    if (SDWORD1(v101) >= 3)
    {
      v53 = v106 + 1;
      v54 = 1;
      v55 = DWORD1(v101) & 0x7FFFFFFE;
      v56 = 1;
      do
      {
        v54 *= *(v53 - 1);
        v56 *= *v53;
        v53 += 2;
        v55 -= 2;
      }

      while (v55);
      v48 = v56 * v54;
      v57 = DWORD1(v101) - (DWORD1(v101) & 0x7FFFFFFE);
      if (v57)
      {
        v58 = &v106[2 * ((DWORD1(v101) >> 1) & 0x3FFFFFFF)];
        do
        {
          v59 = *v58++;
          v48 *= v59;
          --v57;
        }

        while (v57);
      }
    }

    else
    {
      v48 = SHIDWORD(v101) * SDWORD2(v101);
    }

    v52 = &v109;
    if (DWORD1(v101) && v48)
    {
      if (v106[1] == v114[1] && *v106 == *v114)
      {
        *&v76[1] = 0;
        LODWORD(v76[0]) = 16842752;
        *(&v76[0] + 1) = &v109;
        v88 = 0;
        v86 = 16842752;
        v87 = &v101;
        v83 = 33619968;
        v84 = v89;
        v85 = 0;
        v61 = sub_100276DA4();
      }

      else
      {
        LODWORD(v76[0]) = 16842752;
        *(v76 + 8) = &v101;
        v86 = 33619968;
        v87 = v89;
        v88 = 0;
        sub_10022F3D8(v76, SDWORD2(v109) / SDWORD2(v101), SHIDWORD(v109) / SHIDWORD(v101), &v86);
        *&v76[1] = 0;
        LODWORD(v76[0]) = 16842752;
        *(&v76[0] + 1) = &v109;
        v88 = 0;
        v86 = 16842752;
        v87 = v89;
        v83 = 33619968;
        v84 = v89;
        v85 = 0;
        v61 = sub_100276DA4();
      }

      sub_1001DD10C(v76, &v86, &v83, v61, -1);
      v52 = v89;
    }
  }

  else
  {
    v52 = &v109;
  }

  v88 = 0;
  v86 = 16842752;
  v87 = v52;
  v85 = 0;
  v83 = 16842752;
  v84 = v52;
  LODWORD(v76[0]) = 1124007936;
  memset(v76 + 4, 0, 48);
  v76[3] = 0u;
  v77 = v76 + 8;
  v78 = v79;
  v79[0] = 0;
  v79[1] = 0;
  v82 = 0;
  v80 = 16842752;
  v81 = v76;
  v73 = 33619968;
  if (a3)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  v74 = &v93;
  v75 = 0;
  sub_100243EB0(&v86, &v83, &v80, &v73, v62, a6, 0.0);
  if (*(&v76[3] + 1) && atomic_fetch_add((*(&v76[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v76);
  }

  *(&v76[3] + 1) = 0;
  memset(&v76[1], 0, 32);
  if (SDWORD1(v76[0]) >= 1)
  {
    v63 = 0;
    v64 = v77;
    do
    {
      *&v64[4 * v63++] = 0;
    }

    while (v63 < SDWORD1(v76[0]));
  }

  if (v78 != v79)
  {
    j__free(v78);
  }

  if (*&v89[56] && atomic_fetch_add((*&v89[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v89);
  }

  *&v89[56] = 0;
  memset(&v89[16], 0, 32);
  if (*&v89[4] >= 1)
  {
    v65 = 0;
    v66 = v90;
    do
    {
      *&v66[4 * v65++] = 0;
    }

    while (v65 < *&v89[4]);
  }

  if (v91 != v92)
  {
    j__free(v91);
  }

LABEL_122:
  if (v97 && atomic_fetch_add((v97 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v93);
  }

  v97 = 0;
  v94 = 0u;
  v95 = 0u;
  if (SDWORD1(v93) >= 1)
  {
    v67 = 0;
    v68 = v98;
    do
    {
      *&v68[4 * v67++] = 0;
    }

    while (v67 < SDWORD1(v93));
  }

  if (v99 != v100)
  {
    j__free(v99);
  }

  if (v105 && atomic_fetch_add((v105 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v101);
  }

  v105 = 0;
  v102 = 0u;
  v103 = 0u;
  if (SDWORD1(v101) >= 1)
  {
    v69 = 0;
    v70 = v106;
    do
    {
      v70[v69++] = 0;
    }

    while (v69 < SDWORD1(v101));
  }

  if (v107 != v108)
  {
    j__free(v107);
  }

  if (v113 && atomic_fetch_add((v113 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v109);
  }

  v113 = 0;
  v110 = 0u;
  v111 = 0u;
  if (SDWORD1(v109) >= 1)
  {
    v71 = 0;
    v72 = v114;
    do
    {
      v72[v71++] = 0;
    }

    while (v71 < SDWORD1(v109));
  }

  if (v115 != v116)
  {
    j__free(v115);
  }

  if (v118)
  {
    sub_1002ACC1C(v117);
  }
}

void sub_100246388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_1002A8124(&a33);
  sub_100006D14(&a45);
  sub_100006D14(&a57);
  sub_100006D14(v57 - 192);
  sub_1001D8BF4(v57 - 96);
  _Unwind_Resume(a1);
}

void sub_100246494(_Unwind_Exception *a1)
{
  sub_100006D14(v1 - 192);
  sub_1001D8BF4(v1 - 96);
  _Unwind_Resume(a1);
}

_BYTE *sub_1002464C4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, __n128 a10, __n128 a11)
{
  v14 = a1[2];
  v15 = *(a2 + 16);
  v16 = *(a3 + 16);
  v17 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a3 + 80) >> 2;
  }

  v19 = a1[8];
  v20 = v19[1];
  v21 = *v19;
  if (v16)
  {
    v22 = *(a3 + 12) < v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22;
  v24 = 20 * v21;
  if (!v22)
  {
    v24 = 4 * v21;
  }

  result = v174;
  if (v24 >= 0x409)
  {
    operator new[]();
  }

  v26 = *(a2 + 80) >> 2;
  if ((v23 & 1) == 0)
  {
    v27 = &v174[4 * v21];
    if (v21 < 1)
    {
      goto LABEL_36;
    }

    v28 = v21 >= 8 && v18 == 1;
    if (v28 && (v27 < &v16->f32[v21] ? (v29 = v16 >= &v174[16 * v21 + 4 * v21]) : (v29 = 1), v29))
    {
      v30 = v21 & 0x7FFFFFF8;
      f32 = v27[4].f32;
      v32 = &v16[1];
      v33 = v30;
      do
      {
        v175.val[0] = v32[-1];
        v34 = *v32;
        v175.val[1] = v175.val[0];
        v175.val[2] = v175.val[0];
        v175.val[3] = v175.val[0];
        v35 = *v32;
        a10 = *v32;
        v36 = *v32;
        v37 = f32 - 16;
        vst4q_f32(v37, v175);
        vst4q_f32(f32, *(&a10 - 2));
        f32 += 32;
        v32 += 2;
        v33 -= 8;
      }

      while (v33);
      if (v30 == v21)
      {
LABEL_36:
        v18 = 4 * (v18 != 0);
        v16 = &v174[4 * v21];
        if (v20 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v30 = 0;
    }

    v38 = &v174[16 * v30 + 4 * v21];
    v39 = &v16->f32[v18 * v30];
    v41 = v21 - v30;
    do
    {
      v42 = vld1q_dup_f32(v39);
      v40 = 4 * v18;
      v39 = (v39 + v40);
      *v38++ = v42;
      --v41;
    }

    while (v41);
    goto LABEL_36;
  }

  if (!v16)
  {
    if (v20 < 1)
    {
      return result;
    }

    v125 = 0;
    v126 = v20 - 4;
    v127 = a4 * 0.0;
    *&v127 = a4 * 0.0;
    v129 = v174 < v14 + v20 + v21 - 1 && v14 < &v174[4 * v21];
    v130 = v21 & 0x7FFFFFFC;
    v131 = vdupq_lane_s32(*&v127, 0);
    v133 = v21 < 4 || v17 != 1;
    v134 = v133 || v129;
    v135 = 4 * v26;
    for (i = v14; ; i = (i + 1))
    {
      if (v21 < 1)
      {
        goto LABEL_149;
      }

      if (v134)
      {
        v137 = 0;
LABEL_147:
        v144 = &v174[4 * v137];
        v145 = v17 * v137;
        v146 = v21 - v137;
        do
        {
          a11.n128_u8[0] = i->u8[v145];
          a11.n128_f32[0] = a11.n128_u32[0];
          *v144++ = a11.n128_u32[0];
          v145 += v17;
          --v146;
        }

        while (v146);
        goto LABEL_149;
      }

      if (v21 >= 0x10)
      {
        v139 = v21 & 0x7FFFFFF0;
        v140 = v174;
        v141 = i;
        do
        {
          v142 = *v141++;
          v13 = vqtbl1q_s8(v142, xmmword_1003E3730);
          a11 = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1003E3720));
          v12 = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1003E3700));
          v140[2] = v12;
          v140[3] = vcvtq_f32_u32(vqtbl1q_s8(v142, xmmword_1003E3710));
          *v140 = a11;
          v140[1] = vcvtq_f32_u32(v13);
          v140 += 4;
          v139 -= 16;
        }

        while (v139);
        if ((v21 & 0x7FFFFFF0) == v21)
        {
          goto LABEL_149;
        }

        v138 = v21 & 0x7FFFFFF0;
        v137 = v138;
        if ((v21 & 0xC) == 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v138 = 0;
      }

      v143 = &v174[4 * v138];
      do
      {
        a11.n128_u32[0] = *(i->u32 + v138);
        a11 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a11.n128_u64[0])));
        *v143++ = a11;
        v138 += 4;
      }

      while (v130 != v138);
      v137 = v21 & 0x7FFFFFFC;
      if (v130 != v21)
      {
        goto LABEL_147;
      }

LABEL_149:
      LODWORD(v147) = v125;
      v148 = v125;
      if (v125 <= v126)
      {
        do
        {
          a11 = v131;
          if (v21 >= 1)
          {
            v155 = (v14->i32 + v148);
            v156 = 0uLL;
            v157 = v21;
            v158 = v174;
            v159 = 0uLL;
            do
            {
              v160 = *v158++;
              LODWORD(v13.f64[0]) = *v155;
              v161 = vmovl_u16(*&vmovl_u8(*&v13.f64[0]));
              v162 = vand_s8(*&vextq_s8(v161, v161, 8uLL), 0xFF000000FFLL);
              v163.i64[0] = v162.u32[0];
              v163.i64[1] = v162.u32[1];
              v164 = vcvtq_f64_u64(v163);
              *v161.i8 = vand_s8(*v161.i8, 0xFF000000FFLL);
              v163.i64[0] = v161.u32[0];
              v163.i64[1] = v161.u32[1];
              v13 = vcvtq_f64_u64(v163);
              v156 = vmlaq_n_f64(v156, v13, v160);
              v159 = vmlaq_n_f64(v159, v164, v160);
              v155 = (v155 + v17);
              --v157;
            }

            while (v157);
            v12.f64[0] = a4;
            a11 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v156, a4)), vmulq_n_f64(v159, a4));
          }

          *(v15 + 4 * v148) = a11;
          v147 = v148 + 4;
          v148 = v147;
        }

        while (v126 >= v147);
      }

      if (v147 >= v20)
      {
        goto LABEL_134;
      }

      v149 = v147;
      if (v21 >= 1)
      {
        do
        {
          v150 = 0.0;
          v151 = v14;
          v152 = v21;
          v153 = v174;
          do
          {
            v154 = *v153++;
            LOBYTE(v12.f64[0]) = *(v151 + v149);
            v12.f64[0] = *&v12.f64[0];
            v150 = v150 + v154 * v12.f64[0];
            v151 += v17;
            --v152;
          }

          while (v152);
          a11.n128_f64[0] = v150 * a4;
          a11.n128_f32[0] = a11.n128_f64[0];
          *(v15 + 4 * v149++) = a11.n128_u32[0];
        }

        while (v20 > v149);
        goto LABEL_134;
      }

      v165 = (v20 + ~v147);
      if (v165 > 6)
      {
        v167 = v165 + 1;
        v168 = (v165 + 1) & 0x1FFFFFFF8;
        v166 = v168 + v149;
        v169 = 4 * v149;
        v170 = v168;
        do
        {
          v171 = (v15 + v169);
          *v171 = v131;
          v171[1] = v131;
          v169 += 32;
          v170 -= 8;
        }

        while (v170);
        if (v167 == v168)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v166 = v149;
      }

      v172 = 4 * v166;
      do
      {
        *(v15 + v172) = LODWORD(v127);
        v172 += 4;
        LODWORD(v166) = v166 + 1;
      }

      while (v20 > v166);
LABEL_134:
      ++v125;
      v15 += v135;
      if (v125 == v20)
      {
        return result;
      }
    }
  }

  v27 = 0;
  if (v20 >= 1)
  {
LABEL_37:
    v43 = 0;
    v44 = v20 - 4;
    v45 = a4 * 0.0;
    *&v45 = a4 * 0.0;
    v46 = &v174[4 * v21];
    v48 = v174 < v14 + v20 + v21 - 1 && v14 < v46;
    v50 = v174 < &v27->i8[4 * v21] && v27 < v46 || v48;
    v52 = v174 < &v16->i8[4 * v20 - 4 + 4 * v21] && v16 < v46 || v48;
    v53 = v17 == 1 && v18 == 1;
    v54 = v21 & 0x7FFFFFF0;
    v55 = v21 & 0x7FFFFFFC;
    v56 = vdupq_lane_s32(*&v45, 0);
    v58 = !v53 || v21 < 4;
    v59 = v58 | v50;
    v60 = v58 | v52;
    v61 = 4 * v18;
    v62 = 4 * v26;
    v63 = v16;
    v64 = v14;
    do
    {
      if (v27)
      {
        if (v21 < 1)
        {
          goto LABEL_96;
        }

        if (v59)
        {
          v65 = 0;
LABEL_84:
          v81 = &v174[4 * v65];
          v82 = (v27->f32 + v61 * v65);
          v83 = v21 - v65;
          v84 = v17 * v65;
          do
          {
            a10.n128_u8[0] = v64->u8[v84];
            a10.n128_f32[0] = a10.n128_u32[0] - *v82;
            *v81++ = a10.n128_u32[0];
            v82 = (v82 + v61);
            v84 += v17;
            --v83;
          }

          while (v83);
          goto LABEL_96;
        }

        if (v21 >= 0x10)
        {
          v69 = v21 & 0x7FFFFFF0;
          v70 = v174;
          v71 = v27;
          v72 = v64;
          do
          {
            v73 = *v72++;
            v11 = vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3730));
            v75 = v71[2];
            v74 = v71[3];
            v77 = *v71;
            v76 = v71[1];
            v71 += 4;
            v12 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3700)), v75);
            v70[2] = v12;
            v70[3] = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3710)), v74);
            a10 = vsubq_f32(v11, v76);
            *v70 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v73, xmmword_1003E3720)), v77);
            v70[1] = a10;
            v70 += 4;
            v69 -= 16;
          }

          while (v69);
          if (v54 == v21)
          {
            goto LABEL_96;
          }

          v67 = v21 & 0x7FFFFFF0;
          v65 = v67;
          if ((v21 & 0xC) == 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v67 = 0;
        }

        v78 = (v27 + 4 * v67);
        v79 = &v174[4 * v67];
        do
        {
          a10.n128_u32[0] = *(v64->u32 + v67);
          v80 = *v78++;
          a10 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a10.n128_u64[0]))), v80);
          *v79++ = a10;
          v67 += 4;
        }

        while (v55 != v67);
        v65 = v21 & 0x7FFFFFFC;
        if (v55 != v21)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v21 < 1)
        {
          goto LABEL_96;
        }

        if (v60)
        {
          v66 = 0;
LABEL_94:
          v95 = &v174[4 * v66];
          v96 = v61 * v66;
          v97 = v21 - v66;
          v98 = v17 * v66;
          do
          {
            a10.n128_u8[0] = v64->u8[v98];
            a10.n128_f32[0] = a10.n128_u32[0] - *(v63->f32 + v96);
            *v95++ = a10.n128_u32[0];
            v96 += v61;
            v98 += v17;
            --v97;
          }

          while (v97);
          goto LABEL_96;
        }

        if (v21 >= 0x10)
        {
          v85 = 0;
          v86 = v174;
          v87 = v63;
          do
          {
            v88 = v64[v85 / 0x10];
            v89 = vqtbl1q_s8(v88, xmmword_1003E3720);
            v91 = v87[2];
            v90 = v87[3];
            v93 = *v87;
            v92 = v87[1];
            v87 += 4;
            v11 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v88, xmmword_1003E3730)), v92);
            v12 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v88, xmmword_1003E3700)), v91);
            a10 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v88, xmmword_1003E3710)), v90);
            v86[2] = v12;
            v86[3] = a10;
            *v86 = vsubq_f32(vcvtq_f32_u32(v89), v93);
            v86[1] = v11;
            v86 += 4;
            v85 += 16;
          }

          while (v54 != v85);
          if (v54 == v21)
          {
            goto LABEL_96;
          }

          v68 = v21 & 0x7FFFFFF0;
          v66 = v68;
          if ((v21 & 0xC) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v68 = 0;
        }

        v94 = 4 * v68;
        do
        {
          a10.n128_u32[0] = *(v64->u32 + v68);
          a10 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a10.n128_u64[0]))), *(v63 + v94));
          *&v174[v94] = a10;
          v68 += 4;
          v94 += 16;
        }

        while (v55 != v68);
        v66 = v21 & 0x7FFFFFFC;
        if (v55 != v21)
        {
          goto LABEL_94;
        }
      }

LABEL_96:
      LODWORD(v99) = v43;
      v100 = v43;
      if (v43 <= v44)
      {
        do
        {
          a10 = v56;
          if (v21 >= 1)
          {
            v108 = (v16 + 4 * v100);
            if (v27)
            {
              v108 = v27;
            }

            v109 = (v14->i32 + v100);
            v110 = 0uLL;
            v111 = v21;
            v112 = v174;
            v113 = 0uLL;
            do
            {
              v114 = *v112++;
              LODWORD(v12.f64[0]) = *v109;
              v115 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v12.f64[0]))), *v108);
              v116 = vcvtq_f64_f32(*v115.f32);
              v12 = vcvt_hight_f64_f32(v115);
              v113 = vmlaq_n_f64(v113, v12, v114);
              v110 = vmlaq_n_f64(v110, v116, v114);
              v109 = (v109 + v17);
              v108 = (v108 + v61);
              --v111;
            }

            while (v111);
            v11.i32[0] = LODWORD(a4);
            a10 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v110, a4)), vmulq_n_f64(v113, a4));
          }

          *(v15 + 4 * v100) = a10;
          v99 = v100 + 4;
          v100 = v99;
        }

        while (v44 >= v99);
      }

      if (v99 >= v20)
      {
        goto LABEL_65;
      }

      v101 = v99;
      if (v21 >= 1)
      {
        do
        {
          v102 = &v16->f32[v101];
          if (v27)
          {
            v102 = v27;
          }

          v103 = 0.0;
          v104 = v14;
          v105 = v21;
          v106 = v174;
          do
          {
            v107 = *v106++;
            v11.i8[0] = *(v104 + v101);
            *v11.i64 = (v11.u32[0] - *v102);
            v103 = v103 + v107 * *v11.i64;
            v102 = (v102 + v61);
            v104 += v17;
            --v105;
          }

          while (v105);
          a10.n128_f64[0] = v103 * a4;
          a10.n128_f32[0] = a10.n128_f64[0];
          *(v15 + 4 * v101++) = a10.n128_u32[0];
        }

        while (v20 > v101);
        goto LABEL_65;
      }

      v117 = (v20 + ~v99);
      if (v117 > 6)
      {
        v119 = v117 + 1;
        v120 = (v117 + 1) & 0x1FFFFFFF8;
        v118 = v120 + v101;
        v121 = 4 * v101;
        v122 = v120;
        do
        {
          v123 = (v15 + v121);
          *v123 = v56;
          v123[1] = v56;
          v121 += 32;
          v122 -= 8;
        }

        while (v122);
        if (v119 == v120)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v118 = v101;
      }

      v124 = 4 * v118;
      do
      {
        *(v15 + v124) = LODWORD(v45);
        v124 += 4;
        LODWORD(v118) = v118 + 1;
      }

      while (v20 > v118);
LABEL_65:
      ++v43;
      v15 += v62;
      v64 = (v64 + 1);
      v63 = (v63 + 4);
    }

    while (v43 != v20);
  }

  return result;
}

void sub_100246E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_100246E48(void *result, uint64_t a2, uint64_t a3, __n128 a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10, float32x4_t a11)
{
  v407 = a4.n128_f64[0];
  v11 = result[2];
  v12 = *(a2 + 16);
  v13 = *(a3 + 16);
  v408 = result[10];
  v394 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a3 + 80) >> 2;
  }

  v15 = result[8];
  v16 = *v15;
  v17 = v15[1];
  v18 = v17;
  v404 = v16;
  v405 = v15[1];
  v406 = v17;
  if (!v13)
  {
    if (v16 < 1)
    {
      return result;
    }

    if (v17 < 4)
    {
      if (v17 <= 0)
      {
        v372 = 0;
        v373 = a4.n128_f64[0] * 0.0;
        *&v373 = v407 * 0.0;
        v374 = vdupq_lane_s32(*&v373, 0);
        v375 = v12 + 1;
        v376 = v16;
        do
        {
          v377 = v16 - v372;
          v378 = v372;
          if ((v16 - v372) < 8)
          {
            goto LABEL_139;
          }

          v379 = v376 & 0xFFFFFFFFFFFFFFF8;
          v378 = v372 + (v377 & 0xFFFFFFFFFFFFFFF8);
          v380 = v375;
          do
          {
            v380[-1] = v374;
            *v380 = v374;
            v380 += 2;
            v379 -= 8;
          }

          while (v379);
          if (v377 != (v377 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_139:
            do
            {
              v12->i32[v378++] = LODWORD(v373);
            }

            while (v16 != v378);
          }

          ++v372;
          --v376;
          v375 = (v375 + 4 * v394 + 4);
          v12 = (v12 + 4 * v394);
        }

        while (v372 != v16);
      }

      else
      {
        v116 = 0;
        v117 = v11 + 2;
        v118 = v16;
        do
        {
          v119 = &v11[v408 * v116];
          v120 = v118;
          v121 = v12;
          v122 = v117;
          do
          {
            LOBYTE(a5) = *v119;
            LOBYTE(a6) = *(v122 - 2);
            v123 = *&a6;
            v124 = *&a5 * v123 + 0.0;
            if (v17 != 1)
            {
              LOBYTE(v123) = v119[1];
              v125 = *&v123;
              LOBYTE(a7) = *(v122 - 1);
              a7 = *&a7;
              v124 = v124 + v125 * a7;
              if (v17 != 2)
              {
                LOBYTE(v125) = v119[2];
                LOBYTE(a7) = *v122;
                a7 = *&a7;
                v124 = v124 + *&v125 * a7;
              }
            }

            a6 = a4.n128_f64[0];
            a5 = v124 * a4.n128_f64[0];
            *&a5 = a5;
            v121->i32[0] = LODWORD(a5);
            v121 = (v121 + 4);
            v122 += v408;
            --v120;
          }

          while (v120);
          ++v116;
          v117 += v408;
          v12 = (v12 + 4 * v394 + 4);
          --v118;
        }

        while (v116 != v16);
      }

      return result;
    }

    v126 = (v17 - 4);
    v127 = (v126 & 0xFFFFFFFC) + 4;
    if (v126 < 0x1C)
    {
      if (v127 >= v17)
      {
        for (i = 0; i != v16; ++i)
        {
          v382 = v11;
          v383 = i;
          do
          {
            v384 = 0;
            v385 = 0.0;
            do
            {
              LOBYTE(a5) = v11[v384];
              LOBYTE(a6) = v382[v384];
              LOBYTE(a7) = v11[v384 + 1];
              *&v386 = *&a6;
              LOBYTE(a8) = v382[v384 + 1];
              a8 = *&a8;
              *&v387 = *&a7 * a8;
              v388 = *&v387 + *&a5 * *&v386;
              LOBYTE(v386) = v11[v384 + 2];
              *&v389 = v386;
              LOBYTE(v387) = v382[v384 + 2];
              *&v390 = v387;
              v391 = v388 + *&v389 * *&v390;
              LOBYTE(v389) = v11[v384 + 3];
              a6 = v389;
              LOBYTE(v390) = v382[v384 + 3];
              a7 = v390;
              a5 = v391 + a6 * a7;
              v385 = v385 + a5;
              v384 += 4;
            }

            while (v384 <= v126);
            a5 = v407;
            *&v392 = v385 * v407;
            v12->i32[v383++] = v392;
            v382 += v408;
          }

          while (v383 != v16);
          v12 = (v12 + 4 * v394);
          v11 += v408;
        }
      }

      else
      {
        for (j = 0; j != v16; ++j)
        {
          v129 = v11;
          v130 = j;
          do
          {
            v131 = 0;
            v132 = 0.0;
            do
            {
              LOBYTE(a5) = v11[v131];
              LOBYTE(a6) = v129[v131];
              LOBYTE(a7) = v11[v131 + 1];
              *&v133 = *&a6;
              LOBYTE(a8) = v129[v131 + 1];
              a8 = *&a8;
              *&v134 = *&a7 * a8;
              v135 = *&v134 + *&a5 * *&v133;
              LOBYTE(v133) = v11[v131 + 2];
              *&v136 = v133;
              LOBYTE(v134) = v129[v131 + 2];
              *&v137 = v134;
              v138 = v135 + *&v136 * *&v137;
              LOBYTE(v136) = v11[v131 + 3];
              a6 = v136;
              LOBYTE(v137) = v129[v131 + 3];
              a7 = v137;
              a5 = v138 + a6 * a7;
              v132 = v132 + a5;
              v131 += 4;
            }

            while (v131 <= v126);
            v139 = (v126 & 0xFFFFFFFC) + 4;
            do
            {
              LOBYTE(a5) = v11[v139];
              a5 = *&a5;
              LOBYTE(a6) = v129[v139];
              a6 = *&a6;
              v132 = v132 + a5 * a6;
              ++v139;
            }

            while (v17 > v139);
            a5 = v407;
            *&v140 = v132 * v407;
            v12->i32[v130++] = v140;
            v129 += v408;
          }

          while (v130 != v16);
          v12 = (v12 + 4 * v394);
          v11 += v408;
        }
      }

      return result;
    }

    v141 = (v126 >> 2) + 1;
    v142 = 0;
    v143 = v141 & 0x3FFFFFF0;
    v401 = v141 & 0x3FFFFFF8;
    v397 = (v126 & 0xFFFFFFFC) + 4;
    v398 = (v17 - 4);
    v395 = v143;
    v396 = v141;
LABEL_105:
    v144 = v11;
    v393 = v142;
    v145 = v142;
    v399 = v11;
    v400 = v12;
    while (v126 >= 0x3C)
    {
      v402 = v145;
      v403 = v144;
      v148 = 0.0;
      do
      {
        v437 = v148;
        v434 = v143;
        v444 = vld4q_s8(v11);
        v244 = v11 + 64;
        v430 = v244;
        v443 = vld4q_s8(v144);
        v245 = v144 + 64;
        v431 = v245;
        v246 = vextq_s8(v444.val[0], v444.val[0], 8uLL).u64[0];
        v247 = vextq_s8(v443.val[0], v443.val[0], 8uLL).u64[0];
        v248 = vextq_s8(v444.val[1], v444.val[1], 8uLL).u64[0];
        v427 = v444.val[2].u8[6];
        v414 = v443.val[0].u8[0];
        v426 = v444.val[2].u8[7];
        v425 = v444.val[2].u8[4];
        v249.i32[0] = BYTE4(v246);
        v413 = v443.val[0].u8[2];
        v424 = v444.val[2].u8[5];
        v419 = v444.val[2].u8[2];
        v250.i32[0] = BYTE6(v246);
        v411 = v443.val[0].u8[4];
        v418 = v444.val[2].u8[3];
        v410 = v443.val[0].u8[6];
        v417 = v444.val[2].u8[1];
        v422 = v444.val[3].u8[0];
        v251.i32[0] = BYTE2(v247);
        v420 = v444.val[3].u8[1];
        v423 = v444.val[3].u8[2];
        v252.i32[0] = BYTE4(v247);
        v253 = vextq_s8(v443.val[1], v443.val[1], 8uLL).u64[0];
        v421 = v444.val[3].u8[3];
        v416 = v444.val[3].u8[4];
        v254.i32[0] = BYTE6(v247);
        v255 = vextq_s8(v444.val[2], v444.val[2], 8uLL).u64[0];
        v415 = v444.val[3].u8[5];
        v256 = v444.val[3].u8[6];
        v257.i32[0] = BYTE6(v248);
        v412 = v444.val[3].u8[7];
        v409 = vextq_s8(v444.val[3], v444.val[3], 8uLL).u64[0];
        v258.i32[0] = BYTE4(v248);
        v259 = vextq_s8(v443.val[2], v443.val[2], 8uLL).u64[0];
        v260 = v443.val[0].u8[1];
        v261.i32[0] = BYTE2(v248);
        v262 = v443.val[0].u8[3];
        v263 = v443.val[0].u8[5];
        LODWORD(v245) = v443.val[0].u8[7];
        v264 = v443.val[1].u8[6];
        v265 = v443.val[1].u8[7];
        v266 = v443.val[1].u8[4];
        LODWORD(v244) = v443.val[1].u8[5];
        v267 = v443.val[1].u8[2];
        v268 = v443.val[1].u8[3];
        v269 = v443.val[1].u8[0];
        v270 = v443.val[1].u8[1];
        v271 = v443.val[2].u8[6];
        v272 = v443.val[2].u8[7];
        v273 = v443.val[2].u8[4];
        v274 = v443.val[2].u8[5];
        v275 = v443.val[2].u8[2];
        v276 = v443.val[2].u8[3];
        v277 = v443.val[2].u8[0];
        v278 = v443.val[2].u8[1];
        v279 = vextq_s8(v443.val[3], v443.val[3], 8uLL).u64[0];
        v280.i32[0] = v444.val[1].u8[4];
        v281.i32[0] = v444.val[1].u8[2];
        v443.val[0].i32[0] = v253.u8[6];
        v257.i32[1] = HIBYTE(v248);
        v443.val[0].i32[1] = v253.u8[7];
        v282 = vand_s8(v257, 0xFF000000FFLL);
        v283.i64[0] = v282.u32[0];
        v283.i64[1] = v282.u32[1];
        *v443.val[0].i8 = vand_s8(*v443.val[0].i8, 0xFF000000FFLL);
        v284 = vcvtq_f64_u64(v283);
        v283.i64[0] = v443.val[0].u32[0];
        v283.i64[1] = v443.val[0].u32[1];
        v285 = vmulq_f64(v284, vcvtq_f64_u64(v283));
        v286.i32[0] = v248;
        v250.i32[1] = HIBYTE(v246);
        v254.i32[1] = HIBYTE(v247);
        *v443.val[1].i8 = vand_s8(v250, 0xFF000000FFLL);
        v283.i64[0] = v443.val[1].u32[0];
        v283.i64[1] = v443.val[1].u32[1];
        v287 = vand_s8(v254, 0xFF000000FFLL);
        v443.val[1] = vcvtq_f64_u64(v283);
        v283.i64[0] = v287.u32[0];
        v283.i64[1] = v287.u32[1];
        v288 = vmlaq_f64(v285, vcvtq_f64_u64(v283), v443.val[1]);
        v289.i32[0] = v444.val[1].u8[0];
        v249.i32[1] = BYTE5(v246);
        v252.i32[1] = BYTE5(v247);
        v258.i32[1] = BYTE5(v248);
        v443.val[1].i32[0] = v253.u8[4];
        v443.val[1].i32[1] = v253.u8[5];
        v290 = vand_s8(v258, 0xFF000000FFLL);
        v283.i64[0] = v290.u32[0];
        v283.i64[1] = v290.u32[1];
        v291 = vcvtq_f64_u64(v283);
        *v443.val[1].i8 = vand_s8(*v443.val[1].i8, 0xFF000000FFLL);
        v283.i64[0] = v443.val[1].u32[0];
        v283.i64[1] = v443.val[1].u32[1];
        v292 = vmulq_f64(v291, vcvtq_f64_u64(v283));
        *&v291.f64[0] = vand_s8(v249, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v291.f64[0]);
        v283.i64[1] = HIDWORD(v291.f64[0]);
        v293 = v283;
        v294 = vand_s8(v252, 0xFF000000FFLL);
        v283.i64[0] = v294.u32[0];
        v283.i64[1] = v294.u32[1];
        v295 = vmlaq_f64(v292, vcvtq_f64_u64(v283), vcvtq_f64_u64(v293));
        v296.i32[0] = v253.u8[2];
        v297 = __PAIR64__(v268, v267);
        result = BYTE3(v247);
        v252.i32[0] = v253.u8[0];
        v298 = v253.u8[3];
        v299 = __PAIR64__(v270, v269);
        v300 = v253.u8[1];
        v444.val[3].i32[0] = v444.val[2].u8[0];
        v301.i32[0] = v246;
        v301.i32[1] = BYTE1(v246);
        v444.val[2].i32[0] = v444.val[0].u8[0];
        v444.val[2].i32[1] = v444.val[0].u8[1];
        v253.i32[0] = v444.val[0].u8[2];
        v253.i32[1] = v444.val[0].u8[3];
        v443.val[2].i32[0] = v247;
        v443.val[2].i32[1] = BYTE1(v247);
        v251.i32[1] = BYTE3(v247);
        v261.i32[1] = BYTE3(v248);
        v280.i32[1] = v444.val[1].u8[5];
        v286.i32[1] = BYTE1(v248);
        v281.i32[1] = v444.val[1].u8[3];
        v289.i32[1] = v444.val[1].u8[1];
        v296.i32[1] = v298;
        v252.i32[1] = v300;
        v302 = vand_s8(v261, 0xFF000000FFLL);
        v283.i64[0] = v302.u32[0];
        v283.i64[1] = v302.u32[1];
        v303 = vcvtq_f64_u64(v283);
        v304 = vand_s8(v296, 0xFF000000FFLL);
        v283.i64[0] = v304.u32[0];
        v283.i64[1] = v304.u32[1];
        v305 = vmulq_f64(v303, vcvtq_f64_u64(v283));
        *&v303.f64[0] = vand_s8(__PAIR64__(BYTE3(v246), BYTE2(v246)), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v303.f64[0]);
        v283.i64[1] = HIDWORD(v303.f64[0]);
        v306 = vcvtq_f64_u64(v283);
        v307 = vand_s8(v251, 0xFF000000FFLL);
        v283.i64[0] = v307.u32[0];
        v283.i64[1] = v307.u32[1];
        v308 = vmlaq_f64(v305, vcvtq_f64_u64(v283), v306);
        *&v306.f64[0] = vand_s8(__PAIR64__(v444.val[1].u8[7], v444.val[1].u8[6]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v306.f64[0]);
        v283.i64[1] = HIDWORD(v306.f64[0]);
        v309 = vcvtq_f64_u64(v283);
        v310 = vand_s8(__PAIR64__(v265, v264), 0xFF000000FFLL);
        v283.i64[0] = v310.u32[0];
        v283.i64[1] = v310.u32[1];
        v311 = vmulq_f64(v309, vcvtq_f64_u64(v283));
        v312 = vand_s8(__PAIR64__(v444.val[0].u8[7], v444.val[0].u8[6]), 0xFF000000FFLL);
        v283.i64[0] = v312.u32[0];
        v283.i64[1] = v312.u32[1];
        v313 = v283;
        v314 = vand_s8(__PAIR64__(v245, v410), 0xFF000000FFLL);
        v283.i64[0] = v314.u32[0];
        v283.i64[1] = v314.u32[1];
        v315 = vmlaq_f64(v311, vcvtq_f64_u64(v283), vcvtq_f64_u64(v313));
        v316 = vand_s8(v280, 0xFF000000FFLL);
        v283.i64[0] = v316.u32[0];
        v283.i64[1] = v316.u32[1];
        *v293.i8 = vand_s8(__PAIR64__(v244, v266), 0xFF000000FFLL);
        v317 = vcvtq_f64_u64(v283);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v318 = vmulq_f64(v317, vcvtq_f64_u64(v283));
        *&v317.f64[0] = vand_s8(__PAIR64__(v444.val[0].u8[5], v444.val[0].u8[4]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v317.f64[0]);
        v283.i64[1] = HIDWORD(v317.f64[0]);
        v319 = vcvtq_f64_u64(v283);
        *v293.i8 = vand_s8(__PAIR64__(v263, v411), 0xFF000000FFLL);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v320 = vmlaq_f64(v318, vcvtq_f64_u64(v283), v319);
        *&v284.f64[0] = vand_s8(v286, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v284.f64[0]);
        v283.i64[1] = HIDWORD(v284.f64[0]);
        v321 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(v252, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v322 = vmulq_f64(v321, vcvtq_f64_u64(v283));
        *&v321.f64[0] = vand_s8(v301, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v321.f64[0]);
        v283.i64[1] = HIDWORD(v321.f64[0]);
        v323 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(*v443.val[2].i8, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v324 = vmlaq_f64(v322, vcvtq_f64_u64(v283), v323);
        *&v323.f64[0] = vand_s8(v281, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v323.f64[0]);
        v283.i64[1] = HIDWORD(v323.f64[0]);
        v325 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(v297, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v443.val[0] = vmulq_f64(v325, vcvtq_f64_u64(v283));
        *&v325.f64[0] = vand_s8(v253, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v325.f64[0]);
        v283.i64[1] = HIDWORD(v325.f64[0]);
        v326 = v283;
        *&v319.f64[0] = vand_s8(__PAIR64__(v262, v413), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v443.val[0] = vmlaq_f64(v443.val[0], vcvtq_f64_u64(v283), vcvtq_f64_u64(v326));
        *v326.i8 = vand_s8(v289, 0xFF000000FFLL);
        v283.i64[0] = v326.u32[0];
        v283.i64[1] = v326.u32[1];
        *&v319.f64[0] = vand_s8(v299, 0xFF000000FFLL);
        v327 = vcvtq_f64_u64(v283);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v328 = vmulq_f64(v327, vcvtq_f64_u64(v283));
        *&v327.f64[0] = vand_s8(*v444.val[2].i8, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v327.f64[0]);
        v283.i64[1] = HIDWORD(v327.f64[0]);
        v329 = vcvtq_f64_u64(v283);
        *&v319.f64[0] = vand_s8(__PAIR64__(v260, v414), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v330 = vmlaq_f64(v328, vcvtq_f64_u64(v283), v329);
        v444.val[3].i32[1] = v417;
        *&v319.f64[0] = vand_s8(*v444.val[3].i8, 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v319.f64[0]);
        v283.i64[1] = HIDWORD(v319.f64[0]);
        v331 = vcvtq_f64_u64(v283);
        *&v329.f64[0] = vand_s8(__PAIR64__(v278, v277), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v329.f64[0]);
        v283.i64[1] = HIDWORD(v329.f64[0]);
        v332 = vmlaq_f64(v330, vcvtq_f64_u64(v283), v331);
        *&v329.f64[0] = vand_s8(__PAIR64__(v418, v419), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v329.f64[0]);
        v283.i64[1] = HIDWORD(v329.f64[0]);
        v333 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(__PAIR64__(v276, v275), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v443.val[0] = vmlaq_f64(v443.val[0], vcvtq_f64_u64(v283), v333);
        LODWORD(v333.f64[0]) = v255;
        HIDWORD(v333.f64[0]) = BYTE1(v255);
        LODWORD(v331.f64[0]) = v259;
        HIDWORD(v331.f64[0]) = BYTE1(v259);
        *&v333.f64[0] = vand_s8(*&v333.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v333.f64[0]);
        v283.i64[1] = HIDWORD(v333.f64[0]);
        v334 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(*&v331.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v335 = vmlaq_f64(v324, vcvtq_f64_u64(v283), v334);
        *&v334.f64[0] = vand_s8(__PAIR64__(v424, v425), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v334.f64[0]);
        v283.i64[1] = HIDWORD(v334.f64[0]);
        v336 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(__PAIR64__(v274, v273), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v337 = vmlaq_f64(v320, vcvtq_f64_u64(v283), v336);
        LODWORD(v336.f64[0]) = BYTE2(v255);
        HIDWORD(v336.f64[0]) = BYTE3(v255);
        LODWORD(v331.f64[0]) = BYTE2(v259);
        HIDWORD(v331.f64[0]) = BYTE3(v259);
        *&v336.f64[0] = vand_s8(*&v336.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v336.f64[0]);
        v283.i64[1] = HIDWORD(v336.f64[0]);
        v338 = vcvtq_f64_u64(v283);
        *&v331.f64[0] = vand_s8(*&v331.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v339 = vmlaq_f64(v308, vcvtq_f64_u64(v283), v338);
        LODWORD(v338.f64[0]) = BYTE4(v255);
        HIDWORD(v338.f64[0]) = BYTE5(v255);
        *&v338.f64[0] = vand_s8(*&v338.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v338.f64[0]);
        v283.i64[1] = HIDWORD(v338.f64[0]);
        v287.i32[0] = BYTE4(v259);
        v287.i32[1] = BYTE5(v259);
        v340 = vcvtq_f64_u64(v283);
        v341 = vand_s8(v287, 0xFF000000FFLL);
        v283.i64[0] = v341.u32[0];
        v283.i64[1] = v341.u32[1];
        v342 = vmlaq_f64(v295, vcvtq_f64_u64(v283), v340);
        LODWORD(v340.f64[0]) = BYTE6(v255);
        v341.i32[0] = BYTE6(v259);
        HIDWORD(v340.f64[0]) = HIBYTE(v255);
        v341.i32[1] = HIBYTE(v259);
        *&v340.f64[0] = vand_s8(*&v340.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v340.f64[0]);
        v283.i64[1] = HIDWORD(v340.f64[0]);
        v343 = vcvtq_f64_u64(v283);
        v344 = vand_s8(v341, 0xFF000000FFLL);
        v283.i64[0] = v344.u32[0];
        v283.i64[1] = v344.u32[1];
        v345 = vmlaq_f64(v288, vcvtq_f64_u64(v283), v343);
        LODWORD(v343.f64[0]) = BYTE4(v409);
        v344.i32[0] = BYTE6(v409);
        *&v331.f64[0] = vand_s8(__PAIR64__(v426, v427), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v331.f64[0]);
        v283.i64[1] = HIDWORD(v331.f64[0]);
        v346 = vcvtq_f64_u64(v283);
        *v293.i8 = vand_s8(__PAIR64__(v272, v271), 0xFF000000FFLL);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v347 = vmlaq_f64(v315, vcvtq_f64_u64(v283), v346);
        v344.i32[1] = HIBYTE(v409);
        v348 = vand_s8(v344, 0xFF000000FFLL);
        v283.i64[0] = v348.u32[0];
        v283.i64[1] = v348.u32[1];
        v293.i32[0] = BYTE6(v279);
        v293.i32[1] = HIBYTE(v279);
        v349 = vcvtq_f64_u64(v283);
        *v293.i8 = vand_s8(*v293.i8, 0xFF000000FFLL);
        v283.i64[0] = v293.u32[0];
        v283.i64[1] = v293.u32[1];
        v350 = vmlaq_f64(v345, vcvtq_f64_u64(v283), v349);
        LODWORD(v349.f64[0]) = BYTE4(v279);
        v236 = COERCE_DOUBLE(__PAIR64__(v443.val[3].u8[7], v443.val[3].u8[6]));
        HIDWORD(v343.f64[0]) = BYTE5(v409);
        HIDWORD(v349.f64[0]) = BYTE5(v279);
        *&v343.f64[0] = vand_s8(*&v343.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v343.f64[0]);
        v283.i64[1] = HIDWORD(v343.f64[0]);
        v351 = vcvtq_f64_u64(v283);
        *&v349.f64[0] = vand_s8(*&v349.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v349.f64[0]);
        v283.i64[1] = HIDWORD(v349.f64[0]);
        v352 = vmlaq_f64(v342, vcvtq_f64_u64(v283), v351);
        *&v351.f64[0] = vand_s8(__PAIR64__(v412, v256), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v351.f64[0]);
        v283.i64[1] = HIDWORD(v351.f64[0]);
        v353 = v283;
        *&v346.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[7], v443.val[3].u8[6]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v354 = vmlaq_f64(v347, vcvtq_f64_u64(v283), vcvtq_f64_u64(v353));
        *v353.i8 = vand_s8(__PAIR64__(v415, v416), 0xFF000000FFLL);
        v283.i64[0] = v353.u32[0];
        v283.i64[1] = v353.u32[1];
        v355 = vcvtq_f64_u64(v283);
        *&v346.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[5], v443.val[3].u8[4]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v356 = vmlaq_f64(v337, vcvtq_f64_u64(v283), v355);
        LODWORD(v355.f64[0]) = BYTE2(v409);
        HIDWORD(v355.f64[0]) = BYTE3(v409);
        *&v355.f64[0] = vand_s8(*&v355.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v355.f64[0]);
        v283.i64[1] = HIDWORD(v355.f64[0]);
        LODWORD(v346.f64[0]) = BYTE2(v279);
        v357 = vcvtq_f64_u64(v283);
        HIDWORD(v346.f64[0]) = BYTE3(v279);
        *&v346.f64[0] = vand_s8(*&v346.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v358 = vmlaq_f64(v339, vcvtq_f64_u64(v283), v357);
        LODWORD(v346.f64[0]) = v409;
        HIDWORD(v346.f64[0]) = BYTE1(v409);
        LODWORD(v349.f64[0]) = v279;
        v11 = v430;
        v144 = v431;
        HIDWORD(v349.f64[0]) = BYTE1(v279);
        *&v346.f64[0] = vand_s8(*&v346.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v346.f64[0]);
        v283.i64[1] = HIDWORD(v346.f64[0]);
        v359 = vcvtq_f64_u64(v283);
        *&v349.f64[0] = vand_s8(*&v349.f64[0], 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v349.f64[0]);
        v283.i64[1] = HIDWORD(v349.f64[0]);
        v360 = vmlaq_f64(v335, vcvtq_f64_u64(v283), v359);
        *&v359.f64[0] = vand_s8(__PAIR64__(v421, v423), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v359.f64[0]);
        v283.i64[1] = HIDWORD(v359.f64[0]);
        v361 = vcvtq_f64_u64(v283);
        *&v349.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[3], v443.val[3].u8[2]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v349.f64[0]);
        v283.i64[1] = HIDWORD(v349.f64[0]);
        v443.val[0] = vmlaq_f64(v443.val[0], vcvtq_f64_u64(v283), v361);
        *&v357.f64[0] = vand_s8(__PAIR64__(v420, v422), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v357.f64[0]);
        v283.i64[1] = HIDWORD(v357.f64[0]);
        v362 = vcvtq_f64_u64(v283);
        *&v361.f64[0] = vand_s8(__PAIR64__(v443.val[3].u8[1], v443.val[3].u8[0]), 0xFF000000FFLL);
        v283.i64[0] = LODWORD(v361.f64[0]);
        v283.i64[1] = HIDWORD(v361.f64[0]);
        v363 = vmlaq_f64(v332, vcvtq_f64_u64(v283), v362);
        v240 = v350.f64[1];
        v241 = v352.f64[1];
        v242 = v437 + v363.f64[0] + v363.f64[1] + *v443.val[0].i64 + *&v443.val[0].i64[1] + v356.f64[0] + v356.f64[1] + v354.f64[0] + v354.f64[1] + v360.f64[0] + v360.f64[1] + v358.f64[0] + v358.f64[1] + v352.f64[0] + v352.f64[1] + v350.f64[0];
        v148 = v242 + v350.f64[1];
        v143 -= 16;
      }

      while (v434 != 16);
      v143 = v395;
      v141 = v396;
      if (v396 != v395)
      {
        v147 = v395;
        v243 = v395;
        v11 = v399;
        v12 = v400;
        v16 = v404;
        LODWORD(v17) = v405;
        LODWORD(v18) = v406;
        v127 = v397;
        v126 = v398;
        v145 = v402;
        v144 = v403;
        if ((v396 & 8) == 0)
        {
LABEL_118:
          v364 = 4 * v243;
          do
          {
            LOBYTE(v242) = v11[v364];
            LOBYTE(v240) = v144[v364];
            LOBYTE(v241) = v11[v364 + 1];
            *&v365 = *&v240;
            LOBYTE(v236) = v144[v364 + 1];
            v236 = *&v236;
            *&v366 = *&v241 * v236;
            v367 = *&v366 + *&v242 * *&v365;
            LOBYTE(v365) = v11[v364 + 2];
            *&v368 = v365;
            LOBYTE(v366) = v144[v364 + 2];
            *&v369 = v366;
            v370 = v367 + *&v368 * *&v369;
            LOBYTE(v368) = v11[v364 + 3];
            v240 = v368;
            LOBYTE(v369) = v144[v364 + 3];
            v241 = v369;
            v242 = v370 + v240 * v241;
            v148 = v148 + v242;
            v364 += 4;
          }

          while (v364 <= v126);
          goto LABEL_120;
        }

LABEL_109:
        v149 = 4 * v147;
        result = (v147 - v401);
        do
        {
          v436 = v148;
          v150 = &v11[v149];
          v151 = &v144[v149];
          v442 = vld4_s8(v150);
          v441 = vld4_s8(v151);
          v152.i32[0] = v442.val[0].u8[0];
          v153.i32[0] = v442.val[0].u8[2];
          v154.i32[0] = v442.val[0].u8[4];
          v155.i32[0] = v442.val[0].u8[6];
          v156.i32[0] = v441.val[0].u8[0];
          v157.i32[0] = v441.val[0].u8[2];
          v158.i32[0] = v441.val[0].u8[4];
          v159.i32[0] = v441.val[0].u8[6];
          v160.i32[0] = v442.val[1].u8[6];
          v161.i32[0] = v442.val[1].u8[4];
          v152.i32[1] = v442.val[0].u8[1];
          v162.i32[0] = v442.val[1].u8[2];
          v163.i32[0] = v442.val[1].u8[0];
          v153.i32[1] = v442.val[0].u8[3];
          v154.i32[1] = v442.val[0].u8[5];
          v155.i32[1] = v442.val[0].u8[7];
          v164.i32[0] = v441.val[1].u8[6];
          v165.i32[0] = v441.val[1].u8[4];
          v156.i32[1] = v441.val[0].u8[1];
          v157.i32[1] = v441.val[0].u8[3];
          v166.i32[0] = v441.val[1].u8[2];
          v167.i32[0] = v441.val[1].u8[0];
          v163.i32[1] = v442.val[1].u8[1];
          v167.i32[1] = v441.val[1].u8[1];
          v158.i32[1] = v441.val[0].u8[5];
          v433 = v158;
          v159.i32[1] = v441.val[0].u8[7];
          v158.i32[0] = v442.val[2].u8[6];
          v168.i32[0] = v442.val[2].u8[4];
          v160.i32[1] = v442.val[1].u8[7];
          v161.i32[1] = v442.val[1].u8[5];
          v162.i32[1] = v442.val[1].u8[3];
          v169.i32[0] = v442.val[2].u8[2];
          v170.i32[0] = v442.val[2].u8[0];
          v164.i32[1] = v441.val[1].u8[7];
          v165.i32[1] = v441.val[1].u8[5];
          v171.i32[0] = v441.val[2].u8[6];
          v172.i32[0] = v441.val[2].u8[4];
          v166.i32[1] = v441.val[1].u8[3];
          v158.i32[1] = v442.val[2].u8[7];
          v168.i32[1] = v442.val[2].u8[5];
          v173 = v442.val[3].u8[1];
          v169.i32[1] = v442.val[2].u8[3];
          v174 = v442.val[3].u8[2];
          v175 = v442.val[3].u8[3];
          v170.i32[1] = v442.val[2].u8[1];
          LODWORD(v151) = v442.val[3].u8[4];
          v176 = v442.val[3].u8[5];
          v171.i32[1] = v441.val[2].u8[7];
          v177 = v442.val[3].u8[6];
          LODWORD(v150) = v442.val[3].u8[7];
          v172.i32[1] = v441.val[2].u8[5];
          v178.i32[0] = v441.val[2].u8[2];
          v442.val[2].i32[0] = v441.val[2].u8[0];
          v178.i32[1] = v441.val[2].u8[3];
          v442.val[2].i32[1] = v441.val[2].u8[1];
          v442.val[3].i32[0] = v442.val[3].u8[0];
          v442.val[3].i32[1] = v173;
          v442.val[0] = vand_s8(v163, 0xFF000000FFLL);
          v179.i64[0] = v442.val[0].u32[0];
          v179.i64[1] = v442.val[0].u32[1];
          *v442.val[0].i8 = vcvtq_f64_u64(v179);
          v180 = vand_s8(v167, 0xFF000000FFLL);
          v179.i64[0] = v180.u32[0];
          v179.i64[1] = v180.u32[1];
          *v442.val[0].i8 = vmulq_f64(*v442.val[0].i8, vcvtq_f64_u64(v179));
          v181 = vand_s8(v152, 0xFF000000FFLL);
          v179.i64[0] = v181.u32[0];
          v179.i64[1] = v181.u32[1];
          v182 = v179;
          v183 = vand_s8(v153, 0xFF000000FFLL);
          v179.i64[0] = v183.u32[0];
          v179.i64[1] = v183.u32[1];
          v429 = vcvtq_f64_u64(v179);
          v184 = vand_s8(v154, 0xFF000000FFLL);
          v179.i64[0] = v184.u32[0];
          v179.i64[1] = v184.u32[1];
          v185 = v179;
          v186 = vand_s8(v155, 0xFF000000FFLL);
          v179.i64[0] = v186.u32[0];
          v179.i64[1] = v186.u32[1];
          v428 = vcvtq_f64_u64(v185);
          v187 = vcvtq_f64_u64(v179);
          v188 = vand_s8(v156, 0xFF000000FFLL);
          v179.i64[0] = v188.u32[0];
          v179.i64[1] = v188.u32[1];
          v189 = v179;
          v190 = vand_s8(v157, 0xFF000000FFLL);
          v179.i64[0] = v190.u32[0];
          v179.i64[1] = v190.u32[1];
          v191 = vcvtq_f64_u64(v189);
          v192 = vcvtq_f64_u64(v179);
          v193 = vand_s8(v433, 0xFF000000FFLL);
          v179.i64[0] = v193.u32[0];
          v179.i64[1] = v193.u32[1];
          v194 = v179;
          v195 = vand_s8(v159, 0xFF000000FFLL);
          v179.i64[0] = v195.u32[0];
          v179.i64[1] = v195.u32[1];
          v196 = vcvtq_f64_u64(v179);
          v197 = vand_s8(v160, 0xFF000000FFLL);
          v179.i64[0] = v197.u32[0];
          v179.i64[1] = v197.u32[1];
          v198 = v179;
          v199 = vand_s8(v161, 0xFF000000FFLL);
          v179.i64[0] = v199.u32[0];
          v179.i64[1] = v199.u32[1];
          v200 = vcvtq_f64_u64(v179);
          v201 = vand_s8(v162, 0xFF000000FFLL);
          v179.i64[0] = v201.u32[0];
          v179.i64[1] = v201.u32[1];
          v202 = v179;
          v203 = vand_s8(v164, 0xFF000000FFLL);
          v179.i64[0] = v203.u32[0];
          v179.i64[1] = v203.u32[1];
          v204 = vcvtq_f64_u64(v179);
          v205 = vand_s8(v165, 0xFF000000FFLL);
          v179.i64[0] = v205.u32[0];
          v179.i64[1] = v205.u32[1];
          v206 = v179;
          v207 = vand_s8(v166, 0xFF000000FFLL);
          v179.i64[0] = v207.u32[0];
          v179.i64[1] = v207.u32[1];
          v208 = vcvtq_f64_u64(v206);
          v209 = vcvtq_f64_u64(v179);
          *v189.i8 = vand_s8(v158, 0xFF000000FFLL);
          v179.i64[0] = v189.u32[0];
          v179.i64[1] = v189.u32[1];
          v210 = v179;
          *v206.i8 = vand_s8(v168, 0xFF000000FFLL);
          v179.i64[0] = v206.u32[0];
          v179.i64[1] = v206.u32[1];
          v211 = vcvtq_f64_u64(v210);
          v212 = vcvtq_f64_u64(v179);
          *v206.i8 = vand_s8(v169, 0xFF000000FFLL);
          v179.i64[0] = v206.u32[0];
          v179.i64[1] = v206.u32[1];
          v213 = v179;
          v214 = vand_s8(v170, 0xFF000000FFLL);
          v179.i64[0] = v214.u32[0];
          v179.i64[1] = v214.u32[1];
          v215 = vcvtq_f64_u64(v213);
          v216 = vcvtq_f64_u64(v179);
          *v213.i8 = vand_s8(v171, 0xFF000000FFLL);
          v179.i64[0] = v213.u32[0];
          v179.i64[1] = v213.u32[1];
          v217 = v179;
          v218 = vand_s8(v172, 0xFF000000FFLL);
          v179.i64[0] = v218.u32[0];
          v179.i64[1] = v218.u32[1];
          v219 = vcvtq_f64_u64(v217);
          v220 = vcvtq_f64_u64(v179);
          v221 = vand_s8(v178, 0xFF000000FFLL);
          v179.i64[0] = v221.u32[0];
          v179.i64[1] = v221.u32[1];
          v222 = v179;
          v223 = vand_s8(v442.val[2], 0xFF000000FFLL);
          v179.i64[0] = v223.u32[0];
          v179.i64[1] = v223.u32[1];
          v224 = vcvtq_f64_u64(v222);
          v225 = vcvtq_f64_u64(v179);
          v226 = vand_s8(v442.val[3], 0xFF000000FFLL);
          v179.i64[0] = v226.u32[0];
          v179.i64[1] = v226.u32[1];
          *v442.val[3].i8 = vcvtq_f64_u64(v179);
          v442.val[1] = vand_s8(__PAIR64__(v175, v174), 0xFF000000FFLL);
          v227 = vmulq_f64(vcvtq_f64_u64(v202), v209);
          v179.i64[0] = v442.val[1].u32[0];
          v179.i64[1] = v442.val[1].u32[1];
          *v442.val[2].i8 = vcvtq_f64_u64(v179);
          v228 = vand_s8(__PAIR64__(v176, v151), 0xFF000000FFLL);
          v179.i64[0] = v228.u32[0];
          v179.i64[1] = v228.u32[1];
          v229 = vcvtq_f64_u64(v179);
          v230 = vmulq_f64(v200, v208);
          v442.val[1] = vand_s8(__PAIR64__(v150, v177), 0xFF000000FFLL);
          v179.i64[0] = v442.val[1].u32[0];
          v179.i64[1] = v442.val[1].u32[1];
          v231 = vcvtq_f64_u64(v179);
          *v442.val[1].i8 = vmulq_f64(vcvtq_f64_u64(v198), v204);
          LODWORD(v204.f64[0]) = v441.val[3].u8[0];
          HIDWORD(v204.f64[0]) = v441.val[3].u8[1];
          *&v204.f64[0] = vand_s8(*&v204.f64[0], 0xFF000000FFLL);
          v179.i64[0] = LODWORD(v204.f64[0]);
          v179.i64[1] = HIDWORD(v204.f64[0]);
          v232 = vcvtq_f64_u64(v179);
          *v442.val[0].i8 = vmlaq_f64(vmlaq_f64(*v442.val[0].i8, v191, vcvtq_f64_u64(v182)), v225, v216);
          LODWORD(v225.f64[0]) = v441.val[3].u8[2];
          *v442.val[1].i8 = vmlaq_f64(*v442.val[1].i8, v196, v187);
          HIDWORD(v225.f64[0]) = v441.val[3].u8[3];
          *&v225.f64[0] = vand_s8(*&v225.f64[0], 0xFF000000FFLL);
          v179.i64[0] = LODWORD(v225.f64[0]);
          v179.i64[1] = HIDWORD(v225.f64[0]);
          v233 = vcvtq_f64_u64(v179);
          LODWORD(v191.f64[0]) = v441.val[3].u8[4];
          HIDWORD(v191.f64[0]) = v441.val[3].u8[5];
          *&v191.f64[0] = vand_s8(*&v191.f64[0], 0xFF000000FFLL);
          v179.i64[0] = LODWORD(v191.f64[0]);
          v179.i64[1] = HIDWORD(v191.f64[0]);
          v234 = vcvtq_f64_u64(v179);
          LODWORD(v187.f64[0]) = v441.val[3].u8[6];
          HIDWORD(v187.f64[0]) = v441.val[3].u8[7];
          v441.val[0] = vand_s8(*&v187.f64[0], 0xFF000000FFLL);
          v179.i64[0] = v441.val[0].u32[0];
          v179.i64[1] = v441.val[0].u32[1];
          *v442.val[1].i8 = vmlaq_f64(vmlaq_f64(*v442.val[1].i8, v219, v211), vcvtq_f64_u64(v179), v231);
          v236 = v235;
          v237 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v230, vcvtq_f64_u64(v194), v428), v220, v212), v234, v229);
          v238 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v227, v192, v429), v224, v215), v233, *v442.val[2].i8);
          *v442.val[0].i8 = vmlaq_f64(*v442.val[0].i8, v232, *v442.val[3].i8);
          v240 = v436 + *v442.val + v239 + v238.f64[0] + v238.f64[1];
          v241 = v237.f64[1];
          v242 = v240 + v237.f64[0] + v237.f64[1] + *&v442.val[1];
          v148 = v242 + v235;
          v149 += 32;
          ++result;
        }

        while (result);
        v243 = v401;
        if (v141 == v401)
        {
          goto LABEL_120;
        }

        goto LABEL_118;
      }

      v11 = v399;
      v12 = v400;
      v16 = v404;
      LODWORD(v17) = v405;
      LODWORD(v18) = v406;
      v127 = v397;
      v126 = v398;
      v145 = v402;
      v144 = v403;
LABEL_120:
      v371 = v127;
      if (v127 < v18)
      {
        do
        {
          LOBYTE(v242) = v11[v371];
          v242 = *&v242;
          LOBYTE(v240) = v144[v371];
          v240 = *&v240;
          v148 = v148 + v242 * v240;
          ++v371;
        }

        while (v17 > v371);
      }

      *&v146 = v148 * v407;
      v12->i32[v145++] = v146;
      v144 += v408;
      if (v145 == v16)
      {
        v12 = (v12 + 4 * v394);
        v11 += v408;
        v142 = v393 + 1;
        if (v393 + 1 == v16)
        {
          return result;
        }

        goto LABEL_105;
      }
    }

    v147 = 0;
    v148 = 0.0;
    goto LABEL_109;
  }

  v19 = *(a3 + 12);
  result = v438;
  if ((4 * v17) >= 0x409)
  {
    operator new[]();
  }

  if (v16 < 1)
  {
    return result;
  }

  v20 = 0;
  v21 = 16 * (v19 == v17);
  v22 = v17 - 4;
  v23 = ((v17 - 4) & 0xFFFFFFFC) + 4;
  v24 = v21 * (((v17 - 4) >> 2) + 1);
  v25 = &v438[4 * v17];
  v26 = v17 < 4;
  v27 = v438 >= v13 + 4 * (v17 + v14 * (v16 - 1)) || v13 >= v25;
  v28 = v14 >> 61;
  if (!v27)
  {
    LOBYTE(v28) = 1;
  }

  v30 = v438 < &v11[v408 * (v16 - 1) + v17] && v11 < v25 || v408 < 0;
  v31 = v30;
  if (v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = v28;
  }

  v33 = v17 & 0x7FFFFFF0;
  v432 = v17 & 0xC;
  v34 = v17 & 0x7FFFFFFC;
  v435 = v26 | v32;
  v35 = v26 | v31;
  v36 = v11 + 3;
  v37 = v13;
  while (2)
  {
    v38 = v11;
    if (v19 >= v18)
    {
      if (v18 < 1)
      {
        goto LABEL_55;
      }

      if (v435)
      {
        for (k = 0; k != v18; ++k)
        {
LABEL_54:
          a4.n128_u8[0] = v11[k];
          a4.n128_f32[0] = a4.n128_u32[0] - v37->f32[k];
          *&v438[4 * k] = a4.n128_u32[0];
        }

        goto LABEL_55;
      }

      if (v18 >= 0x10)
      {
        v49 = v33;
        v50 = v438;
        v51 = v37;
        do
        {
          v52 = *v11;
          v11 += 16;
          a10 = vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3730));
          v54 = v51[2];
          v53 = v51[3];
          v56 = *v51;
          v55 = v51[1];
          v51 += 4;
          a11 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3700)), v54);
          v50[2] = a11;
          v50[3] = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3710)), v53);
          a4 = vsubq_f32(a10, v55);
          *v50 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v52, xmmword_1003E3720)), v56);
          v50[1] = a4;
          v50 += 4;
          v49 -= 16;
        }

        while (v49);
        v11 = v38;
        if (v33 == v18)
        {
          goto LABEL_55;
        }

        v42 = v33;
        k = v33;
        if (!v432)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v42 = 0;
      }

      v57 = 4 * v42;
      do
      {
        a4.n128_u32[0] = *&v11[v42];
        a4 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4.n128_u64[0]))), *(v37 + v57));
        *&v438[v57] = a4;
        v42 += 4;
        v57 += 16;
      }

      while (v34 != v42);
      k = v34;
      if (v34 == v18)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (v17 >= 1)
    {
      a4.n128_u32[0] = *(v13 + 4 * v14 * v20);
      if (v35)
      {
        v39 = 0;
        do
        {
LABEL_45:
          a9.i8[0] = v11[v39];
          a9.f32[0] = a9.u32[0] - a4.n128_f32[0];
          *&v438[4 * v39++] = a9.i32[0];
        }

        while (v18 != v39);
        goto LABEL_55;
      }

      if (v17 >= 0x10)
      {
        v43 = 0;
        a9 = vdupq_lane_s32(a4.n128_u64[0], 0);
        v44 = v438;
        do
        {
          v45 = *&v11[v43];
          v46 = vqtbl1q_s8(v45, xmmword_1003E3730);
          v47 = vqtbl1q_s8(v45, xmmword_1003E3700);
          a11 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3720)), a9);
          a10 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v45, xmmword_1003E3710)), a9);
          v44[2] = vsubq_f32(vcvtq_f32_u32(v47), a9);
          v44[3] = a10;
          *v44 = a11;
          v44[1] = vsubq_f32(vcvtq_f32_u32(v46), a9);
          v44 += 4;
          v43 += 16;
        }

        while (v33 != v43);
        if (v33 == v18)
        {
          goto LABEL_55;
        }

        v41 = v33;
        v39 = v33;
        if (!v432)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v41 = 0;
      }

      a9 = vdupq_lane_s32(a4.n128_u64[0], 0);
      v48 = &v438[4 * v41];
      do
      {
        a10.i32[0] = *&v11[v41];
        a10 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a10.f32))), a9);
        *v48++ = a10;
        v41 += 4;
      }

      while (v34 != v41);
      v39 = v34;
      if (v34 == v18)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

LABEL_55:
    v58 = v11;
    v59 = v36;
    v60 = v20;
    v61 = v12;
    do
    {
      v62 = (v13 + 4 * v14 * v60);
      if (v19 < v17)
      {
        a4 = vld1q_dup_f32(v62);
        v440 = a4;
        v62 = &v440;
      }

      if (v18 >= 4)
      {
        v64 = &v62->n128_f32[2];
        a9.i64[0] = 0;
        v65 = &v439;
        v66 = v59;
        v67 = 1;
        do
        {
          a4.n128_u8[0] = *(v66 - 3);
          v68 = *(v65 - 2);
          v69 = *(v64 - 2);
          v70 = (a4.n128_u32[0] - v69);
          LOBYTE(v69) = *(v66 - 2);
          v71 = *(v65 - 1) * (LODWORD(v69) - *(v64 - 1)) + v68 * v70;
          LOBYTE(v68) = *(v66 - 1);
          v73 = *v65;
          v72 = v65[1];
          v65 += 4;
          v74 = (LODWORD(v68) - *v64);
          v75 = v71 + v73 * v74;
          LOBYTE(v74) = *v66;
          *a11.i64 = v72;
          *a10.i64 = (LODWORD(v74) - v64[1]);
          a4.n128_f64[0] = v75 + *a11.i64 * *a10.i64;
          v64 = (v64 + v21);
          v76 = v67 + 3;
          v67 += 4;
          *a9.i64 = *a9.i64 + a4.n128_f64[0];
          v66 += 4;
        }

        while (v76 <= v22);
        v62 = (v62 + v24);
        v63 = v23;
        LODWORD(v17) = v405;
        if (v23 >= v405)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v63 = 0;
        a9.i64[0] = 0;
        if (v17 <= 0)
        {
          goto LABEL_57;
        }
      }

      v77 = v63;
      v78 = v17 + ~v63;
      if (v78 < 3)
      {
        v79 = v63;
        v80 = v62;
        LODWORD(v17) = v405;
        goto LABEL_79;
      }

      v81 = v78 + 1;
      if (v78 >= 0xF)
      {
        v17 = v81 & 0x1FFFFFFF0;
        v82 = &v438[4 * v77];
        v83 = &v58[v77];
        v84 = v81 & 0x1FFFFFFF0;
        v85 = v62;
        do
        {
          v87 = v82[2];
          v86 = v82[3];
          v89 = *v82;
          v88 = v82[1];
          v82 += 4;
          v90 = vcvtq_f64_f32(*v89.f32);
          v91 = vcvtq_f64_f32(*v88.f32);
          v92 = vcvtq_f64_f32(*v87.f32);
          v93 = vcvtq_f64_f32(*v86.f32);
          v94 = *v83++;
          v95 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3710)), v85[3]);
          v96 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3700)), v85[2]);
          v97 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3730)), v85[1]);
          v98 = vsubq_f32(vcvtq_f32_u32(vqtbl1q_s8(v94, xmmword_1003E3720)), *v85);
          v99 = vmulq_f64(vcvt_hight_f64_f32(v86), vcvt_hight_f64_f32(v95));
          v100 = vmulq_f64(v93, vcvtq_f64_f32(*v95.f32));
          a10 = vmulq_f64(vcvt_hight_f64_f32(v87), vcvt_hight_f64_f32(v96));
          v101 = vmulq_f64(v92, vcvtq_f64_f32(*v96.f32));
          a11 = vmulq_f64(vcvt_hight_f64_f32(v88), vcvt_hight_f64_f32(v97));
          v102 = vmulq_f64(v91, vcvtq_f64_f32(*v97.f32));
          v103 = vmulq_f64(vcvt_hight_f64_f32(v89), vcvt_hight_f64_f32(v98));
          v104 = vmulq_f64(v90, vcvtq_f64_f32(*v98.f32));
          *a9.i64 = *a9.i64 + v104.f64[0] + v104.f64[1] + v103.f64[0] + v103.f64[1] + v102.f64[0] + v102.f64[1] + *a11.i64 + *&a11.i64[1] + v101.f64[0] + v101.f64[1] + *a10.i64 + *&a10.i64[1] + v100.f64[0] + v100.f64[1] + v99.f64[0] + v99.f64[1];
          v85 += 4;
          v84 -= 16;
        }

        while (v84);
        if (v81 == v17)
        {
          v12 = v61;
          v16 = v404;
          LODWORD(v17) = v405;
          goto LABEL_57;
        }

        v16 = v404;
        if ((v81 & 0xC) == 0)
        {
          v12 = v61;
          v80 = v62 + v17;
          v79 = v17 + v77;
          LODWORD(v17) = v405;
          do
          {
LABEL_79:
            a10.i8[0] = v58[v79];
            v115 = *v80++;
            *a10.i64 = (a10.u32[0] - v115);
            *a9.i64 = *a9.i64 + *&v438[4 * v79++] * *a10.i64;
          }

          while (v17 > v79);
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0;
      }

      v79 = (v81 & 0x1FFFFFFFCLL) + v77;
      v80 = v62 + (v81 & 0x1FFFFFFFCLL);
      v105 = (v62 + 4 * v17);
      v106 = v17 - (v81 & 0x1FFFFFFFCLL);
      v107 = v17 + v77;
      v108 = &v438[4 * v107];
      do
      {
        v109 = *v108++;
        v110 = vcvtq_f64_f32(*v109.f32);
        v111 = vcvt_hight_f64_f32(v109);
        a11.i32[0] = *&v58[v107];
        v112 = *v105++;
        a11 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a11.f32))), v112);
        v113 = vcvtq_f64_f32(*a11.f32);
        v114 = vmulq_f64(v111, vcvt_hight_f64_f32(a11));
        a11.i32[1] = HIDWORD(v114.f64[1]);
        a10 = vmulq_f64(v110, v113);
        *a9.i64 = *a9.i64 + *a10.i64 + *&a10.i64[1] + v114.f64[0] + v114.f64[1];
        v107 += 4;
        v106 += 4;
      }

      while (v106);
      v12 = v61;
      v16 = v404;
      LODWORD(v17) = v405;
      if (v81 != (v81 & 0x1FFFFFFFCLL))
      {
        goto LABEL_79;
      }

LABEL_57:
      a4.n128_f64[0] = *a9.i64 * v407;
      a4.n128_f32[0] = *a9.i64 * v407;
      v12->i32[v60++] = a4.n128_u32[0];
      v59 += v408;
      v58 += v408;
      v18 = v406;
    }

    while (v60 != v16);
    v12 = (v12 + 4 * v394);
    ++v20;
    v11 = &v38[v408];
    v37 = (v37 + 4 * v14);
    v36 += v408;
    if (v20 != v16)
    {
      continue;
    }

    return result;
  }
}

_BYTE *sub_10024882C(void *a1, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, double a6, float64x2_t a7, double a8, float64x2_t a9)
{
  v9 = a1[2];
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 3;
  }

  v14 = a1[8];
  v16 = *v14;
  v15 = v14[1];
  if (v11)
  {
    v17 = *(a3 + 12) < v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  v19 = 40 * v16;
  if (!v17)
  {
    v19 = 8 * v16;
  }

  result = v275;
  if (v19 >= 0x409)
  {
    operator new[]();
  }

  v21 = *(a2 + 80) >> 3;
  if ((v18 & 1) == 0)
  {
    v22 = &v275[8 * v16];
    if (v16 < 1)
    {
      goto LABEL_72;
    }

    v23 = 0;
    if (v16 >= 6 && v13 == 1)
    {
      if (v22 >= &v11->f64[v16] || v11 >= &v275[32 * v16 + 8 * v16])
      {
        v23 = v16 & 0x7FFFFFFC;
        v25 = &v275[8 * v16 + 64];
        v26 = v11 + 1;
        v27 = v23;
        do
        {
          v28 = v26[-1];
          v29 = *v26;
          v30 = v28;
          v31 = v28;
          a7 = v28;
          a9 = *v26;
          v32 = *v26;
          v33 = *v26;
          v34 = v25 - 8;
          vst4q_f64(v34, *(&a7 - 3));
          vst4q_f64(v25, *(&a9 - 1));
          v25 += 16;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == v16)
        {
LABEL_72:
          v13 = 4 * (v13 != 0);
          v11 = &v275[8 * v16];
          if (v15 < 1)
          {
            return result;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    v96 = &v275[32 * v23 + 8 * v16];
    v97 = &v11->f64[v13 * v23];
    v99 = v16 - v23;
    do
    {
      v100 = vld1q_dup_f64(v97);
      v98 = 8 * v13;
      v97 = (v97 + v98);
      *v96 = v100;
      v96[1] = v100;
      v96 += 2;
      --v99;
    }

    while (v99);
    goto LABEL_72;
  }

  if (!v11)
  {
    if (v15 < 1)
    {
      return result;
    }

    v35 = v15 - 4;
    if (v16 > 0)
    {
      v36 = 0;
      v38 = v275 < v9 + v16 + v15 - 1 && v9 < &v275[8 * v16];
      v39 = v16 & 0x7FFFFFFC;
      v41 = v16 < 4 || v12 != 1;
      v42 = v41 || v38;
      for (i = v9; ; i = (i + 1))
      {
        if (v42)
        {
          v44 = 0;
LABEL_57:
          v76 = v12 * v44;
          v77 = &v275[8 * v44];
          v78 = v16 - v44;
          do
          {
            LOBYTE(a5.f64[0]) = *(i->f64 + v76);
            a5.f64[0] = *&a5.f64[0];
            *v77++ = *&a5.f64[0];
            v76 += v12;
            --v78;
          }

          while (v78);
          goto LABEL_59;
        }

        if (v16 >= 0x10)
        {
          v46 = v16 & 0x7FFFFFF0;
          v47 = v275;
          v48 = i;
          do
          {
            v49 = *v48++;
            v50 = vextq_s8(v49, v49, 8uLL).u64[0];
            v51.i32[0] = v50;
            v51.i32[1] = BYTE1(v50);
            v52 = vand_s8(v51, 0xFF000000FFLL);
            v53.i64[0] = v52.u32[0];
            v53.i64[1] = v52.u32[1];
            a5 = vcvtq_f64_u64(v53);
            v54.i32[0] = BYTE2(v50);
            v54.i32[1] = BYTE3(v50);
            v55 = vand_s8(v54, 0xFF000000FFLL);
            v53.i64[0] = v55.u32[0];
            v53.i64[1] = v55.u32[1];
            v56.i32[0] = BYTE4(v50);
            a7 = vcvtq_f64_u64(v53);
            v56.i32[1] = BYTE5(v50);
            v57 = vand_s8(v56, 0xFF000000FFLL);
            v53.i64[0] = v57.u32[0];
            v53.i64[1] = v57.u32[1];
            v58.i32[0] = BYTE6(v50);
            v58.i32[1] = HIBYTE(v50);
            v59 = vcvtq_f64_u64(v53);
            v60 = vand_s8(v58, 0xFF000000FFLL);
            v53.i64[0] = v60.u32[0];
            v53.i64[1] = v60.u32[1];
            v61 = v53;
            v58.i32[0] = v49.u8[0];
            v58.i32[1] = v49.u8[1];
            v62 = vand_s8(v58, 0xFF000000FFLL);
            v53.i64[0] = v62.u32[0];
            v53.i64[1] = v62.u32[1];
            v63 = vcvtq_f64_u64(v53);
            v64.i32[0] = v49.u8[2];
            v64.i32[1] = v49.u8[3];
            v65 = vand_s8(v64, 0xFF000000FFLL);
            v66.i32[0] = v49.u8[4];
            v66.i32[1] = v49.u8[5];
            v67 = vand_s8(v66, 0xFF000000FFLL);
            v53.i64[0] = v67.u32[0];
            v53.i64[1] = v67.u32[1];
            v68 = vcvtq_f64_u64(v53);
            v69.i32[0] = v49.u8[6];
            v69.i32[1] = v49.u8[7];
            v70 = vand_s8(v69, 0xFF000000FFLL);
            v53.i64[0] = v70.u32[0];
            v53.i64[1] = v70.u32[1];
            v47[2] = v68;
            v47[3] = vcvtq_f64_u64(v53);
            v53.i64[0] = v65.u32[0];
            v53.i64[1] = v65.u32[1];
            *v47 = v63;
            v47[1] = vcvtq_f64_u64(v53);
            v47[6] = v59;
            v47[7] = vcvtq_f64_u64(v61);
            v47[4] = a5;
            v47[5] = a7;
            v47 += 8;
            v46 -= 16;
          }

          while (v46);
          if ((v16 & 0x7FFFFFF0) == v16)
          {
            goto LABEL_59;
          }

          v45 = v16 & 0x7FFFFFF0;
          v44 = v45;
          if ((v16 & 0xC) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v45 = 0;
        }

        v71 = &v275[8 * v45];
        do
        {
          LODWORD(a5.f64[0]) = *(i->f64 + v45);
          v72 = vmovl_u16(*&vmovl_u8(*&a5.f64[0]));
          v73 = vand_s8(*&vextq_s8(v72, v72, 8uLL), 0xFF000000FFLL);
          v74.i64[0] = v73.u32[0];
          v74.i64[1] = v73.u32[1];
          v75 = vcvtq_f64_u64(v74);
          *v72.i8 = vand_s8(*v72.i8, 0xFF000000FFLL);
          v74.i64[0] = v72.u32[0];
          v74.i64[1] = v72.u32[1];
          a5 = vcvtq_f64_u64(v74);
          *v71 = a5;
          v71[1] = v75;
          v71 += 2;
          v45 += 4;
        }

        while (v39 != v45);
        v44 = v16 & 0x7FFFFFFC;
        if (v39 != v16)
        {
          goto LABEL_57;
        }

LABEL_59:
        v79 = v36;
        if (v36 <= v35)
        {
          do
          {
            v80 = (v9 + v79);
            v81 = 0uLL;
            v82 = v16;
            v83 = v275;
            v84 = 0uLL;
            do
            {
              LODWORD(a7.f64[0]) = *v80;
              v85 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
              v86 = vand_s8(*&vextq_s8(v85, v85, 8uLL), 0xFF000000FFLL);
              v87.i64[0] = v86.u32[0];
              v87.i64[1] = v86.u32[1];
              v88 = vcvtq_f64_u64(v87);
              *v85.i8 = vand_s8(*v85.i8, 0xFF000000FFLL);
              v89 = vld1q_dup_f64(v83++);
              v87.i64[0] = v85.u32[0];
              v87.i64[1] = v85.u32[1];
              a7 = vcvtq_f64_u64(v87);
              v81 = vmlaq_f64(v81, a7, v89);
              v84 = vmlaq_f64(v84, v88, v89);
              v80 = (v80 + v12);
              --v82;
            }

            while (v82);
            a7.f64[0] = a4;
            a5 = vmulq_n_f64(v81, a4);
            v90 = (v10 + 8 * v79);
            *v90 = a5;
            v90[1] = vmulq_n_f64(v84, a4);
            v79 += 4;
          }

          while (v35 >= v79);
          v79 = v79;
          if (v79 >= v15)
          {
            goto LABEL_45;
          }

          do
          {
LABEL_66:
            v91 = 0.0;
            v92 = v9;
            v93 = v16;
            v94 = v275;
            do
            {
              v95 = *v94++;
              LOBYTE(a7.f64[0]) = *(v92 + v79);
              a7.f64[0] = *&a7.f64[0];
              v91 = v91 + v95 * a7.f64[0];
              v92 += v12;
              --v93;
            }

            while (v93);
            a5.f64[0] = v91 * a4;
            v10->i64[v79++] = *&a5.f64[0];
          }

          while (v15 > v79);
          goto LABEL_45;
        }

        v79 = v36;
        if (v36 < v15)
        {
          goto LABEL_66;
        }

LABEL_45:
        ++v36;
        v10 = (v10 + 8 * v21);
        if (v36 == v15)
        {
          return result;
        }
      }
    }

    v246 = 0;
    v247 = a4 * 0.0;
    v248 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v249 = v15 - 3;
    v250 = v10 + 4;
    v251 = 8 * v21;
    v252 = 8 * v21 + 8;
    v253 = 4;
    for (j = -1; ; --j)
    {
      if (v253 <= v249)
      {
        v255 = v15 - 3;
      }

      else
      {
        v255 = v253;
      }

      v256 = v246 + 4;
      if (v246 + 4 <= v249)
      {
        v256 = v15 - 3;
      }

      if (v246 <= v35)
      {
        v258 = v256 + ~v246;
        v259 = v246;
        if (v258 <= 0xB)
        {
          goto LABEL_169;
        }

        v260 = (((v255 + j) >> 2) + 1) & 0x7FFFFFFC;
        v261 = (v258 >> 2) + 1;
        v259 = v246 + 4 * (v261 & 0x7FFFFFFC);
        v257 = v246;
        v262 = v250;
        do
        {
          v262[-4] = v248;
          v262[-3] = v248;
          v262[-2] = v248;
          v262[-1] = v248;
          *v262 = v248;
          v262[1] = v248;
          v262[2] = v248;
          v262[3] = v248;
          v262 += 8;
          v257 += 16;
          v260 -= 4;
        }

        while (v260);
        if ((v261 & 0x7FFFFFFC) != v261)
        {
LABEL_169:
          v263 = 8 * v259;
          v257 = v259;
          do
          {
            v264 = (v10 + v263);
            *v264 = v248;
            v264[1] = v248;
            v263 += 32;
            v257 += 4;
          }

          while (v35 >= v257);
        }
      }

      else
      {
        v257 = v246;
      }

      if (v257 >= v15)
      {
        goto LABEL_157;
      }

      v265 = v257;
      v266 = (v15 + ~v257);
      if (v266 > 2)
      {
        v268 = v266 + 1;
        v269 = (v266 + 1) & 0x1FFFFFFFCLL;
        v267 = v269 + v265;
        v270 = 8 * v265;
        v271 = v269;
        do
        {
          v272 = (v10 + v270);
          *v272 = v248;
          v272[1] = v248;
          v270 += 32;
          v271 -= 4;
        }

        while (v271);
        if (v268 == v269)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v267 = v265;
      }

      v273 = v267;
      do
      {
        *&v10->i64[v273++] = v247;
        LODWORD(v267) = v267 + 1;
      }

      while (v15 > v267);
LABEL_157:
      ++v246;
      v250 = (v250 + v252);
      ++v253;
      v10 = (v10 + v251);
      if (v246 == v15)
      {
        return result;
      }
    }
  }

  v22 = 0;
  if (v15 >= 1)
  {
LABEL_73:
    v101 = 0;
    v102 = v15 - 4;
    v103 = a4 * 0.0;
    v104 = 8 * v16;
    v105 = &v275[v104];
    v106 = v22 + v104;
    v108 = v275 < v9 + v16 + v15 - 1 && v9 < v105;
    v110 = v275 < v106 && v22 < v105 || v108;
    v112 = v275 < &v11->f64[v15 - 1 + v16] && v11 < v105 || v108;
    v113 = v12 == 1 && v13 == 1;
    v114 = v16 & 0x7FFFFFF0;
    v115 = v16 & 0x7FFFFFFC;
    v116 = vdupq_lane_s64(*&v103, 0);
    v118 = !v113 || v16 < 4;
    v119 = v118 | v110;
    v120 = v118 | v112;
    v121 = 8 * v13;
    v122 = 8 * v21;
    v123 = v11;
    v124 = v9;
    do
    {
      if (v22)
      {
        if (v16 < 1)
        {
          goto LABEL_132;
        }

        if (v119)
        {
          v125 = 0;
LABEL_120:
          v170 = &v275[8 * v125];
          v171 = (v22->f64 + v121 * v125);
          v172 = v16 - v125;
          v173 = v12 * v125;
          do
          {
            LOBYTE(a7.f64[0]) = *(v124->f64 + v173);
            a7.f64[0] = *&a7.f64[0] - *v171;
            *v170++ = *&a7.f64[0];
            v171 = (v171 + v121);
            v173 += v12;
            --v172;
          }

          while (v172);
          goto LABEL_132;
        }

        if (v16 >= 0x10)
        {
          v129 = v16 & 0x7FFFFFF0;
          v130 = v275;
          v131 = v22;
          v132 = v124;
          do
          {
            v133 = *v132++;
            v134 = vextq_s8(v133, v133, 8uLL).u64[0];
            v135.i32[0] = BYTE6(v134);
            v135.i32[1] = HIBYTE(v134);
            v136 = vand_s8(v135, 0xFF000000FFLL);
            v137.i64[0] = v136.u32[0];
            v137.i64[1] = v136.u32[1];
            v138 = vcvtq_f64_u64(v137);
            v139.i32[0] = BYTE4(v134);
            v139.i32[1] = BYTE5(v134);
            v140 = vand_s8(v139, 0xFF000000FFLL);
            v137.i64[0] = v140.u32[0];
            v137.i64[1] = v140.u32[1];
            v141 = vcvtq_f64_u64(v137);
            v142.i32[0] = BYTE2(v134);
            v142.i32[1] = BYTE3(v134);
            v143 = vand_s8(v142, 0xFF000000FFLL);
            v137.i64[0] = v143.u32[0];
            v137.i64[1] = v143.u32[1];
            v144 = vcvtq_f64_u64(v137);
            v145.i32[0] = v134;
            v145.i32[1] = BYTE1(v134);
            v146 = vand_s8(v145, 0xFF000000FFLL);
            v137.i64[0] = v146.u32[0];
            v137.i64[1] = v146.u32[1];
            v147 = vcvtq_f64_u64(v137);
            v145.i32[0] = v133.u8[6];
            v145.i32[1] = v133.u8[7];
            v148 = vand_s8(v145, 0xFF000000FFLL);
            v137.i64[0] = v148.u32[0];
            v137.i64[1] = v148.u32[1];
            v149 = vcvtq_f64_u64(v137);
            v150.i32[0] = v133.u8[4];
            v150.i32[1] = v133.u8[5];
            v151 = vand_s8(v150, 0xFF000000FFLL);
            v137.i64[0] = v151.u32[0];
            v137.i64[1] = v151.u32[1];
            v152 = vcvtq_f64_u64(v137);
            v153.i32[0] = v133.u8[2];
            v153.i32[1] = v133.u8[3];
            v154 = vand_s8(v153, 0xFF000000FFLL);
            v137.i64[0] = v154.u32[0];
            v137.i64[1] = v154.u32[1];
            v155 = vcvtq_f64_u64(v137);
            v156.i32[0] = v133.u8[0];
            v156.i32[1] = v133.u8[1];
            v157 = vand_s8(v156, 0xFF000000FFLL);
            v137.i64[0] = v157.u32[0];
            v137.i64[1] = v157.u32[1];
            v158 = vsubq_f64(v147, v131[4]);
            v159 = vsubq_f64(v144, v131[5]);
            a9 = vsubq_f64(v141, v131[6]);
            a7 = vsubq_f64(v138, v131[7]);
            v160 = vsubq_f64(vcvtq_f64_u64(v137), *v131);
            v161 = vsubq_f64(v155, v131[1]);
            v162 = vsubq_f64(v149, v131[3]);
            v130[2] = vsubq_f64(v152, v131[2]);
            v130[3] = v162;
            *v130 = v160;
            v130[1] = v161;
            v130[6] = a9;
            v130[7] = a7;
            v130[4] = v158;
            v130[5] = v159;
            v131 += 8;
            v130 += 8;
            v129 -= 16;
          }

          while (v129);
          if (v114 == v16)
          {
            goto LABEL_132;
          }

          v127 = v16 & 0x7FFFFFF0;
          v125 = v127;
          if ((v16 & 0xC) == 0)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v127 = 0;
        }

        v163 = (v22 + 8 * v127);
        v164 = &v275[8 * v127];
        do
        {
          LODWORD(a7.f64[0]) = *(v124->f64 + v127);
          v165 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
          v166 = vand_s8(*v165.i8, 0xFF000000FFLL);
          v167.i64[0] = v166.u32[0];
          v167.i64[1] = v166.u32[1];
          v168 = vcvtq_f64_u64(v167);
          *v165.i8 = vand_s8(*&vextq_s8(v165, v165, 8uLL), 0xFF000000FFLL);
          v167.i64[0] = v165.u32[0];
          v167.i64[1] = v165.u32[1];
          a9 = *v163;
          v169 = v163[1];
          v163 += 2;
          a7 = vsubq_f64(vcvtq_f64_u64(v167), v169);
          *v164 = vsubq_f64(v168, a9);
          v164[1] = a7;
          v164 += 2;
          v127 += 4;
        }

        while (v115 != v127);
        v125 = v16 & 0x7FFFFFFC;
        if (v115 != v16)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v16 < 1)
        {
          goto LABEL_132;
        }

        if (v120)
        {
          v126 = 0;
LABEL_130:
          v212 = &v275[8 * v126];
          v213 = v121 * v126;
          v214 = v16 - v126;
          v215 = v12 * v126;
          do
          {
            LOBYTE(a7.f64[0]) = *(v124->f64 + v215);
            a7.f64[0] = *&a7.f64[0] - *(v123->f64 + v213);
            *v212++ = *&a7.f64[0];
            v213 += v121;
            v215 += v12;
            --v214;
          }

          while (v214);
          goto LABEL_132;
        }

        if (v16 >= 0x10)
        {
          v174 = 0;
          v175 = v275;
          v176 = v123;
          do
          {
            v177 = v124[v174 / 0x10];
            v178.i32[0] = v177.u8[6];
            v178.i32[1] = v177.u8[7];
            v179 = vand_s8(v178, 0xFF000000FFLL);
            v180.i64[0] = v179.u32[0];
            v180.i64[1] = v179.u32[1];
            v181 = vcvtq_f64_u64(v180);
            v182.i32[0] = v177.u8[4];
            v182.i32[1] = v177.u8[5];
            v183 = vand_s8(v182, 0xFF000000FFLL);
            v180.i64[0] = v183.u32[0];
            v180.i64[1] = v183.u32[1];
            v184 = vcvtq_f64_u64(v180);
            v185.i32[0] = v177.u8[2];
            v185.i32[1] = v177.u8[3];
            v186 = vand_s8(v185, 0xFF000000FFLL);
            v180.i64[0] = v186.u32[0];
            v180.i64[1] = v186.u32[1];
            v187 = vcvtq_f64_u64(v180);
            v188.i32[0] = v177.u8[0];
            v188.i32[1] = v177.u8[1];
            v189 = vand_s8(v188, 0xFF000000FFLL);
            v180.i64[0] = v189.u32[0];
            v180.i64[1] = v189.u32[1];
            v190 = vcvtq_f64_u64(v180);
            v177.i64[0] = vextq_s8(v177, v177, 8uLL).u64[0];
            v191.i32[0] = v177.u8[6];
            v191.i32[1] = v177.u8[7];
            v192 = vand_s8(v191, 0xFF000000FFLL);
            v180.i64[0] = v192.u32[0];
            v180.i64[1] = v192.u32[1];
            v193.i32[0] = v177.u8[4];
            v194 = vcvtq_f64_u64(v180);
            v193.i32[1] = v177.u8[5];
            v195 = vand_s8(v193, 0xFF000000FFLL);
            v180.i64[0] = v195.u32[0];
            v180.i64[1] = v195.u32[1];
            v196.i32[0] = v177.u8[2];
            v196.i32[1] = v177.u8[3];
            v197 = vcvtq_f64_u64(v180);
            v198 = vand_s8(v196, 0xFF000000FFLL);
            v180.i64[0] = v198.u32[0];
            v180.i64[1] = v198.u32[1];
            v199 = vcvtq_f64_u64(v180);
            v200.i32[0] = v177.u8[0];
            v200.i32[1] = v177.u8[1];
            *v177.i8 = vand_s8(v200, 0xFF000000FFLL);
            v180.i64[0] = v177.u32[0];
            v180.i64[1] = v177.u32[1];
            v201 = vsubq_f64(vcvtq_f64_u64(v180), v176[4]);
            v202 = vsubq_f64(v199, v176[5]);
            v203 = vsubq_f64(v197, v176[6]);
            v204 = vsubq_f64(v194, v176[7]);
            v205 = vsubq_f64(v190, *v176);
            a9 = vsubq_f64(v187, v176[1]);
            a7 = vsubq_f64(v181, v176[3]);
            v175[2] = vsubq_f64(v184, v176[2]);
            v175[3] = a7;
            *v175 = v205;
            v175[1] = a9;
            v175[6] = v203;
            v175[7] = v204;
            v175[4] = v201;
            v175[5] = v202;
            v174 += 16;
            v176 += 8;
            v175 += 8;
          }

          while (v114 != v174);
          if (v114 == v16)
          {
            goto LABEL_132;
          }

          v128 = v16 & 0x7FFFFFF0;
          v126 = v128;
          if ((v16 & 0xC) == 0)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v128 = 0;
        }

        v206 = 8 * v128;
        do
        {
          LODWORD(a7.f64[0]) = *(v124->f64 + v128);
          v207 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
          v208 = vand_s8(*v207.i8, 0xFF000000FFLL);
          v209.i64[0] = v208.u32[0];
          v209.i64[1] = v208.u32[1];
          v210 = vcvtq_f64_u64(v209);
          *v207.i8 = vand_s8(*&vextq_s8(v207, v207, 8uLL), 0xFF000000FFLL);
          v209.i64[0] = v207.u32[0];
          v209.i64[1] = v207.u32[1];
          a9 = *(v123 + v206);
          a7 = vsubq_f64(vcvtq_f64_u64(v209), *(v123 + v206 + 16));
          v211 = &v275[v206];
          *v211 = vsubq_f64(v210, a9);
          v211[1] = a7;
          v128 += 4;
          v206 += 32;
        }

        while (v115 != v128);
        v126 = v16 & 0x7FFFFFFC;
        if (v115 != v16)
        {
          goto LABEL_130;
        }
      }

LABEL_132:
      LODWORD(v216) = v101;
      v217 = v101;
      if (v101 <= v102)
      {
        do
        {
          a7 = v116;
          v226 = v116;
          if (v16 >= 1)
          {
            v227 = (v11 + 8 * v217);
            if (v22)
            {
              v227 = v22;
            }

            v228 = (v9 + v217);
            v229 = 0uLL;
            v230 = v16;
            v231 = v275;
            v232 = 0uLL;
            do
            {
              LODWORD(a9.f64[0]) = *v228;
              v233 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
              v234 = vand_s8(*v233.i8, 0xFF000000FFLL);
              v235.i64[0] = v234.u32[0];
              v235.i64[1] = v234.u32[1];
              v236 = vcvtq_f64_u64(v235);
              *v233.i8 = vand_s8(*&vextq_s8(v233, v233, 8uLL), 0xFF000000FFLL);
              v235.i64[0] = v233.u32[0];
              v235.i64[1] = v233.u32[1];
              a9 = vsubq_f64(vcvtq_f64_u64(v235), v227[1]);
              v237 = vld1q_dup_f64(v231++);
              v229 = vmlaq_f64(v229, vsubq_f64(v236, *v227), v237);
              v232 = vmlaq_f64(v232, a9, v237);
              v228 = (v228 + v12);
              v227 = (v227 + v121);
              --v230;
            }

            while (v230);
            a9.f64[0] = a4;
            a7 = vmulq_n_f64(v229, a4);
            v226 = vmulq_n_f64(v232, a4);
          }

          v225 = (v10 + 8 * v217);
          *v225 = a7;
          v225[1] = v226;
          v216 = v217 + 4;
          v217 = v216;
        }

        while (v102 >= v216);
      }

      if (v216 >= v15)
      {
        goto LABEL_101;
      }

      v218 = v216;
      if (v16 >= 1)
      {
        do
        {
          v219 = &v11->f64[v218];
          if (v22)
          {
            v219 = v22;
          }

          v220 = 0.0;
          v221 = v9;
          v222 = v16;
          v223 = v275;
          do
          {
            v224 = *v223++;
            LOBYTE(a9.f64[0]) = *(v221 + v218);
            a9.f64[0] = *&a9.f64[0] - *v219;
            v220 = v220 + v224 * a9.f64[0];
            v219 = (v219 + v121);
            v221 += v12;
            --v222;
          }

          while (v222);
          a7.f64[0] = v220 * a4;
          v10->i64[v218++] = *&a7.f64[0];
        }

        while (v15 > v218);
        goto LABEL_101;
      }

      v238 = (v15 + ~v216);
      if (v238 > 2)
      {
        v240 = v238 + 1;
        v241 = (v238 + 1) & 0x1FFFFFFFCLL;
        v239 = v241 + v218;
        v242 = 8 * v218;
        v243 = v241;
        do
        {
          v244 = (v10 + v242);
          *v244 = v116;
          v244[1] = v116;
          v242 += 32;
          v243 -= 4;
        }

        while (v243);
        if (v240 == v241)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v239 = v218;
      }

      v245 = v239;
      do
      {
        *&v10->i64[v245++] = v103;
        LODWORD(v239) = v239 + 1;
      }

      while (v15 > v239);
LABEL_101:
      ++v101;
      v10 = (v10 + v122);
      v124 = (v124 + 1);
      v123 = (v123 + 8);
    }

    while (v101 != v15);
  }

  return result;
}

void sub_100249510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100249540(uint64_t *result, uint64_t a2, uint64_t a3, float64x2_t a4, double a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9)
{
  v474 = a4.f64[0];
  v9 = result[2];
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = result[10];
  v460 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 3;
  }

  v14 = result[8];
  v15 = *v14;
  v16 = v14[1];
  v17 = v16;
  v470 = v15;
  v471 = result[10];
  v472 = v16;
  v473 = v14[1];
  if (!v11)
  {
    if (v15 < 1)
    {
      return result;
    }

    if (v473 < 4)
    {
      if (v16 <= 0)
      {
        v439 = 0;
        v440 = a4.f64[0] * 0.0;
        v441 = vdupq_lane_s64(COERCE__INT64(v474 * 0.0), 0);
        v442 = v10 + 1;
        v443 = v15;
        do
        {
          v444 = v15 - v439;
          v445 = v439;
          if ((v15 - v439) < 4)
          {
            goto LABEL_140;
          }

          result = v10;
          v446 = v443 & 0xFFFFFFFFFFFFFFFCLL;
          v445 = v439 + (v444 & 0xFFFFFFFFFFFFFFFCLL);
          v447 = v442;
          do
          {
            v447[-1] = v441;
            *v447 = v441;
            v447 += 2;
            v446 -= 4;
          }

          while (v446);
          if (v444 != (v444 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_140:
            do
            {
              *&v10->i64[v445++] = v440;
            }

            while (v15 != v445);
          }

          ++v439;
          --v443;
          v442 = (v442 + 8 * v460 + 8);
          v10 = (v10 + 8 * v460);
        }

        while (v439 != v15);
      }

      else
      {
        v182 = 0;
        v183 = (v9 + 2);
        v184 = v15;
        do
        {
          v185 = &v9[v12 * v182];
          v186 = v184;
          v187 = v10;
          v188 = v183;
          do
          {
            LOBYTE(a5) = *v185;
            LOBYTE(a6) = *(v188 - 2);
            v189 = *&a6;
            v190 = *&a5 * v189 + 0.0;
            if (v473 != 1)
            {
              LOBYTE(v189) = v185[1];
              v191 = *&v189;
              LOBYTE(a7.f64[0]) = *(v188 - 1);
              a7.f64[0] = *&a7.f64[0];
              v190 = v190 + v191 * a7.f64[0];
              if (v17 != 2)
              {
                LOBYTE(v191) = v185[2];
                LOBYTE(a7.f64[0]) = *v188;
                a7.f64[0] = *&a7.f64[0];
                v190 = v190 + *&v191 * a7.f64[0];
              }
            }

            a6 = a4.f64[0];
            a5 = v190 * a4.f64[0];
            *v187++ = a5;
            v188 += v12;
            --v186;
          }

          while (v186);
          ++v182;
          v183 += v12;
          v10 = (v10 + 8 * v460 + 8);
          --v184;
        }

        while (v182 != v15);
      }

      return result;
    }

    v192 = (v16 - 4);
    v193 = (v192 & 0xFFFFFFFC) + 4;
    if (v192 < 0x1C)
    {
      if (v193 >= v473)
      {
        for (i = 0; i != v15; ++i)
        {
          v449 = v9;
          v450 = i;
          do
          {
            v451 = 0;
            v452 = 0.0;
            do
            {
              LOBYTE(a5) = v9[v451];
              LOBYTE(a6) = v449[v451];
              LOBYTE(a7.f64[0]) = v9[v451 + 1];
              *&v453 = *&a6;
              LOBYTE(a8.f64[0]) = v449[v451 + 1];
              a8.f64[0] = *&a8.f64[0];
              *&v454 = *&a7.f64[0] * a8.f64[0];
              v455 = *&v454 + *&a5 * *&v453;
              LOBYTE(v453) = v9[v451 + 2];
              *&v456 = v453;
              LOBYTE(v454) = v449[v451 + 2];
              *&v457 = v454;
              v458 = v455 + *&v456 * *&v457;
              LOBYTE(v456) = v9[v451 + 3];
              a6 = v456;
              LOBYTE(v457) = v449[v451 + 3];
              a7.f64[0] = v457;
              a5 = v458 + a6 * a7.f64[0];
              v452 = v452 + a5;
              v451 += 4;
            }

            while (v451 <= v192);
            a5 = v474;
            *&v10->i64[v450++] = v452 * v474;
            v449 += v12;
          }

          while (v450 != v15);
          v10 = (v10 + 8 * v460);
          v9 += v12;
        }
      }

      else
      {
        for (j = 0; j != v15; ++j)
        {
          v195 = v9;
          v196 = j;
          do
          {
            v197 = 0;
            v198 = 0.0;
            do
            {
              LOBYTE(a5) = v9[v197];
              LOBYTE(a6) = v195[v197];
              LOBYTE(a7.f64[0]) = v9[v197 + 1];
              *&v199 = *&a6;
              LOBYTE(a8.f64[0]) = v195[v197 + 1];
              a8.f64[0] = *&a8.f64[0];
              *&v200 = *&a7.f64[0] * a8.f64[0];
              v201 = *&v200 + *&a5 * *&v199;
              LOBYTE(v199) = v9[v197 + 2];
              *&v202 = v199;
              LOBYTE(v200) = v195[v197 + 2];
              *&v203 = v200;
              v204 = v201 + *&v202 * *&v203;
              LOBYTE(v202) = v9[v197 + 3];
              a6 = v202;
              LOBYTE(v203) = v195[v197 + 3];
              a7.f64[0] = v203;
              a5 = v204 + a6 * a7.f64[0];
              v198 = v198 + a5;
              v197 += 4;
            }

            while (v197 <= v192);
            v205 = (v192 & 0xFFFFFFFC) + 4;
            do
            {
              LOBYTE(a5) = v9[v205];
              a5 = *&a5;
              LOBYTE(a6) = v195[v205];
              a6 = *&a6;
              v198 = v198 + a5 * a6;
              ++v205;
            }

            while (v17 > v205);
            a5 = v474;
            *&v10->i64[v196++] = v198 * v474;
            v195 += v12;
          }

          while (v196 != v15);
          v10 = (v10 + 8 * v460);
          v9 += v12;
        }
      }

      return result;
    }

    v206 = 0;
    v207 = (v192 >> 2) + 1;
    v208 = v207 & 0x3FFFFFF0;
    v466 = v207 & 0x3FFFFFF8;
    v463 = (v192 & 0xFFFFFFFC) + 4;
    v464 = (v17 - 4);
    v461 = v208;
    v462 = v207;
LABEL_106:
    v469 = v10;
    v209 = v9;
    v459 = v206;
    v210 = v206;
    v465 = v9;
    while (v192 >= 0x3C)
    {
      v467 = v210;
      v468 = v209;
      v212 = 0.0;
      do
      {
        v505 = v212;
        v502 = v208;
        v514 = vld4q_s8(v9);
        v311 = v9 + 64;
        v498 = v311;
        v513 = vld4q_s8(v209);
        v312 = v209 + 64;
        v500 = v312;
        v313 = vextq_s8(v514.val[0], v514.val[0], 8uLL).u64[0];
        v314 = vextq_s8(v513.val[0], v513.val[0], 8uLL).u64[0];
        v315 = vextq_s8(v514.val[1], v514.val[1], 8uLL).u64[0];
        v493 = v514.val[2].u8[6];
        v480 = v513.val[0].u8[0];
        v492 = v514.val[2].u8[7];
        v491 = v514.val[2].u8[4];
        v316.i32[0] = BYTE4(v313);
        v479 = v513.val[0].u8[2];
        v490 = v514.val[2].u8[5];
        v485 = v514.val[2].u8[2];
        v317.i32[0] = BYTE6(v313);
        v477 = v513.val[0].u8[4];
        v484 = v514.val[2].u8[3];
        v476 = v513.val[0].u8[6];
        v483 = v514.val[2].u8[1];
        v488 = v514.val[3].u8[0];
        v318.i32[0] = BYTE2(v314);
        v486 = v514.val[3].u8[1];
        v489 = v514.val[3].u8[2];
        v319.i32[0] = BYTE4(v314);
        v320 = vextq_s8(v513.val[1], v513.val[1], 8uLL).u64[0];
        v487 = v514.val[3].u8[3];
        v482 = v514.val[3].u8[4];
        v321.i32[0] = BYTE6(v314);
        v322 = vextq_s8(v514.val[2], v514.val[2], 8uLL).u64[0];
        v481 = v514.val[3].u8[5];
        v323 = v514.val[3].u8[6];
        v324.i32[0] = BYTE6(v315);
        v478 = v514.val[3].u8[7];
        v475 = vextq_s8(v514.val[3], v514.val[3], 8uLL).u64[0];
        v325.i32[0] = BYTE4(v315);
        v326 = vextq_s8(v513.val[2], v513.val[2], 8uLL).u64[0];
        v327 = v513.val[0].u8[1];
        v328.i32[0] = BYTE2(v315);
        v329 = v513.val[0].u8[3];
        v330 = v513.val[0].u8[5];
        v331 = v513.val[0].u8[7];
        v332 = v513.val[1].u8[6];
        LODWORD(v312) = v513.val[1].u8[7];
        v333 = v513.val[1].u8[4];
        LODWORD(v311) = v513.val[1].u8[5];
        v334 = v513.val[1].u8[2];
        v335 = v513.val[1].u8[3];
        v336 = v513.val[1].u8[0];
        v337 = v513.val[1].u8[1];
        v338 = v513.val[2].u8[6];
        v339 = v513.val[2].u8[7];
        v340 = v513.val[2].u8[4];
        v341 = v513.val[2].u8[5];
        v342 = v513.val[2].u8[2];
        v343 = v513.val[2].u8[3];
        v344 = v513.val[2].u8[0];
        v345 = v513.val[2].u8[1];
        v346 = vextq_s8(v513.val[3], v513.val[3], 8uLL).u64[0];
        v347.i32[0] = v514.val[1].u8[4];
        v348.i32[0] = v514.val[1].u8[2];
        v513.val[0].i32[0] = v320.u8[6];
        v324.i32[1] = HIBYTE(v315);
        v513.val[0].i32[1] = v320.u8[7];
        v349 = vand_s8(v324, 0xFF000000FFLL);
        v350.i64[0] = v349.u32[0];
        v350.i64[1] = v349.u32[1];
        *v513.val[0].i8 = vand_s8(*v513.val[0].i8, 0xFF000000FFLL);
        v351 = vcvtq_f64_u64(v350);
        v350.i64[0] = v513.val[0].u32[0];
        v350.i64[1] = v513.val[0].u32[1];
        v352 = vmulq_f64(v351, vcvtq_f64_u64(v350));
        v353.i32[0] = v315;
        v317.i32[1] = HIBYTE(v313);
        v321.i32[1] = HIBYTE(v314);
        *v513.val[1].i8 = vand_s8(v317, 0xFF000000FFLL);
        v350.i64[0] = v513.val[1].u32[0];
        v350.i64[1] = v513.val[1].u32[1];
        v354 = vand_s8(v321, 0xFF000000FFLL);
        v513.val[1] = vcvtq_f64_u64(v350);
        v350.i64[0] = v354.u32[0];
        v350.i64[1] = v354.u32[1];
        v355 = vmlaq_f64(v352, vcvtq_f64_u64(v350), v513.val[1]);
        v356.i32[0] = v514.val[1].u8[0];
        v316.i32[1] = BYTE5(v313);
        v319.i32[1] = BYTE5(v314);
        v325.i32[1] = BYTE5(v315);
        v513.val[1].i32[0] = v320.u8[4];
        v513.val[1].i32[1] = v320.u8[5];
        v357 = vand_s8(v325, 0xFF000000FFLL);
        v350.i64[0] = v357.u32[0];
        v350.i64[1] = v357.u32[1];
        v358 = vcvtq_f64_u64(v350);
        *v513.val[1].i8 = vand_s8(*v513.val[1].i8, 0xFF000000FFLL);
        v350.i64[0] = v513.val[1].u32[0];
        v350.i64[1] = v513.val[1].u32[1];
        v359 = vmulq_f64(v358, vcvtq_f64_u64(v350));
        *&v358.f64[0] = vand_s8(v316, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v358.f64[0]);
        v350.i64[1] = HIDWORD(v358.f64[0]);
        v360 = v350;
        v361 = vand_s8(v319, 0xFF000000FFLL);
        v350.i64[0] = v361.u32[0];
        v350.i64[1] = v361.u32[1];
        v362 = vmlaq_f64(v359, vcvtq_f64_u64(v350), vcvtq_f64_u64(v360));
        v363.i32[0] = v320.u8[2];
        v364 = __PAIR64__(v335, v334);
        result = BYTE3(v314);
        v319.i32[0] = v320.u8[0];
        v365 = v320.u8[3];
        v366 = __PAIR64__(v337, v336);
        v367 = v320.u8[1];
        v514.val[3].i32[0] = v514.val[2].u8[0];
        v368.i32[0] = v313;
        v368.i32[1] = BYTE1(v313);
        v514.val[2].i32[0] = v514.val[0].u8[0];
        v514.val[2].i32[1] = v514.val[0].u8[1];
        v320.i32[0] = v514.val[0].u8[2];
        v320.i32[1] = v514.val[0].u8[3];
        v513.val[2].i32[0] = v314;
        v513.val[2].i32[1] = BYTE1(v314);
        v318.i32[1] = BYTE3(v314);
        v328.i32[1] = BYTE3(v315);
        v347.i32[1] = v514.val[1].u8[5];
        v353.i32[1] = BYTE1(v315);
        v348.i32[1] = v514.val[1].u8[3];
        v356.i32[1] = v514.val[1].u8[1];
        v363.i32[1] = v365;
        v319.i32[1] = v367;
        v369 = vand_s8(v328, 0xFF000000FFLL);
        v350.i64[0] = v369.u32[0];
        v350.i64[1] = v369.u32[1];
        v370 = vcvtq_f64_u64(v350);
        v371 = vand_s8(v363, 0xFF000000FFLL);
        v350.i64[0] = v371.u32[0];
        v350.i64[1] = v371.u32[1];
        v372 = vmulq_f64(v370, vcvtq_f64_u64(v350));
        *&v370.f64[0] = vand_s8(__PAIR64__(BYTE3(v313), BYTE2(v313)), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v370.f64[0]);
        v350.i64[1] = HIDWORD(v370.f64[0]);
        v373 = vcvtq_f64_u64(v350);
        v374 = vand_s8(v318, 0xFF000000FFLL);
        v350.i64[0] = v374.u32[0];
        v350.i64[1] = v374.u32[1];
        v375 = vmlaq_f64(v372, vcvtq_f64_u64(v350), v373);
        *&v373.f64[0] = vand_s8(__PAIR64__(v514.val[1].u8[7], v514.val[1].u8[6]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v373.f64[0]);
        v350.i64[1] = HIDWORD(v373.f64[0]);
        v376 = vcvtq_f64_u64(v350);
        v377 = vand_s8(__PAIR64__(v312, v332), 0xFF000000FFLL);
        v350.i64[0] = v377.u32[0];
        v350.i64[1] = v377.u32[1];
        v378 = vmulq_f64(v376, vcvtq_f64_u64(v350));
        v379 = vand_s8(__PAIR64__(v514.val[0].u8[7], v514.val[0].u8[6]), 0xFF000000FFLL);
        v350.i64[0] = v379.u32[0];
        v350.i64[1] = v379.u32[1];
        v380 = v350;
        v381 = vand_s8(__PAIR64__(v331, v476), 0xFF000000FFLL);
        v350.i64[0] = v381.u32[0];
        v350.i64[1] = v381.u32[1];
        v382 = vmlaq_f64(v378, vcvtq_f64_u64(v350), vcvtq_f64_u64(v380));
        v383 = vand_s8(v347, 0xFF000000FFLL);
        v350.i64[0] = v383.u32[0];
        v350.i64[1] = v383.u32[1];
        *v360.i8 = vand_s8(__PAIR64__(v311, v333), 0xFF000000FFLL);
        v384 = vcvtq_f64_u64(v350);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v385 = vmulq_f64(v384, vcvtq_f64_u64(v350));
        *&v384.f64[0] = vand_s8(__PAIR64__(v514.val[0].u8[5], v514.val[0].u8[4]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v384.f64[0]);
        v350.i64[1] = HIDWORD(v384.f64[0]);
        v386 = vcvtq_f64_u64(v350);
        *v360.i8 = vand_s8(__PAIR64__(v330, v477), 0xFF000000FFLL);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v387 = vmlaq_f64(v385, vcvtq_f64_u64(v350), v386);
        *&v351.f64[0] = vand_s8(v353, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v351.f64[0]);
        v350.i64[1] = HIDWORD(v351.f64[0]);
        v388 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(v319, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v389 = vmulq_f64(v388, vcvtq_f64_u64(v350));
        *&v388.f64[0] = vand_s8(v368, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v388.f64[0]);
        v350.i64[1] = HIDWORD(v388.f64[0]);
        v390 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(*v513.val[2].i8, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v391 = vmlaq_f64(v389, vcvtq_f64_u64(v350), v390);
        *&v390.f64[0] = vand_s8(v348, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v390.f64[0]);
        v350.i64[1] = HIDWORD(v390.f64[0]);
        v392 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(v364, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v513.val[0] = vmulq_f64(v392, vcvtq_f64_u64(v350));
        *&v392.f64[0] = vand_s8(v320, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v392.f64[0]);
        v350.i64[1] = HIDWORD(v392.f64[0]);
        v393 = v350;
        *&v386.f64[0] = vand_s8(__PAIR64__(v329, v479), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v513.val[0] = vmlaq_f64(v513.val[0], vcvtq_f64_u64(v350), vcvtq_f64_u64(v393));
        *v393.i8 = vand_s8(v356, 0xFF000000FFLL);
        v350.i64[0] = v393.u32[0];
        v350.i64[1] = v393.u32[1];
        *&v386.f64[0] = vand_s8(v366, 0xFF000000FFLL);
        v394 = vcvtq_f64_u64(v350);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v395 = vmulq_f64(v394, vcvtq_f64_u64(v350));
        *&v394.f64[0] = vand_s8(*v514.val[2].i8, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v394.f64[0]);
        v350.i64[1] = HIDWORD(v394.f64[0]);
        v396 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(__PAIR64__(v327, v480), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v397 = vmlaq_f64(v395, vcvtq_f64_u64(v350), v396);
        v514.val[3].i32[1] = v483;
        *&v386.f64[0] = vand_s8(*v514.val[3].i8, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v398 = vcvtq_f64_u64(v350);
        *&v396.f64[0] = vand_s8(__PAIR64__(v345, v344), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v396.f64[0]);
        v350.i64[1] = HIDWORD(v396.f64[0]);
        v399 = vmlaq_f64(v397, vcvtq_f64_u64(v350), v398);
        *&v396.f64[0] = vand_s8(__PAIR64__(v484, v485), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v396.f64[0]);
        v350.i64[1] = HIDWORD(v396.f64[0]);
        v400 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(__PAIR64__(v343, v342), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v513.val[0] = vmlaq_f64(v513.val[0], vcvtq_f64_u64(v350), v400);
        LODWORD(v400.f64[0]) = v322;
        HIDWORD(v400.f64[0]) = BYTE1(v322);
        LODWORD(v398.f64[0]) = v326;
        HIDWORD(v398.f64[0]) = BYTE1(v326);
        *&v400.f64[0] = vand_s8(*&v400.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v400.f64[0]);
        v350.i64[1] = HIDWORD(v400.f64[0]);
        v401 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(*&v398.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v402 = vmlaq_f64(v391, vcvtq_f64_u64(v350), v401);
        *&v401.f64[0] = vand_s8(__PAIR64__(v490, v491), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v401.f64[0]);
        v350.i64[1] = HIDWORD(v401.f64[0]);
        v403 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(__PAIR64__(v341, v340), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v404 = vmlaq_f64(v387, vcvtq_f64_u64(v350), v403);
        LODWORD(v403.f64[0]) = BYTE2(v322);
        HIDWORD(v403.f64[0]) = BYTE3(v322);
        LODWORD(v398.f64[0]) = BYTE2(v326);
        HIDWORD(v398.f64[0]) = BYTE3(v326);
        *&v403.f64[0] = vand_s8(*&v403.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v403.f64[0]);
        v350.i64[1] = HIDWORD(v403.f64[0]);
        v405 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(*&v398.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v406 = vmlaq_f64(v375, vcvtq_f64_u64(v350), v405);
        LODWORD(v405.f64[0]) = BYTE4(v322);
        HIDWORD(v405.f64[0]) = BYTE5(v322);
        *&v405.f64[0] = vand_s8(*&v405.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v405.f64[0]);
        v350.i64[1] = HIDWORD(v405.f64[0]);
        v354.i32[0] = BYTE4(v326);
        v354.i32[1] = BYTE5(v326);
        v407 = vcvtq_f64_u64(v350);
        v408 = vand_s8(v354, 0xFF000000FFLL);
        v350.i64[0] = v408.u32[0];
        v350.i64[1] = v408.u32[1];
        v409 = vmlaq_f64(v362, vcvtq_f64_u64(v350), v407);
        LODWORD(v407.f64[0]) = BYTE6(v322);
        v408.i32[0] = BYTE6(v326);
        HIDWORD(v407.f64[0]) = HIBYTE(v322);
        v408.i32[1] = HIBYTE(v326);
        *&v407.f64[0] = vand_s8(*&v407.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v407.f64[0]);
        v350.i64[1] = HIDWORD(v407.f64[0]);
        v410 = vcvtq_f64_u64(v350);
        v411 = vand_s8(v408, 0xFF000000FFLL);
        v350.i64[0] = v411.u32[0];
        v350.i64[1] = v411.u32[1];
        v412 = vmlaq_f64(v355, vcvtq_f64_u64(v350), v410);
        LODWORD(v410.f64[0]) = BYTE4(v475);
        v411.i32[0] = BYTE6(v475);
        *&v398.f64[0] = vand_s8(__PAIR64__(v492, v493), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v413 = vcvtq_f64_u64(v350);
        *v360.i8 = vand_s8(__PAIR64__(v339, v338), 0xFF000000FFLL);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v414 = vmlaq_f64(v382, vcvtq_f64_u64(v350), v413);
        v411.i32[1] = HIBYTE(v475);
        v415 = vand_s8(v411, 0xFF000000FFLL);
        v350.i64[0] = v415.u32[0];
        v350.i64[1] = v415.u32[1];
        v360.i32[0] = BYTE6(v346);
        v360.i32[1] = HIBYTE(v346);
        v416 = vcvtq_f64_u64(v350);
        *v360.i8 = vand_s8(*v360.i8, 0xFF000000FFLL);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v417 = vmlaq_f64(v412, vcvtq_f64_u64(v350), v416);
        LODWORD(v416.f64[0]) = BYTE4(v346);
        v300 = COERCE_DOUBLE(__PAIR64__(v513.val[3].u8[7], v513.val[3].u8[6]));
        HIDWORD(v410.f64[0]) = BYTE5(v475);
        HIDWORD(v416.f64[0]) = BYTE5(v346);
        *&v410.f64[0] = vand_s8(*&v410.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v410.f64[0]);
        v350.i64[1] = HIDWORD(v410.f64[0]);
        v418 = vcvtq_f64_u64(v350);
        *&v416.f64[0] = vand_s8(*&v416.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v416.f64[0]);
        v350.i64[1] = HIDWORD(v416.f64[0]);
        v419 = vmlaq_f64(v409, vcvtq_f64_u64(v350), v418);
        *&v418.f64[0] = vand_s8(__PAIR64__(v478, v323), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v418.f64[0]);
        v350.i64[1] = HIDWORD(v418.f64[0]);
        v420 = v350;
        *&v413.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[7], v513.val[3].u8[6]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v421 = vmlaq_f64(v414, vcvtq_f64_u64(v350), vcvtq_f64_u64(v420));
        *v420.i8 = vand_s8(__PAIR64__(v481, v482), 0xFF000000FFLL);
        v350.i64[0] = v420.u32[0];
        v350.i64[1] = v420.u32[1];
        v422 = vcvtq_f64_u64(v350);
        *&v413.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[5], v513.val[3].u8[4]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v423 = vmlaq_f64(v404, vcvtq_f64_u64(v350), v422);
        LODWORD(v422.f64[0]) = BYTE2(v475);
        HIDWORD(v422.f64[0]) = BYTE3(v475);
        *&v422.f64[0] = vand_s8(*&v422.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v422.f64[0]);
        v350.i64[1] = HIDWORD(v422.f64[0]);
        LODWORD(v413.f64[0]) = BYTE2(v346);
        v424 = vcvtq_f64_u64(v350);
        HIDWORD(v413.f64[0]) = BYTE3(v346);
        *&v413.f64[0] = vand_s8(*&v413.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v425 = vmlaq_f64(v406, vcvtq_f64_u64(v350), v424);
        LODWORD(v413.f64[0]) = v475;
        HIDWORD(v413.f64[0]) = BYTE1(v475);
        LODWORD(v416.f64[0]) = v346;
        v9 = v498;
        v209 = v500;
        HIDWORD(v416.f64[0]) = BYTE1(v346);
        *&v413.f64[0] = vand_s8(*&v413.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v426 = vcvtq_f64_u64(v350);
        *&v416.f64[0] = vand_s8(*&v416.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v416.f64[0]);
        v350.i64[1] = HIDWORD(v416.f64[0]);
        v427 = vmlaq_f64(v402, vcvtq_f64_u64(v350), v426);
        *&v426.f64[0] = vand_s8(__PAIR64__(v487, v489), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v426.f64[0]);
        v350.i64[1] = HIDWORD(v426.f64[0]);
        v428 = vcvtq_f64_u64(v350);
        *&v416.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[3], v513.val[3].u8[2]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v416.f64[0]);
        v350.i64[1] = HIDWORD(v416.f64[0]);
        v513.val[0] = vmlaq_f64(v513.val[0], vcvtq_f64_u64(v350), v428);
        *&v424.f64[0] = vand_s8(__PAIR64__(v486, v488), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v424.f64[0]);
        v350.i64[1] = HIDWORD(v424.f64[0]);
        v429 = vcvtq_f64_u64(v350);
        *&v428.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[1], v513.val[3].u8[0]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v428.f64[0]);
        v350.i64[1] = HIDWORD(v428.f64[0]);
        v430 = vmlaq_f64(v399, vcvtq_f64_u64(v350), v429);
        v304 = v417.f64[1];
        v305 = v419.f64[1];
        v306 = v505 + v430.f64[0] + v430.f64[1] + *v513.val[0].i64 + *&v513.val[0].i64[1] + v423.f64[0] + v423.f64[1] + v421.f64[0] + v421.f64[1] + v427.f64[0] + v427.f64[1] + v425.f64[0] + v425.f64[1] + v419.f64[0] + v419.f64[1] + v417.f64[0];
        v212 = v306 + v417.f64[1];
        v208 -= 16;
      }

      while (v502 != 16);
      v208 = v461;
      v207 = v462;
      if (v462 != v461)
      {
        v211 = v461;
        v307 = v461;
        v309 = v469;
        v308 = v470;
        v192 = v464;
        v9 = v465;
        v12 = v471;
        LODWORD(v17) = v472;
        v310 = v473;
        v193 = v463;
        v210 = v467;
        v209 = v468;
        if ((v462 & 8) == 0)
        {
LABEL_119:
          v431 = 4 * v307;
          do
          {
            LOBYTE(v306) = v9[v431];
            LOBYTE(v304) = v209[v431];
            LOBYTE(v305) = v9[v431 + 1];
            *&v432 = *&v304;
            LOBYTE(v300) = v209[v431 + 1];
            v300 = *&v300;
            *&v433 = *&v305 * v300;
            v434 = *&v433 + *&v306 * *&v432;
            LOBYTE(v432) = v9[v431 + 2];
            *&v435 = v432;
            LOBYTE(v433) = v209[v431 + 2];
            *&v436 = v433;
            v437 = v434 + *&v435 * *&v436;
            LOBYTE(v435) = v9[v431 + 3];
            v304 = v435;
            LOBYTE(v436) = v209[v431 + 3];
            v305 = v436;
            v306 = v437 + v304 * v305;
            v212 = v212 + v306;
            v431 += 4;
          }

          while (v431 <= v192);
          goto LABEL_121;
        }

LABEL_110:
        v213 = 4 * v211;
        result = (v211 - v466);
        do
        {
          v504 = v212;
          v214 = &v9[v213];
          v215 = &v209[v213];
          v512 = vld4_s8(v214);
          v511 = vld4_s8(v215);
          v216.i32[0] = v512.val[0].u8[0];
          v217.i32[0] = v512.val[0].u8[2];
          v218.i32[0] = v512.val[0].u8[4];
          v219.i32[0] = v512.val[0].u8[6];
          v220.i32[0] = v511.val[0].u8[0];
          v221.i32[0] = v511.val[0].u8[2];
          v222.i32[0] = v511.val[0].u8[4];
          v223.i32[0] = v511.val[0].u8[6];
          v224.i32[0] = v512.val[1].u8[6];
          v225.i32[0] = v512.val[1].u8[4];
          v216.i32[1] = v512.val[0].u8[1];
          v226.i32[0] = v512.val[1].u8[2];
          v227.i32[0] = v512.val[1].u8[0];
          v217.i32[1] = v512.val[0].u8[3];
          v218.i32[1] = v512.val[0].u8[5];
          v219.i32[1] = v512.val[0].u8[7];
          v228.i32[0] = v511.val[1].u8[6];
          v229.i32[0] = v511.val[1].u8[4];
          v220.i32[1] = v511.val[0].u8[1];
          v221.i32[1] = v511.val[0].u8[3];
          v230.i32[0] = v511.val[1].u8[2];
          v231.i32[0] = v511.val[1].u8[0];
          v227.i32[1] = v512.val[1].u8[1];
          v231.i32[1] = v511.val[1].u8[1];
          v222.i32[1] = v511.val[0].u8[5];
          v501 = v222;
          v223.i32[1] = v511.val[0].u8[7];
          v222.i32[0] = v512.val[2].u8[6];
          v232.i32[0] = v512.val[2].u8[4];
          v224.i32[1] = v512.val[1].u8[7];
          v225.i32[1] = v512.val[1].u8[5];
          v226.i32[1] = v512.val[1].u8[3];
          v233.i32[0] = v512.val[2].u8[2];
          v234.i32[0] = v512.val[2].u8[0];
          v228.i32[1] = v511.val[1].u8[7];
          v229.i32[1] = v511.val[1].u8[5];
          v235.i32[0] = v511.val[2].u8[6];
          v236.i32[0] = v511.val[2].u8[4];
          v230.i32[1] = v511.val[1].u8[3];
          v222.i32[1] = v512.val[2].u8[7];
          v232.i32[1] = v512.val[2].u8[5];
          v237 = v512.val[3].u8[1];
          v233.i32[1] = v512.val[2].u8[3];
          v238 = v512.val[3].u8[2];
          v239 = v512.val[3].u8[3];
          v234.i32[1] = v512.val[2].u8[1];
          LODWORD(v215) = v512.val[3].u8[4];
          v240 = v512.val[3].u8[5];
          v235.i32[1] = v511.val[2].u8[7];
          v241 = v512.val[3].u8[6];
          LODWORD(v214) = v512.val[3].u8[7];
          v236.i32[1] = v511.val[2].u8[5];
          v242.i32[0] = v511.val[2].u8[2];
          v512.val[2].i32[0] = v511.val[2].u8[0];
          v242.i32[1] = v511.val[2].u8[3];
          v512.val[2].i32[1] = v511.val[2].u8[1];
          v512.val[3].i32[0] = v512.val[3].u8[0];
          v512.val[3].i32[1] = v237;
          v512.val[0] = vand_s8(v227, 0xFF000000FFLL);
          v243.i64[0] = v512.val[0].u32[0];
          v243.i64[1] = v512.val[0].u32[1];
          *v512.val[0].i8 = vcvtq_f64_u64(v243);
          v244 = vand_s8(v231, 0xFF000000FFLL);
          v243.i64[0] = v244.u32[0];
          v243.i64[1] = v244.u32[1];
          *v512.val[0].i8 = vmulq_f64(*v512.val[0].i8, vcvtq_f64_u64(v243));
          v245 = vand_s8(v216, 0xFF000000FFLL);
          v243.i64[0] = v245.u32[0];
          v243.i64[1] = v245.u32[1];
          v246 = v243;
          v247 = vand_s8(v217, 0xFF000000FFLL);
          v243.i64[0] = v247.u32[0];
          v243.i64[1] = v247.u32[1];
          v497 = vcvtq_f64_u64(v243);
          v248 = vand_s8(v218, 0xFF000000FFLL);
          v243.i64[0] = v248.u32[0];
          v243.i64[1] = v248.u32[1];
          v249 = v243;
          v250 = vand_s8(v219, 0xFF000000FFLL);
          v243.i64[0] = v250.u32[0];
          v243.i64[1] = v250.u32[1];
          v495 = vcvtq_f64_u64(v249);
          v251 = vcvtq_f64_u64(v243);
          v252 = vand_s8(v220, 0xFF000000FFLL);
          v243.i64[0] = v252.u32[0];
          v243.i64[1] = v252.u32[1];
          v253 = v243;
          v254 = vand_s8(v221, 0xFF000000FFLL);
          v243.i64[0] = v254.u32[0];
          v243.i64[1] = v254.u32[1];
          v255 = vcvtq_f64_u64(v253);
          v256 = vcvtq_f64_u64(v243);
          v257 = vand_s8(v501, 0xFF000000FFLL);
          v243.i64[0] = v257.u32[0];
          v243.i64[1] = v257.u32[1];
          v258 = v243;
          v259 = vand_s8(v223, 0xFF000000FFLL);
          v243.i64[0] = v259.u32[0];
          v243.i64[1] = v259.u32[1];
          v260 = vcvtq_f64_u64(v243);
          v261 = vand_s8(v224, 0xFF000000FFLL);
          v243.i64[0] = v261.u32[0];
          v243.i64[1] = v261.u32[1];
          v262 = v243;
          v263 = vand_s8(v225, 0xFF000000FFLL);
          v243.i64[0] = v263.u32[0];
          v243.i64[1] = v263.u32[1];
          v264 = vcvtq_f64_u64(v243);
          v265 = vand_s8(v226, 0xFF000000FFLL);
          v243.i64[0] = v265.u32[0];
          v243.i64[1] = v265.u32[1];
          v266 = v243;
          v267 = vand_s8(v228, 0xFF000000FFLL);
          v243.i64[0] = v267.u32[0];
          v243.i64[1] = v267.u32[1];
          v268 = vcvtq_f64_u64(v243);
          v269 = vand_s8(v229, 0xFF000000FFLL);
          v243.i64[0] = v269.u32[0];
          v243.i64[1] = v269.u32[1];
          v270 = v243;
          v271 = vand_s8(v230, 0xFF000000FFLL);
          v243.i64[0] = v271.u32[0];
          v243.i64[1] = v271.u32[1];
          v272 = vcvtq_f64_u64(v270);
          v273 = vcvtq_f64_u64(v243);
          *v253.i8 = vand_s8(v222, 0xFF000000FFLL);
          v243.i64[0] = v253.u32[0];
          v243.i64[1] = v253.u32[1];
          v274 = v243;
          *v270.i8 = vand_s8(v232, 0xFF000000FFLL);
          v243.i64[0] = v270.u32[0];
          v243.i64[1] = v270.u32[1];
          v275 = vcvtq_f64_u64(v274);
          v276 = vcvtq_f64_u64(v243);
          *v270.i8 = vand_s8(v233, 0xFF000000FFLL);
          v243.i64[0] = v270.u32[0];
          v243.i64[1] = v270.u32[1];
          v277 = v243;
          v278 = vand_s8(v234, 0xFF000000FFLL);
          v243.i64[0] = v278.u32[0];
          v243.i64[1] = v278.u32[1];
          v279 = vcvtq_f64_u64(v277);
          v280 = vcvtq_f64_u64(v243);
          *v277.i8 = vand_s8(v235, 0xFF000000FFLL);
          v243.i64[0] = v277.u32[0];
          v243.i64[1] = v277.u32[1];
          v281 = v243;
          v282 = vand_s8(v236, 0xFF000000FFLL);
          v243.i64[0] = v282.u32[0];
          v243.i64[1] = v282.u32[1];
          v283 = vcvtq_f64_u64(v281);
          v284 = vcvtq_f64_u64(v243);
          v285 = vand_s8(v242, 0xFF000000FFLL);
          v243.i64[0] = v285.u32[0];
          v243.i64[1] = v285.u32[1];
          v286 = v243;
          v287 = vand_s8(v512.val[2], 0xFF000000FFLL);
          v243.i64[0] = v287.u32[0];
          v243.i64[1] = v287.u32[1];
          v288 = vcvtq_f64_u64(v286);
          v289 = vcvtq_f64_u64(v243);
          v290 = vand_s8(v512.val[3], 0xFF000000FFLL);
          v243.i64[0] = v290.u32[0];
          v243.i64[1] = v290.u32[1];
          *v512.val[3].i8 = vcvtq_f64_u64(v243);
          v512.val[1] = vand_s8(__PAIR64__(v239, v238), 0xFF000000FFLL);
          v291 = vmulq_f64(vcvtq_f64_u64(v266), v273);
          v243.i64[0] = v512.val[1].u32[0];
          v243.i64[1] = v512.val[1].u32[1];
          *v512.val[2].i8 = vcvtq_f64_u64(v243);
          v292 = vand_s8(__PAIR64__(v240, v215), 0xFF000000FFLL);
          v243.i64[0] = v292.u32[0];
          v243.i64[1] = v292.u32[1];
          v293 = vcvtq_f64_u64(v243);
          v294 = vmulq_f64(v264, v272);
          v512.val[1] = vand_s8(__PAIR64__(v214, v241), 0xFF000000FFLL);
          v243.i64[0] = v512.val[1].u32[0];
          v243.i64[1] = v512.val[1].u32[1];
          v295 = vcvtq_f64_u64(v243);
          *v512.val[1].i8 = vmulq_f64(vcvtq_f64_u64(v262), v268);
          LODWORD(v268.f64[0]) = v511.val[3].u8[0];
          HIDWORD(v268.f64[0]) = v511.val[3].u8[1];
          *&v268.f64[0] = vand_s8(*&v268.f64[0], 0xFF000000FFLL);
          v243.i64[0] = LODWORD(v268.f64[0]);
          v243.i64[1] = HIDWORD(v268.f64[0]);
          v296 = vcvtq_f64_u64(v243);
          *v512.val[0].i8 = vmlaq_f64(vmlaq_f64(*v512.val[0].i8, v255, vcvtq_f64_u64(v246)), v289, v280);
          LODWORD(v289.f64[0]) = v511.val[3].u8[2];
          *v512.val[1].i8 = vmlaq_f64(*v512.val[1].i8, v260, v251);
          HIDWORD(v289.f64[0]) = v511.val[3].u8[3];
          *&v289.f64[0] = vand_s8(*&v289.f64[0], 0xFF000000FFLL);
          v243.i64[0] = LODWORD(v289.f64[0]);
          v243.i64[1] = HIDWORD(v289.f64[0]);
          v297 = vcvtq_f64_u64(v243);
          LODWORD(v255.f64[0]) = v511.val[3].u8[4];
          HIDWORD(v255.f64[0]) = v511.val[3].u8[5];
          *&v255.f64[0] = vand_s8(*&v255.f64[0], 0xFF000000FFLL);
          v243.i64[0] = LODWORD(v255.f64[0]);
          v243.i64[1] = HIDWORD(v255.f64[0]);
          v298 = vcvtq_f64_u64(v243);
          LODWORD(v251.f64[0]) = v511.val[3].u8[6];
          HIDWORD(v251.f64[0]) = v511.val[3].u8[7];
          v511.val[0] = vand_s8(*&v251.f64[0], 0xFF000000FFLL);
          v243.i64[0] = v511.val[0].u32[0];
          v243.i64[1] = v511.val[0].u32[1];
          *v512.val[1].i8 = vmlaq_f64(vmlaq_f64(*v512.val[1].i8, v283, v275), vcvtq_f64_u64(v243), v295);
          v300 = v299;
          v301 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v294, vcvtq_f64_u64(v258), v495), v284, v276), v298, v293);
          v302 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v291, v256, v497), v288, v279), v297, *v512.val[2].i8);
          *v512.val[0].i8 = vmlaq_f64(*v512.val[0].i8, v296, *v512.val[3].i8);
          v304 = v504 + *v512.val + v303 + v302.f64[0] + v302.f64[1];
          v305 = v301.f64[1];
          v306 = v304 + v301.f64[0] + v301.f64[1] + *&v512.val[1];
          v212 = v306 + v299;
          v213 += 32;
          ++result;
        }

        while (result);
        v307 = v466;
        v309 = v469;
        v308 = v470;
        v310 = v473;
        if (v207 == v466)
        {
          goto LABEL_121;
        }

        goto LABEL_119;
      }

      v309 = v469;
      v308 = v470;
      v192 = v464;
      v9 = v465;
      v12 = v471;
      LODWORD(v17) = v472;
      v310 = v473;
      v193 = v463;
      v210 = v467;
      v209 = v468;
LABEL_121:
      v438 = v193;
      if (v193 < v17)
      {
        do
        {
          LOBYTE(v306) = v9[v438];
          v306 = *&v306;
          LOBYTE(v304) = v209[v438];
          v304 = *&v304;
          v212 = v212 + v306 * v304;
          ++v438;
        }

        while (v310 > v438);
      }

      *&v309[v210++] = v212 * v474;
      v209 += v12;
      if (v210 == v308)
      {
        v206 = v459 + 1;
        v10 = &v309[v460];
        v9 += v12;
        if (v459 + 1 == v308)
        {
          return result;
        }

        goto LABEL_106;
      }
    }

    v211 = 0;
    v212 = 0.0;
    goto LABEL_110;
  }

  v18 = *(a3 + 12);
  result = v506;
  if ((8 * v16) >= 0x409)
  {
    operator new[]();
  }

  if (v15 < 1)
  {
    return result;
  }

  v19 = 0;
  v20 = 32 * (v18 == v473);
  v21 = v17 - 4;
  v22 = ((v17 - 4) & 0xFFFFFFFC) + 4;
  v23 = v20 * (((v17 - 4) >> 2) + 1);
  v24 = &v506[8 * v17];
  v25 = v17 < 4;
  v26 = v506 >= v11 + 8 * (v17 + v13 * (v15 - 1)) || v11 >= v24;
  v27 = v13 >> 60;
  if (!v26)
  {
    LOBYTE(v27) = 1;
  }

  v29 = v506 < &v9[v12 * (v15 - 1) + v17] && v9 < v24 || v12 < 0;
  v30 = v29;
  v31 = v10;
  if (v29)
  {
    v32 = 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v17 & 0x7FFFFFF0;
  v494 = v17 & 0xC;
  v34 = v17 & 0x7FFFFFFC;
  v499 = v25 | v32;
  v35 = v31;
  v496 = v25 | v30;
  v36 = v470;
  v37 = v9 + 3;
  v38 = v11;
  v503 = v33;
  while (2)
  {
    v39 = v9;
    if (v18 >= v17)
    {
      v40 = v473;
      if (v17 < 1)
      {
        goto LABEL_55;
      }

      if (v499)
      {
        for (k = 0; k != v17; ++k)
        {
LABEL_54:
          LOBYTE(a4.f64[0]) = v9[k];
          a4.f64[0] = *&a4.f64[0] - v38->f64[k];
          *&v506[8 * k] = a4.f64[0];
        }

        goto LABEL_55;
      }

      if (v17 >= 0x10)
      {
        v77 = v506;
        v78 = v38;
        do
        {
          v79 = *v9;
          v9 += 16;
          v80 = vextq_s8(v79, v79, 8uLL).u64[0];
          v81.i32[0] = BYTE6(v80);
          v81.i32[1] = HIBYTE(v80);
          v82 = vand_s8(v81, 0xFF000000FFLL);
          v83.i64[0] = v82.u32[0];
          v83.i64[1] = v82.u32[1];
          v84 = vcvtq_f64_u64(v83);
          v85.i32[0] = BYTE4(v80);
          v85.i32[1] = BYTE5(v80);
          v86 = vand_s8(v85, 0xFF000000FFLL);
          v83.i64[0] = v86.u32[0];
          v83.i64[1] = v86.u32[1];
          v87 = vcvtq_f64_u64(v83);
          v88.i32[0] = BYTE2(v80);
          v88.i32[1] = BYTE3(v80);
          v89 = vand_s8(v88, 0xFF000000FFLL);
          v83.i64[0] = v89.u32[0];
          v83.i64[1] = v89.u32[1];
          v90 = vcvtq_f64_u64(v83);
          v91.i32[0] = v80;
          v91.i32[1] = BYTE1(v80);
          v92 = vand_s8(v91, 0xFF000000FFLL);
          v83.i64[0] = v92.u32[0];
          v83.i64[1] = v92.u32[1];
          v93 = vcvtq_f64_u64(v83);
          v91.i32[0] = v79.u8[6];
          v91.i32[1] = v79.u8[7];
          v94 = vand_s8(v91, 0xFF000000FFLL);
          v83.i64[0] = v94.u32[0];
          v83.i64[1] = v94.u32[1];
          v95 = vcvtq_f64_u64(v83);
          v96.i32[0] = v79.u8[4];
          v96.i32[1] = v79.u8[5];
          v97 = vand_s8(v96, 0xFF000000FFLL);
          v83.i64[0] = v97.u32[0];
          v83.i64[1] = v97.u32[1];
          v98 = vcvtq_f64_u64(v83);
          v99.i32[0] = v79.u8[2];
          v99.i32[1] = v79.u8[3];
          v100 = vand_s8(v99, 0xFF000000FFLL);
          v83.i64[0] = v100.u32[0];
          v83.i64[1] = v100.u32[1];
          v101 = vcvtq_f64_u64(v83);
          v102.i32[0] = v79.u8[0];
          v102.i32[1] = v79.u8[1];
          v103 = vand_s8(v102, 0xFF000000FFLL);
          v83.i64[0] = v103.u32[0];
          v83.i64[1] = v103.u32[1];
          a8 = vsubq_f64(v93, v78[4]);
          a9 = vsubq_f64(v90, v78[5]);
          a7 = vsubq_f64(v87, v78[6]);
          a4 = vsubq_f64(v84, v78[7]);
          v104 = vsubq_f64(vcvtq_f64_u64(v83), *v78);
          v105 = vsubq_f64(v101, v78[1]);
          v106 = vsubq_f64(v95, v78[3]);
          v77[2] = vsubq_f64(v98, v78[2]);
          v77[3] = v106;
          *v77 = v104;
          v77[1] = v105;
          v77[6] = a7;
          v77[7] = a4;
          v77[4] = a8;
          v77[5] = a9;
          v78 += 8;
          v77 += 8;
          v33 -= 16;
        }

        while (v33);
        k = v503;
        v9 = v39;
        if (v503 == v17)
        {
          goto LABEL_55;
        }

        v45 = v503;
        if (!v494)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v45 = 0;
      }

      v107 = 8 * v45;
      do
      {
        LODWORD(a4.f64[0]) = *&v9[v45];
        v108 = vmovl_u16(*&vmovl_u8(*&a4.f64[0]));
        v109 = vand_s8(*v108.i8, 0xFF000000FFLL);
        v110.i64[0] = v109.u32[0];
        v110.i64[1] = v109.u32[1];
        v111 = vcvtq_f64_u64(v110);
        *v108.i8 = vand_s8(*&vextq_s8(v108, v108, 8uLL), 0xFF000000FFLL);
        v110.i64[0] = v108.u32[0];
        v110.i64[1] = v108.u32[1];
        a7 = *(v38 + v107);
        a8 = *(v38 + v107 + 16);
        a4 = vsubq_f64(vcvtq_f64_u64(v110), a8);
        v112 = &v506[v107];
        *v112 = vsubq_f64(v111, a7);
        v112[1] = a4;
        v45 += 4;
        v107 += 32;
      }

      while (v34 != v45);
      k = v34;
      if (v34 == v17)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v40 = v473;
    if (v473 >= 1)
    {
      v41 = *(v11 + 8 * v13 * v19);
      if (v496)
      {
        v42 = 0;
        do
        {
LABEL_45:
          LOBYTE(a4.f64[0]) = v9[v42];
          a4.f64[0] = *&a4.f64[0] - *&v41;
          *&v506[8 * v42++] = a4.f64[0];
        }

        while (v17 != v42);
        goto LABEL_55;
      }

      if (v473 >= 0x10)
      {
        v46 = 0;
        a4 = vdupq_lane_s64(v41, 0);
        v47 = v506;
        do
        {
          v48 = *&v9[v46];
          v49.i32[0] = v48.u8[6];
          v49.i32[1] = v48.u8[7];
          v9 = v39;
          v50 = vand_s8(v49, 0xFF000000FFLL);
          v51.i64[0] = v50.u32[0];
          v51.i64[1] = v50.u32[1];
          v52.i32[0] = v48.u8[4];
          v52.i32[1] = v48.u8[5];
          v53 = vcvtq_f64_u64(v51);
          v54 = vand_s8(v52, 0xFF000000FFLL);
          v51.i64[0] = v54.u32[0];
          v51.i64[1] = v54.u32[1];
          v55 = vcvtq_f64_u64(v51);
          v56.i32[0] = v48.u8[2];
          v56.i32[1] = v48.u8[3];
          v57 = vand_s8(v56, 0xFF000000FFLL);
          v51.i64[0] = v57.u32[0];
          v51.i64[1] = v57.u32[1];
          v58.i32[0] = v48.u8[0];
          v59 = vcvtq_f64_u64(v51);
          v58.i32[1] = v48.u8[1];
          v60 = vand_s8(v58, 0xFF000000FFLL);
          v51.i64[0] = v60.u32[0];
          v51.i64[1] = v60.u32[1];
          v61 = vcvtq_f64_u64(v51);
          v48.i64[0] = vextq_s8(v48, v48, 8uLL).u64[0];
          v62.i32[0] = v48.u8[6];
          v62.i32[1] = v48.u8[7];
          v63 = vand_s8(v62, 0xFF000000FFLL);
          v51.i64[0] = v63.u32[0];
          v51.i64[1] = v63.u32[1];
          v64 = vcvtq_f64_u64(v51);
          v65.i32[0] = v48.u8[4];
          v65.i32[1] = v48.u8[5];
          v66 = vand_s8(v65, 0xFF000000FFLL);
          v51.i64[0] = v66.u32[0];
          v51.i64[1] = v66.u32[1];
          v67 = vcvtq_f64_u64(v51);
          v68.i32[0] = v48.u8[2];
          v68.i32[1] = v48.u8[3];
          v69 = vand_s8(v68, 0xFF000000FFLL);
          v51.i64[0] = v69.u32[0];
          v51.i64[1] = v69.u32[1];
          v70 = vcvtq_f64_u64(v51);
          v71.i32[0] = v48.u8[0];
          v71.i32[1] = v48.u8[1];
          *v48.i8 = vand_s8(v71, 0xFF000000FFLL);
          v51.i64[0] = v48.u32[0];
          v51.i64[1] = v48.u32[1];
          a9 = vsubq_f64(vcvtq_f64_u64(v51), a4);
          a8 = vsubq_f64(v55, a4);
          v47[2] = a8;
          v47[3] = vsubq_f64(v53, a4);
          *v47 = vsubq_f64(v61, a4);
          v47[1] = vsubq_f64(v59, a4);
          a7 = vsubq_f64(v64, a4);
          v47[6] = vsubq_f64(v67, a4);
          v47[7] = a7;
          v47[4] = a9;
          v47[5] = vsubq_f64(v70, a4);
          v46 += 16;
          v47 += 8;
        }

        while (v503 != v46);
        if (v503 == v17)
        {
          goto LABEL_55;
        }

        v44 = v503;
        v42 = v503;
        if (!v494)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v44 = 0;
      }

      a4 = vdupq_lane_s64(v41, 0);
      v72 = &v506[8 * v44];
      do
      {
        LODWORD(a7.f64[0]) = *&v9[v44];
        v73 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
        v74 = vand_s8(*v73.i8, 0xFF000000FFLL);
        v75.i64[0] = v74.u32[0];
        v75.i64[1] = v74.u32[1];
        v76 = vcvtq_f64_u64(v75);
        *v73.i8 = vand_s8(*&vextq_s8(v73, v73, 8uLL), 0xFF000000FFLL);
        v75.i64[0] = v73.u32[0];
        v75.i64[1] = v73.u32[1];
        a7 = vsubq_f64(vcvtq_f64_u64(v75), a4);
        a8 = vsubq_f64(v76, a4);
        *v72 = a8;
        v72[1] = a7;
        v72 += 2;
        v44 += 4;
      }

      while (v34 != v44);
      v42 = v34;
      if (v34 == v17)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

LABEL_55:
    v113 = v9;
    v114 = v37;
    v115 = v19;
    do
    {
      v116 = (v11 + 8 * v13 * v115);
      if (v18 < v40)
      {
        v509 = *v116;
        *&a4.f64[0] = v509;
        v510 = v509;
        v508[0] = v509;
        v508[1] = v509;
        v116 = v508;
      }

      if (v17 >= 4)
      {
        v119 = (v116 + 2);
        v118 = 0.0;
        v120 = &v507;
        v121 = v114;
        v122 = 1;
        do
        {
          LOBYTE(a4.f64[0]) = *(v121 - 3);
          v123 = *(v120 - 2);
          LOBYTE(a9.f64[0]) = *(v121 - 2);
          v124 = *(v120 - 1) * (*&a9.f64[0] - *(v119 - 1)) + v123 * (*&a4.f64[0] - *(v119 - 2));
          LOBYTE(v123) = *(v121 - 1);
          a9.f64[0] = v119[1];
          *&v125 = *&v123 - *v119;
          a8.f64[0] = *v120;
          v126 = v120[1];
          v120 += 4;
          v127 = v124 + a8.f64[0] * *&v125;
          LOBYTE(v125) = *v121;
          a7.f64[0] = v125 - a9.f64[0];
          a4.f64[0] = v127 + v126 * a7.f64[0];
          v119 = (v119 + v20);
          v128 = v122 + 3;
          v122 += 4;
          v118 = v118 + a4.f64[0];
          v121 += 4;
        }

        while (v128 <= v21);
        v116 = (v116 + v23);
        v117 = v22;
        if (v22 >= v40)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v117 = 0;
        v118 = 0.0;
        if (v40 <= 0)
        {
          goto LABEL_57;
        }
      }

      v129 = v117;
      v130 = v40 + ~v117;
      if (v130 < 3)
      {
        v131 = v117;
        v132 = v116;
        goto LABEL_80;
      }

      v133 = v130 + 1;
      if (v130 >= 0xF)
      {
        v134 = v133 & 0x1FFFFFFF0;
        v135 = &v506[8 * v129];
        v136 = &v113[v129];
        v137 = v133 & 0x1FFFFFFF0;
        v138 = v116;
        do
        {
          v139 = *v136++;
          v140 = vextq_s8(v139, v139, 8uLL).u64[0];
          v141.i32[0] = BYTE6(v140);
          v142.i32[0] = BYTE4(v140);
          v141.i32[1] = HIBYTE(v140);
          v142.i32[1] = BYTE5(v140);
          v143 = vand_s8(v141, 0xFF000000FFLL);
          v144.i32[0] = BYTE2(v140);
          v144.i32[1] = BYTE3(v140);
          v145 = vand_s8(v142, 0xFF000000FFLL);
          v146.i32[0] = v140;
          v147 = BYTE1(v140);
          v148.i64[0] = v143.u32[0];
          v148.i64[1] = v143.u32[1];
          v149 = v148;
          v150 = vand_s8(v144, 0xFF000000FFLL);
          v146.i32[1] = v147;
          v148.i64[0] = v145.u32[0];
          v148.i64[1] = v145.u32[1];
          v151 = v148;
          v144.i32[0] = v139.u8[6];
          v144.i32[1] = v139.u8[7];
          v148.i64[0] = v150.u32[0];
          v148.i64[1] = v150.u32[1];
          v152 = v148;
          v153 = vand_s8(v146, 0xFF000000FFLL);
          v154 = vand_s8(v144, 0xFF000000FFLL);
          v148.i64[0] = v154.u32[0];
          v148.i64[1] = v154.u32[1];
          v155 = v148;
          v148.i64[0] = v153.u32[0];
          v148.i64[1] = v153.u32[1];
          v156 = v148;
          v157.i32[0] = v139.u8[4];
          v157.i32[1] = v139.u8[5];
          v158 = vand_s8(v157, 0xFF000000FFLL);
          v148.i64[0] = v158.u32[0];
          v148.i64[1] = v158.u32[1];
          v159.i32[0] = v139.u8[2];
          v160 = vcvtq_f64_u64(v148);
          v159.i32[1] = v139.u8[3];
          v161 = vand_s8(v159, 0xFF000000FFLL);
          v148.i64[0] = v161.u32[0];
          v148.i64[1] = v161.u32[1];
          v162 = vcvtq_f64_u64(v148);
          v163.i32[0] = v139.u8[0];
          v163.i32[1] = v139.u8[1];
          v164 = vand_s8(v163, 0xFF000000FFLL);
          v148.i64[0] = v164.u32[0];
          v148.i64[1] = v164.u32[1];
          v165 = vmulq_f64(v135[7], vsubq_f64(vcvtq_f64_u64(v149), v138[7]));
          v166 = vmulq_f64(v135[6], vsubq_f64(vcvtq_f64_u64(v151), v138[6]));
          v167 = vmulq_f64(v135[5], vsubq_f64(vcvtq_f64_u64(v152), v138[5]));
          a9 = vmulq_f64(v135[3], vsubq_f64(vcvtq_f64_u64(v155), v138[3]));
          v168 = vmulq_f64(v135[4], vsubq_f64(vcvtq_f64_u64(v156), v138[4]));
          a8 = vmulq_f64(v135[2], vsubq_f64(v160, v138[2]));
          v169 = vmulq_f64(v135[1], vsubq_f64(v162, v138[1]));
          a7 = vmulq_f64(*v135, vsubq_f64(vcvtq_f64_u64(v148), *v138));
          v169.f64[0] = v118 + a7.f64[0] + a7.f64[1] + v169.f64[0];
          a7.f64[0] = v168.f64[1];
          v118 = v169.f64[0] + v169.f64[1] + a8.f64[0] + a8.f64[1] + a9.f64[0] + a9.f64[1] + v168.f64[0] + v168.f64[1] + v167.f64[0] + v167.f64[1] + v166.f64[0] + v166.f64[1] + v165.f64[0] + v165.f64[1];
          v138 += 8;
          v135 += 8;
          v137 -= 16;
        }

        while (v137);
        if (v133 == v134)
        {
          v36 = v470;
          v12 = v471;
          v17 = v472;
          v40 = v473;
          goto LABEL_57;
        }

        v12 = v471;
        v17 = v472;
        if ((v133 & 0xC) == 0)
        {
          v132 = &v116[v134];
          v131 = v134 + v129;
          v36 = v470;
          v40 = v473;
          do
          {
LABEL_80:
            LOBYTE(a7.f64[0]) = v113[v131];
            v181 = *v132++;
            HIDWORD(a8.f64[0]) = HIDWORD(v181);
            a7.f64[0] = *&a7.f64[0] - v181;
            v118 = v118 + *&v506[8 * v131++] * a7.f64[0];
          }

          while (v40 > v131);
          goto LABEL_57;
        }

        v36 = v470;
        v40 = v473;
      }

      else
      {
        v134 = 0;
      }

      v131 = (v133 & 0x1FFFFFFFCLL) + v129;
      v132 = &v116[v133 & 0x1FFFFFFFCLL];
      v170 = &v116[v134];
      v171 = v134 - (v133 & 0x1FFFFFFFCLL);
      v172 = v134 + v129;
      v173 = &v506[8 * v172];
      do
      {
        v174 = *v173;
        v175 = v173[1];
        v173 += 2;
        LODWORD(a8.f64[0]) = *&v113[v172];
        a8 = vmovl_u16(*&vmovl_u8(*&a8.f64[0]));
        v176 = vand_s8(*&vextq_s8(a8, a8, 8uLL), 0xFF000000FFLL);
        v177.i64[0] = v176.u32[0];
        v177.i64[1] = v176.u32[1];
        a9 = vcvtq_f64_u64(v177);
        *&a8.f64[0] = vand_s8(*&a8.f64[0], 0xFF000000FFLL);
        v177.i64[0] = LODWORD(a8.f64[0]);
        v177.i64[1] = HIDWORD(a8.f64[0]);
        v179 = *v170;
        v178 = v170[1];
        v170 += 2;
        a7 = vmulq_f64(v175, vsubq_f64(a9, v178));
        a9.f64[0] = a7.f64[1];
        v180 = vmulq_f64(v174, vsubq_f64(vcvtq_f64_u64(v177), v179));
        HIDWORD(a8.f64[0]) = HIDWORD(v180.f64[1]);
        v118 = v118 + v180.f64[0] + v180.f64[1] + a7.f64[0] + a7.f64[1];
        v172 += 4;
        v171 += 4;
      }

      while (v171);
      v12 = v471;
      v17 = v472;
      if (v133 != (v133 & 0x1FFFFFFFCLL))
      {
        goto LABEL_80;
      }

LABEL_57:
      a4.f64[0] = v118 * v474;
      *&v35[v115++] = v118 * v474;
      v114 += v12;
      v113 += v12;
    }

    while (v115 != v36);
    v35 += v460;
    ++v19;
    v9 = &v39[v12];
    v38 = (v38 + 8 * v13);
    v37 += v12;
    v33 = v503;
    if (v19 != v36)
    {
      continue;
    }

    return result;
  }
}

_BYTE *sub_10024B1C4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, __n128 a6, float64x2_t a7, __n128 a8)
{
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 2;
  }

  v13 = a1[8];
  v14 = v13[1];
  v15 = *v13;
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 20 * v15;
  if (!v16)
  {
    v18 = 4 * v15;
  }

  result = v127;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 2;
  if ((v17 & 1) == 0)
  {
    v22 = &v127[4 * v15];
    if (v15 < 1)
    {
      goto LABEL_36;
    }

    v23 = v15 >= 8 && v12 == 1;
    if (v23 && (v22 < (v10 + 4 * v15) ? (v24 = v10 >= &v127[16 * v15 + 4 * v15]) : (v24 = 1), v24))
    {
      v25 = v15 & 0x7FFFFFF8;
      f32 = v22[4].f32;
      v27 = v10 + 1;
      v28 = v25;
      do
      {
        v29 = v27[-1];
        a8 = *v27;
        v30 = v29;
        a6 = v29;
        v31 = v29;
        v32 = *v27;
        v33 = *v27;
        v34 = *v27;
        v35 = f32 - 16;
        vst4q_f32(v35, *(&a6 - 2));
        vst4q_f32(f32, *a8.n128_u64);
        f32 += 32;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v25 == v15)
      {
LABEL_36:
        v12 = 4 * (v12 != 0);
        v10 = &v127[4 * v15];
        if (v14 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v25 = 0;
    }

    v36 = &v127[16 * v25 + 4 * v15];
    v37 = v10 + v12 * v25;
    v39 = v15 - v25;
    do
    {
      v40 = vld1q_dup_f32(v37);
      v38 = 4 * v12;
      v37 = (v37 + v38);
      *v36++ = v40;
      --v39;
    }

    while (v39);
    goto LABEL_36;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v85 = 0;
    v86 = v14 - 4;
    v87 = a4 * 0.0;
    *&v87 = a4 * 0.0;
    v88 = vdupq_lane_s32(*&v87, 0);
    v89 = 2 * v20;
    v90 = 4 * v21;
    for (i = v8; ; ++i)
    {
      if (v15 < 1)
      {
        goto LABEL_81;
      }

      v92 = v15 & 0x7FFFFFFE;
      v93 = &v128;
      v94 = i;
      if (v15 == 1)
      {
        break;
      }

      do
      {
        a6.n128_u16[0] = *v94;
        a6.n128_f32[0] = a6.n128_u32[0];
        LOWORD(a7.f64[0]) = v94[v20];
        *a7.f64 = LODWORD(a7.f64[0]);
        *(v93 - 1) = a6.n128_u32[0];
        *v93 = LODWORD(a7.f64[0]);
        v94 += 2 * v20;
        v93 += 2;
        v92 -= 2;
      }

      while (v92);
      v95 = v15 & 0x7FFFFFFE;
      if (v95 != v15)
      {
        goto LABEL_79;
      }

LABEL_81:
      LODWORD(v99) = v85;
      v100 = i;
      v101 = v85;
      if (v85 <= v86)
      {
        do
        {
          a6 = v88;
          if (v15 >= 1)
          {
            v109 = 0uLL;
            v110 = v100;
            v111 = v15;
            v112 = v127;
            v113 = 0uLL;
            do
            {
              v114 = *v112++;
              v115 = vmovl_u16(*v110);
              v116.i64[0] = v115.u32[0];
              v116.i64[1] = v115.u32[1];
              v117 = vcvtq_f64_u64(v116);
              v116.i64[0] = v115.u32[2];
              v116.i64[1] = v115.u32[3];
              v113 = vmlaq_n_f64(v113, vcvtq_f64_u64(v116), v114);
              v109 = vmlaq_n_f64(v109, v117, v114);
              v110 = (v110 + v89);
              --v111;
            }

            while (v111);
            a8.n128_f64[0] = a4;
            a7 = vmulq_n_f64(v113, a4);
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v109, a4)), a7);
          }

          *(v9 + 4 * v101) = a6;
          v99 = v101 + 4;
          ++v100;
          v101 = v99;
        }

        while (v86 >= v99);
      }

      if (v99 >= v14)
      {
        goto LABEL_73;
      }

      v102 = v99;
      if (v15 >= 1)
      {
        v103 = &v8[v99];
        do
        {
          v104 = 0.0;
          v105 = v103;
          v106 = v15;
          v107 = v127;
          do
          {
            v108 = *v107++;
            a8.n128_u16[0] = *v105;
            a8.n128_f64[0] = a8.n128_u64[0];
            v104 = v104 + v108 * a8.n128_f64[0];
            v105 = (v105 + v89);
            --v106;
          }

          while (v106);
          WORD1(a7.f64[0]) = WORD1(a4);
          a6.n128_f32[0] = v104 * a4;
          *(v9 + 4 * v102++) = a6.n128_u32[0];
          ++v103;
        }

        while (v14 > v102);
        goto LABEL_73;
      }

      v118 = (v14 + ~v99);
      if (v118 > 6)
      {
        v120 = v118 + 1;
        v121 = (v118 + 1) & 0x1FFFFFFF8;
        v119 = v121 + v102;
        v122 = 4 * v102;
        v123 = v121;
        do
        {
          v124 = (v9 + v122);
          *v124 = v88;
          v124[1] = v88;
          v122 += 32;
          v123 -= 8;
        }

        while (v123);
        if (v120 == v121)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v119 = v99;
      }

      v125 = 4 * v119;
      do
      {
        *(v9 + v125) = LODWORD(v87);
        v125 += 4;
        LODWORD(v119) = v119 + 1;
      }

      while (v14 > v119);
LABEL_73:
      ++v85;
      v9 += v90;
      if (v85 == v14)
      {
        return result;
      }
    }

    v95 = 0;
LABEL_79:
    v96 = &v127[4 * v95];
    v97 = v89 * v95;
    v98 = v15 - v95;
    do
    {
      a6.n128_u16[0] = *(i + v97);
      a6.n128_f32[0] = a6.n128_u32[0];
      *v96++ = a6.n128_u32[0];
      v97 += v89;
      --v98;
    }

    while (v98);
    goto LABEL_81;
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_37:
    v41 = 0;
    v42 = v14 - 4;
    v43 = a4 * 0.0;
    *&v43 = a4 * 0.0;
    v44 = 4 * v12;
    v45 = vdupq_lane_s32(*&v43, 0);
    v46 = 2 * v20;
    v47 = 4 * v21;
    v48 = v10;
    v49 = v8;
    do
    {
      if (v22)
      {
        v50 = v15;
        v51 = v49;
        v52 = v22;
        v53 = v127;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v51;
            a6.n128_f32[0] = a6.n128_u32[0] - *v52;
            *v53++ = a6.n128_u32[0];
            v52 = (v52 + v44);
            v51 = (v51 + v46);
            --v50;
          }

          while (v50);
        }
      }

      else if (v15 >= 1)
      {
        v54 = v15;
        v55 = v49;
        v56 = v48;
        v57 = v127;
        do
        {
          a6.n128_u16[0] = *v55;
          a6.n128_f32[0] = a6.n128_u32[0] - *v56;
          *v57++ = a6.n128_u32[0];
          v56 = (v56 + v44);
          v55 = (v55 + v46);
          --v54;
        }

        while (v54);
      }

      LODWORD(v58) = v41;
      v59 = v49;
      v60 = v41;
      if (v41 <= v42)
      {
        do
        {
          a6 = v45;
          if (v15 >= 1)
          {
            v69 = (v10 + 4 * v60);
            if (v22)
            {
              v69 = v22;
            }

            v70 = 0uLL;
            v71 = v59;
            v72 = v15;
            v73 = v127;
            v74 = 0uLL;
            do
            {
              v75 = *v73++;
              v76 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v71)), *v69);
              v74 = vmlaq_n_f64(v74, vcvt_hight_f64_f32(v76), v75);
              v70 = vmlaq_n_f64(v70, vcvtq_f64_f32(*v76.f32), v75);
              v69 = (v69 + v44);
              v71 = (v71 + v46);
              --v72;
            }

            while (v72);
            a8.n128_u16[1] = WORD1(a4);
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v70, a4)), vmulq_n_f64(v74, a4));
          }

          *(v9 + 4 * v60) = a6;
          v58 = v60 + 4;
          ++v59;
          v60 = v58;
        }

        while (v42 >= v58);
      }

      if (v58 >= v14)
      {
        goto LABEL_38;
      }

      v61 = v58;
      if (v15 >= 1)
      {
        v62 = &v8[v58];
        do
        {
          v63 = v10 + v61;
          if (v22)
          {
            v63 = v22;
          }

          v64 = 0.0;
          v65 = v62;
          v66 = v15;
          v67 = v127;
          do
          {
            v68 = *v67++;
            a8.n128_u16[0] = *v65;
            a8.n128_f64[0] = (a8.n128_u32[0] - *v63);
            v64 = v64 + v68 * a8.n128_f64[0];
            v63 = (v63 + v44);
            v65 = (v65 + v46);
            --v66;
          }

          while (v66);
          a6.n128_f32[0] = v64 * a4;
          *(v9 + 4 * v61++) = a6.n128_u32[0];
          ++v62;
        }

        while (v14 > v61);
        goto LABEL_38;
      }

      v77 = (v14 + ~v58);
      if (v77 > 6)
      {
        v79 = v77 + 1;
        v80 = (v77 + 1) & 0x1FFFFFFF8;
        v78 = v80 + v61;
        v81 = 4 * v61;
        v82 = v80;
        do
        {
          v83 = (v9 + v81);
          *v83 = v45;
          v83[1] = v45;
          v81 += 32;
          v82 -= 8;
        }

        while (v82);
        if (v79 == v80)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v78 = v58;
      }

      v84 = 4 * v78;
      do
      {
        *(v9 + v84) = LODWORD(v43);
        v84 += 4;
        LODWORD(v78) = v78 + 1;
      }

      while (v14 > v78);
LABEL_38:
      ++v41;
      v9 += v47;
      ++v49;
      ++v48;
    }

    while (v41 != v14);
  }

  return result;
}

void sub_10024B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

const __int16 *sub_10024B8A4(const __int16 *result, uint64_t a2, uint64_t a3, double a4, __n128 a5, float32x4_t a6, __n128 a7, float32x4_t a8, double a9)
{
  v9 = *(result + 2);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 10) >> 1;
  v256 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 2;
  }

  v14 = *(result + 8);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[1];
  if (v11)
  {
    v18 = *(a3 + 12);
    result = v260;
    if ((4 * v16) >= 0x409)
    {
      operator new[]();
    }

    if (v15 >= 1)
    {
      v19 = 0;
      v255 = 4 * v13;
      v254 = v16 & 0x7FFFFFF0;
      v20 = (v9 + 8);
      v21 = 2 * v12;
      v259 = v11 + 2;
      v253 = v16 & 0x7FFFFFFC;
      v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
      v23 = v9 + 2;
      v24 = *(a3 + 16);
      do
      {
        if (v18 >= v17)
        {
          if (v17 >= 1)
          {
            v26 = 0;
            if (v17 >= 4 && (v260 - v11 + -4 * v13 * v19) >= 0x40)
            {
              if (v17 >= 0x10)
              {
                v38 = v259;
                v39 = v262;
                v40 = v20;
                v41 = v16 & 0x7FFFFFF0;
                do
                {
                  v42 = *v40[-2].i8;
                  v43 = vcvtq_f32_u32(vmovl_high_u16(v42));
                  v45 = v38[-2];
                  v44 = v38[-1];
                  v47 = *v38;
                  v46 = v38[1];
                  v38 += 4;
                  a5 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v42.i8)), v45);
                  a7 = vsubq_f32(v43, v44);
                  a6 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v40)), v47);
                  a8 = vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(*v40->i8)), v46);
                  v39[-2] = a5;
                  v39[-1] = a7;
                  *v39 = a6;
                  v39[1] = a8;
                  v39 += 4;
                  v40 += 4;
                  v41 -= 16;
                }

                while (v41);
                if (v254 == v16)
                {
                  goto LABEL_38;
                }

                v26 = v16 & 0x7FFFFFF0;
                v27 = v26;
                if ((v16 & 0xC) != 0)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v27 = 0;
LABEL_34:
                v48 = &v9[v27];
                v49 = (v24 + 4 * v27);
                v50 = &v260[v27];
                v51 = v27 - (v16 & 0x7FFFFFFC);
                do
                {
                  v52 = *v48++;
                  v53 = vcvtq_f32_u32(vmovl_u16(v52));
                  v54 = *v49++;
                  a6.i16[1] = v54.i16[1];
                  a5 = vsubq_f32(v53, v54);
                  *v50++ = a5;
                  v51 += 4;
                }

                while (v51);
                v26 = v16 & 0x7FFFFFFC;
                if (v253 == v16)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              a5.n128_u16[0] = v9[v26];
              a6.i32[0] = *(v24 + 4 * v26);
              a5.n128_f32[0] = a5.n128_u32[0] - a6.f32[0];
              v260[v26++] = a5.n128_u32[0];
            }

            while (v16 != v26);
          }
        }

        else if (v16 >= 1)
        {
          a5.n128_u32[0] = v11->u32[v13 * v19];
          if (v16 < 4)
          {
            v25 = 0;
            do
            {
LABEL_28:
              a6.i16[0] = v9[v25];
              a6.f32[0] = a6.u32[0] - a5.n128_f32[0];
              v260[v25++] = a6.i32[0];
            }

            while (v16 != v25);
            goto LABEL_38;
          }

          if (v16 >= 0x10)
          {
            v29 = 0;
            a6 = vdupq_lane_s32(a5.n128_u64[0], 0);
            v30 = v262;
            do
            {
              v31 = *&v9[v29 / 2];
              v32 = *v20[v29 / 8].i8;
              v33 = vcvtq_f32_u32(vmovl_high_u16(v31));
              v34 = vcvtq_f32_u32(vmovl_high_u16(v32));
              a7 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v31.i8)), a6);
              a8 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v32.i8)), a6);
              v30[-2] = a7;
              v30[-1] = vsubq_f32(v33, a6);
              *v30 = a8;
              v30[1] = vsubq_f32(v34, a6);
              v30 += 4;
              v29 += 32;
            }

            while (v22 != v29);
            if (v254 == v16)
            {
              goto LABEL_38;
            }

            v25 = v16 & 0x7FFFFFF0;
            v28 = v25;
            if ((v16 & 0xC) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v28 = 0;
          }

          a6 = vdupq_lane_s32(a5.n128_u64[0], 0);
          v35 = v28;
          v36 = v28 - (v16 & 0x7FFFFFFC);
          v37 = &v260[v28];
          do
          {
            a7 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&v9[v35])), a6);
            *v37++ = a7;
            v35 += 4;
            v36 += 4;
          }

          while (v36);
          v25 = v16 & 0x7FFFFFFC;
          if (v253 == v16)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }

LABEL_38:
        v55 = v9;
        v56 = v20;
        v257 = v23;
        v258 = v19;
        v57 = v19;
        do
        {
          v58 = &v11->f32[v13 * v57];
          if (v18 < v16)
          {
            v59 = vld1q_dup_f32(v58);
            v263 = v59;
            v58 = &v263;
          }

          if (v17 >= 4)
          {
            v62 = 0;
            v63 = (v58 + 2);
            v61 = 0.0;
            v64 = v23;
            v65 = &v261;
            do
            {
              a8.i16[0] = *(v64 - 2);
              v66 = *(v63 - 2);
              v67 = a8.u32[0] - v66;
              LOWORD(v66) = *(v64 - 1);
              v68 = *(v65 - 1) * (LODWORD(v66) - *(v63 - 1));
              v69 = v68 + *(v65 - 2) * v67;
              LOWORD(v68) = *v64;
              v70 = *v65;
              v71 = v65[1];
              v65 += 4;
              v72 = v70;
              v73 = v69 + v72 * (LODWORD(v68) - *v63);
              a7.n128_f64[0] = v71;
              LOWORD(v72) = v64[1];
              *a8.i64 = (LODWORD(v72) - v63[1]);
              *a6.i64 = v73 + v71 * *a8.i64;
              v62 += 4;
              v61 = v61 + *a6.i64;
              v63 += 4 * (v18 == v16);
              v64 += 4;
            }

            while (v62 <= v16 - 4);
            v58 = (v58 + 16 * (v18 == v16) * (((v16 - 4) >> 2) + 1));
            v60 = ((v16 - 4) & 0xFFFFFFFC) + 4;
            if (v60 >= v17)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v60 = 0;
            v61 = 0.0;
            if (v17 <= 0)
            {
              goto LABEL_39;
            }
          }

          v74 = v60;
          v75 = (v16 + ~v60);
          if (v75 < 3)
          {
            v76 = v74;
            v77 = v58;
            goto LABEL_61;
          }

          v78 = v75 + 1;
          if (v75 >= 0xF)
          {
            v79 = v78 & 0x1FFFFFFF0;
            v80 = (v56 + 2 * v74);
            v81 = (v58 + 8);
            v82 = &v262[v74];
            v83 = v78 & 0x1FFFFFFF0;
            do
            {
              v85 = v82[-2];
              v84 = v82[-1];
              v87 = *v82;
              v86 = v82[1];
              v82 += 4;
              v88 = vcvtq_f64_f32(*v85.f32);
              v89 = vcvtq_f64_f32(*v84.f32);
              v90 = vcvtq_f64_f32(*v87.f32);
              v91 = vcvtq_f64_f32(*v86.f32);
              v92 = v80[-1];
              v93 = vcvtq_f32_u32(vmovl_u16(*v92.i8));
              v94 = v81[-2];
              v95 = v81[-1];
              v96 = *v81;
              v97 = v81[1];
              v81 += 4;
              v98 = vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(v92)), v95);
              v99 = vsubq_f32(v93, v94);
              v100 = vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(*v80)), v97);
              v101 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v80->i8)), v96);
              a6 = vmulq_f64(vcvt_hight_f64_f32(v84), vcvt_hight_f64_f32(v98));
              v102 = vmulq_f64(v89, vcvtq_f64_f32(*v98.f32));
              a7 = vmulq_f64(vcvt_hight_f64_f32(v85), vcvt_hight_f64_f32(v99));
              v103 = vmulq_f64(v88, vcvtq_f64_f32(*v99.f32));
              a8 = vmulq_f64(vcvt_hight_f64_f32(v86), vcvt_hight_f64_f32(v100));
              v104 = vmulq_f64(v91, vcvtq_f64_f32(*v100.f32));
              v105 = vmulq_f64(vcvt_hight_f64_f32(v87), vcvt_hight_f64_f32(v101));
              v106 = vmulq_f64(v90, vcvtq_f64_f32(*v101.f32));
              v61 = v61 + v103.f64[0] + v103.f64[1] + a7.n128_f64[0] + a7.n128_f64[1] + v102.f64[0] + v102.f64[1] + *a6.i64 + *&a6.i64[1] + v106.f64[0] + v106.f64[1] + v105.f64[0] + v105.f64[1] + v104.f64[0] + v104.f64[1] + *a8.i64 + *&a8.i64[1];
              v80 += 2;
              v83 -= 16;
            }

            while (v83);
            if (v78 == v79)
            {
              goto LABEL_39;
            }

            if ((v78 & 0xC) == 0)
            {
              v77 = &v58[v79];
              v76 = v79 + v74;
              do
              {
LABEL_61:
                *a6.i64 = *&v260[v76];
                a7.n128_u16[0] = v55[v76];
                v118 = *v77++;
                a8.i16[1] = HIWORD(v118);
                a7.n128_f64[0] = (a7.n128_u32[0] - v118);
                v61 = v61 + *a6.i64 * a7.n128_f64[0];
                ++v76;
              }

              while (v17 > v76);
              goto LABEL_39;
            }
          }

          else
          {
            v79 = 0;
          }

          v77 = &v58[v78 & 0x1FFFFFFFCLL];
          v76 = (v78 & 0x1FFFFFFFCLL) + v74;
          v107 = &v58[v79];
          v108 = v79 - (v78 & 0x1FFFFFFFCLL);
          v109 = v79 + v74;
          v110 = &v260[v109];
          v111 = &v55[v109];
          do
          {
            v112 = *v110++;
            v113 = vcvtq_f64_f32(*v112.f32);
            v114 = vcvt_hight_f64_f32(v112);
            v112.i64[0] = *v111++;
            v115 = vcvtq_f32_u32(vmovl_u16(*v112.f32));
            v116 = *v107++;
            a8 = vsubq_f32(v115, v116);
            v117 = vcvtq_f64_f32(*a8.f32);
            a6 = vmulq_f64(v114, vcvt_hight_f64_f32(a8));
            a8.i16[1] = a6.i16[5];
            a7 = vmulq_f64(v113, v117);
            v61 = v61 + a7.n128_f64[0] + a7.n128_f64[1] + *a6.i64 + *&a6.i64[1];
            v108 += 4;
          }

          while (v108);
          if (v78 != (v78 & 0x1FFFFFFFCLL))
          {
            goto LABEL_61;
          }

LABEL_39:
          a5.n128_f64[0] = v61 * a4;
          a5.n128_f32[0] = a5.n128_f64[0];
          v10->i32[v57++] = a5.n128_u32[0];
          v23 = (v23 + v21);
          v56 = (v56 + v21);
          v55 = (v55 + v21);
        }

        while (v57 != v15);
        v19 = v258 + 1;
        v10 = (v10 + 4 * v256);
        v20 = (v20 + v21);
        v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
        v259 = (v259 + v255);
        v9 = (v9 + v21);
        v24 += v255;
        v23 = &v257[v21 / 2];
      }

      while (v258 + 1 != v15);
    }
  }

  else if (v15 >= 1)
  {
    if (v17 >= 4)
    {
      v127 = (v16 - 4);
      v128 = (v127 & 0xFFFFFFFC) + 4;
      if (v127 >= 0x1C)
      {
        v151 = 0;
        v152 = (v127 >> 2) + 1;
        v153 = 2 * v12;
        do
        {
          v154 = v9;
          result = v151;
          do
          {
            v156 = 0.0;
            v157 = v152 & 0x3FFFFFF8;
            v158 = v154;
            v159 = v9;
            do
            {
              v264 = vld4q_s16(v159);
              v159 += 32;
              v160 = vmovl_u16(*v264.val[0].i8);
              v265 = vld4q_s16(v158);
              v158 += 32;
              v161.i64[0] = v160.u32[0];
              v161.i64[1] = v160.u32[1];
              v162 = vcvtq_f64_u64(v161);
              v161.i64[0] = v160.u32[2];
              v161.i64[1] = v160.u32[3];
              v163 = v161;
              v164 = vmovl_high_u16(v264.val[0]);
              v161.i64[0] = v164.u32[0];
              v161.i64[1] = v164.u32[1];
              v165 = vcvtq_f64_u64(v163);
              v166 = vcvtq_f64_u64(v161);
              v161.i64[0] = v164.u32[2];
              v161.i64[1] = v164.u32[3];
              v167 = vcvtq_f64_u64(v161);
              v168 = vmovl_u16(*v265.val[0].i8);
              v161.i64[0] = v168.u32[0];
              v161.i64[1] = v168.u32[1];
              v169 = vcvtq_f64_u64(v161);
              v161.i64[0] = v168.u32[2];
              v161.i64[1] = v168.u32[3];
              v170 = vcvtq_f64_u64(v161);
              v171 = vmovl_high_u16(v265.val[0]);
              v161.i64[0] = v171.u32[0];
              v161.i64[1] = v171.u32[1];
              v172 = v161;
              v161.i64[0] = v171.u32[2];
              v161.i64[1] = v171.u32[3];
              v173 = vcvtq_f64_u64(v172);
              v174 = vcvtq_f64_u64(v161);
              v175 = vmovl_high_u16(v264.val[1]);
              v161.i64[0] = v175.u32[2];
              v161.i64[1] = v175.u32[3];
              v176 = vcvtq_f64_u64(v161);
              v161.i64[0] = v175.u32[0];
              v161.i64[1] = v175.u32[1];
              v177 = vcvtq_f64_u64(v161);
              v178 = vmovl_u16(*v264.val[1].i8);
              v161.i64[0] = v178.u32[2];
              v161.i64[1] = v178.u32[3];
              v179 = vcvtq_f64_u64(v161);
              v161.i64[0] = v178.u32[0];
              v161.i64[1] = v178.u32[1];
              v180 = vmovl_high_u16(v265.val[1]);
              v181 = vcvtq_f64_u64(v161);
              v161.i64[0] = v180.u32[2];
              v161.i64[1] = v180.u32[3];
              v182 = vcvtq_f64_u64(v161);
              v161.i64[0] = v180.u32[0];
              v161.i64[1] = v180.u32[1];
              v183 = v161;
              v184 = vmovl_u16(*v265.val[1].i8);
              v161.i64[0] = v184.u32[2];
              v161.i64[1] = v184.u32[3];
              v185 = vcvtq_f64_u64(v183);
              v186 = vcvtq_f64_u64(v161);
              v161.i64[0] = v184.u32[0];
              v161.i64[1] = v184.u32[1];
              v187 = vmulq_f64(v181, vcvtq_f64_u64(v161));
              v188 = vmulq_f64(v177, v185);
              v189 = vmulq_f64(v176, v182);
              v190 = vmovl_high_u16(v264.val[2]);
              v161.i64[0] = v190.u32[2];
              v161.i64[1] = v190.u32[3];
              v191 = vcvtq_f64_u64(v161);
              v161.i64[0] = v190.u32[0];
              v161.i64[1] = v190.u32[1];
              v192 = vmlaq_f64(v189, v174, v167);
              v193 = vcvtq_f64_u64(v161);
              v194 = vmovl_u16(*v264.val[2].i8);
              v161.i64[0] = v194.u32[2];
              v161.i64[1] = v194.u32[3];
              v195 = vcvtq_f64_u64(v161);
              v161.i64[0] = v194.u32[0];
              v161.i64[1] = v194.u32[1];
              v196 = vmlaq_f64(v188, v173, v166);
              v197 = vcvtq_f64_u64(v161);
              v198 = vmovl_high_u16(v265.val[2]);
              v161.i64[0] = v198.u32[2];
              v161.i64[1] = v198.u32[3];
              v199 = vcvtq_f64_u64(v161);
              v161.i64[0] = v198.u32[0];
              v161.i64[1] = v198.u32[1];
              v200 = vmlaq_f64(v187, v169, v162);
              v201 = vcvtq_f64_u64(v161);
              v202 = vmovl_u16(*v265.val[2].i8);
              v161.i64[0] = v202.u32[2];
              v161.i64[1] = v202.u32[3];
              v203 = vcvtq_f64_u64(v161);
              v161.i64[0] = v202.u32[0];
              v161.i64[1] = v202.u32[1];
              v204 = vmlaq_f64(vmulq_f64(v179, v186), v170, v165);
              v205 = vcvtq_f64_u64(v161);
              v206 = vmovl_u16(*v264.val[3].i8);
              v161.i64[0] = v206.u32[0];
              v161.i64[1] = v206.u32[1];
              v207 = vcvtq_f64_u64(v161);
              v161.i64[0] = v206.u32[2];
              v161.i64[1] = v206.u32[3];
              v208 = vmlaq_f64(v200, v205, v197);
              v209 = vcvtq_f64_u64(v161);
              v264.val[0] = vmovl_high_u16(v264.val[3]);
              v161.i64[0] = v264.val[0].u32[0];
              v161.i64[1] = v264.val[0].u32[1];
              v264.val[1] = vcvtq_f64_u64(v161);
              v161.i64[0] = v264.val[0].u32[2];
              v161.i64[1] = v264.val[0].u32[3];
              v264.val[0] = vcvtq_f64_u64(v161);
              v264.val[2] = vmovl_u16(*v265.val[3].i8);
              v161.i64[0] = v264.val[2].u32[0];
              v161.i64[1] = v264.val[2].u32[1];
              v210 = vcvtq_f64_u64(v161);
              v161.i64[0] = v264.val[2].u32[2];
              v161.i64[1] = v264.val[2].u32[3];
              v264.val[2] = vcvtq_f64_u64(v161);
              v265.val[0] = vmovl_high_u16(v265.val[3]);
              v161.i64[0] = v265.val[0].u32[0];
              v161.i64[1] = v265.val[0].u32[1];
              v265.val[1] = vcvtq_f64_u64(v161);
              v161.i64[0] = v265.val[0].u32[2];
              v161.i64[1] = v265.val[0].u32[3];
              v211 = vmlaq_f64(vmlaq_f64(v192, v199, v191), vcvtq_f64_u64(v161), v264.val[0]);
              v212 = v211.f64[1];
              v213 = vmlaq_f64(vmlaq_f64(v196, v201, v193), v265.val[1], v264.val[1]);
              v214 = vmlaq_f64(vmlaq_f64(v204, v203, v195), v264.val[2], v209);
              v215 = v214.f64[1];
              v216 = vmlaq_f64(v208, v210, v207);
              v217 = v213.f64[1];
              v156 = v156 + v216.f64[0] + v216.f64[1] + v214.f64[0] + v214.f64[1] + v213.f64[0] + v213.f64[1] + v211.f64[0] + v211.f64[1];
              v157 -= 8;
            }

            while (v157);
            v218 = (((v152 >> 3) & 0x7FFFFFF) << 6) | 4;
            v219 = 4 * (v152 & 0x3FFFFFF8);
            if (v152 != (v152 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v212) = *(v9 + v218 - 4);
                LOWORD(v215) = *(v154 + v218 - 4);
                *&v220 = *&v215;
                LOWORD(v217) = *(v9 + v218 - 2);
                LOWORD(v210.f64[0]) = *(v154 + v218 - 2);
                v210.f64[0] = *&v210.f64[0];
                *&v221 = *&v217 * v210.f64[0];
                v222 = *&v221 + *&v212 * *&v220;
                LOWORD(v220) = *(v9 + v218);
                *&v223 = v220;
                LOWORD(v221) = *(v154 + v218);
                *&v224 = v221;
                v225 = v222 + *&v223 * *&v224;
                LOWORD(v223) = *(v9 + v218 + 2);
                LOWORD(v224) = *(v154 + v218 + 2);
                v215 = v223;
                v217 = v224;
                v212 = v225 + v215 * v217;
                v156 = v156 + v212;
                v219 += 4;
                v218 += 8;
              }

              while (v219 <= v127);
            }

            v226 = (v127 & 0xFFFFFFFC) + 4;
            v227 = v128;
            if (v128 < v17)
            {
              do
              {
                LOWORD(v212) = v9[v227];
                LOWORD(v215) = v154[v227];
                v212 = *&v212;
                v215 = *&v215;
                v156 = v156 + v212 * v215;
                ++v227;
                ++v226;
              }

              while (v17 > v226);
            }

            *&v155 = v156 * a4;
            v10->i32[result] = v155;
            result = (result + 1);
            v154 = (v154 + v153);
          }

          while (result != v15);
          ++v151;
          v10 = (v10 + 4 * v256);
          v9 = (v9 + v153);
        }

        while (v151 != v15);
      }

      else if (v128 >= v16)
      {
        v237 = 0;
        v238 = v9 + 2;
        v239 = 2 * v12;
        do
        {
          v240 = v238;
          v241 = v237;
          do
          {
            v242 = 0;
            v243 = 0.0;
            v244 = v238;
            v245 = v240;
            do
            {
              a6.i16[0] = *(v244 - 2);
              a7.n128_u16[0] = *(v245 - 2);
              *&v246 = a7.n128_u64[0];
              a8.i16[0] = *(v244 - 1);
              LOWORD(a9) = *(v245 - 1);
              a9 = *&a9;
              *&v247 = a8.u64[0] * a9;
              v248 = *&v247 + a6.u64[0] * *&v246;
              LOWORD(v246) = *v244;
              LOWORD(v247) = *v245;
              *&v249 = v246;
              *&v250 = v247;
              v251 = v248 + *&v249 * *&v250;
              LOWORD(v249) = v244[1];
              a7.n128_f64[0] = v249;
              LOWORD(v250) = v245[1];
              *a8.i64 = v250;
              *a6.i64 = v251 + a7.n128_f64[0] * *a8.i64;
              v243 = v243 + *a6.i64;
              v242 += 4;
              v245 += 4;
              v244 += 4;
            }

            while (v242 <= v127);
            *&v252 = v243 * a4;
            v10->i32[v241++] = v252;
            v240 = (v240 + v239);
          }

          while (v241 != v15);
          ++v237;
          v10 = (v10 + 4 * v256);
          v238 = (v238 + v239);
        }

        while (v237 != v15);
      }

      else
      {
        v129 = 0;
        v130 = v9 + 2;
        v131 = 2 * v12;
        v132 = &v9[v128];
        do
        {
          v133 = v132;
          v134 = v130;
          v135 = v129;
          do
          {
            v136 = 0;
            v137 = 0.0;
            v138 = v130;
            v139 = v134;
            do
            {
              a6.i16[0] = *(v138 - 2);
              a7.n128_u16[0] = *(v139 - 2);
              *&v140 = a7.n128_u64[0];
              a8.i16[0] = *(v138 - 1);
              LOWORD(a9) = *(v139 - 1);
              a9 = *&a9;
              *&v141 = a8.u64[0] * a9;
              v142 = *&v141 + a6.u64[0] * *&v140;
              LOWORD(v140) = *v138;
              LOWORD(v141) = *v139;
              *&v143 = v140;
              *&v144 = v141;
              v145 = v142 + *&v143 * *&v144;
              LOWORD(v143) = v138[1];
              a7.n128_f64[0] = v143;
              LOWORD(v144) = v139[1];
              *a8.i64 = v144;
              *a6.i64 = v145 + a7.n128_f64[0] * *a8.i64;
              v137 = v137 + *a6.i64;
              v136 += 4;
              v139 += 4;
              v138 += 4;
            }

            while (v136 <= v127);
            v146 = v132;
            result = v133;
            v147 = (v127 & 0xFFFFFFFC) + 4;
            do
            {
              v148 = *v146++;
              *a6.i64 = v148;
              v149 = *result++;
              a7.n128_f64[0] = v149;
              v137 = v137 + *a6.i64 * v149;
              ++v147;
            }

            while (v17 > v147);
            *&v150 = v137 * a4;
            v10->i32[v135++] = v150;
            v134 = (v134 + v131);
            v133 = (v133 + v131);
          }

          while (v135 != v15);
          ++v129;
          v10 = (v10 + 4 * v256);
          v130 = (v130 + v131);
          v132 = (v132 + v131);
        }

        while (v129 != v15);
      }
    }

    else if (v16 <= 0)
    {
      v228 = 0;
      v229 = a4 * 0.0;
      *&v229 = v229;
      v230 = vdupq_lane_s32(*&v229, 0);
      v231 = v10 + 1;
      v232 = v15;
      do
      {
        v233 = v15 - v228;
        v234 = v228;
        if ((v15 - v228) < 8)
        {
          goto LABEL_112;
        }

        v235 = v232 & 0xFFFFFFFFFFFFFFF8;
        v234 = &v228[v233 & 0xFFFFFFFFFFFFFFF8];
        v236 = v231;
        do
        {
          v236[-1] = v230;
          *v236 = v230;
          v236 += 2;
          v235 -= 8;
        }

        while (v235);
        if (v233 != (v233 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_112:
          do
          {
            v10->i32[v234++] = LODWORD(v229);
          }

          while (v15 != v234);
        }

        ++v228;
        --v232;
        v231 = (v231 + 4 * v256 + 4);
        v10 = (v10 + 4 * v256);
      }

      while (v228 != v15);
    }

    else
    {
      v119 = 0;
      v120 = v9 + 2;
      v121 = 2 * v12;
      v122 = v15;
      do
      {
        v123 = &v9[v12 * v119];
        a6.i16[0] = *v123;
        *a6.i64 = a6.u64[0];
        v124 = v122;
        v125 = v10;
        v126 = v120;
        do
        {
          a7.n128_u16[0] = *(v126 - 2);
          a7.n128_f64[0] = *a6.i64 * a7.n128_u64[0] + 0.0;
          if (v16 != 1)
          {
            a8.i16[0] = v123[1];
            *a8.i64 = a8.u64[0];
            LOWORD(a9) = *(v126 - 1);
            a9 = *&a9;
            a7.n128_f64[0] = a7.n128_f64[0] + *a8.i64 * a9;
            if (v17 != 2)
            {
              a8.i16[0] = v123[2];
              *a8.i64 = a8.u64[0];
              LOWORD(a9) = *v126;
              a9 = *&a9;
              a7.n128_f64[0] = a7.n128_f64[0] + *a8.i64 * a9;
            }
          }

          a7.n128_f64[0] = a7.n128_f64[0] * a4;
          a7.n128_f32[0] = a7.n128_f64[0];
          v125->i32[0] = a7.n128_u32[0];
          v125 = (v125 + 4);
          v126 = (v126 + v121);
          v124 = (v124 - 1);
        }

        while (v124);
        ++v119;
        v120 = (v120 + v121);
        v10 = (v10 + 4 * v256 + 4);
        v122 = (v122 - 1);
      }

      while (v119 != v15);
    }
  }

  return result;
}

_BYTE *sub_10024C63C(void *a1, uint64_t a2, uint64_t a3, __n128 a4, float64x2_t a5, __n128 a6, double a7, __n128 a8)
{
  v143 = a4.n128_u64[0];
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 3;
  }

  v13 = a1[8];
  v15 = *v13;
  v14 = v13[1];
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 40 * v15;
  if (!v16)
  {
    v18 = 8 * v15;
  }

  result = v144;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v22 = &v144[8 * v15];
    if (v15 < 1)
    {
      goto LABEL_54;
    }

    v23 = 0;
    if (v15 >= 6 && v12 == 1)
    {
      if (v22 >= &v10->n128_u64[v15] || v10 >= &v144[32 * v15 + 8 * v15])
      {
        v23 = v15 & 0x7FFFFFFC;
        v25 = &v145[8 * v15 + 56];
        v26 = v10 + 1;
        v27 = v23;
        do
        {
          v28 = v26[-1];
          a8 = *v26;
          v29 = v28;
          a6 = v28;
          v30 = v28;
          v31 = *v26;
          v32 = *v26;
          v33 = *v26;
          v34 = v25 - 8;
          vst4q_f64(v34, *(&a6 - 2));
          vst4q_f64(v25, *a8.n128_u64);
          v25 += 16;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == v15)
        {
LABEL_54:
          v12 = 4 * (v12 != 0);
          v10 = &v144[8 * v15];
          if (v14 < 1)
          {
            return result;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    v64 = &v144[32 * v23 + 8 * v15];
    v65 = &v10->n128_f64[v12 * v23];
    v67 = v15 - v23;
    do
    {
      v68 = vld1q_dup_f64(v65);
      v66 = 8 * v12;
      v65 = (v65 + v66);
      *v64 = v68;
      v64[1] = v68;
      v64 += 2;
      --v67;
    }

    while (v67);
    goto LABEL_54;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v35 = v14 - 4;
    if (v15 > 0)
    {
      v36 = 0;
      v37 = 2 * v20;
      for (i = v8; ; ++i)
      {
        v39 = v15 & 0x7FFFFFFE;
        v40 = v145;
        v41 = i;
        if (v15 == 1)
        {
          break;
        }

        do
        {
          a4.n128_u16[0] = *v41;
          a4.n128_f64[0] = a4.n128_u64[0];
          LOWORD(a5.f64[0]) = v41[v20];
          a5.f64[0] = *&a5.f64[0];
          *(v40 - 1) = a4.n128_u64[0];
          *v40 = *&a5.f64[0];
          v41 += 2 * v20;
          v40 += 2;
          v39 -= 2;
        }

        while (v39);
        v42 = v15 & 0x7FFFFFFE;
        if (v42 != v15)
        {
          goto LABEL_38;
        }

LABEL_40:
        v46 = i;
        v47 = v36;
        if (v36 <= v35)
        {
          do
          {
            v48 = 0uLL;
            v49 = v46;
            v50 = v15;
            v51 = v144;
            v52 = 0uLL;
            do
            {
              v53 = vmovl_u16(*v49);
              v54.i64[0] = v53.u32[0];
              v54.i64[1] = v53.u32[1];
              v55 = vcvtq_f64_u64(v54);
              v56 = vld1q_dup_f64(v51++);
              v54.i64[0] = v53.u32[2];
              v54.i64[1] = v53.u32[3];
              v52 = vmlaq_f64(v52, vcvtq_f64_u64(v54), v56);
              v48 = vmlaq_f64(v48, v55, v56);
              v49 = (v49 + v37);
              --v50;
            }

            while (v50);
            a6.n128_u64[0] = v143;
            a5 = vmulq_n_f64(v52, *&v143);
            a4 = vmulq_n_f64(v48, *&v143);
            v57 = (v9 + 8 * v47);
            *v57 = a4;
            v57[1] = a5;
            v47 += 4;
            ++v46;
          }

          while (v35 >= v47);
          v47 = v47;
          if (v47 >= v14)
          {
            goto LABEL_33;
          }

LABEL_47:
          v58 = &v8[v47];
          do
          {
            v59 = 0.0;
            v60 = v58;
            v61 = v15;
            v62 = v144;
            do
            {
              v63 = *v62++;
              a6.n128_u16[0] = *v60;
              a6.n128_f64[0] = a6.n128_u64[0];
              v59 = v59 + v63 * a6.n128_f64[0];
              v60 = (v60 + v37);
              --v61;
            }

            while (v61);
            *&a5.f64[0] = v143;
            a4.n128_f64[0] = v59 * *&v143;
            v9->i64[v47++] = a4.n128_u64[0];
            ++v58;
          }

          while (v14 > v47);
          goto LABEL_33;
        }

        v47 = v36;
        if (v36 < v14)
        {
          goto LABEL_47;
        }

LABEL_33:
        ++v36;
        v9 = (v9 + 8 * v21);
        if (v36 == v14)
        {
          return result;
        }
      }

      v42 = 0;
LABEL_38:
      v43 = v37 * v42;
      v44 = &v144[8 * v42];
      v45 = v15 - v42;
      do
      {
        a4.n128_u16[0] = *(i + v43);
        a4.n128_f64[0] = a4.n128_u64[0];
        *v44++ = a4.n128_u64[0];
        v43 += v37;
        --v45;
      }

      while (v45);
      goto LABEL_40;
    }

    v116 = 0;
    v117 = a4.n128_f64[0] * 0.0;
    v118 = vdupq_lane_s64(COERCE__INT64(*&v143 * 0.0), 0);
    v119 = v14 - 3;
    v120 = v9 + 4;
    v121 = 8 * v21;
    v122 = 4;
    for (j = -1; ; --j)
    {
      if (v122 <= v119)
      {
        v124 = v14 - 3;
      }

      else
      {
        v124 = v122;
      }

      v125 = v116 + 4;
      if (v116 + 4 <= v119)
      {
        v125 = v14 - 3;
      }

      if (v116 <= v35)
      {
        v127 = v125 + ~v116;
        v128 = v116;
        if (v127 <= 0xB)
        {
          goto LABEL_102;
        }

        v129 = (((v124 + j) >> 2) + 1) & 0x7FFFFFFC;
        v130 = (v127 >> 2) + 1;
        v128 = v116 + 4 * (v130 & 0x7FFFFFFC);
        v126 = v116;
        v131 = v120;
        do
        {
          v131[-4] = v118;
          v131[-3] = v118;
          v131[-2] = v118;
          v131[-1] = v118;
          *v131 = v118;
          v131[1] = v118;
          v131[2] = v118;
          v131[3] = v118;
          v131 += 8;
          v126 += 16;
          v129 -= 4;
        }

        while (v129);
        if ((v130 & 0x7FFFFFFC) != v130)
        {
LABEL_102:
          v132 = 8 * v128;
          v126 = v128;
          do
          {
            v133 = (v9 + v132);
            *v133 = v118;
            v133[1] = v118;
            v132 += 32;
            v126 += 4;
          }

          while (v35 >= v126);
        }
      }

      else
      {
        v126 = v116;
      }

      if (v126 >= v14)
      {
        goto LABEL_90;
      }

      v134 = v126;
      v135 = (v14 + ~v126);
      if (v135 > 2)
      {
        v137 = v135 + 1;
        v138 = (v135 + 1) & 0x1FFFFFFFCLL;
        v136 = v138 + v134;
        v139 = 8 * v134;
        v140 = v138;
        do
        {
          v141 = (v9 + v139);
          *v141 = v118;
          v141[1] = v118;
          v139 += 32;
          v140 -= 4;
        }

        while (v140);
        if (v137 == v138)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v136 = v134;
      }

      v142 = v136;
      do
      {
        *&v9->i64[v142++] = v117;
        LODWORD(v136) = v136 + 1;
      }

      while (v14 > v136);
LABEL_90:
      ++v116;
      v120 = (v120 + v121 + 8);
      ++v122;
      v9 = (v9 + v121);
      if (v116 == v14)
      {
        return result;
      }
    }
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_55:
    v69 = 0;
    v70 = v14 - 4;
    v71 = 8 * v12;
    v72 = vdupq_lane_s64(COERCE__INT64(*&v143 * 0.0), 0);
    v73 = 2 * v20;
    v74 = 8 * v21;
    v75 = v10;
    v76 = v8;
    do
    {
      if (v22)
      {
        v77 = v15;
        v78 = v76;
        v79 = v22;
        v80 = v144;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v78;
            a6.n128_f64[0] = a6.n128_u64[0] - *v79;
            *v80++ = a6.n128_u64[0];
            v79 = (v79 + v71);
            v78 = (v78 + v73);
            --v77;
          }

          while (v77);
        }
      }

      else if (v15 >= 1)
      {
        v81 = v15;
        v82 = v76;
        v83 = v75;
        v84 = v144;
        do
        {
          a6.n128_u16[0] = *v82;
          a6.n128_f64[0] = a6.n128_u64[0] - *v83;
          *v84++ = a6.n128_u64[0];
          v83 = (v83 + v71);
          v82 = (v82 + v73);
          --v81;
        }

        while (v81);
      }

      LODWORD(v85) = v69;
      v86 = v76;
      v87 = v69;
      if (v69 <= v70)
      {
        do
        {
          a6 = v72;
          v97 = v72;
          if (v15 >= 1)
          {
            v98 = &v10->n128_u64[v87];
            if (v22)
            {
              v98 = v22;
            }

            v99 = 0uLL;
            v100 = v86;
            v101 = v15;
            v102 = v144;
            v103 = 0uLL;
            do
            {
              v104 = vmovl_u16(*v100);
              v105.i64[0] = v104.u32[2];
              v105.i64[1] = v104.u32[3];
              v106 = vcvtq_f64_u64(v105);
              v105.i64[0] = v104.u32[0];
              v105.i64[1] = v104.u32[1];
              v107 = vld1q_dup_f64(v102++);
              v103 = vmlaq_f64(v103, vsubq_f64(v106, v98[1]), v107);
              v99 = vmlaq_f64(v99, vsubq_f64(vcvtq_f64_u64(v105), *v98), v107);
              v98 = (v98 + v71);
              v100 = (v100 + v73);
              --v101;
            }

            while (v101);
            a8.n128_u64[0] = v143;
            a6 = vmulq_n_f64(v99, *&v143);
            v97 = vmulq_n_f64(v103, *&v143);
          }

          v96 = &v9->i64[v87];
          *v96 = a6;
          *(v96 + 1) = v97;
          v85 = v87 + 4;
          ++v86;
          v87 = v85;
        }

        while (v70 >= v85);
      }

      if (v85 >= v14)
      {
        goto LABEL_56;
      }

      v88 = v85;
      if (v15 >= 1)
      {
        v89 = &v8[v85];
        do
        {
          v90 = &v10->n128_f64[v88];
          if (v22)
          {
            v90 = v22;
          }

          v91 = 0.0;
          v92 = v89;
          v93 = v15;
          v94 = v144;
          do
          {
            v95 = *v94++;
            a8.n128_u16[0] = *v92;
            a8.n128_f64[0] = a8.n128_u64[0] - *v90;
            v91 = v91 + v95 * a8.n128_f64[0];
            v90 = (v90 + v71);
            v92 = (v92 + v73);
            --v93;
          }

          while (v93);
          a6.n128_f64[0] = v91 * *&v143;
          v9->i64[v88++] = a6.n128_u64[0];
          ++v89;
        }

        while (v14 > v88);
        goto LABEL_56;
      }

      v108 = (v14 + ~v85);
      if (v108 > 2)
      {
        v110 = v108 + 1;
        v111 = (v108 + 1) & 0x1FFFFFFFCLL;
        v109 = v111 + v88;
        v112 = 8 * v88;
        v113 = v111;
        do
        {
          v114 = (v9 + v112);
          *v114 = v72;
          v114[1] = v72;
          v112 += 32;
          v113 -= 4;
        }

        while (v113);
        if (v110 == v111)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v109 = v85;
      }

      v115 = v109;
      do
      {
        *&v9->i64[v115++] = *&v143 * 0.0;
        LODWORD(v109) = v109 + 1;
      }

      while (v14 > v109);
LABEL_56:
      ++v69;
      v9 = (v9 + v74);
      ++v76;
      ++v75;
    }

    while (v69 != v14);
  }

  return result;
}