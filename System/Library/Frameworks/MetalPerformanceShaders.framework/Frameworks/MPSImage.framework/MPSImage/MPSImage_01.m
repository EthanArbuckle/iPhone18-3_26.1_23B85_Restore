void *sub_23995D1B4(uint64_t a1, double *a2)
{
  *(a1 + 312) = 1;
  *(a1 + 336) = 3;
  *(a1 + 340) = 3;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0;
  if (a2)
  {
    v3 = a2[1];
    v4 = *a2;
    *(a1 + 288) = v4;
    v5 = v3;
    *(a1 + 292) = v5;
    v6 = a2[2];
    *(a1 + 296) = v6;
  }

  *(a1 + 360) = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0;
  *(a1 + 344) = 0;
  *(a1 + 376) = malloc_type_malloc(0x70uLL, 0x100004052888210uLL);
  *(a1 + 308) = 12;
  *(a1 + 368) = malloc_type_malloc(8uLL, 0x100004052888210uLL);
  *(a1 + 304) = 2;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0;
  *(a1 + 348) = 0;
  *(a1 + 356) = 0;
  *(a1 + 352) = 0;
  if (*(a1 + 316) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8;
    do
    {
      *(*(a1 + 368) + 4 * v8) = (v9 - 8);
      v10 = 4 * (v9 - 8);
      *(*(a1 + 376) + v10) = 1065353216;
      *(*(a1 + 376) + v10 + 8) = 0;
      *(*(a1 + 376) + v10 + 12) = 0;
      v11 = 4 * (v9 - 4);
      *(*(a1 + 376) + v11) = 0;
      *(*(a1 + 376) + v11 + 4) = 1065353216;
      *(*(a1 + 376) + v11 + 12) = 0;
      v12 = 4 * v9;
      *(*(a1 + 376) + v12) = 0;
      *(*(a1 + 376) + v12 + 4) = 0;
      *(*(a1 + 376) + v12 + 8) = 1065353216;
      v8 += 2;
      ++v7;
      v9 += 12;
    }

    while (v7 < *(a1 + 316));
  }

  v13 = *(a1 + 360);
  *(v13 + 8) = 0x100000001;
  *v13 = 0;
  result = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  *(a1 + 400) = result;
  return result;
}

void sub_23995D4C4(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a2;
  v9 = *(a1 + 312);
  if (v9 < 1)
  {
    goto LABEL_81;
  }

  v10 = 0;
  v11 = *(a1 + 376) + 4 * *(a1 + 308) + 32;
  v12 = 0x7FFFFFFF;
  do
  {
    while (1)
    {
      v13 = v12;
      a2 = a1 + 360;
      v14 = *(a1 + 360);
      v15 = (v14 + 16 * v10);
      v12 = *(v15 + 2);
      if (v12 != 1 || v13 != 1)
      {
        goto LABEL_4;
      }

      v17 = v10 - 1;
      v18 = *(v14 + 16 * v17);
      v19 = v9 - 1;
      if (v9 < 1)
      {
        break;
      }

      v20 = 0;
      a7 = v17 + 1;
      do
      {
        while (v20 == v17)
        {
          v20 = v17 + 1;
          if (a7 >= v9)
          {
            goto LABEL_17;
          }
        }

        v21 = *(v14 + 16 * v20++);
      }

      while (v20 < v9 && v18 != v21);
      if (v18 != v21)
      {
        break;
      }

LABEL_3:
      v12 = 1;
LABEL_4:
      if (++v10 >= v9)
      {
        goto LABEL_26;
      }
    }

LABEL_17:
    v22 = *(a1 + 368);
    v23 = (v22 + 4 * v18);
    v24 = v23[1];
    if ((v24 & 2) != 0)
    {
      goto LABEL_3;
    }

    v25 = (v22 + 4 * *v15);
    v26 = v25[1];
    if ((v26 & 4) != 0)
    {
      goto LABEL_3;
    }

    v27 = *(a1 + 376);
    v28 = v27 + 4 * *v23;
    a2 = v27 + 4 * *v25;
    v29 = *(v28 + 8);
    v30 = *(v28 + 12);
    v31 = *(v28 + 24);
    v32 = *(v28 + 28);
    v33 = *(a2 + 12) + *a2 * v30 + *(a2 + 4) * v32;
    v34 = *(v28 + 40);
    v35 = *(v28 + 44);
    v36 = *(a2 + 28) + v30 * *(a2 + 16) + v32 * *(a2 + 20) + v35 * *(a2 + 24);
    v37 = *(a2 + 44) + v30 * *(a2 + 32) + v32 * *(a2 + 36) + v35 * *(a2 + 40);
    *&v33 = v33 + *(a2 + 8) * v35;
    *(v28 + 12) = LODWORD(v33);
    *&v33 = v36;
    *(v28 + 28) = LODWORD(v33);
    *&v33 = v37;
    *(v28 + 44) = LODWORD(v33);
    LODWORD(v36) = *(v28 + 4);
    v38 = *v28;
    LODWORD(v32) = *(v28 + 20);
    v39 = *(v28 + 16);
    v40 = v39 * *(a2 + 4) + v38 * *a2;
    v41 = v39 * *(a2 + 20) + v38 * *(a2 + 16);
    v42 = v39 * *(a2 + 36) + v38 * *(a2 + 32);
    v43 = *(v28 + 36);
    v44 = *(v28 + 32);
    v45 = v41 + v44 * *(a2 + 24);
    v46 = v42 + v44 * *(a2 + 40);
    *&v44 = v40 + v44 * *(a2 + 8);
    *v28 = LODWORD(v44);
    *&v44 = v45;
    *(v28 + 16) = LODWORD(v44);
    *&v46 = v46;
    *(v28 + 32) = LODWORD(v46);
    v47 = *&v36;
    v48 = *&v32;
    v49 = *&v32 * *(a2 + 4) + v47 * *a2;
    v50 = *&v32 * *(a2 + 20) + v47 * *(a2 + 16) + v43 * *(a2 + 24);
    v51 = v48 * *(a2 + 36) + v47 * *(a2 + 32) + v43 * *(a2 + 40);
    *&v48 = v49 + v43 * *(a2 + 8);
    *(v28 + 4) = LODWORD(v48);
    *&v48 = v50;
    *(v28 + 20) = LODWORD(v48);
    *&v51 = v51;
    *(v28 + 36) = LODWORD(v51);
    v52 = v29;
    v53 = v31;
    v54 = v34;
    v55 = v53 * *(a2 + 4) + v52 * *a2 + v54 * *(a2 + 8);
    v56 = v53 * *(a2 + 20) + v52 * *(a2 + 16) + v54 * *(a2 + 24);
    a3.n128_f64[0] = v53 * *(a2 + 36) + v52 * *(a2 + 32) + v54 * *(a2 + 40);
    *&v52 = v55;
    *(v28 + 8) = LODWORD(v52);
    *&v52 = v56;
    *(v28 + 24) = LODWORD(v52);
    a3.n128_f32[0] = a3.n128_f64[0];
    *(v28 + 40) = a3.n128_u32[0];
    v23[1] = v26 & 2 | v24 & 4;
    if (v10 < v19)
    {
      v57 = v19 - v10;
      v58 = 16 * v10;
      do
      {
        v59 = (*(a1 + 360) + v58);
        a3 = v59[1];
        *v59 = a3;
        v58 += 16;
        --v57;
      }

      while (v57);
    }

    v60 = 8 * v10;
    v61 = 8 * v9;
    if (v60 < v61)
    {
      v62 = v61 - v60;
      v63 = v11 + 4 * v60;
      do
      {
        a3 = *v63;
        v64 = *(v63 + 16);
        *(v63 - 32) = *v63;
        *(v63 - 16) = v64;
        v63 += 32;
        v62 -= 8;
      }

      while (v62);
    }

    v12 = *(*(a1 + 360) + 16 * v17 + 8);
    v9 = v19;
    v10 = v17 + 1;
  }

  while (v17 + 1 < v19);
LABEL_26:
  *(a1 + 312) = v9;
  if (v9 < 1)
  {
LABEL_81:
    v69 = 0;
    v68 = 0;
    v66 = 0;
    v114 = 64;
    v115 = 8;
    v116 = 128;
    v117 = 32;
    goto LABEL_94;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  a2 = 0xFFFFFFFFLL;
  a3.n128_u64[0] = 0x40C8E06B3C4FCDACLL;
  v70 = 1;
  v71 = 1;
  v72 = 1;
  v73 = 1;
  a7 = 1;
  do
  {
    v74 = 0;
    v75 = (*(a1 + 360) + 16 * v65);
    v76 = *(v75 + 2);
    if (v65 >= 8)
    {
      v77 = 0;
    }

    else
    {
      v77 = (v76 - 1) << (4 * v65);
    }

    if (v76 > 3)
    {
      if ((v76 - 4) >= 6)
      {
        goto LABEL_29;
      }

LABEL_35:
      v74 = *(*(a1 + 368) + 4 * *v75 + 20);
      goto LABEL_29;
    }

    if (v76 == 1)
    {
      v74 = *(*(a1 + 368) + 4 * *v75 + 4);
      goto LABEL_29;
    }

    if (v76 == 2)
    {
      goto LABEL_35;
    }

    if (v76 != 3)
    {
      goto LABEL_29;
    }

    v78 = *(v75 + 3);
    if (v78 < 1)
    {
      v83 = 0;
      v74 = 0;
    }

    else
    {
      v79 = *(a1 + 368);
      v80 = (v79 + 4 * *v75);
      v74 = v80[2];
      v81 = *(v80 + 2);
      if (v81 == 6)
      {
        v82 = (*(a1 + 376) + 4 * *v80);
        a7 = ((v82[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v82, xmmword_239988C60))))) & a7;
      }

      v71 &= (v74 & 1) == 0;
      v70 &= v74;
      v83 = 1 << v81;
      if (v78 != 1)
      {
        v84 = (v79 + 4 * v75[1]);
        v85 = v84[2];
        v86 = *(v84 + 2);
        if (v86 == 6)
        {
          v87 = (*(a1 + 376) + 4 * *v84);
          a7 = ((v87[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v87, xmmword_239988C60))))) & a7;
        }

        v74 |= v85;
        v71 &= (v84[2] & 1) == 0;
        v70 &= v85;
        v83 |= 1 << v86;
        if (v78 != 2)
        {
          v88 = (v79 + 4 * v75[2]);
          v89 = v88[2];
          v90 = *(v88 + 2);
          if (v90 == 6)
          {
            v91 = (*(a1 + 376) + 4 * *v88);
            a7 = ((v91[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v91, xmmword_239988C60))))) & a7;
          }

          v74 |= v89;
          v71 &= (v88[2] & 1) == 0;
          v70 &= v89;
          v83 |= 1 << v90;
          if (v78 != 3)
          {
            v92 = (v79 + 4 * v75[3]);
            v93 = v92[2];
            v74 |= v93;
            v71 &= (v93 & 1) == 0;
            v70 &= v93;
            v94 = *(v92 + 2);
            v83 |= 1 << v94;
            if (v94 == 6)
            {
              v95 = (*(a1 + 376) + 4 * *v92);
              a7 = ((v95[1].f32[0] == 18.688) & ~vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v95, xmmword_239988C60))))) & a7;
            }
          }
        }
      }
    }

    v67 |= v83;
    v96 = (v78 == a2) & v73;
    v97 = a2 < 0;
    if (a2 < 0)
    {
      a2 = v78;
    }

    else
    {
      a2 = a2;
    }

    if (!v97)
    {
      v73 = v96;
    }

    if (v78 >= 4)
    {
      v98 = 4;
    }

    else
    {
      v98 = *(v75 + 3);
    }

    if (v68 <= v98)
    {
      v68 = v98;
    }

    if (((v83 >> 6) & ((v83 >> 6) - 1)) != 0)
    {
LABEL_79:
      v72 = 0;
      goto LABEL_29;
    }

    if (v78 < 2)
    {
      goto LABEL_29;
    }

    v99 = 1;
    do
    {
      if (v99 > 3)
      {
LABEL_70:
        v109 = 1;
        if (++v99 >= v78)
        {
          break;
        }

        continue;
      }

      v100 = *(a1 + 368);
      v101 = (v100 + 4 * *v75);
      v102 = (v100 + 4 * v75[v99]);
      if (*(v102 + 2) == 5)
      {
        v103 = *(v102 + 3);
        if (v103 != *(v101 + 3))
        {
          goto LABEL_79;
        }

        if (!*(v102 + 3))
        {
          goto LABEL_70;
        }

        v104 = *v101;
        v105 = *v102;
        v106 = *(a1 + 376);
        v107 = v106 + 4 * v104;
        v108 = v106 + 4 * v105;
      }

      else
      {
        v110 = *v101;
        v111 = *v102;
        v112 = *(a1 + 376);
        v107 = v112 + 4 * v110;
        v108 = v112 + 4 * v111;
        v103 = 9;
      }

      v113 = 0;
      do
      {
        v109 = *(v107 + 4 * v113) == *(v108 + 4 * v113);
        ++v113;
      }

      while (v113 < v103 && v109);
      if (++v99 >= v78)
      {
        break;
      }
    }

    while (v109);
    if (!v109)
    {
      goto LABEL_79;
    }

LABEL_29:
    v69 |= v77;
    v66 |= (v74 & 2 | (v74 >> 2) & 1) << v65++;
  }

  while (v65 != v9);
  if (v72)
  {
    v118 = 64;
  }

  else
  {
    v118 = 0;
  }

  v114 = v118 | (v67 << 8);
  if (v73)
  {
    v115 = 8;
  }

  else
  {
    v115 = 0;
  }

  if (a7)
  {
    v116 = 128;
  }

  else
  {
    v116 = 0;
  }

  if (v70)
  {
    v117 = 32;
    goto LABEL_94;
  }

  v117 = 0;
  v119 = 0;
  if (v71)
  {
LABEL_94:
    v119 = 16;
  }

  *(a1 + 348) = v66;
  *(a1 + 352) = v119 | v114 | v115 | v68 | v116 | v117;
  *(a1 + 356) = v69;
  v120 = *(a1 + 308);
  *(a1 + 416) = v120;
  *(a1 + 408) = objc_msgSend_newBufferWithBytes_length_options_(v7, a2, *(a1 + 376), 32 * v9 + 4 * v120 + 32, 0, a7, a3.n128_f64[0]);
  v174 = objc_alloc_init(MEMORY[0x277CD7058]);
  objc_msgSend_setPixelFormat_(v174, v121, 110, v122, v123, v124);
  objc_msgSend_setWidth_(v174, v125, 1, v126, v127, v128);
  objc_msgSend_setHeight_(v174, v129, 1, v130, v131, v132);
  objc_msgSend_setDepth_(v174, v133, 1, v134, v135, v136);
  v137 = (*(**(a1 + *MEMORY[0x277CD7350]) + 24))(*(a1 + *MEMORY[0x277CD7350]));
  objc_msgSend_setStorageMode_(v174, v138, v137, v139, v140, v141);
  objc_msgSend_setUsage_(v174, v142, 1, v143, v144, v145);
  objc_msgSend_setTextureType_(v174, v146, 0, v147, v148, v149);
  **(a1 + 400) = objc_msgSend_newTextureWithDescriptor_(v7, v150, v174, v151, v152, v153);
  objc_msgSend_setTextureType_(v174, v154, 2, v155, v156, v157);
  *(*(a1 + 400) + 8) = objc_msgSend_newTextureWithDescriptor_(v7, v158, v174, v159, v160, v161);
  objc_msgSend_setTextureType_(v174, v162, 7, v163, v164, v165);
  *(*(a1 + 400) + 16) = objc_msgSend_newTextureWithDescriptor_(v7, v166, v174, v167, v168, v169);
  *(*(a1 + 400) + 24) = objc_msgSend_newTextureWithDescriptor_(v7, v170, v174, v171, v172, v173);
}

void *sub_23995E98C(void *a1, const char *a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *a4 = 0;
  *a3 = 0;
  if (objc_msgSend_decodeBoolForKey_(a1, a2, a2, a4, a5, a6))
  {
    v33 = 0;
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_initWithFormat_(v10, v11, @"%@%@", v12, v13, v14, a2, @".length");
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = objc_msgSend_initWithFormat_(v16, v17, @"%@%@", v18, v19, v20, a2, @".data");
    v26 = objc_msgSend_decodeInt64ForKey_(a1, v22, v15, v23, v24, v25);
    v30 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v27, v21, &v33, v28, v29);

    if (v30 && 4 * v26 == v33)
    {
      result = malloc_type_malloc(4 * v26, 0x100004052888210uLL);
      if (result)
      {
        v32 = result;
        MPSCopyToFromNetworkByteOrder32();
        result = v32;
        *a4 = 1;
        *a3 = v26;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_23995EACC(void *a1, void *a2, const char *a3, uint64_t *a4, _BYTE *a5, uint64_t a6)
{
  if (objc_msgSend_decodeBoolForKey_(a1, a2, a3, a4, a5, a6))
  {
    v13 = sub_23995E98C(a1, a3, a4, a5, v11, v12);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_newBufferWithBytes_length_options_(a2, v14, v13, 4 * *a4, 0, v15);
      free(v16);
      return v17;
    }
  }

  else
  {
    *a5 = 1;
  }

  return 0;
}

uint64_t sub_23995EB78(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v183 = result;
    if (objc_msgSend_decodeBoolForKey_(a1, v9, a3, v10, v11, v12))
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = objc_msgSend_initWithFormat_(v13, v14, @"%@%@", v15, v16, v17, a3, @".width");
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v182 = objc_msgSend_initWithFormat_(v19, v20, @"%@%@", v21, v22, v23, a3, @".heigth");
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v29 = objc_msgSend_initWithFormat_(v24, v25, @"%@%@", v26, v27, v28, a3, @".depth");
      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      v35 = objc_msgSend_initWithFormat_(v30, v31, @"%@%@", v32, v33, v34, a3, @".pixelFormat");
      v36 = objc_alloc(MEMORY[0x277CCACA8]);
      v41 = objc_msgSend_initWithFormat_(v36, v37, @"%@%@", v38, v39, v40, a3, @".textureType");
      v42 = objc_alloc(MEMORY[0x277CCACA8]);
      v47 = objc_msgSend_initWithFormat_(v42, v43, @"%@%@", v44, v45, v46, a3, @".data");
      v48 = objc_alloc_init(MEMORY[0x277CD7058]);
      v53 = objc_msgSend_decodeInt64ForKey_(a1, v49, v35, v50, v51, v52);
      objc_msgSend_setPixelFormat_(v48, v54, v53, v55, v56, v57);
      v62 = objc_msgSend_decodeInt64ForKey_(a1, v58, v18, v59, v60, v61);
      objc_msgSend_setWidth_(v48, v63, v62, v64, v65, v66);
      v71 = objc_msgSend_decodeInt64ForKey_(a1, v67, v182, v68, v69, v70);
      objc_msgSend_setHeight_(v48, v72, v71, v73, v74, v75);
      v80 = objc_msgSend_decodeInt64ForKey_(a1, v76, v29, v77, v78, v79);
      objc_msgSend_setDepth_(v48, v81, v80, v82, v83, v84);
      objc_msgSend_setUsage_(v48, v85, 1, v86, v87, v88);
      v93 = objc_msgSend_decodeInt64ForKey_(a1, v89, v41, v90, v91, v92);
      objc_msgSend_setTextureType_(v48, v94, v93, v95, v96, v97);
      v98 = (*(*v183 + 24))(v183);
      objc_msgSend_setStorageMode_(v48, v99, v98, v100, v101, v102);
      v185 = 0;
      v106 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v103, v47, &v185, v104, v105);

      if (!v106)
      {
        goto LABEL_10;
      }

      v112 = objc_msgSend_width(v48, v107, v108, v109, v110, v111);
      v118 = v112 * objc_msgSend_height(v48, v113, v114, v115, v116, v117);
      v124 = objc_msgSend_depth(v48, v119, v120, v121, v122, v123);
      v125 = malloc_type_malloc(16 * v118 * v124, 0x100004052888210uLL);
      if (!v125)
      {
        goto LABEL_10;
      }

      v131 = v125;
      objc_msgSend_width(v48, v126, v127, v128, v129, v130);
      objc_msgSend_height(v48, v132, v133, v134, v135, v136);
      objc_msgSend_depth(v48, v137, v138, v139, v140, v141);
      MPSCopyToFromNetworkByteOrder32();
      v146 = objc_msgSend_newTextureWithDescriptor_(a2, v142, v48, v143, v144, v145);
      if (v146)
      {
        v152 = v146;
        memset(v184, 0, 24);
        v184[3] = objc_msgSend_width(v48, v147, v148, v149, v150, v151);
        v184[4] = objc_msgSend_height(v48, v153, v154, v155, v156, v157);
        v184[5] = objc_msgSend_depth(v48, v158, v159, v160, v161, v162);
        v168 = 16 * objc_msgSend_width(v48, v163, v164, v165, v166, v167);
        v174 = objc_msgSend_width(v48, v169, v170, v171, v172, v173);
        v180 = objc_msgSend_height(v48, v175, v176, v177, v178, v179);
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v152, v181, v184, 0, 0, v131, v168, 16 * v174 * v180);

        if (v106 != v131)
        {
          free(v131);
        }

        *a4 = 1;
        return v152;
      }

      else
      {
LABEL_10:

        return 0;
      }
    }

    else
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

void sub_23995F540(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_encodeBool_forKey_(a1, a2, a2 != 0, a3, a5, a6);
  if (a2)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_initWithFormat_(v10, v11, @"%@%@", v12, v13, v14, a3, @".length");
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_initWithFormat_(v16, v17, @"%@%@", v18, v19, v20, a3, @".data");
    objc_msgSend_encodeInt64_forKey_(a1, v21, a4, v15, v22, v23);

    v24 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
    if (v24)
    {
      v25 = v24;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(a1, v26, v25, 4 * a4, v28, v27);
      free(v25);
    }
  }
}

uint64_t sub_23995FEE0(void *a1, void *a2)
{
  result = MPSDevice::GetMPSDevice();
  if (result)
  {
    v5 = result;
    v6 = objc_alloc_init(MEMORY[0x277CD7058]);
    v12 = objc_msgSend_pixelFormat(a1, v7, v8, v9, v10, v11);
    objc_msgSend_setPixelFormat_(v6, v13, v12, v14, v15, v16);
    v22 = objc_msgSend_width(a1, v17, v18, v19, v20, v21);
    objc_msgSend_setWidth_(v6, v23, v22, v24, v25, v26);
    v32 = objc_msgSend_height(a1, v27, v28, v29, v30, v31);
    objc_msgSend_setHeight_(v6, v33, v32, v34, v35, v36);
    v42 = objc_msgSend_depth(a1, v37, v38, v39, v40, v41);
    objc_msgSend_setDepth_(v6, v43, v42, v44, v45, v46);
    objc_msgSend_setUsage_(v6, v47, 1, v48, v49, v50);
    v56 = objc_msgSend_textureType(a1, v51, v52, v53, v54, v55);
    objc_msgSend_setTextureType_(v6, v57, v56, v58, v59, v60);
    v61 = (*(*v5 + 24))(v5);
    objc_msgSend_setStorageMode_(v6, v62, v61, v63, v64, v65);
    v71 = objc_msgSend_width(a1, v66, v67, v68, v69, v70);
    v77 = v71 * objc_msgSend_height(a1, v72, v73, v74, v75, v76);
    v83 = objc_msgSend_depth(a1, v78, v79, v80, v81, v82);
    v84 = malloc_type_malloc(16 * v77 * v83, 0x100004052888210uLL);
    if (v84)
    {
      v89 = v84;
      v90 = objc_msgSend_newTextureWithDescriptor_(a2, v85, v6, v86, v87, v88);
      if (v90)
      {
        v96 = v90;
        v97 = objc_msgSend_width(v6, v91, v92, v93, v94, v95);
        v103 = objc_msgSend_height(v6, v98, v99, v100, v101, v102);
        v109 = objc_msgSend_depth(v6, v104, v105, v106, v107, v108);
        v115 = 16 * objc_msgSend_width(v6, v110, v111, v112, v113, v114);
        v121 = objc_msgSend_width(v6, v116, v117, v118, v119, v120);
        v127 = objc_msgSend_height(v6, v122, v123, v124, v125, v126);
        memset(v148, 0, 24);
        v148[3] = v97;
        v148[4] = v103;
        v148[5] = v109;
        objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(a1, v128, v89, v115, 16 * v121 * v127, v148, 0, 0);
        v134 = 16 * objc_msgSend_width(v6, v129, v130, v131, v132, v133, 0, 0, 0, v97, v103, v109);
        v140 = objc_msgSend_width(v6, v135, v136, v137, v138, v139);
        v146 = objc_msgSend_height(v6, v141, v142, v143, v144, v145);
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v96, v147, v148, 0, 0, v89, v134, 16 * v140 * v146);

        free(v89);
        return v96;
      }

      free(v89);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_2399606AC()
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 5);
  if (result)
  {
    v1 = result;
    off_27DF85530 = dlsym(result, "CGColorConversionInfoIterateFunctionsWithCallbacks");
    qword_27DF85538 = dlsym(v1, "CGColorMatrixGetMatrix");
    qword_27DF85540 = dlsym(v1, "CGColorTRCGetFunction");
    qword_27DF85548 = dlsym(v1, "CGColorNxMLUTGetLUT");
    qword_27DF85550 = dlsym(v1, "CGColorFunctionGetOptions");
    qword_27DF85558 = dlsym(v1, "CGColorFunctionGetInputRange");
    qword_27DF85560 = dlsym(v1, "CGColorFunctionGetOutputRange");
    result = dlsym(v1, "CGColorFunctionGetProperties");
    qword_27DF85568 = result;
  }

  return result;
}

uint64_t sub_239960784(uint64_t a1, uint64_t a2)
{
  v397 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  v5 = *(a2 + 28);
  v6 = *(a2 + 36);
  v378 = *(a2 + 44);
  v376 = *(a2 + 52);
  v7 = *(a2 + 60);
  v386 = *(a2 + 68);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 424);
  v385 = *(v9 + 440);
  v11 = *(v9 + 432);
  v12 = *(v9 + 472);
  v367 = *(v9 + *MEMORY[0x277CD7350]);
  v368 = v367[2];
  *(v9 + 312) = v2;
  *(v9 + 336) = v3;
  *(v9 + 340) = v4;
  *(v9 + 288) = 0;
  *(v9 + 292) = 0;
  *(v9 + 296) = 0;
  *(v9 + 300) = 0;
  if (v8)
  {
    if (v3 > 0)
    {
      v13 = *v8;
      *(v9 + 288) = v13;
      if (v3 << 32 != 0x100000000)
      {
        v14 = v8[1];
        *(v9 + 292) = v14;
        if (v3 >= 3)
        {
          v15 = v8[2];
          *(v9 + 296) = v15;
          if (v3 << 32 != 0x300000000)
          {
            v16 = v8[3];
            *(v9 + 300) = v16;
          }
        }
      }
    }
  }

  v380 = v10;
  v369 = v12;
  v375 = v11;
  *(v9 + 360) = malloc_type_malloc(16 * v2, 0x1000040451B5BE8uLL);
  *(v9 + 400) = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
  v374 = v9;
  *(v9 + 392) = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  v377 = v5;
  v17 = 0;
  if (v5 >= 1)
  {
    v18 = v5;
    v19 = v376;
    do
    {
      v20 = *v19++;
      memset(v388, 0, 36);
      v375(v388, v20);
      if (SLODWORD(v388[0]) <= 5 && LODWORD(v388[0]) >= 5)
      {
        v17 += DWORD1(v388[0]) + 6;
      }

      else
      {
        v17 += 9;
      }

      --v18;
    }

    while (v18);
  }

  v372 = v2 << 32;
  if (v378 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v379 = 0;
    v24 = 0;
    v25 = v374;
    while (1)
    {
      v26 = *(v386 + 8 * v22);
      memset(v388, 0, 36);
      v385(v388, v26);
      if ((LODWORD(v388[0]) - 7) <= 1)
      {
        ++v24;
        v23 += 6;
      }

      else
      {
        switch(LODWORD(v388[0]))
        {
          case 0xB:
            ++v24;
            v23 += *(*(&v388[1] + 12) + 28) + 8;
            break;
          case 0xA:
            ++v24;
            v23 += 17;
            break;
          case 9:
            ++v24;
            v23 += 516;
            break;
          default:
            v27 = HIDWORD(v388[0]);
            if (*(v388 + 12) == 3)
            {
              v27 = 4;
            }

            if (SDWORD1(v388[0]) < 1)
            {
              v29 = 1;
            }

            else
            {
              if (DWORD1(v388[0]) == 1)
              {
                v28 = 0;
                v29 = 1;
                goto LABEL_36;
              }

              v28 = DWORD1(v388[0]) & 0x7FFFFFFE;
              v30 = DWORD1(v388[0]) & 0x7FFFFFFE;
              v31 = 1;
              v32 = 1;
              do
              {
                v31 *= DWORD1(v388[1]);
                v32 *= DWORD1(v388[1]);
                v30 -= 2;
              }

              while (v30);
              v29 = v32 * v31;
              if (v28 != DWORD1(v388[0]))
              {
LABEL_36:
                v33 = DWORD1(v388[0]) - v28;
                do
                {
                  v29 *= DWORD1(v388[1]);
                  --v33;
                }

                while (v33);
              }
            }

            ++v379;
            v23 += v29 * v27;
            break;
        }
      }

      if (++v22 == v378)
      {
        goto LABEL_40;
      }
    }
  }

  v24 = 0;
  v379 = 0;
  v23 = 0;
  v25 = v374;
