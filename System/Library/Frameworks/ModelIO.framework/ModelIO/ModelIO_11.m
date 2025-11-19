void *sub_239F51E04(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_239F52038(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

const void **sub_239F520EC(void *a1, const void **a2)
{
  v4 = sub_239E68B60(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_239F5236C();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EF2FF8(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239F52358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F52420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F52420(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_239E91D3C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_239F5249C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_239E56E70((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_239F74EB8(v4, &v6);
    }
  }

  return a1;
}

void sub_239F524FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_239F74E70(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F52514(uint64_t a1, char **a2)
{
  sub_239E552A0(&__p, *a2);
  *(a1 + 8) = &off_284D15558;
  sub_239F52924();
}

void sub_239F52570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F5258C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F525AC(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F5272C(result);
}

unint64_t sub_239F525C4(uint64_t *a1)
{
  v1 = *a1;
  v6[0] = 0;
  v6[1] = 0;
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v6, v3);
  return bswap64(0x9E3779B97F4A7C55 * v6[0]);
}

void *sub_239F52648(uint64_t **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return sub_239E98B94(a2, v4, v5);
}

void sub_239F52714(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15558;
  sub_239F52924();
}

uint64_t *sub_239F5272C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F527A8(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_239F5281C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239F52884();
  }

  return *a1;
}

id sub_239F52A80(void *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v226 = *MEMORY[0x277D85DE8];
  v190 = a1;
  v196 = a3;
  v11 = a4;
  v184 = a5;
  v182 = a6;
  v195 = v11;
  v189 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_autoreleasePoolPush();
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v15 = objc_msgSend_layouts(v11, v13, v14);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v217, v225, 16);
  context = v12;
  if (!v19)
  {

LABEL_50:
    v100 = v189;
    v101 = 1;
    v102 = context;
    goto LABEL_81;
  }

  v20 = 0;
  v21 = *v218;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v218 != v21)
      {
        objc_enumerationMutation(v15);
      }

      if (objc_msgSend_stride(*(*(&v217 + 1) + 8 * i), v17, v18))
      {
        ++v20;
      }
    }

    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v217, v225, 16);
  }

  while (v19);

  if (!v20)
  {
    goto LABEL_50;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v27 = objc_msgSend_layouts(v195, v23, v24);
    v30 = objc_msgSend_count(v27, v28, v29) > v25;

    if (!v30)
    {
      break;
    }

    v33 = objc_msgSend_layouts(v195, v31, v32);
    v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, v25);
    v38 = objc_msgSend_stride(v35, v36, v37) == 0;

    ++v25;
    if (!v38)
    {
      v26 = v25;
    }
  }

  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v39 = objc_msgSend_attributes(v195, v31, v32);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v213, v224, 16);
  if (v43)
  {
    v44 = *v214;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v214 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v213 + 1) + 8 * j);
        if (objc_msgSend_format(v46, v41, v42))
        {
          v47 = objc_msgSend_bufferIndex(v46, v41, v42);
          if (v26 <= v47 + 1)
          {
            v26 = v47 + 1;
          }
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v213, v224, 16);
    }

    while (v43);
  }

  __p = 0;
  v211 = 0;
  v212 = 0;
  v209 = 0;
  v185 = v26;
  sub_239F5363C(&__p, v26);
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  obj = objc_msgSend_attributes(v195, v48, v49);
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v205, v223, 16);
  if (v53)
  {
    v54 = *v206;
    v191 = 1;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v206 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v205 + 1) + 8 * k);
        v57 = objc_msgSend_bufferIndex(v56, v51, v52);
        v60 = objc_msgSend_name(v56, v58, v59);
        v62 = objc_msgSend_attributeNamed_(v196, v61, v60);

        v65 = objc_msgSend_layouts(v196, v63, v64);
        v68 = objc_msgSend_bufferIndex(v62, v66, v67);
        v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v69, v68);
        v73 = objc_msgSend_stride(v70, v71, v72);

        v76 = objc_msgSend_layouts(v195, v74, v75);
        v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, v57);
        v81 = objc_msgSend_stride(v78, v79, v80);

        if (v81)
        {
          if (!objc_msgSend_format(v56, v82, v83) || !v62)
          {
            v92 = __p;
            if (*(__p + v57))
            {
              goto LABEL_43;
            }

            v94 = a2;
LABEL_42:
            v92[v57] = v94;
            goto LABEL_43;
          }

          v86 = objc_msgSend_bufferIndex(v62, v84, v85);
          v88 = objc_msgSend_objectAtIndexedSubscript_(v190, v87, v86);
          v91 = objc_msgSend_length(v88, v89, v90);

          v92 = __p;
          v93 = *(__p + v57);
          v94 = v91 / v73;
          if (!v93)
          {
            goto LABEL_42;
          }

          if (v93 != v94)
          {
            if (v93 < v94)
            {
              v94 = *(__p + v57);
            }

            *(__p + v57) = v94;
            if (v191)
            {
              NSLog(&cfstr_WarningTryingT.isa, v57);
            }

            v191 = 0;
          }
        }

LABEL_43:
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v205, v223, 16);
    }

    while (v53);
  }

  if (v184)
  {
    v97 = v195;
    v183 = objc_msgSend_allocator(v184, v95, v96);
LABEL_47:
    if (!v183)
    {
      v183 = objc_opt_new();
    }

    goto LABEL_53;
  }

  v97 = v195;
  if (!v182)
  {
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v170 = v190;
    v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v171, &v201, v222, 16);
    if (v174)
    {
      v175 = *v202;
      while (2)
      {
        for (m = 0; m != v174; ++m)
        {
          if (*v202 != v175)
          {
            objc_enumerationMutation(v170);
          }

          v177 = *(*(&v201 + 1) + 8 * m);
          v178 = objc_msgSend_null(MEMORY[0x277CBEB68], v172, v173);
          isEqual = objc_msgSend_isEqual_(v177, v179, v178);

          if ((isEqual & 1) == 0)
          {
            v183 = objc_msgSend_allocator(v177, v172, v173);
            goto LABEL_96;
          }
        }

        v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v172, &v201, v222, 16);
        if (v174)
        {
          continue;
        }

        break;
      }
    }

    v183 = 0;
LABEL_96:

    v97 = v195;
    goto LABEL_47;
  }

  v183 = v182;
LABEL_53:
  if (v185)
  {
    for (n = 0; v185 != n; ++n)
    {
      v104 = objc_msgSend_layouts(v97, v98, v99);
      v106 = objc_msgSend_objectAtIndexedSubscript_(v104, v105, n);

      v109 = objc_msgSend_null(MEMORY[0x277CBEB68], v107, v108);
      if (objc_msgSend_isEqual_(v106, v110, v109))
      {
      }

      else
      {
        v115 = objc_msgSend_stride(v106, v111, v112) == 0;

        if (!v115)
        {
          v116 = *(__p + n);
          v117 = objc_msgSend_stride(v106, v113, v114);
          v119 = a2;
          if (v116)
          {
            v119 = v116;
          }

          v120 = objc_msgSend_newBufferFromZone_length_type_(v183, v118, v184, v119 * v117, 1);
          objc_msgSend_addObject_(v189, v121, v120);
          goto LABEL_62;
        }
      }

      v120 = objc_msgSend_null(MEMORY[0x277CBEB68], v113, v114);
      objc_msgSend_addObject_(v189, v122, v120);
LABEL_62:

      v97 = v195;
    }
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v188 = objc_msgSend_attributes(v97, v98, v99);
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v123, &v197, v221, 16);
  if (v124)
  {
    v192 = *v198;
    do
    {
      obja = v124;
      for (ii = 0; ii != obja; ii = ii + 1)
      {
        if (*v198 != v192)
        {
          objc_enumerationMutation(v188);
        }

        v128 = *(*(&v197 + 1) + 8 * ii);
        if (objc_msgSend_format(v128, v125, v126))
        {
          v129 = objc_msgSend_bufferIndex(v128, v125, v126);
          v132 = objc_msgSend_layouts(v97, v130, v131);
          v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, v129);
          v137 = objc_msgSend_stride(v134, v135, v136);

          v141 = objc_msgSend_objectAtIndexedSubscript_(v189, v138, v129);
          if (v141)
          {
            v142 = objc_msgSend_name(v128, v139, v140);
            v144 = objc_msgSend_attributeNamed_(v196, v143, v142);

            v147 = *(__p + v129);
            if (v144)
            {
              v148 = objc_msgSend_bufferIndex(v144, v145, v146);
              v151 = objc_msgSend_layouts(v196, v149, v150);
              v153 = objc_msgSend_objectAtIndexedSubscript_(v151, v152, v148);
              v156 = objc_msgSend_stride(v153, v154, v155);

              v158 = objc_msgSend_objectAtIndexedSubscript_(v190, v157, v148);
              v161 = objc_msgSend_length(v141, v159, v160);
              v163 = objc_msgSend_objectAtIndexedSubscript_(v190, v162, v148);
              v166 = objc_msgSend_length(v163, v164, v165);
              sub_239F5EB80(v141, v137, v128, v158, v156, v144, v147, v161, v166);
            }

            else if (a7)
            {
              sub_239F5E970(v141, v137, v128, v147);
            }
          }

          v97 = v195;
        }
      }

      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v125, &v197, v221, 16);
    }

    while (v124);
  }

  v102 = context;
  if (__p)
  {
    v211 = __p;
    operator delete(__p);
  }

  v101 = 0;
LABEL_81:
  objc_autoreleasePoolPop(v102);
  if ((v101 & 1) == 0)
  {
    v167 = v189;
  }

  v168 = *MEMORY[0x277D85DE8];

  return v189;
}

void sub_239F5338C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_239F53608(void *a1, unint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v6 = sub_239F52A80(a1, a2, a3, a4, a5, 0, a6);

  return v6;
}

void *sub_239F5363C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_239F078EC(result, a2);
  }

  return result;
}

void sub_239F536F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F53714(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a3, void *a4, int a5, int a6, int a7)
{
  v14 = (*a2)++;
  sub_239E56C3C(a1);
  *(*(a1 + 4) + 4 * v14) = a5;
  v15 = (*a2)++;
  sub_239E56C3C(a1);
  *(*(a1 + 4) + 4 * v15) = a6;
  v16 = (*a2)++;
  sub_239E56C3C(a1);
  *(*(a1 + 4) + 4 * v16) = a7;
  v17 = (*a4)++;
  sub_239E56C3C(a3);
  *(*(a3 + 4) + 4 * v17) = 3;
}

BOOL sub_239F537D4(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 8) == *a1)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(*v3 + 16);
  v5 = *(*a1 + 8);
  if (v5 == a2)
  {
    v5 = *(a2 + 8);
  }

  v6 = *(*a3 + 16 * *(*a1 + 16));
  v7 = vsubq_f32(v6, *(*a3 + 16 * v4));
  v8 = vsubq_f32(*(*a3 + 16 * *(v5 + 16)), v6);
  v9 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v7)), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v8);
  v10 = vmulq_f32(v9, v9);
  if (((v10.f32[2] + v10.f32[0]) + v10.f32[1]) < 1.0e-12)
  {
    return 1;
  }

  v12 = vmulq_f32(v9, xmmword_239F9C090);
  return ((v12.f32[2] + v12.f32[0]) + v12.f32[1]) < 0.0;
}

uint64_t sub_239F53888(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vcgt_f32(*a2, *a1);
  if (v2.i8[0])
  {
    v3 = 1;
  }

  else
  {
    if ((vcgt_f32(*a1, *a2).u8[0] & 1) == 0)
    {
      v4 = a1[1];
      v5 = a2[1];
      if (v4 != v5)
      {
        v6 = v4[1];
        v7 = *v5;
        v8 = v5[1];
        if (COERCE_FLOAT(*v4) == *&v6 && *&v7 != *&v8)
        {
          v3 = a1[2].i8[0];
          return v3 & 1;
        }

        if (COERCE_FLOAT(*v4) != *&v6 && *&v7 == *&v8)
        {
          v3 = a2[2].i8[0] ^ 1;
          return v3 & 1;
        }
      }

      v3 = v2.i8[4];
      return v3 & 1;
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_239F53908(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = a2[1];
    if (vcgt_f32(*a1, v4).u8[0] & 1) != 0 || (v5 = *a2, v6 = a1[1], (vcgt_f32(*a2, v6).u8[0]))
    {
LABEL_5:
      v2 = 0;
      return v2 & 1;
    }

    v8 = vsub_f32(v3, v6);
    v9 = vsub_f32(v5, v4);
    v10 = vmul_f32(v8, vrev64_s32(v9));
    v11 = vsub_f32(v10, vdup_lane_s32(v10, 1));
    if (v11.f32[0] == 0.0 || vmul_f32(v11, v11).f32[0] < 0.000001)
    {
      v35 = vsub_f32(v5, v6);
      v36 = vmul_f32(vrev64_s32(v35), v8);
      v37 = vsub_f32(v36, vdup_lane_s32(v36, 1));
      if (v37.f32[0] != 0.0 && vmul_f32(v37, v37).f32[0] >= 0.000001)
      {
        goto LABEL_5;
      }

      v38 = vmul_f32(v35, vsub_f32(v5, v3));
      v39 = vmul_f32(vsub_f32(v4, v6), vsub_f32(v4, v3));
      v40 = vmvn_s8(vcltz_f32(vadd_f32(vzip1_s32(v39, v38), vzip2_s32(v39, v38))));
      if (v40.i32[1] & v40.i32[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = vsub_f32(v5, v3);
      v13 = vsub_f32(v6, v3);
      v14 = vsub_f32(v4, v3);
      v15 = vsub_f32(v3, v5);
      v16 = vsub_f32(v4, v5);
      v17 = vsub_f32(v6, v5);
      v18 = vmla_f32(vneg_f32(vmul_f32(vzip1_s32(v13, v16), vzip2_s32(v14, v15))), vzip1_s32(v14, v15), vzip2_s32(v13, v16));
      v19 = vdup_n_s32(0x358637BDu);
      v20 = vext_s8(v12, v16, 4uLL);
      v12.i32[1] = v16.i32[1];
      v21 = vext_s8(v13, v17, 4uLL);
      v13.i32[1] = v17.i32[1];
      v22 = vmla_f32(vneg_f32(vmul_f32(v13, v20)), v12, v21);
      v23 = vmul_f32(vbic_s8(v22, vcgt_f32(v19, vmul_f32(v22, v22))), vbic_s8(v18, vcgt_f32(v19, vmul_f32(v18, v18))));
      if (*v23.i32 >= 0.0 || *&v23.i32[1] >= 0.0)
      {
        v24 = vsub_f32(v5, v6);
        v25 = vsub_f32(v4, v6);
        v26 = vsub_f32(v3, v4);
        v27 = vsub_f32(v6, v4);
        v28 = vmla_f32(vneg_f32(vmul_f32(vzip1_s32(v9, v8), vzip2_s32(v26, v25))), vzip1_s32(v26, v25), vzip2_s32(v9, v8));
        v29 = vext_s8(v27, v8, 4uLL);
        v27.i32[1] = v8.i32[1];
        v30 = vext_s8(v9, v24, 4uLL);
        v9.i32[1] = v24.i32[1];
        v31 = vmla_f32(vneg_f32(vmul_f32(v29, v9)), v30, v27);
        v32 = vmul_f32(vbic_s8(v31, vcgt_f32(v19, vmul_f32(v31, v31))), vbic_s8(v28, vcgt_f32(v19, vmul_f32(v28, v28))));
        v33.i64[0] = __PAIR64__(v32.u32[1], v23.u32[0]);
        *&v33.u32[2] = vext_s8(v23, v32, 4uLL);
        if (vmaxv_u16(vmovn_s32(vceqzq_f32(v33))))
        {
          v34 = vcltz_f32(v32);
          v2 = (*v23.i32 < 0.0 || *&v23.i32[1] < 0.0) | v34.i8[4] | v34.i8[0];
          return v2 & 1;
        }

        goto LABEL_5;
      }
    }

    v2 = 1;
  }

  return v2 & 1;
}

__n64 sub_239F53B28(float32x4_t *a1, float32x4_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = vsubq_f32(v3, v2);
  v6 = vmulq_f32(v5, v5);
  *v6.i32 = vaddv_f32(*v6.i8) + *&v6.i32[2];
  v7 = vrsqrte_f32(v6.u32[0]);
  v8 = vmulq_n_f32(v5, vmul_f32(vrsqrts_f32(v6.u32[0], vmul_f32(v7, v7)), v7).f32[0]);
  v9 = vsubq_f32(v4, v2);
  v10 = vmulq_f32(v9, v9);
  v11 = vaddv_f32(*v10.f32) + v10.f32[2];
  v12 = vrsqrte_f32(LODWORD(v11));
  v13 = vmulq_n_f32(v9, vmul_f32(vrsqrts_f32(LODWORD(v11), vmul_f32(v12, v12)), v12).f32[0]);
  v14 = vsubq_f32(v4, v3);
  v15 = vmulq_f32(v14, v14);
  v16 = vaddv_f32(*v15.f32) + v15.f32[2];
  v17 = vrsqrte_f32(LODWORD(v16));
  v18 = vmulq_n_f32(v14, vmul_f32(vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)), v17).f32[0]);
  v19 = vmulq_f32(v13, v8);
  v20 = vmulq_f32(v18, vnegq_f32(v8));
  v21 = vabs_f32(vadd_f32(vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8)), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL))));
  v22 = vmulq_f32(v18, v13);
  v23 = fabsf(vaddv_f32(*v22.f32) + v22.f32[2]);
  if (v21.f32[0] < v21.f32[1] && v21.f32[0] < v23)
  {
    v35 = vsubq_f32(a2, v2);
    v36 = vmulq_f32(v9, v5);
    v37 = vmulq_f32(v5, v35);
    v38 = vmulq_f32(v9, v35);
    *v38.i32 = vaddv_f32(*v38.i8) + *&v38.i32[2];
    *v36.i8 = vadd_f32(vadd_f32(vzip1_s32(*v37.i8, *v36.i8), vzip2_s32(*v37.i8, *v36.i8)), vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
    *v37.i32 = -(vmuls_lane_f32(*v38.i32, *v36.i8, 1) - (v11 * *v36.i32));
    *&v38.i32[1] = v11;
    *v36.i8 = vmla_n_f32(vneg_f32(vmul_lane_f32(*v36.i8, *v36.i8, 1)), *v38.i8, *v6.i32);
    *v38.i8 = vdup_lane_s32(*v36.i8, 1);
    v36.i32[1] = v37.i32[0];
    *v6.i8 = vdiv_f32(*v36.i8, *v38.i8);
    *v38.i32 = 1.0 - vaddv_f32(*v6.i8);
    result.n64_u32[0] = vuzp1q_s32(v38, v6).u32[0];
    result.n64_u32[1] = v6.u32[1];
  }

  else if (v21.f32[1] < v21.f32[0] && v21.f32[1] < v23)
  {
    v39 = vsubq_f32(v2, v3);
    v40 = vsubq_f32(a2, v3);
    v41 = vmulq_f32(v39, v39);
    v42 = vmulq_f32(v14, v39);
    v43 = vmulq_f32(v39, v40);
    v44 = vmulq_f32(v14, v40);
    v44.f32[0] = vaddv_f32(*v44.f32) + v44.f32[2];
    *v43.i8 = vadd_f32(vadd_f32(vzip1_s32(*v43.i8, *v42.i8), vzip2_s32(*v43.i8, *v42.i8)), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
    *v42.i32 = -(vmuls_lane_f32(v44.f32[0], *v43.i8, 1) - (v16 * *v43.i32));
    v44.f32[1] = v16;
    *v43.i8 = vmla_n_f32(vneg_f32(vmul_lane_f32(*v43.i8, *v43.i8, 1)), *v44.f32, vaddv_f32(*v41.f32) + v41.f32[2]);
    result.n64_f32[0] = *v42.i32 / *&v43.i32[1];
    result.n64_f32[1] = 1.0 - ((*v43.i32 / *&v43.i32[1]) + (*v42.i32 / *&v43.i32[1]));
  }

  else
  {
    v26 = vsubq_f32(v2, v4);
    v27 = vsubq_f32(v3, v4);
    v28 = vsubq_f32(a2, v4);
    v29 = vmulq_f32(v26, v26);
    v30 = vmulq_f32(v26, v27);
    v30.f32[0] = vaddv_f32(*v30.f32) + v30.f32[2];
    v31 = vmulq_f32(v27, v27);
    v32 = vmulq_f32(v26, v28);
    v33 = vmulq_f32(v27, v28);
    *v27.f32 = vadd_f32(vadd_f32(vzip1_s32(*v31.i8, *v29.i8), vzip2_s32(*v31.i8, *v29.i8)), *&vzip2q_s32(v31, v29));
    *v33.i8 = vadd_f32(vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8)), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
    *v32.i8 = vmul_lane_f32(*v27.f32, *v27.f32, 1);
    *v32.i32 = *v32.i32 - (v30.f32[0] * v30.f32[0]);
    result.n64_u64[0] = vdiv_f32(vmla_f32(vneg_f32(vrev64_s32(vmul_n_f32(*v33.i8, v30.f32[0]))), *v27.f32, *v33.i8), vdup_lane_s32(*v32.i8, 0));
  }

  return result;
}

uint64_t sub_239F53DA4(float32x4_t *a1, float *a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a1[7];
  v5 = vmulq_f32(v4, a4);
  v6 = vaddv_f32(*v5.f32) + v5.f32[2];
  if (v6 > -0.00024414)
  {
    return 0;
  }

  v8 = vsubq_f32(a3, a1[1]);
  v9 = vmulq_f32(v8, v4);
  v10 = vaddv_f32(*v9.f32) + v9.f32[2];
  if (v10 < 0.00024414)
  {
    return 0;
  }

  v11 = -v10 / v6;
  if (v11 >= *a2)
  {
    return 0;
  }

  result = 0;
  v13.i32[0] = a1[10].i32[2];
  v13.i32[1] = a1[10].i32[0];
  v14 = vmlaq_n_f32(v8, a4, v11);
  v15 = vmulq_f32(a1[8], v14);
  v16 = vmulq_f32(a1[9], v14);
  *v16.i8 = vadd_f32(vadd_f32(vzip1_s32(*v15.i8, *v16.i8), vzip2_s32(*v15.i8, *v16.i8)), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  v17 = vmla_n_f32(vneg_f32(vrev64_s32(vmul_f32(*v16.i8, v13))), *v16.i8, a1[10].f32[1]);
  if (v17.f32[1] >= 0.0)
  {
    v18 = vaddv_f32(v17);
    if (v17.f32[0] >= 0.0 && v18 <= 1.0)
    {
      *a2 = v11;
      return 1;
    }
  }

  return result;
}

void sub_239F54044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MDLScene;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_239F5425C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  __asm { FMOV            V0.2S, #1.0 }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    result = 0;
  }

  else
  {
    do
    {
      sub_239E879CC(*v6++);
    }

    while (v6 != v7);
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239F54634(_Unwind_Exception *a1)
{
  MEMORY[0x23EE802C0](v3, 0x10A1C4029A5C24FLL);
  std::mutex::unlock(v2);

  _Unwind_Resume(a1);
}

id sub_239F5469C(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_239E797B4();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_239E9E10C(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_239F550D0(a1, v13);
    v7 = a1[1];
    result = sub_239F55180(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_239F5477C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F55180(va);
  _Unwind_Resume(a1);
}

void sub_239F54B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  MEMORY[0x23EE802C0](v12, 0x10A1C40A30AD078);
  __cxa_guard_abort(&qword_27DF912B8);

  _Unwind_Resume(a1);
}

void sub_239F54C00(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v51 = *(a1 + 168);
  v3 = HIDWORD(*(a1 + 168)) * a2;
  v4 = v3 >> 5;
  v5 = (v3 + HIDWORD(*(a1 + 168))) >> 5;
  v6 = *(a1 + 176);
  context = objc_autoreleasePoolPush();
  if (v4 < v5)
  {
    v7 = 0;
    v8 = v6 + 4 * v51 * v4;
    v9 = *(a1 + 172);
    v10 = *(a1 + 168);
    v11 = 0uLL;
    v46 = vdupq_n_s32(0x437F0000u);
    do
    {
      v12 = v10.i32[0];
      if (v10.i32[0] >= 1)
      {
        v13 = 0;
        *v10.i32 = v4 / (v9 - 1);
        v14 = vmlaq_n_f32(*(a1 + 32), vsubq_f32(*(a1 + 48), *(a1 + 32)), *v10.i32);
        v47 = vsubq_f32(vmlaq_f32(*(a1 + 64), vsubq_f32(*(a1 + 80), *(a1 + 64)), vdupq_lane_s32(v10, 0)), v14);
        v48 = v14;
        do
        {
          v15 = vmlaq_n_f32(v48, v47, v13 / (v12 - 1));
          v16 = vmulq_f32(v15, v15);
          *&v17 = vaddv_f32(*v16.f32) + v16.f32[2];
          *v16.f32 = vrsqrte_f32(v17);
          v64 = v11;
          v66 = *(&v11 + 1);
          v62 = *(&v11 + 1);
          v63 = v11;
          v18 = vmulq_n_f32(v15, vmul_f32(vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)), *v16.f32).f32[0]);
          v57[6] = v11;
          v65 = 0;
          v58 = v11;
          v59 = v11;
          v60 = v11;
          v61 = 0;
          v19 = *(a1 + 96);
          v52 = v18;
          sub_239F5425C(*(a1 + 128));
          if (v61)
          {
            v22 = qword_27DF912B0;
            v23 = *(a1 + 112);
            v57[2] = vnegq_f32(v52);
            v57[3] = v23;
            v57[4] = v59;
            v57[5] = v60;
            v57[0] = v63;
            v57[1] = v58;
            memset(v56, 0, sizeof(v56));
            v24 = objc_msgSend_textureData(*(a1 + 136), v20, v21);
            v27 = objc_msgSend_textureData(*(a1 + 144), v25, v26);
            (*(*v22 + 24))(v22, v57, v24, v27, v56);
            *v28.i64 = (*(*v22 + 16))(v22, v57, v56);
            v49 = v28;
            v29 = powf(v28.f32[0], 2.2);
            v30 = v49;
            v30.f32[0] = v29;
            v53 = v30;
            v31 = powf(v49.f32[1], 2.2);
            v32 = v53;
            v32.f32[1] = v31;
            v54 = v32;
            v33 = v49.f32[2];
            v34 = 2.2;
          }

          else
          {
            v35 = objc_msgSend_textureData(*(a1 + 136), v20, v21);
            *v36.i64 = sub_239F6EA14(v35, v52);
            v50 = v36;
            v37 = powf(v36.f32[0], 0.625);
            v38 = v50;
            v38.f32[0] = v37;
            v55 = v38;
            v39 = powf(v50.f32[1], 0.625);
            v40 = v55;
            v40.f32[1] = v39;
            v54 = v40;
            v33 = v50.f32[2];
            v34 = 0.625;
          }

          v41 = powf(v33, v34);
          v42 = v54;
          v42.f32[2] = v41;
          v11 = 0uLL;
          v43 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmulq_f32(v42, v46), 0), v46)));
          *(v8 + 4 * (v13 + v7 * *(a1 + 168))) = vuzp1_s8(v43, v43).u32[0];
          v10 = *(a1 + 168);
          v12 = v10.i32[0];
          ++v13;
        }

        while (v13 < v10.i32[0]);
      }

      v9 = v10.i32[1];
      LODWORD(v4) = v4 + 1;
      ++v7;
    }

    while (v4 != v5);
  }

  objc_autoreleasePoolPop(context);
  dispatch_group_async(*(a1 + 152), *(a1 + 160), &unk_284D15268);
  v44 = *MEMORY[0x277D85DE8];
}

void sub_239F54FEC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_239F5506C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239F550D0(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_239F55180(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F551D4(uint64_t a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a3)
{
  v3 = a3;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_239E5A31C(&v65, *a3);
  v6 = MEMORY[0x23EE7ED20](&v64, "constant");
  v7 = (a1 + 80);
  v8 = v64 ^ *(a1 + 80);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 <= 7)
  {
    if (*v3)
    {
      v9 = 0;
      do
      {
        sub_239E56C3C(&v65);
        *(v67 + 4 * v9++) = 0;
      }

      while (*v3 > v9);
    }

    goto LABEL_33;
  }

  v10 = MEMORY[0x23EE7ED20](v6, "vertex");
  v11 = v64 ^ *v7;
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v11 <= 7)
  {
    if (*(a1 + 16))
    {
      if (*v3)
      {
        v12 = 0;
        do
        {
          sub_239E56C3C(v3);
          v13 = *(*(v3 + 4) + 4 * v12);
          sub_239E56C3C((a1 + 16));
          LODWORD(v13) = *(*(a1 + 48) + 4 * v13);
          sub_239E56C3C(&v65);
          *(v67 + 4 * v12++) = v13;
        }

        while (*v3 > v12);
      }

      goto LABEL_33;
    }

LABEL_32:
    sub_239EB3650(&v65, v3);
    goto LABEL_33;
  }

  v14 = MEMORY[0x23EE7ED20](v10, "uniform");
  v15 = v64 ^ *v7;
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15 > 7)
  {
    MEMORY[0x23EE7ED20](v14, "faceVarying");
    v21 = v64 ^ *v7;
    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v21 <= 7)
    {
      if (*(a1 + 16))
      {
        v3 = (a1 + 16);
        goto LABEL_32;
      }

      if (*v3)
      {
        v36 = 0;
        do
        {
          sub_239E56C3C(&v65);
          *(v67 + 4 * v36) = v36;
          ++v36;
        }

        while (*v3 > v36);
      }
    }
  }

  else
  {
    v16 = *a2;
    if (*(a1 + 16))
    {
      if (v16)
      {
        v17 = 0;
        LODWORD(i) = 0;
        do
        {
          v19 = 0;
          for (i = i; ; ++i)
          {
            sub_239E56C3C(a2);
            if (v19 >= *(*(a2 + 4) + 4 * v17))
            {
              break;
            }

            sub_239E56C3C((a1 + 16));
            v20 = *(*(a1 + 48) + 4 * v17);
            sub_239E56C3C(&v65);
            *(v67 + 4 * i) = v20;
            ++v19;
          }

          ++v17;
        }

        while (*a2 > v17);
      }
    }

    else if (v16)
    {
      v31 = 0;
      LODWORD(j) = 0;
      do
      {
        v33 = 0;
        for (j = j; ; ++j)
        {
          sub_239E56C3C(a2);
          if (v33 >= *(*(a2 + 4) + 4 * v31))
          {
            break;
          }

          sub_239E56C3C(&v65);
          *(v67 + 4 * j) = v31;
          ++v33;
        }

        ++v31;
      }

      while (*a2 > v31);
    }
  }

LABEL_33:
  v22 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_39;
  }

  if (!atomic_load(v22))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_39:
    v61 = v65;
    v62 = v66;
    v63 = v67;
    if (v67)
    {
      v25 = (v67 - 16);
      if (*(&v62 + 1))
      {
        v25 = *(&v62 + 1);
      }

      atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
    }

    sub_239F559A0(&v61, *(a1 + 88), a1);
    sub_239E56C80(&v61);
  }

  else
  {
    if (!atomic_load(v22))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_57;
    }

    if (!atomic_load(v22))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_57:
      v58 = v65;
      v59 = v66;
      v60 = v67;
      if (v67)
      {
        v28 = (v67 - 16);
        if (*(&v59 + 1))
        {
          v28 = *(&v59 + 1);
        }

        atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
      }

      sub_239F55B14(&v58, *(a1 + 88), a1);
      sub_239E56C80(&v58);
    }

    else
    {
      if (!atomic_load(v22))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v55 = v65;
        v56 = v66;
        v57 = v67;
        if (v67)
        {
          v30 = (v67 - 16);
          if (*(&v56 + 1))
          {
            v30 = *(&v56 + 1);
          }

          atomic_fetch_add_explicit(v30, 1uLL, memory_order_relaxed);
        }

        sub_239F55CA4(&v55, *(a1 + 88), a1);
        sub_239E56C80(&v55);
      }

      else
      {
        if (!atomic_load(v22))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v52 = v65;
          v53 = v66;
          v54 = v67;
          if (v67)
          {
            v35 = (v67 - 16);
            if (*(&v53 + 1))
            {
              v35 = *(&v53 + 1);
            }

            atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
          }

          sub_239F55E10(&v52, *(a1 + 88), a1);
          sub_239E56C80(&v52);
        }

        else
        {
          if (!atomic_load(v22))
          {
            sub_239EB5678(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v49 = v65;
            v50 = v66;
            v51 = v67;
            if (v67)
            {
              v38 = (v67 - 16);
              if (*(&v50 + 1))
              {
                v38 = *(&v50 + 1);
              }

              atomic_fetch_add_explicit(v38, 1uLL, memory_order_relaxed);
            }

            sub_239F55F88(&v49, *(a1 + 88), a1);
            sub_239E56C80(&v49);
          }

          else
          {
            if (!atomic_load(v22))
            {
              sub_239EB5678(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v46 = v65;
              v47 = v66;
              v48 = v67;
              if (v67)
              {
                v40 = (v67 - 16);
                if (*(&v47 + 1))
                {
                  v40 = *(&v47 + 1);
                }

                atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
              }

              sub_239F560FC(&v46, *(a1 + 88), a1);
              sub_239E56C80(&v46);
            }

            else
            {
              if (!atomic_load(v22))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v43 = v65;
                v44 = v66;
                v45 = v67;
                if (v67)
                {
                  v42 = (v67 - 16);
                  if (*(&v44 + 1))
                  {
                    v42 = *(&v44 + 1);
                  }

                  atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
                }

                sub_239F56268(&v43, *(a1 + 88), a1);
                sub_239E56C80(&v43);
              }
            }
          }
        }
      }
    }
  }

  MEMORY[0x23EE7ED20](&v64, "vertex");
  if (&v64 == v7)
  {
    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v7 = v64;
  }

  sub_239E5B364((a1 + 16));
  sub_239E56C80(&v65);
}

void sub_239F558B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239E56C80(&a9);
  sub_239E56C80(v9 - 128);
  _Unwind_Resume(a1);
}

void sub_239F559A0(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_239E6D6B0(v20, (*a1 * a2));
  v6 = sub_239E6DAB4(a3);
  v7 = *(v6 + 16);
  v17 = *v6;
  v18 = v7;
  v8 = *(v6 + 32);
  v19 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v18 + 1))
    {
      v9 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 8 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(*(a1 + 4) + 4 * v11);
            sub_239E6DBE4(&v17);
            v16 = v19;
            sub_239E6DBE4(v20);
            *(v21 + v14) = *(v16 + 8 * v15 * a2 + 8 * v13++);
            v14 += 8;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239E6DC28(a3, v20);
  sub_239E56C80(&v17);
  sub_239E56C80(v20);
}

void sub_239F55AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void sub_239F55B14(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_239E6D0E8(v25, (*a1 * a2));
  v6 = sub_239E6AD14(a3);
  v21 = a3;
  v7 = *(v6 + 16);
  v22 = *v6;
  v23 = v7;
  v8 = *(v6 + 32);
  v24 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v23 + 1))
    {
      v9 = *(&v23 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 12 * v12;
          v15 = a2;
          do
          {
            sub_239E56C3C(a1);
            v16 = *(*(a1 + 4) + 4 * v11);
            sub_239E56B84(&v22);
            v17 = v24;
            sub_239E56B84(v25);
            v18 = (v17 + 12 * v16 * a2 + v13);
            v19 = v26 + v14;
            v20 = *v18;
            *(v19 + 8) = *(v18 + 2);
            *v19 = v20;
            v14 += 12;
            ++v12;
            v13 += 12;
            --v15;
          }

          while (v15);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239E6D3C8(v21, v25);
  sub_239E56C80(&v22);
  sub_239E56C80(v25);
}

void sub_239F55C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F55CA4(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_239E5A31C(v19, (*a1 * a2));
  v6 = sub_239F57BA0(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 4 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(*(a1 + 4) + 4 * v11);
            sub_239E56C3C(&v16);
            LODWORD(v15) = *(v18 + 4 * v15 * a2 + 4 * v13);
            sub_239E56C3C(v19);
            *(v20 + v14) = v15;
            ++v13;
            v14 += 4;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239F57C34(a3, v19);
  sub_239E56C80(&v16);
  sub_239E56C80(v19);
}

void sub_239F55DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void sub_239F55E10(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_239E85F74(v21, (*a1 * a2));
  v6 = sub_239E85EB8(a3);
  v7 = *(v6 + 16);
  v18 = *v6;
  v19 = v7;
  v8 = *(v6 + 32);
  v20 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v19 + 1))
    {
      v9 = *(&v19 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 16 * v12;
          v15 = a2;
          do
          {
            sub_239E56C3C(a1);
            v16 = *(*(a1 + 4) + 4 * v11);
            sub_239E86480(&v18);
            v17 = v20;
            sub_239E86480(v21);
            *(v22 + v14) = *(v17 + 16 * v16 * a2 + v13);
            v14 += 16;
            ++v12;
            v13 += 16;
            --v15;
          }

          while (v15);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239EC6F88(a3, v21);
  sub_239E56C80(&v18);
  sub_239E56C80(v21);
}

void sub_239F55F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void sub_239F55F88(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_239EC7200(v20, (*a1 * a2));
  v6 = sub_239EC4DC4(a3);
  v7 = *(v6 + 16);
  v17 = *v6;
  v18 = v7;
  v8 = *(v6 + 32);
  v19 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v18 + 1))
    {
      v9 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 4 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(*(a1 + 4) + 4 * v11);
            sub_239EBF2E0(&v17);
            v16 = *(v19 + 4 * v15 * a2 + 4 * v13);
            sub_239EBF2E0(v20);
            *(v21 + v14) = v16;
            ++v13;
            v14 += 4;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239EC7274(a3, v20);
  sub_239E56C80(&v17);
  sub_239E56C80(v20);
}

void sub_239F560CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void sub_239F560FC(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_239F57EF0(v19, (*a1 * a2));
  v6 = sub_239EC4E58(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 4 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(*(a1 + 4) + 4 * v11);
            sub_239EC85E4(&v16);
            LODWORD(v15) = *(v18 + 4 * v15 * a2 + 4 * v13);
            sub_239EC85E4(v19);
            *(v20 + v14) = v15;
            ++v13;
            v14 += 4;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239F57F64(a3, v19);
  sub_239E56C80(&v16);
  sub_239E56C80(v19);
}

void sub_239F56238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void sub_239F56268(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_239EC7040(v19, (*a1 * a2));
  v6 = sub_239EC70B4(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2)
        {
          v13 = 0;
          v14 = 2 * v12;
          do
          {
            sub_239E56C3C(a1);
            v15 = *(*(a1 + 4) + 4 * v11);
            sub_239EC9804(&v16);
            LOWORD(v15) = *(v18 + 2 * v15 * a2 + 2 * v13);
            sub_239EC9804(v19);
            *(v20 + v14) = v15;
            ++v13;
            v14 += 2;
            ++v12;
          }

          while (a2 != v13);
          v10 = *a1;
        }

        ++v11;
      }

      while (v10 > v11);
    }
  }

  sub_239EC7148(a3, v19);
  sub_239E56C80(&v16);
  sub_239E56C80(v19);
}

void sub_239F563A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void sub_239F563D4(int *a1, unsigned int a2)
{
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v3 = sub_239E5A31C(&v44, a2);
  sub_239E56C3C(v3);
  v4 = v46;
  sub_239E56C3C(&v44);
  v5 = &v46[4 * v44] - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_9;
  }

  if (!atomic_load(v6))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_9:
    v41 = v44;
    v42 = v45;
    v43 = v46;
    if (v46)
    {
      v9 = (v46 - 16);
      if (*(&v42 + 1))
      {
        v9 = *(&v42 + 1);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    sub_239F559A0(&v41, a1[22], a1);
    sub_239E56C80(&v41);
  }

  else
  {
    if (!atomic_load(v6))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_21;
    }

    if (!atomic_load(v6))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_21:
      v38 = v44;
      v39 = v45;
      v40 = v46;
      if (v46)
      {
        v12 = (v46 - 16);
        if (*(&v39 + 1))
        {
          v12 = *(&v39 + 1);
        }

        atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
      }

      sub_239F55B14(&v38, a1[22], a1);
      sub_239E56C80(&v38);
    }

    else
    {
      if (!atomic_load(v6))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v35 = v44;
        v36 = v45;
        v37 = v46;
        if (v46)
        {
          v14 = (v46 - 16);
          if (*(&v36 + 1))
          {
            v14 = *(&v36 + 1);
          }

          atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
        }

        sub_239F55CA4(&v35, a1[22], a1);
        sub_239E56C80(&v35);
      }

      else
      {
        if (!atomic_load(v6))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v32 = v44;
          v33 = v45;
          v34 = v46;
          if (v46)
          {
            v16 = (v46 - 16);
            if (*(&v33 + 1))
            {
              v16 = *(&v33 + 1);
            }

            atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
          }

          sub_239F55E10(&v32, a1[22], a1);
          sub_239E56C80(&v32);
        }

        else
        {
          if (!atomic_load(v6))
          {
            sub_239EB5678(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v29 = v44;
            v30 = v45;
            v31 = v46;
            if (v46)
            {
              v18 = (v46 - 16);
              if (*(&v30 + 1))
              {
                v18 = *(&v30 + 1);
              }

              atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
            }

            sub_239F55F88(&v29, a1[22], a1);
            sub_239E56C80(&v29);
          }

          else
          {
            if (!atomic_load(v6))
            {
              sub_239EB5678(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v26 = v44;
              v27 = v45;
              v28 = v46;
              if (v46)
              {
                v20 = (v46 - 16);
                if (*(&v27 + 1))
                {
                  v20 = *(&v27 + 1);
                }

                atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
              }

              sub_239F560FC(&v26, a1[22], a1);
              sub_239E56C80(&v26);
            }

            else
            {
              if (!atomic_load(v6))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v23 = v44;
                v24 = v45;
                v25 = v46;
                if (v46)
                {
                  v22 = (v46 - 16);
                  if (*(&v24 + 1))
                  {
                    v22 = *(&v24 + 1);
                  }

                  atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
                }

                sub_239F56268(&v23, a1[22], a1);
                sub_239E56C80(&v23);
              }
            }
          }
        }
      }
    }
  }

  sub_239E56C80(&v44);
}