LABEL_40:
  v34 = v17 + 12 * v6 + v23;
  *(v25 + 376) = malloc_type_malloc(4 * ((v372 >> 29) + v34) + 32, 0x100004052888210uLL);
  *(v25 + 308) = v34;
  *(v25 + 368) = malloc_type_malloc(8 * v6 + 16 * v377 + 24 * v378, 0x100004052888210uLL);
  *(v25 + 304) = (8 * v6 + 16 * v377 + 24 * v378) >> 2;
  *(v25 + 316) = v6;
  *(v25 + 320) = v379;
  *(v25 + 324) = v378;
  *(v25 + 328) = v377;
  *(v25 + 332) = v24;
  v35 = malloc_type_calloc(v378, 8uLL, 0x80040B8603338uLL);
  result = 0;
  *(v25 + 384) = v35;
  if (!*(v25 + 360) || !v35)
  {
    goto LABEL_256;
  }

  if (!*(v25 + 400) || !*(v25 + 392) || !*(v25 + 376) || !*(v25 + 368))
  {
LABEL_255:
    result = 0;
    goto LABEL_256;
  }

  v37 = v25 + 8;
  if (v6 >= 1)
  {
    LODWORD(v38) = 0;
    v39 = 0;
    v40 = v25 + 16;
    v41 = v369;
    do
    {
      v42 = *v7++;
      memset(v388, 0, 48);
      v380(v388, v42);
      v43 = v39;
      v44 = (*(v37 + 360) + 4 * v39);
      *v44 = v38;
      v44[1] = v369(v42) & 0xF;
      *(*(v40 + 360) + 4 * v38) = v388[0];
      *(*(v40 + 360) + 4 * (v38 + 4)) = v388[1];
      *(*(v40 + 360) + 4 * (v38 + 8)) = v388[2];
      v38 = (v38 + 12);
      v39 = v43 + 2;
      --v6;
    }

    while (v6);
    v45 = v374;
    v46 = v374 + 16;
    if (v378 >= 1)
    {
      goto LABEL_50;
    }

LABEL_211:
    v312 = 0;
    goto LABEL_220;
  }

  v39 = 0;
  v38 = 0;
  v41 = v369;
  v45 = v374;
  v46 = v374 + 16;
  if (v378 < 1)
  {
    goto LABEL_211;
  }

LABEL_50:
  v47 = 0;
  v360 = v45 + 24;
  v358 = &v397;
  __asm { FMOV            V0.2D, #1.0 }

  v359 = _Q0;
  v51 = v38;
  v373 = v37;
  do
  {
    v55 = *(v386 + 8 * v47);
    v56 = v51;
    memset(v387, 0, 36);
    v385(v387, v55);
    v57 = *(v37 + 360) + 4 * v39;
    if (v387[0].i32[0] <= 8)
    {
      if (v387[0].i32[0] == 7 || v387[0].i32[0] == 8)
      {
        *v57 = v51;
        *(v57 + 20) = v41(v55) & 0xF;
        *(v57 + 12) = 0;
        *(v57 + 4) = 0x300000003;
        v52 = *(&v387[1].i64[1] + 4);
        v53 = 4 * v51;
        *(*(v46 + 360) + v53) = *(*(&v387[1].i64[1] + 4) + 4);
        *(*(v46 + 360) + v53 + 4) = *v52;
        v54 = 4 * (v51 + 2);
        *(*(v46 + 360) + v54) = v52[2];
        *(*(v46 + 360) + v54 + 4) = v52[3];
        *(*(v46 + 360) + v54 + 8) = v52[4];
        v51 = (v51 + 6);
        *(*(v46 + 360) + v54 + 12) = v52[5];
LABEL_52:
        v37 = v373;
        goto LABEL_53;
      }

LABEL_64:
      *(v57 + 12) = v387[1].i32[1];
      *(v57 + 4) = vmovn_s64(*(v387 + 4));
      *v57 = v51;
      *(v57 + 20) = v41(v55) & 0xF;
      if (v387[0].i64[0] <= 0)
      {
        v78 = *(&v387[0].u64[1] + 4);
        v79 = *(&v387[0].i64[1] + 4) == 3;
        if (*(&v387[0].i64[1] + 4) == 3)
        {
          v80 = 4;
        }

        else
        {
          v80 = *(&v387[0].u64[1] + 4);
        }

        v396 = xmmword_239988C70;
        v363 = v80;
        v81 = v387[0].i32[0];
        v366 = v51;
        v362 = v39;
        v361 = v47;
        if (v387[0].i32[0])
        {
          goto LABEL_108;
        }

        goto LABEL_73;
      }

      v66 = v387[1].i32[1];
      if (v387[0].i32[1] == 1)
      {
        v67 = 0;
        v68 = 1;
      }

      else
      {
        v67 = v387[0].i32[1] & 0x7FFFFFFE;
        v110 = v387[0].i32[1] & 0x7FFFFFFE;
        v111 = 1;
        v112 = 1;
        do
        {
          v111 *= *(v387[1].i64 + 4);
          v112 *= *(v387[1].i64 + 4);
          v110 -= 2;
        }

        while (v110);
        v68 = v112 * v111;
        if (v67 == v387[0].i32[1])
        {
LABEL_97:
          v78 = *(&v387[0].u64[1] + 4);
          v79 = *(&v387[0].i64[1] + 4) == 3;
          v396 = xmmword_239988C70;
          v114 = v387[0].i32[1] & 0x7FFFFFFF;
          if (v114 > 7)
          {
            v116 = v387[0].i8[4] & 7;
            v115 = v114 - v116;
            v117 = vdupq_n_s32(v387[1].u32[1]);
            v118 = v114 - v116;
            v119 = v358;
            do
            {
              v119[-1] = v117;
              *v119 = v117;
              v119 += 2;
              v118 -= 8;
            }

            while (v118);
            if (!v116)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v115 = 0;
          }

          v120 = v114 - v115;
          v121 = &v396 + v115;
          do
          {
            *v121++ = v66;
            --v120;
          }

          while (v120);
LABEL_104:
          if (v78 == 3)
          {
            v80 = 4;
          }

          else
          {
            v80 = v78;
          }

          v363 = v80 * v68;
          v81 = v387[0].i32[0];
          v366 = v51;
          v362 = v39;
          v361 = v47;
          if (v387[0].i32[0])
          {
LABEL_108:
            v83 = v51;
            if (v81 != 2)
            {
              goto LABEL_177;
            }

            v122 = v396;
            v83 = v51;
            if (v396 < 1)
            {
              goto LABEL_177;
            }

            v123 = DWORD1(v396);
            v83 = v51;
            if (SDWORD1(v396) < 1)
            {
              goto LABEL_177;
            }

            v124 = DWORD2(v396);
            v83 = v51;
            if (SDWORD2(v396) < 1)
            {
              goto LABEL_177;
            }

            v125 = HIDWORD(v396);
            v83 = v51;
            if (SHIDWORD(v396) < 1)
            {
              goto LABEL_177;
            }

            if (!v78)
            {
              v83 = (v51 + v396 * v80 * DWORD1(v396) * DWORD2(v396) * HIDWORD(v396));
              goto LABEL_177;
            }

            v126 = *(&v387[1].i64[1] + 4);
            v127 = 4 * v51;
            v128 = 4 * v80;
            v129 = 0;
            if (v79)
            {
              v130 = 0;
              v131 = 4;
              if (v80 > 4)
              {
                v131 = v80;
              }

              v132 = v131 - 3;
              v133 = v127 + 12;
              v134 = v128 * v396;
              v135 = v134 * DWORD1(v396);
              v94 = 1;
              LODWORD(v83) = v51;
              do
              {
                v371 = v83;
                v136 = 0;
                v382 = v133;
                v137 = v133;
                do
                {
                  v138 = 0;
                  v139 = v137;
                  do
                  {
                    v140 = 0;
                    v141 = v139;
                    do
                    {
                      v142 = *(v126 + 4 * v130);
                      v143 = 4 * (v129 + (v136 + (v138 + v140 * v124) * v123) * v122) * v80;
                      *(*(v46 + 360) + v127 + v143) = v142;
                      v144 = *(v126 + 4 + 4 * v130);
                      *(*(v46 + 360) + v127 + v143 + 4) = v144;
                      v145 = *(v126 + 8 + 4 * v130);
                      v146 = v130;
                      *(*(v46 + 360) + v127 + v143 + 8) = v145;
                      v147 = v141;
                      v148 = v132;
                      do
                      {
                        *(*(v46 + 360) + v147) = 0;
                        v147 += 4;
                        --v148;
                      }

                      while (v148);
                      v150 = v142 <= 1.0 && v142 >= 0.0;
                      v152 = v144 <= 1.0 && v144 >= 0.0;
                      v154 = v145 <= 1.0 && v145 >= 0.0;
                      v130 = v146 + 3;
                      v94 &= v154 && v152 && v150;
                      ++v140;
                      v141 += v135 * v124;
                    }

                    while (v140 != v125);
                    ++v138;
                    v139 += v135;
                  }

                  while (v138 != v124);
                  ++v136;
                  v137 += v134;
                }

                while (v136 != v123);
                v83 = (v371 + v123 * v80 * v124 * v125);
                ++v129;
                v133 = v382 + 4 * v80;
                v56 = v366;
              }

              while (v129 != v122);
            }

            else
            {
              LODWORD(v167) = 0;
              v168 = v128 * v396 * DWORD1(v396);
              v94 = 1;
              LODWORD(v83) = v51;
              do
              {
                v169 = 0;
                v170 = v127;
                do
                {
                  v171 = 0;
                  v172 = v170;
                  do
                  {
                    v173 = 0;
                    v174 = v172;
                    do
                    {
                      v167 = v167;
                      v175 = v174;
                      v176 = v78;
                      do
                      {
                        v177 = *(v126 + 4 * v167++);
                        *(*(v46 + 360) + v175) = v177;
                        v179 = v177 <= 1.0 && v177 >= 0.0;
                        v94 &= v179;
                        v175 += 4;
                        --v176;
                      }

                      while (v176);
                      ++v173;
                      v174 += v168 * v124;
                    }

                    while (v173 != v125);
                    ++v171;
                    v172 += v168;
                  }

                  while (v171 != v124);
                  ++v169;
                  v170 += v128 * v122;
                }

                while (v169 != v123);
                v83 = (v83 + v123 * v80 * v124 * v125);
                ++v129;
                v127 += v128;
              }

              while (v129 != v122);
            }

            goto LABEL_175;
          }

LABEL_73:
          v82 = v396;
          v83 = v51;
          if (v396 < 1)
          {
            goto LABEL_177;
          }

          v83 = v51;
          v381 = DWORD1(v396);
          if (SDWORD1(v396) < 1)
          {
            goto LABEL_177;
          }

          v84 = DWORD2(v396);
          v83 = v51;
          if (SDWORD2(v396) < 1)
          {
            goto LABEL_177;
          }

          v85 = HIDWORD(v396);
          v83 = v51;
          if (SHIDWORD(v396) < 1)
          {
            goto LABEL_177;
          }

          if (!v78)
          {
            v83 = (v51 + v396 * v80 * DWORD1(v396) * DWORD2(v396) * HIDWORD(v396));
            goto LABEL_177;
          }

          v86 = *(&v387[1].i64[1] + 4);
          v365 = DWORD1(v396) * v80 * DWORD2(v396) * HIDWORD(v396);
          v87 = 4 * v51;
          v88 = 0;
          if (v79)
          {
            v89 = 0;
            v90 = 4;
            if (v80 > 4)
            {
              v90 = v80;
            }

            v91 = v90 - 3;
            v92 = v87 + 12;
            v93 = 4 * v80 * v396;
            v94 = 1;
            LODWORD(v83) = v51;
            do
            {
              v370 = v83;
              v95 = 0;
              v364 = v92;
              do
              {
                v96 = 0;
                v97 = v92;
                do
                {
                  v98 = 0;
                  v99 = v97;
                  do
                  {
                    v100 = *(v86 + 2 * v89);
                    v101 = vcvts_n_f32_u32(v100, 8uLL) + (v100 >> 8);
                    v102 = 4 * (v88 + (v95 + (v96 + v98 * v84) * v381) * v82) * v80;
                    *(*(v46 + 360) + v87 + v102) = v101;
                    v103 = *(v86 + 2 + 2 * v89);
                    v104 = vcvts_n_f32_u32(v103, 8uLL) + (v103 >> 8);
                    *(*(v46 + 360) + v87 + v102 + 4) = v104;
                    v105 = *(v86 + 4 + 2 * v89);
                    v106 = v89;
                    v107 = vcvts_n_f32_u32(v105, 8uLL) + (v105 >> 8);
                    *(*(v46 + 360) + v87 + v102 + 8) = v107;
                    v108 = v99;
                    v109 = v91;
                    do
                    {
                      *(*(v46 + 360) + v108) = 0;
                      v108 += 4;
                      --v109;
                    }

                    while (v109);
                    v89 = v106 + 3;
                    v94 &= fmaxf(fmaxf(v107, v104), v101) <= 1.0;
                    ++v98;
                    v99 += v93 * v381 * v84;
                  }

                  while (v98 != v85);
                  ++v96;
                  v97 += v93 * v381;
                }

                while (v96 != v84);
                ++v95;
                v92 += v93;
              }

              while (v95 != v381);
              v83 = (v370 + v365);
              ++v88;
              v92 = v364 + 4 * v80;
              v56 = v366;
            }

            while (v88 != v82);
          }

          else
          {
            LODWORD(v155) = 0;
            v156 = 4 * v80 * v396;
            v157 = v156 * SDWORD1(v396);
            v94 = 1;
            LODWORD(v83) = v51;
            do
            {
              v158 = 0;
              v159 = v87;
              do
              {
                v160 = 0;
                v161 = v159;
                do
                {
                  v162 = 0;
                  v163 = v161;
                  do
                  {
                    v155 = v155;
                    v164 = v163;
                    v165 = v78;
                    do
                    {
                      v166 = vcvts_n_f32_u32(*(v86 + 2 * v155), 8uLL) + HIBYTE(*(v86 + 2 * v155));
                      *(*(v46 + 360) + v164) = v166;
                      ++v155;
                      v94 &= v166 <= 1.0;
                      v164 += 4;
                      --v165;
                    }

                    while (v165);
                    ++v162;
                    v163 += v157 * v84;
                  }

                  while (v162 != v85);
                  ++v160;
                  v161 += v157;
                }

                while (v160 != v84);
                ++v158;
                v159 += v156;
              }

              while (v158 != v381);
              v83 = (v83 + v365);
              ++v88;
              v87 += 4 * v80;
            }

            while (v88 != v82);
          }

LABEL_175:
          if ((v94 & 1) == 0)
          {
            v51 = v83;
            v180 = 0;
            v181 = 115;
            v41 = v369;
LABEL_178:
            v182 = 65;
            if (v180)
            {
              v182 = 60;
            }

            v183 = 25;
            if (v180)
            {
              v183 = 20;
            }

            if (v78 == 1)
            {
              v181 = v183;
            }

            if (v78 == 2)
            {
              v184 = v182;
            }

            else
            {
              v184 = v181;
            }

            v185 = objc_alloc_init(MEMORY[0x277CD7058]);
            objc_msgSend_setPixelFormat_(v185, v186, v184, v187, v188, v189);
            objc_msgSend_setWidth_(v185, v190, *(v387[1].i64 + 4), v191, v192, v193);
            objc_msgSend_setHeight_(v185, v194, *(v387[1].i64 + 4), v195, v196, v197);
            objc_msgSend_setDepth_(v185, v198, *(v387[1].i64 + 4), v199, v200, v201);
            v202 = (*(*v367 + 24))(v367);
            objc_msgSend_setStorageMode_(v185, v203, v202, v204, v205, v206);
            objc_msgSend_setUsage_(v185, v207, 1, v208, v209, v210);
            result = malloc_type_malloc(2 * v363, 0x1000040BDFB0063uLL);
            if (!result)
            {
              goto LABEL_256;
            }

            v215 = result;
            if (v180)
            {
              if (v363 >= 1)
              {
                v216 = v363 & 0x7FFFFFFF;
                v217 = 4 * v56;
                v218 = result;
                do
                {
                  *v218++ = llroundf(*(*(v46 + 360) + v217) * 65535.0);
                  v217 += 4;
                  --v216;
                }

                while (v216);
              }

              v219 = 0;
              v220 = *(v387[0].i64 + 4);
              v39 = v362;
              if (*(v387[0].i64 + 4) <= 2)
              {
                goto LABEL_193;
              }
            }

            else
            {
              v246 = *(v46 + 360);
              MPSConvertFloatToHalf();
              v219 = 0;
              v220 = *(v387[0].i64 + 4);
              v39 = v362;
              if (*(v387[0].i64 + 4) <= 2)
              {
LABEL_193:
                if (v220 != 1)
                {
                  if (v220 != 2)
                  {
                    goto LABEL_206;
                  }

                  objc_msgSend_setDepth_(v185, v211, 1, v212, v213, v214);
                  objc_msgSend_setTextureType_(v185, v221, 2, v222, v223, v224);
                  v219 = objc_msgSend_newTextureWithDescriptor_(v368, v225, v185, v226, v227, v228);
                  v234 = objc_msgSend_width(v185, v229, v230, v231, v232, v233);
                  v240 = objc_msgSend_height(v185, v235, v236, v237, v238, v239);
                  if (!v219)
                  {
                    goto LABEL_206;
                  }

                  memset(v388, 0, 24);
                  *(&v388[1] + 1) = v234;
                  *&v388[2] = v240;
                  *(&v388[2] + 1) = 1;
                  goto LABEL_205;
                }

                objc_msgSend_setHeight_(v185, v211, 1, v212, v213, v214);
                objc_msgSend_setDepth_(v185, v289, 1, v290, v291, v292);
                objc_msgSend_setTextureType_(v185, v293, 0, v294, v295, v296);
                v219 = objc_msgSend_newTextureWithDescriptor_(v368, v297, v185, v298, v299, v300);
                v306 = objc_msgSend_width(v185, v301, v302, v303, v304, v305);
                if (v219)
                {
                  memset(v388, 0, 24);
                  *(&v388[1] + 1) = v306;
                  v388[2] = vdupq_n_s64(1uLL);
LABEL_205:
                  v307 = objc_msgSend_width(v185, v241, v242, v243, v244, v245, v358);
                  objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v219, v308, v388, 0, v215, 2 * v80 * v307);
                }

LABEL_206:

                free(v215);
                *(*(v360 + 360) + 8 * v361) = v219;
                v47 = v361;
                goto LABEL_52;
              }
            }

            if (v220 != 3)
            {
              if (v220 != 4)
              {
                goto LABEL_206;
              }

              objc_msgSend_setDepth_(v185, v211, *(v387[1].i64 + 4) * *(v387[1].i64 + 4), v212, v213, v214);
            }

            objc_msgSend_setTextureType_(v185, v211, 7, v212, v213, v214, v358);
            v219 = objc_msgSend_newTextureWithDescriptor_(v368, v247, v185, v248, v249, v250);
            v256 = objc_msgSend_width(v185, v251, v252, v253, v254, v255);
            v383 = objc_msgSend_height(v185, v257, v258, v259, v260, v261);
            v267 = objc_msgSend_depth(v185, v262, v263, v264, v265, v266);
            if (v219)
            {
              memset(v388, 0, 24);
              *(&v388[1] + 1) = v256;
              *&v388[2] = v383;
              *(&v388[2] + 1) = v267;
              v273 = v39;
              v274 = 2 * v80;
              v275 = objc_msgSend_width(v185, v268, v269, v270, v271, v272) * 2 * v80;
              v384 = objc_msgSend_width(v185, v276, v277, v278, v279, v280);
              v286 = objc_msgSend_height(v185, v281, v282, v283, v284, v285);
              v287 = v384 * v274;
              v39 = v273;
              objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v219, v288, v388, 0, 0, v215, v275, v287 * v286);
            }

            goto LABEL_206;
          }

          v41 = v369;
LABEL_177:
          v51 = v83;
          v180 = 1;
          v181 = 110;
          goto LABEL_178;
        }
      }

      v113 = v387[0].i32[1] - v67;
      do
      {
        v68 *= *(v387[1].i64 + 4);
        --v113;
      }

      while (v113);
      goto LABEL_97;
    }

    if (v387[0].i32[0] == 9)
    {
      *v57 = v51;
      *(v57 + 20) = v41(v55) & 0xF;
      *(v57 + 12) = 0;
      *(v57 + 4) = 0x300000003;
      v69 = *(&v387[1].i64[1] + 4);
      v70 = 4 * v51;
      *(*(v46 + 360) + v70) = *(*(&v387[1].i64[1] + 4) + 56);
      *(*(v46 + 360) + v70 + 4) = *(v69 + 60);
      *(*(v46 + 360) + v70 + 8) = *(v69 + 64);
      *(*(v46 + 360) + 4 * (v51 + 3)) = *(v69 + 68);
      v71 = *(v46 + 360) + 4 * (v51 + 4);
      v72 = *(v69 + 28);
      v73 = vcvtq_f64_f32(*v69);
      v388[2] = vdivq_f64(v359, v73);
      v388[3] = v73;
      v388[4] = vcvtq_f64_f32(*(v69 + 8));
      v389 = *(v69 + 16);
      v74 = *(v69 + 24);
      v73.f64[0] = (*(v69 + 20) - v74);
      v390 = v73.f64[0];
      v391 = 1.0 / v73.f64[0];
      v392 = v74;
      v75 = vcvtq_f64_f32(*(v69 + 36));
      *v388 = v75.f64[0];
      *(v388 + 1) = 1.0 - v75.f64[0];
      *&v388[1] = (v72 * 3.0) - (v75.f64[0] + 2.0);
      *(&v388[1] + 1) = v75.f64[0] + 1.0 - (v72 + v72);
      v393 = v75;
      v394 = 0;
      v395 = 0;
      sub_239963ED8(v388, v71, 0.0, 14.6484375, 2.145214, 12.5032235, 14.6484375);
      sub_239963ED8(v388, v71 + 1024, 937.5, 141.601562, 20.7370687, 120.864494, 141.601562);
      v51 = (v51 + 516);
      goto LABEL_52;
    }

    if (v387[0].i32[0] == 10)
    {
      *v57 = v51;
      *(v57 + 20) = v41(v55) & 0xF;
      *(v57 + 12) = 0;
      *(v57 + 4) = 0x300000003;
      v76 = *(&v387[1].i64[1] + 4);
      v77 = 4 * v51;
      *(*(v46 + 360) + v77) = **(&v387[1].i64[1] + 4);
      *(*(v46 + 360) + v77 + 4) = v76[1];
      *(*(v46 + 360) + v77 + 8) = v76[2];
      *(*(v46 + 360) + v77 + 12) = v76[3];
      *(*(v46 + 360) + v77 + 16) = v76[4];
      *(*(v46 + 360) + v77 + 20) = v76[5];
      *(*(v46 + 360) + v77 + 24) = v76[6];
      *(*(v46 + 360) + v77 + 28) = v76[7];
      *(*(v46 + 360) + v77 + 32) = v76[8];
      *(*(v46 + 360) + v77 + 36) = v76[9];
      *(*(v46 + 360) + v77 + 40) = v76[10];
      *(*(v46 + 360) + v77 + 44) = v76[11];
      *(*(v46 + 360) + v77 + 48) = v76[12];
      *(*(v46 + 360) + v77 + 52) = v76[13];
      *(*(v46 + 360) + v77 + 56) = v76[14];
      *(*(v46 + 360) + v77 + 60) = v76[15];
      v51 = (v51 + 17);
      *(*(v46 + 360) + v77 + 64) = v76[16];
      goto LABEL_52;
    }

    if (v387[0].i32[0] != 11)
    {
      goto LABEL_64;
    }

    *v57 = v51;
    *(v57 + 20) = v41(v55) & 0xF;
    *(v57 + 12) = 0;
    *(v57 + 4) = 0x300000003;
    v58 = *(&v387[1].i64[1] + 4);
    v59 = 4 * v51;
    *(*(v46 + 360) + v59) = **(&v387[1].i64[1] + 4);
    *(*(v46 + 360) + v59 + 4) = *(v58 + 4);
    v60 = v51 + 2;
    v61 = 4 * v60;
    *(*(v46 + 360) + v61) = *(v58 + 8);
    *(*(v46 + 360) + v61 + 4) = *(v58 + 12);
    *(*(v46 + 360) + v61 + 8) = *(v58 + 16);
    *(*(v46 + 360) + v61 + 12) = *(v58 + 20);
    *(*(v46 + 360) + 4 * (v60 + 4)) = *(v58 + 24);
    v62 = *(v58 + 28);
    *(*(v46 + 360) + 4 * (v51 + 7)) = v62;
    v51 = (v51 + 8);
    if (!v62)
    {
      goto LABEL_52;
    }

    v63 = (v58 + 36);
    v64 = 4 * v51;
    v51 = (v56 + v62 + 8);
    v37 = v373;
    do
    {
      v65 = *v63++;
      *(*(v46 + 360) + v64) = v65;
      v64 += 4;
      --v62;
    }

    while (v62);
LABEL_53:
    v39 += 6;
    ++v47;
  }

  while (v47 != v378);
  v309 = *(v360 + 360);
  v310 = v378;
  if (v378 > 7)
  {
    v311 = v378 & 0x7FFFFFFFFFFFFFF8;
    v313 = v309 + 2;
    v314 = 0uLL;
    v315 = v378 & 0x7FFFFFFFFFFFFFF8;
    v316 = 0uLL;
    v45 = v374;
    do
    {
      v317 = v313[-2];
      v318 = v313[-1];
      v319 = *v313;
      v320 = v313[1];
      v313 += 4;
      v314 = vsubq_s32(v314, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v317), vceqzq_s64(v318))));
      v316 = vsubq_s32(v316, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v319), vceqzq_s64(v320))));
      v315 -= 8;
    }

    while (v315);
    v312 = vaddvq_s32(vaddq_s32(v316, v314));
    v310 = v378;
    if (v378 != v311)
    {
      goto LABEL_215;
    }
  }

  else
  {
    v311 = 0;
    v312 = 0;
    v45 = v374;
LABEL_215:
    v321 = v310 - v311;
    v322 = &v309->i64[v311];
    do
    {
      if (*v322++)
      {
        ++v312;
      }

      --v321;
    }

    while (v321);
  }

  LODWORD(v38) = v51;
LABEL_220:
  result = v312 >= v379;
  if (v377 >= 1 && v312 >= v379)
  {
    v324 = v37;
    v325 = 0;
    v326 = v45 + 32;
    do
    {
      *(*(v45 + 392) + 8 * v325++) = 0;
    }

    while (v377 != v325);
    v327 = 0;
    v328 = v45 + 56;
    do
    {
      v338 = v376[v327];
      memset(v388, 0, 36);
      v375(v388, v338);
      v339 = *(v324 + 360) + 4 * v39;
      *v339 = v38;
      *(v339 + 4) = v388[0];
      v340 = v369(v338);
      *(v339 + 8) = v340 & 0xF;
      if (SLODWORD(v388[0]) < 6 && LODWORD(v388[0]) > 4)
      {
        *(v328 + 288) = 1;
        v344 = WORD2(v388[0]);
        *(v339 + 6) = WORD2(v388[0]);
        v345 = *(&v388[1] + 1);
        v346 = v344 - 1;
        v347 = 1.0 / v346;
        v348 = v39;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(&v388[1] + 4))))))
        {
          v350 = *(&v388[1] + 3);
          v349 = *(&v388[1] + 2);
          v351 = *&v388[2];
        }

        else
        {
          v351 = **(v388 + 12);
          v350 = v347 * (*(*(v388 + 12) + 4) - **(v388 + 12));
          v349 = *(*(v388 + 12) + 4 * v346);
          v345 = v347 * (v349 - *(*(v388 + 12) + 4 * v344 - 8));
          *(v339 + 8) = v340 & 0xE;
        }

        v352 = 4 * v38;
        *(*(v46 + 360) + v352) = v351 - (v347 * v350);
        v353 = v38 + 2;
        *(*(v46 + 360) + v352 + 4) = v351;
        if (v344)
        {
          v354 = 0;
          v355 = 4 * v353;
          v353 = v38 + v344 + 2;
          do
          {
            *(*(v46 + 360) + v355) = *(*(v388 + 12) + v354);
            v355 += 4;
            v354 += 4;
          }

          while (4 * v344 != v354);
        }

        v356 = 4 * v353;
        *(*(v46 + 360) + v356) = v349 + v345;
        *(*(v46 + 360) + v356 + 4) = v349 + (v347 * (v345 * v344));
        *(*(v326 + 360) + 8 * v327) = objc_msgSend_newBufferWithBytes_length_options_(v368, v341, *(v46 + 360) + 4 * v38, 4 * v344 + 16, 0, v342, v358);
        if (!*(*(v326 + 360) + 8 * v327))
        {
          goto LABEL_255;
        }

        LODWORD(v38) = v353 + 2;
        v39 = v348;
      }

      else
      {
        if (LODWORD(v388[0]))
        {
          v329 = HIDWORD(v388[0]);
          v330 = *(v388 + 2);
          if (LODWORD(v388[0]) > 2)
          {
            v332 = *(&v388[1] + 1);
            if (LODWORD(v388[0]) == 3)
            {
              v333 = 0.0;
            }

            else
            {
              v333 = *(&v388[1] + 2);
            }

            if (LODWORD(v388[0]) == 3)
            {
              v334 = 0.0;
            }

            else
            {
              v334 = *(&v388[1] + 3);
            }

            v331 = v388[1];
          }

          else
          {
            v331 = 0;
            if (LODWORD(v388[0]) == 2)
            {
              v334 = *&v388[1];
            }

            else
            {
              v334 = 0.0;
            }

            if (*(v388 + 2) == 0.0)
            {
              v332 = 0.0;
              v333 = 0.0;
            }

            else
            {
              v333 = 0.0;
              v332 = -*(v388 + 3) / *(v388 + 2);
            }
          }
        }

        else
        {
          v329 = 0;
          v330 = 1.0;
          v331 = 0;
          v332 = 0.0;
          v333 = 0.0;
          v334 = 0.0;
        }

        v335 = v388[2];
        v336 = DWORD1(v388[0]);
        v337 = 4 * v38;
        *(*(v46 + 360) + v337) = v330;
        *(*(v46 + 360) + v337 + 4) = v329;
        *(*(v46 + 360) + v337 + 8) = v331;
        *(*(v46 + 360) + v337 + 12) = v332;
        *(*(v46 + 360) + v337 + 16) = v333;
        *(*(v46 + 360) + v337 + 20) = v334;
        *(*(v46 + 360) + v337 + 24) = v336;
        LODWORD(v38) = v38 + 8;
        *(*(v46 + 360) + v337 + 28) = v335;
        *(v339 + 6) = 0;
      }

      v39 += 4;
      ++v327;
      result = 1;
    }

    while (v327 != v377);
  }