void sub_239F567E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239E56C80(&a9);
  sub_239E56C80(v9 - 80);
  _Unwind_Resume(a1);
}

void sub_239F568A0(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239E5A31C(v42, (a4 * a8));
  v37 = a7;
  v14 = sub_239F57BA0(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239F57C34(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = *(*(v38 + 4) + 4 * v27 * v18 + 4 * v36) * a8;
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239E56C3C(&v39);
        v33 = *(v41 + 4 * v30);
        sub_239E56C3C(v42);
        *(v43 + 4 * v31) = v33;
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239F57C34(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(*(a1 + 4) + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(*(a1 + 4) + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = v21 * a8;
  v23 = a8;
  v24 = v20 * a8;
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239E56C3C(&v39);
    v26 = *(v41 + 4 * v22);
    sub_239E56C3C(v42);
    *(v43 + 4 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239F56B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F56B98(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  sub_239E85F74(v47, (a4 * a8));
  v40 = a7;
  v13 = sub_239E85EB8(a7);
  v14 = *(v13 + 16);
  v44 = *v13;
  v45 = v14;
  v15 = *(v13 + 32);
  v46 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v45 + 1))
    {
      v16 = *(&v45 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (!v44)
  {
    sub_239EC6F88(a7, v47);
    goto LABEL_10;
  }

  v39 = a5;
  v41 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v17 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      v29 = 16 * v28;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v41;
        v28 += a8;
        v29 += 16 * a8;
        if (*v41 / v17 <= v27)
        {
          goto LABEL_8;
        }
      }

      v30 = *(*(v41 + 4) + 4 * v27 * v17 + 4 * v39) * a8;
      v31 = 16 * v30;
      v32 = a8;
      v33 = v29;
      v34 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v47[0].n128_u64[0] <= v34 || v44 <= v30)
        {
          break;
        }

        sub_239E86480(&v44);
        v36 = v46;
        sub_239E86480(v47);
        *(v48 + v33) = *(v36 + v31);
        ++v30;
        v31 += 16;
        ++v34;
        v33 += 16;
        if (!--v32)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239EC6F88(v40, v47);
    }

    goto LABEL_10;
  }

  v18 = 0;
  v42 = 0;
  v37 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(*(a1 + 4) + 4 * v18 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v18)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v19 = *(*(a1 + 4) + 4 * v18 * a6 + 4 * v37 - 4);
  }

  else
  {
    v19 = v18;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v42;
    a5 = v39;
    a2 = v41;
    goto LABEL_27;
  }

  v20 = v19 * a8;
  v21 = 16 * v20;
  v22 = 16 * v42 * a8;
  v23 = a8;
  v24 = v42 * a8;
  while (((v42 * a8) & 0x80000000) == 0 && (v20 & 0x8000000000000000) == 0)
  {
    if (v47[0].n128_u64[0] <= v24 || v44 <= v20)
    {
      break;
    }

    sub_239E86480(&v44);
    v26 = v46;
    sub_239E86480(v47);
    *(v48 + v22) = *(v26 + v21);
    ++v20;
    v21 += 16;
    ++v24;
    v22 += 16;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v44);
  sub_239E56C80(v47);
}

void sub_239F56EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F56EEC(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_239EC7200(v41, (a4 * a8));
  v37 = a7;
  v14 = sub_239EC4DC4(a7);
  v15 = *(v14 + 16);
  v38 = *v14;
  v39 = v15;
  v16 = *(v14 + 32);
  v40 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v39 + 1))
    {
      v17 = *(&v39 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v38)
  {
    sub_239EC7274(a7, v41);
    goto LABEL_10;
  }

  v36 = a5;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        v28 += a8;
        if (*a2 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = *(*(a2 + 4) + 4 * v27 * v18 + 4 * v36) * a8;
      v30 = a8;
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v29 & 0x8000000000000000) == 0)
      {
        if (v41[0].n128_u64[0] <= v31 || v38 <= v29)
        {
          break;
        }

        sub_239EBF2E0(&v38);
        v33 = *(v40 + 4 * v29);
        sub_239EBF2E0(v41);
        *(v42 + 4 * v31) = v33;
        ++v29;
        ++v31;
        if (!--v30)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239EC7274(v37, v41);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(*(a1 + 4) + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(*(a1 + 4) + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    goto LABEL_27;
  }

  v22 = v21 * a8;
  v23 = a8;
  v24 = v20 * a8;
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v41[0].n128_u64[0] <= v24 || v38 <= v22)
    {
      break;
    }

    sub_239EBF2E0(&v38);
    v26 = *(v40 + 4 * v22);
    sub_239EBF2E0(v41);
    *(v42 + 4 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v38);
  sub_239E56C80(v41);
}

void sub_239F57190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F571DC(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239F57EF0(v42, (a4 * a8));
  v37 = a7;
  v14 = sub_239EC4E58(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239F57F64(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = *(*(v38 + 4) + 4 * v27 * v18 + 4 * v36) * a8;
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239EC85E4(&v39);
        v33 = *(v41 + 4 * v30);
        sub_239EC85E4(v42);
        *(v43 + 4 * v31) = v33;
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239F57F64(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(*(a1 + 4) + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(*(a1 + 4) + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = v21 * a8;
  v23 = a8;
  v24 = v20 * a8;
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239EC85E4(&v39);
    v26 = *(v41 + 4 * v22);
    sub_239EC85E4(v42);
    *(v43 + 4 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239F57488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F574D4(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239EC7040(v42, (a4 * a8));
  v37 = a7;
  v14 = sub_239EC70B4(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239EC7148(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = *(*(v38 + 4) + 4 * v27 * v18 + 4 * v36) * a8;
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239EC9804(&v39);
        v33 = *(v41 + 2 * v30);
        sub_239EC9804(v42);
        *(v43 + 2 * v31) = v33;
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239EC7148(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(*(a1 + 4) + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(*(a1 + 4) + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = v21 * a8;
  v23 = a8;
  v24 = v20 * a8;
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239EC9804(&v39);
    v26 = *(v41 + 2 * v22);
    sub_239EC9804(v42);
    *(v43 + 2 * v24) = v26;
    ++v22;
    ++v24;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239F57780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void sub_239F577CC(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_239E5B3EC(v2, a1);
  *(a1 + 8) = &off_284D15DF8;
  sub_239EB5D90();
}

void sub_239F57864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F578A0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F578C0(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F57A6C(result);
}

unint64_t sub_239F578D8(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = ((*a1)[4] + 4);
    v3 = **a1;
    do
    {
      v4 = bswap64(0x9E3779B97F4A7C55 * (*v2 + ((*(v2 - 1) + *v2 + (*(v2 - 1) + *v2) * (*(v2 - 1) + *v2)) >> 1)));
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 2;
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_239F57960(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F57A54(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15DF8;
  sub_239EB5D90();
}

uint64_t *sub_239F57A6C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F57AE4(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t sub_239F57B88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206CC8](a2, v3);
}

uint64_t sub_239F57BA0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F57CEC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F57D24, &stru_284D17A80);
  }
}

__n128 sub_239F57C34(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_239F57CEC(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_239F57DE0(a1);
  }

  v4 = sub_239F57EB4(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239F57CEC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 52)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F57D84(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239F57DE0(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_239E5B3EC(v2, a1);
  *(a1 + 8) = &off_284D15838;
  sub_239EC8A68();
}

void sub_239F57E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F57EB4(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_239F755B8(v2);
  }

  return sub_239EC8984(a1);
}

uint64_t sub_239F57EF0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239F5801C(a1, a2, &v6);
  return a1;
}

__n128 sub_239F57F64(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_239F58388(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_239EEE9B4(a1);
  }

  v4 = sub_239F583C0(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

void sub_239F5801C(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239EC8628(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD40)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD30)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_239EC8628(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD40)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_239F9AD30)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = sub_239EC8628(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD40)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_239F9AD30)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239F58388(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A68);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F583C0(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_239F75624(v2);
  }

  return sub_239EF3E70(a1);
}

uint64_t sub_239F583FC(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 2;
  if (a2 == 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (v3 <= v2)
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = v3;
    }

    while (v5 != v3)
    {
      v6 = a1 + v3;
      v7 = *(a1 + v3++);
      if (v7 != *(v6 + 1))
      {
        v5 = v3 - 1;
        break;
      }
    }

    if (v5 < a2 - 3 && *(a1 + 2 + v5) == *(a1 + v5 + 3))
    {
      v5 += 3;
    }

    ++v4;
    v3 = v5 + 1;
  }

  while (v5 + 1 < v2);
  return v4;
}

uint64_t sub_239F5847C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 2;
  if (a2 == 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (v3 <= v2)
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5 - v3;
    v7 = v3 - 1;
    v8 = (a1 + 2 + 2 * v3);
    while (v6)
    {
      v9 = *(v8 - 1);
      v10 = *v8++;
      --v6;
      ++v7;
      if (v9 != v10)
      {
        goto LABEL_11;
      }
    }

    v7 = v5;
LABEL_11:
    if (v7 < a2 - 3 && *(a1 + 4 + 2 * v7) == *(a1 + 2 * (v7 + 3)))
    {
      v7 += 3;
    }

    ++v4;
    v3 = v7 + 1;
  }

  while (v7 + 1 < v2);
  return v4;
}

uint64_t sub_239F5850C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - 2;
  if (a2 == 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 - 3;
  do
  {
    if (v3 <= v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6 - v3;
    v8 = v3 - 1;
    v9 = (a1 + 4 + 4 * v3);
    while (v7)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      --v7;
      ++v8;
      ++v9;
      if (v11 != v10)
      {
        goto LABEL_11;
      }
    }

    v8 = v6;
LABEL_11:
    if (v8 < v5 && *(a1 + 8 + 4 * v8) == *(a1 + 4 * (v8 + 3)))
    {
      v8 += 3;
    }

    ++v4;
    v3 = v8 + 1;
  }

  while (v8 + 1 < v2);
  return v4;
}

void sub_239F585A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a6 & 0xFFFFFFFFFFFFFFF8;
  if ((a6 & 0xFFFFFFFFFFFFFFF8) == 8 && a7 == a8)
  {
    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    if (a3 <= v21)
    {
      if (a3 < v21)
      {
        *(a1 + 8) = &v20[a3];
      }
    }

    else
    {
      sub_239E7967C(a1, a3 - v21);
      v20 = *a1;
    }

    memcpy(v20, v9, v8);
  }

  else
  {
    if (!a6)
    {
      NSLog(&cfstr_CouldnTCopyInd_0.isa);
      return;
    }

    v16 = __ROR8__(a6, 3);
    if (v16 == 2)
    {
      if (a3)
      {
        v22 = a2;
        v23 = a3;
        do
        {
          v24 = *v22++;
          if (v24 >= 0x100)
          {
            goto LABEL_34;
          }
        }

        while (--v23);
      }
    }

    else if (v16 == 4 && a3)
    {
      v17 = a2;
      v18 = a3;
      while (1)
      {
        v19 = *v17++;
        if (v19 >= 0x100)
        {
          break;
        }

        if (!--v18)
        {
          goto LABEL_24;
        }
      }

LABEL_34:
      NSLog(&cfstr_CouldnTCopyInd.isa);
      return;
    }

LABEL_24:
    if (a7 == a8)
    {
      v25 = *(a1 + 8) - *a1;
      if (a3 <= v25)
      {
        if (a3 < v25)
        {
          *(a1 + 8) = *a1 + a3;
        }
      }

      else
      {
        sub_239E7967C(a1, a3 - v25);
      }

      if (a6 == 32)
      {
        if (v8)
        {
          v49 = *a1;
          do
          {
            v50 = *v9;
            v9 += 4;
            *v49++ = v50;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 16)
      {
        if (v8)
        {
          v47 = *a1;
          do
          {
            v48 = *v9;
            v9 += 2;
            *v47++ = v48;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 8 && v8)
      {
        v29 = *a1;
        do
        {
          v30 = *v9++;
          *v29++ = v30;
          --v8;
        }

        while (v8);
      }

      return;
    }

    if (a7 == 3 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v26 = sub_239F5850C(a2, a3);
          v27 = sub_239F5A06C(v9, v8, v26);
          break;
        case 16:
          v26 = sub_239F5847C(a2, a3);
          v27 = sub_239F59F20(v9, v8, v26);
          break;
        case 8:
          v26 = sub_239F583FC(a2, a3);
          v27 = sub_239F59DD8(v9, v8, v26);
          break;
        default:
          goto LABEL_109;
      }

      v78 = v27;
      if (v27)
      {
        v51 = *a1;
        v52 = *(a1 + 8) - *a1;
        if (v26 <= v52)
        {
          if (v26 < v52)
          {
            *(a1 + 8) = &v51[v26];
          }
        }

        else
        {
          sub_239E7967C(a1, v26 - v52);
          v51 = *a1;
        }

        v53 = v78;
        v56 = objc_msgSend_bytes(v53, v54, v55);
        v57 = v51;
        v58 = v26;
        goto LABEL_113;
      }

LABEL_109:
      NSLog(&cfstr_CouldnTCreateB.isa);
      return;
    }

    if (a7 == 4 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v28 = sub_239F5A398(a2, a3);
          break;
        case 16:
          v28 = sub_239F5A2AC(a2, a3);
          break;
        case 8:
          v28 = sub_239F5A1C4(a2, a3);
          break;
        default:
          goto LABEL_138;
      }

      v78 = v28;
      if (!v28)
      {
        goto LABEL_115;
      }

      v59 = 3 * (v8 >> 1);
      sub_239F59DB0(a1, v59);
      if (v11 == 8)
      {
        v60 = *a1;
        v61 = v78;
        v56 = objc_msgSend_bytes(v61, v62, v63);
        v57 = v60;
        v58 = 3 * (v8 >> 1);
LABEL_113:
        memcpy(v57, v56, v58);
LABEL_114:
        v28 = v78;
LABEL_115:

        return;
      }

      if (a6 == 32)
      {
        v70 = v78;
        v73 = objc_msgSend_bytes(v70, v71, v72);
        if (v8 >= 2)
        {
          v74 = 0;
          if (v59 <= 1)
          {
            v75 = 1;
          }

          else
          {
            v75 = 3 * (v8 >> 1);
          }

          do
          {
            *(*a1 + v74) = *(v73 + 4 * v74);
            ++v74;
          }

          while (v75 != v74);
        }

        goto LABEL_114;
      }

      if (a6 == 16)
      {
        v64 = v78;
        v67 = objc_msgSend_bytes(v64, v65, v66);
        if (v8 >= 2)
        {
          v68 = 0;
          if (v59 <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = 3 * (v8 >> 1);
          }

          do
          {
            *(*a1 + v68) = *(v67 + 2 * v68);
            ++v68;
          }

          while (v69 != v68);
        }

        goto LABEL_114;
      }

LABEL_138:
      v28 = 0;
      goto LABEL_115;
    }

    if (a7 != 5 || a8 != 2)
    {
      NSLog(&cfstr_CouldnTCopyInd_1.isa);
      return;
    }

    if (a5)
    {
      v31 = 0;
      v32 = 0;
      v76 = a2 + 2;
      v77 = (a2 + 4);
      while (1)
      {
        LODWORD(v33) = *(a4 + v31);
        if (v33 == 3)
        {
          break;
        }

        if (v33 == 2)
        {
          if (a6 != 8)
          {
            if (a6 != 32)
            {
              if (a6 != 16)
              {
                goto LABEL_93;
              }

LABEL_84:
              v42 = &v9[2 * v32];
              v79 = *v42;
              sub_239EED6A4(a1, &v79);
              v79 = v42[2];
              sub_239EED6A4(a1, &v79);
              v79 = v42[2];
              sub_239EED6A4(a1, &v79);
            }

            v43 = &v9[4 * v32];
            v79 = *v43;
            sub_239EED6A4(a1, &v79);
            v79 = *(v43 + 1);
            sub_239EED6A4(a1, &v79);
            v44 = *(v43 + 1);
            goto LABEL_92;
          }

          sub_239EED6A4(a1, &v9[v32]);
          sub_239EED6A4(a1, &v9[v32 + 1]);
          sub_239EED6A4(a1, &v9[v32 + 1]);
          goto LABEL_84;
        }

        if (v33 == 1)
        {
          if (a6 == 8)
          {
            sub_239EED6A4(a1, &v9[v32]);
            sub_239EED6A4(a1, &v9[v32]);
            sub_239EED6A4(a1, &v9[v32]);
            goto LABEL_90;
          }

          if (a6 != 32)
          {
            if (a6 != 16)
            {
              goto LABEL_93;
            }

LABEL_90:
            v79 = *&v9[2 * v32];
            sub_239EED6A4(a1, &v79);
            v79 = *&v9[2 * v32];
            sub_239EED6A4(a1, &v79);
            v79 = *&v9[2 * v32];
            sub_239EED6A4(a1, &v79);
          }

          v79 = *&v9[4 * v32];
          sub_239EED6A4(a1, &v79);
          v79 = *&v9[4 * v32];
          sub_239EED6A4(a1, &v79);
          v44 = *&v9[4 * v32];
LABEL_92:
          v79 = v44;
          sub_239EED6A4(a1, &v79);
          goto LABEL_93;
        }

        if (a6 == 32)
        {
          goto LABEL_79;
        }

        if (a6 != 16)
        {
          if (a6 != 8 || v33 < 3)
          {
            goto LABEL_93;
          }

          v34 = 0;
          v35 = (v76 + v32);
          do
          {
            sub_239EED6A4(a1, &v9[v32]);
            sub_239EED6A4(a1, v35 - 1);
            sub_239EED6A4(a1, v35);
            ++v34;
            v33 = *(a4 + v31);
            ++v35;
          }

          while (v34 < v33 - 2);
        }

        if (v33 >= 3)
        {
          v36 = 0;
          v37 = &v77[2 * v32];
          do
          {
            v79 = v9[2 * v32];
            sub_239EED6A4(a1, &v79);
            v79 = *(v37 - 2);
            sub_239EED6A4(a1, &v79);
            v38 = *v37;
            v37 += 2;
            v79 = v38;
            sub_239EED6A4(a1, &v79);
            ++v36;
            v33 = *(a4 + v31);
          }

          while (v36 < v33 - 2);
LABEL_79:
          if (v33 >= 3)
          {
            v39 = 0;
            v40 = &v9[4 * v32 + 8];
            do
            {
              v79 = *&v9[4 * v32];
              sub_239EED6A4(a1, &v79);
              v79 = *(v40 - 1);
              sub_239EED6A4(a1, &v79);
              v41 = *v40;
              v40 += 4;
              v79 = v41;
              sub_239EED6A4(a1, &v79);
              ++v39;
            }

            while (v39 < *(a4 + v31) - 2);
          }
        }

LABEL_93:
        v32 += *(a4 + v31++);
        if (v31 == a5)
        {
          return;
        }
      }

      switch(a6)
      {
        case 8:
          sub_239EED6A4(a1, &v9[v32]);
          sub_239EED6A4(a1, &v9[v32 + 1]);
          sub_239EED6A4(a1, &v9[v32 + 2]);
          break;
        case 32:
LABEL_88:
          v46 = &v9[4 * v32];
          v79 = *v46;
          sub_239EED6A4(a1, &v79);
          v79 = *(v46 + 1);
          sub_239EED6A4(a1, &v79);
          v44 = *(v46 + 2);
          goto LABEL_92;
        case 16:
          break;
        default:
          goto LABEL_93;
      }

      v45 = &v9[2 * v32];
      v79 = *v45;
      sub_239EED6A4(a1, &v79);
      v79 = v45[2];
      sub_239EED6A4(a1, &v79);
      v79 = v45[4];
      sub_239EED6A4(a1, &v79);
      goto LABEL_88;
    }
  }
}

void sub_239F58DF8(const void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a6 & 0xFFFFFFFFFFFFFFF8;
  if ((a6 & 0xFFFFFFFFFFFFFFF8) == 0x10 && a7 == a8)
  {
    sub_239EB8C58(a1, a3);
    v21 = *a1;

    memcpy(v21, v9, 2 * v8);
    return;
  }

  if (!a6)
  {
    NSLog(&cfstr_CouldnTCopyInd_0.isa);
    return;
  }

  if (__ROR8__(a6, 3) != 4 || !a3)
  {
LABEL_11:
    if (a7 == a8)
    {
      sub_239EB8C58(a1, a3);
      if (a6 == 32)
      {
        if (v8)
        {
          v43 = *a1;
          do
          {
            v44 = *v9++;
            *v43++ = v44;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 16)
      {
        if (v8)
        {
          v25 = *a1;
          do
          {
            v26 = *v9;
            v9 = (v9 + 2);
            *v25++ = v26;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 8 && v8)
      {
        v19 = *a1;
        do
        {
          v20 = *v9;
          v9 = (v9 + 1);
          *v19++ = v20;
          --v8;
        }

        while (v8);
      }

      return;
    }

    if (a7 == 3 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v22 = sub_239F5850C(a2, a3);
          v23 = sub_239F5A06C(v9, v8, 2 * v22);
          break;
        case 16:
          v22 = sub_239F5847C(a2, a3);
          v23 = sub_239F59F20(v9, v8, 2 * v22);
          break;
        case 8:
          v22 = sub_239F583FC(a2, a3);
          v23 = sub_239F59DD8(v9, v8, 2 * v22);
          break;
        default:
          goto LABEL_99;
      }

      if (v23)
      {
        v79 = v23;
        sub_239EB8C58(a1, v22);
        v45 = *a1;
        v46 = v79;
        v49 = objc_msgSend_bytes(v46, v47, v48);
        v50 = 2 * v22;
        goto LABEL_94;
      }

LABEL_99:
      NSLog(&cfstr_CouldnTCreateB.isa);
      return;
    }

    if (a7 == 4 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v24 = sub_239F5A398(a2, a3);
          break;
        case 16:
          v24 = sub_239F5A2AC(a2, a3);
          break;
        case 8:
          v24 = sub_239F5A1C4(a2, a3);
          break;
        default:
          v24 = 0;
          goto LABEL_96;
      }

      v79 = v24;
      if (!v24)
      {
LABEL_96:

        return;
      }

      v51 = 3 * (v8 >> 1);
      sub_239EB8C58(a1, v51);
      if (v11 != 16)
      {
        if (a6 == 32)
        {
          v69 = v79;
          v72 = objc_msgSend_bytes(v69, v70, v71);
          if (v8 >= 2)
          {
            v73 = *a1;
            if (v51 <= 1)
            {
              v74 = 1;
            }

            else
            {
              v74 = 3 * (v8 >> 1);
            }

            do
            {
              v75 = *v72++;
              *v73++ = v75;
              --v74;
            }

            while (v74);
          }
        }

        else if (a6 == 16)
        {
          v62 = v79;
          v65 = objc_msgSend_bytes(v62, v63, v64);
          if (v8 >= 2)
          {
            v66 = *a1;
            if (v51 <= 1)
            {
              v67 = 1;
            }

            else
            {
              v67 = 3 * (v8 >> 1);
            }

            do
            {
              v68 = *v65++;
              *v66++ = v68;
              --v67;
            }

            while (v67);
          }
        }

        else
        {
          v55 = v79;
          v58 = objc_msgSend_bytes(v55, v56, v57);
          if (v8 >= 2)
          {
            v59 = *a1;
            if (v51 <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = 3 * (v8 >> 1);
            }

            do
            {
              v61 = *v58++;
              *v59++ = v61;
              --v60;
            }

            while (v60);
          }
        }

        goto LABEL_95;
      }

      v45 = *a1;
      v52 = v79;
      v49 = objc_msgSend_bytes(v52, v53, v54);
      v50 = 6 * (v8 >> 1);
LABEL_94:
      memcpy(v45, v49, v50);
LABEL_95:
      v24 = v79;
      goto LABEL_96;
    }

    if (a7 != 5 || a8 != 2)
    {
      NSLog(&cfstr_CouldnTCopyInd_1.isa);
      return;
    }

    if (!a5)
    {
      return;
    }

    v27 = 0;
    v28 = 0;
    v76 = a2 + 2;
    v77 = a2 + 4;
    v78 = (a2 + 8);
    while (1)
    {
      LODWORD(v29) = *(a4 + v27);
      if (v29 == 3)
      {
        break;
      }

      if (v29 == 2)
      {
        if (a6 != 8)
        {
          if (a6 != 32)
          {
            if (a6 != 16)
            {
              goto LABEL_82;
            }

LABEL_73:
            v38 = v9 + v28;
            sub_239EA1088(a1, v38);
            sub_239EA1088(a1, v38 + 1);
            sub_239EA1088(a1, v38 + 1);
          }

          v39 = &v9[v28];
          v80 = *v39;
          sub_239EA1088(a1, &v80);
          v80 = v39[1];
          sub_239EA1088(a1, &v80);
          v40 = v39[1];
          goto LABEL_81;
        }

        v80 = *(v9 + v28);
        sub_239EA1088(a1, &v80);
        v80 = *(v9 + v28 + 1);
        sub_239EA1088(a1, &v80);
        v80 = *(v9 + v28 + 1);
        sub_239EA1088(a1, &v80);
        goto LABEL_73;
      }

      if (v29 == 1)
      {
        if (a6 == 8)
        {
          v80 = *(v9 + v28);
          sub_239EA1088(a1, &v80);
          v80 = *(v9 + v28);
          sub_239EA1088(a1, &v80);
          v80 = *(v9 + v28);
          sub_239EA1088(a1, &v80);
          goto LABEL_79;
        }

        if (a6 != 32)
        {
          if (a6 != 16)
          {
            goto LABEL_82;
          }

LABEL_79:
          sub_239EA1088(a1, v9 + v28);
          sub_239EA1088(a1, v9 + v28);
          sub_239EA1088(a1, v9 + v28);
        }

        v80 = v9[v28];
        sub_239EA1088(a1, &v80);
        v80 = v9[v28];
        sub_239EA1088(a1, &v80);
        v40 = v9[v28];
LABEL_81:
        v80 = v40;
        sub_239EA1088(a1, &v80);
        goto LABEL_82;
      }

      if (a6 == 32)
      {
        goto LABEL_68;
      }

      if (a6 != 16)
      {
        if (a6 != 8 || v29 < 3)
        {
          goto LABEL_82;
        }

        v30 = 0;
        v31 = (v76 + v28);
        do
        {
          v80 = *(v9 + v28);
          sub_239EA1088(a1, &v80);
          v80 = *(v31 - 1);
          sub_239EA1088(a1, &v80);
          v32 = *v31++;
          v80 = v32;
          sub_239EA1088(a1, &v80);
          ++v30;
          v29 = *(a4 + v27);
        }

        while (v30 < v29 - 2);
      }

      if (v29 >= 3)
      {
        v33 = 0;
        v34 = (v77 + 2 * v28);
        do
        {
          sub_239EA1088(a1, v9 + v28);
          sub_239EA1088(a1, v34 - 1);
          sub_239EA1088(a1, v34);
          ++v33;
          v29 = *(a4 + v27);
          ++v34;
        }

        while (v33 < v29 - 2);
LABEL_68:
        if (v29 >= 3)
        {
          v35 = 0;
          v36 = &v78[4 * v28];
          do
          {
            v80 = v9[v28];
            sub_239EA1088(a1, &v80);
            v80 = *(v36 - 1);
            sub_239EA1088(a1, &v80);
            v37 = *v36;
            v36 += 4;
            v80 = v37;
            sub_239EA1088(a1, &v80);
            ++v35;
          }

          while (v35 < *(a4 + v27) - 2);
        }
      }

LABEL_82:
      v28 += *(a4 + v27++);
      if (v27 == a5)
      {
        return;
      }
    }

    switch(a6)
    {
      case 8:
        v80 = *(v9 + v28);
        sub_239EA1088(a1, &v80);
        v80 = *(v9 + v28 + 1);
        sub_239EA1088(a1, &v80);
        v80 = *(v9 + v28 + 2);
        sub_239EA1088(a1, &v80);
        break;
      case 32:
LABEL_77:
        v42 = &v9[v28];
        v80 = *v42;
        sub_239EA1088(a1, &v80);
        v80 = v42[1];
        sub_239EA1088(a1, &v80);
        v40 = v42[2];
        goto LABEL_81;
      case 16:
        break;
      default:
        goto LABEL_82;
    }

    v41 = v9 + v28;
    sub_239EA1088(a1, v41);
    sub_239EA1088(a1, v41 + 1);
    sub_239EA1088(a1, v41 + 2);
    goto LABEL_77;
  }

  v16 = a2;
  v17 = a3;
  while (1)
  {
    v18 = *v16++;
    if (v18 >= 0x10000)
    {
      break;
    }

    if (!--v17)
    {
      goto LABEL_11;
    }
  }

  NSLog(&cfstr_CouldnTCopyInd.isa);
}

void sub_239F59610(const void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a6 & 0xFFFFFFFFFFFFFFF8;
  if ((a6 & 0xFFFFFFFFFFFFFFF8) == 0x20 && a7 == a8)
  {
    sub_239EB2474(a1, a3);
    v16 = *a1;

    memcpy(v16, v9, 4 * v8);
  }

  else
  {
    if (!a6)
    {
      NSLog(&cfstr_CouldnTCopyInd_0.isa);
      return;
    }

    if (a7 == a8)
    {
      sub_239EB2474(a1, a3);
      if (a6 == 32)
      {
        if (v8)
        {
          v39 = *a1;
          do
          {
            v40 = *v9;
            v9 += 2;
            *v39++ = v40;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 16)
      {
        if (v8)
        {
          v22 = *a1;
          do
          {
            v23 = *v9++;
            *v22++ = v23;
            --v8;
          }

          while (v8);
        }
      }

      else if (a6 == 8 && v8)
      {
        v14 = *a1;
        do
        {
          v15 = *v9;
          v9 = (v9 + 1);
          *v14++ = v15;
          --v8;
        }

        while (v8);
      }

      return;
    }

    if (a7 == 3 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v19 = sub_239F5850C(a2, a3);
          v20 = sub_239F5A06C(v9, v8, 4 * v19);
          break;
        case 16:
          v19 = sub_239F5847C(a2, a3);
          v20 = sub_239F59F20(v9, v8, 4 * v19);
          break;
        case 8:
          v19 = sub_239F583FC(a2, a3);
          v20 = sub_239F59DD8(v9, v8, 4 * v19);
          break;
        default:
          goto LABEL_94;
      }

      if (v20)
      {
        v68 = v20;
        sub_239EB2474(a1, v19);
        v41 = *a1;
        v42 = v68;
        v45 = objc_msgSend_bytes(v42, v43, v44);
        v46 = 4 * v19;
LABEL_89:
        memcpy(v41, v45, v46);
LABEL_90:
        v21 = v68;
LABEL_91:

        return;
      }

LABEL_94:
      NSLog(&cfstr_CouldnTCreateB.isa);
      return;
    }

    if (a7 == 4 && a8 == 2)
    {
      switch(a6)
      {
        case 32:
          v21 = sub_239F5A398(a2, a3);
          break;
        case 16:
          v21 = sub_239F5A2AC(a2, a3);
          break;
        case 8:
          v21 = sub_239F5A1C4(a2, a3);
          break;
        default:
          goto LABEL_115;
      }

      v68 = v21;
      if (!v21)
      {
        goto LABEL_91;
      }

      v47 = 3 * (v8 >> 1);
      sub_239EB2474(a1, v47);
      if (v11 == 32)
      {
        v41 = *a1;
        v48 = v68;
        v45 = objc_msgSend_bytes(v48, v49, v50);
        v46 = 12 * (v8 >> 1);
        goto LABEL_89;
      }

      if (a6 == 16)
      {
        v58 = v68;
        v61 = objc_msgSend_bytes(v58, v59, v60);
        if (v8 >= 2)
        {
          v62 = *a1;
          if (v47 <= 1)
          {
            v63 = 1;
          }

          else
          {
            v63 = 3 * (v8 >> 1);
          }

          do
          {
            v64 = *v61++;
            *v62++ = v64;
            --v63;
          }

          while (v63);
        }

        goto LABEL_90;
      }

      if (a6 == 8)
      {
        v51 = v68;
        v54 = objc_msgSend_bytes(v51, v52, v53);
        if (v8 >= 2)
        {
          v55 = *a1;
          if (v47 <= 1)
          {
            v56 = 1;
          }

          else
          {
            v56 = 3 * (v8 >> 1);
          }

          do
          {
            v57 = *v54++;
            *v55++ = v57;
            --v56;
          }

          while (v56);
        }

        goto LABEL_90;
      }

LABEL_115:
      v21 = 0;
      goto LABEL_91;
    }

    if (a7 != 5 || a8 != 2)
    {
      NSLog(&cfstr_CouldnTCopyInd_1.isa);
      return;
    }

    if (a5)
    {
      v24 = 0;
      v25 = 0;
      v65 = a2 + 2;
      v66 = a2 + 4;
      v67 = (a2 + 8);
      while (1)
      {
        LODWORD(v26) = *(a4 + v24);
        if (v26 == 3)
        {
          break;
        }

        if (v26 == 2)
        {
          if (a6 != 8)
          {
            if (a6 != 32)
            {
              if (a6 != 16)
              {
                goto LABEL_78;
              }

LABEL_68:
              v35 = &v9[v25];
              v69 = *v35;
              sub_239E73254(a1, &v69);
              v69 = v35[1];
              sub_239E73254(a1, &v69);
              v69 = v35[1];
              sub_239E73254(a1, &v69);
            }

            sub_239E73254(a1, &v9[2 * v25]);
            v36 = &v9[2 * v25 + 2];
            goto LABEL_76;
          }

          v69 = *(v9 + v25);
          sub_239E73254(a1, &v69);
          v69 = *(v9 + v25 + 1);
          sub_239E73254(a1, &v69);
          v69 = *(v9 + v25 + 1);
          sub_239E73254(a1, &v69);
          goto LABEL_68;
        }

        if (v26 == 1)
        {
          if (a6 == 8)
          {
            v69 = *(v9 + v25);
            sub_239E73254(a1, &v69);
            v69 = *(v9 + v25);
            sub_239E73254(a1, &v69);
            v69 = *(v9 + v25);
            sub_239E73254(a1, &v69);
            goto LABEL_74;
          }

          if (a6 != 32)
          {
            if (a6 != 16)
            {
              goto LABEL_78;
            }

LABEL_74:
            v69 = v9[v25];
            sub_239E73254(a1, &v69);
            v69 = v9[v25];
            sub_239E73254(a1, &v69);
            v69 = v9[v25];
            sub_239E73254(a1, &v69);
          }

          v36 = &v9[2 * v25];
          sub_239E73254(a1, v36);
LABEL_76:
          sub_239E73254(a1, v36);
LABEL_77:
          sub_239E73254(a1, v36);
          goto LABEL_78;
        }

        if (a6 == 32)
        {
          goto LABEL_63;
        }

        if (a6 != 16)
        {
          if (a6 != 8 || v26 < 3)
          {
            goto LABEL_78;
          }

          v27 = 0;
          v28 = (v65 + v25);
          do
          {
            v69 = *(v9 + v25);
            sub_239E73254(a1, &v69);
            v69 = *(v28 - 1);
            sub_239E73254(a1, &v69);
            v29 = *v28++;
            v69 = v29;
            sub_239E73254(a1, &v69);
            ++v27;
            v26 = *(a4 + v24);
          }

          while (v27 < v26 - 2);
        }

        if (v26 >= 3)
        {
          v30 = 0;
          v31 = (v66 + 2 * v25);
          do
          {
            v69 = v9[v25];
            sub_239E73254(a1, &v69);
            v69 = *(v31 - 1);
            sub_239E73254(a1, &v69);
            v32 = *v31++;
            v69 = v32;
            sub_239E73254(a1, &v69);
            ++v30;
            v26 = *(a4 + v24);
          }

          while (v30 < v26 - 2);
LABEL_63:
          if (v26 >= 3)
          {
            v33 = 0;
            v34 = &v67[4 * v25];
            do
            {
              sub_239E73254(a1, &v9[2 * v25]);
              sub_239E73254(a1, v34 - 1);
              sub_239E73254(a1, v34);
              ++v33;
              v34 += 4;
            }

            while (v33 < *(a4 + v24) - 2);
          }
        }

LABEL_78:
        v25 += *(a4 + v24++);
        if (v24 == a5)
        {
          return;
        }
      }

      switch(a6)
      {
        case 8:
          v69 = *(v9 + v25);
          sub_239E73254(a1, &v69);
          v69 = *(v9 + v25 + 1);
          sub_239E73254(a1, &v69);
          v69 = *(v9 + v25 + 2);
          sub_239E73254(a1, &v69);
          break;
        case 32:
LABEL_72:
          v38 = &v9[2 * v25];
          sub_239E73254(a1, v38);
          sub_239E73254(a1, v38 + 1);
          v36 = v38 + 4;
          goto LABEL_77;
        case 16:
          break;
        default:
          goto LABEL_78;
      }

      v37 = &v9[v25];
      v69 = *v37;
      sub_239E73254(a1, &v69);
      v69 = v37[1];
      sub_239E73254(a1, &v69);
      v69 = v37[2];
      sub_239E73254(a1, &v69);
      goto LABEL_72;
    }
  }
}

void sub_239F59DB0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_239E7967C(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

id sub_239F59DD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_239F583FC(a1, a2);
  v7 = 12 * v6;
  if (12 * v6 - 1 >= a3)
  {
    v19 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(12 * v6, 0x100004052888210uLL);
    v10 = v8;
    v11 = a2 - 2;
    if (a2 != 2)
    {
      v12 = 0;
      v13 = v8;
      do
      {
        if (v12 <= v11)
        {
          v14 = a2 - 2;
        }

        else
        {
          v14 = v12;
        }

        while (v14 != v12)
        {
          v15 = a1 + v12;
          v16 = *(a1 + v12++);
          if (v16 != *(v15 + 1))
          {
            v14 = v12 - 1;
            break;
          }
        }

        v17 = a1 + v14;
        *v13 = *(a1 + v14);
        if (v14)
        {
          v13[1] = *(v17 + 1);
          v18 = (v17 + 2);
        }

        else
        {
          v13[1] = *(v17 + 2);
          v18 = (v17 + 1);
        }

        v13[2] = *v18;
        if (v14 < a2 - 3 && *(a1 + 2 + v14) == *(a1 + v14 + 3))
        {
          v14 += 3;
        }

        v13 += 3;
        v12 = v14 + 1;
      }

      while (v14 + 1 < v11);
    }

    v19 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v8, v7);
    free(v10);
  }

  return v19;
}

id sub_239F59F20(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_239F5847C(a1, a2);
  v7 = 12 * v6;
  if (12 * v6 - 1 >= a3)
  {
    v24 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(12 * v6, 0x100004052888210uLL);
    v10 = v8;
    v11 = a2 - 2;
    if (a2 != 2)
    {
      v12 = 0;
      v13 = v8;
      do
      {
        if (v12 <= v11)
        {
          v14 = a2 - 2;
        }

        else
        {
          v14 = v12;
        }

        v15 = v14 - v12;
        v16 = v12 - 1;
        v17 = (a1 + 2 + 2 * v12);
        while (v15)
        {
          v18 = *(v17 - 1);
          v19 = *v17++;
          --v15;
          ++v16;
          if (v18 != v19)
          {
            goto LABEL_12;
          }
        }

        v16 = v14;
LABEL_12:
        v20 = (a1 + 2 * v16);
        if (v16)
        {
          v23 = v20[1];
          v21 = v20[2];
          v22 = v21;
        }

        else
        {
          v21 = v20[2];
          v22 = v20[1];
          v23 = v21;
        }

        *v13 = *v20;
        v13[1] = v23;
        v13[2] = v22;
        if (v16 < a2 - 3 && v21 == *(a1 + 2 * (v16 + 3)))
        {
          v16 += 3;
        }

        v13 += 3;
        v12 = v16 + 1;
      }

      while (v16 + 1 < v11);
    }

    v24 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v8, v7);
    free(v10);
  }

  return v24;
}

id sub_239F5A06C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_239F5850C(a1, a2);
  v7 = 12 * v6;
  if (12 * v6 - 1 >= a3)
  {
    v22 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(12 * v6, 0x100004052888210uLL);
    v10 = v8;
    v11 = a2 - 2;
    if (a2 != 2)
    {
      v12 = 0;
      v13 = v8;
      do
      {
        if (v12 <= v11)
        {
          v14 = a2 - 2;
        }

        else
        {
          v14 = v12;
        }

        v15 = v14 - v12;
        v16 = v12 - 1;
        v17 = (a1 + 4 + 4 * v12);
        while (v15)
        {
          v19 = *(v17 - 1);
          v18 = *v17;
          --v15;
          ++v16;
          ++v17;
          if (v19 != v18)
          {
            goto LABEL_12;
          }
        }

        v16 = v14;
LABEL_12:
        v20 = (a1 + 4 * v16);
        *v13 = *v20;
        if (v16)
        {
          v13[1] = v20[1];
          v21 = v20 + 2;
        }

        else
        {
          v13[1] = v20[2];
          v21 = v20 + 1;
        }

        v13[2] = *v21;
        if (v16 < a2 - 3 && *(a1 + 8 + 4 * v16) == *(a1 + 4 * (v16 + 3)))
        {
          v16 += 3;
        }

        v13 += 3;
        v12 = v16 + 1;
      }

      while (v16 + 1 < v11);
    }

    v22 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v10, v7);
    free(v10);
  }

  return v22;
}

id sub_239F5A1C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v5 = 3 * (a2 >> 1);
    v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
    v8 = 0;
    v9 = v7;
    do
    {
      *v9 = *(a1 + v8);
      v9[1] = *(a1 + v8 + 1);
      v9[2] = *(a1 + v8 + 2);
      v9[3] = *(a1 + v8);
      v9[4] = *(a1 + v8 + 2);
      v9[5] = *(a1 + v8 + 3);
      v9 += 6;
      v8 += 4;
    }

    while (v8 < a2);
    v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, v7, v5);
    free(v7);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_239F5A2AC(uint64_t a1, unint64_t a2)
{
  v2 = 6 * (a2 >> 1);
  if (v2)
  {
    v5 = malloc_type_malloc(v2, 0x1000040BDFB0063uLL);
    v7 = v5;
    if (a2)
    {
      v8 = (a1 + 4);
      v9 = 3;
      v10 = v5;
      do
      {
        *v10 = *(v8 - 2);
        v10[1] = *(v8 - 1);
        v10[2] = *v8;
        v10[3] = *(v8 - 2);
        v10[4] = *v8;
        v10[5] = v8[1];
        v11 = v9 + 1;
        v9 += 4;
        v8 += 4;
        v10 += 6;
      }

      while (v11 < a2);
    }

    v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, v5, v2);
    free(v7);
  }

  return v2;
}

id sub_239F5A398(uint64_t a1, unint64_t a2)
{
  v2 = 12 * (a2 >> 1);
  if (v2)
  {
    v5 = malloc_type_malloc(v2, 0x100004052888210uLL);
    v7 = v5;
    if (a2)
    {
      v8 = (a1 + 8);
      v9 = 3;
      v10 = v5;
      do
      {
        *v10 = *(v8 - 2);
        v10[1] = *(v8 - 1);
        v10[2] = *v8;
        v10[3] = *(v8 - 2);
        v10[4] = *v8;
        v10[5] = v8[1];
        v11 = v9 + 1;
        v9 += 4;
        v8 += 4;
        v10 += 6;
      }

      while (v11 < a2);
    }

    v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, v5, v2);
    free(v7);
  }

  return v2;
}

void sub_239F5A570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = v12;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F5B18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL MDLAABB::intersect(MDLAABB *this, float32x4_t *a2, float *a3, float *a4, unsigned __int8 *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *this;
  v25[0] = *(this + 1);
  v25[1] = v5;
  v6 = a2[3].u8[0];
  v7 = a2[2];
  v8 = vmulq_f32(vsubq_f32(v25[v6], *a2), v7);
  v9 = vmulq_f32(vsubq_f32(v25[v6 ^ 1], *a2), v7);
  v10 = a2[3].u8[1];
  LODWORD(v11) = HIDWORD(a2->i64[0]);
  v12 = vmuls_lane_f32(*(&v25[v10] + 1) - v11, *v7.f32, 1);
  v13 = vmuls_lane_f32(*(&v25[v10 ^ 1] + 1) - v11, *v7.f32, 1);
  v14 = a2[3].u8[2];
  *&v5 = COERCE_FLOAT(a2->i64[1]);
  v15 = vmuls_lane_f32(*(&v25[v14] + 2) - *&v5, v7, 2);
  v16 = vmuls_lane_f32(*(&v25[v14 ^ 1] + 2) - *&v5, v7, 2);
  if (vmovn_s32(vcgtq_f32(v8, v9)).u8[0])
  {
    v17 = v9.f32[0];
  }

  else
  {
    v17 = v8.f32[0];
  }

  if (v13 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  if (v17 < v18)
  {
    v17 = v18;
  }

  if (v16 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  if (v17 < v19)
  {
    v17 = v19;
  }

  *a3 = v17;
  v20 = vmovn_s32(vcgtq_f32(v9, v8)).u8[0];
  if (v12 >= v13)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13;
  }

  if (v20)
  {
    v8.f32[0] = v9.f32[0];
  }

  if (v15 >= v16)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  if (v21 < v8.f32[0])
  {
    v8.f32[0] = v21;
  }

  if (v22 < v8.f32[0])
  {
    v8.f32[0] = v22;
  }

  *a4 = v8.f32[0];
  *a5 = (v8.f32[0] == v9.f32[0]) | (2 * (v8.f32[0] == v13)) | (4 * (v8.f32[0] == v16));
  result = *a4 >= *a3;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL MDLAABB::intersect(__int128 *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float *a5, float *a6, _BYTE *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v19[0] = a1[1];
  v19[1] = v7;
  a3->f32[0] = (*&v19[*(a2 + 48)] - *a2) * *(a2 + 32);
  a4->f32[0] = (*&v19[*(a2 + 48) ^ 1] - *a2) * *(a2 + 32);
  a3->f32[1] = (*(&v19[*(a2 + 49)] + 1) - *(a2 + 4)) * *(a2 + 36);
  a4->f32[1] = (*(&v19[*(a2 + 49) ^ 1] + 1) - *(a2 + 4)) * *(a2 + 36);
  a3[1].f32[0] = (*(&v19[*(a2 + 50)] + 2) - *(a2 + 8)) * *(a2 + 40);
  v8 = (*(&v19[*(a2 + 50) ^ 1] + 2) - *(a2 + 8)) * *(a2 + 40);
  v9 = *a4->f32;
  a4[1].f32[0] = v8;
  v10 = *a3->f32;
  v11 = vbsl_s8(vcgt_f32(*a3, *&v9), *&v9, *a3);
  if (*v11.i32 < *&v11.i32[1])
  {
    v11.i32[0] = v11.i32[1];
  }

  if (v8 >= COERCE_FLOAT(*&a3[1]))
  {
    LODWORD(v8) = a3[1];
  }

  if (*v11.i32 >= v8)
  {
    v8 = *v11.i32;
  }

  *a5 = v8;
  v12 = *a3->f32;
  v13 = *a4->f32;
  v14 = vbsl_s8(vcgt_f32(*a4, *a3), *a4, *a3);
  v15 = COERCE_FLOAT(*&a3[1]);
  if (v15 < COERCE_FLOAT(*&a4[1]))
  {
    LODWORD(v15) = a4[1];
  }

  if (*&v14.i32[1] >= *v14.i32)
  {
    v16 = *v14.i32;
  }

  else
  {
    v16 = *&v14.i32[1];
  }

  if (v15 >= v16)
  {
    v15 = v16;
  }

  *a6 = v15;
  *a7 = (v15 == COERCE_FLOAT(*a4->f32)) | (2 * (v15 == COERCE_FLOAT(HIDWORD(*a4)))) | (4 * (v15 == COERCE_FLOAT(*&a4[1])));
  result = *a6 >= *a5;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239F5BB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MDLMeshBufferData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_239F5C490(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    v5 = v3;
    v7 = objc_msgSend_cStringUsingEncoding_(v5, v6, 4);
    sub_239E552A0(__p, v7);
    if (v13 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = fopen(v8, "rb");
    v10 = v9 != 0;
    if (v9)
    {
      fclose(v9);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_239F5C538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

FILE *sub_239F5C560(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v5 = v3;
    v7 = objc_msgSend_cStringUsingEncoding_(v5, v6, 4);
    sub_239E552A0(__p, v7);
    if (v12 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = fopen(v8, "rb");
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_239F5C5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

FILE *sub_239F5C624(void *a1, const char *a2, uint64_t a3)
{
  result = sub_239F5C560(a1, a2, a3);
  if (result)
  {
    v4 = result;
    fseek(result, 0, 2);
    v5 = MEMORY[0x23EE80600](v4);
    fseek(v4, 0, 0);
    fclose(v4);
    return v5;
  }

  return result;
}

void sub_239F5C680(uint64_t a1, uint64_t *a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v13 = objc_msgSend_transform(v10, v11, v12);
  v44 = v13;
  if (v13)
  {
    objc_msgSend_matrix(v13, v14, v15);
    v16 = 0;
    v62[0] = v17;
    v62[1] = v18;
    v62[2] = v19;
    v62[3] = v20;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    do
    {
      *(&v53 + v16 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v62[v16])), a5, *&v62[v16], 1), a6, v62[v16], 2), a7, v62[v16], 3);
      ++v16;
    }

    while (v16 != 4);
    a5 = v54;
    a4 = v53;
    a7 = v56;
    a6 = v55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v10;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v43 = v23;
    v26 = objc_msgSend_submeshes(v23, v24, v25);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v58, v64, 16);
    if (v28)
    {
      v29 = *v59;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v59 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v58 + 1) + 8 * i);
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          sub_239F5C9DC(a2, &v53);

          v32 = a2[1];
          *(v32 - 80) = a4;
          *(v32 - 64) = a5;
          *(v32 - 48) = a6;
          *(v32 - 32) = a7;
          objc_storeStrong((a2[1] - 16), a3);
          objc_storeStrong((a2[1] - 8), v31);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v33, &v58, v64, 16);
      }

      while (v28);
    }
  }

  v34 = objc_msgSend_children(v10, v21, v22);
  v35 = v34;
  if (v34)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v36 = v34;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v49, v63, 16);
    if (v38)
    {
      v39 = *v50;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v50 != v39)
          {
            objc_enumerationMutation(v36);
          }

          sub_239F5C680(a1, a2, *(*(&v49 + 1) + 8 * j), a4, a5, a6, a7);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, &v49, v63, 16);
      }

      while (v38);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239F5C9DC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239F5CDAC(a1, a2);
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 48);
    v3[2] = *(a2 + 32);
    v3[3] = v6;
    *v3 = v4;
    v3[1] = v5;
    v7 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v3[4] = v7;
    result = (v3 + 5);
  }

  a1[1] = result;
  return result;
}

void sub_239F5CA38(uint64_t a1, uint64_t *a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v66 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v12 = objc_msgSend_transform(v9, v10, v11);
  v45 = v12;
  if (v12)
  {
    objc_msgSend_matrix(v12, v13, v14);
    v15 = 0;
    v63[0] = v16;
    v63[1] = v17;
    v63[2] = v18;
    v63[3] = v19;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    do
    {
      *(&v54 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v63[v15])), a5, *&v63[v15], 1), a6, v63[v15], 2), a7, v63[v15], 3);
      ++v15;
    }

    while (v15 != 4);
    a5 = v55;
    a4 = v54;
    a7 = v57;
    a6 = v56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v9;
    v24 = objc_msgSend_coarseMesh(v44, v22, v23);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v27 = objc_msgSend_submeshes(v24, v25, v26);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v59, v65, 16);
    if (v29)
    {
      v30 = *v60;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v60 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v59 + 1) + 8 * i);
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          sub_239F5C9DC(a2, &v54);

          v33 = a2[1];
          *(v33 - 80) = a4;
          *(v33 - 64) = a5;
          *(v33 - 48) = a6;
          *(v33 - 32) = a7;
          objc_storeStrong((a2[1] - 16), v24);
          objc_storeStrong((a2[1] - 8), v32);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v34, &v59, v65, 16);
      }

      while (v29);
    }
  }

  v35 = objc_msgSend_children(v9, v20, v21);
  v36 = v35;
  if (v35)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v37 = v35;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v50, v64, 16);
    if (v39)
    {
      v40 = *v51;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(v37);
          }

          sub_239F5CA38(a1, a2, *(*(&v50 + 1) + 8 * j), a4, a5, a6, a7);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v42, &v50, v64, 16);
      }

      while (v39);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239F5CDAC(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_239E797B4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_239F5CEE8(a1, v6);
  }

  v7 = 80 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  *(v7 + 32) = a2[2];
  *(v7 + 48) = v10;
  *v7 = v8;
  *(v7 + 16) = v9;
  v11 = a2[4];
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(v7 + 64) = v11;
  *&v20 = 80 * v2 + 80;
  v12 = a1[1];
  v13 = (80 * v2 + *a1 - v12);
  sub_239F5CF40(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_239F5D0D4(&v18);
  return v17;
}

void sub_239F5CED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239F5D0D4(va);
  _Unwind_Resume(a1);
}

void sub_239F5CEE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239F5CF40(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v12 = a4;
  v11 = a4;
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      v6 = *(v4 + 16);
      v7 = *(v4 + 48);
      a4[2] = *(v4 + 32);
      a4[3] = v7;
      *a4 = v5;
      a4[1] = v6;
      v8 = *(v4 + 64);
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      a4[4] = v8;
      v4 += 80;
      a4 += 5;
    }

    while (v4 != a3);
    v12 = a4;
  }

  v10[3] = 1;
  sub_239F5CFE4(a1, a2, a3);
  return sub_239F5D030(v10);
}

void sub_239F5CFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 80;
    }

    while (v4 != a3);
  }
}

uint64_t sub_239F5D030(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239F5D07C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_239F5D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 80;
    }

    while (v6 != a5);
  }
}

uint64_t sub_239F5D0D4(uint64_t a1)
{
  sub_239F5D10C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F5D10C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
  }
}

uint64_t sub_239F5D2FC@<X0>(uint64_t a1@<X0>, unsigned __int8 **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_239E5BAE0(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    a2[2] = *(a1 + 16);
  }

  LODWORD(v3) = *(a2 + 23);
  v4 = *a2;
  if ((v3 & 0x80000000) == 0)
  {
    v4 = a2;
  }

  v5 = *v4;
  v6 = MEMORY[0x277D85DE0];
  if ((v5 & 0x80000000) != 0)
  {
    result = __maskrune(v5, 0x100uLL);
    LOBYTE(v3) = *(a2 + 23);
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x100;
    if (result)
    {
      goto LABEL_16;
    }
  }

  if ((v3 & 0x80) != 0)
  {
    v9 = *a2;
    v8 = **a2;
    if (v8 == 58)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = *a2;
    if (v8 == 58)
    {
      goto LABEL_16;
    }

    v9 = a2;
  }

  if (v8 != 95)
  {
    *v9 = 95;
    LOBYTE(v3) = *(a2 + 23);
  }

LABEL_16:
  v10 = (v3 & 0x80u) != 0;
  LOBYTE(v11) = v10;
  v3 = v3;
  if (v10)
  {
    v3 = a2[1];
  }

  if (v3 >= 2)
  {
    v12 = 1;
    do
    {
      v13 = *a2;
      if ((v11 & 1) == 0)
      {
        v13 = a2;
      }

      v14 = *(v13 + v12);
      if ((v14 & 0x80000000) != 0)
      {
        result = __maskrune(*(v13 + v12), 0x500uLL);
      }

      else
      {
        result = *(v6 + 4 * v14 + 60) & 0x500;
      }

      if (!result && (v14 - 45 > 0x32 || ((1 << (v14 - 45)) & 0x4000000002003) == 0))
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        *(v17 + v12) = 95;
      }

      ++v12;
      v16 = *(a2 + 23);
      v11 = v16 >> 63;
      if ((v16 & 0x80000000) != 0)
      {
        v16 = a2[1];
      }
    }

    while (v12 < v16);
  }

  return result;
}