LABEL_256:
  v357 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239962204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a1 + 32);
  v8 = *(a2 + 36);
  v9 = *(v7 + 472);
  v10 = *(v7 + 456);
  v11 = *(a2 + 44);
  v12 = *(v7 + 464);
  v13 = *(a2 + 52);
  v14 = *(v7 + 360) + 16 * a3;
  *(v14 + 8) = 3;
  *(v14 + 12) = a4;
  if (a4 < 1)
  {
    v36.i64[0] = 0x80000000800000;
    v36.i64[1] = 0x80000000800000;
    v34 = vnegq_f32(v36);
    v29 = v34;
    v30.i64[0] = 0x80000000800000;
    v30.i64[1] = 0x80000000800000;
    v83 = *(v7 + 376) + 4 * *(v7 + 308);
    v84 = 8 * a3;
    v85 = v84;
    if (a3 <= 0)
    {
LABEL_13:
      v86 = (v85 | 4);
      goto LABEL_14;
    }
  }

  else
  {
    v119 = *(v7 + 308);
    v120 = *(v7 + 376);
    v16 = v7 + 8;
    v17 = *a5;
    v108 = 6 * v11 + 2 * v8;
    v18 = ((4 * *a5) & ~((4 * *a5) >> 31)) + v108;
    *v14 = v18;
    *(*(v16 + 360) + 4 * v18 + 12) = v17;
    v19 = v9(*(v13 + 8 * v17));
    v20 = v10(*(v13 + 8 * *a5));
    v109 = v21;
    v114 = LODWORD(v20);
    *&v22 = v12(*(v13 + 8 * *a5));
    v23.i32[0] = 0;
    v24.i32[0] = v19 & 4;
    v25 = vdupq_lane_s32(*&vceqq_s32(v24, v23), 0);
    v26.i64[0] = 0x80000000800000;
    v26.i64[1] = 0x80000000800000;
    v27 = vnegq_f32(v26);
    v28 = v27;
    v28.i32[0] = v109;
    v29 = vbslq_s8(v25, v27, v28);
    v28.i64[1] = 0x80000000800000;
    v28.i64[0] = v114 | 0x80000000000000;
    v30 = vbslq_s8(v25, v26, v28);
    v25.i32[0] = v19 & 2;
    v31 = vdupq_lane_s32(*&vceqq_s32(v25, v23), 0);
    v32 = v27;
    v32.i32[0] = v33;
    v34 = vbslq_s8(v31, v27, v32);
    v35.i64[1] = 0x80000000800000;
    v35.i64[0] = v22 | 0x80000000000000;
    v36 = vbslq_s8(v31, v26, v35);
    if (a4 == 1)
    {
      goto LABEL_6;
    }

    v37 = a5[1];
    v38 = ((4 * v37) & ~((4 * v37) >> 31)) + v108;
    *(v14 + 2) = v38;
    *(*(v16 + 360) + 4 * v38 + 12) = v37;
    v110 = v34;
    v115 = v29;
    v100 = v30;
    v104 = v36;
    v39 = v9(*(v13 + 8 * v37));
    v40 = v10(*(v13 + 8 * a5[1]));
    v94 = v41;
    v97 = LODWORD(v40);
    v42 = v12(*(v13 + 8 * a5[1]));
    v43.i32[0] = 0;
    v44.i32[0] = v39 & 4;
    v45 = vdupq_lane_s32(*&vceqq_s32(v44, v43), 0);
    v46 = v115;
    v46.i32[1] = v94;
    v29 = vbslq_s8(v45, v115, v46);
    v47 = v100;
    v47.i32[1] = v97;
    v30 = vbslq_s8(v45, v100, v47);
    v45.i32[0] = v39 & 2;
    v48 = vdupq_lane_s32(*&vceqq_s32(v45, v43), 0);
    v49 = v110;
    v49.i32[1] = v50;
    v34 = vbslq_s8(v48, v110, v49);
    v51 = v104;
    *&v51.i32[1] = v42;
    v36 = vbslq_s8(v48, v104, v51);
    if (a4 == 2)
    {
      goto LABEL_6;
    }

    v52 = a5[2];
    v53 = ((4 * v52) & ~((4 * v52) >> 31)) + v108;
    *(v14 + 4) = v53;
    *(*(v16 + 360) + 4 * v53 + 12) = v52;
    v111 = v34;
    v116 = v29;
    v101 = v30;
    v105 = v36;
    v54 = v9(*(v13 + 8 * v52));
    v55 = v10(*(v13 + 8 * a5[2]));
    v95 = v56;
    v98 = LODWORD(v55);
    v57 = v12(*(v13 + 8 * a5[2]));
    v58.i32[0] = 0;
    v59.i32[0] = v54 & 4;
    v60 = vdupq_lane_s32(*&vceqq_s32(v59, v58), 0);
    v61 = v116;
    v61.i32[2] = v95;
    v29 = vbslq_s8(v60, v116, v61);
    v62 = v101;
    v62.i32[2] = v98;
    v30 = vbslq_s8(v60, v101, v62);
    v60.i32[0] = v54 & 2;
    v63 = vdupq_lane_s32(*&vceqq_s32(v60, v58), 0);
    v64 = v111;
    v64.i32[2] = v65;
    v34 = vbslq_s8(v63, v111, v64);
    v66 = v105;
    *&v66.i32[2] = v57;
    v36 = vbslq_s8(v63, v105, v66);
    if (a4 == 3)
    {
      goto LABEL_6;
    }

    v67 = a5[3];
    v68 = ((4 * v67) & ~((4 * v67) >> 31)) + v108;
    *(v14 + 6) = v68;
    *(*(v16 + 360) + 4 * v68 + 12) = v67;
    v112 = v34;
    v117 = v29;
    v102 = v30;
    v106 = v36;
    v69 = v9(*(v13 + 8 * v67));
    v70 = v10(*(v13 + 8 * a5[3]));
    v96 = v71;
    v99 = LODWORD(v70);
    v72 = v12(*(v13 + 8 * a5[3]));
    v73.i32[0] = 0;
    v74.i32[0] = v69 & 4;
    v75 = vdupq_lane_s32(*&vceqq_s32(v74, v73), 0);
    v76 = v117;
    v76.i32[3] = v96;
    v29 = vbslq_s8(v75, v117, v76);
    v77 = v102;
    v77.i32[3] = v99;
    v30 = vbslq_s8(v75, v102, v77);
    v75.i32[0] = v69 & 2;
    v78 = vdupq_lane_s32(*&vceqq_s32(v75, v73), 0);
    v79 = v112;
    v79.i32[3] = v80;
    v34 = vbslq_s8(v78, v112, v79);
    v81 = v106;
    *&v81.i32[3] = v72;
    v36 = vbslq_s8(v78, v106, v81);
    v82 = a4 - 4;
    if (!v82)
    {
LABEL_6:
      v83 = v120 + 4 * v119;
      v84 = 8 * a3;
      v85 = v84;
      if (a3 <= 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v103 = v30;
      v107 = v36;
      v113 = v34;
      v118 = v29;
      v87 = (v14 + 8);
      v88 = a5 + 4;
      do
      {
        v89 = *v88;
        v90 = ((4 * *v88) & ~((4 * *v88) >> 31)) + v108;
        *v87++ = v90;
        *(*(v16 + 360) + 4 * v90 + 12) = v89;
        v9(*(v13 + 8 * v89));
        v10(*(v13 + 8 * *v88));
        v91 = *v88++;
        v12(*(v13 + 8 * v91));
        --v82;
      }

      while (v82);
      v34 = v113;
      v29 = v118;
      v30 = v103;
      v36 = v107;
      v83 = v120 + 4 * v119;
      v84 = 8 * a3;
      v85 = v84;
      if (a3 <= 0)
      {
        goto LABEL_13;
      }
    }
  }

  v86 = v84 | 4;
  v30 = vmaxnmq_f32(v30, *(v83 + 4 * v85));
  v29 = vminnmq_f32(v29, *(v83 + 4 * v86));
LABEL_14:
  v92 = (v83 + 4 * v85);
  *v92 = v30;
  *(v83 + 4 * v86) = v29.i32[0];
  v92[1].i32[1] = v29.i32[1];
  v92[1].i64[1] = vextq_s8(v29, v29, 8uLL).u64[0];
  v92[2] = v36;
  v92[3] = v34;
  return 1;
}

uint64_t sub_239962718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 60);
  v8 = *(v6 + 472);
  v9 = *(v6 + 456);
  v10 = *(v6 + 464);
  v11 = *(v6 + 360) + 16 * a3;
  *(v11 + 8) = 0x100000001;
  *v11 = 2 * a4;
  v12 = v8(*(v7 + 8 * a4));
  v32 = COERCE_INT32X2_T(v9(*(v7 + 8 * a4)));
  v33 = v13;
  v10(*(v7 + 8 * a4));
  v16.i32[0] = 0;
  v17.i32[0] = v12 & 4;
  v18 = vdupq_lane_s32(*&vceqq_s32(v17, v16), 0);
  v19.i64[0] = 0x80000000800000;
  v19.i64[1] = 0x80000000800000;
  v20 = vbslq_s8(v18, v19, vdupq_lane_s32(v32, 0));
  v21 = vdupq_lane_s32(v33, 0);
  v22 = vnegq_f32(v19);
  v23 = vbslq_s8(v18, v22, v21);
  v24 = *(v6 + 376) + 4 * *(v6 + 308);
  v25 = 8 * a3;
  v26 = v25;
  if (a3 <= 0)
  {
    v27 = (v25 | 4);
  }

  else
  {
    v22 = *(v24 + 4 * v25);
    v27 = v25 | 4;
    v21 = *(v24 + 4 * v27);
    v20 = vmaxnmq_f32(v20, v22);
    v23 = vminnmq_f32(v23, v21);
  }

  v22.i32[0] = 0;
  v21.i32[0] = v12 & 2;
  v28 = vdupq_lane_s32(*&vceqq_s32(v21, v22), 0);
  v29.i64[0] = 0x80000000800000;
  v29.i64[1] = 0x80000000800000;
  v30 = v24 + 4 * v26;
  *v30 = v20;
  *(v24 + 4 * v27) = v23.i32[0];
  *(v30 + 20) = v23.i32[1];
  *(v30 + 24) = vextq_s8(v23, v23, 8uLL).u64[0];
  *(v30 + 32) = vbslq_s8(v28, v29, vdupq_lane_s32(v14, 0));
  *(v30 + 48) = vbslq_s8(v28, vnegq_f32(v29), vdupq_lane_s32(v15, 0));
  return 1;
}

uint64_t sub_239962894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 36);
  v8 = *(v6 + 472);
  v9 = *(v6 + 456);
  v10 = *(a2 + 68);
  v11 = *(v6 + 464);
  v12 = *(v6 + 440);
  v13 = *(v10 + 8 * a4);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v12(v43, v13);
  v14 = *(v6 + 360) + 16 * a3;
  *(v14 + 12) = 1;
  if ((LODWORD(v43[0]) - 7) > 4)
  {
    v15 = 2;
  }

  else
  {
    v15 = dword_239988CC0[LODWORD(v43[0]) - 7];
  }

  *(v14 + 8) = v15;
  v16 = 2 * v7 + 6 * a4;
  *v14 = v16;
  *(*(v6 + 368) + 4 * v16 + 16) = a4;
  v39 = COERCE_INT32X2_T(v9(*(v10 + 8 * a4)));
  v40 = v17;
  *&v18 = v11(*(v10 + 8 * a4));
  v41 = v19;
  v42 = v18;
  v20 = *(v6 + 376);
  v21 = *(v6 + 308);
  v23 = v8(*(v10 + 8 * a4));
  v23.i32[0] = 0;
  v24.i32[0] = v22 & 4;
  v25 = vdupq_lane_s32(*&vceqq_s32(v24, v23), 0);
  v26.i64[0] = 0x80000000800000;
  v26.i64[1] = 0x80000000800000;
  v27 = vbslq_s8(v25, v26, vdupq_lane_s32(v39, 0));
  v28 = vdupq_lane_s32(v40, 0);
  v29 = vnegq_f32(v26);
  v30 = vbslq_s8(v25, v29, v28);
  v31 = v20 + 4 * v21;
  v32 = 8 * a3;
  v33 = v32;
  if (a3 <= 0)
  {
    v34 = (v32 | 4);
  }

  else
  {
    v29 = *(v31 + 4 * v32);
    v34 = v32 | 4;
    v28 = *(v31 + 4 * v34);
    v27 = vmaxnmq_f32(v27, v29);
    v30 = vminnmq_f32(v30, v28);
  }

  v29.i32[0] = 0;
  v28.i32[0] = v22 & 2;
  v35 = vdupq_lane_s32(*&vceqq_s32(v28, v29), 0);
  v36.i64[0] = 0x80000000800000;
  v36.i64[1] = 0x80000000800000;
  v37 = v31 + 4 * v33;
  *v37 = v27;
  *(v31 + 4 * v34) = v30.i32[0];
  *(v37 + 20) = v30.i32[1];
  *(v37 + 24) = vextq_s8(v30, v30, 8uLL).u64[0];
  *(v37 + 32) = vbslq_s8(v35, v36, vdupq_lane_s32(v42, 0));
  *(v37 + 48) = vbslq_s8(v35, vnegq_f32(v36), vdupq_lane_s32(v41, 0));
  return 1;
}

uint64_t sub_239962AB8(int *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6 > 9)
    {
      v7 = "<unknown TRC type>";
    }

    else
    {
      v7 = off_278AF6920[v6];
    }

    v14 = *a1;
    qword_27DF85528 = v7;
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = objc_msgSend_initWithFormat_(v15, v16, @"\t\t\tTRC channel:      %d\n\t\t\tOptions:          %u\n\t\t\tTRC Type:         %s\n\t\t\t{\n", v17, v18, v19, a3, a1[2], qword_27DF85528);
    v21 = *(a1 + 2);
    if (v21 > 9)
    {
      v41 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = objc_msgSend_initWithFormat_(v41, v42, @"\t\t\t<unknown TRC type>", v43, v44, v45, v46, v47, v48);
    }

    else if (v21 == 5)
    {
      v36 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = objc_msgSend_initWithFormat_(v36, v37, @"\t\t\t\tTable size:     %d\n\t\t\t\tLUT buffer id:  %d\n\t\t\t}", v38, v39, v40, *(a1 + 3), a1[3], v48);
    }

    else
    {
      v22 = (a2 + 4 * v14);
      v23 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = objc_msgSend_initWithFormat_(v23, v24, @"\t\t\t\ta:              %.6f\n\t\t\t\tb:              %.6f\n\t\t\t\tc:              %.6f\n\t\t\t\td:              %.6f\n\t\t\t\te:              %.6f\n\t\t\t\tf:              %.6f\n\t\t\t\tgamma:          %.6f\n\t\t\t\tg:              %.6f\n\t\t\t}", v25, v26, v27, *v22, v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7]);
    }

    v29 = v28;
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = objc_msgSend_initWithFormat_(v30, v31, @"%@%@,\n", v32, v33, v34, v20, v29);

    return v35;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    return objc_msgSend_initWithFormat_(v8, v9, @"\t\t\tTRC channel:      %d\n\t\t\t<NULL>,\n", v10, v11, v12, a3);
  }
}

uint64_t sub_239962C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, unsigned int a8)
{
  v10 = *(a1 + *MEMORY[0x277CD7370]);
  if (a8)
  {
    v11 = 41;
  }

  else
  {
    v11 = 40;
  }

  v94 = *(a1 + 360);
  v12 = *(v94 + 16 * a8 + 12);
  if (v12 < 1)
  {
    goto LABEL_9;
  }

  v13 = 1;
  v14 = (*(a1 + 360) + 16 * a8);
  do
  {
    v15 = *v14++;
    v16 = *(*(a1 + 368) + 8 + 4 * v15);
    if (v13 >= v12)
    {
      break;
    }

    ++v13;
  }

  while (v16 == 3);
  if (v16 == 3)
  {
LABEL_9:
    v11 |= 2u;
  }

  v99 = *(a1 + *MEMORY[0x277CD7350]);
  v98 = *(a1 + 160);
  v95 = *(a1 + 368);
  v96 = *(a1 + 408);
  v90 = *(a1 + 416);
  v91 = (*(a1 + 360) + 16 * a8);
  v17 = *(a1 + 480);
  v88 = *(a1 + 488);
  v89 = *(a1 + 288);
  v18 = *(a1 + 340);
  v87 = *(a1 + 336);
  v93 = *(a1 + 376);
  v19 = (&off_278AB4DA0)[16 * v11];
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v108 = v20;
  v109 = v20;
  v107 = v20;
  *v105 = *(a1 + 312);
  *&v20 = *(a1 + 348);
  v21.i64[0] = v20;
  v21.i64[1] = DWORD1(v20);
  *&v105[8] = vextq_s8(v21, v21, 8uLL);
  v106 = *(a1 + 356);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v85 = a6[1];
  v86 = *a6;
  v24 = a6[3];
  v23 = a6[4];
  v83 = a7[1];
  v84 = *a7;
  v92 = PipelineStateForMPSKey;
  v30 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v25, v26, v27, v28, v29, 0, 0, 0, 0, 0);
  v31 = v30;
  if (v30 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v30;
  }

  v33 = 4 * (v32 >> 1);
  if (v30 <= 1)
  {
    v33 = 4;
  }

  v34 = (v23 + 1) >> 1;
  v35 = (v33 + v24 - 1) / v33;
  v36 = MPSIsTextureTwiddled();
  v41 = 2;
  if ((v32 & 7) != 0 || v31 < 8)
  {
    v42 = v32 >> 1;
    v43 = v88;
  }

  else
  {
    v42 = v32 >> 1;
    v43 = v88;
    if (v36)
    {
      v35 = ((v32 >> 1) + v24 - 1) / (v32 >> 1);
      v42 = v32 >> 3;
      v34 = (v23 + 7) >> 3;
      v41 = 8;
    }
  }

  v44 = v41;
  v46 = v17 == 1 || v87 > 3;
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = 16;
  }

  if (v17 != 2)
  {
    v47 = 0;
  }

  if (v18 >= 4 || v43 == 1)
  {
    v47 |= 0x20u;
  }

  if (v46)
  {
    v47 = 0;
  }

  if (v18 <= 3)
  {
    v49 = !v46;
    if (v43 == 1)
    {
      v49 = 0;
    }

    if (v49)
    {
      if (v43 == 2)
      {
        v47 |= 0x40u;
      }
    }

    else
    {
      v47 |= 0x80u;
    }
  }

  *v105 = v89;
  *&v105[18] = v83;
  *&v105[16] = v84;
  *&v105[22] = v85;
  *&v105[20] = v86;
  WORD1(v106) = v23;
  LOWORD(v106) = v24;
  HIDWORD(v106) = v47;
  LODWORD(v107) = v90;
  *(&v107 + 4) = 0;
  objc_msgSend_setComputePipelineState_(a2, v37, v92, v38, v39, v40);
  v50 = *(v91 + 3);
  if (v50 <= 0)
  {
    v55 = 0;
    v53 = 0;
    v56 = 0;
    v57 = 0;
    v54 = a8;
    v52 = v94;
    v51 = v95;
    if (a8)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v52 = v94;
    v51 = v95;
    v53 = (v95 + 4 * *v91);
    v54 = a8;
    if (v50 == 1)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      if ((a8 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_57:
      v58 = *(v52 + 28);
      v132 = 3;
      v133 = v58;
      if (!v53)
      {
        goto LABEL_64;
      }

LABEL_58:
      v59 = v93;
      v60 = (v93 + 4 * *v53);
      v116 = v53[2];
      v108 = *v60;
      v109 = v60[1];
      if (!v56)
      {
        goto LABEL_65;
      }

LABEL_59:
      v61 = (v59 + 4 * *v56);
      v117 = v56[2];
      v110 = *v61;
      v111 = v61[1];
      if (!v55)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

    v56 = (v95 + 4 * v91[1]);
    if (v50 < 3)
    {
      v55 = 0;
      v57 = 0;
      if ((a8 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    v55 = (v95 + 4 * v91[2]);
    if (v50 != 3)
    {
      v57 = (v95 + 4 * v91[3]);
      if ((a8 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    v57 = 0;
    if (a8)
    {
      goto LABEL_57;
    }
  }

LABEL_63:
  v132 = *(v52 + 12);
  v133 = 3;
  if (v53)
  {
    goto LABEL_58;
  }

LABEL_64:
  v108 = xmmword_239988C80;
  v109 = unk_239988C90;
  v59 = v93;
  if (v56)
  {
    goto LABEL_59;
  }

LABEL_65:
  v110 = xmmword_239988C80;
  v111 = unk_239988C90;
  if (!v55)
  {
LABEL_66:
    v112 = xmmword_239988C80;
    v113 = unk_239988C90;
    if (!v57)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }

LABEL_60:
  v62 = (v59 + 4 * *v55);
  v118 = v55[2];
  v112 = *v62;
  v113 = v62[1];
  if (!v57)
  {
LABEL_67:
    v114 = xmmword_239988C80;
    v115 = unk_239988C90;
    goto LABEL_68;
  }

LABEL_61:
  v63 = (v59 + 4 * *v57);
  v119 = v57[2];
  v114 = *v63;
  v115 = v63[1];
LABEL_68:
  v64 = (v59 + 4 * *(v51 + 4 * *(v52 + 16 * (v54 ^ 1))));
  v120 = *v64;
  v121 = v64[1];
  v122 = v64[2];
  v123 = v64[3];
  v124 = v64[4];
  v125 = v64[5];
  v126 = v64[6];
  v127 = v64[7];
  v128 = v64[8];
  v129 = v64[9];
  v130 = v64[10];
  v131 = v64[11];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setTexture_atIndex_(a2, v65, a4, 0, v66, v67);
  objc_msgSend_setTexture_atIndex_(a2, v68, a5, 1, v69, v70);
  objc_msgSend_setBytes_length_atIndex_(a2, v71, v105, 400, 0, v72);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v73, v96, 0, 3, v74);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v76, Sampler, 0, v77, v78);
  v104[0] = v35;
  v104[1] = v34;
  v104[2] = 1;
  v103[0] = v42;
  v103[1] = v44;
  v103[2] = 1;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v79, v104, v103, v80, v81);
}

uint64_t sub_2399632FC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, int a8, unsigned __int8 a9)
{
  v12 = *(a1 + *MEMORY[0x277CD7370]);
  v13 = *(a1 + 360);
  v14 = 4;
  if (a9)
  {
    v15 = 6;
  }

  else
  {
    v15 = 3;
  }

  if (a9)
  {
    v16 = 3;
  }

  else
  {
    v16 = 6;
  }

  if (a9)
  {
    v17 = 36;
  }

  else
  {
    v17 = 32;
  }

  if (a9)
  {
    v14 = 2;
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  if (a9)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v153 = v19;
  v21 = (*(a1 + *MEMORY[0x277CD7378]) & 2) == 0 || a8 > 15;
  v22 = (v13 + 16 * v18);
  v24 = *(v22 + 3);
  v23 = v24;
  v154 = (v22 + 6);
  v156 = *(a1 + 368);
  v25 = v156 + 8;
  if (v24 < 1)
  {
    v30 = 1;
  }

  else
  {
    v26 = 1;
    v27 = v22;
    do
    {
      v28 = *v27++;
      v29 = *(v25 + 4 * v28);
      v30 = v29 == v16;
      if (v26 >= v23)
      {
        break;
      }

      ++v26;
    }

    while (v29 == v16);
  }

  v31 = (v13 + 16 * v14);
  v149 = v31 + 3;
  if (v31[3] >= 1 && v30)
  {
    v33 = 1;
    v34 = v31;
    do
    {
      v35 = *v34++;
      v36 = *(v25 + 4 * v35);
      v30 = v36 == v15;
      if (v33 >= v31[3])
      {
        break;
      }

      ++v33;
    }

    while (v36 == v15);
  }

  v145 = v31;
  v146 = v22;
  v155 = *(a1 + 360);
  v158 = *(a1 + *MEMORY[0x277CD7350]);
  v157 = *(a1 + 160);
  v159 = *(a1 + 408);
  v144 = *(a1 + 416);
  v37 = *(a1 + 480);
  v142 = *(a1 + 488);
  v143 = *(a1 + 288);
  v38 = *(a1 + 340);
  v141 = *(a1 + 336);
  v147 = *(a1 + 376);
  v148 = *(a1 + 384);
  v39 = v17 | 2;
  if (!v30)
  {
    v39 = v17;
  }

  v40 = (&off_278AB4DA0)[16 * (v39 | v21)];
  *&v41 = -1;
  *(&v41 + 1) = -1;
  v170 = v41;
  v171 = v41;
  v169 = v41;
  *v167 = *(a1 + 312);
  *&v41 = *(a1 + 348);
  v42.i64[0] = v41;
  v42.i64[1] = DWORD1(v41);
  *&v167[8] = vextq_s8(v42, v42, 8uLL);
  v168 = *(a1 + 356);
  v160 = a3;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v139 = a6[1];
  v140 = *a6;
  v45 = a6[3];
  v44 = a6[4];
  v137 = a7[1];
  v138 = *a7;
  v46 = PipelineStateForMPSKey;
  v52 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v47, v48, v49, v50, v51, 0, 0, 0, 0, 0);
  v53 = v52;
  if (v52 <= 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = v52;
  }

  v55 = v54 >> 1;
  if (v52 <= 1)
  {
    v56 = 4;
  }

  else
  {
    v56 = 4 * (v54 >> 1);
  }

  v57 = v45 - 1;
  v58 = MPSIsTextureTwiddled();
  if ((v54 & 7) != 0 || v53 < 8 || v58 == 0)
  {
    v150 = 2;
    v151 = (v44 + 1) >> 1;
    v152 = (v56 + v57) / v56;
    v65 = v54 >> 1;
  }

  else
  {
    v65 = v54 >> 3;
    v151 = (v44 + 7) >> 3;
    v152 = (v55 + v57) / v55;
    v150 = 8;
  }

  v67 = v37 == 1 || v141 > 3;
  if (v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = 16;
  }

  if (v37 != 2)
  {
    v68 = 0;
  }

  if (v38 >= 4 || v142 == 1)
  {
    v68 |= 0x20u;
  }

  if (v67)
  {
    v68 = 0;
  }

  if (v38 <= 3)
  {
    v70 = !v67;
    if (v142 == 1)
    {
      v70 = 0;
    }

    if (v70)
    {
      if (v142 == 2)
      {
        v68 |= 0x40u;
      }
    }

    else
    {
      v68 |= 0x80u;
    }
  }

  *v167 = v143;
  *&v167[18] = v137;
  *&v167[16] = v138;
  *&v167[22] = v139;
  *&v167[20] = v140;
  WORD1(v168) = v44;
  LOWORD(v168) = v45;
  HIDWORD(v168) = v68;
  LODWORD(v169) = v144;
  *(&v169 + 4) = 0;
  objc_msgSend_setComputePipelineState_(a2, v59, v46, v60, v61, v62);
  v71 = *v154;
  v72 = *v149;
  if (*v154 <= 0)
  {
    v77 = 0;
    v78 = a4;
    v80 = v159;
    v79 = v160;
    v75 = v155;
    v76 = v156;
    v81 = v153;
    v73 = v147;
    v82 = v148;
    v83 = v145;
    v74 = v146;
    if (v72 >= 1)
    {
LABEL_80:
      v84 = (v76 + 4 * *v83);
      if (v71 > 1)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }
  }

  else
  {
    v74 = v146;
    v73 = v147;
    v75 = v155;
    v76 = v156;
    v77 = (v156 + 4 * *v146);
    v78 = a4;
    v80 = v159;
    v79 = v160;
    v81 = v153;
    v82 = v148;
    v83 = v145;
    if (v72 >= 1)
    {
      goto LABEL_80;
    }
  }

  v84 = 0;
  if (v71 > 1)
  {
LABEL_81:
    v85 = (v76 + 4 * v74[1]);
    if (v72 < 2)
    {
      goto LABEL_82;
    }

    goto LABEL_98;
  }

LABEL_97:
  v85 = 0;
  if (v72 < 2)
  {
LABEL_82:
    v86 = 0;
    if (v71 <= 2)
    {
      goto LABEL_83;
    }

    goto LABEL_99;
  }

LABEL_98:
  v86 = (v76 + 4 * v83[1]);
  if (v71 <= 2)
  {
LABEL_83:
    v87 = 0;
    if (v72 < 3)
    {
      goto LABEL_84;
    }

    goto LABEL_100;
  }

LABEL_99:
  v87 = (v76 + 4 * v74[2]);
  if (v72 < 3)
  {
LABEL_84:
    v88 = 0;
    if (v71 <= 3)
    {
      goto LABEL_85;
    }

    goto LABEL_101;
  }

LABEL_100:
  v88 = (v76 + 4 * v83[2]);
  if (v71 <= 3)
  {
LABEL_85:
    v89 = 0;
    if (v72 < 4)
    {
      goto LABEL_86;
    }

    goto LABEL_102;
  }

LABEL_101:
  v89 = (v76 + 4 * v74[3]);
  if (v72 < 4)
  {
LABEL_86:
    v90 = 0;
    if (v71 < 1)
    {
      goto LABEL_87;
    }

    goto LABEL_103;
  }

LABEL_102:
  v90 = (v76 + 4 * v83[3]);
  if (v71 < 1)
  {
LABEL_87:
    v170 = xmmword_239988C80;
    v171 = unk_239988C90;
    if (*v154 <= 1)
    {
      goto LABEL_88;
    }

    goto LABEL_104;
  }

LABEL_103:
  v92 = (v73 + 4 * *v77);
  v186 = v77[2];
  v170 = *v92;
  v171 = v92[1];
  if (*v154 <= 1)
  {
LABEL_88:
    v172 = xmmword_239988C80;
    v173 = unk_239988C90;
    if (*v154 <= 2)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_104:
  v93 = (v73 + 4 * *v85);
  v187 = v85[2];
  v172 = *v93;
  v173 = v93[1];
  if (*v154 <= 2)
  {
LABEL_89:
    v174 = xmmword_239988C80;
    v175 = unk_239988C90;
    if (*v154 <= 3)
    {
      goto LABEL_90;
    }

    goto LABEL_106;
  }

LABEL_105:
  v94 = (v73 + 4 * *v87);
  v188 = v87[2];
  v174 = *v94;
  v175 = v94[1];
  if (*v154 <= 3)
  {
LABEL_90:
    v176 = xmmword_239988C80;
    v177 = unk_239988C90;
    if (*v149 < 1)
    {
      goto LABEL_91;
    }

    goto LABEL_107;
  }

LABEL_106:
  v95 = (v73 + 4 * *v89);
  v189 = v89[2];
  v176 = *v95;
  v177 = v95[1];
  if (*v149 < 1)
  {
LABEL_91:
    v178 = xmmword_239988C80;
    v179 = unk_239988C90;
    v91 = a9;
    if (*v149 <= 1)
    {
      goto LABEL_92;
    }

    goto LABEL_108;
  }

LABEL_107:
  v96 = (v73 + 4 * *v84);
  v190 = v84[2];
  v178 = *v96;
  v179 = v96[1];
  v91 = a9;
  if (*v149 <= 1)
  {
LABEL_92:
    v180 = xmmword_239988C80;
    v181 = unk_239988C90;
    if (*v149 <= 2)
    {
      goto LABEL_93;
    }

LABEL_109:
    v98 = (v73 + 4 * *v88);
    v192 = v88[2];
    v182 = *v98;
    v183 = v98[1];
    if (*v149 <= 3)
    {
      goto LABEL_94;
    }

    goto LABEL_110;
  }

LABEL_108:
  v97 = (v73 + 4 * *v86);
  v191 = v86[2];
  v180 = *v97;
  v181 = v97[1];
  if (*v149 > 2)
  {
    goto LABEL_109;
  }

LABEL_93:
  v182 = xmmword_239988C80;
  v183 = unk_239988C90;
  if (*v149 <= 3)
  {
LABEL_94:
    v184 = xmmword_239988C80;
    v185 = unk_239988C90;
    goto LABEL_111;
  }

LABEL_110:
  v99 = (v73 + 4 * *v90);
  v193 = v90[2];
  v184 = *v99;
  v185 = v99[1];
LABEL_111:
  v100 = (v73 + 4 * *(v76 + 4 * *(v75 + 16)));
  v194 = *v100;
  v195 = v100[1];
  v196 = v100[2];
  v197 = v100[3];
  v198 = v100[4];
  v199 = v100[5];
  v200 = v100[6];
  v201 = v100[7];
  v202 = v100[8];
  v203 = v100[9];
  v204 = v100[10];
  v205 = v100[11];
  v101 = (v73 + 4 * *(v76 + 4 * *(v75 + 48)));
  v206 = *v101;
  v207 = v101[1];
  v208 = v101[2];
  v209 = v101[3];
  v210 = v101[4];
  v211 = v101[5];
  v212 = v101[6];
  v213 = v101[7];
  v214 = v101[8];
  v215 = v101[9];
  v216 = v101[10];
  v217 = v101[11];
  v102 = (v76 + 4 * *(v75 + 16 * v81));
  v103 = *(v82 + 8 * v102[4]);
  v220 = v102[3];
  v104 = v102 + 2;
  v105 = (v102 + 1);
  if (v91)
  {
    v105 = v154;
  }

  else
  {
    v104 = v149;
  }

  v106 = *v104;
  v218 = *v105;
  v219 = v106;
  if (v79 && (objc_msgSend_retainedReferences(v79, v154, v81, v149, v82, v167) & 1) == 0)
  {
    v107 = v103;
    v166[0] = MEMORY[0x277D85DD0];
    v166[1] = 3221225472;
    v166[2] = sub_239963EC0;
    v166[3] = &unk_278AC37A8;
    v166[4] = v103;
    objc_msgSend_addCompletedHandler_(v79, v108, v166, v109, v110, v111);
  }

  Sampler = MPSDevice::GetSampler();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setTexture_atIndex_(a2, v113, v78, 0, v114, v115);
  objc_msgSend_setTexture_atIndex_(a2, v116, a5, 1, v117, v118);
  objc_msgSend_setTexture_atIndex_(a2, v119, v103, 2, v120, v121);
  objc_msgSend_setSamplerState_atIndex_(a2, v122, Sampler, 1, v123, v124);
  objc_msgSend_setBytes_length_atIndex_(a2, v125, v167, 448, 0, v126);
  v127 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v128, v127, 0, v129, v130);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v131, v80, 0, 3, v132);
  v165[0] = v152;
  v165[1] = v151;
  v165[2] = 1;
  v164[0] = v65;
  v164[1] = v150;
  v164[2] = 1;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v133, v165, v164, v134, v135);
}

void sub_239963E5C(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_239963ED8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a6;
  v8 = a5;
  v12 = 0;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 48);
  v16 = *(a1 + 104);
  v59 = *(a1 + 96);
  v60 = *(a1 + 56);
  v17 = *(a1 + 80);
  v57 = *(a1 + 88);
  v58 = *(a1 + 112);
  __y = *(a1 + 32);
  v56 = *(a1 + 40);
  v53 = v15;
  v45 = a7 - a5;
  v46 = a6 - a5;
  v43 = a5 + a6;
  v44 = (a6 - a5) * ((a7 - a5) * (a7 - a6));
  do
  {
    v29 = pow((a3 + 0.0) / 10000.0, v15);
    v30 = v59 * (pow((v13 + v14 * v29) / (v17 * v29 + 1.0), v60) - v16);
    if (v30 >= v58)
    {
      v30 = *a1 + (v30 - v58) * *(a1 + 120) * (*(a1 + 8) + (v30 - v58) * *(a1 + 120) * (*(a1 + 16) + (v30 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v30 >= 0.0)
    {
      if (v30 < 1.0)
      {
        v30 = v30 + (1.0 - v30) * ((1.0 - v30) * ((1.0 - v30) * ((1.0 - v30) * *(a1 + 128))));
      }
    }

    else
    {
      v30 = *(a1 + 128);
    }

    v31 = pow(v16 + v57 * v30, v56);
    v32 = v31 - v13;
    if (v31 - v13 < 0.0)
    {
      v32 = 0.0;
    }

    v52 = pow(v32 / (v14 - v17 * v31), __y);
    v33 = pow((a3 + v8) / 10000.0, v15);
    v34 = v59 * (pow((v13 + v14 * v33) / (v17 * v33 + 1.0), v60) - v16);
    if (v34 >= v58)
    {
      v34 = *a1 + (v34 - v58) * *(a1 + 120) * (*(a1 + 8) + (v34 - v58) * *(a1 + 120) * (*(a1 + 16) + (v34 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v34 >= 0.0)
    {
      if (v34 < 1.0)
      {
        v34 = v34 + (1.0 - v34) * ((1.0 - v34) * ((1.0 - v34) * ((1.0 - v34) * *(a1 + 128))));
      }
    }

    else
    {
      v34 = *(a1 + 128);
    }

    v35 = pow(v16 + v57 * v34, v56);
    v36 = v35 - v13;
    if (v35 - v13 < 0.0)
    {
      v36 = 0.0;
    }

    v50 = pow(v36 / (v14 - v17 * v35), __y);
    v37 = pow((a3 + v7) / 10000.0, v15);
    v38 = v59 * (pow((v13 + v14 * v37) / (v17 * v37 + 1.0), v60) - v16);
    if (v38 >= v58)
    {
      v38 = *a1 + (v38 - v58) * *(a1 + 120) * (*(a1 + 8) + (v38 - v58) * *(a1 + 120) * (*(a1 + 16) + (v38 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v38 >= 0.0)
    {
      if (v38 < 1.0)
      {
        v38 = v38 + (1.0 - v38) * ((1.0 - v38) * ((1.0 - v38) * ((1.0 - v38) * *(a1 + 128))));
      }
    }

    else
    {
      v38 = *(a1 + 128);
    }

    v39 = pow(v16 + v57 * v38, v56);
    v40 = v39 - v13;
    if (v39 - v13 < 0.0)
    {
      v40 = 0.0;
    }

    v41 = pow(v40 / (v14 - v17 * v39), __y);
    v42 = pow((a3 + a7) / 10000.0, v53);
    v18 = v59 * (pow((v13 + v14 * v42) / (v17 * v42 + 1.0), v60) - v16);
    if (v18 >= v58)
    {
      v18 = *a1 + (v18 - v58) * *(a1 + 120) * (*(a1 + 8) + (v18 - v58) * *(a1 + 120) * (*(a1 + 16) + (v18 - v58) * *(a1 + 120) * *(a1 + 24)));
    }

    if (v18 < 0.0)
    {
      v18 = *(a1 + 128);
    }

    else if (v18 < 1.0)
    {
      v18 = v18 + (1.0 - v18) * ((1.0 - v18) * ((1.0 - v18) * ((1.0 - v18) * *(a1 + 128))));
    }

    v51 = v52 * 10000.0;
    v19 = v41 * 10000.0;
    v20 = pow(v16 + v57 * v18, v56);
    v21 = v20 - v13;
    if (v20 - v13 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = pow(v21 / (v14 - v17 * v20), __y);
    v8 = a5;
    v23 = (v50 * 10000.0 - v51) / a5;
    v24 = v19 - v51;
    v7 = a6;
    v25.f64[0] = v51;
    v26 = v24 / a6 - v23;
    v27 = -(v45 * v26 - v46 * (-(v51 - v22 * 10000.0) / a7 - v23)) / v44;
    v28.f64[0] = v26 / v46 - v43 * v27;
    v28.f64[1] = v27;
    v25.f64[1] = v23 - v28.f64[0] * a5 - v27 * a5 * a5;
    *(a2 + v12) = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v28);
    a3 = a3 + a4;
    v12 += 16;
    v15 = v53;
  }

  while (v12 != 1024);
}

uint64_t sub_239965328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v9 = v6;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  v14 = vaddvq_s32(vbicq_s8(xmmword_239988CE0, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12))));
  v15 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239988CE0)) & 0xF;
  if (*a3 != -1 || v15 != 0 || (v14 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v25 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v25, 33, 126, v8);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v25 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 125, v8);
    }

    if (a3[2] != -1)
    {
      v25 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 124, v8);
    }

    if (a3[3] != -1)
    {
      v25 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 123, v8);
    }

    if (a3[4] != -1)
    {
      v25 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 119, v8);
    }

    if (a3[5] != -1)
    {
      v25 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 118, v8);
    }

    if (a3[8] != -1)
    {
      v25 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 122, v8);
    }

    if (a3[9] != -1)
    {
      v25 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 121, v8);
    }

    if (a3[6] != -1)
    {
      v25 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 117, v8);
    }

    if (a3[7] != -1)
    {
      v25 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 33, 116, v8);
    }
  }

  LOWORD(v25) = (v5 >> 59) & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v7, &v25, 41, 0, v8);
  v24 = v5 < 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v19, &v24, 53, 1, v20);
  v21 = *a2;
  v22 = _MPSNewSpecializedFunction();

  return v22;
}

void sub_239965BA8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_23994744C(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t sub_239965E30(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4 == a5)
  {
    return -18;
  }

  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + 208);
  v13 = *(a1 + *MEMORY[0x277CD7350]);
  v14 = *(a1 + *MEMORY[0x277CD7370]);
  v15 = *(a1 + 160);
  if (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6))
  {
    return -18;
  }

  v17 = *a6;
  v18 = *(a6 + 8);
  v19 = *(a6 + 16);
  v121 = *(a6 + 40);
  v20 = **a6 & 0xF000000;
  if (v11)
  {
    if (!v20 || (*(v18 + 3) & 0xF) == 0)
    {
      return -4;
    }
  }

  else
  {
    if (!v20)
    {
      v119 = *(a6 + 16);
      v107 = MTLReportFailureTypeEnabled();
      v19 = v119;
      if (v107)
      {
        v108 = a4;
        MTLReportFailure();
        v19 = v119;
      }
    }

    if ((*(v18 + 3) & 0xF) == 0)
    {
      v115 = v19;
      v21 = MTLReportFailureTypeEnabled();
      v19 = v115;
      if (v21)
      {
        v108 = a5;
        MTLReportFailure();
        v19 = v115;
      }
    }
  }

  v120 = (v12 - 1) >> 1;
  v22 = v120 - 1;
  v114 = v12 - 1;
  if (v12 - 1 > 5)
  {
    v22 = 8;
  }

  if (v22 <= 1)
  {
    v116 = v19;
    v23 = *v18 & 0xF000000;
    v24 = *(v17 + 4);
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      return -1;
    }

    objc_msgSend_setComputePipelineState_(a2, v26, ComputeState, v27, v28, v29);
    MPSLibrary::ReleaseComputeState();
    v33 = 15;
    v34 = vmovn_s64(*(a6 + 64));
    *&v129[2] = v34.i16[2];
    if (v120 == 1)
    {
      v33 = 31;
    }

    v35 = v121.i64[0] + v33;
    *v129 = v34.i16[0];
    *&v129[6] = v116.i16[4];
    v36 = 4;
    if (v120 == 1)
    {
      v36 = 5;
    }

    v37 = v35 >> v36;
    *&v129[4] = v116.i16[0];
    *&v129[10] = v121.i16[4];
    *&v129[8] = v121.i16[0];
    *&v129[12] = 0;
    objc_msgSend_setTexture_atIndex_(a2, v30, a4, 0, v31, v32, v108);
    objc_msgSend_setTexture_atIndex_(a2, v38, a5, 1, v39, v40);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v42, Sampler, 0, v43, v44);
    objc_msgSend_setBytes_length_atIndex_(a2, v45, v129, 16, 0, v46);
    v131[0] = v37;
    v131[1] = (v121.i64[1] + 15) >> 4;
    v131[2] = 1;
    *v130 = vdupq_n_s64(0x10uLL);
    *&v130[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v47, v131, v130, v48, v49);
    return 0;
  }

  v50 = *(v17 + 4);
  if (v11)
  {
    if (v50 <= 8)
    {
      goto LABEL_25;
    }

    return -4;
  }

  if (v50 >= 9)
  {
    v117 = v19;
    v51 = MTLReportFailureTypeEnabled();
    v19 = v117;
    if (v51)
    {
      v108 = a4;
      MTLReportFailure();
      v19 = v117;
    }
  }

LABEL_25:
  v118 = v19;
  v52 = *(*(v14 + 32) + 8);
  v53 = MEMORY[0x23EE7BAC0](v131, a3, a5);
  v113 = (v121.i64[1] + 255) >> 8;
  v112 = v121.i64[0] * v113;
  if ((v52 & 1) == 0)
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v53, 1536 * v112, 0);
    if (TempBuffer)
    {
      v58 = MPSLibrary::GetComputeState();
      if (v58)
      {
        objc_msgSend_setComputePipelineState_(a2, v54, v58, v55, v56, v57);
        MPSLibrary::ReleaseComputeState();
        v122 = 96 * v112;
        objc_msgSend_setBuffer_offset_atIndex_(a2, v59, TempBuffer, 0, 0, v60);
        objc_msgSend_setBytes_length_atIndex_(a2, v61, &v122, 4, 1, v62);
        *v130 = (96 * v112 + 255) >> 8;
        *&v130[8] = vdupq_n_s64(1uLL);
        *v129 = xmmword_239988DA0;
        *&v129[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v63, v130, v129, v64, v65);
        v70 = MPSLibrary::GetComputeState();
        if (v70)
        {
          objc_msgSend_setComputePipelineState_(a2, v66, v70, v67, v68, v69);
          MPSLibrary::ReleaseComputeState();
          v74 = 1;
          LODWORD(v110) = 1536;
          v111 = (v121.i64[0] + 255) >> 8;
          v75 = 256;
          v76 = 1;
          v77 = TempBuffer;
          goto LABEL_38;
        }
      }

LABEL_41:
      MPSAutoCache::~MPSAutoCache(v131);
      return -1;
    }
  }

  if (v12 >= 0x10)
  {
    v78 = 9;
  }

  else
  {
    v78 = 10;
  }

  v83 = MPSLibrary::GetComputeState();
  if (!v83)
  {
    goto LABEL_41;
  }

  objc_msgSend_setComputePipelineState_(a2, v79, v83, v80, v81, v82);
  MPSLibrary::ReleaseComputeState();
  v74 = 0;
  v77 = 0;
  v84 = *(*(*(v14 + 280) + 16 * v78) + 64);
  v75 = (v84 & 0x1F) << ((v84 >> 6) & 2);
  v113 = (v121.i64[1] + 127) >> 7;
  v110 = 768 * ((v84 >> 5) & 3);
  v111 = (v121.i64[0] + (v84 & 0x1F) - 1) / (v84 & 0x1F);
  if ((v84 & 0x80) != 0)
  {
    v76 = 4;
  }

  else
  {
    v76 = 1;
  }

LABEL_38:
  v85 = vmovn_s64(*(a6 + 64));
  HIWORD(v122) = v85.i16[2];
  LOWORD(v122) = v85.i16[0];
  v86 = vmovn_s64(v118);
  v124 = v86.i16[2];
  v123 = v86.i16[0];
  v87 = vmovn_s64(v121);
  v126 = v87.i16[2];
  v125 = v87.i16[0];
  v127 = v120;
  v128 = ((v114 & 0xFFFE) + (v114 & 0xFFFE) * v120) | 1;
  objc_msgSend_setTexture_atIndex_(a2, v71, a4, 0, v72, v73, v108);
  objc_msgSend_setTexture_atIndex_(a2, v88, a5, 1, v89, v90);
  v91 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v92, v91, 0, v93, v94);
  objc_msgSend_setBytes_length_atIndex_(a2, v95, &v122, 16, 0, v96);
  if (v74)
  {
    objc_msgSend_setBuffer_offset_atIndex_(a2, v97, v77, 0, 1, v99);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v100, v77, v112 << 9, 2, v101);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v102, v77, v112 << 10, 3, v103);
  }

  else
  {
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v97, v110 * (v75 / v76), 0, v98, v99);
  }

  *v130 = v111;
  *&v130[8] = v113;
  *&v130[16] = 1;
  *v129 = v75;
  *&v129[8] = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v104, v130, v129, v105, v106);
  MPSAutoCache::~MPSAutoCache(v131);
  return 0;
}

uint64_t sub_239966A50(uint64_t a1, uint64_t *a2)
{
  v9 = 256;
  v3 = MPSCreateFunctionConstantValues();
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v9, 41, 2, v5);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t sub_239966AD8(uint64_t a1, uint64_t *a2)
{
  v9 = 128;
  v3 = MPSCreateFunctionConstantValues();
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v9, 41, 2, v5);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void sub_23996964C(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 + 504));
  sub_23994744C((v1 + 528), v3, v4, v5, v6, v7);
  _Unwind_Resume(a1);
}

void *sub_2399696CC(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v8 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v8, v9, *a2 & 0x3FFLL, v10, v11, v12);
  objc_msgSend_setWidth_(v8, v13, *a3, v14, v15, v16);
  objc_msgSend_setHeight_(v8, v17, a3[1], v18, v19, v20);
  objc_msgSend_setArrayLength_(v8, v21, a3[2], v22, v23, v24);
  if (a3[2] == 1)
  {
    objc_msgSend_setTextureType_(v8, v25, 2, v26, v27, v28);
  }

  else
  {
    objc_msgSend_setTextureType_(v8, v25, 3, v26, v27, v28);
  }

  v29 = (*(*a1 + 32))(a1);
  objc_msgSend_setStorageMode_(v8, v30, v29, v31, v32, v33);
  v34 = (*(*a1 + 40))(a1);
  objc_msgSend_setCpuCacheMode_(v8, v35, v34, v36, v37, v38);
  objc_msgSend_setUsage_(v8, v39, 3, v40, v41, v42);
  if (a4)
  {
    v48 = objc_msgSend_usage(v8, v43, v44, v45, v46, v47);
    objc_msgSend_setUsage_(v8, v49, v48 | 0x4000, v50, v51, v52);
    objc_msgSend_setCompressionMode_(v8, v53, 1, v54, v55, v56);
  }

  return v8;
}

uint64_t sub_2399698D4()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  result = objc_msgSend_initWithArray_(v0, v1, &unk_284C9DF58, v2, v3, v4);
  qword_280B15A08 = result;
  return result;
}

void sub_23996B6A4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23996C2DC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23996CD34(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (v28)
  {
    objc_msgSend_popDebugGroup(v28, a2, a3, a4, a5, a6);
  }

  sub_2399400F0(&a28, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23996CD5C(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v6)
  {
    objc_msgSend_popDebugGroup(v6, a2, a3, a4, a5, a6);
  }

  _Unwind_Resume(exception_object);
}

void sub_23996E560(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t sub_23996E594(unsigned int a1, uint64_t a2)
{
  if ((a1 & 0x400) == 0)
  {
    return 0;
  }

  result = 1;
  switch(a2)
  {
    case 10:
    case 12:
    case 30:
    case 32:
    case 70:
    case 72:
      return result;
    case 20:
    case 22:
    case 60:
    case 62:
    case 110:
    case 112:
      result = (a1 >> 8) & 1;
      break;
    case 25:
    case 65:
    case 115:
      result = (a1 >> 9) & 1;
      break;
    default:
      return 0;
  }

  return result;
}

void sub_23996EF38(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23996F46C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_23996FD88(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t sub_23996FE6C(uint64_t a1, uint64_t *a2)
{
  v3 = MPSCreateFunctionConstantValues();
  v9 = a2[8] != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v3, v4, &v9, 53, 0, v5);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t sub_23996FEFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  v20 = a2[8] & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v6, &v20, 53, 1, v7);
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  if (*a3 != -1 || ((v14 = vaddvq_s32(vbicq_s8(xmmword_239988CE0, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239988CE0)) & 0xF) == 0) ? (v15 = v14 == 0) : (v15 = 0), v15 ? (v16 = a3[5] == -1) : (v16 = 0), !v16))
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v21 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 126, v9);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v21 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 125, v9);
    }

    if (a3[2] != -1)
    {
      v21 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 124, v9);
    }

    if (a3[3] != -1)
    {
      v21 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 123, v9);
    }

    if (a3[4] != -1)
    {
      v21 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 119, v9);
    }

    if (a3[5] != -1)
    {
      v21 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 118, v9);
    }

    if (a3[8] != -1)
    {
      v21 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 122, v9);
    }

    if (a3[9] != -1)
    {
      v21 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 121, v9);
    }

    if (a3[6] != -1)
    {
      v21 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 117, v9);
    }

    if (a3[7] != -1)
    {
      v21 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v21, 33, 116, v9);
    }
  }

  v17 = *a2;
  v18 = _MPSNewSpecializedFunction();

  return v18;
}

uint64_t sub_2399701B0(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + *MEMORY[0x277CD7378]);
  v9 = *(a1 + *MEMORY[0x277CD7350]);
  v10 = *(a1 + 160);
  v11 = *(a1 + *MEMORY[0x277CD7370]);
  v114 = *(a6 + 16);
  v12 = *(a6 + 40);
  v14 = *a6;
  v13 = *(a6 + 8);
  if (*a6 == v13)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v19 = *(a1 + *MEMORY[0x277CD7370]);
    v20 = a3;
    v21 = a5;
    v107 = *(a6 + 40);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v12 = v107;
    a3 = v20;
    a5 = v21;
    if (isEqual)
    {
      return -18;
    }
  }

  v113 = v9;
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

  v23 = *v14;
  v24 = *v13;
  if ((*v14 & 0x40000000000) != 0)
  {
    LODWORD(v23) = ((v24 ^ v23) & 0x10000000000) == 0;
    if (BYTE4(v23) >= BYTE4(v24))
    {
      LODWORD(v23) = 0;
    }

    if ((v24 & 0x40000000000) != 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }
  }

  else if ((v24 & 0x60000000000) != 0 || BYTE4(v24) < BYTE4(v23))
  {
    v25 = 0;
  }

  else if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = 1;
    if (BYTE4(v24) == 11 && v12.i64[1] * v12.i64[0] >= 0xFFE1uLL)
    {
      v100 = a5;
      v104 = a3;
      v108 = v12;
      v34 = MTLReportFailureTypeEnabled();
      v12 = v108;
      a3 = v104;
      a5 = v100;
      if (v34)
      {
        v25 = 1;
        MTLReportFailure();
        v12 = v108;
        a3 = v104;
        a5 = v100;
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    if ((v25 & 1) == 0)
    {
      v102 = a5;
      v105 = a3;
      v111 = v12;
      v98 = MTLReportFailureTypeEnabled();
      v12 = v111;
      a3 = v105;
      a5 = v102;
      if (v98)
      {
        MTLReportFailure();
        v12 = v111;
        a3 = v105;
        a5 = v102;
      }
    }

    if ((*(v13 + 5) & 2) != 0)
    {
      v103 = a5;
      v106 = a3;
      v112 = v12;
      v99 = MTLReportFailureTypeEnabled();
      v12 = v112;
      a3 = v106;
      a5 = v103;
      if (v99)
      {
        MTLReportFailure();
        v12 = v112;
        a3 = v106;
        a5 = v103;
      }
    }
  }

  if (!v25)
  {
    return -7;
  }

  v26 = *v13;
  if ((*v13 & 0x20000000000) != 0)
  {
    return -7;
  }

  v27 = *v14;
  if ((*v14 & 0x40000000000) != 0)
  {
    v30 = BYTE3(v26) & 0xF;
    switch(v30)
    {
      case 4u:
        v31 = (v27 & 0x10000000000) == 0;
        v32 = 123;
        break;
      case 2u:
        v31 = (v27 & 0x10000000000) == 0;
        v32 = 103;
        break;
      case 1u:
        v31 = (v27 & 0x10000000000) == 0;
        v32 = 53;
        break;
      default:
        return -7;
    }

    if (v31)
    {
      v29 = v32;
    }

    else
    {
      v29 = v32 + 1;
    }

    goto LABEL_47;
  }

  v28 = BYTE3(v26) & 0xF;
  if (v28 > 4)
  {
    return -7;
  }

  v29 = qword_239988F88[v28];
LABEL_47:
  v109 = v12;
  v132 = *v13;
  if ((v8 & 2) == 0)
  {
    v35 = a3;
    v36 = a5;
    PixelInfo = MPSDevice::GetPixelInfo(v113, v29, MPSImageFeatureChannelFormatNone);
    a3 = v35;
    a5 = v36;
    v132 = PixelInfo;
  }

  v101 = a5;
  MEMORY[0x23EE7BAC0](v131, a3, a5);
  v129 = v109;
  v130 = 1;
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v39 = *(v14 + 3) & 0xF;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    goto LABEL_52;
  }

  v45 = CompressedTempTexture;
  objc_msgSend_setComputePipelineState_(a2, v40, ComputeState, v41, v42, v43);
  v51 = objc_msgSend_threadExecutionWidth(ComputeState, v46, v47, v48, v49, v50);
  MPSLibrary::ReleaseComputeState();
  v52 = vmovn_s64(*(a6 + 64));
  v125[1] = v52.i16[2];
  v125[0] = v52.i16[0];
  v126 = 0;
  v53 = vmovn_s64(v109);
  v128 = v53.i16[2];
  *v110.i8 = v53;
  v127 = v53.i16[0];
  objc_msgSend_setTexture_atIndex_(a2, v54, a4, 0, v55, v56);
  objc_msgSend_setTexture_atIndex_(a2, v57, v45, 1, v58, v59);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v61, Sampler, 0, v62, v63);
  objc_msgSend_setBytes_length_atIndex_(a2, v64, v125, 12, 0, v65);
  v123 = (v16 + v51 - 1) / v51;
  v124 = vdupq_n_s64(1uLL);
  v121 = v51;
  v122 = v124;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v66, &v123, &v121, v67, v68);
  v69 = *(v13 + 3) & 0xF;
  v74 = MPSLibrary::GetComputeState();
  if (v74)
  {
    objc_msgSend_setComputePipelineState_(a2, v70, v74, v71, v72, v73);
    v80 = objc_msgSend_threadExecutionWidth(v74, v75, v76, v77, v78, v79);
    MPSLibrary::ReleaseComputeState();
    v81 = vmovn_s64(v114);
    v116 = 0;
    v118 = v81.i16[2];
    v117 = v81.i16[0];
    v120 = v110.i16[2];
    v119 = v110.i16[0];
    objc_msgSend_setTexture_atIndex_(a2, v82, v45, 0, v83, v84);
    objc_msgSend_setTexture_atIndex_(a2, v85, v101, 1, v86, v87);
    v88 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v89, v88, 0, v90, v91);
    objc_msgSend_setBytes_length_atIndex_(a2, v92, &v116, 12, 0, v93);
    v123 = (v15 + v80 - 1) / v80;
    v124 = vdupq_n_s64(1uLL);
    v121 = v80;
    v122 = v124;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v94, &v123, &v121, v95, v96);
    v97 = 0;
  }

  else
  {
LABEL_52:
    v97 = -1;
  }

  MPSAutoCache::~MPSAutoCache(v131);
  return v97;
}