void sub_239F5D4A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F5D8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a23;
  sub_239EBD408(&__p);
  _Unwind_Resume(a1);
}

void sub_239F5E204(void *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v56 = v5;
  v8 = objc_msgSend_transform(v5, v6, v7);
  v11 = a2[1];
  v65 = *a2;
  v66 = v11;
  v12 = a2[3];
  v67 = a2[2];
  v68 = v12;
  v54 = v8;
  if (v8)
  {
    objc_msgSend_matrix(v8, v9, v10);
    v13 = 0;
    v69 = v14;
    v70 = v15;
    v71 = v16;
    v72 = v17;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v18 = v65;
    v20 = v67;
    v19 = v66;
    v21 = v68;
    do
    {
      *(&v73 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v69 + v13))), v19, *&v69.f32[v13 / 4], 1), v20, *(&v69 + v13), 2), v21, *(&v69 + v13), 3);
      v13 += 16;
    }

    while (v13 != 64);
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v68 = v76;
  }

  __asm { FMOV            V1.4S, #-1.0 }

  *a3 = _Q1;
  *(a3 + 16) = 0u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v56;
  }

  else
  {
    v27 = 0;
  }

  v55 = v27;
  if (v55)
  {
    objc_msgSend_boundingBox(v55, v28, v29);
    v73 = v30;
    v74 = v31;
    sub_239EB1E70(a3, &v73, &v65);
  }

  v32 = objc_msgSend_children(v56, v28, v29);
  if (v32)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v53 = v32;
    v33 = v32;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v61, v77, 16);
    if (v37)
    {
      v38 = *v62;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v62 != v38)
          {
            objc_enumerationMutation(v33);
          }

          v40 = *(*(&v61 + 1) + 8 * i);
          v43 = objc_msgSend_transform(v40, v35, v36);
          if (v43)
          {
            v44 = objc_msgSend_transform(v40, v41, v42);
            objc_msgSend_matrix(v44, v45, v46);
            v51 = 0;
            v69 = v65;
            v70 = v66;
            v71 = v67;
            v72 = v68;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            do
            {
              *(&v73 + v51) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*(&v69 + v51))), v48, *&v69.f32[v51 / 4], 1), v49, *(&v69 + v51), 2), v50, *(&v69 + v51), 3);
              v51 += 16;
            }

            while (v51 != 64);
            v57 = v73;
            v58 = v74;
            v59 = v75;
            v60 = v76;
          }

          else
          {
            v57 = v65;
            v58 = v66;
            v59 = v67;
            v60 = v68;
          }

          sub_239F5E204(&v73, v40, &v57);
          sub_239EB1DF0(a3, &v73);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v61, v77, 16);
      }

      while (v37);
    }

    v32 = v53;
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_239F5E650(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239F5E6A8(uint64_t a1)
{
  sub_239F5E6E0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F5E6E0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_239F5E73C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_239F5E650(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_239F5E6A8(&v17);
  return v11;
}

void sub_239F5E868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F5E6A8(va);
  _Unwind_Resume(a1);
}

float sub_239F5E87C(int a1)
{
  v1 = a1 & 0x80000000;
  v2 = a1 & 0x3FF;
  v3 = a1 & 0x7C00;
  if ((a1 & 0x7C00) == 0)
  {
    v5 = __clz(v2);
    v6 = a1 << (10 - (v5 ^ 0x1F));
    v7 = 1124073472 - (v5 << 23);
    v8 = v6 & 0x3FE;
    if ((a1 & 0x3FF) != 0)
    {
      v2 = v8;
    }

    else
    {
      v7 = 0;
      v2 = 0;
    }

    goto LABEL_9;
  }

  if (v3 != 31744)
  {
    v7 = (v3 << 13) + 939524096;
LABEL_9:
    v4 = v7 | (v2 << 13) | v1;
    return *&v4;
  }

  v4 = v1 | 0x7F800000;
  if ((a1 & 0x3FF) != 0)
  {
    v4 = a1 | 0x7FFFFFFF;
  }

  return *&v4;
}

uint64_t sub_239F5E8F8(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = LODWORD(a1) & 0x7F800000;
  v3 = LODWORD(a1) & 0x7FFFFF;
  if ((LODWORD(a1) >> 23) < 0x8Fu)
  {
    v4 = v1 | ((v2 + v3 + 0x8000000) >> 13);
    v1 |= v3 >> (((939524096 - v2) >> 23) + 14);
    if (v2 > 0x38000000)
    {
      LOWORD(v1) = v4;
    }
  }

  else if (v3 && v2 == 2139095040)
  {
    LOWORD(v1) = HIWORD(a1) | 0x7FFF;
  }

  else
  {
    LOWORD(v1) = v1 | 0x7C00;
  }

  return v1;
}

void sub_239F5E970(void *a1, float *a2, void *a3, float *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  bzero(v47, 0x3FCuLL);
  v11 = objc_msgSend_format(v8, v9, v10);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v11 < 5u)) == 1)
  {
    objc_msgSend_initializationValue(v8, v12, v13);
    if (v11)
    {
      v15 = 0;
      do
      {
        v46 = v14;
        v47[v15] = *(&v46 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3)));
        ++v15;
      }

      while (v11 != v15);
    }
  }

  v16 = objc_msgSend_map(v7, v12, v13);
  v17 = objc_alloc(MEMORY[0x277CBEB28]);
  v20 = objc_msgSend_bytes(v16, v18, v19);
  v23 = objc_msgSend_length(v7, v21, v22);
  v25 = objc_msgSend_initWithBytes_length_(v17, v24, v20, v23);
  v26 = v25;
  v29 = objc_msgSend_mutableBytes(v26, v27, v28);
  v32 = objc_msgSend_offset(v8, v30, v31);
  v35 = objc_msgSend_format(v8, v33, v34);
  v38 = objc_msgSend_length(v7, v36, v37);
  v41 = objc_msgSend_length(v7, v39, v40);
  sub_239E70A2C((v29 + v32), v35, a2, 0, 0xC0000, 0, v47, a4, v42, v43, v38, v41);
  objc_msgSend_fillData_offset_(v7, v44, v25, 0);

  v45 = *MEMORY[0x277D85DE8];
}