double sub_239970A68(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = a5;
  *&v6 = -a4;
  *(&v6 + 1) = -a4;
  v7 = vaddq_f32(v6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_239988FB0).u64[0];
  }

  return *v7.i64;
}

double sub_239970AD4(uint64_t a1, float32x4_t a2, double a3, float a4, float a5)
{
  LODWORD(v5) = 0;
  *(&v5 + 1) = 1.0 / a5;
  *&v6 = -a4;
  *(&v6 + 1) = -a4;
  v7 = vaddq_f32(v6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(1.0 / a5), a2.f32[0]), v5, *a2.f32, 1), xmmword_239988FE0, a2, 2));
  if (a1)
  {
    v7.i64[0] = vaddq_f32(v7, xmmword_239988FB0).u64[0];
  }

  return *v7.i64;
}

int64x2_t sub_2399712C4@<Q0>(uint64_t a1@<X0>, int a2@<W2>, int64x2_t *a3@<X8>)
{
  if (a2)
  {
    result = vdupq_n_s64(0x10uLL);
    *a3 = result;
    a3[1].i64[0] = 1;
  }

  else
  {
    result = *(a1 + 8);
    *a3 = result;
    a3[1].i64[0] = *(a1 + 24);
  }

  return result;
}

int64x2_t sub_2399712F4@<Q0>(int64x2_t *a1@<X0>, int a2@<W2>, int64x2_t *a3@<X8>)
{
  if (a2)
  {
    result = vdupq_n_s64(0x10uLL);
    *a3 = result;
    a3[1].i64[0] = 1;
  }

  else
  {
    result = a1[2];
    *a3 = result;
    a3[1].i64[0] = a1[3].i64[0];
  }

  return result;
}

uint64_t sub_2399713C4@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 32);
    *a4 = v6;
    *(a4 + 16) = *(result + 48);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, a5).i64[0], 0), xmmword_2399890D0, xmmword_2399890C0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971418@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, int64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 8);
    *a4 = v6;
    *(a4 + 16) = *(result + 24);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(a5, 1)).i64[0], 0), xmmword_2399890F0, xmmword_2399890E0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971510@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 32);
    *a4 = v6;
    *(a4 + 16) = *(result + 48);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, a5).i64[0], 0), xmmword_2399890D0, xmmword_2399890C0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971564@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, int64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 8);
    *a4 = v6;
    *(a4 + 16) = *(result + 24);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(a5, 1)).i64[0], 0), xmmword_2399890F0, xmmword_2399890E0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_23997165C@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 32);
    *a4 = v6;
    *(a4 + 16) = *(result + 48);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, a5).i64[0], 0), xmmword_2399890D0, xmmword_2399890C0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_2399716B0@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, int64x2_t a5@<Q0>)
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x10uLL);
  }

  else
  {
    v6 = *(result + 8);
    *a4 = v6;
    *(a4 + 16) = *(result + 24);
    if (!a2)
    {
      return result;
    }

    v6.f64[0] = 1.0;
    v5 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(a5, 1)).i64[0], 0), xmmword_2399890F0, xmmword_2399890E0);
  }

  *a4 = v5;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_239971798(void *a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = objc_msgSend_scaleTransform(a1, a2, a3, a4, a5, a6);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v18 = objc_msgSend_width(a4, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_height(a4, v19, v20, v21, v22, v23);
  v25.f64[0] = v18;
  v25.f64[1] = v24;
  v95 = v25;
  v31 = objc_msgSend_width(a5, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_height(a5, v32, v33, v34, v35, v36);
  if (!v11)
  {
    v47.f64[0] = v31;
    v47.f64[1] = v37;
    v94 = 0u;
    v96 = vdivq_f64(v47, v95);
    v111 = v96;
    v112 = 0u;
    if (a4 != a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    isEqual = 1;
    goto LABEL_6;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v94 = *(v11 + 16);
  v96 = vmaxnmq_f64(*v11, vdivq_f64(_Q0, v95));
  v111 = v96;
  v112 = v94;
  if (a4 == a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  isEqual = objc_msgSend_isEqual_(a4, v38, a5, v39, v40, v41);
LABEL_6:
  MEMORY[0x23EE7BAC0](v110, a3, a5);
  if (v96.f64[0] == 1.0 && v94.n128_f64[0] == 0.0)
  {
    if ((isEqual & 1) == 0)
    {
      v52 = sub_23997209C(a1, a3, 1, v48, v49, v50, v96.f64[1], 1.0, v94);
      if (v52)
      {
        v53 = sub_2399726A0(a1, a2, v51, a4, a5, a6, &v111, v52);
LABEL_30:
        v54 = v53;
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (v96.f64[1] == 1.0 && v94.n128_f64[1] == 0.0)
  {
    if ((isEqual & 1) == 0)
    {
      v85 = sub_23997209C(a1, a3, 0, v48, v49, v50, v96.f64[0], 1.0, v94);
      if (v85)
      {
        v53 = sub_239972AEC(a1, a2, v84, a4, a5, a6, &v111, v85);
        goto LABEL_30;
      }

      goto LABEL_26;
    }

LABEL_14:
    v54 = -18;
    goto LABEL_31;
  }

  v55 = **(a6 + 8);
  if ((v55 & 0xFF00000000) <= 0x1000000000)
  {
    v56 = &unk_239989148;
  }

  else
  {
    v56 = &unk_239989120;
  }

  PixelInfo = MPSDevice::GetPixelInfo(v12, v56[(v55 >> 24) & 0xF], MPSImageFeatureChannelFormatNone);
  v62 = sub_23997209C(a1, a3, 0, v57, v58, v59, v96.f64[0], v60, v61);
  v68 = sub_23997209C(a1, a3, 1, v63, v64, v65, v96.f64[1], v66, v67);
  if (v62)
  {
    _ZF = v68 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
LABEL_26:
    v54 = -1;
    goto LABEL_31;
  }

  v70 = *(v68 + 9);
  v71 = v24 + v70 - 1;
  v72 = *(a6 + 40);
  v73 = *(v62 + 9);
  v74 = v18 + v73 - 1;
  if (((v73 * (v71 * v72)) + (v70 * (*(a6 + 48) * v72))) <= ((v70 * (v74 * *(a6 + 48))) + (v73 * (*(a6 + 48) * v72))))
  {
    *&v80 = v94.n128_u64[0];
    *(&v82 + 1) = *&v96.f64[1];
    *&v76 = v96.f64[0];
    *(&v76 + 1) = 1.0;
    v92 = v68;
    v86 = floor(*(v68 + 2));
    *(&v80 + 1) = -v86;
    *&v82 = 1.0;
    *&v81 = 0;
    *(&v81 + 1) = v94.n128_f64[1] + v96.f64[1] * v86;
    v97 = sub_2399726A0;
    v79 = sub_239972AEC;
    v83 = v62;
  }

  else
  {
    *(&v75 + 1) = v94.n128_u64[1];
    *(&v76 + 1) = *&v96.f64[1];
    *&v76 = 1.0;
    v77 = floor(*(v62 + 2));
    *&v75 = -v77;
    *&v78 = v96.f64[0];
    *(&v78 + 1) = 1.0;
    *&v81 = v94.n128_f64[0] + v96.f64[0] * v77;
    v97 = sub_239972AEC;
    v79 = sub_2399726A0;
    v72 = v74;
    v71 = *(a6 + 48);
    v80 = v75;
    v81 = v81;
    v82 = v78;
    v83 = v68;
    v92 = v62;
  }

  *&v107 = v72;
  *(&v107 + 1) = v71;
  v108 = 1;
  v106[0] = v76;
  v106[1] = v80;
  v105[0] = v82;
  v105[1] = v81;
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v98 = *a6;
  p_PixelInfo = &PixelInfo;
  *v101 = 0;
  v100 = 0uLL;
  *&v101[8] = v107;
  *&v101[24] = 1;
  v102 = *(a6 + 64);
  v103 = *(a6 + 80);
  v104 = 0;
  v54 = (v79)(a1, a2, a3, a4, CompressedTempTexture, &v98, v106, v83, v110);
  if (!v54)
  {
    v88 = *(a6 + 8);
    v98 = p_PixelInfo;
    p_PixelInfo = v88;
    v89 = *(a6 + 32);
    v100 = *(a6 + 16);
    *v101 = v89;
    v90 = *(a6 + 64);
    *&v101[16] = *(a6 + 48);
    v102 = v90;
    v103 = *(a6 + 80);
    v53 = (v97)(a1, a2, a3, CompressedTempTexture, a5, &v98, v105, v92, v110);
    goto LABEL_30;
  }

LABEL_31:
  MPSAutoCache::~MPSAutoCache(v110);
  return v54;
}

id *sub_23997209C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, __n128 a9)
{
  a9.n128_f64[0] = fmin(a7, 1.0);
  v10 = a1 + 248;
  if (*(a1 + 248) && *(a1 + 256) == a9.n128_f64[0])
  {
    if (!a2)
    {
      return v10;
    }

LABEL_50:
    if ((objc_msgSend_retainedReferences(a2, a2, a3, a4, a5, a6, *&v103, *&v104) & 1) == 0)
    {
      v96 = *v10;
      v97 = *v10;
      v107 = MEMORY[0x277D85DD0];
      v108 = 3221225472;
      v109 = sub_239972F64;
      v110 = &unk_278AC37A8;
      v111 = v96;
      objc_msgSend_addCompletedHandler_(a2, v98, &v107, v99, v100, v101);
    }

    return v10;
  }

  v11 = (a1 + 296);
  if (*(a1 + 296) && *(a1 + 304) == a9.n128_f64[0])
  {
    if (a2 && (objc_msgSend_retainedReferences(a2, a2, a3, a4, a5, a6) & 1) == 0)
    {
      v12 = *v11;
      v13 = *v11;
      v107 = MEMORY[0x277D85DD0];
      v108 = 3221225472;
      v109 = sub_239972F64;
      v110 = &unk_278AC37A8;
      v111 = v12;
      objc_msgSend_addCompletedHandler_(a2, v14, &v107, v15, v16, v17);
    }

    return v11;
  }

  else
  {
    v10 += 48 * (a3 != 0);
    __asm { FMOV            V1.2D, #1.0 }

    v25 = vminnmq_f64(vdupq_lane_s64(a9.n128_i64[0], 0), _Q1);
    v103 = a9;
    v104 = vandq_s8(vmaxnmq_f64(vmulq_f64(v25, vdupq_n_s64(0x4050000000000000uLL)), _Q1), vdupq_n_s64(0xFFF0000000000000));
    __asm { FMOV            V2.2D, #6.0 }

    v106 = vrndpq_f64(vsubq_f64(vdivq_f64(_Q2, v25), vdivq_f64(_Q1, v104)));
    v27 = (&v105 | (8 * (a3 != 0)));
    v28 = *(&v106 & 0xFFFFFFFFFFFFFFF7 | (8 * (a3 != 0)));

    *v10 = 0;
    *(v10 + 8) = v103.n128_u64[0];
    *(v10 + 16) = -3.0 / v103.n128_f64[0] + 0.5;
    *(v10 + 24) = 3;
    *(v10 + 36) = v28;
    v105 = v104;
    v29 = *v27;
    *(v10 + 28) = v29;
    *(v10 + 32) = 1.0 / v29;
    v30 = (v28 + 3) >> 2;
    *(v10 + 40) = v29 - 1;
    *(v10 + 44) = v30;
    v32 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v31, 115, v30, v29, 0);
    if (!v32)
    {
      return 0;
    }

    v37 = v32;
    objc_msgSend_setUsage_(v32, v33, 1, v34, v35, v36);
    v42 = objc_msgSend_newTextureWithDescriptor_(*(*(a1 + *MEMORY[0x277CD7350]) + 16), v38, v37, v39, v40, v41);
    *v10 = v42;
    if (!v42)
    {
      return 0;
    }

    if (a7 >= 1.0)
    {
      v70 = *(v10 + 28);
      v48 = &unk_239989180;
    }

    else
    {
      if (qword_280B159F8 != -1)
      {
        dispatch_once(&qword_280B159F8, &unk_284C6BAE0);
      }

      v43 = (*(v10 + 28) * *(v10 + 44));
      v44 = malloc_type_calloc(3uLL, 16 * v43, 0x100004052888210uLL);
      v48 = v44;
      v49 = &v44[v43];
      v50 = &v49[v43];
      v51 = *(v10 + 44);
      if (v51)
      {
        v52 = 0;
        LODWORD(v45) = *(v10 + 24);
        v53 = vdupq_lane_s64(COERCE__INT64(v45 / a7), 0);
        v54 = vsubq_f64(xmmword_239989100, v53);
        v46 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(xmmword_239989110, v53)), v54);
        v55 = a7;
        v56 = v44;
        do
        {
          *v54.f64 = v52;
          v54 = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(*&v54.f64[0], 0), v46), v55);
          *v56++ = v54;
          v52 += 4;
        }

        while (4 * v51 != v52);
        if (*(v10 + 28) >= 2u)
        {
          v57 = 1;
          v58 = v51;
          do
          {
            v59 = v44;
            v60 = v51;
            do
            {
              *v54.f64 = (v55 * v57) * *(v10 + 32);
              v47 = *v59;
              v54 = vsubq_f32(*v59, vdupq_lane_s32(*&v54.f64[0], 0));
              v59[v58] = v54;
              ++v59;
              --v60;
            }

            while (v60);
            ++v57;
            v58 += v51;
          }

          while (v57 < *(v10 + 28));
        }
      }

      if (v43)
      {
        v46.f32[0] = *(v10 + 24);
        v61 = 1.0 / v46.f32[0];
        v46.f32[0] = v46.f32[0] / 9.8696;
        v62 = vdupq_lane_s32(*v46.f32, 0);
        v63 = v44;
        v64 = &v44[v43];
        v65 = &v64[v43];
        v66 = v43;
        do
        {
          v47.f32[0] = *(v10 + 24);
          v67 = vdupq_lane_s32(*v47.f32, 0);
          v68 = vmaxnmq_f32(vminnmq_f32(*v63, v67), vnegq_f32(v67));
          *v63++ = v68;
          v47 = vmulq_n_f32(v68, v61);
          *v64++ = v47;
          *v65++ = vdivq_f32(v62, vmulq_f32(v68, v68));
          --v66;
        }

        while (v66);
      }

      v69 = (8 * v43);
      LODWORD(v107) = 8 * v43;
      if (off_280B159F0)
      {
        off_280B159F0(v44, v44, &v107);
      }

      else if (v69)
      {
        v71 = v44;
        do
        {
          *v71 = __sinpif (*v71);
          ++v71;
          --v69;
        }

        while (v69);
      }

      __asm { FMOV            V0.4S, #1.0 }

      if (v43)
      {
        v73.i64[0] = 0x7F0000007FLL;
        v73.i64[1] = 0x7F0000007FLL;
        v74 = vnegq_f32(v73);
        v75 = v48;
        do
        {
          v76 = *v49++;
          v77 = vmulq_f32(*v75, v76);
          v78 = *v50++;
          *v75++ = vbslq_s8(vceqq_f32(v78, v74), _Q0, vmulq_f32(v77, v78));
          --v43;
        }

        while (v43);
      }

      v70 = *(v10 + 28);
      if (v70)
      {
        v79 = 0;
        v80 = v48 + 1;
        v81 = 16 * v51;
        v82 = v48;
        do
        {
          v83 = v48[v79 * v51];
          if (v51 >= 2)
          {
            v84 = v80;
            v85 = v51 - 1;
            do
            {
              v86 = *v84++;
              v83 = vaddq_f32(v83, v86);
              --v85;
            }

            while (v85);
          }

          if (v51)
          {
            v87 = vaddq_f32(v83, vextq_s8(v83, v83, 8uLL));
            v88 = vdivq_f32(_Q0, vaddq_f32(v87, vrev64q_s32(v87)));
            v89 = v82;
            v90 = v51;
            do
            {
              *v89 = vmulq_f32(v88, *v89);
              ++v89;
              --v90;
            }

            while (v90);
            v70 = *(v10 + 28);
          }

          ++v79;
          v80 = (v80 + v81);
          v82 = (v82 + v81);
        }

        while (v79 < v70);
      }
    }

    v91 = *(v10 + 44);
    v92 = v70;
    v93 = malloc_type_malloc(8 * v91 * v70, 0x1000040BDFB0063uLL);
    MPSConvertFloatToHalf();
    v94 = *v10;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = v91;
    v111 = v92;
    v112 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v94, v95, &v107, 0, v93, 8 * v91);
    if (v48 != &unk_239989180)
    {
      free(v48);
    }

    free(v93);
    if (a2)
    {
      goto LABEL_50;
    }
  }

  return v10;
}

uint64_t sub_2399726A0(void *a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, float64x2_t *a7, uint64_t a8)
{
  if (a4 == a5)
  {
    return -18;
  }

  v130 = v8;
  v131 = v9;
  if (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6))
  {
    return -18;
  }

  v110 = *(a1 + *MEMORY[0x277CD7350]);
  v23 = MEMORY[0x277CD7370];
  v113 = *(a1 + *MEMORY[0x277CD7370]);
  v109 = a1[20];
  v29 = objc_msgSend_isCompressed(a5, v17, v18, v19, v20, v21) && objc_msgSend_compressionType(a5, v24, v25, v26, v27, v28) == 1;
  v30 = *(*(a1 + *v23) + 32);
  v31 = MPSIsTextureTwiddled();
  v111 = *a7;
  v37 = objc_msgSend_scaleTransform(a1, v32, v33, v34, v35, v36);
  v38 = v111;
  if (v37)
  {
    v38 = *v37;
  }

  v128 = 0uLL;
  v129 = 0;
  (*(*v30 + 16))(&v128, v30, v31, v29, v38);
  objc_msgSend_pixelFormat(a5, v39, v40, v41, v42, v43);
  if (v29)
  {
    v44 = (v128 + 31) / v128;
    v45 = (*(&v128 + 1) + 31) / *(&v128 + 1);
  }

  else
  {
    v45 = 1;
    v44 = 1;
  }

  v46 = *a7;
  __asm { FMOV            V2.2D, #0.5 }

  v52 = vdivq_f64(vsubq_f64(_Q2, a7[1]), *a7);
  v52.f64[1] = *(a8 + 16) + v52.f64[1];
  v53 = vmovn_s64(*(a6 + 16));
  v54 = v53.i16[2];
  v55 = v53.i16[0];
  v56 = *(a6 + 40);
  v57 = vmovn_s64(v56);
  v58 = v57.i16[2];
  v59 = v57.i16[0];
  __asm { FMOV            V4.2S, #1.0 }

  v61 = vdiv_f32(_D4, vcvt_f32_f64(*a7));
  v123[1] = v54;
  v123[0] = v55;
  v123[3] = v58;
  v123[2] = v59;
  *&v52.f64[0] = vcvt_f32_f64(v52);
  v124 = v52.f64[0];
  v125 = v61;
  *v52.f64 = *(a8 + 28);
  v62 = *(a8 + 40);
  v126 = vdiv_f32(0xCB4000004B400000, vdup_lane_s32(*&v52.f64[0], 0));
  v127 = v62;
  if (v29)
  {
    v63 = 256;
  }

  else
  {
    v63 = 0;
    if (v46.f64[1] >= 1.0 && v56.i64[0] >= 5uLL)
    {
      v63 = 0;
      if ((**(a6 + 8) & 0xFC00000000uLL) <= 0xB00000000)
      {
        **a6;
      }
    }
  }

  *&v64 = -1;
  *(&v64 + 1) = -1;
  v121 = v64;
  v122 = v64;
  v119 = -1;
  v120 = v64;
  v117 = v64;
  v118 = v63 | (16 * v45) | v44;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    return -19;
  }

  v71 = ComputeState;
  v108 = v44;
  v112 = v45;
  v72 = objc_msgSend_threadExecutionWidth(ComputeState, v66, v67, v68, v69, v70);
  if (v72 <= 1)
  {
    v78 = 1;
  }

  else
  {
    v78 = v72;
  }

  v79 = objc_msgSend_maxTotalThreadsPerThreadgroup(v71, v73, v74, v75, v76, v77);
  objc_msgSend_setComputePipelineState_(a2, v80, v71, v81, v82, v83);
  objc_msgSend_setTexture_atIndex_(a2, v84, a4, 0, v85, v86);
  objc_msgSend_setTexture_atIndex_(a2, v87, a5, 1, v88, v89);
  objc_msgSend_setTexture_atIndex_(a2, v90, *a8, 2, v91, v92);
  objc_msgSend_setBytes_length_atIndex_(a2, v93, v123, 40, 0, v94);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v96, Sampler, 0, v97, v98);
  v102 = *(&v128 + 1);
  if (*(&v128 + 1) * v128 <= v79)
  {
    v78 = v128;
    v103 = v108;
  }

  else
  {
    if (v79 <= 2 * v78)
    {
      v102 = 1;
    }

    else
    {
      v102 = v79 / v78;
    }

    v103 = v108;
    *&v128 = v78;
    *(&v128 + 1) = v102;
    v129 = 1;
  }

  v104 = *(a6 + 40);
  v105 = *(a6 + 48);
  v106 = (v104 + v78 * v103 - 1) / (v78 * v103);
  v107 = (v105 - 1 + v102 * v112) / (v102 * v103);
  if (!v29 && a7->f64[1] >= 1.0 && v104 >= 5)
  {
    v106 = (v78 + ((v104 + 3) >> 2) - 1) / v78;
    v107 = (v105 - 1 + v102) / v102;
  }

  if (v29)
  {
    objc_msgSend_setImageblockWidth_height_(a2, v99, 32, 32, v100, v101);
  }

  v116[0] = v106;
  v116[1] = v107;
  v116[2] = 1;
  v114 = v128;
  v115 = v129;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v99, v116, &v114, v100, v101);
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t sub_239972AEC(void *a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, float64x2_t *a7, uint64_t a8)
{
  if (a4 == a5)
  {
    return -18;
  }

  v124 = v8;
  v125 = v9;
  if (objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6))
  {
    return -18;
  }

  v105 = *(a1 + *MEMORY[0x277CD7350]);
  v104 = a1[20];
  v18 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v19 = MPSIsTextureTwiddled();
  v106 = *a7;
  v25 = objc_msgSend_scaleTransform(a1, v20, v21, v22, v23, v24);
  if (v25)
  {
    v106 = *v25;
  }

  v36 = objc_msgSend_isCompressed(a5, v26, v27, v28, v29, v30) && objc_msgSend_compressionType(a5, v31, v32, v33, v34, v35) == 1;
  v122 = 0uLL;
  v123 = 0;
  (*(*v18 + 24))(&v122, v18, v19, v36, v106);
  objc_msgSend_pixelFormat(a5, v37, v38, v39, v40, v41);
  if (v36)
  {
    v42 = (v122 + 31) / v122;
    v43 = (*(&v122 + 1) + 31) / *(&v122 + 1);
  }

  else
  {
    v43 = 1;
    v42 = 1;
  }

  v44 = *a7;
  __asm { FMOV            V2.2D, #0.5 }

  v50 = vdivq_f64(vsubq_f64(_Q2, a7[1]), *a7);
  v50.f64[0] = *(a8 + 16) + v50.f64[0];
  v51 = vmovn_s64(*(a6 + 16));
  v117[1] = v51.i16[2];
  v117[0] = v51.i16[0];
  v52 = *(a6 + 40);
  v53 = vmovn_s64(v52);
  v117[3] = v53.i16[2];
  v117[2] = v53.i16[0];
  *&v50.f64[0] = vcvt_f32_f64(v50);
  __asm { FMOV            V3.2D, #1.0 }

  v118 = v50.f64[0];
  v119 = vcvt_f32_f64(vdivq_f64(_Q3, v44));
  *v50.f64 = *(a8 + 28);
  _Q3.f64[0] = *(a8 + 40);
  v120 = vdiv_f32(0xCB4000004B400000, vdup_lane_s32(*&v50.f64[0], 0));
  v121 = _Q3.f64[0];
  if (v36)
  {
    v55 = 256;
  }

  else
  {
    v55 = 0;
    if (v44.f64[0] > 1.0 && v52.i64[1] >= 5uLL)
    {
      v55 = 0;
      if ((**(a6 + 8) & 0xFC00000000uLL) <= 0xB00000000)
      {
        **a6;
      }
    }
  }

  *&v56 = -1;
  *(&v56 + 1) = -1;
  v115 = v56;
  v116 = v56;
  v113 = -1;
  v114 = v56;
  v111 = v56;
  v107 = v42;
  v112 = v55 | (16 * v43) | v42;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    return -19;
  }

  v63 = ComputeState;
  v103 = v43;
  v64 = objc_msgSend_threadExecutionWidth(ComputeState, v58, v59, v60, v61, v62);
  if (v64 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v64;
  }

  v71 = objc_msgSend_maxTotalThreadsPerThreadgroup(v63, v65, v66, v67, v68, v69);
  objc_msgSend_setComputePipelineState_(a2, v72, v63, v73, v74, v75);
  objc_msgSend_setTexture_atIndex_(a2, v76, a4, 0, v77, v78);
  objc_msgSend_setTexture_atIndex_(a2, v79, a5, 1, v80, v81);
  objc_msgSend_setTexture_atIndex_(a2, v82, *a8, 2, v83, v84);
  objc_msgSend_setBytes_length_atIndex_(a2, v85, v117, 40, 0, v86);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v88, Sampler, 0, v89, v90);
  v95 = *(&v122 + 1);
  if (*(&v122 + 1) * v122 <= v71)
  {
    v70 = v122;
    v97 = v103;
    v96 = v107;
  }

  else
  {
    v96 = v107;
    if (v71 <= 2 * v70)
    {
      v95 = 1;
    }

    else
    {
      v95 = v71 / v70;
    }

    v97 = v103;
    *&v122 = v70;
    *(&v122 + 1) = v95;
    v123 = 1;
  }

  v98 = v70 * v96;
  v99 = *(a6 + 48);
  v100 = *(a6 + 40) - 1;
  v101 = (v100 + v98) / v98;
  v102 = (v95 * v97 + v99 - 1) / (v95 * v97);
  if (!v36)
  {
    v94 = a7->f64[0];
    if (a7->f64[0] > 1.0 && v99 >= 5)
    {
      v101 = (v100 + v70) / v70;
      v102 = (v95 + ((v99 + 3) >> 2) - 1) / v95;
    }
  }

  if (v36)
  {
    objc_msgSend_setImageblockWidth_height_(a2, v91, 32, 32, v92, v93, v94);
  }

  v110[0] = v101;
  v110[1] = v102;
  v110[2] = 1;
  v108 = v122;
  v109 = v123;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v91, v110, &v108, v92, v93);
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void *sub_239972F28()
{
  result = dlopen("/System/Library/Frameworks/Accelerate.framework/Accelerate", 5);
  if (result)
  {
    result = dlsym(result, "vvsinpif");
    off_280B159F0 = result;
  }

  return result;
}

void sub_2399740C0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_23994744C(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void sub_239974638(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t sub_23997464C(uint64_t a1, char *a2, void *a3, void *a4, int64x2_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = MEMORY[0x277CD7370];
  v14 = *(a1 + *MEMORY[0x277CD7370]);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v339 = objc_opt_class();
      v357 = NSStringFromClass(v339);
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v340 = objc_opt_class();
      v357 = NSStringFromClass(v340);
      MTLReportFailure();
    }

    objc_msgSend_columns(a4, a2, a3, a4, a5, a6, v357);
    objc_msgSend_height(a3, v15, v16, v17, v18, v19);
    objc_msgSend_width(a3, v20, v21, v22, v23, v24);
    objc_msgSend_featureChannels(a3, v25, v26, v27, v28, v29);
    v35 = objc_msgSend_columns(a4, v30, v31, v32, v33, v34) - a5->i64[1];
    v41 = objc_msgSend_height(a3, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_width(a3, v42, v43, v44, v45, v46) * v41;
    if (v35 < v47 * objc_msgSend_featureChannels(a3, v48, v49, v50, v51, v52) && MTLReportFailureTypeEnabled())
    {
      v365 = objc_msgSend_columns(a4, v53, v54, v55, v56, v57);
      v341 = a5->i64[1];
      v363 = objc_msgSend_height(a3, v342, v343, v344, v345, v346);
      v361 = objc_msgSend_width(a3, v347, v348, v349, v350, v351);
      v362 = objc_msgSend_featureChannels(a3, v352, v353, v354, v355, v356);
      v359 = v341;
      v360 = v363;
      v358 = v365;
      MTLReportFailure();
    }

    objc_msgSend_rows(a4, v53, v54, v55, v56, v57, v358, v359, v360, v361, v362);
    v58 = a5->i64[0];
    if (v58 >= objc_msgSend_rows(a4, v59, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
    {
      v357 = a5->i64[0];
      v359 = objc_msgSend_rows(a4, a2, a3, a4, a5, a6);
      MTLReportFailure();
    }
  }

  v64 = *(v12 + 16);
  if (v64)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v64, a2, a3, a4, a5, a6);
  }

  v65 = objc_msgSend_featureChannels(a3, a2, a3, a4, a5, a6, v357, v359);
  if (objc_msgSend_textureType(a3, v66, v67, v68, v69, v70) == 2)
  {
    v77 = a5->i64[0];
    v76 = a5->i64[1];
    v78 = *(a1 + *v13);
    objc_msgSend_dataType(a4, v71, v72, v73, v74, v75);
    result = MPSLibrary::GetComputeState();
    if (result)
    {
      v84 = result;
      objc_msgSend_setComputePipelineState_(a2, v80, result, v81, v82, v83);
      v364 = objc_msgSend_threadExecutionWidth(v84, v85, v86, v87, v88, v89);
      v95 = objc_msgSend_maxTotalThreadsPerThreadgroup(v84, v90, v91, v92, v93, v94);
      MPSLibrary::ReleaseComputeState();
      v101 = objc_msgSend_rowBytes(a4, v96, v97, v98, v99, v100);
      v107 = objc_msgSend_dataType(a4, v102, v103, v104, v105, v106) >> 3;
      v113 = objc_msgSend_offset(a4, v108, v109, v110, v111, v112);
      v368 = v113 + v101 * v77 + objc_msgSend_matrixBytes(a4, v114, v115, v116, v117, v118) * a7 + v76 * v107;
      v375 = 0;
      v377 = 0u;
      v376 = objc_msgSend_rowBytes(a4, v119, v120, v121, v122, v123);
      LOWORD(v377) = objc_msgSend_featureChannels(a3, v124, v125, v126, v127, v128);
      WORD1(v377) = objc_msgSend_numberOfImages(a3, v129, v130, v131, v132, v133);
      *(&v377 + 4) = 0;
      v139 = objc_msgSend_width(a3, v134, v135, v136, v137, v138);
      v145 = objc_msgSend_height(a3, v140, v141, v142, v143, v144);
      v151 = objc_msgSend_numberOfImages(a3, v146, v147, v148, v149, v150);
      v157 = 8;
      if (v139 <= 0x10)
      {
        v158 = 8;
      }

      else
      {
        v158 = 16;
      }

      if (v139 <= 0x10)
      {
        v159 = 3;
      }

      else
      {
        v159 = 4;
      }

      if (v145 <= 0x10)
      {
        v160 = 3;
      }

      else
      {
        v157 = 16;
        v160 = 4;
      }

      v161 = v151 << (v160 + v159);
      if (v161 > v95)
      {
        v162 = 1;
      }

      else
      {
        v162 = v151;
      }

      if (v161 > v95)
      {
        v163 = 1;
      }

      else
      {
        v163 = v157;
      }

      if (v161 <= v95)
      {
        v164 = v158;
      }

      else
      {
        v164 = v364;
      }

      v165 = (objc_msgSend_width(a3, v152, v153, v154, v155, v156) + v164 - 1) / v164;
      v176 = v163 + objc_msgSend_height(a3, v166, v167, v168, v169, v170) - 1;
      if (v161 <= v95)
      {
        v177 = v160;
      }

      else
      {
        v177 = 0;
      }

      v178 = v176 >> v177;
      v179 = (v162 + objc_msgSend_numberOfImages(a3, v171, v172, v173, v174, v175) - 1) / v162;
      v185 = objc_msgSend_texture(a3, v180, v181, v182, v183, v184);
      objc_msgSend_setTexture_atIndex_(a2, v186, v185, 0, v187, v188);
      v194 = objc_msgSend_data(a4, v189, v190, v191, v192, v193);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v195, v194, v368, 0, v196);
      objc_msgSend_setBytes_length_atIndex_(a2, v197, &v375, 32, 1, v198);
      v372 = v165;
      v373 = v178;
      v374 = v179;
      v369 = v164;
      v370 = v163;
      v371 = v162;
      return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v199, &v372, &v369, v200, v201);
    }

    return result;
  }

  v202 = (v65 + 3) >> 2;
  if ((objc_msgSend_featureChannels(a3, v71, v72, v73, v74, v75) & 3) == 0 && !a5->i64[0])
  {
    a5->i64[1];
  }

  objc_msgSend_dataType(a4, v203, v204, v205, v206, v207);
  v208 = a6;
  result = MPSLibrary::GetComputeState();
  if (result)
  {
    v213 = result;
    objc_msgSend_setComputePipelineState_(a2, v209, result, v210, v211, v212);
    v219 = objc_msgSend_maxTotalThreadsPerThreadgroup(v213, v214, v215, v216, v217, v218);
    MPSLibrary::ReleaseComputeState();
    v220 = v208;
    v221 = a5->i32[0];
    v227 = objc_msgSend_rowBytes(a4, v222, v223, v224, v225, v226) * v221;
    *(&v377 + 1) = 0;
    v375 = vmovn_s64(*a5);
    LODWORD(v376) = objc_msgSend_rowBytes(a4, v228, v229, v230, v231, v232);
    HIDWORD(v376) = v227;
    LOWORD(v377) = objc_msgSend_featureChannels(a3, v233, v234, v235, v236, v237);
    WORD1(v377) = objc_msgSend_numberOfImages(a3, v238, v239, v240, v241, v242);
    *(&v377 + 4) = 0;
    if (!v220)
    {
      v253 = (objc_msgSend_featureChannels(a3, v243, v244, v245, v246, v247) + 3) >> 2;
      if ((objc_msgSend_featureChannels(a3, v260, v261, v262, v263, v264) & 3) != 0)
      {
        if (v253 >= v219)
        {
          v253 = v219;
        }

        v275 = objc_msgSend_width(a3, v265, v266, v267, v268, v269);
        v259 = 1;
      }

      else if (v253 <= v219)
      {
        if (v253 <= 1)
        {
          v298 = 1;
        }

        else
        {
          v298 = v253;
        }

        v259 = v219 / v298;
        if (v219 / v298 > objc_msgSend_width(a3, v265, v266, v267, v268, v269))
        {
          v259 = objc_msgSend_width(a3, v299, v300, v301, v302, v303);
        }

        v304 = objc_msgSend_width(a3, v299, v300, v301, v302, v303);
        if (v259)
        {
          v275 = (v259 + v304 - 1) / v259;
        }

        else
        {
          v275 = 0;
        }
      }

      else
      {
        v275 = objc_msgSend_width(a3, v265, v266, v267, v268, v269);
        v259 = 1;
        v253 = v219;
      }

      v297 = objc_msgSend_height(a3, v270, v271, v272, v273, v274);
      v283 = objc_msgSend_numberOfImages(a3, v305, v306, v307, v308, v309);
      v284 = 1;
      goto LABEL_72;
    }

    if (objc_msgSend_width(a3, v243, v244, v245, v246, v247) <= 0x10)
    {
      v253 = objc_msgSend_width(a3, v248, v249, v250, v251, v252);
      if (objc_msgSend_height(a3, v276, v277, v278, v279, v280) <= 0x10)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v253 = 16;
      if (objc_msgSend_height(a3, v248, v249, v250, v251, v252) <= 0x10)
      {
LABEL_39:
        v259 = objc_msgSend_height(a3, v254, v255, v256, v257, v258);
        goto LABEL_46;
      }
    }

    v259 = 16;
LABEL_46:
    v281 = v259 * v253;
    if (v259 * v253 <= 1)
    {
      v281 = 1;
    }

    v282 = v219 / v281;
    if (v282 >= v202)
    {
      v283 = (v65 + 3) >> 2;
    }

    else
    {
      v283 = v282;
    }

    if (v283 >= 0x40)
    {
      v284 = 64;
    }

    else
    {
      v284 = v283;
    }

    v285 = objc_msgSend_width(a3, v254, v255, v256, v257, v258);
    if (v253)
    {
      v275 = (v253 + v285 - 1) / v253;
      v291 = objc_msgSend_height(a3, v286, v287, v288, v289, v290);
      if (v259)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v275 = 0;
      v291 = objc_msgSend_height(a3, v286, v287, v288, v289, v290);
      if (v259)
      {
LABEL_56:
        v297 = (v259 + v291 - 1) / v259;
        if (v283)
        {
LABEL_57:
          v283 = (v202 + v284 - 1) / v284;
LABEL_72:
          v310 = objc_msgSend_texture(a3, v292, v293, v294, v295, v296);
          objc_msgSend_setTexture_atIndex_(a2, v311, v310, 0, v312, v313);
          v319 = objc_msgSend_data(a4, v314, v315, v316, v317, v318);
          v325 = objc_msgSend_matrixBytes(a4, v320, v321, v322, v323, v324);
          v331 = objc_msgSend_offset(a4, v326, v327, v328, v329, v330);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v332, v319, v331 + v325 * a7, 0, v333);
          objc_msgSend_setBytes_length_atIndex_(a2, v334, &v375, 32, 1, v335);
          v372 = v275;
          v373 = v297;
          v374 = v283;
          v369 = v253;
          v370 = v259;
          v371 = v284;
          return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v336, &v372, &v369, v337, v338);
        }

LABEL_60:
        v284 = 0;
        goto LABEL_72;
      }
    }

    v297 = 0;
    if (v283)
    {
      goto LABEL_57;
    }

    goto LABEL_60;
  }

  return result;
}

uint64_t sub_239974FEC(uint64_t result, char *a2, uint64_t a3, void *a4, void *a5, unint64_t *a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *(result + *MEMORY[0x277CD7378]);
  v300 = result;
  v13 = *(*(result + *MEMORY[0x277CD7350]) + 1480);
  if (!a4)
  {
    if (v12)
    {
      return result;
    }

    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      v26 = objc_opt_class();
      v283 = NSStringFromClass(v26);
      result = MTLReportFailure();
    }

    v18 = 0;
    goto LABEL_16;
  }

  result = objc_msgSend_count(a4, a2, a3, a4, a5, a6);
  v18 = result;
  if ((v12 & 1) == 0)
  {
    if (result)
    {
      v19 = result;
      for (i = 0; i != v19; ++i)
      {
        objc_msgSend_objectAtIndexedSubscript_(a4, v14, i, v15, v16, v17, v283);
        result = objc_msgSend_objectAtIndexedSubscript_(a4, v21, i, v22, v23, v24);
        if (!result)
        {
          result = MTLReportFailureTypeEnabled();
          if (result)
          {
            v25 = objc_opt_class();
            v283 = NSStringFromClass(v25);
            result = MTLReportFailure();
          }
        }
      }

      v18 = v19;
    }

LABEL_16:
    if (!a5)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        v282 = objc_opt_class();
        v283 = NSStringFromClass(v282);
        result = MTLReportFailure();
      }
    }

    v27 = 1;
    if (v18)
    {
      goto LABEL_18;
    }

    return result;
  }

  v27 = 0;
  if (result)
  {
LABEL_18:
    v28 = (v13 >> 52) & 0x3FF;
    v29 = objc_msgSend_objectAtIndexedSubscript_(a4, v14, 0, v15, v16, v17, v283);
    v312 = objc_msgSend_width(v29, v30, v31, v32, v33, v34);
    v308 = objc_msgSend_height(v29, v35, v36, v37, v38, v39);
    v299 = v29;
    v306 = objc_msgSend_featureChannels(v29, v40, v41, v42, v43, v44);
    v297 = v18;
    if (v27)
    {
      v50 = 0;
      v51 = *a6;
      do
      {
        v52 = objc_msgSend_objectAtIndexedSubscript_(a4, v45, v50, v47, v48, v49, v284);
        objc_msgSend_columns(a5, v53, v54, v55, v56, v57);
        objc_msgSend_height(v52, v58, v59, v60, v61, v62);
        objc_msgSend_width(v52, v63, v64, v65, v66, v67);
        objc_msgSend_featureChannels(v52, v68, v69, v70, v71, v72);
        v78 = objc_msgSend_columns(a5, v73, v74, v75, v76, v77) - a6[1];
        v84 = objc_msgSend_height(v52, v79, v80, v81, v82, v83);
        v90 = objc_msgSend_width(v52, v85, v86, v87, v88, v89) * v84;
        if (v78 < v90 * objc_msgSend_featureChannels(v52, v91, v92, v93, v94, v95) && MTLReportFailureTypeEnabled())
        {
          v310 = objc_msgSend_columns(a5, v96, v97, v98, v99, v100);
          v106 = a6[1];
          v112 = objc_msgSend_height(v52, v107, v108, v109, v110, v111);
          v288 = objc_msgSend_width(v52, v113, v114, v115, v116, v117);
          v289 = objc_msgSend_featureChannels(v52, v118, v119, v120, v121, v122);
          v18 = v297;
          v286 = v106;
          v287 = v112;
          v285 = v310;
          MTLReportFailure();
        }

        objc_msgSend_rows(a5, v96, v97, v98, v99, v100, v285, v286, v287, v288, v289);
        if (v51 >= objc_msgSend_rows(a5, v101, v102, v103, v104, v105) && MTLReportFailureTypeEnabled())
        {
          v284 = *a6;
          v286 = objc_msgSend_rows(a5, v45, v46, v47, v48, v49);
          MTLReportFailure();
        }

        ++v51;
        ++v50;
      }

      while (v18 != v50);
    }

    v296 = a4;
    v311 = a5;
    v123 = objc_msgSend_dataType(a5, v45, v46, v47, v48, v49, v284);
    v129 = a7;
    if (v123 == 268435472)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    if (a9)
    {
      v131 = v123 == 268435472;
    }

    else
    {
      v131 = v130;
    }

    v295 = (&off_278AF88A0)[16 * v131];
    objc_msgSend_textureType(v299, v124, v125, v126, v127, v128);
    v132 = 0;
    v133 = v308 * v312;
    v134 = 32;
    if ((v308 * v312) > 0x100)
    {
      v134 = 16;
    }

    if (v133 > 0x400)
    {
      v134 = 16;
    }

    if (v133 <= 0x1000)
    {
      v135 = v134;
    }

    else
    {
      v135 = 1;
    }

    v136.i16[3] = 1;
    v136.i16[0] = v312;
    v136.i16[1] = v308;
    v136.i16[2] = (v306 + 3) >> 2;
    v137.i16[3] = 1;
    v137.i16[0] = v136.i16[2];
    v137.i16[1] = v308;
    v137.i16[2] = v312;
    v138 = vbsl_s8(vceqd_s64(v129, 0), v137, v136);
    if (v28 >= v135)
    {
      v139 = v135;
    }

    else
    {
      v139 = v28;
    }

    v323 = -1;
    *&v140 = -1;
    *(&v140 + 1) = -1;
    v322 = v140;
    v321 = v140;
    v320 = v140;
    v319 = v140;
    v294 = v139;
    v318 = v139;
    v141 = v138.u16[2];
    v142 = -65536 * v138.u16[2];
    v143 = vmax_u16(v138, 0x1000100010001);
    v293 = v141;
    v291 = 0x80000000 / v141;
    v292 = v142;
    v313 = v143;
    v143.i16[3] = 1;
    v290 = v143;
    v144 = a2;
    do
    {
      v309 = v132 + v294;
      if (v132 + v294 <= v18)
      {
        v153 = v294;
      }

      else
      {
        v153 = v18 - v132;
      }

      v154 = MEMORY[0x277CD7370];
      v155 = *(v300 + *MEMORY[0x277CD7370]);
      MPSLibrary::CreateUberShaderKey();
      v156 = *(v300 + *v154);
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      objc_msgSend_setComputePipelineState_(v144, v158, PipelineStateForMPSKey, v159, v160, v161, 0, 0, 0, 0, 0);
      v162 = *(v300 + *v154);
      MPSLibrary::ReleaseMPSKey();
      v168 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v163, v164, v165, v166, v167);
      objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v169, v170, v171, v172, v173);
      if (v168 >= 0x100)
      {
        v179 = 256;
      }

      else
      {
        v179 = v168;
      }

      v180 = *(*(v300 + *MEMORY[0x277CD7350]) + 16);
      v324 = 0;
      v325 = 0;
      v326 = 0;
      if (v180)
      {
        objc_msgSend_maxThreadsPerThreadgroup(v180, v174, v175, v176, v177, v178);
        v181 = v324;
        v182 = v325;
        v183 = v326;
      }

      else
      {
        v183 = 0;
        v182 = 0;
        v181 = 0;
      }

      if (v313.u16[0] * v313.u16[1] * v313.u16[2] <= v179 && v181 >= v313.u16[0] && v182 >= v313.u16[1] && v183 >= v313.u16[2])
      {
        v189 = v290;
        v190 = v313.u16[2];
        v191 = v313.u16[1];
        v192 = v313.u16[0];
        v193 = v293;
        v194 = v311;
        goto LABEL_125;
      }

      if (v180)
      {
        v316 = 0uLL;
        *&v317 = 0;
        objc_msgSend_maxThreadsPerThreadgroup(v180, v174, v175, v176, v177, v178);
        v188 = *(&v316 + 1);
        v187 = v316;
        v181 = v324;
        v182 = v325;
        v183 = v326;
      }

      else
      {
        v187 = 0;
        v188 = 0;
      }

      v195 = (64 - __clz(v179)) >> 1;
      v196 = 63 - __clz(v188);
      v197 = v188 == 0;
      v198 = 0x8000000000000000;
      if (!v197)
      {
        v198 = v196;
      }

      if (v195 < v198)
      {
        LOBYTE(v198) = v195;
      }

      v199 = v179 >> v198;
      if (v187 < v179 >> v198)
      {
        v199 = v187;
      }

      v200 = 1 << v198;
      if (v181 >= v313.u16[0])
      {
        v201 = v313.u16[0];
      }

      else
      {
        v201 = v181;
      }

      if (v182 >= v313.u16[1])
      {
        v202 = v313.u16[1];
      }

      else
      {
        v202 = v182;
      }

      if (v183 >= v313.u16[2])
      {
        v203 = v313.u16[2];
      }

      else
      {
        v203 = v183;
      }

      v193 = v293;
      if (v199)
      {
        v204 = v313.u16[0] + v199 - 1;
        v205 = (v313.u16[1] + v200 - 1) / v200;
        if (v199 <= v204)
        {
          v206 = (v313.u16[0] + v204 / v199 - 1) / (v204 / v199);
          if (v205)
          {
LABEL_89:
            v207 = (v313.u16[1] + v205 - 1) / v205;
            goto LABEL_92;
          }
        }

        else
        {
          v206 = 0;
          if (v205)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        v206 = 0;
        v205 = (v313.u16[1] + v200 - 1) / v200;
        if (v205)
        {
          goto LABEL_89;
        }
      }

      v207 = 0;
LABEL_92:
      if (v206 >= v201)
      {
        v192 = v201;
      }

      else
      {
        v192 = v206;
      }

      if (v207 >= v202)
      {
        v191 = v202;
      }

      else
      {
        v191 = v207;
      }

      v208 = v191 * v192;
      if (v179 / (v191 * v192) >= v203)
      {
        v209 = v203;
      }

      else
      {
        v209 = v179 / (v191 * v192);
      }

      if (v313.u16[3] < 2u)
      {
        v190 = v209;
        v211 = v179 - v209 * v208;
        if (v207 < v202)
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v209 < 2)
        {
          v190 = v209;
        }

        else
        {
          do
          {
            v190 = v209;
          }

          while (v313.u16[2] % v209--);
        }

        v211 = v179 - v190 * v208;
        if (v207 < v202)
        {
LABEL_107:
          v212 = v190 * v192;
          if (v211 > v190 * v192)
          {
            v191 += v211 / v212;
            if (v191 >= v202)
            {
              v191 = v202;
            }

            v211 = v179 - v191 * v212;
          }
        }
      }

      if (v206 < v201)
      {
        v213 = v191 * v190;
        if (v211 > v191 * v190)
        {
          v192 += v211 / v213;
          if (v192 >= v201)
          {
            v192 = v201;
          }

          v211 = v179 - v192 * v213;
        }
      }

      v189.i16[2] = 1;
      v189.i16[0] = v199;
      v189.i16[1] = v200;
      v194 = v311;
      if (v190 < v203 && v211 > v192 * v191)
      {
        v190 += v211 / (v192 * v191);
        if (v190 >= v203)
        {
          v190 = v203;
        }

        if (v313.u16[3] >= 2u && v190 >= 2)
        {
          do
          {
            v214 = v190;
          }

          while (v313.u16[2] % v190--);
          v190 = v214;
        }
      }

LABEL_125:
      v216 = v189.i16[0];
      if (v189.i16[0])
      {
        v217 = (v313.u16[0] + v189.u16[0] - 1) / v189.u16[0];
        v218 = v189.u16[1];
        if (v189.i16[1])
        {
          goto LABEL_127;
        }
      }

      else
      {
        LOWORD(v217) = 0;
        v218 = v189.u16[1];
        if (v189.i16[1])
        {
LABEL_127:
          v219 = (v313.u16[1] + v218 - 1) / v218;
          v220 = v189.u16[2];
          if (v189.i16[2])
          {
            goto LABEL_128;
          }

          goto LABEL_134;
        }
      }

      LOWORD(v219) = 0;
      v220 = v189.u16[2];
      if (v189.i16[2])
      {
LABEL_128:
        v221 = (v313.u16[2] + v220 - 1) / v220;
        if (v192)
        {
          goto LABEL_129;
        }

        goto LABEL_135;
      }

LABEL_134:
      LOWORD(v221) = 0;
      if (v192)
      {
LABEL_129:
        v222 = (v313.u16[0] + v192 - 1) / v192;
        if (v191)
        {
          goto LABEL_130;
        }

        goto LABEL_136;
      }

LABEL_135:
      LOWORD(v222) = 0;
      if (v191)
      {
LABEL_130:
        v223 = (v313.u16[1] + v191 - 1) / v191;
        if (!v190)
        {
          goto LABEL_137;
        }

        goto LABEL_131;
      }

LABEL_136:
      LOWORD(v223) = 0;
      if (!v190)
      {
LABEL_137:
        v224 = 0;
        goto LABEL_138;
      }

LABEL_131:
      v224 = (v313.u16[2] + v190 - 1) / v190;
LABEL_138:
      LOWORD(v225) = v217;
      WORD1(v225) = v219;
      WORD2(v225) = v221;
      HIWORD(v225) = v313.i16[3];
      v226 = v223 * v222 * v224;
      v227 = v219 * v217 * v221;
      LOWORD(v228) = v222;
      WORD1(v228) = v223;
      WORD2(v228) = v224;
      HIWORD(v228) = v313.i16[3];
      if (v226 < v227)
      {
        v229 = v190;
      }

      else
      {
        v229 = v220;
      }

      if (v226 < v227)
      {
        v230 = v191;
      }

      else
      {
        v230 = v218;
      }

      if (v226 < v227)
      {
        v231 = v192;
      }

      else
      {
        v231 = v216;
      }

      if (v226 < v227)
      {
        v225 = v228;
      }

      v305 = v225;
      v316 = 0u;
      v317 = 0u;
      *(&v316 + 1) = objc_msgSend_rowBytes(v194, v224, v226, v224, v177, v178);
      LOWORD(v317) = objc_msgSend_featureChannels(v299, v232, v233, v234, v235, v236);
      WORD1(v317) = 1;
      v307 = v229;
      if (v193 >= 2)
      {
        v243 = __clz(v291);
        v244 = v291 >> (16 - v243);
        v245 = v243 + 15;
        v246 = v292 * v244 / v193;
        if (v246 <= v244)
        {
          v247 = v244;
        }

        else
        {
          v247 = v244 + 1;
        }

        if (v246 <= v244)
        {
          LOWORD(v244) = 0;
        }

        v242 = (v245 << 48) | ((v246 - v244) << 32) | (v247 << 16) | v193;
      }

      else
      {
        v242 = 65537;
      }

      *(&v317 + 4) = v242;
      v304 = *a6;
      v302 = objc_msgSend_rowBytes(v194, v237, v238, v239, v240, v241);
      v303 = a6[1];
      v253 = objc_msgSend_dataType(v194, v248, v249, v250, v251, v252);
      v259 = objc_msgSend_offset(v194, v254, v255, v256, v257, v258);
      v270 = objc_msgSend_matrixBytes(v194, v260, v261, v262, v263, v264);
      if (v153)
      {
        for (j = 0; j < v153; ++j)
        {
          v272 = objc_msgSend_objectAtIndexedSubscript_(v296, v265, v132 + j, v267, v268, v269);
          v278 = objc_msgSend_texture(v272, v273, v274, v275, v276, v277);
          objc_msgSend_setTexture_atIndex_(v144, v279, v278, j, v280, v281);
        }
      }

      v145 = objc_msgSend_data(v311, v265, v266, v267, v268, v269);
      objc_msgSend_setBuffer_offset_atIndex_(a2, v146, v145, v259 + (v304 + v132) * v302 + v270 * a8 + v303 * (v253 >> 3), 0, v147);
      objc_msgSend_setBytes_length_atIndex_(a2, v148, &v316, 32, 1, v149);
      v324 = v305;
      v325 = WORD1(v305);
      v326 = (WORD2(v305) * HIWORD(v305));
      v144 = a2;
      v315[0] = v231;
      v315[1] = v230;
      v315[2] = v307;
      result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v150, &v324, v315, v151, v152);
      v132 += v294;
      v18 = v297;
    }

    while (v309 < v297);
  }

  return result;
}

void sub_239976150(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2399400F0(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t sub_239976524(uint64_t a1, uint64_t *a2)
{
  v3 = a2[8];
  v4 = MPSCreateFunctionConstantValues();
  v22 = (v3 & 0x2000000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v4, v5, &v22, 53, 0, v6);
  v21 = BYTE6(v3) & 1;
  v20 = (v3 & 0x1000000000000) == 0;
  objc_msgSend_setConstantValue_type_atIndex_(v4, v7, &v20, 53, 1, v8);
  objc_msgSend_setConstantValue_type_atIndex_(v4, v9, &v21, 53, 2, v10);
  v19 = v3;
  objc_msgSend_setConstantValue_type_atIndex_(v4, v11, &v19, 41, 3, v12);
  v18 = WORD2(v3);
  objc_msgSend_setConstantValue_type_atIndex_(v4, v13, &v18, 41, 4, v14);
  v15 = *a2;
  v16 = _MPSNewSpecializedFunction();

  return v16;
}

uint64_t sub_239976714(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = *(a6 + 64);
  v12 = *(a6 + 80);
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 0, (a1 + 208), a6);
}

uint64_t sub_239976C80(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = *(a6 + 64);
  v12 = *(a6 + 80);
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 1, (a1 + 208), a6);
}

uint64_t sub_2399771E8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = *(a6 + 64);
  v12 = *(a6 + 80);
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 2, (a1 + 208), a6);
}

uint64_t sub_239977730(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = *(a6 + 64);
  v12 = *(a6 + 80);
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 3, (a1 + 208), a6);
}

uint64_t sub_239977C78(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = *(a1 + 160);
  v11 = *(a6 + 64);
  v12 = *(a6 + 80);
  return sub_2399780D4(a2, v7, v8, a4, a5, &v11, v9, 4, (a1 + 208), a6);
}

uint64_t sub_2399780D4(void *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t *a9, void *a10)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a1;
  v16 = a10[2];
  v15 = a10[3];
  v17 = a10[5];
  v18 = a10[6];
  if (*a10 == a10[1])
  {
    if (a4 == a5)
    {
      return -18;
    }

    v21 = a10[5];
    v23 = a10[6];
    v25 = a10[2];
    v16 = a2;
    v26 = a10[3];
    v27 = a8;
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    a8 = v27;
    LOWORD(v15) = v26;
    a2 = v16;
    LOWORD(v16) = v25;
    v13 = a3;
    v18 = v23;
    v14 = a1;
    v17 = v21;
    v11 = a5;
    v12 = a4;
    v10 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  if (v18)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v71 = v15;
    if ((**a10 & 0xF000000) == 0x1000000)
    {
      v20 = 0;
    }

    else
    {
      v75 = a8;
      v20 = 5;
      if (objc_msgSend_buffer(v12, a2, a3, a4, a5, a6))
      {
        if (objc_msgSend_buffer(v11, v30, v31, v32, v33, v34))
        {
          v20 = 10;
        }

        else
        {
          v20 = 5;
        }
      }

      a8 = v75;
    }

    v70 = v20 + a8;
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      return -1;
    }

    v40 = ComputeState;
    objc_msgSend_setComputePipelineState_(v14, v36, ComputeState, v37, v38, v39);
    v69 = objc_msgSend_maxTotalThreadsPerThreadgroup(v40, v41, v42, v43, v44, v45);
    MPSLibrary::ReleaseComputeState();
    v47 = *a9;
    *&v46 = a9[1];
    DWORD2(v46) = *(a9 + 4);
    v78 = v46;
    v84 = 0;
    v85 = 0;
    v79 = v47;
    *&v46 = vmovn_s64(*v10);
    v81 = WORD2(v46);
    v80 = v46;
    v83 = v71;
    v82 = v16;
    WORD1(v84) = v18;
    LOWORD(v84) = v17;
    objc_msgSend_setTexture_atIndex_(v14, v48, v12, 0, v49, v50);
    objc_msgSend_setTexture_atIndex_(v14, v51, v11, 1, v52, v53);
    objc_msgSend_setBytes_length_atIndex_(v14, v54, &v78, 48, 0, v55);
    v56 = **a10 & 0xF000000;
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(v14, v58, Sampler, 0, v59, v60);
    v64 = (&unk_2399AF618 + 32 * *(*(*(v13 + 280) + 16 * v70) + 64));
    v65 = *v64;
    if (v69 >= 16 * *v64)
    {
      v66 = 16;
    }

    else
    {
      v66 = v69 / v65;
    }

    v67 = v64[2];
    v68 = v64[3] * v66;
    v77[0] = (v17 + v67 * v65 - 1) / (v67 * v65);
    v77[1] = (v18 + v68 - 1) / v68;
    v77[2] = 1;
    v76[0] = v65;
    v76[1] = v66;
    v76[2] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v14, v61, v77, v76, v62, v63, v69);
  }

  return 0;
}