void sub_239F5EB80(void *a1, float *a2, void *a3, void *a4, float *a5, void *a6, float *a7, unint64_t a8, float *a9)
{
  v30 = a1;
  v16 = a3;
  v17 = a6;
  v20 = objc_msgSend_map(a4, v18, v19);
  v23 = objc_msgSend_bytes(v20, v21, v22);

  v26 = objc_msgSend_map(v30, v24, v25);
  v29 = objc_msgSend_bytes(v26, v27, v28);

  sub_239E70888(v29, a2, v16, v23, a5, v17, a7, a8, a9);
}

void sub_239F5ECA8(void *a1, float a2)
{
  if ((a1[4] & 0x1000) != 0)
  {
    return;
  }

  v3 = ((a1[4] & 0xFFFF0000uLL) - 0x10000) >> 16;
  if (v3 > 5)
  {
    if (((a1[4] & 0xFFFF0000uLL) - 0x10000) >> 16 > 8)
    {
      if (v3 != 9)
      {
        if (v3 == 10)
        {
          v70 = a1[8];
          if (v70)
          {
            v71 = a1[4];
            v72 = a1[2];
            v73 = a1[5];
            v74 = (a1[3] + 4);
            v75 = (*a1 + 8);
            do
            {
              *(v75 - 2) = 2143289344 * *(v74 - 2);
              if (v71 >= 2)
              {
                *(v75 - 1) |= ((511 * *(v74 - 1)) & 0x3FF) << 12;
                if (v71 != 2)
                {
                  *v75 |= (2044 * *v74) & 0xFFC;
                  if (v71 >= 4)
                  {
                    v75[1] |= v74[1] & 3;
                  }
                }
              }

              v74 = (v74 + v73);
              v75 = (v75 + v72);
              --v70;
            }

            while (v70);
          }
        }

        else if (v3 == 11)
        {
          if (a2 == 1.0)
          {
            v22 = a1[8];
            if (v22)
            {
              v23 = a1[4];
              v24 = a1[2];
              v25 = a1[5];
              v26 = (a1[3] + 8);
              v27 = (*a1 + 8);
              do
              {
                *(v27 - 2) = (*(v26 - 2) * 511.0) << 22;
                if (v23 >= 2)
                {
                  *(v27 - 1) |= ((*(v26 - 1) * 511.0) & 0x3FF) << 12;
                  if (v23 != 2)
                  {
                    *v27 |= 4 * ((*v26 * 511.0) & 0x3FF);
                    if (v23 >= 4)
                    {
                      v27[1] |= v26[1] & 3;
                    }
                  }
                }

                v26 = (v26 + v25);
                v27 = (v27 + v24);
                --v22;
              }

              while (v22);
            }
          }

          else
          {
            sub_239F684E0(nullsub_46, a1);
          }
        }

        return;
      }

      if (a2 == 1.0)
      {
        v46 = a1[8];
        if (v46)
        {
          v47 = a1[4];
          v48 = a1[2];
          v49 = a1[5];
          v50 = a1[3] + 8;
          v51 = (*a1 + 8);
          do
          {
            *(v51 - 2) = 2143289344 * *(v50 - 8);
            if (v47 >= 2)
            {
              *(v51 - 1) |= (2093056 * *(v50 - 4)) & 0x3FF000;
              if (v47 != 2)
              {
                *v51 |= (2044 * *v50) & 0xFFC;
                if (v47 >= 4)
                {
                  v51[1] |= *(v50 + 4) & 3;
                }
              }
            }

            v50 += v49;
            v51 = (v51 + v48);
            --v46;
          }

          while (v46);
        }

        return;
      }
    }

    else
    {
      if (v3 == 6)
      {
        v34 = a1[8];
        if (v34)
        {
          v35 = a1[4];
          v36 = a1[2];
          v37 = a1[5];
          v38 = (a1[3] + 4);
          v39 = (*a1 + 8);
          do
          {
            *(v39 - 2) = 2143289344 * *(v38 - 2);
            if (v35 >= 2)
            {
              *(v39 - 1) |= ((511 * *(v38 - 1)) & 0x3FF) << 12;
              if (v35 != 2)
              {
                *v39 |= (2044 * *v38) & 0xFFC;
                if (v35 >= 4)
                {
                  v39[1] |= v38[1] & 3;
                }
              }
            }

            v38 = (v38 + v37);
            v39 = (v39 + v36);
            --v34;
          }

          while (v34);
        }

        return;
      }

      if (v3 == 7)
      {
        v58 = a1[8];
        if (v58)
        {
          v59 = a1[4];
          v60 = a1[2];
          v61 = a1[5];
          v62 = (a1[3] + 4);
          v63 = (*a1 + 8);
          do
          {
            *(v63 - 2) = 2143289344 * *(v62 - 2);
            if (v59 >= 2)
            {
              *(v63 - 1) |= ((511 * *(v62 - 1)) & 0x3FF) << 12;
              if (v59 != 2)
              {
                *v63 |= (2044 * *v62) & 0xFFC;
                if (v59 >= 4)
                {
                  v63[1] |= v62[1] & 3;
                }
              }
            }

            v62 = (v62 + v61);
            v63 = (v63 + v60);
            --v58;
          }

          while (v58);
        }

        return;
      }

      if (v3 != 8)
      {
        return;
      }

      if (a2 == 1.0)
      {
        v10 = a1[8];
        if (v10)
        {
          v11 = a1[4];
          v12 = a1[2];
          v13 = a1[5];
          v14 = a1[3] + 8;
          v15 = (*a1 + 8);
          do
          {
            *(v15 - 2) = 2143289344 * *(v14 - 8);
            if (v11 >= 2)
            {
              *(v15 - 1) |= (2093056 * *(v14 - 4)) & 0x3FF000;
              if (v11 != 2)
              {
                *v15 |= (2044 * *v14) & 0xFFC;
                if (v11 >= 4)
                {
                  v15[1] |= *(v14 + 4) & 3;
                }
              }
            }

            v14 += v13;
            v15 = (v15 + v12);
            --v10;
          }

          while (v10);
        }

        return;
      }
    }

    sub_239F687A4(nullsub_51, a1);
    return;
  }

  if (((a1[4] & 0xFFFF0000uLL) - 0x10000) >> 16 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (a2 == 1.0)
        {
          v52 = a1[8];
          if (v52)
          {
            v53 = a1[4];
            v54 = a1[2];
            v55 = a1[5];
            v56 = (a1[3] + 3);
            v57 = (*a1 + 8);
            do
            {
              *(v57 - 2) = 2143289344 * *(v56 - 3);
              if (v53 >= 2)
              {
                *(v57 - 1) |= (2093056 * *(v56 - 2)) & 0x3FF000;
                if (v53 != 2)
                {
                  *v57 |= (2044 * *(v56 - 1)) & 0xFFC;
                  if (v53 >= 4)
                  {
                    v57[1] |= *v56 & 3;
                  }
                }
              }

              v56 += v55;
              v57 = (v57 + v54);
              --v52;
            }

            while (v52);
          }
        }

        else
        {
          sub_239F6859C(nullsub_47, a1);
        }
      }

      else if (v3 == 2)
      {
        v4 = a1[8];
        if (v4)
        {
          v5 = a1[4];
          v6 = a1[2];
          v7 = a1[5];
          v8 = (a1[3] + 3);
          v9 = (*a1 + 8);
          do
          {
            *(v9 - 2) = 2143289344 * *(v8 - 3);
            if (v5 >= 2)
            {
              *(v9 - 1) |= (2093056 * *(v8 - 2)) & 0x3FF000;
              if (v5 != 2)
              {
                *v9 |= (2044 * *(v8 - 1)) & 0xFFC;
                if (v5 >= 4)
                {
                  v9[1] |= *v8 & 3;
                }
              }
            }

            v8 += v7;
            v9 = (v9 + v6);
            --v4;
          }

          while (v4);
        }
      }
    }

    else if (a2 == 1.0)
    {
      v28 = a1[8];
      if (v28)
      {
        v29 = a1[4];
        v30 = a1[2];
        v31 = a1[5];
        v32 = (a1[3] + 3);
        v33 = (*a1 + 8);
        do
        {
          *(v33 - 2) = 2143289344 * *(v32 - 3);
          if (v29 >= 2)
          {
            *(v33 - 1) |= (2093056 * *(v32 - 2)) & 0x3FF000;
            if (v29 != 2)
            {
              *v33 |= (2044 * *(v32 - 1)) & 0xFFC;
              if (v29 >= 4)
              {
                v33[1] |= *v32 & 3;
              }
            }
          }

          v32 += v31;
          v33 = (v33 + v30);
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      sub_239F68648(nullsub_48, a1);
    }

    return;
  }

  switch(v3)
  {
    case 3uLL:
      v40 = a1[8];
      if (v40)
      {
        v41 = a1[4];
        v42 = a1[2];
        v43 = a1[5];
        v44 = (a1[3] + 3);
        v45 = (*a1 + 8);
        do
        {
          *(v45 - 2) = 2143289344 * *(v44 - 3);
          if (v41 >= 2)
          {
            *(v45 - 1) |= (2093056 * *(v44 - 2)) & 0x3FF000;
            if (v41 != 2)
            {
              *v45 |= (2044 * *(v44 - 1)) & 0xFFC;
              if (v41 >= 4)
              {
                v45[1] |= *v44 & 3;
              }
            }
          }

          v44 += v43;
          v45 = (v45 + v42);
          --v40;
        }

        while (v40);
      }

      break;
    case 4uLL:
      if (a2 != 1.0)
      {
        v76 = nullsub_50;
        goto LABEL_122;
      }

      v64 = a1[8];
      if (v64)
      {
        v65 = a1[4];
        v66 = a1[2];
        v67 = a1[5];
        v68 = (a1[3] + 4);
        v69 = (*a1 + 8);
        do
        {
          *(v69 - 2) = 2143289344 * *(v68 - 2);
          if (v65 >= 2)
          {
            *(v69 - 1) |= ((511 * *(v68 - 1)) & 0x3FF) << 12;
            if (v65 != 2)
            {
              *v69 |= (2044 * *v68) & 0xFFC;
              if (v65 >= 4)
              {
                v69[1] |= v68[1] & 3;
              }
            }
          }

          v68 = (v68 + v67);
          v69 = (v69 + v66);
          --v64;
        }

        while (v64);
      }

      break;
    case 5uLL:
      if (a2 == 1.0)
      {
        v16 = a1[8];
        if (v16)
        {
          v17 = a1[4];
          v18 = a1[2];
          v19 = a1[5];
          v20 = (a1[3] + 4);
          v21 = (*a1 + 8);
          do
          {
            *(v21 - 2) = 2143289344 * *(v20 - 2);
            if (v17 >= 2)
            {
              *(v21 - 1) |= ((511 * *(v20 - 1)) & 0x3FF) << 12;
              if (v17 != 2)
              {
                *v21 |= (2044 * *v20) & 0xFFC;
                if (v17 >= 4)
                {
                  v21[1] |= v20[1] & 3;
                }
              }
            }

            v20 = (v20 + v19);
            v21 = (v21 + v18);
            --v16;
          }

          while (v16);
        }

        return;
      }

      v76 = nullsub_49;
LABEL_122:
      sub_239F686F4(v76, a1);
      return;
    default:
      return;
  }
}

void sub_239F5F604(void *a1, float a2)
{
  if ((a1[4] & 0x1000) != 0)
  {
    return;
  }

  v3 = ((a1[4] & 0xFFFF0000uLL) - 0x10000) >> 16;
  if (v3 > 5)
  {
    if (((a1[4] & 0xFFFF0000uLL) - 0x10000) >> 16 > 8)
    {
      if (v3 != 9)
      {
        if (v3 == 10)
        {
          v70 = a1[8];
          if (v70)
          {
            v71 = a1[4];
            v72 = a1[2];
            v73 = a1[5];
            v74 = (a1[3] + 4);
            v75 = (*a1 + 8);
            do
            {
              *(v75 - 2) = -4194304 * *(v74 - 2);
              if (v71 >= 2)
              {
                *(v75 - 1) |= (-*(v74 - 1) & 0x3FF) << 12;
                if (v71 != 2)
                {
                  *v75 |= (-4 * *v74) & 0xFFC;
                  if (v71 >= 4)
                  {
                    v75[1] |= -v74[1] & 3;
                  }
                }
              }

              v74 = (v74 + v73);
              v75 = (v75 + v72);
              --v70;
            }

            while (v70);
          }
        }

        else if (v3 == 11)
        {
          if (a2 == 1.0)
          {
            v22 = a1[8];
            if (v22)
            {
              v23 = a1[4];
              v24 = a1[2];
              v25 = a1[5];
              v26 = (a1[3] + 8);
              v27 = (*a1 + 8);
              do
              {
                *(v27 - 2) = (*(v26 - 2) * 1023.0) << 22;
                if (v23 >= 2)
                {
                  *(v27 - 1) |= ((*(v26 - 1) * 1023.0) & 0x3FF) << 12;
                  if (v23 != 2)
                  {
                    *v27 |= 4 * ((*v26 * 1023.0) & 0x3FF);
                    if (v23 >= 4)
                    {
                      v27[1] |= (v26[1] * 3.0) & 3;
                    }
                  }
                }

                v26 = (v26 + v25);
                v27 = (v27 + v24);
                --v22;
              }

              while (v22);
            }
          }

          else
          {
            sub_239F68850(nullsub_52, a1);
          }
        }

        return;
      }

      if (a2 == 1.0)
      {
        v46 = a1[8];
        if (v46)
        {
          v47 = a1[4];
          v48 = a1[2];
          v49 = a1[5];
          v50 = (a1[3] + 8);
          v51 = (*a1 + 8);
          do
          {
            *(v51 - 2) = -4194304 * *(v50 - 2);
            if (v47 >= 2)
            {
              *(v51 - 1) |= (-4096 * *(v50 - 1)) & 0x3FF000;
              if (v47 != 2)
              {
                *v51 |= (-4 * *v50) & 0xFFC;
                if (v47 >= 4)
                {
                  v51[1] |= -v50[1] & 3;
                }
              }
            }

            v50 = (v50 + v49);
            v51 = (v51 + v48);
            --v46;
          }

          while (v46);
        }

        return;
      }
    }

    else
    {
      if (v3 == 6)
      {
        v34 = a1[8];
        if (v34)
        {
          v35 = a1[4];
          v36 = a1[2];
          v37 = a1[5];
          v38 = (a1[3] + 4);
          v39 = (*a1 + 8);
          do
          {
            *(v39 - 2) = -4194304 * *(v38 - 2);
            if (v35 >= 2)
            {
              *(v39 - 1) |= (-*(v38 - 1) & 0x3FF) << 12;
              if (v35 != 2)
              {
                *v39 |= (-4 * *v38) & 0xFFC;
                if (v35 >= 4)
                {
                  v39[1] |= -v38[1] & 3;
                }
              }
            }

            v38 = (v38 + v37);
            v39 = (v39 + v36);
            --v34;
          }

          while (v34);
        }

        return;
      }

      if (v3 == 7)
      {
        v58 = a1[8];
        if (v58)
        {
          v59 = a1[4];
          v60 = a1[2];
          v61 = a1[5];
          v62 = (a1[3] + 4);
          v63 = (*a1 + 8);
          do
          {
            *(v63 - 2) = -4194304 * *(v62 - 2);
            if (v59 >= 2)
            {
              *(v63 - 1) |= (-*(v62 - 1) & 0x3FF) << 12;
              if (v59 != 2)
              {
                *v63 |= (-4 * *v62) & 0xFFC;
                if (v59 >= 4)
                {
                  v63[1] |= -v62[1] & 3;
                }
              }
            }

            v62 = (v62 + v61);
            v63 = (v63 + v60);
            --v58;
          }

          while (v58);
        }

        return;
      }

      if (v3 != 8)
      {
        return;
      }

      if (a2 == 1.0)
      {
        v10 = a1[8];
        if (v10)
        {
          v11 = a1[4];
          v12 = a1[2];
          v13 = a1[5];
          v14 = (a1[3] + 8);
          v15 = (*a1 + 8);
          do
          {
            *(v15 - 2) = -4194304 * *(v14 - 2);
            if (v11 >= 2)
            {
              *(v15 - 1) |= (-4096 * *(v14 - 1)) & 0x3FF000;
              if (v11 != 2)
              {
                *v15 |= (-4 * *v14) & 0xFFC;
                if (v11 >= 4)
                {
                  v15[1] |= -v14[1] & 3;
                }
              }
            }

            v14 = (v14 + v13);
            v15 = (v15 + v12);
            --v10;
          }

          while (v10);
        }

        return;
      }
    }

    sub_239F68B08(nullsub_57, a1);
    return;
  }

  if (((a1[4] & 0xFFFF0000uLL) - 0x10000) >> 16 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (a2 == 1.0)
        {
          v52 = a1[8];
          if (v52)
          {
            v53 = a1[4];
            v54 = a1[2];
            v55 = a1[5];
            v56 = (a1[3] + 3);
            v57 = (*a1 + 8);
            do
            {
              *(v57 - 2) = -4194304 * *(v56 - 3);
              if (v53 >= 2)
              {
                *(v57 - 1) |= (-4096 * *(v56 - 2)) & 0x3FF000;
                if (v53 != 2)
                {
                  *v57 |= (-4 * *(v56 - 1)) & 0xFFC;
                  if (v53 >= 4)
                  {
                    v57[1] |= -*v56 & 3;
                  }
                }
              }

              v56 += v55;
              v57 = (v57 + v54);
              --v52;
            }

            while (v52);
          }
        }

        else
        {
          sub_239F68914(nullsub_53, a1);
        }
      }

      else if (v3 == 2)
      {
        v4 = a1[8];
        if (v4)
        {
          v5 = a1[4];
          v6 = a1[2];
          v7 = a1[5];
          v8 = (a1[3] + 3);
          v9 = (*a1 + 8);
          do
          {
            *(v9 - 2) = -4194304 * *(v8 - 3);
            if (v5 >= 2)
            {
              *(v9 - 1) |= (-4096 * *(v8 - 2)) & 0x3FF000;
              if (v5 != 2)
              {
                *v9 |= (-4 * *(v8 - 1)) & 0xFFC;
                if (v5 >= 4)
                {
                  v9[1] |= -*v8 & 3;
                }
              }
            }

            v8 += v7;
            v9 = (v9 + v6);
            --v4;
          }

          while (v4);
        }
      }
    }

    else if (a2 == 1.0)
    {
      v28 = a1[8];
      if (v28)
      {
        v29 = a1[4];
        v30 = a1[2];
        v31 = a1[5];
        v32 = (a1[3] + 3);
        v33 = (*a1 + 8);
        do
        {
          *(v33 - 2) = -4194304 * *(v32 - 3);
          if (v29 >= 2)
          {
            *(v33 - 1) |= (-4096 * *(v32 - 2)) & 0x3FF000;
            if (v29 != 2)
            {
              *v33 |= (-4 * *(v32 - 1)) & 0xFFC;
              if (v29 >= 4)
              {
                v33[1] |= -*v32 & 3;
              }
            }
          }

          v32 += v31;
          v33 = (v33 + v30);
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      sub_239F689B8(nullsub_54, a1);
    }

    return;
  }

  switch(v3)
  {
    case 3uLL:
      v40 = a1[8];
      if (v40)
      {
        v41 = a1[4];
        v42 = a1[2];
        v43 = a1[5];
        v44 = (a1[3] + 3);
        v45 = (*a1 + 8);
        do
        {
          *(v45 - 2) = -4194304 * *(v44 - 3);
          if (v41 >= 2)
          {
            *(v45 - 1) |= (-4096 * *(v44 - 2)) & 0x3FF000;
            if (v41 != 2)
            {
              *v45 |= (-4 * *(v44 - 1)) & 0xFFC;
              if (v41 >= 4)
              {
                v45[1] |= -*v44 & 3;
              }
            }
          }

          v44 += v43;
          v45 = (v45 + v42);
          --v40;
        }

        while (v40);
      }

      break;
    case 4uLL:
      if (a2 != 1.0)
      {
        v76 = nullsub_56;
        goto LABEL_122;
      }

      v64 = a1[8];
      if (v64)
      {
        v65 = a1[4];
        v66 = a1[2];
        v67 = a1[5];
        v68 = (a1[3] + 4);
        v69 = (*a1 + 8);
        do
        {
          *(v69 - 2) = -4194304 * *(v68 - 2);
          if (v65 >= 2)
          {
            *(v69 - 1) |= (-*(v68 - 1) & 0x3FF) << 12;
            if (v65 != 2)
            {
              *v69 |= (-4 * *v68) & 0xFFC;
              if (v65 >= 4)
              {
                v69[1] |= -v68[1] & 3;
              }
            }
          }

          v68 = (v68 + v67);
          v69 = (v69 + v66);
          --v64;
        }

        while (v64);
      }

      break;
    case 5uLL:
      if (a2 == 1.0)
      {
        v16 = a1[8];
        if (v16)
        {
          v17 = a1[4];
          v18 = a1[2];
          v19 = a1[5];
          v20 = (a1[3] + 4);
          v21 = (*a1 + 8);
          do
          {
            *(v21 - 2) = -4194304 * *(v20 - 2);
            if (v17 >= 2)
            {
              *(v21 - 1) |= (-*(v20 - 1) & 0x3FF) << 12;
              if (v17 != 2)
              {
                *v21 |= (-4 * *v20) & 0xFFC;
                if (v17 >= 4)
                {
                  v21[1] |= -v20[1] & 3;
                }
              }
            }

            v20 = (v20 + v19);
            v21 = (v21 + v18);
            --v16;
          }

          while (v16);
        }

        return;
      }

      v76 = nullsub_55;
LABEL_122:
      sub_239F68A5C(v76, a1);
      return;
    default:
      return;
  }
}