void sub_2399791E8(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_23994744C(va, a2, a3, a4, a5, a6);
  MPSAutoCache::~MPSAutoCache((v22 - 112));
  _Unwind_Resume(a1);
}

void sub_239979F7C(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void *);
  v21 = va_arg(va1, void);
  sub_23994744C(va, a2, a3, a4, a5, a6);
  MPSAutoCache::~MPSAutoCache(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_23997A0C4(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a2;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v14 = *(a1 + 160);
  v15 = *(a1 + 224);
  *&v82.origin.x = *(a1 + 208);
  *&v82.origin.z = v15;
  *&v82.size.height = *(a1 + 240);
  v16 = a6[5];
  v17 = a6[6];
  v18 = *a6;
  v19 = a6[1];
  if (*a6 == v19)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v75 = v11;
    v77 = v14;
    v34 = v13;
    v35 = v12;
    v37 = a3;
    v38 = a6[5];
    v11 = *a6;
    v39 = a6[1];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v19 = v39;
    v18 = v11;
    v16 = v38;
    a3 = v37;
    v9 = a2;
    v12 = v35;
    v13 = v34;
    v8 = a4;
    v6 = a6;
    LOBYTE(v11) = v75;
    v14 = v77;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v17)
  {
    if (v16)
    {
      v74 = v19;
      v76 = v18;
      v70 = v16;
      v72 = a3;
      memset(&v81, 0, sizeof(v81));
      v80.width = objc_msgSend_width(v8, a2, a3, a4, a5, a6);
      v80.height = objc_msgSend_height(v8, v21, v22, v23, v24, v25);
      v80.depth = 1;
      v79 = v82;
      MPSGetEffectiveClipRegion(&v81, &v80, &v79);
      result = -3;
      if (v81.size.height)
      {
        if (v81.size.width)
        {
          v31 = v76;
          if ((*v76 & 0x40000000000) != 0)
          {
            v33 = 0;
            v32 = v74;
            if (v11)
            {
LABEL_20:
              v79 = v81;
              return sub_23997C8D0(a1, v12, v13, v9, v72, v8, a5, v6, &v79, v14, 1, (v11 & 2) != 0);
            }
          }

          else
          {
            v32 = v74;
            v33 = (*(v74 + 5) & 4) == 0;
            if (v11)
            {
              goto LABEL_20;
            }
          }

          if ((*v76 & 0xF000000) == 0)
          {
            v59 = MTLReportFailureTypeEnabled();
            v32 = v74;
            v31 = v76;
            if (v59)
            {
              v66 = v8;
              MTLReportFailure();
              v32 = v74;
              v31 = v76;
            }
          }

          if ((*(v32 + 3) & 0xF) == 0)
          {
            v60 = MTLReportFailureTypeEnabled();
            v32 = v74;
            v31 = v76;
            if (v60)
            {
              v66 = a5;
              MTLReportFailure();
              v32 = v74;
              v31 = v76;
            }
          }

          v78 = v14;
          if (((*v32 ^ *v31) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v66 = v8;
            v68 = a5;
            MTLReportFailure();
          }

          v41 = v11;
          if (!v33 && MTLReportFailureTypeEnabled())
          {
            v66 = a5;
            v68 = v8;
            MTLReportFailure();
          }

          objc_msgSend_width(v8, v26, v27, v28, v29, v30, v66, v68);
          v42 = v81.size.width + v81.origin.x;
          if (v42 > objc_msgSend_width(v8, v43, v44, v45, v46, v47) && MTLReportFailureTypeEnabled())
          {
            v67 = v81.size.width + v81.origin.x;
            v69 = objc_msgSend_width(v8, v48, v49, v50, v51, v52);
            MTLReportFailure();
          }

          objc_msgSend_height(v8, v48, v49, v50, v51, v52, v67, v69);
          v53 = v81.size.height + v81.origin.y;
          if (v53 > objc_msgSend_height(v8, v54, v55, v56, v57, v58) && MTLReportFailureTypeEnabled())
          {
            objc_msgSend_height(v8, v61, v62, v63, v64, v65);
            MTLReportFailure();
          }

          LOBYTE(v11) = v41;
          v14 = v78;
          if (v70 <= 1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997A928(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a2;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v76 = *(a1 + 160);
  v14 = *(a1 + 224);
  *&v80.origin.x = *(a1 + 208);
  *&v80.origin.z = v14;
  *&v80.size.height = *(a1 + 240);
  v16 = a6[5];
  v15 = a6[6];
  v17 = *a6;
  v18 = a6[1];
  if (*a6 == v18)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v72 = v13;
    v75 = v11;
    v35 = v12;
    v37 = a3;
    v38 = *a6;
    v11 = a6[1];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v18 = v11;
    v17 = v38;
    a3 = v37;
    v9 = a2;
    v12 = v35;
    v8 = a4;
    v13 = v72;
    LOBYTE(v11) = v75;
    v6 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v15)
  {
    if (v16)
    {
      v20 = v18;
      v69 = a3;
      v71 = v17;
      memset(&v79, 0, sizeof(v79));
      v78.width = objc_msgSend_width(v8, a2, a3, a4, a5, a6);
      v78.height = objc_msgSend_height(v8, v21, v22, v23, v24, v25);
      v78.depth = 1;
      v77 = v80;
      MPSGetEffectiveClipRegion(&v79, &v78, &v77);
      result = -3;
      if (v79.size.height)
      {
        if (v79.size.width)
        {
          v31 = v71;
          if ((*v71 & 0x40000000000) != 0)
          {
            v33 = 0;
            v32 = v20;
            v74 = v11;
            if (v11)
            {
LABEL_19:
              v77 = v79;
              return sub_23997C8D0(a1, v12, v13, v9, v69, v8, a5, v6, &v77, v76, 2, (v74 & 2) != 0);
            }
          }

          else
          {
            v32 = v20;
            v33 = (*(v20 + 5) & 4) == 0;
            v74 = v11;
            if (v11)
            {
              goto LABEL_19;
            }
          }

          if ((*v71 & 0xF000000) == 0)
          {
            v58 = MTLReportFailureTypeEnabled();
            v32 = v20;
            v31 = v71;
            if (v58)
            {
              v65 = v8;
              MTLReportFailure();
              v32 = v20;
              v31 = v71;
            }
          }

          if ((*(v32 + 3) & 0xF) == 0)
          {
            v59 = MTLReportFailureTypeEnabled();
            v32 = v20;
            v31 = v71;
            if (v59)
            {
              v65 = a5;
              MTLReportFailure();
              v32 = v20;
              v31 = v71;
            }
          }

          if (((*v32 ^ *v31) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v65 = v8;
            v67 = a5;
            MTLReportFailure();
          }

          v73 = v13;
          if (!v33 && MTLReportFailureTypeEnabled())
          {
            v65 = a5;
            v67 = v8;
            MTLReportFailure();
          }

          objc_msgSend_width(v8, v26, v27, v28, v29, v30, v65, v67);
          v40 = v79.size.width + v79.origin.x;
          if (v40 > objc_msgSend_width(v8, v41, v42, v43, v44, v45) && MTLReportFailureTypeEnabled())
          {
            v66 = v79.size.width + v79.origin.x;
            v68 = objc_msgSend_width(v8, v46, v47, v48, v49, v50);
            MTLReportFailure();
          }

          objc_msgSend_height(v8, v46, v47, v48, v49, v50, v66, v68);
          v51 = v79.size.height + v79.origin.y;
          v57 = v51 > objc_msgSend_height(v8, v52, v53, v54, v55, v56);
          v13 = v73;
          if (v57)
          {
            if (MTLReportFailureTypeEnabled())
            {
              objc_msgSend_height(v8, v60, v61, v62, v63, v64);
              v13 = v73;
              MTLReportFailure();
            }
          }

          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997B160(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a2;
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = *(a1 + *MEMORY[0x277CD7350]);
  v13 = *(a1 + *MEMORY[0x277CD7370]);
  v76 = *(a1 + 160);
  v14 = *(a1 + 224);
  *&v80.origin.x = *(a1 + 208);
  *&v80.origin.z = v14;
  *&v80.size.height = *(a1 + 240);
  v16 = a6[5];
  v15 = a6[6];
  v17 = *a6;
  v18 = a6[1];
  if (*a6 == v18)
  {
    if (a4 == a5)
    {
      return -18;
    }

    v72 = v13;
    v75 = v11;
    v35 = v12;
    v37 = a3;
    v38 = *a6;
    v11 = a6[1];
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v18 = v11;
    v17 = v38;
    a3 = v37;
    v9 = a2;
    v12 = v35;
    v8 = a4;
    v13 = v72;
    LOBYTE(v11) = v75;
    v6 = a6;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v15)
  {
    if (v16)
    {
      v20 = v18;
      v69 = a3;
      v71 = v17;
      memset(&v79, 0, sizeof(v79));
      v78.width = objc_msgSend_width(v8, a2, a3, a4, a5, a6);
      v78.height = objc_msgSend_height(v8, v21, v22, v23, v24, v25);
      v78.depth = 1;
      v77 = v80;
      MPSGetEffectiveClipRegion(&v79, &v78, &v77);
      result = -3;
      if (v79.size.height)
      {
        if (v79.size.width)
        {
          v31 = v71;
          if ((*v71 & 0x40000000000) != 0)
          {
            v33 = 0;
            v32 = v20;
            v74 = v11;
            if (v11)
            {
LABEL_19:
              v77 = v79;
              return sub_23997C8D0(a1, v12, v13, v9, v69, v8, a5, v6, &v77, v76, 4, (v74 & 2) != 0);
            }
          }

          else
          {
            v32 = v20;
            v33 = (*(v20 + 5) & 4) == 0;
            v74 = v11;
            if (v11)
            {
              goto LABEL_19;
            }
          }

          if ((*v71 & 0xF000000) == 0)
          {
            v58 = MTLReportFailureTypeEnabled();
            v32 = v20;
            v31 = v71;
            if (v58)
            {
              v65 = v8;
              MTLReportFailure();
              v32 = v20;
              v31 = v71;
            }
          }

          if ((*(v32 + 3) & 0xF) == 0)
          {
            v59 = MTLReportFailureTypeEnabled();
            v32 = v20;
            v31 = v71;
            if (v59)
            {
              v65 = a5;
              MTLReportFailure();
              v32 = v20;
              v31 = v71;
            }
          }

          if (((*v32 ^ *v31) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
          {
            v65 = v8;
            v67 = a5;
            MTLReportFailure();
          }

          v73 = v13;
          if (!v33 && MTLReportFailureTypeEnabled())
          {
            v65 = a5;
            v67 = v8;
            MTLReportFailure();
          }

          objc_msgSend_width(v8, v26, v27, v28, v29, v30, v65, v67);
          v40 = v79.size.width + v79.origin.x;
          if (v40 > objc_msgSend_width(v8, v41, v42, v43, v44, v45) && MTLReportFailureTypeEnabled())
          {
            v66 = v79.size.width + v79.origin.x;
            v68 = objc_msgSend_width(v8, v46, v47, v48, v49, v50);
            MTLReportFailure();
          }

          objc_msgSend_height(v8, v46, v47, v48, v49, v50, v66, v68);
          v51 = v79.size.height + v79.origin.y;
          v57 = v51 > objc_msgSend_height(v8, v52, v53, v54, v55, v56);
          v13 = v73;
          if (v57)
          {
            if (MTLReportFailureTypeEnabled())
            {
              objc_msgSend_height(v8, v60, v61, v62, v63, v64);
              v13 = v73;
              MTLReportFailure();
            }
          }

          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23997BBE0(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a2;
  v147[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + *MEMORY[0x277CD7378]);
  v10 = *(a1 + *MEMORY[0x277CD7350]);
  v11 = *(a1 + *MEMORY[0x277CD7370]);
  v12 = *(a1 + 224);
  *&v146.origin.x = *(a1 + 208);
  *&v146.origin.z = v12;
  *&v146.size.height = *(a1 + 240);
  v139 = *(a1 + 256);
  v13 = *(a1 + 272);
  v14 = *(a1 + 264);
  v137 = *(a1 + 280);
  v15 = *(a6 + 16);
  v16 = *(a6 + 40);
  v17 = *(a6 + 48);
  v18 = *a6;
  v19 = *(a6 + 8);
  if (*a6 == v19)
  {
    if (a4 == a5)
    {
      goto LABEL_11;
    }

    v135 = *(a6 + 16);
    v131 = v9;
    v133 = *a6;
    v33 = *(a6 + 40);
    v9 = *(a6 + 8);
    v34 = v10;
    v37 = *(a1 + 264);
    isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
    v14 = v37;
    v8 = a2;
    v7 = a4;
    v10 = v34;
    v19 = v9;
    v16 = v33;
    LOBYTE(v9) = v131;
    v18 = v133;
    v15 = v135;
    if (isEqual)
    {
LABEL_11:
      result = -18;
LABEL_12:
      v39 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v136 = a5;
  result = 0;
  if (!v17)
  {
    goto LABEL_12;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

  v21 = v16;
  v132 = v14;
  v134 = v15;
  memset(v145, 0, sizeof(v145));
  v144.width = objc_msgSend_width(v7, a2, a3, a4, a5, a6);
  v144.height = objc_msgSend_height(v7, v22, v23, v24, v25, v26);
  v144.depth = 1;
  v143 = v146;
  MPSGetEffectiveClipRegion(v145[0].i64, &v144, &v143);
  result = -3;
  if (!v145[2].i64[0] || !v145[1].i64[1])
  {
    goto LABEL_12;
  }

  if ((*v18 & 0x40000000000) != 0)
  {
    v32 = 0;
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_15:
    if ((*v18 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v125 = v7;
      MTLReportFailure();
    }

    if ((*(v19 + 3) & 0xF) == 0 && MTLReportFailureTypeEnabled())
    {
      v125 = v136;
      MTLReportFailure();
    }

    if (((*v19 ^ *v18) & 0xF000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v125 = v7;
      v127 = v136;
      MTLReportFailure();
    }

    if (!v32 && MTLReportFailureTypeEnabled())
    {
      v125 = v136;
      v127 = v7;
      MTLReportFailure();
    }

    objc_msgSend_width(v7, v27, v28, v29, v30, v31, v125, v127);
    v40 = v145[0].i64[0];
    v41 = v145[1].i64[1];
    if (v41 + v40 > objc_msgSend_width(v7, v42, v43, v44, v45, v46) && MTLReportFailureTypeEnabled())
    {
      v126 = v145[1].i64[1] + v145[0].i64[0];
      v128 = objc_msgSend_width(v7, v47, v48, v49, v50, v51);
      MTLReportFailure();
    }

    objc_msgSend_height(v7, v47, v48, v49, v50, v51, v126, v128);
    v52 = v145[0].i64[1];
    v53 = v145[2].i64[0];
    if (v53 + v52 > objc_msgSend_height(v7, v54, v55, v56, v57, v58) && MTLReportFailureTypeEnabled())
    {
      v125 = v145[2].i64[0] + v145[0].i64[1];
      v127 = objc_msgSend_height(v7, v120, v121, v122, v123, v124);
      MTLReportFailure();
    }

    if (v21 <= 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_22;
  }

  v32 = (*(v19 + 5) & 4) == 0;
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_22:
  v59 = 0;
  v60 = *(v10 + 1480);
  v61 = 1;
  v62 = ((v139 << 8) + v145[1].i64[1] - 1) / (v139 << 8);
  do
  {
    v63 = v61 * v62;
    ++v61;
    ++v59;
  }

  while (v63 < v60);
  if (v59 >= (HIDWORD(v139) + v145[2].i64[0] - 1) / HIDWORD(v139))
  {
    v64 = (HIDWORD(v139) + v145[2].i64[0] - 1) / HIDWORD(v139);
  }

  else
  {
    v64 = v59;
  }

  v65 = MEMORY[0x23EE7BAC0](&v144, a3, v136);
  v129 = v64;
  v66 = v64 * v62;
  TempBuffer = MPSAutoCache::GetTempBuffer(v65, 36 * v66, 0);
  if (!v13)
  {
    v13 = v132;
  }

  v147[0] = v13;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v67, v147, 1, v68, v69, v125, v127);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::CreateUberShaderKey();
  v71 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(v8, v72, PipelineStateForMPSKey, v73, v74, v75, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v76 = vmovn_s64(v145[0]);
  WORD1(v143.origin.x) = v76.i16[2];
  LOWORD(v143.origin.x) = v76.i16[0];
  v77 = vmovn_s64(*(&v145[1] + 8));
  HIWORD(v143.origin.x) = v77.i16[2];
  v78 = vmovn_s64(vaddq_s64(v145[0], *(&v145[1] + 8)));
  WORD2(v143.origin.x) = v77.i16[0];
  WORD1(v143.origin.y) = v78.i16[2];
  LOWORD(v143.origin.y) = v78.i16[0];
  HIWORD(v143.origin.y) = WORD2(v139);
  WORD2(v143.origin.y) = v139;
  v79 = vmovn_s64(v134);
  WORD1(v143.origin.z) = v79.i16[2];
  LOWORD(v143.origin.z) = v79.i16[0];
  *v79.i32 = 1.0 / (v145[2].i64[0] / HIDWORD(v139) * (v145[1].i64[1] / v139));
  HIDWORD(v143.origin.z) = v66;
  LODWORD(v143.size.width) = v79.i32[0];
  v85 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v80, v81, v82, v83, v84);
  objc_msgSend_setTexture_atIndex_(v8, v86, v7, 0, v87, v88);
  objc_msgSend_setBuffer_offset_atIndex_(v8, v89, TempBuffer, 0, 0, v90);
  objc_msgSend_setBytes_length_atIndex_(v8, v91, &v143, 28, 1, v92);
  objc_msgSend_setBuffer_offset_atIndex_(v8, v93, v137, 0, 2, v94);
  v95 = 36 * (0x100 / v85) + 15;
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v8, v96, v95 & 0xFFF0, 0, v97, v98);
  v141.i64[0] = v62;
  v141.i64[1] = v129;
  v142 = 1;
  *v140 = 256;
  *&v140[8] = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v8, v99, &v141, v140, v100, v101);
  objc_msgSend_setComputePipelineState_(v8, v102, v71, v103, v104, v105);
  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_setBuffer_offset_atIndex_(v8, v106, TempBuffer, 0, 0, v107);
  objc_msgSend_setTexture_atIndex_(v8, v108, v136, 0, v109, v110);
  objc_msgSend_setBytes_length_atIndex_(v8, v111, &v143, 28, 1, v112);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v8, v113, v95 & 0xFFF0, 0, v114, v115);
  v141 = vdupq_n_s64(1uLL);
  v142 = 1;
  *v140 = xmmword_239988DA0;
  *&v140[16] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v8, v116, &v141, v140, v117, v118);
  MPSAutoCache::~MPSAutoCache(&v144);
  result = 0;
  v119 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23997C8D0(uint64_t a1, MPSDevice *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  v17 = *a8;
  if (a11 == 1)
  {
    v124 = 0;
    v18 = *v17;
    goto LABEL_13;
  }

  v19 = *v17;
  if (a11 == 2)
  {
    v124 = 0;
    goto LABEL_13;
  }

  if (a12)
  {
    v20 = 0x1000000;
    if ((v19 & 0xF000000) != 0x1000000)
    {
      if ((v19 & 0x3FF) != 0x7D && (v19 & 0x3FF) != 0x69 || (v20 = v19 & 0xF000000, (*(a2 + 1476) & 0x80) != 0))
      {
        v124 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v20 = v19 & 0xF000000;
  }

  v124 = v20 == 0x1000000;
LABEL_13:
  v123 = *(a8 + 8);
  v118 = *(a8 + 16);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    v26 = ComputeState;
    v119 = a7;
    objc_msgSend_setComputePipelineState_(a4, v22, ComputeState, v23, v24, v25);
    v32 = objc_msgSend_maxTotalThreadsPerThreadgroup(v26, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_threadExecutionWidth(v26, v33, v34, v35, v36, v37);
    MPSLibrary::ReleaseComputeState();
    v39 = *(a9 + 32);
    v40 = v32 / v38;
    if (v124)
    {
      v41 = (v39 + 1) >> 1;
      if (v40 >= v41)
      {
        v42 = (v39 + 1) >> 1;
      }

      else
      {
        v42 = v32 / v38;
      }

      if (a11 == 4)
      {
        v43 = 0;
        v44 = (*(a9 + 24) + 1) >> 1;
        v45 = (v38 + v44 - 1) / v38;
        v122 = (v44 + v45 * v38 - 1) / (v45 * v38);
        v46 = *v123;
        PixelInfo = *v123;
        v125 = (v41 + v42 - 1) / v42;
        v126 = v42;
LABEL_28:
        v49 = (BYTE3(v46) & 0xF) - 1;
        if (v49 <= 3)
        {
          v50 = qword_2399AF768[v49];
          if (v50 != (v46 & 0x3FF))
          {
            PixelInfo = MPSDevice::GetPixelInfo(a2, v50, MPSImageFeatureChannelFormatNone);
          }
        }

LABEL_31:
        MEMORY[0x23EE7BAC0](v140, a5);
        v139 = 1;
        CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
        v137 = v126 * v125;
        v138 = 2;
        v120 = MPSAutoCache::GetCompressedTempTexture();
        v54 = vmovn_s64(*a9);
        v135[1] = v54.i16[2];
        v135[0] = v54.i16[0];
        v55 = vmovn_s64(*(a9 + 24));
        v135[3] = v55.i16[2];
        v135[2] = v55.i16[0];
        v135[5] = v126 * v125;
        v135[4] = v122 * v38;
        v135[7] = 1;
        v135[6] = v45;
        v136 = 0;
        if (a11 == 1)
        {
          v56 = -1.0;
          if ((*v123 & 0x10000000000) == 0)
          {
            v56 = 0.0;
          }

          v57 = 3.4028e38;
          if ((*v123 & 0x20000000000) != 0)
          {
            v57 = 1.0;
          }

          else
          {
            v56 = -3.4028e38;
          }

          v136 = __PAIR64__(LODWORD(v56), LODWORD(v57));
        }

        objc_msgSend_setTexture_atIndex_(a4, v51, a6, 0, v52, v53);
        objc_msgSend_setTexture_atIndex_(a4, v58, CompressedTempTexture, 1, v59, v60);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a4, v62, Sampler, 0, v63, v64);
        objc_msgSend_setBytes_length_atIndex_(a4, v65, v135, 24, 0, v66);
        *v134 = v122;
        *&v134[8] = v125;
        *&v134[16] = 1;
        v132 = v38;
        v133.i64[0] = v126;
        v133.i64[1] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v67, v134, &v132, v68, v69);
        v74 = MPSLibrary::GetComputeState();
        if (v74)
        {
          objc_msgSend_setComputePipelineState_(a4, v70, v74, v71, v72, v73);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_setTexture_atIndex_(a4, v75, v120, 0, v76, v77);
          objc_msgSend_setTexture_atIndex_(a4, v78, CompressedTempTexture, 1, v79, v80);
          objc_msgSend_setBytes_length_atIndex_(a4, v81, v135, 24, 0, v82);
          *v134 = v125;
          *&v134[8] = vdupq_n_s64(1uLL);
          v132 = v126;
          v133 = *&v134[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v83, v134, &v132, v84, v85);
          v90 = MPSLibrary::GetComputeState();
          if (v90)
          {
            objc_msgSend_setComputePipelineState_(a4, v86, v90, v87, v88, v89);
            v96 = objc_msgSend_threadExecutionWidth(v90, v91, v92, v93, v94, v95);
            MPSLibrary::ReleaseComputeState();
            v97 = vmovn_s64(v118);
            v127[1] = v97.i16[2];
            v127[0] = v97.i16[0];
            v128 = 1.0 / (*(a9 + 32) * *(a9 + 24));
            v129 = 0;
            v130 = v126 * v125;
            v131 = v136;
            objc_msgSend_setTexture_atIndex_(a4, v98, v120, 0, v99, v100);
            objc_msgSend_setTexture_atIndex_(a4, v101, v119, 1, v102, v103);
            objc_msgSend_setBytes_length_atIndex_(a4, v104, v127, 20, 0, v105);
            v109 = 4;
            if (v43)
            {
              v109 = 5;
            }

            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a4, v106, v96 << v109, 0, v107, v108);
            if (a11 == 1)
            {
              *v134 = 2;
              *&v134[8] = vdupq_n_s64(1uLL);
              v132 = v96;
              v133 = *&v134[8];
            }

            else
            {
              v133 = vdupq_n_s64(1uLL);
              *v134 = v133;
              *&v134[16] = 1;
              v132 = v96;
            }

            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v110, v134, &v132, v111, v112);
            v114 = 0;
            goto LABEL_69;
          }

          if (a11 == 1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_67;
            }

LABEL_68:
            v114 = -19;
LABEL_69:
            MPSAutoCache::~MPSAutoCache(v140);
            return v114;
          }

          if (v43)
          {
            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (a11 != 1)
          {
            if (v43)
            {
              if (MTLReportFailureTypeEnabled())
              {
                goto LABEL_67;
              }
            }

            else if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_68;
          }
        }

LABEL_67:
        v116 = objc_opt_class();
        NSStringFromClass(v116);
        MTLReportFailure();
        goto LABEL_68;
      }
    }

    else if (v40 >= v39)
    {
      v42 = *(a9 + 32);
    }

    else
    {
      v42 = v32 / v38;
    }

    v47 = *(a9 + 24);
    v45 = (v38 + v47 - 1) / v38;
    v122 = (v47 + v45 * v38 - 1) / (v45 * v38);
    v48 = v39 + v42 - 1;
    v46 = *v123;
    PixelInfo = *v123;
    v43 = a11 == 2;
    v125 = v48 / v42;
    v126 = v42;
    if (a11 != 4 && a11 != 2)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (a11 == 1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_59;
    }
  }

  else
  {
    v113 = MTLReportFailureTypeEnabled();
    if (a11 == 2)
    {
      if (v113)
      {
        goto LABEL_59;
      }
    }

    else if (v113)
    {
LABEL_59:
      v115 = objc_opt_class();
      NSStringFromClass(v115);
      MTLReportFailure();
    }
  }

  return -19;
}

uint64_t sub_23997D314(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 > 5)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  if (((a3 > 5) & v4) != 0)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23997D338(uint64_t a1, unint64_t a2)
{
  v2 = 124;
  if (a2 <= 0x400)
  {
    v3 = 2;
  }

  else
  {
    v2 = -4;
    v3 = 4;
  }

  return (v3 + (a2 >> 5)) & v2;
}

uint64_t sub_23997D4A0(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v8 = a4;
  v430 = objc_msgSend_pixelFormat(a4, a2, a3, a4, a5, a6);
  result = 0;
  if (!*(a6 + 40) || !*(a6 + 48))
  {
    return result;
  }

  v428 = a3;
  v13 = *a6;
  v14 = **a6;
  if ((v14 & 0x800000000000) == 0)
  {
    return -4;
  }

  v15 = (v14 & 0xE000000) != 0 ? BYTE3(v14) & 0xF : 1;
  v16 = (BYTE3(v14) & 0xF) == 3 ? 4 : v15;
  if (v16 > 4 || ((1 << v16) & 0x16) == 0)
  {
    return -4;
  }

  v18 = *(a1 + *MEMORY[0x277CD7378]);
  v416 = *(a1 + 240);
  v405 = *(a1 + 248);
  v19 = *(a1 + *MEMORY[0x277CD7350]);
  v20 = MEMORY[0x277CD7370];
  v400 = *(a1 + *MEMORY[0x277CD7370]);
  v419 = *(a1 + 160);
  v21 = *(a6 + 8);
  v444 = 0;
  if (((*v21 >> 34) & 0x3FuLL) <= 2 && (v14 & 0xFC00000000uLL) >> 34 <= 2)
  {
    HIBYTE(v444) = 1;
    if ((v18 & 2) != 0)
    {
      LOBYTE(v444) = 1;
    }
  }

  Sampler = MPSDevice::GetSampler();
  v414 = *(*(a1 + *v20) + 32);
  if (v8 != a5 && !objc_msgSend_isEqual_(v8, v22, a5, v24, v25, v26))
  {
    return -5;
  }

  v27 = objc_msgSend_width(a5, v22, v23, v24, v25, v26);
  v425 = objc_msgSend_height(a5, v28, v29, v30, v31, v32);
  v402 = objc_msgSend_mipmapLevelCount(a5, v33, v34, v35, v36, v37);
  if (v402 < 2)
  {
    return 0;
  }

  v429 = v8;
  LODWORD(v8) = v27;
  v443 = 0;
  v422 = a1;
  if (*(a1 + 256) == 1 && (v42 = sub_23997EBBC(v416, v405, v14, &v444 + 1, 1, &v444, v414)) != 0 && (v43 = v42[1], (ComputeState = MPSLibrary::GetComputeState()) != 0))
  {
    v46 = objc_msgSend_threadExecutionWidth(ComputeState, v38, v39, v40, v45, v41);
    v48 = (v46 & (v46 - 1)) == 0 && v46 > 0x1F;
    MPSLibrary::ReleaseComputeState();
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v422 + 256);
  v399 = a5;
  if (v49 != 1 || v48)
  {
    v52 = sub_23997EBBC(v416, v405, v14, &v444 + 1, v49, &v444, v414);
    if (v52)
    {
      v53 = v52;
      v54 = (*v52 >> 12) & 0x1F;
    }

    else
    {
      v53 = &dword_2399AFAA0;
      v54 = 4;
    }

    v412 = v54;
    v57 = v53[1];
    v63 = MPSLibrary::GetComputeState();
    if (!v63 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v64 = objc_msgSend_threadExecutionWidth(v63, v58, v59, v60, v61, v62);
    v65 = (*(*v414 + 16))(v414, v416, v405, v444) * v64;
    v410 = *v53;
    objc_msgSend_setComputePipelineState_(a2, v66, v63, v67, v68, v69);
    v74 = 63 - __clz(v65);
    v417 = v65;
    if (!v65)
    {
      v74 = 0;
    }

    v442 = v74;
    v75 = *(v422 + 224);
    if (v75)
    {
      if (*(v422 + 256) == 1)
      {
        v76 = v405 + v416;
      }

      else
      {
        v76 = v416 * v405;
      }

      objc_msgSend_setBytes_length_atIndex_(a2, v70, v75, 4 * v76, 1, v73);
    }

    else
    {
      v77 = *(v422 + 208);
      if (v77)
      {
        v78 = objc_msgSend_userDictionary(v428, v70, 0, v71, v72, v73);
        v83 = objc_msgSend_objectForKey_(v78, v79, @"_MPSCommandBufferRetainListKey", v80, v81, v82);
        if (!v83)
        {
          v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v78, v89, v88, @"_MPSCommandBufferRetainListKey", v90, v91);

          v445 = MEMORY[0x277D85DD0];
          v446 = 3221225472;
          v447 = sub_23993DAE0;
          v448 = &unk_278AC37A8;
          v449 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v428, v92, &v445, v93, v94, v95);
          v83 = v88;
        }

        objc_msgSend_addObject_(v83, v84, v77, v85, v86, v87);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v70, v77, 0, 1, v73);
    }

    objc_msgSend_setSamplerState_atIndex_(a2, v96, Sampler, 0, v97, v98);
    if (*(v422 + 256))
    {
      v104 = 8;
      v105 = 4;
    }

    else
    {
      v106 = objc_msgSend_maxTotalThreadsPerThreadgroup(v63, v99, v100, v101, v102, v103);
      v112 = objc_msgSend_threadExecutionWidth(v63, v107, v108, v109, v110, v111);
      if (v112 >> 2 <= 4)
      {
        v105 = 4;
      }

      else
      {
        v105 = v112 >> 2;
      }

      if (v105 * v105 <= v106)
      {
        v104 = v105;
      }

      else
      {
        do
        {
          v105 >>= 1;
          v104 = v105;
        }

        while (v105 * v105 > v106);
      }
    }

    v113 = 0;
    v423 = v402 - 1;
    v421 = v104;
    v403 = (v417 >> 1) - (v405 >> 1);
    v407 = (v417 >> 1) - (v416 >> 1);
    v114 = 1;
    LODWORD(v115) = v8;
    LOWORD(v116) = v425;
    while (1)
    {
      v124 = v113;
      v113 = v114;
      v130 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v429, v99, v430, 2, v114, 1, 0, 1);
      if (v130)
      {
        v131 = objc_msgSend_userDictionary(v428, v125, v126, v127, v128, v129);
        v136 = objc_msgSend_objectForKey_(v131, v132, @"_MPSCommandBufferRetainListKey", v133, v134, v135);
        if (!v136)
        {
          v141 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v131, v142, v141, @"_MPSCommandBufferRetainListKey", v143, v144);

          v445 = MEMORY[0x277D85DD0];
          v446 = 3221225472;
          v447 = sub_23993DAE0;
          v448 = &unk_278AC37A8;
          v449 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v428, v145, &v445, v146, v147, v148);
          v136 = v141;
        }

        objc_msgSend_addObject_(v136, v137, v130, v138, v139, v140);
      }

      v154 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v429, v125, v430, 2, v124, 1, 0, 1);
      if (v154)
      {
        v155 = objc_msgSend_userDictionary(v428, v149, v150, v151, v152, v153);
        v160 = objc_msgSend_objectForKey_(v155, v156, @"_MPSCommandBufferRetainListKey", v157, v158, v159);
        if (!v160)
        {
          v165 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v155, v166, v165, @"_MPSCommandBufferRetainListKey", v167, v168);

          v445 = MEMORY[0x277D85DD0];
          v446 = 3221225472;
          v447 = sub_23993DAE0;
          v448 = &unk_278AC37A8;
          v449 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v428, v169, &v445, v170, v171, v172);
          v160 = v165;
        }

        objc_msgSend_addObject_(v160, v161, v154, v162, v163, v164);
      }

      if (v115 <= 1)
      {
        v115 = 1;
      }

      else
      {
        v115 = v115 >> 1;
      }

      if ((v116 & 0xFFFE) != 0)
      {
        v116 = v116 >> 1;
      }

      else
      {
        v116 = 1;
      }

      v439 = v115;
      v440 = v116;
      if (!v115 || !v116)
      {
        goto LABEL_75;
      }

      objc_msgSend_setTexture_atIndex_(a2, v149, v130, 1, v152, v153);
      objc_msgSend_setTexture_atIndex_(a2, v173, v154, 0, v174, v175);
      if ((*(v422 + 256) & 1) == 0)
      {
        v438 = 1;
        v189 = v115 / v421 * v421;
        v190 = v116 / v105;
        v191 = v116 / v105 * v105;
        if (v191 < v116)
        {
          ++v190;
        }

        v426 = v190;
        if (v189 >= v115)
        {
          v188 = v115 / v421;
        }

        else
        {
          v188 = v115 / v421 + 1;
        }

        if (v189 < v115 || v191 < v116)
        {
          v438 = 0;
        }

        v118 = v421;
        objc_msgSend_setBytes_length_atIndex_(a2, v176, &v438, 20, 0, v177);
        goto LABEL_74;
      }

      if (v416 >= 0xA && MTLReportFailureTypeEnabled())
      {
        v398 = 9;
        MTLReportFailure();
      }

      if (v405 >= 0xA && MTLReportFailureTypeEnabled())
      {
        v398 = 9;
        MTLReportFailure();
      }

      v178 = *(*v414 + 24);
      if (v410 < 0)
      {
        v192 = v178(v414, v115, 1);
        if (v192 <= 4)
        {
          v193 = 4;
        }

        else
        {
          v193 = v192;
        }

        if (v115 < 0x80)
        {
          v193 = 4;
        }

        v194 = v116 / v403;
        v441 = v193;
        v438 = 1;
        v195 = v115 / v193;
        v196 = v193 * v195;
        v197 = v116 / v403 * v403;
        if (v197 < v116)
        {
          ++v194;
        }

        v426 = v194;
        if (v196 >= v115)
        {
          v188 = v195;
        }

        else
        {
          v188 = v195 + 1;
        }

        if (v196 >= v115 && v197 >= v116)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v179 = v178(v414, v116, 1);
        if (v116 < 0x80u || v179 < 4)
        {
          v184 = 4;
        }

        else
        {
          v184 = v179;
        }

        LODWORD(v185) = v116 / v184;
        v441 = v184;
        v438 = 1;
        v186 = v115 / v407 * v407;
        v187 = v184 * (v116 / v184);
        if (v187 >= v116)
        {
          v185 = v185;
        }

        else
        {
          v185 = v185 + 1;
        }

        v426 = v185;
        if (v186 >= v115)
        {
          v188 = v115 / v407;
        }

        else
        {
          v188 = v115 / v407 + 1;
        }

        if (v186 >= v115 && v187 >= v116)
        {
          goto LABEL_70;
        }
      }

      v438 = 0;
LABEL_70:
      if (HIBYTE(v444))
      {
        v117 = 1;
      }

      else
      {
        v117 = 2;
      }

      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v180, (((2 * v417) << v117) * v412), 0, v181, v182, v398);
      v105 = 1;
      v118 = v417;
      objc_msgSend_setBytes_length_atIndex_(a2, v119, &v438, 16, 0, v120);
LABEL_74:
      v445 = v188;
      v446 = v426;
      v447 = 1;
      v421 = v118;
      v435 = v118;
      v436 = v105;
      v437 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v121, &v445, &v435, v122, v123);
LABEL_75:

      v114 = v113 + 1;
      if (v423 <= v113)
      {
        MPSLibrary::ReleaseComputeState();
        v204 = v399;
        v205 = v428;
        goto LABEL_241;
      }
    }
  }

  PixelInfo = *v13;
  if ((v444 & 0x100) != 0 || (PixelInfo & 0xFC00000000uLL) >> 34 <= 2)
  {
    v55 = BYTE3(PixelInfo) & 0xF;
    v51 = v428;
    if (v55 > 4)
    {
      v56 = MTLPixelFormatRGBA16Float;
    }

    else
    {
      v56 = qword_2399AFD00[v55];
    }

    PixelInfo = MPSDevice::GetPixelInfo(v19, v56, MPSImageFeatureChannelFormatNone);
  }

  else
  {
    v51 = v428;
  }

  v434 = PixelInfo;
  v206 = v425;
  v207 = objc_msgSend_width(a5, v38, v39, v40, v49, v41);
  v208 = (v405 >> 1);
  if (v208 >= ((v425 >> 1) + 1) >> 1)
  {
    if (v425 == 1)
    {
      v206 = v208 + 1;
    }

    else
    {
      v206 = (v425 & 0xFFFE) + 2 * v208 - 1;
    }
  }

  if ((v207 & 0x1FFFE) != 0)
  {
    v209 = (v207 >> 1);
  }

  else
  {
    v209 = 1;
  }

  LODWORD(v424) = v206;
  v435 = v209;
  v436 = v206;
  v437 = 1;
  MEMORY[0x23EE7BAC0](v433, v51, a5);
  TempTexture = MPSAutoCache::GetTempTexture();
  if (v444 == 1)
  {
    if ((*(*v414 + 40))(v414, 1, v405))
    {
      v210 = 1;
    }

    else
    {
      v210 = 0;
      LOBYTE(v444) = 0;
    }
  }

  else
  {
    v210 = 0;
  }

  v211 = &dword_2399AFAA0;
  v212 = &dword_2399AFAA0;
  while (1)
  {
    v213 = (*v212 & 0x3F) == 0 && ((*v212 ^ (32 * v405 + 4064)) & 0xFC0) == 0;
    if (v213 && ((*v212 >> 12) & 0x1F) == v16)
    {
      break;
    }

    v215 = v212[3];
    v212 += 2;
    if (v215 == -1)
    {
      v212 = 0;
      break;
    }
  }

  if (v212)
  {
    v211 = v212;
  }

  v216 = v211[1];
  v408 = MPSLibrary::GetComputeState();
  if (!v408 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v210 && ((*(*v414 + 40))(v414, v416, 1) & 1) == 0)
  {
    LOBYTE(v444) = 0;
  }

  HIBYTE(v444) = 0;
  v217 = &dword_2399AFAA0;
  v218 = &dword_2399AFAA0;
  while (*v218 & 0xFC0 | (*v218 ^ ((v416 + 127) >> 1)) & 0x3F || ((*v218 >> 12) & 0x1F) != v16)
  {
    v220 = v218[3];
    v218 += 2;
    if (v220 == -1)
    {
      v218 = 0;
      break;
    }
  }

  if (v218)
  {
    v217 = v218;
  }

  v221 = v217[1];
  v409 = MPSLibrary::GetComputeState();
  if (!v409 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v205 = v51;
  v223 = 0;
  v415 = v402 - 1;
  v411 = v208 + 1;
  v413 = 2 * v208 - 1;
  v404 = 4 * v416;
  v401 = 4 * v405;
  v406 = vdupq_n_s64(8uLL);
  while (1)
  {
    v224 = v223;
    if (v415 <= v223)
    {
      break;
    }

    ++v223;
    v230 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v429, v222, v430, 2, (v224 + 1), 1, 0, 1);
    if (v230)
    {
      v231 = objc_msgSend_userDictionary(v205, v225, v226, v227, v228, v229);
      v236 = objc_msgSend_objectForKey_(v231, v232, @"_MPSCommandBufferRetainListKey", v233, v234, v235);
      if (!v236)
      {
        v241 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v231, v242, v241, @"_MPSCommandBufferRetainListKey", v243, v244);

        v445 = MEMORY[0x277D85DD0];
        v446 = 3221225472;
        v447 = sub_23993DAE0;
        v448 = &unk_278AC37A8;
        v449 = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(v205, v245, &v445, v246, v247, v248);
        v236 = v241;
      }

      objc_msgSend_addObject_(v236, v237, v230, v238, v239, v240);
    }

    v254 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v429, v225, v430, 2, v224, 1, 0, 1);
    if (v254)
    {
      v255 = objc_msgSend_userDictionary(v205, v249, v250, v251, v252, v253);
      v264 = objc_msgSend_objectForKey_(v255, v256, @"_MPSCommandBufferRetainListKey", v257, v258, v259);
      if (!v264)
      {
        v264 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v255, v265, v264, @"_MPSCommandBufferRetainListKey", v266, v267);

        v445 = MEMORY[0x277D85DD0];
        v446 = 3221225472;
        v447 = sub_23993DAE0;
        v448 = &unk_278AC37A8;
        v449 = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(v205, v268, &v445, v269, v270, v271);
      }

      objc_msgSend_addObject_(v264, v260, v254, v261, v262, v263);
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v8 >> 1;
    }

    if ((v425 & 0xFFFE) != 0)
    {
      v272 = v425;
    }

    else
    {
      v272 = 1;
    }

    v273 = v413 + (v272 & 0xFFFE);
    if ((v425 & 0xFFFE) == 0)
    {
      v273 = v411;
    }

    if (v224)
    {
      v274 = v273;
    }

    else
    {
      v274 = v424;
    }

    if (v419)
    {
      v439 = v8;
      v424 = v274;
      v440 = v274;
      LOWORD(v443) = 1;
      if (!v8)
      {
        goto LABEL_239;
      }
    }

    else
    {
      HIWORD(v443) = v272;
      v439 = v8;
      v424 = v274;
      v440 = v274;
      LOWORD(v443) = 1;
      if (!v8)
      {
        goto LABEL_239;
      }
    }

    objc_msgSend_setComputePipelineState_(a2, v249, v409, v251, v252, v253);
    objc_msgSend_setTexture_atIndex_(a2, v275, v254, 0, v276, v277);
    objc_msgSend_setTexture_atIndex_(a2, v278, TempTexture, 1, v279, v280);
    v285 = *(v422 + 224);
    if (v285)
    {
      objc_msgSend_setBytes_length_atIndex_(a2, v281, v285, v404, 1, v284);
    }

    else
    {
      v289 = *(v422 + 208);
      if (v289)
      {
        v290 = objc_msgSend_userDictionary(v205, v281, 0, v282, v283, v284);
        v295 = objc_msgSend_objectForKey_(v290, v291, @"_MPSCommandBufferRetainListKey", v292, v293, v294);
        if (!v295)
        {
          v300 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v290, v301, v300, @"_MPSCommandBufferRetainListKey", v302, v303);

          v445 = MEMORY[0x277D85DD0];
          v446 = 3221225472;
          v447 = sub_23993DAE0;
          v448 = &unk_278AC37A8;
          v449 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v205, v304, &v445, v305, v306, v307);
          v295 = v300;
        }

        objc_msgSend_addObject_(v295, v296, v289, v297, v298, v299);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v281, v289, 0, 1, v284);
    }

    objc_msgSend_setSamplerState_atIndex_(a2, v286, Sampler, 0, v287, v288);
    objc_msgSend_setBytes_length_atIndex_(a2, v308, &v438, 20, 0, v309);
    v313 = v424 >> 3;
    v314 = 8 * (v8 >> 3);
    if (v314 >= v8)
    {
      v315 = v8 >> 3;
    }

    else
    {
      v315 = (v8 >> 3) + 1;
    }

    v316 = v424 > 8 * v313 || v314 < v8;
    v438 = !v316;
    if (v424 <= 8 * v313)
    {
      v317 = v424 >> 3;
    }

    else
    {
      v317 = v313 + 1;
    }

    v445 = v315;
    v446 = v317;
    v447 = 1;
    v431 = v406;
    v432 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v310, &v445, &v431, v311, v312);
    v439 = v8;
    if ((v425 & 0xFFFE) != 0)
    {
      v272 >>= 1;
    }

    else
    {
      v272 = 1;
    }

    v440 = v272;
    LOWORD(v443) = 2;
    objc_msgSend_setComputePipelineState_(a2, v318, v408, v319, v320, v321);
    objc_msgSend_setTexture_atIndex_(a2, v322, TempTexture, 0, v323, v324);
    objc_msgSend_setTexture_atIndex_(a2, v325, v230, 1, v326, v327);
    v333 = *(v422 + 224);
    if (v333)
    {
      objc_msgSend_setBytes_length_atIndex_(a2, v328, v333 + 4 * v416, v401, 1, v332);
    }

    else
    {
      v337 = *(v422 + 208);
      if (v337)
      {
        v338 = objc_msgSend_userDictionary(v428, v328, v329, v330, v331, v332);
        v343 = objc_msgSend_objectForKey_(v338, v339, @"_MPSCommandBufferRetainListKey", v340, v341, v342);
        if (!v343)
        {
          v427 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v338, v348, v427, @"_MPSCommandBufferRetainListKey", v349, v350);

          v445 = MEMORY[0x277D85DD0];
          v446 = 3221225472;
          v447 = sub_23993DAE0;
          v448 = &unk_278AC37A8;
          v449 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v428, v351, &v445, v352, v353, v354);
          v343 = v427;
        }

        objc_msgSend_addObject_(v343, v344, v337, v345, v346, v347);
      }

      objc_msgSend_setBuffer_offset_atIndex_(a2, v328, v337, v404, 1, v332);
    }

    objc_msgSend_setSamplerState_atIndex_(a2, v334, Sampler, 0, v335, v336);
    objc_msgSend_setBytes_length_atIndex_(a2, v355, &v438, 20, 0, v356);
    v360 = v314 >= v8;
    v361 = v272 >> 3;
    if (8 * v361 < v272)
    {
      ++v361;
      v360 = 0;
    }

    v438 = v360;
    v445 = v315;
    v446 = v361;
    v447 = 1;
    v431 = vdupq_n_s64(8uLL);
    v432 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v357, &v445, &v431, v358, v359);
    v205 = v428;
LABEL_239:

    v425 = v272;
  }

  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSAutoCache::~MPSAutoCache(v433);
  v204 = v399;
LABEL_241:
  if (v429)
  {
    v362 = objc_msgSend_userDictionary(v205, v199, v200, v201, v202, v203);
    v367 = objc_msgSend_objectForKey_(v362, v363, @"_MPSCommandBufferRetainListKey", v364, v365, v366);
    if (!v367)
    {
      v372 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v362, v373, v372, @"_MPSCommandBufferRetainListKey", v374, v375);

      v445 = MEMORY[0x277D85DD0];
      v446 = 3221225472;
      v447 = sub_23993DAE0;
      v448 = &unk_278AC37A8;
      v449 = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v205, v376, &v445, v377, v378, v379);
      v367 = v372;
    }

    objc_msgSend_addObject_(v367, v368, v429, v369, v370, v371);
  }

  if (v204)
  {
    v380 = objc_msgSend_userDictionary(v205, v199, v200, v201, v202, v203);
    v385 = objc_msgSend_objectForKey_(v380, v381, @"_MPSCommandBufferRetainListKey", v382, v383, v384);
    if (!v385)
    {
      v390 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v380, v391, v390, @"_MPSCommandBufferRetainListKey", v392, v393);

      v445 = MEMORY[0x277D85DD0];
      v446 = 3221225472;
      v447 = sub_23993DAE0;
      v448 = &unk_278AC37A8;
      v449 = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v205, v394, &v445, v395, v396, v397);
      v385 = v390;
    }

    objc_msgSend_addObject_(v385, v386, v204, v387, v388, v389);
  }

  return 0;
}

int *sub_23997EBBC(unint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4, int a5, _BYTE *a6, uint64_t a7)
{
  if (a1 >= 0xA && a2 > 9)
  {
    return 0;
  }

  if ((a3 & 0xE000000) != 0)
  {
    v11 = BYTE3(a3) & 0xF;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  if ((BYTE3(a3) & 0xF) == 3)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  if ((a3 & 0x800000000000) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a1 - 1;
  v15 = 32 * a2;
  if (*a6 == 1)
  {
    v16 = a7;
    v17 = a5;
    v18 = (*(*a7 + 40))(a7, a1, a2);
    a5 = v17;
    a7 = v16;
    if ((v18 & 1) == 0)
    {
      *a6 = 0;
    }
  }

  v19 = (v14 >> 1) & 0x3F;
  v20 = v15 + 4064;
  if (!a5)
  {
    result = &dword_2399AFAA0;
    *a4 = 0;
    goto LABEL_34;
  }

  if (*a4 != 1 || ((v21 = (*(*a7 + 32))(a7, a1, a2), v22 = &unk_2399AF828, !v21) ? (v23 = &unk_2399AF8C8) : (v22 = &unk_2399AF7D8, v23 = &unk_2399AF878), !*a6 ? (result = v23) : (result = v22), result[1] == -1))
  {
    result = &dword_2399AF918;
    *a4 = 0;
LABEL_34:
    while (1)
    {
      v28 = (*result & 0x3F) == v19 && ((*result ^ v20) & 0xFC0) == 0;
      if (v28 && ((v13 ^ (*result >> 12)) & 0x1F) == 0)
      {
        break;
      }

      v30 = result[3];
      result += 2;
      if (v30 == -1)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v25 = (*result & 0x3F) == v19 && ((*result ^ v20) & 0xFC0) == 0;
      if (v25 && ((v13 ^ (*result >> 12)) & 0x1F) == 0)
      {
        break;
      }

      v27 = result[3];
      result += 2;
      if (v27 == -1)
      {
        result = &dword_2399AF918;
        *a4 = 0;
        goto LABEL_34;
      }
    }
  }

  return result;
}

uint64_t sub_23997F0E8(float32x4_t *a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a3;
  v8 = *(a1->i64 + *MEMORY[0x277CD7378]);
  v9 = a1[17].u8[0];
  v10 = a1[13].u8[8];
  v11 = *(a1->i64 + *MEMORY[0x277CD7370]);
  v12 = a1[16].u8[0];
  v13 = a1[14];
  v14 = a1[15];
  v15 = a1[13].u64[0];
  v16 = a1[16].i64[1];
  v17 = a1[10].i64[0];
  v18 = *(a6 + 16);
  v19 = *(a6 + 40);
  v21 = *a6;
  v20 = *(a6 + 8);
  if (*a6 != v20)
  {
    goto LABEL_2;
  }

  if (a4 == a5)
  {
    return -18;
  }

  v114 = *(a1->i64 + *MEMORY[0x277CD7350]);
  v105 = a1[13].u64[0];
  v119 = a4;
  v51 = a1[16].i64[1];
  v52 = a5;
  v53 = a1[10].i64[0];
  v133 = *(a6 + 16);
  v138 = *(a6 + 40);
  v123 = a1[15];
  v128 = a1[14];
  v54 = *(a1->i64 + *MEMORY[0x277CD7370]);
  v55 = a1[17].u8[0];
  v56 = a1[13].u8[8];
  v104 = *a6;
  v58 = a1[16].u8[0];
  isEqual = objc_msgSend_isEqual_(a4, a2, a5, a4, a5, a6);
  v12 = v58;
  v6 = a6;
  v10 = v56;
  v9 = v55;
  v11 = v54;
  v14 = v123;
  v13 = v128;
  v18 = v133;
  v19 = v138;
  a5 = v52;
  v16 = v51;
  a4 = v119;
  v21 = v104;
  v15 = v105;
  v7 = a3;
  if (isEqual)
  {
    return -18;
  }

LABEL_2:
  if ((v8 & 1) == 0)
  {
    if (!v9)
    {
      v113 = a5;
      v120 = a4;
      v134 = v18;
      v139 = v19;
      v124 = v14;
      v129 = v13;
      v93 = v11;
      v115 = v10;
      v106 = v12;
      v94 = MTLReportFailureTypeEnabled();
      v12 = v106;
      v10 = v115;
      v9 = 0;
      v11 = v93;
      v14 = v124;
      v13 = v129;
      v18 = v134;
      v19 = v139;
      a5 = v113;
      a4 = v120;
      if (v94)
      {
        v95 = objc_opt_class();
        v103 = NSStringFromClass(v95);
        MTLReportFailure();
        v12 = v106;
        v10 = v115;
        v9 = 0;
        v11 = v93;
        v14 = v124;
        v13 = v129;
        v18 = v134;
        v19 = v139;
        a5 = v113;
        a4 = v120;
      }
    }

    if ((*(v21 + 3) & 0xF) == 0)
    {
      v96 = a5;
      v121 = a4;
      v135 = v18;
      v140 = v19;
      v125 = v14;
      v130 = v13;
      v97 = v11;
      v110 = v9;
      v116 = v10;
      v107 = v12;
      v98 = MTLReportFailureTypeEnabled();
      v12 = v107;
      v10 = v116;
      v9 = v110;
      v11 = v97;
      v14 = v125;
      v13 = v130;
      v18 = v135;
      v19 = v140;
      a4 = v121;
      a5 = v96;
      if (v98)
      {
        v103 = v121;
        MTLReportFailure();
        v12 = v107;
        v10 = v116;
        v9 = v110;
        v11 = v97;
        v14 = v125;
        v13 = v130;
        v18 = v135;
        v19 = v140;
        a4 = v121;
        a5 = v96;
      }
    }

    if ((*(v20 + 3) & 0xF) == 0)
    {
      v99 = a5;
      v100 = a4;
      v136 = v18;
      v141 = v19;
      v126 = v14;
      v131 = v13;
      v101 = v11;
      v111 = v9;
      v117 = v10;
      v108 = v12;
      v102 = MTLReportFailureTypeEnabled();
      v12 = v108;
      v10 = v117;
      v9 = v111;
      v11 = v101;
      v14 = v126;
      v13 = v131;
      v18 = v136;
      v19 = v141;
      a4 = v100;
      a5 = v99;
      if (v102)
      {
        v103 = v99;
        MTLReportFailure();
        v12 = v108;
        v10 = v117;
        v9 = v111;
        v11 = v101;
        v14 = v126;
        v13 = v131;
        v18 = v136;
        v19 = v141;
        a4 = v100;
        a5 = v99;
      }
    }
  }

  if (!v9)
  {
    return -20;
  }

  v22 = 0;
  v23 = v19.i64[1];
  if (v19.i64[1])
  {
    v24 = v19.i64[0];
    if (v19.i64[0])
    {
      v122 = v14;
      v127 = v13;
      v132 = v18;
      v137 = v19;
      v112 = a5;
      v118 = a4;
      v25 = *(v21 + 3) & 0xF;
      if (v10)
      {
        v26 = 4;
      }

      else
      {
        v26 = 3;
      }

      if (v25 == 4)
      {
        v25 = v26;
      }

      if (v12)
      {
        v27 = 0;
      }

      else
      {
        v27 = 5;
      }

      v28 = v25 + v27;
      v29 = v11;
      ComputeState = MPSLibrary::GetComputeState();
      if (ComputeState)
      {
        v35 = ComputeState;
        objc_msgSend_setComputePipelineState_(a2, v31, ComputeState, v32, v33, v34);
        v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(v35, v36, v37, v38, v39, v40);
        MPSLibrary::ReleaseComputeState();
        v48 = (&unk_2399AFD78 + 32 * *(*(*(v29 + 280) + 16 * v28) + 64));
        v49 = *v48;
        if (v41 >= 16 * *v48)
        {
          v50 = 16;
        }

        else
        {
          v50 = v41 / v49;
        }

        *v47.i32 = v15;
        v61 = v48[2];
        v62 = v48[3] * v50;
        v63 = v15;
        v64 = (v24 + v61 * v49 - 1) / (v61 * v49);
        v154 = 0;
        v155 = 0;
        v146[0] = v127;
        v146[1] = vdivq_f32(vdupq_lane_s32(v47, 0), vsubq_f32(v122, v127));
        v65 = vmovn_s64(v6[4]);
        v148 = v65.i16[2];
        v147 = v65.i16[0];
        v66 = vmovn_s64(v132);
        v150 = v66.i16[2];
        v149 = v66.i16[0];
        v67 = vmovn_s64(v137);
        v152 = v67.i16[2];
        v151 = v67.i16[0];
        v153 = (v63 - 1);
        v68 = v63;
        LOWORD(v154) = v63;
        v69 = (v23 + v62 - 1) / v62;
        if ((objc_msgSend_retainedReferences(v7, v42, v43, v44, v45, v46, v103) & 1) == 0)
        {
          v73 = v16;
          v145[0] = MEMORY[0x277D85DD0];
          v145[1] = 3221225472;
          v145[2] = sub_23998081C;
          v145[3] = &unk_278AC37A8;
          v145[4] = v16;
          objc_msgSend_addCompletedHandler_(v7, v74, v145, v75, v76, v77);
        }

        objc_msgSend_setTexture_atIndex_(a2, v70, v118, 0, v71, v72);
        objc_msgSend_setTexture_atIndex_(a2, v78, v112, 1, v79, v80);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(a2, v82, Sampler, 0, v83, v84);
        objc_msgSend_setBytes_length_atIndex_(a2, v85, v146, 64, 0, v86);
        objc_msgSend_setBuffer_offset_atIndex_(a2, v87, v16, 32 * v68, 1, v88);
        v144[0] = v64;
        v144[1] = v69;
        v144[2] = 1;
        v143[0] = v49;
        v143[1] = v50;
        v143[2] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v89, v144, v143, v90, v91);
        return 0;
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          v60 = objc_opt_class();
          NSStringFromClass(v60);
          MTLReportFailure();
        }

        return -19;
      }
    }
  }

  return v22;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}