void sub_239F5FF24(float **a1, float a2, float a3)
{
  v3 = a2;
  v5 = a1[4];
  if ((v5 & 0x1000) != 0)
  {
    if (v5 == 593924)
    {
      v45 = a1[8];
      if (v45)
      {
        v46 = a2 * 0.00097752;
        v47 = *(a1 + 8);
        v48 = a1[2];
        v49 = a1[5];
        v50 = a1[3] + 2;
        v51 = *a1 + 2;
        do
        {
          *(v51 - 2) = v46 * (*(v50 - 2) >> 22);
          if (v47 >= 2)
          {
            *(v51 - 1) = v46 * ((*(v50 - 1) >> 12) & 0x3FF);
            if (v47 != 2)
            {
              *v51 = v46 * ((*v50 >> 2) & 0x3FF);
              if (v47 >= 4)
              {
                v51[1] = (v3 * 0.33333) * (v50[1] & 3);
              }
            }
          }

          v50 = (v49 + v50);
          v51 = (v48 + v51);
          v45 = (v45 - 1);
        }

        while (v45);
      }
    }

    else if (v5 == 659460)
    {
      v23 = a1[8];
      if (v23)
      {
        v24 = a2 * 0.0019569;
        v25 = *(a1 + 8);
        v26 = a1[2];
        v27 = a1[5];
        v28 = a1[3] + 2;
        v29 = *a1 + 2;
        do
        {
          *(v29 - 2) = v24 * (*(v28 - 2) >> 22);
          if (v25 >= 2)
          {
            *(v29 - 1) = v24 * ((*(v28 - 1) >> 12) & 0x3FF);
            if (v25 != 2)
            {
              *v29 = v24 * ((*v28 >> 2) & 0x3FF);
              if (v25 >= 4)
              {
                v29[1] = (v28[1] & 3) * v3;
              }
            }
          }

          v28 = (v27 + v28);
          v29 = (v26 + v29);
          v23 = (v23 - 1);
        }

        while (v23);
      }
    }
  }

  else
  {
    v6 = ((a1[4] & 0xFFFF0000) - 0x10000) >> 16;
    if (v6 > 5)
    {
      if (((a1[4] & 0xFFFF0000) - 0x10000) >> 16 > 8)
      {
        switch(v6)
        {
          case 9uLL:
            if (a2 == 1.0)
            {
              v130 = a1[8];
              if (v130)
              {
                v131 = 0;
                v132 = 0;
                v133 = a1[4];
                v135 = *a1;
                v134 = a1[1];
                if (v133 >= v134)
                {
                  v133 = a1[1];
                }

                v136 = a1[4];
                if (v134 < v5)
                {
                  v136 = a1[1];
                }

                v138 = a1[2];
                v137 = a1[3];
                v139 = a1[5];
                v140 = a1[6];
                v141 = a1[7];
                do
                {
                  if (v132 >= v140)
                  {
                    if (v134)
                    {
                      v144 = 0;
                      do
                      {
                        v135[v144] = truncf(v141[v144]);
                        ++v144;
                      }

                      while (v134 != v144);
                    }
                  }

                  else
                  {
                    if (v133)
                    {
                      for (i = 0; i != v133; ++i)
                      {
                        v135[i] = SLODWORD(v137[i]);
                      }
                    }

                    v143 = v136;
                    if (v5 < v134)
                    {
                      do
                      {
                        v135[v143] = truncf(v141[v143]);
                        ++v143;
                      }

                      while ((v134 - v133 + v136) != v143);
                    }
                  }

                  v135 = (v138 + v135);
                  v137 = (v139 + v137);
                  v132 += v139;
                  v131 = (v131 + 1);
                }

                while (v131 != v130);
              }
            }

            else
            {

              sub_239F69094(sub_239F69220, a1, a2);
            }

            break;
          case 0xAuLL:
            v212 = a1[8];
            if (v212)
            {
              v192 = 0;
              v193 = 0;
              v195 = *a1;
              v194 = a1[1];
              if (a1[4] >= v194)
              {
                v196 = a1[1];
              }

              else
              {
                v196 = a1[4];
              }

              if (v194 >= v5)
              {
                v197 = a1[4];
              }

              else
              {
                v197 = a1[1];
              }

              v207 = v197;
              v198 = a1[3];
              v210 = a1[2];
              v211 = a1[1];
              v199 = a1[7];
              v209 = a1[6];
              v208 = a1[5];
              v200 = 4 * v194;
              v201 = (v194 - v196 + v197);
              do
              {
                if (v193 >= v209)
                {
                  if (v211)
                  {
                    v204 = 0;
                    do
                    {
                      v195[v204 / 4] = sub_239F5E87C(v199[v204 / 4]) * v3;
                      v204 += 4;
                    }

                    while (v200 != v204);
                  }
                }

                else
                {
                  if (v196)
                  {
                    for (j = 0; j != v196; ++j)
                    {
                      v195[j] = sub_239F5E87C(*(v198 + j)) * v3;
                    }
                  }

                  v203 = v207;
                  if (v5 < v211)
                  {
                    do
                    {
                      v195[v203] = sub_239F5E87C(v199[v203]) * v3;
                      ++v203;
                    }

                    while (v201 != v203);
                  }
                }

                v195 = (v210 + v195);
                v198 = (v208 + v198);
                v193 += v208;
                v192 = (v192 + 1);
              }

              while (v192 != v212);
            }

            break;
          case 0xBuLL:
            if (a2 == 1.0)
            {
              v67 = a1[8];
              if (v67)
              {
                v68 = 0;
                v69 = 0;
                v70 = a1[4];
                v72 = *a1;
                v71 = a1[1];
                if (v70 >= v71)
                {
                  v70 = a1[1];
                }

                v73 = a1[4];
                if (v71 < v5)
                {
                  v73 = a1[1];
                }

                v75 = a1[2];
                v74 = a1[3];
                v76 = a1[5];
                v77 = a1[6];
                v78 = a1[7];
                do
                {
                  if (v69 >= v77)
                  {
                    if (v71)
                    {
                      v81 = 0;
                      do
                      {
                        v72[v81] = v78[v81];
                        ++v81;
                      }

                      while (v71 != v81);
                    }
                  }

                  else
                  {
                    if (v70)
                    {
                      for (k = 0; k != v70; ++k)
                      {
                        v72[k] = v74[k];
                      }
                    }

                    v80 = v73;
                    if (v5 < v71)
                    {
                      do
                      {
                        v72[v80] = v78[v80];
                        ++v80;
                      }

                      while ((v71 - v70 + v73) != v80);
                    }
                  }

                  v72 = (v75 + v72);
                  v74 = (v76 + v74);
                  v69 += v76;
                  v68 = (v68 + 1);
                }

                while (v68 != v67);
              }
            }

            else
            {

              sub_239F68BAC(sub_239F68D30, a1, a2);
            }

            break;
        }
      }

      else
      {
        switch(v6)
        {
          case 6uLL:
            v98 = a1[8];
            if (v98)
            {
              v99 = 0;
              v100 = 0;
              v101 = a2 * 0.000015259;
              v103 = *a1;
              v102 = a1[1];
              if (a1[4] >= v102)
              {
                v104 = a1[1];
              }

              else
              {
                v104 = a1[4];
              }

              v105 = a1[4];
              if (v102 < v5)
              {
                v105 = a1[1];
              }

              v107 = a1[2];
              v106 = a1[3];
              v108 = a1[5];
              v109 = a1[6];
              v110 = a1[7];
              do
              {
                if (v100 >= v109)
                {
                  if (v102)
                  {
                    v113 = 0;
                    do
                    {
                      a3 = v101 * truncf(v110[v113]);
                      v103[v113++] = a3;
                    }

                    while (v102 != v113);
                  }
                }

                else
                {
                  if (v104)
                  {
                    for (m = 0; m != v104; ++m)
                    {
                      LOWORD(a3) = *(v106 + m);
                      a3 = v101 * LODWORD(a3);
                      v103[m] = a3;
                    }
                  }

                  v112 = v105;
                  if (v5 < v102)
                  {
                    do
                    {
                      a3 = v101 * truncf(v110[v112]);
                      v103[v112++] = a3;
                    }

                    while ((v102 - v104 + v105) != v112);
                  }
                }

                v103 = (v107 + v103);
                v106 = (v108 + v106);
                v100 += v108;
                v99 = (v99 + 1);
              }

              while (v99 != v98);
            }

            break;
          case 7uLL:
            v160 = a1[8];
            if (v160)
            {
              v161 = 0;
              v162 = 0;
              v163 = a2 * 0.000030519;
              v165 = *a1;
              v164 = a1[1];
              if (a1[4] >= v164)
              {
                v166 = a1[1];
              }

              else
              {
                v166 = a1[4];
              }

              v167 = a1[4];
              if (v164 < v5)
              {
                v167 = a1[1];
              }

              v169 = a1[2];
              v168 = a1[3];
              v170 = a1[5];
              v171 = a1[6];
              v172 = a1[7];
              do
              {
                if (v162 >= v171)
                {
                  if (v164)
                  {
                    v175 = 0;
                    do
                    {
                      v165[v175] = v163 * truncf(v172[v175]);
                      ++v175;
                    }

                    while (v164 != v175);
                  }
                }

                else
                {
                  if (v166)
                  {
                    for (n = 0; n != v166; ++n)
                    {
                      v165[n] = v163 * *(v168 + n);
                    }
                  }

                  v174 = v167;
                  if (v5 < v164)
                  {
                    do
                    {
                      v165[v174] = v163 * truncf(v172[v174]);
                      ++v174;
                    }

                    while ((v164 - v166 + v167) != v174);
                  }
                }

                v165 = (v169 + v165);
                v168 = (v170 + v168);
                v162 += v170;
                v161 = (v161 + 1);
              }

              while (v161 != v160);
            }

            break;
          case 8uLL:
            if (a2 == 1.0)
            {
              v30 = a1[8];
              if (v30)
              {
                v31 = 0;
                v32 = 0;
                v33 = a1[4];
                v35 = *a1;
                v34 = a1[1];
                if (v33 >= v34)
                {
                  v33 = a1[1];
                }

                v36 = a1[4];
                if (v34 < v5)
                {
                  v36 = a1[1];
                }

                v38 = a1[2];
                v37 = a1[3];
                v39 = a1[5];
                v40 = a1[6];
                v41 = a1[7];
                do
                {
                  if (v32 >= v40)
                  {
                    if (v34)
                    {
                      v44 = 0;
                      do
                      {
                        v35[v44] = v41[v44];
                        ++v44;
                      }

                      while (v34 != v44);
                    }
                  }

                  else
                  {
                    if (v33)
                    {
                      for (ii = 0; ii != v33; ++ii)
                      {
                        v35[ii] = SLODWORD(v37[ii]);
                      }
                    }

                    v43 = v36;
                    if (v5 < v34)
                    {
                      do
                      {
                        v35[v43] = v41[v43];
                        ++v43;
                      }

                      while ((v34 - v33 + v36) != v43);
                    }
                  }

                  v35 = (v38 + v35);
                  v37 = (v39 + v37);
                  v32 += v39;
                  v31 = (v31 + 1);
                }

                while (v31 != v30);
              }
            }

            else
            {

              sub_239F69230(sub_239F69220, a1, a2);
            }

            break;
        }
      }
    }

    else if (((a1[4] & 0xFFFF0000) - 0x10000) >> 16 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          v176 = 1.0;
          if (v3 == 1.0)
          {
            v177 = a1[8];
            if (v177)
            {
              v178 = 0;
              v179 = 0;
              v181 = *a1;
              v180 = a1[1];
              if (a1[4] >= v180)
              {
                v182 = a1[1];
              }

              else
              {
                v182 = a1[4];
              }

              v183 = a1[4];
              if (v180 < v5)
              {
                v183 = a1[1];
              }

              v185 = a1[2];
              v184 = a1[3];
              v186 = a1[5];
              v187 = a1[6];
              v188 = a1[7];
              do
              {
                if (v179 >= v187)
                {
                  if (v180)
                  {
                    v191 = 0;
                    do
                    {
                      v176 = truncf(v188[v191]);
                      v181[v191++] = v176;
                    }

                    while (v180 != v191);
                  }
                }

                else
                {
                  if (v182)
                  {
                    for (jj = 0; jj != v182; ++jj)
                    {
                      LOWORD(v176) = *(v184 + jj);
                      v176 = LODWORD(v176);
                      v181[jj] = v176;
                    }
                  }

                  v190 = v183;
                  if (v5 < v180)
                  {
                    do
                    {
                      v176 = truncf(v188[v190]);
                      v181[v190++] = v176;
                    }

                    while ((v180 - v182 + v183) != v190);
                  }
                }

                v181 = (v185 + v181);
                v184 = (v186 + v184);
                v179 += v186;
                v178 = (v178 + 1);
              }

              while (v178 != v177);
            }

            return;
          }

          v205 = sub_239F69084;
          a2 = v3;
        }

        else
        {
          if (v6 != 5)
          {
            return;
          }

          if (a2 == 1.0)
          {
            v52 = a1[8];
            if (v52)
            {
              v53 = 0;
              v54 = 0;
              v56 = *a1;
              v55 = a1[1];
              if (a1[4] >= v55)
              {
                v57 = a1[1];
              }

              else
              {
                v57 = a1[4];
              }

              v58 = a1[4];
              if (v55 < v5)
              {
                v58 = a1[1];
              }

              v60 = a1[2];
              v59 = a1[3];
              v61 = a1[5];
              v62 = a1[6];
              v63 = a1[7];
              do
              {
                if (v54 >= v62)
                {
                  if (v55)
                  {
                    v66 = 0;
                    do
                    {
                      v56[v66] = truncf(v63[v66]);
                      ++v66;
                    }

                    while (v55 != v66);
                  }
                }

                else
                {
                  if (v57)
                  {
                    for (kk = 0; kk != v57; ++kk)
                    {
                      v56[kk] = *(v59 + kk);
                    }
                  }

                  v65 = v58;
                  if (v5 < v55)
                  {
                    do
                    {
                      v56[v65] = truncf(v63[v65]);
                      ++v65;
                    }

                    while ((v55 - v57 + v58) != v65);
                  }
                }

                v56 = (v60 + v56);
                v59 = (v61 + v59);
                v54 += v61;
                v53 = (v53 + 1);
              }

              while (v53 != v52);
            }

            return;
          }

          v205 = sub_239F69074;
        }

        sub_239F68EE8(v205, a1, a2);
        return;
      }

      v114 = a1[8];
      if (v114)
      {
        v115 = 0;
        v116 = 0;
        v117 = a2 * 0.007874;
        v119 = *a1;
        v118 = a1[1];
        if (a1[4] >= v118)
        {
          v120 = a1[1];
        }

        else
        {
          v120 = a1[4];
        }

        v121 = a1[4];
        if (v118 < v5)
        {
          v121 = a1[1];
        }

        v123 = a1[2];
        v122 = a1[3];
        v124 = a1[5];
        v125 = a1[6];
        v126 = a1[7];
        do
        {
          if (v116 >= v125)
          {
            if (v118)
            {
              v129 = 0;
              do
              {
                v119[v129] = v117 * truncf(v126[v129]);
                ++v129;
              }

              while (v118 != v129);
            }
          }

          else
          {
            if (v120)
            {
              for (mm = 0; mm != v120; ++mm)
              {
                v119[mm] = v117 * *(v122 + mm);
              }
            }

            v128 = v121;
            if (v5 < v118)
            {
              do
              {
                v119[v128] = v117 * truncf(v126[v128]);
                ++v128;
              }

              while ((v118 - v120 + v121) != v128);
            }
          }

          v119 = (v123 + v119);
          v122 = (v124 + v122);
          v116 += v124;
          v115 = (v115 + 1);
        }

        while (v115 != v114);
      }
    }

    else
    {
      if (v6)
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            v7 = a1[8];
            if (v7)
            {
              v8 = 0;
              v9 = 0;
              v10 = a2 * 0.0039216;
              v12 = *a1;
              v11 = a1[1];
              if (a1[4] >= v11)
              {
                v13 = a1[1];
              }

              else
              {
                v13 = a1[4];
              }

              v14 = a1[4];
              if (v11 < v5)
              {
                v14 = a1[1];
              }

              v16 = a1[2];
              v15 = a1[3];
              v17 = a1[5];
              v18 = a1[6];
              v19 = a1[7];
              do
              {
                if (v9 >= v18)
                {
                  if (v11)
                  {
                    v22 = 0;
                    do
                    {
                      v12[v22] = v10 * v19[v22];
                      ++v22;
                    }

                    while (v11 != v22);
                  }
                }

                else
                {
                  if (v13)
                  {
                    for (nn = 0; nn != v13; ++nn)
                    {
                      v12[nn] = v10 * *(v15 + nn);
                    }
                  }

                  v21 = v14;
                  if (v5 < v11)
                  {
                    do
                    {
                      v12[v21] = v10 * v19[v21];
                      ++v21;
                    }

                    while ((v11 - v13 + v14) != v21);
                  }
                }

                v12 = (v16 + v12);
                v15 = (v17 + v15);
                v9 += v17;
                v8 = (v8 + 1);
              }

              while (v8 != v7);
            }
          }

          return;
        }

        if (a2 == 1.0)
        {
          v145 = a1[8];
          if (v145)
          {
            v146 = 0;
            v147 = 0;
            v149 = *a1;
            v148 = a1[1];
            if (a1[4] >= v148)
            {
              v150 = a1[1];
            }

            else
            {
              v150 = a1[4];
            }

            v151 = a1[4];
            if (v148 < v5)
            {
              v151 = a1[1];
            }

            v153 = a1[2];
            v152 = a1[3];
            v154 = a1[5];
            v155 = a1[6];
            v156 = a1[7];
            do
            {
              if (v147 >= v155)
              {
                if (v148)
                {
                  v159 = 0;
                  do
                  {
                    v149[v159] = truncf(v156[v159]);
                    ++v159;
                  }

                  while (v148 != v159);
                }
              }

              else
              {
                if (v150)
                {
                  for (i1 = 0; i1 != v150; ++i1)
                  {
                    v149[i1] = *(v152 + i1);
                  }
                }

                v158 = v151;
                if (v5 < v148)
                {
                  do
                  {
                    v149[v158] = truncf(v156[v158]);
                    ++v158;
                  }

                  while ((v148 - v150 + v151) != v158);
                }
              }

              v149 = (v153 + v149);
              v152 = (v154 + v152);
              v147 += v154;
              v146 = (v146 + 1);
            }

            while (v146 != v145);
          }

          return;
        }

        v206 = sub_239F68EC8;

LABEL_279:
        sub_239F68D3C(v206, a1, a2);
        return;
      }

      v82 = 1.0;
      if (v3 != 1.0)
      {
        v206 = sub_239F68ED8;
        a2 = v3;

        goto LABEL_279;
      }

      v83 = a1[8];
      if (v83)
      {
        v84 = 0;
        v85 = 0;
        v87 = *a1;
        v86 = a1[1];
        if (a1[4] >= v86)
        {
          v88 = a1[1];
        }

        else
        {
          v88 = a1[4];
        }

        v89 = a1[4];
        if (v86 < v5)
        {
          v89 = a1[1];
        }

        v91 = a1[2];
        v90 = a1[3];
        v92 = a1[5];
        v93 = a1[6];
        v94 = a1[7];
        do
        {
          if (v85 >= v93)
          {
            if (v86)
            {
              v97 = 0;
              do
              {
                v82 = truncf(v94[v97]);
                v87[v97++] = v82;
              }

              while (v86 != v97);
            }
          }

          else
          {
            if (v88)
            {
              for (i2 = 0; i2 != v88; ++i2)
              {
                LOBYTE(v82) = *(v90 + i2);
                v82 = LODWORD(v82);
                v87[i2] = v82;
              }
            }

            v96 = v89;
            if (v5 < v86)
            {
              do
              {
                v82 = truncf(v94[v96]);
                v87[v96++] = v82;
              }

              while ((v86 - v88 + v89) != v96);
            }
          }

          v87 = (v91 + v87);
          v90 = (v92 + v90);
          v85 += v92;
          v84 = (v84 + 1);
        }

        while (v84 != v83);
      }
    }
  }
}

void sub_239F60F2C(uint64_t a1, float a2)
{
  v4 = *(a1 + 32);
  if ((v4 & 0x1000) != 0)
  {
    if (v4 == 593924)
    {
      if (*(a1 + 64))
      {
        v40 = 0;
        v41 = a2 * 0.00097752;
        v42 = *(a1 + 24);
        v43 = *a1;
        do
        {
          v44 = *(a1 + 8);
          *v43 = (v41 * (*v42 >> 22));
          if (v44 >= 2)
          {
            v43[1] = (v41 * ((v42[1] >> 12) & 0x3FF));
            if (v44 != 2)
            {
              v43[2] = (v41 * ((v42[2] >> 2) & 0x3FF));
              if (v44 >= 4)
              {
                v43[3] = ((a2 * 0.33333) * (v42[3] & 3));
              }
            }
          }

          v43 += *(a1 + 16);
          v42 = (v42 + *(a1 + 40));
          ++v40;
        }

        while (v40 < *(a1 + 64));
      }
    }

    else if (v4 == 659460 && *(a1 + 64))
    {
      v21 = 0;
      v22 = a2 * 0.0019569;
      v23 = *(a1 + 24);
      v24 = *a1;
      do
      {
        v25 = *(a1 + 8);
        *v24 = (v22 * (*v23 >> 22));
        if (v25 >= 2)
        {
          v24[1] = (v22 * ((v23[1] >> 12) & 0x3FF));
          if (v25 != 2)
          {
            v24[2] = (v22 * ((v23[2] >> 2) & 0x3FF));
            if (v25 >= 4)
            {
              v24[3] = ((v23[3] & 3) * a2);
            }
          }
        }

        v24 += *(a1 + 16);
        v23 = (v23 + *(a1 + 40));
        ++v21;
      }

      while (v21 < *(a1 + 64));
    }
  }

  else
  {
    v5 = ((*(a1 + 32) & 0xFFFF0000uLL) - 0x10000) >> 16;
    if (v5 > 5)
    {
      if (((*(a1 + 32) & 0xFFFF0000uLL) - 0x10000) >> 16 > 8)
      {
        switch(v5)
        {
          case 9uLL:
            if (a2 == 1.0)
            {
              if (*(a1 + 64))
              {
                v117 = 0;
                v118 = 0;
                v120 = *a1;
                v119 = *(a1 + 8);
                if (*(a1 + 32) >= v119)
                {
                  v121 = *(a1 + 8);
                }

                else
                {
                  v121 = *(a1 + 32);
                }

                v122 = *(a1 + 24);
                v123 = *(a1 + 32);
                if (v119 < v4)
                {
                  v123 = *(a1 + 8);
                }

                do
                {
                  if (v118 >= *(a1 + 48))
                  {
                    if (v119)
                    {
                      v129 = 0;
                      do
                      {
                        v120[v129] = *(*(a1 + 56) + 4 * v129);
                        ++v129;
                      }

                      while (v119 != v129);
                    }
                  }

                  else
                  {
                    v124 = v122;
                    v125 = v120;
                    v126 = v121;
                    if (v121)
                    {
                      do
                      {
                        v127 = *v124++;
                        *v125++ = v127;
                        --v126;
                      }

                      while (v126);
                    }

                    v128 = v123;
                    if (v4 < v119)
                    {
                      do
                      {
                        v120[v128] = *(*(a1 + 56) + 4 * v128);
                        ++v128;
                      }

                      while ((v119 - v121 + v123) != v128);
                    }
                  }

                  v120 += *(a1 + 16);
                  v130 = *(a1 + 40);
                  v122 = (v122 + v130);
                  v118 += v130;
                  ++v117;
                }

                while (v117 < *(a1 + 64));
              }
            }

            else
            {

              sub_239F698B0(sub_239F69A38, a1, a2);
            }

            break;
          case 0xAuLL:
            if (*(a1 + 64))
            {
              v174 = 0;
              v175 = 0;
              v176 = *a1;
              v177 = *(a1 + 8);
              v178 = v177;
              if (*(a1 + 32) >= v177)
              {
                v179 = *(a1 + 8);
              }

              else
              {
                v179 = *(a1 + 32);
              }

              v180 = *(a1 + 24);
              if (v177 >= v4)
              {
                v181 = *(a1 + 32);
              }

              else
              {
                v181 = *(a1 + 8);
              }

              v194 = v181;
              v195 = v179;
              v182 = (v177 - v179 + v181);
              v196 = *(a1 + 8);
              v197 = *(a1 + 32);
              do
              {
                if (v175 >= *(a1 + 48))
                {
                  if (v177)
                  {
                    v188 = 0;
                    do
                    {
                      v176[v188] = (sub_239F5E87C(*(*(a1 + 56) + 4 * v188)) * a2);
                      ++v188;
                    }

                    while (v178 != v188);
                  }
                }

                else
                {
                  v183 = v180;
                  v184 = v176;
                  v185 = v195;
                  if (v195)
                  {
                    do
                    {
                      v186 = *v183++;
                      *v184++ = (sub_239F5E87C(v186) * a2);
                      --v185;
                    }

                    while (v185);
                  }

                  LOBYTE(v177) = v196;
                  v187 = v194;
                  if (v197 < v196)
                  {
                    do
                    {
                      v176[v187] = (sub_239F5E87C(*(*(a1 + 56) + 4 * v187)) * a2);
                      ++v187;
                    }

                    while (v182 != v187);
                  }
                }

                v176 += *(a1 + 16);
                v189 = *(a1 + 40);
                v180 = (v180 + v189);
                v175 += v189;
                ++v174;
              }

              while (v174 < *(a1 + 64));
            }

            break;
          case 0xBuLL:
            if (a2 == 1.0)
            {
              if (*(a1 + 64))
              {
                v59 = 0;
                v60 = 0;
                v62 = *a1;
                v61 = *(a1 + 8);
                if (*(a1 + 32) >= v61)
                {
                  v63 = *(a1 + 8);
                }

                else
                {
                  v63 = *(a1 + 32);
                }

                v64 = *(a1 + 24);
                v65 = *(a1 + 32);
                if (v61 < v4)
                {
                  v65 = *(a1 + 8);
                }

                do
                {
                  if (v60 >= *(a1 + 48))
                  {
                    if (v61)
                    {
                      v71 = 0;
                      do
                      {
                        v62[v71] = *(*(a1 + 56) + 4 * v71);
                        ++v71;
                      }

                      while (v61 != v71);
                    }
                  }

                  else
                  {
                    v66 = v64;
                    v67 = v62;
                    v68 = v63;
                    if (v63)
                    {
                      do
                      {
                        v69 = *v66++;
                        *v67++ = v69;
                        --v68;
                      }

                      while (v68);
                    }

                    v70 = v65;
                    if (v4 < v61)
                    {
                      do
                      {
                        v62[v70] = *(*(a1 + 56) + 4 * v70);
                        ++v70;
                      }

                      while ((v61 - v63 + v65) != v70);
                    }
                  }

                  v62 += *(a1 + 16);
                  v72 = *(a1 + 40);
                  v64 = (v64 + v72);
                  v60 += v72;
                  ++v59;
                }

                while (v59 < *(a1 + 64));
              }
            }

            else
            {

              sub_239F693C0(sub_239F69540, a1, a2);
            }

            break;
        }
      }

      else
      {
        switch(v5)
        {
          case 6uLL:
            if (*(a1 + 64))
            {
              v87 = 0;
              v88 = 0;
              v89 = a2 * 0.000015259;
              v91 = *a1;
              v90 = *(a1 + 8);
              if (*(a1 + 32) >= v90)
              {
                v92 = *(a1 + 8);
              }

              else
              {
                v92 = *(a1 + 32);
              }

              v93 = *(a1 + 24);
              v94 = *(a1 + 32);
              if (v90 < v4)
              {
                v94 = *(a1 + 8);
              }

              do
              {
                if (v88 >= *(a1 + 48))
                {
                  if (v90)
                  {
                    v100 = 0;
                    do
                    {
                      v91[v100] = (v89 * truncf(*(*(a1 + 56) + 4 * v100)));
                      ++v100;
                    }

                    while (v90 != v100);
                  }
                }

                else
                {
                  v95 = v93;
                  v96 = v91;
                  v97 = v92;
                  if (v92)
                  {
                    do
                    {
                      v98 = *v95++;
                      *v96++ = (v89 * v98);
                      --v97;
                    }

                    while (v97);
                  }

                  v99 = v94;
                  if (v4 < v90)
                  {
                    do
                    {
                      v91[v99] = (v89 * truncf(*(*(a1 + 56) + 4 * v99)));
                      ++v99;
                    }

                    while ((v90 - v92 + v94) != v99);
                  }
                }

                v91 += *(a1 + 16);
                v101 = *(a1 + 40);
                v93 = (v93 + v101);
                v88 += v101;
                ++v87;
              }

              while (v87 < *(a1 + 64));
            }

            break;
          case 7uLL:
            if (*(a1 + 64))
            {
              v145 = 0;
              v146 = 0;
              v147 = a2 * 0.000030519;
              v149 = *a1;
              v148 = *(a1 + 8);
              if (*(a1 + 32) >= v148)
              {
                v150 = *(a1 + 8);
              }

              else
              {
                v150 = *(a1 + 32);
              }

              v151 = *(a1 + 24);
              v152 = *(a1 + 32);
              if (v148 < v4)
              {
                v152 = *(a1 + 8);
              }

              do
              {
                if (v146 >= *(a1 + 48))
                {
                  if (v148)
                  {
                    v158 = 0;
                    do
                    {
                      v149[v158] = (v147 * truncf(*(*(a1 + 56) + 4 * v158)));
                      ++v158;
                    }

                    while (v148 != v158);
                  }
                }

                else
                {
                  v153 = v151;
                  v154 = v149;
                  v155 = v150;
                  if (v150)
                  {
                    do
                    {
                      v156 = *v153++;
                      *v154++ = (v147 * v156);
                      --v155;
                    }

                    while (v155);
                  }

                  v157 = v152;
                  if (v4 < v148)
                  {
                    do
                    {
                      v149[v157] = (v147 * truncf(*(*(a1 + 56) + 4 * v157)));
                      ++v157;
                    }

                    while ((v148 - v150 + v152) != v157);
                  }
                }

                v149 += *(a1 + 16);
                v159 = *(a1 + 40);
                v151 = (v151 + v159);
                v146 += v159;
                ++v145;
              }

              while (v145 < *(a1 + 64));
            }

            break;
          case 8uLL:
            if (a2 == 1.0)
            {
              if (*(a1 + 64))
              {
                v26 = 0;
                v27 = 0;
                v29 = *a1;
                v28 = *(a1 + 8);
                if (*(a1 + 32) >= v28)
                {
                  v30 = *(a1 + 8);
                }

                else
                {
                  v30 = *(a1 + 32);
                }

                v31 = *(a1 + 24);
                v32 = *(a1 + 32);
                if (v28 < v4)
                {
                  v32 = *(a1 + 8);
                }

                do
                {
                  if (v27 >= *(a1 + 48))
                  {
                    if (v28)
                    {
                      v38 = 0;
                      do
                      {
                        v29[v38] = *(*(a1 + 56) + 4 * v38);
                        ++v38;
                      }

                      while (v28 != v38);
                    }
                  }

                  else
                  {
                    v33 = v31;
                    v34 = v29;
                    v35 = v30;
                    if (v30)
                    {
                      do
                      {
                        v36 = *v33++;
                        *v34++ = v36;
                        --v35;
                      }

                      while (v35);
                    }

                    v37 = v32;
                    if (v4 < v28)
                    {
                      do
                      {
                        v29[v37] = *(*(a1 + 56) + 4 * v37);
                        ++v37;
                      }

                      while ((v28 - v30 + v32) != v37);
                    }
                  }

                  v29 += *(a1 + 16);
                  v39 = *(a1 + 40);
                  v31 = (v31 + v39);
                  v27 += v39;
                  ++v26;
                }

                while (v26 < *(a1 + 64));
              }
            }

            else
            {

              sub_239F69A4C(sub_239F69A38, a1, a2);
            }

            break;
        }
      }
    }

    else if (((*(a1 + 32) & 0xFFFF0000uLL) - 0x10000) >> 16 > 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          if (a2 == 1.0)
          {
            if (*(a1 + 64))
            {
              v160 = 0;
              v161 = 0;
              v163 = *a1;
              v162 = *(a1 + 8);
              if (*(a1 + 32) >= v162)
              {
                v164 = *(a1 + 8);
              }

              else
              {
                v164 = *(a1 + 32);
              }

              v165 = *(a1 + 24);
              v166 = *(a1 + 32);
              if (v162 < v4)
              {
                v166 = *(a1 + 8);
              }

              do
              {
                if (v161 >= *(a1 + 48))
                {
                  if (v162)
                  {
                    v172 = 0;
                    do
                    {
                      v163[v172] = *(*(a1 + 56) + 4 * v172);
                      ++v172;
                    }

                    while (v162 != v172);
                  }
                }

                else
                {
                  v167 = v165;
                  v168 = v163;
                  v169 = v164;
                  if (v164)
                  {
                    do
                    {
                      v170 = *v167;
                      v167 += 2;
                      *v168++ = v170;
                      --v169;
                    }

                    while (v169);
                  }

                  v171 = v166;
                  if (v4 < v162)
                  {
                    do
                    {
                      v163[v171] = *(*(a1 + 56) + 4 * v171);
                      ++v171;
                    }

                    while ((v162 - v164 + v166) != v171);
                  }
                }

                v163 += *(a1 + 16);
                v173 = *(a1 + 40);
                v165 += v173;
                v161 += v173;
                ++v160;
              }

              while (v160 < *(a1 + 64));
            }

            return;
          }

          v190 = sub_239F6989C;
          v191 = a1;
        }

        else
        {
          if (v5 != 5)
          {
            return;
          }

          if (a2 == 1.0)
          {
            if (*(a1 + 64))
            {
              v45 = 0;
              v46 = 0;
              v48 = *a1;
              v47 = *(a1 + 8);
              if (*(a1 + 32) >= v47)
              {
                v49 = *(a1 + 8);
              }

              else
              {
                v49 = *(a1 + 32);
              }

              v50 = *(a1 + 24);
              v51 = *(a1 + 32);
              if (v47 < v4)
              {
                v51 = *(a1 + 8);
              }

              do
              {
                if (v46 >= *(a1 + 48))
                {
                  if (v47)
                  {
                    v57 = 0;
                    do
                    {
                      v48[v57] = *(*(a1 + 56) + 4 * v57);
                      ++v57;
                    }

                    while (v47 != v57);
                  }
                }

                else
                {
                  v52 = v50;
                  v53 = v48;
                  v54 = v49;
                  if (v49)
                  {
                    do
                    {
                      v55 = *v52;
                      v52 += 2;
                      *v53++ = v55;
                      --v54;
                    }

                    while (v54);
                  }

                  v56 = v51;
                  if (v4 < v47)
                  {
                    do
                    {
                      v48[v56] = *(*(a1 + 56) + 4 * v56);
                      ++v56;
                    }

                    while ((v47 - v49 + v51) != v56);
                  }
                }

                v48 += *(a1 + 16);
                v58 = *(a1 + 40);
                v50 += v58;
                v46 += v58;
                ++v45;
              }

              while (v45 < *(a1 + 64));
            }

            return;
          }

          v190 = sub_239F69888;
          v191 = a1;
        }

        sub_239F69700(v190, v191, a2);
        return;
      }

      if (*(a1 + 64))
      {
        v102 = 0;
        v103 = 0;
        v104 = a2 * 0.007874;
        v106 = *a1;
        v105 = *(a1 + 8);
        if (*(a1 + 32) >= v105)
        {
          v107 = *(a1 + 8);
        }

        else
        {
          v107 = *(a1 + 32);
        }

        v108 = *(a1 + 24);
        v109 = *(a1 + 32);
        if (v105 < v4)
        {
          v109 = *(a1 + 8);
        }

        do
        {
          if (v103 >= *(a1 + 48))
          {
            if (v105)
            {
              v115 = 0;
              do
              {
                v106[v115] = (v104 * truncf(*(*(a1 + 56) + 4 * v115)));
                ++v115;
              }

              while (v105 != v115);
            }
          }

          else
          {
            v110 = v108;
            v111 = v106;
            v112 = v107;
            if (v107)
            {
              do
              {
                v113 = *v110++;
                *v111++ = (v104 * v113);
                --v112;
              }

              while (v112);
            }

            v114 = v109;
            if (v4 < v105)
            {
              do
              {
                v106[v114] = (v104 * truncf(*(*(a1 + 56) + 4 * v114)));
                ++v114;
              }

              while ((v105 - v107 + v109) != v114);
            }
          }

          v106 += *(a1 + 16);
          v116 = *(a1 + 40);
          v108 += v116;
          v103 += v116;
          ++v102;
        }

        while (v102 < *(a1 + 64));
      }
    }

    else
    {
      if (v5)
      {
        if (v5 != 1)
        {
          if (v5 == 2 && *(a1 + 64))
          {
            v6 = 0;
            v7 = 0;
            v8 = a2 * 0.0039216;
            v10 = *a1;
            v9 = *(a1 + 8);
            if (*(a1 + 32) >= v9)
            {
              v11 = *(a1 + 8);
            }

            else
            {
              v11 = *(a1 + 32);
            }

            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            if (v9 < v4)
            {
              v13 = *(a1 + 8);
            }

            do
            {
              if (v7 >= *(a1 + 48))
              {
                if (v9)
                {
                  v19 = 0;
                  do
                  {
                    v10[v19] = (v8 * *(*(a1 + 56) + 4 * v19));
                    ++v19;
                  }

                  while (v9 != v19);
                }
              }

              else
              {
                v14 = v12;
                v15 = v10;
                v16 = v11;
                if (v11)
                {
                  do
                  {
                    v17 = *v14++;
                    *v15++ = (v8 * v17);
                    --v16;
                  }

                  while (v16);
                }

                v18 = v13;
                if (v4 < v9)
                {
                  do
                  {
                    v10[v18] = (v8 * *(*(a1 + 56) + 4 * v18));
                    ++v18;
                  }

                  while ((v9 - v11 + v13) != v18);
                }
              }

              v10 += *(a1 + 16);
              v20 = *(a1 + 40);
              v12 += v20;
              v7 += v20;
              ++v6;
            }

            while (v6 < *(a1 + 64));
          }

          return;
        }

        if (a2 == 1.0)
        {
          if (*(a1 + 64))
          {
            v131 = 0;
            v132 = 0;
            v134 = *a1;
            v133 = *(a1 + 8);
            if (*(a1 + 32) >= v133)
            {
              v135 = *(a1 + 8);
            }

            else
            {
              v135 = *(a1 + 32);
            }

            v136 = *(a1 + 24);
            v137 = *(a1 + 32);
            if (v133 < v4)
            {
              v137 = *(a1 + 8);
            }

            do
            {
              if (v132 >= *(a1 + 48))
              {
                if (v133)
                {
                  v143 = 0;
                  do
                  {
                    v134[v143] = *(*(a1 + 56) + 4 * v143);
                    ++v143;
                  }

                  while (v133 != v143);
                }
              }

              else
              {
                v138 = v136;
                v139 = v134;
                v140 = v135;
                if (v135)
                {
                  do
                  {
                    v141 = *v138++;
                    *v139++ = v141;
                    --v140;
                  }

                  while (v140);
                }

                v142 = v137;
                if (v4 < v133)
                {
                  do
                  {
                    v134[v142] = *(*(a1 + 56) + 4 * v142);
                    ++v142;
                  }

                  while ((v133 - v135 + v137) != v142);
                }
              }

              v134 += *(a1 + 16);
              v144 = *(a1 + 40);
              v136 += v144;
              v132 += v144;
              ++v131;
            }

            while (v131 < *(a1 + 64));
          }

          return;
        }

        v192 = sub_239F696D8;
        v193 = a1;

LABEL_259:
        sub_239F69550(v192, v193, a2);
        return;
      }

      if (a2 != 1.0)
      {
        v192 = sub_239F696EC;
        v193 = a1;

        goto LABEL_259;
      }

      if (*(a1 + 64))
      {
        v73 = 0;
        v74 = 0;
        v76 = *a1;
        v75 = *(a1 + 8);
        if (*(a1 + 32) >= v75)
        {
          v77 = *(a1 + 8);
        }

        else
        {
          v77 = *(a1 + 32);
        }

        v78 = *(a1 + 24);
        v79 = *(a1 + 32);
        if (v75 < v4)
        {
          v79 = *(a1 + 8);
        }

        do
        {
          if (v74 >= *(a1 + 48))
          {
            if (v75)
            {
              v85 = 0;
              do
              {
                v76[v85] = *(*(a1 + 56) + 4 * v85);
                ++v85;
              }

              while (v75 != v85);
            }
          }

          else
          {
            v80 = v78;
            v81 = v76;
            v82 = v77;
            if (v77)
            {
              do
              {
                v83 = *v80++;
                *v81++ = v83;
                --v82;
              }

              while (v82);
            }

            v84 = v79;
            if (v4 < v75)
            {
              do
              {
                v76[v84] = *(*(a1 + 56) + 4 * v84);
                ++v84;
              }

              while ((v75 - v77 + v79) != v84);
            }
          }

          v76 += *(a1 + 16);
          v86 = *(a1 + 40);
          v78 += v86;
          v74 += v86;
          ++v73;
        }

        while (v73 < *(a1 + 64));
      }
    }
  }
}