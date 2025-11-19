void sub_1885596B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, id obj, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

id sub_1885597D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(%d)", a5);

  return v5;
}

id sub_1885598BC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_conformsToProtocol_(v2, v3, &unk_1EFA934A0))
  {
    v6 = objc_msgSend_mutableCopy(v2, v4, v5);
  }

  else
  {
    v6 = objc_msgSend_copy(v2, v4, v5);
  }

  v7 = v6;

  return v7;
}

void sub_1885599A0(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188559A44(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_188559B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  v13 = v12;

  objc_sync_exit(obj);
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_188559C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188559DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188559EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_188559FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18855A02C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v8 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v14);

  if (v10)
  {
    objc_msgSend_intersectVector_(v5, v11, v10);
  }

  else
  {
    v12 = objc_opt_new();
    objc_msgSend_intersectVector_(v5, v13, v12);
  }
}

void sub_18855A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18855A2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18855A47C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18855A4C0(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v8 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v18);

  if (v10)
  {
    objc_msgSend_unionVector_(v10, v11, v5);
  }

  else
  {
    v13 = objc_msgSend_mutableCopy(v5, v11, v12);
    v16 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v13, v18);
  }
}

void sub_18855A588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_18855A5D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18855AD24(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_18855B3C0(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_18855B4E8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855B5AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855B668(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_18855B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = objc_opt_new();
  v9 = v7;
  if (a5 & 0xFF00) != 0x200 || (*(a1 + 32))
  {
    if ((a5 & 0xFF00) != 0x200)
    {
      goto LABEL_12;
    }

    if (*(a1 + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    v10 = @"L";
    objc_msgSend_appendString_(v9, v8, @"L");
    goto LABEL_8;
  }

  objc_msgSend_appendString_(v7, v8, @"(");
  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = objc_msgSend_CKSuperscriptForLetter_(MEMORY[0x1E696AEC0], v8, 76);
  v11 = 1;
  objc_msgSend_appendString_(v9, v12, v10);
LABEL_8:
  if (v11)
  {
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    objc_msgSend_appendString_(v9, v13, @""));
  }

LABEL_12:

  return v9;
}

void sub_18855B908(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_18855BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_18855BE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_18855BFE0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_18855C5E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_18855CD7C(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_18855CEFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855CFC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855D07C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18855D12C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18855D284(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_18855D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = objc_opt_new();
  v9 = v7;
  if ((*(a1 + 32) & 1) == 0)
  {
    objc_msgSend_appendString_(v7, v8, @"(");
  }

  if ((a5 & 0xFF00) == 0x200)
  {
    v10 = *(a1 + 32);
    if (v10 == 1)
    {
      v11 = objc_msgSend_CKSuperscriptForLetter_(MEMORY[0x1E696AEC0], v8, 76);
      objc_msgSend_appendString_(v9, v12, v11);
    }

    else
    {
      v11 = @"L";
      objc_msgSend_appendString_(v9, v8, @"L");
    }

    if (v10)
    {
    }
  }

  if (*(a1 + 32) == 1)
  {
    objc_msgSend_CKSuperscriptForNumber_(MEMORY[0x1E696AEC0], v8, a5);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%lu", a5);
  }
  v13 = ;
  objc_msgSend_appendString_(v9, v14, v13);

  if ((*(a1 + 32) & 1) == 0)
  {
    objc_msgSend_appendString_(v9, v15, @""));
  }

  return v9;
}

void sub_18855DA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, id a10, uint64_t a11, uint64_t a12)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t sub_18855DBA0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_shortValue(v4, v6, v7) >> 8;
  v11 = objc_msgSend_shortValue(v5, v9, v10) >> 8;
  v14 = objc_msgSend_shortValue(v4, v12, v13);
  v17 = objc_msgSend_shortValue(v5, v15, v16);
  v18 = v8 > v11;
  if (v8 < v11)
  {
    v18 = -1;
  }

  if (v14 > v17)
  {
    v18 = 1;
  }

  if (v14 >= v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_18855DFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, id a11, uint64_t a12, void *a13, uint64_t a14)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t sub_18855E0DC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_shortValue(v4, v6, v7) >> 8;
  v11 = objc_msgSend_shortValue(v5, v9, v10) >> 8;
  v14 = objc_msgSend_shortValue(v4, v12, v13);
  v17 = objc_msgSend_shortValue(v5, v15, v16);
  v18 = v8 > v11;
  if (v8 < v11)
  {
    v18 = -1;
  }

  if (v14 > v17)
  {
    v18 = 1;
  }

  if (v14 >= v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_18855E360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_18855E634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18855E67C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 40) == (objc_msgSend_shortValue(v15, v6, v7) & 0xFF00) >> 8)
  {
    v10 = objc_msgSend_mutableCopy(v5, v8, v9);
    v13 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v10, v15);
  }
}

void sub_18855E720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18855E84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18855E894(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 40) == objc_msgSend_shortValue(v15, v6, v7))
  {
    v10 = objc_msgSend_mutableCopy(v5, v8, v9);
    v13 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v10, v15);
  }
}

void sub_18855E934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18855EB88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17 = v3;
  v7 = objc_msgSend_modifier(v3, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, v7);

  if (!v9)
  {
    v11 = objc_opt_new();
    v12 = *(a1 + 32);
    v15 = objc_msgSend_modifier(v17, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v16, v11, v15);

    v9 = v11;
  }

  objc_msgSend_addObject_(v9, v10, v17);
}

void sub_18855EC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_18855EC8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a4)
  {
    v10 = *(a1 + 32);
    v35 = v7;
    v11 = objc_msgSend_modifier(v7, v8, v9);
    v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, v11);

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v13;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v36, v40, 16);
    if (v17)
    {
      v18 = a3 + a4;
      v19 = a3 + a4 - 1;
      v20 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = objc_msgSend_identifier(v22, v15, v16);
          v26 = objc_msgSend_identifier(v35, v24, v25);
          v27 = CKDistributedTimestampLWWCompare(v23, 0, v26, 0);

          if (v27 == -1)
          {
            v29 = v18;
          }

          else
          {
            v29 = v19;
          }

          v30 = *(a1 + 40);
          v31 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v28, 0, v29);
          objc_msgSend_addClockValuesInIndexSet_withAttribute_forSiteIdentifier_(v30, v32, v31, bswap32((*(a1 + 48) << 8) | 2) >> 16, v22);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v36, v40, 16);
      }

      while (v17);
    }

    v7 = v35;
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t CKDistributedTimestampLWWCompare(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v9 = a3;
  if (a2 <= a4)
  {
    if (a4 <= a2)
    {
      v10 = objc_msgSend_CKCompare_(v7, v8, v9);
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_18855F04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_18855F07C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(a1 + 40) == objc_msgSend_shortValue(v10, v6, v7))
  {
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_timestampCount(v5, v8, v9);
  }
}

void sub_18855F2AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_18855F43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_18855F478(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  objc_sync_enter(v8);
  v11 = objc_msgSend_clockValues(v8, v9, v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18855F5B4;
  v15[3] = &unk_1E70BD630;
  v16 = *(a1 + 32);
  v12 = v7;
  v13 = *(a1 + 40);
  v17 = v12;
  v18 = v13;
  v19 = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v14, v15);

  objc_sync_exit(v8);
}

void sub_18855F578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18855F5B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_modifier(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v6, v7, *(a1 + 32));

  if (isEqual)
  {
    v11 = objc_msgSend_shortValue(*(a1 + 40), v9, v10);
    v12 = *(a1 + 56);
    *(*(*(a1 + 48) + 8) + 24) = BYTE1(v11);
    *v12 = 1;
    *a4 = 1;
  }
}

void sub_18855F838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose((v37 - 128), 8);
  _Block_object_dispose((v37 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_18855F8A8(void *a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, _BYTE *a6)
{
  v12 = a2;
  if (a4)
  {
    v27 = v12;
    v15 = 6;
    if ((a5 & 0xFF00) == 0x200)
    {
      v15 = 5;
    }

    *(*(a1[v15] + 8) + 24) = 1;
    if ((*(*(a1[5] + 8) + 24) & 1) != 0 && *(*(a1[6] + 8) + 24) == 1)
    {
      v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a1[10], a1[4], @"CKDistributedTimestampVector.mm", 1792, @"It is not possible to mix and match regular and lwwPerModifier clock types for a given site identifier modifier (rdar://84695941)");
    }

    if ((a5 & 0xFF00) == 0x200)
    {
      v16 = a4 + a3 - 1;
      v17 = *(a1[7] + 8);
      v18 = *(v17 + 40);
      if (v18)
      {
        v19 = objc_msgSend_identifier(v18, v13, v14);
        v20 = *(*(a1[8] + 8) + 24);
        v23 = objc_msgSend_identifier(v27, v21, v22);
        v24 = CKDistributedTimestampLWWCompare(v19, v20, v23, v16);

        v12 = v27;
        if (v24 != -1)
        {
          goto LABEL_14;
        }

        v17 = *(a1[7] + 8);
      }

      objc_storeStrong((v17 + 40), a2);
      *(*(a1[8] + 8) + 24) = v16;
      *(*(a1[9] + 8) + 24) = a5;
    }

    else
    {
      *a6 = 1;
    }

    v12 = v27;
  }

LABEL_14:
}

void sub_18855FB44(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18855FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_18855FEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1885601E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *a11, void *a12, void *a13, id obj)
{
  objc_sync_exit(obj);

  objc_sync_exit(a10);
  _Unwind_Resume(a1);
}

void sub_188560384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1885603C0(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v6 = objc_msgSend_mutableCopy(a1, v4, v5);
  objc_msgSend_removeIndexes_(v6, v7, v9);
  objc_msgSend_removeIndexes_(a1, v8, v6);
}

__CFString *sub_188560448(uint64_t a1, const char *a2, unint64_t a3)
{
  if (a3 >= 0xA)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(%lu)", a3);
  }

  else
  {
    v4 = off_1E70BD718[a3];
  }

  return v4;
}

__CFString *sub_1885604B4(uint64_t a1, const char *a2, int a3)
{
  if (a3 - 65) < 0x37 && ((0x7AFFDB007AFFDBuLL >> (a3 - 65)))
  {
    v4 = off_1E70BD768[(a3 - 65)];
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(%c)", a3);
  }

  return v4;
}

uint64_t sub_188560540(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, a2);
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, v5);
  v11 = objc_msgSend_compare_(v7, v10, v9);

  return v11;
}

void sub_1885605BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1885605E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(*(a1 + 56) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = 0;
  }

  else
  {
    objc_msgSend_appendFormat_(*(a1 + 32), a2, @",");
  }

  if (a3 == 1)
  {
    objc_msgSend_appendFormat_(*(a1 + 32), a2, @"%lu", a2);
  }

  else
  {
    objc_msgSend_appendFormat_(*(a1 + 32), a2, @"%lu-%lu", a2, &a2[a3 - 1]);
  }

  v7 = *(a1 + 40);
  v9 = (*(*(a1 + 48) + 16))();
  if (v9)
  {
    objc_msgSend_appendString_(*(a1 + 32), v8, v9);
  }
}

uint64_t sub_1885627D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E695DF00];
  objc_msgSend_time(a2, a2, a3);

  return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v3, v4, v5);
}

void sub_188563DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_188563DF0(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_code(v6, v7, v8) == 2)
  {
    if (objc_msgSend_code(v6, v9, v10) == 2)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v13 = objc_msgSend_userInfo(v6, v11, v12);
      v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"CKPartialErrors");

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v5);
        if (objc_msgSend_code(v17, v18, v19) == 2)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v21 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
          {
            v32 = 138412290;
            v33 = v17;
            _os_log_fault_impl(&dword_1883EA000, v21, OS_LOG_TYPE_FAULT, "There are too many layers of nested partial failure errors to fully flatten. Adding this error without flattening: %@", &v32, 0xCu);
          }
        }

        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v20, v17, v5);
      }
    }
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v9, v6, v5);
    v24 = *(*(a1 + 40) + 8);
    v27 = *(v24 + 40);
    v25 = (v24 + 40);
    v26 = v27;
    if (v27)
    {
      v28 = objc_msgSend_code(v26, v22, v23);
      if (v28 != objc_msgSend_code(v6, v29, v30))
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else
    {
      objc_storeStrong(v25, a3);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_188564230(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v8 = v5;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = objc_msgSend_userInfo(v5, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"RequestUUID");
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = objc_msgSend_userInfo(v8, v6, v7);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"ContainerID");
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = objc_msgSend_CKClientSuitableError(v8, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v20, v19, v21);
}

uint64_t CKErrorCodeForNSURLErrorCode(uint64_t a1)
{
  result = 3;
  if ((a1 + 1020) > 0x11 || ((1 << (a1 - 4)) & 0x34805) == 0)
  {
    v3 = 4;
    if (a1 == -1)
    {
      v3 = 3;
    }

    if (a1 != -2000)
    {
      return v3;
    }
  }

  return result;
}

BOOL sub_188564390(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain"))
  {
    v14 = objc_msgSend_code(a1, v6, v7) == 2003 || objc_msgSend_code(a1, v8, v9) == 2036 || objc_msgSend_code(a1, v10, v11) == 2042 || objc_msgSend_code(a1, v12, v13) == 2056;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL sub_188564424(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain"))
  {
    v8 = objc_msgSend_code(a1, v6, v7) == 2003;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_188564480(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x1E696AA08]);

  v8 = objc_msgSend_domain(v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"CKInternalErrorDomain"))
  {
    v10 = CKTopLevelUnderlyingErrorCodes();
    v11 = MEMORY[0x1E696AD98];
    v14 = objc_msgSend_code(v5, v12, v13);
    v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
    v18 = objc_msgSend_containsObject_(v10, v17, v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_188564550(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_domain(a1, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"CKErrorDomain"))
  {
    v11 = objc_msgSend_code(a1, v9, v10);

    if (v11 == 2)
    {
      v13 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v12, v4);
      v16 = objc_msgSend_userInfo(a1, v14, v15);
      v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"CKPartialErrors");

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = sub_188564734;
      v40[3] = &unk_1E70BDA48;
      v19 = v13;
      v41 = v19;
      v21 = objc_msgSend_CKFilter_(v18, v20, v40);
      if (objc_msgSend_count(v21, v22, v23))
      {
        v26 = objc_msgSend_userInfo(a1, v24, v25);
        v29 = objc_msgSend_mutableCopy(v26, v27, v28);

        objc_msgSend_setObject_forKeyedSubscript_(v29, v30, v21, @"CKPartialErrors");
        v33 = objc_msgSend_domain(a1, v31, v32);
        v36 = objc_msgSend_code(a1, v34, v35);
        v38 = objc_msgSend_errorWithDomain_code_userInfo_(CKPrettyError, v37, v33, v36, v29);
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v38 = a1;
LABEL_9:

  return v38;
}

uint64_t sub_188564734(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_zoneID(v3, v4, v5);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }

    v6 = v3;
  }

  v8 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  v9 = objc_msgSend_containsObject_(*(a1 + 32), v7, v6);

LABEL_8:
  return v9;
}

id sub_1885647DC(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_domain(a1, v4, v5);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"CKErrorDomain");

    if ((isEqualToString & 1) == 0 || objc_msgSend_code(a1, v10, v11) != 2)
    {
      v23 = a1;
      goto LABEL_8;
    }

    v14 = objc_msgSend_userInfo(a1, v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"CKPartialErrors");

    if (v16)
    {
      v19 = objc_msgSend_userInfo(a1, v17, v18);
      v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"CKPartialErrors");
      v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v6);

      goto LABEL_8;
    }
  }

  v23 = 0;
LABEL_8:

  return v23;
}

BOOL CKErrorIsCode(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_code(v3, v4, v5);
  v9 = objc_msgSend_domain(v3, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v14 = objc_msgSend_code(v3, v12, v13);

    v6 = CKErrorCodeForUnderlyingErrorCode(v14, v15, v16);
    return v6 == a2;
  }

  v17 = objc_msgSend_domain(v3, v12, v13);

  v19 = objc_msgSend_isEqualToString_(v17, v18, @"CKErrorDomain");
  if (v19)
  {
    return v6 == a2;
  }

  return 0;
}

uint64_t CKCanRetryForError(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_code(v1, v2, v3);
  v7 = objc_msgSend_domain(v1, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v12 = objc_msgSend_code(v1, v10, v11);

    v4 = CKErrorCodeForUnderlyingErrorCode(v12, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_domain(v1, v10, v11);

    v17 = objc_msgSend_isEqualToString_(v15, v16, @"CKErrorDomain");
    if (!v17)
    {
      return 0;
    }
  }

  result = 1;
  if ((v4 > 0x19 || ((1 << v4) & 0x29002F8) == 0) && v4 != 115)
  {
    return 0;
  }

  return result;
}

void sub_188564A80(uint64_t a1, const char *a2, void *a3)
{
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  obj = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"CKRetryAfter");

  v8 = obj;
  if (obj)
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 40))
    {
      objc_msgSend_doubleValue(obj, v6, v7);
      v11 = v10;
      objc_msgSend_doubleValue(*(*(*(a1 + 32) + 8) + 40), v12, v13);
      v8 = obj;
      if (v11 >= v14)
      {
        goto LABEL_6;
      }

      v9 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v9 + 40), obj);
    v8 = obj;
  }

LABEL_6:
}

void sub_188564B58(uint64_t a1, const char *a2)
{
  v9[11] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E696AA08];
  v9[0] = @"CKPartialErrors";
  v9[1] = v3;
  v9[2] = *MEMORY[0x1E696A750];
  v9[3] = @"CKFunctionError";
  v9[4] = @"AncestorRecord";
  v9[5] = @"ServerRecord";
  v9[6] = @"ClientRecord";
  v9[7] = @"NotFoundItemID";
  v9[8] = @"CKRecordMovedDestinationID";
  v9[9] = @"CKSessionReadinessErrorBox";
  v9[10] = @"CKSessionInvalidationContext";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v9, 11);
  v6 = objc_msgSend_setWithArray_(v2, v5, v4);
  v7 = qword_1ED4B6168;
  qword_1ED4B6168 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

BOOL CKShouldWrapErrorFetchingRecords(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString && ((v9 = objc_msgSend_code(v1, v7, v8), (v9 - 5006) > 8) || ((1 << (v9 + 114)) & 0x10D) == 0))
  {
    v10 = v9 != 2036 && v9 != 10006;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void CKAddResponseHeaderValuesToUserInfoDictionary(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_statusCode(v3, v5, v6);
  if ((v8 - 200) >= 0x64)
  {
    v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"CKHTTPStatus");
  }

  v11 = objc_msgSend_valueForHTTPHeaderField_(v3, v7, @"Retry-After");
  v14 = v11;
  if (v11 || v8 == 503 || v8 == 429)
  {
    v15 = objc_msgSend_intValue(v11, v12, v13);
    if (v15 >= 86400)
    {
      v17 = 86400;
    }

    else
    {
      v17 = v15;
    }

    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    if (v18 != v15)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v29 = 138412546;
        v30 = v14;
        v31 = 1024;
        v32 = v18;
        _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "Invalid or out of range Retry-After header value: %@. Used %d", &v29, 0x12u);
      }
    }

    v20 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v21, v20, @"CKRetryAfter");
  }

  v22 = objc_msgSend_valueForHTTPHeaderField_(v3, v12, @"X-Apple-Request-UUID");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v23, v22, @"RequestUUID");

  v26 = objc_msgSend_allHeaderFields(v3, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v26, @"CKDHTTPHeaders");

  v28 = *MEMORY[0x1E69E9840];
}

id CKErrorFromHTTPResponse(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_statusCode(v1, v2, v3);
  if ((v4 - 200) <= 0x63)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v14 = v4;
      _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Expected failure HTTP status code (%ld)", buf, 0xCu);
    }
  }

  if (v4 == 503 || v4 == 429)
  {
    v7 = 2009;
  }

  else
  {
    v7 = 2001;
  }

  v8 = objc_opt_new();
  CKAddResponseHeaderValuesToUserInfoDictionary(v1, v8);

  v10 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v9, @"CKInternalErrorDomain", v7, v8, @"Request failed with http status code %ld", v4);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t CKErrorShouldDefer(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain");

  if (isEqualToString)
  {
    v9 = objc_msgSend_code(v1, v7, v8);
    if ((v9 - 131) >= 3)
    {
      if (v9 == 20)
      {
        v12 = objc_msgSend_userInfo(v1, v10, v11);
        v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x1E696AA08]);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isEqualToString = CKErrorShouldDefer(v14);

          goto LABEL_9;
        }
      }

      isEqualToString = 0;
      goto LABEL_9;
    }

    isEqualToString = 1;
  }

LABEL_9:

  return isEqualToString;
}

id sub_1885679A8(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v4, v12, v6, v7, v8, v9, v10, v11, 0);
  v15 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v14, v13, v5);

  return v15;
}

void sub_188569E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  objc_sync_exit(v19);
  os_activity_scope_leave((v20 - 80));
  _Unwind_Resume(a1);
}

void sub_188569E74(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting proxy for max mergeable delta size: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188569F54(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18856A000;
  v5[3] = &unk_1E70BDB98;
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_msgSend_suggestedMergeableDeltaSizeWithCompletionHandler_(a2, v4, v5);
}

void sub_18856A000(void *a1, const char *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v8 = objc_msgSend_mutableCopy(qword_1ED4B5F40, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v9, *(*(a1[6] + 8) + 40), a1[4]);
  v12 = objc_msgSend_copy(v8, v10, v11);
  v13 = qword_1ED4B5F40;
  qword_1ED4B5F40 = v12;

  v16 = objc_msgSend_mutableCopy(qword_1ED4B5F48, v14, v15);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v18, v19);
  v22 = objc_msgSend_numberWithDouble_(v17, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v16, v23, v22, a1[4]);

  v26 = objc_msgSend_copy(v16, v24, v25);
  v27 = qword_1ED4B5F48;
  qword_1ED4B5F48 = v26;

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v28 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
  {
    v29 = a1[5];
    v30 = v28;
    v33 = objc_msgSend_containerIdentifier(v29, v31, v32);
    v36 = objc_msgSend_integerValue(*(*(a1[6] + 8) + 40), v34, v35);
    v38 = 138412546;
    v39 = v33;
    v40 = 2048;
    v41 = v36;
    _os_log_impl(&dword_1883EA000, v30, OS_LOG_TYPE_INFO, "Fetched suggested delta size from daemon for container %@: %ld", &v38, 0x16u);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_18856F064(uint64_t a1, const char *a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    a4.n128_u64[0] = 134218754;
    v18 = a4;
    do
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v10 = *(a1 + 32);
      v11 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], a2, v8, *&v18);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_18856F2B4;
      v20[3] = &unk_1E70BDC08;
      v21 = *(a1 + 40);
      v22 = &v23;
      objc_msgSend_enumerateObjectsForIndexes_usingBlock_(v10, v12, v11, v20);

      if (!v24[3])
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v13 = ck_log_facility_distributed_sync;
        if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 48);
          v15 = *(a1 + 56);
          v16 = *(a1 + 64);
          *buf = v18.n128_u32[0];
          v28 = v8;
          v29 = 2112;
          v30 = v14;
          v31 = 2112;
          v32 = v15;
          v33 = 2112;
          v34 = v16;
          _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "[Batch Replacement] Could not find causal batch for state changed clock value %lu in batch %@ with eligible removals vector %@ and current state vector %@", buf, 0x2Au);
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
        *a7 = 1;
      }

      _Block_object_dispose(&v23, 8);
      ++v8;
      --v7;
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_18856F280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18856F2B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_addObject_(*(a1 + 32), a2, a4);
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_18856F2F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = objc_msgSend_vectors(v3, v4, v5);
  v9 = objc_msgSend_contents(v6, v7, v8);
  v12 = objc_msgSend_backingVector(v9, v10, v11);
  v15 = objc_msgSend_attributeToSparseVector(v12, v13, v14);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_18856F474;
  v21[3] = &unk_1E70BD358;
  v21[4] = &v22;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v16, v21);

  v17 = *(a1 + 32);
  v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v18, v23[3]);
  objc_msgSend_setObject_forKey_(v17, v20, v19, v3);

  _Block_object_dispose(&v22, 8);
}

void sub_18856F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18856F474(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v8 = objc_msgSend_unsignedShortValue(v11, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_timestampCount(v5, v9, v10) * v8;
}

uint64_t sub_18856F514(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_vectors(v5, v7, v8);
  v12 = objc_msgSend_contents(v9, v10, v11);
  v15 = objc_msgSend_timestampCount(v12, v13, v14);
  v18 = objc_msgSend_vectors(v6, v16, v17);
  v21 = objc_msgSend_contents(v18, v19, v20);
  v24 = objc_msgSend_timestampCount(v21, v22, v23);

  if (v15 < v24)
  {
    v27 = 1;
    goto LABEL_13;
  }

  v28 = objc_msgSend_vectors(v5, v25, v26);
  v31 = objc_msgSend_contents(v28, v29, v30);
  v34 = objc_msgSend_timestampCount(v31, v32, v33);
  v37 = objc_msgSend_vectors(v6, v35, v36);
  v40 = objc_msgSend_contents(v37, v38, v39);
  v43 = objc_msgSend_timestampCount(v40, v41, v42);

  if (v34 > v43)
  {
    v27 = -1;
    goto LABEL_13;
  }

  v45 = objc_msgSend_objectForKey_(*(a1 + 32), v44, v5);
  v47 = objc_msgSend_objectForKey_(*(a1 + 32), v46, v6);
  v50 = v47;
  if (!v45)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v48, v49);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, *(a1 + 40), *(a1 + 48), @"CKMergeableDeltaMetadata+DeltaMetadataCalculations.mm", 305, @"Cached sum for delta1 not found");

    if (v50)
    {
      goto LABEL_7;
    }

LABEL_15:
    v65 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v48, v49);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v65, v66, *(a1 + 40), *(a1 + 48), @"CKMergeableDeltaMetadata+DeltaMetadataCalculations.mm", 306, @"Cached sum for delta2 not found");

    goto LABEL_7;
  }

  if (!v47)
  {
    goto LABEL_15;
  }

LABEL_7:
  v51 = objc_msgSend_unsignedIntegerValue(v45, v48, v49);
  v54 = objc_msgSend_unsignedIntegerValue(v50, v52, v53);
  if (v51 >= v54)
  {
    if (v51 > v54)
    {
      v27 = -1;
    }

    else
    {
      v57 = objc_msgSend_identifier(v5, v55, v56);
      v60 = objc_msgSend_identifier(v6, v58, v59);
      v27 = objc_msgSend_compare_(v57, v61, v60);
    }
  }

  else
  {
    v27 = 1;
  }

LABEL_13:
  return v27;
}

void sub_18856F7D4(void **a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a2;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v45, v49, 16);
  if (v3)
  {
    v42 = *v46;
    do
    {
      v4 = 0;
      do
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        v8 = objc_msgSend_objectForKeyedSubscript_(obj, v7, v5);
        v11 = objc_msgSend_vectors(v8, v9, v10);
        v14 = objc_msgSend_contents(v11, v12, v13);
        v16 = objc_msgSend_vectorFilteredByAtomState_(v14, v15, 3);

        v19 = objc_msgSend_vectors(v8, v17, v18);
        v22 = objc_msgSend_contents(v19, v20, v21);
        v25 = objc_msgSend_mutableCopy(v22, v23, v24);

        v28 = objc_msgSend_clockVector(v16, v26, v27);
        objc_msgSend_minusVector_(v25, v29, v28);

        v32 = objc_msgSend_vectors(a1[4], v30, v31);
        v35 = objc_msgSend_contents(v32, v33, v34);
        hasAtomStateNotInStateVector = objc_msgSend_hasAtomStateNotInStateVector_(v25, v36, v35);

        if ((hasAtomStateNotInStateVector & 1) == 0)
        {
          objc_msgSend_addObject_(a1[5], v38, v5);
          objc_msgSend_addObject_(a1[6], v39, v8);
        }

        objc_autoreleasePoolPop(v6);
        ++v4;
      }

      while (v3 != v4);
      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v45, v49, 16);
    }

    while (v3);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void sub_188570EAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v6, v5) & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = objc_msgSend_identifier(v5, v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v9, v11, v10);

    v13 = *(a1 + 48);
    v45 = v12;
    v16 = objc_msgSend_identifier(v5, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v13, v17, v16);

    v20 = objc_msgSend_clockValuesForSiteIdentifier_(v12, v19, *(a1 + 56));
    v22 = objc_msgSend_clockValuesForSiteIdentifier_(v18, v21, *(a1 + 56));
    v24 = objc_msgSend_clockValuesForSiteIdentifier_(*(a1 + 64), v23, *(a1 + 56));
    v25 = objc_opt_new();
    objc_msgSend_addIndexes_(v25, v26, v20);
    objc_msgSend_addIndexes_(v25, v27, v22);
    objc_msgSend_removeIndexes_(v25, v28, v24);
    v31 = objc_msgSend_mutableCopy(v25, v29, v30);
    objc_msgSend_removeIndexes_(v31, v32, *(a1 + 72));
    objc_msgSend_removeIndexes_(v25, v33, v31);
    v36 = objc_msgSend_mutableCopy(v25, v34, v35);
    v37 = *(a1 + 80);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_188571188;
    v46[3] = &unk_1E70BDCD0;
    v47 = *(a1 + 32);
    v38 = *(a1 + 88);
    v39 = *(a1 + 56);
    v48 = v38;
    v49 = v39;
    v40 = v36;
    v50 = v40;
    objc_msgSend_enumerateObjectsForIndexes_usingBlock_(v37, v41, v25, v46);
    if (objc_msgSend_count(v40, v42, v43))
    {
      objc_msgSend_addObject_(*(a1 + 32), v44, v5);
    }
  }
}

void sub_188571188(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a4;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v5, v15) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = objc_msgSend_identifier(v15, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v8, v10, v9);

    v13 = objc_msgSend_clockValuesForSiteIdentifier_(v11, v12, *(a1 + 48));
    objc_msgSend_removeIndexes_(*(a1 + 56), v14, v13);
  }
}

uint64_t sub_18857189C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_addClockValues_(*(a1 + 32), a2, a2);
  v6 = *(a1 + 32);

  return objc_msgSend_addClockValueLengths_(v6, v5, a3);
}

uint64_t sub_1885718E4(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v6 = objc_msgSend_pClockTypeAndAtomStateFromClockType_atomState_(*(a1 + 40), a2, a4 >> 8, a4);
  objc_msgSend_addStateValues_(*(a1 + 32), v7, v6);
  v9 = *(a1 + 32);

  return objc_msgSend_addStateValueLengths_(v9, v8, a3);
}

void sub_188571E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, id a13, id a14)
{
  objc_sync_exit(v14);
  objc_sync_exit(obj);
  objc_sync_exit(a13);
  objc_sync_exit(a14);
  _Unwind_Resume(a1);
}

void sub_18857557C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v8 = objc_msgSend_valueID(v4, v6, v7);
    v9 = 138412546;
    v10 = v8;
    v11 = 2048;
    v12 = 300;
    _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Mergeable %@ exceeded high limit of %lu site identifiers", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_188575688(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v8 = objc_msgSend_valueID(v4, v6, v7);
    v9 = 138412546;
    v10 = v8;
    v11 = 2048;
    v12 = 100;
    _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Mergeable %@ exceeded medium limit of %lu site identifiers", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_188575794(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v8 = objc_msgSend_valueID(v4, v6, v7);
    v9 = 138412546;
    v10 = v8;
    v11 = 2048;
    v12 = 50;
    _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Mergeable %@ exceeded low limit of %lu site identifiers", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_188577614(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void sub_1885776D8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v11 = objc_msgSend_removableDeltaMetadatas(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_containsObject_(v11, v12, v7);

  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v57 = v7;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Will fold delta %@ into new delta", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v57 = v7;
      v58 = 2112;
      v59 = v8;
      _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Generating replacement for delta %@: %@", buf, 0x16u);
    }

    v17 = *(a1 + 40);
    v18 = *(*(a1 + 64) + 8);
    obj = *(v18 + 40);
    v19 = objc_msgSend_mergeableDeltasForMetadata_error_(v17, v16, v8, &obj);
    objc_storeStrong((v18 + 40), obj);
    if (v19 && !*(*(*(a1 + 64) + 8) + 40))
    {
      v22 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v20, v7);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v23 = v19;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v50, v55, 16);
      if (v25)
      {
        v28 = v25;
        v29 = *v51;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v23);
            }

            v31 = objc_msgSend_metadata(*(*(&v50 + 1) + 8 * i), v26, v27, v50);
            objc_msgSend_setReplacedDeltaIdentifiers_(v31, v32, v22);
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v50, v55, 16);
        }

        while (v28);
      }

      v33 = [CKReplaceDeltasRequest alloc];
      v36 = objc_msgSend_valueID(*(a1 + 48), v34, v35);
      v39 = objc_msgSend_allObjects(v22, v37, v38);
      v41 = objc_msgSend_initWithValueID_deltaIdentifiersToReplace_replacementDeltas_replacementDeltasContainNewData_(v33, v40, v36, v39, v23, 1);

      objc_msgSend_addObject_(*(a1 + 56), v42, v41);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 48);
        v45 = v21;
        v48 = objc_msgSend_valueID(v44, v46, v47);
        v49 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v57 = v48;
        v58 = 2112;
        v59 = v49;
        _os_log_error_impl(&dword_1883EA000, v45, OS_LOG_TYPE_ERROR, "Error generating replacement deltas for %@: %@", buf, 0x16u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

__CFString *CKPCSKeyToRemoveKeyTypeString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"INVALID";
  }

  else
  {
    return off_1E70BDE18[a1 - 1];
  }
}

uint64_t CKPCSKeyToRemoveKeyTypeFromString(void *a1)
{
  v1 = a1;
  v2 = 1;
  if (objc_msgSend_compare_options_(v1, v3, @"Primary", 1))
  {
    if (objc_msgSend_compare_options_(v1, v4, @"KeyPair", 1))
    {
      if (objc_msgSend_compare_options_(v1, v5, @"Sharee", 1))
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  return v2;
}

uint64_t sub_18857CA30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_length(v4, v6, v7);
  v11 = objc_msgSend_length(v5, v9, v10);
  if (v8)
  {
    if (v11)
    {
      if (objc_msgSend_isEqualToData_(v4, v12, v5))
      {
        v13 = 0;
        goto LABEL_16;
      }

      v14 = v4;
      v17 = objc_msgSend_bytes(v14, v15, v16);
      v18 = v5;
      v21 = objc_msgSend_bytes(v18, v19, v20);
      v24 = objc_msgSend_length(v4, v22, v23);
      v27 = objc_msgSend_length(v5, v25, v26);
      if (v24 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v24;
      }

      v29 = memcmp(v17, v21, v28);
      if (v29 < 0 || !v29 && (v32 = objc_msgSend_length(v4, v30, v31), v32 < objc_msgSend_length(v5, v33, v34)))
      {
        v13 = -1;
        goto LABEL_16;
      }
    }

    v13 = 1;
    goto LABEL_16;
  }

  if (v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  return v13;
}

id sub_18857D5EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v6 = objc_msgSend_copySortDescriptor_(v4, v5, v3);

  return v6;
}

id sub_18857D640(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v6 = objc_msgSend_copySortDescriptor_(v4, v5, v3);

  return v6;
}

void sub_18857DB38()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E696AE70]);
  v7 = 0;
  v2 = objc_msgSend_initWithPattern_options_error_(v0, v1, @"^                                                      (.{1,255})                                             \\[                                                       (-?\\d{1,8})                                           (\\.\\.\\<|\\.\\.\\.)                                  (-?\\d{1,8})                                        \\]                                                    $", 2, &v7);
  v3 = v7;
  v4 = qword_1ED4B6170;
  qword_1ED4B6170 = v2;

  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v9 = @"^                                                      (.{1,255})                                             \\[                                                       (-?\\d{1,8})                                           (\\.\\.\\<|\\.\\.\\.)                                  (-?\\d{1,8})                                        \\]                                                    $";
      v10 = 2112;
      v11 = v3;
      _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Couldn't initialize indexed list key regular expression with pattern %{public}@: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id CKValidateIndexedArrayKeys(void *a1, int a2)
{
  v3 = a1;
  if (!objc_msgSend_count(v3, v4, v5))
  {
    goto LABEL_49;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v61 = 0;
    v62 = 0;
    v9 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, v8);
    v60 = 0;
    v10 = CKProcessIndexedArrayKey(v9, &v60, &v62, &v61);
    v11 = v60;

    if (v10)
    {
      v53 = v10;
LABEL_52:

      goto LABEL_53;
    }

    if (v11)
    {
      v7 = 1;
      if (a2)
      {
        if (!v61)
        {
          v54 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, v8);
          v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v55, @"CKErrorDomain", 12, @"indexed list key (%@) has zero length", v54);

          goto LABEL_52;
        }
      }
    }

    ++v8;
  }

  while (v8 < objc_msgSend_count(v3, v13, v14));
  if ((v7 & 1) == 0)
  {
LABEL_49:
    v53 = 0;
    goto LABEL_54;
  }

  v11 = objc_msgSend_set(MEMORY[0x1E695DFA8], v6, v15);
  v18 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v16, v17);
  if (!objc_msgSend_count(v3, v19, v20))
  {
LABEL_48:

    v53 = 0;
    goto LABEL_53;
  }

  v22 = 0;
  v57 = v18;
  while (1)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v3, v21, v22);
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v24 = CKProcessIndexedArrayKey(v23, &v59, &v62, &v61);
    v25 = v59;
    v26 = v25;
    if (v24)
    {
      v53 = v24;
      goto LABEL_61;
    }

    v27 = v25 ? v25 : v23;
    v28 = v27;

    if (!v26)
    {
      break;
    }

    if (objc_msgSend_containsObject_(v11, v29, v26))
    {
      goto LABEL_60;
    }

    v31 = objc_msgSend_objectForKey_(v18, v30, v26);

    if (!v31)
    {
      v34 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v32, v33);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v35, v34, v26);
    }

    v36 = objc_msgSend_objectForKeyedSubscript_(v18, v32, v26);
    v38 = v36;
    v39 = 2 * v62;
    if (v62 < 0)
    {
      if (v61 >= ~v62)
      {
        v45 = ~v62;
      }

      else
      {
        v45 = v61;
      }

      v46 = v61 + v62;
      if (v61 + v62 < 0 != __OFADD__(v61, v62))
      {
        v46 = -1;
      }

      v47 = v46 + 1;
      v48 = v39 ^ 0x8000000000000000;
      if (v45 < 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2 * v45;
      }

      if (v45 >= 1)
      {
        v41 = 2 * v62 - 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v48;
      }

      v42 = v47 != 0;
      v58 = 2 * v47;
    }

    else
    {
      v58 = 0;
      if (v61)
      {
        v40 = 2 * v61 - 1;
      }

      else
      {
        v40 = 1;
      }

      if (v61)
      {
        v41 = v39 | 1;
      }

      else
      {
        v41 = 2 * v62;
      }

      v42 = 0;
    }

    if (objc_msgSend_intersectsIndexesInRange_(v36, v37, v41, v40))
    {
LABEL_58:
      v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v49, @"CKErrorDomain", 12, @"Indexed list key (%@) overlaps with existing indexed list key", v23);

      v18 = v57;
      goto LABEL_61;
    }

    objc_msgSend_addIndexesInRange_(v38, v49, v41, v40);
    if (v42)
    {
      if (objc_msgSend_intersectsIndexesInRange_(v38, v50, 0, v58))
      {
        goto LABEL_58;
      }

      objc_msgSend_addIndexesInRange_(v38, v49, 0, v58);
    }

    v18 = v57;
LABEL_47:

    if (++v22 >= objc_msgSend_count(v3, v51, v52))
    {
      goto LABEL_48;
    }
  }

  v43 = objc_msgSend_objectForKey_(v18, v29, v23);
  if (!v43)
  {
    objc_msgSend_addObject_(v11, v44, v23);
    v26 = v23;
    goto LABEL_47;
  }

LABEL_60:
  v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v30, @"CKErrorDomain", 12, @"Cannot mix indexed and non-indexed list keys (%@)", v23);
  v26 = v28;
LABEL_61:

LABEL_53:
LABEL_54:

  return v53;
}

void sub_18857F044(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v10 = objc_msgSend_recordID(v7, v8, v9);

      if (v10)
      {
LABEL_20:

        goto LABEL_21;
      }

      v13 = objc_msgSend_recordID(a1, v11, v12);
      objc_msgSend_setRecordID_(v7, v14, v13);
LABEL_5:

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v17 = objc_msgSend_valueID(v7, v15, v16);

      if (v17)
      {
        goto LABEL_20;
      }

      v18 = [CKMergeableValueID alloc];
      v21 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v19, v20);
      v24 = objc_msgSend_UUIDString(v21, v22, v23);
      v27 = objc_msgSend_recordID(a1, v25, v26);
      isEncrypted = objc_msgSend_isEncrypted(a1, v28, v29);
      v13 = objc_msgSend_initWithName_recordID_key_encrypted_(v18, v31, v24, v27, v6, isEncrypted);

      objc_msgSend_setValueID_(v7, v32, v13);
      objc_msgSend_setIsValueIDKnownToServer_(v7, v33, 0);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v34 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v13;
        _os_log_impl(&dword_1883EA000, v34, OS_LOG_TYPE_INFO, "Assigning new mergeable value ID %@", buf, 0xCu);
      }

      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = v5;
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v35, &v42, v46, 16);
      if (v36)
      {
        v37 = v36;
        v38 = *v43;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v43 != v38)
            {
              objc_enumerationMutation(v7);
            }

            sub_18857F044(a1, *(*(&v42 + 1) + 8 * i), v6);
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v40, &v42, v46, 16);
        }

        while (v37);
      }

      goto LABEL_20;
    }
  }

LABEL_21:

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18857FB98(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 32) + 16))();
  return v2;
}

id sub_18858078C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKEncryptedData alloc];
  v6 = objc_msgSend_initWithValue_(v4, v5, v3);

  sub_1885807FC(*(a1 + 32), v6, *(a1 + 40));

  return v6;
}

void sub_1885807FC(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_data(v15, v5, v6);
    v11 = objc_msgSend_length(v8, v9, v10);

    if (v11 >= 0x6400001)
    {
      v12 = [CKException alloc];
      v14 = objc_msgSend_initWithName_format_(v12, v13, *MEMORY[0x1E695D940], @"Plaintext is too large in size for key %@", v7);
      objc_exception_throw(v14);
    }
  }
}

void sub_188581EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = objc_msgSend_deltasToSave(v17, v3, v4);
  v8 = objc_msgSend_allObjects(v5, v6, v7);
  v11 = objc_msgSend_pendingReplacementRequests(v17, v9, v10);
  v14 = objc_msgSend_copy(v11, v12, v13);
  objc_msgSend_didSaveDeltas_replacementRequests_(v17, v15, v8, v14);

  objc_msgSend_setIsValueIDKnownToServer_(v17, v16, 1);
}

void sub_188582358(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  if (objc_msgSend_count(*(a1 + 32), v5, v6) > a3)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v7, a3);
    objc_msgSend_copyServerFieldsFromStreamingAsset_(v8, v9, v10);
  }
}

char *sub_188583D6C(char *a1, void *a2, void *a3)
{
  v127 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (qword_1ED4B6188 != -1)
  {
    dispatch_once(&qword_1ED4B6188, &unk_1EFA2ED48);
  }

  v9 = objc_msgSend_length(v8, v6, v7);
  v10 = v9 + 2;
  if (v9 >= 0x80)
  {
    do
    {
      ++v10;
      v11 = v9 >> 14;
      v9 >>= 7;
    }

    while (v11);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_msgSend_length(v5, v12, v13);
    v15 = v14 + 2;
    if (v14 >= 0x80)
    {
      do
      {
        ++v15;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }

LABEL_9:
    v10 += v15;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = objc_msgSend_length(v5, v17, v18);
    v15 = v19 + 2;
    if (v19 >= 0x80)
    {
      do
      {
        ++v15;
        v20 = v19 >> 14;
        v19 >>= 7;
      }

      while (v20);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = qword_1ED4B6180 + v10;
    v24 = objc_msgSend_recordID(a1, v21, v22);
    v27 = objc_msgSend_size(v24, v25, v26);
    v28 = v27 + 2;
    if (v27 >= 0x80)
    {
      do
      {
        ++v28;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }

    v10 = v23 + v28;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 += 92;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v40 = v5;
            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v120, v126, 16);
            if (v42)
            {
              v43 = v42;
              v44 = *v121;
              do
              {
                for (i = 0; i != v43; ++i)
                {
                  if (*v121 != v44)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v10 += sub_188583D6C(a1, *(*(&v120 + 1) + 8 * i), v8);
                }

                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v46, &v120, v126, 16);
              }

              while (v43);
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = objc_msgSend_data(v5, v47, v48);
              v52 = objc_msgSend_length(v49, v50, v51);
              v53 = v52 + 2;
              if (v52 >= 0x80)
              {
                do
                {
                  ++v53;
                  v54 = v52 >> 14;
                  v52 >>= 7;
                }

                while (v54);
              }

              v10 += v53 + 26;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v10 += 3;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v57 = objc_msgSend_sectionCount(v5, v55, v56);
                  v58 = 3;
                  if (v57)
                  {
                    v58 = v57;
                  }

                  v10 += v58 * qword_1ED4B6180;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v59 = v5;
                    v62 = objc_msgSend_deltasToSave(v59, v60, v61);
                    v65 = objc_msgSend_allObjects(v62, v63, v64);
                    v68 = objc_msgSend_mutableCopy(v65, v66, v67);
                    v69 = v68;
                    if (v68)
                    {
                      v70 = v68;
                    }

                    else
                    {
                      v70 = objc_opt_new();
                    }

                    v71 = v70;

                    v118 = 0u;
                    v119 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v110 = v59;
                    v74 = objc_msgSend_pendingReplacementRequests(v59, v72, v73);
                    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v116, v125, 16);
                    if (v76)
                    {
                      v79 = v76;
                      v80 = *v117;
                      do
                      {
                        for (j = 0; j != v79; ++j)
                        {
                          if (*v117 != v80)
                          {
                            objc_enumerationMutation(v74);
                          }

                          v82 = objc_msgSend_replacementDeltas(*(*(&v116 + 1) + 8 * j), v77, v78);
                          objc_msgSend_addObjectsFromArray_(v71, v83, v82);
                        }

                        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v116, v125, 16);
                      }

                      while (v79);
                    }

                    v114 = 0u;
                    v115 = 0u;
                    v112 = 0u;
                    v113 = 0u;
                    v84 = v71;
                    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v112, v124, 16);
                    if (v86)
                    {
                      v89 = v86;
                      v90 = *v113;
                      do
                      {
                        for (k = 0; k != v89; ++k)
                        {
                          if (*v113 != v90)
                          {
                            objc_enumerationMutation(v84);
                          }

                          v92 = *(*(&v112 + 1) + 8 * k);
                          v93 = objc_msgSend_asset(v92, v87, v88);

                          v95 = qword_1ED4B6180;
                          if (!v93)
                          {
                            v95 = 0;
                          }

                          v96 = v95 + v10;
                          v111 = 0;
                          v97 = objc_msgSend_protobufSize_error_(v92, v94, &v111, 0);
                          v98 = v111;
                          if (!v97)
                          {
                            v98 = 0;
                          }

                          v10 = v96 + v98;
                        }

                        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v87, &v112, v124, 16);
                      }

                      while (v89);
                    }

                    v101 = objc_msgSend_valueID(v110, v99, v100);
                    v104 = objc_msgSend_name(v101, v102, v103);
                    v107 = objc_msgSend_length(v104, v105, v106);
                    v108 = v107 + 2;
                    if (v107 >= 0x80)
                    {
                      do
                      {
                        ++v108;
                        v109 = v107 >> 14;
                        v107 >>= 7;
                      }

                      while (v109);
                    }

                    v10 += v108 + 3;
                  }
                }
              }
            }
          }
        }

        goto LABEL_25;
      }

LABEL_11:
      v10 += 10;
      goto LABEL_25;
    }

    v24 = objc_msgSend_recordID(v5, v30, v31);
    v34 = objc_msgSend_size(v24, v32, v33);
    v35 = v34 + 2;
    if (v34 >= 0x80)
    {
      do
      {
        ++v35;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
    }

    v10 += v35;
  }

LABEL_25:
  a1 = (v10 + 2);
  if (v10 >= 0x80)
  {
    do
    {
      ++a1;
      v37 = v10 >> 14;
      v10 >>= 7;
    }

    while (v37);
  }

LABEL_27:

  v38 = *MEMORY[0x1E69E9840];
  return a1;
}

void *sub_188585524(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_valueForKey_(*(a1 + 32), a2, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_18858560C(uint64_t a1, const char *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_expressionForBlock_arguments_(MEMORY[0x1E696ABC8], a2, &unk_1EFA2EDC8, 0);
  v11[0] = v2;
  v4 = objc_msgSend_expressionForConstantValue_(MEMORY[0x1E696ABC8], v3, @"cdl");
  v11[1] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v11, 2);

  v8 = objc_msgSend_expressionForFunction_arguments_(MEMORY[0x1E696ABC8], v7, @"tokenize:using:", v6);
  v9 = qword_1ED4B61A0;
  qword_1ED4B61A0 = v8;

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1885856FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v4, v5);
  }

  else
  {
    hasAssetBackedDeltas = 0;
  }

  return hasAssetBackedDeltas;
}

uint64_t sub_188585944(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_msgSend_firstObject(v1, v3, v4);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

uint64_t sub_188585B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v6, v7);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

BOOL sub_188588380(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_deltasToSave(v3, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_pendingReplacementRequests(v3, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) != 0;
  }

  return v11;
}

void sub_1885884EC(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_deltasToSave(v4, v5, v6);
  v10 = objc_msgSend_allObjects(v7, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = objc_msgSend_pendingReplacementRequests(v4, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v61, v70, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v62;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v62 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = objc_msgSend_replacementDeltas(*(*(&v61 + 1) + 8 * i), v19, v20);
        objc_msgSend_addObjectsFromArray_(v13, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v61, v70, 16);
    }

    while (v21);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v13;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v57, v69, 16);
  if (v27)
  {
    v31 = v27;
    v32 = *v58;
    *&v30 = 138412546;
    v55 = v30;
    do
    {
      v33 = 0;
      do
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v57 + 1) + 8 * v33);
        v35 = objc_msgSend_valueID(v34, v28, v29, v55);
        if (!v35)
        {
          goto LABEL_15;
        }

        v38 = v35;
        v39 = objc_msgSend_valueID(v34, v36, v37);
        v42 = objc_msgSend_valueID(v4, v40, v41);
        isEqual = objc_msgSend_isEqual_(v39, v43, v42);

        if ((isEqual & 1) == 0)
        {
LABEL_15:
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v45 = ck_log_facility_distributed_sync;
          if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
          {
            v48 = v45;
            v51 = objc_msgSend_valueID(v4, v49, v50);
            *buf = v55;
            v66 = v51;
            v67 = 2112;
            v68 = v34;
            _os_log_impl(&dword_1883EA000, v48, OS_LOG_TYPE_INFO, "Delta was generated with a placeholder (or incorrect) value ID. Assigning value ID %@ to delta: %@", buf, 0x16u);
          }

          v52 = objc_msgSend_valueID(v4, v46, v47);
          objc_msgSend_setValueID_(v34, v53, v52);
        }

        if ((*(a1 + 32) & 1) == 0)
        {
          objc_msgSend_unpopulateAsset(v34, v28, v29);
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v57, v69, 16);
    }

    while (v31);
  }

  v54 = *MEMORY[0x1E69E9840];
}

void sub_1885889C4(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ++*(*(a1[4] + 8) + 24);
  v7 = objc_msgSend_unmergedDeltas(v4, v5, v6);
  *(*(a1[5] + 8) + 24) += objc_msgSend_count(v7, v8, v9);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = objc_msgSend_unmergedDeltas(v4, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_asset(*(*(&v22 + 1) + 8 * v19), v15, v16);

        if (v20)
        {
          ++*(*(a1[6] + 8) + 24);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v22, v26, 16);
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_188588D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188588D94(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

__CFString *CKStringFromCapabilities(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v4 = v2;
    if ((v1 & 2) != 0)
    {
      objc_msgSend_addObject_(v2, v3, @"Atomic");
      if ((v1 & 1) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v1 & 1) == 0)
    {
      goto LABEL_4;
    }

    objc_msgSend_addObject_(v4, v3, @"Sync");
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v5 = MEMORY[0x1E696AEC0];
        v6 = objc_msgSend_componentsJoinedByString_(v4, v3, @",");
        v8 = objc_msgSend_stringWithFormat_(v5, v7, @"(%@)", v6);

        goto LABEL_9;
      }

LABEL_6:
      objc_msgSend_addObject_(v4, v3, @"Zone-Wide Sharing");
      goto LABEL_7;
    }

LABEL_14:
    objc_msgSend_addObject_(v4, v3, @"Share");
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = @"(none)";
LABEL_9:

  return v8;
}

id sub_188589C18(id a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = CKRecordZone;
    v6 = objc_msgSendSuper2(&v22, sel_init);
    a1 = v6;
    if (v6)
    {
      v6[8] = a3;
      v9 = objc_msgSend_copy(v5, v7, v8);
      v10 = *(a1 + 4);
      *(a1 + 4) = v9;

      *(a1 + 13) = 1;
      *(a1 + 11) = 0;
      v11 = [CKRequiredFeatureSet alloc];
      v12 = MEMORY[0x1E695E0F0];
      v14 = objc_msgSend_initWithZoneFeatures_recordFeatures_fieldFeatures_(v11, v13, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
      v15 = *(a1 + 28);
      *(a1 + 28) = v14;

      v16 = [CKRequiredFeatureSet alloc];
      v18 = objc_msgSend_initWithZoneFeatures_recordFeatures_fieldFeatures_(v16, v17, v12, v12, v12);
      v19 = *(a1 + 22);
      *(a1 + 22) = v18;

      v20 = *(a1 + 5);
      *(a1 + 5) = 0;

      *(a1 + 8) = 0;
      *(a1 + 7) = 0;
    }
  }

  return a1;
}

void sub_188589D64()
{
  v0 = [CKRecordZoneID alloc];
  v4 = objc_msgSend_initWithZoneName_ownerName_(v0, v1, @"_systemZone", @"__defaultOwner__");
  v2 = sub_188589C18([CKRecordZone alloc], v4, 0);
  v3 = qword_1ED4B61D0;
  qword_1ED4B61D0 = v2;
}

uint64_t sub_18858BD54(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x1E696AD18], a2, a3);
  v4 = qword_1ED4B61E0;
  qword_1ED4B61E0 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

__CFString *CKStringFromShareParticipantVisibility(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BE360[a1];
  }
}

__CFString *CKStringFromShareParticipantSelfRemovalBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BE380[a1];
  }
}

uint64_t sub_18858F3A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_participantID(a2, a2, a3);
  LODWORD(v3) = objc_msgSend_containsObject_(v3, v5, v4);

  return v3 ^ 1;
}

void sub_18858FCFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_18858FD24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Error fetching share participant: %@", &v17, 0xCu);
    }
  }

  else if (v8)
  {
    objc_msgSend_setIsApprovedRequester_(v8, v9, 1);
    objc_msgSend_setPermission_(v8, v12, *(a1 + 40));
    objc_msgSend_setRole_(v8, v13, *(a1 + 48));
    v14 = *(a1 + 32);
    objc_sync_enter(v14);
    objc_msgSend_addObject_(*(a1 + 32), v15, v8);
    objc_sync_exit(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18858FEA8(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_error_impl(&dword_1883EA000, v5, OS_LOG_TYPE_ERROR, "Error fetching share participants: %@", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = *(a1 + 32);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
    if (v11)
    {
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_addParticipant_(WeakRetained, v10, *(*(&v19 + 1) + 8 * i), v19);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v19, v23, 16);
      }

      while (v11);
    }

    objc_sync_exit(v7);
    v14 = WeakRetained;
    objc_sync_enter(v14);
    objc_msgSend_removeObjectsInArray_(v14[54], v15, *(a1 + 40));
    objc_msgSend_addObjectsFromArray_(v14[55], v16, *(a1 + 40));
    objc_sync_exit(v14);

    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188590688(uint64_t result, const char *a2)
{
  if (a2)
  {
    return objc_msgSend_addObject_(*(result + 32), a2, a2);
  }

  return result;
}

uint64_t sub_188590FD0(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!*(a1 + 32) || (v6 = *(a1 + 40), v32[0] = *(a1 + 32), v7 = 1, objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v32, 1), v8 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(v6, v9, v5, v8), v8, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = objc_msgSend_participants(*(a1 + 40), v3, v4, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v31, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v27;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        if (objc_msgSend_role(v19, v14, v15) == 1)
        {
          v20 = *(a1 + 40);
          v30 = v19;
          v7 = 1;
          v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, &v30, 1);
          v23 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(v20, v22, v5, v21);

          if (v23 != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v26, v31, 16);
          if (v16)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v7 = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1885922F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_188592330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_188592444;
  v18 = &unk_1E70BE268;
  v5 = v3;
  v20 = v5;
  v19 = *(a1 + 32);
  v7 = objc_msgSend_CKFilter_(v4, v6, &v15);
  if (objc_msgSend_count(v7, v8, v9, v15, v16, v17, v18) == 1)
  {
    v12 = objc_msgSend_lastObject(v7, v10, v11);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (objc_msgSend_count(v7, v10, v11))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }
}

uint64_t sub_188592468(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_participantID(v4, v6, v7);
  v13 = objc_msgSend_participantID(v5, v9, v10);
  if (v8 == v13)
  {
    isEqualToString = 1;
  }

  else
  {
    v14 = objc_msgSend_participantID(v4, v11, v12);
    v17 = objc_msgSend_participantID(v5, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v18, v17);
  }

  return isEqualToString;
}

void *sub_18859252C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_userIdentity(v4, v6, v7);
  isEqual = objc_msgSend_publicSharingKey(v8, v9, v10);
  if (isEqual)
  {
    v14 = objc_msgSend_userIdentity(v5, v11, v12);
    v17 = objc_msgSend_publicSharingKey(v14, v15, v16);

    if (!v17)
    {
      isEqual = 0;
      goto LABEL_6;
    }

    v8 = objc_msgSend_userIdentity(v4, v18, v19);
    v22 = objc_msgSend_publicSharingKey(v8, v20, v21);
    v25 = objc_msgSend_userIdentity(v5, v23, v24);
    v28 = objc_msgSend_publicSharingKey(v25, v26, v27);
    isEqual = objc_msgSend_isEqual_(v22, v29, v28);
  }

LABEL_6:
  return isEqual;
}

uint64_t sub_188592630(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_userIdentity(a2, v5, v6);
  v10 = objc_msgSend_userRecordID(v7, v8, v9);
  v13 = objc_msgSend_userIdentity(v4, v11, v12);

  v16 = objc_msgSend_userRecordID(v13, v14, v15);
  isEqual = objc_msgSend_isEqual_(v10, v17, v16);

  return isEqual;
}

uint64_t sub_188593170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_addedParticipantIDs(v2, v4, v5);
  v9 = objc_msgSend_participantID(v3, v7, v8);

  v11 = objc_msgSend_containsObject_(v6, v10, v9);
  return v11;
}

uint64_t sub_1885932B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_removedParticipantIDs(v2, v4, v5);
  v9 = objc_msgSend_participantID(v3, v7, v8);

  v11 = objc_msgSend_containsObject_(v6, v10, v9);
  return v11;
}

void sub_1885941A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188594490(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (*(a1 + 40))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v7 = a3;
    objc_msgSend_setPermission_(v7, v5, v4);
    objc_msgSend_addParticipant_(*(a1 + 32), v6, v7);
  }
}

void sub_188594500(void **a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching share participants UI, failed: %@", buf, 0xCu);
    }

    v6 = a1[6];
    if (v6)
    {
      v6[2](v6, a1[4], v4);
    }
  }

  else
  {
    objc_msgSend__setPublicPermissionNoSideEffects_(a1[4], v3, 1);
    v7 = [CKModifyRecordsOperation alloc];
    v27 = a1[4];
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, &v27, 1);
    v11 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v7, v10, v9, 0);

    v14 = objc_msgSend_resolvedConfiguration(v11, v12, v13);
    objc_msgSend_setRequestOriginator_(v14, v15, 5);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_188594794;
    v25[3] = &unk_1E70BD138;
    v16 = a1[6];
    v25[4] = a1[4];
    v26 = v16;
    objc_msgSend_setModifyRecordsCompletionBlock_(v11, v17, v25);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v24 = a1[4];
      *buf = 138412290;
      v29 = v24;
      _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Saving share to server for UI: %@", buf, 0xCu);
    }

    v21 = objc_msgSend_privateCloudDatabase(a1[5], v19, v20);
    objc_msgSend_addOperation_(v21, v22, v11);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188594794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a4);
  }

  return result;
}

__CFString *CKStringFromParticipantPermission(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70BE4A0[a1 - 1];
  }
}

__CFString *CKStringFromParticipantRole(unint64_t a1, const char *a2)
{
  if (a1 >= 5)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"unknown %ld", a1);
  }

  else
  {
    v3 = off_1E70BE478[a1];
  }

  return v3;
}

__CFString *CKStringFromParticipantAcceptanceStatus(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Removed";
  }

  else
  {
    return off_1E70BE4B8[a1];
  }
}

__CFString *CKStringFromParticipantInvitationTokenStatus(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BE4E0[a1 - 1];
  }
}

id sub_18859A764(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EA919B58;
  v10 = qword_1EA919B58;
  if (!qword_1EA919B58)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_18859B2F4;
    v6[3] = &unk_1E70BBE90;
    v6[4] = &v7;
    sub_18859B2F4(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_18859A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18859A844(void *a1, const char *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v3, a2, a2, v2, &obj);
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

void sub_18859B2F4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_18859B3BC(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919B58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNContactClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKShareParticipant.m", 26, @"Unable to find class %s", "CNContact");

    __break(1u);
  }
}

void *sub_18859B3BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (!qword_1EA919B60)
  {
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = sub_18859B510;
    v10[4] = &unk_1E70BC418;
    v10[5] = v10;
    v11 = xmmword_1E70BE460;
    v12 = 0;
    qword_1EA919B60 = _sl_dlopen();
  }

  v3 = qword_1EA919B60;
  if (!qword_1EA919B60)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "void *ContactsLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v9, v8, @"CKShareParticipant.m", 25, @"%s", v10[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_18859B510(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EA919B60 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_18859B584(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18859B3BC(a1, a2, a3);
  result = dlsym(v4, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B61F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18859B5D4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_18859B3BC(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4B61F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNPhoneNumberClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKShareParticipant.m", 27, @"Unable to find class %s", "CNPhoneNumber");

    __break(1u);
  }
}

void *sub_18859B69C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18859B3BC(a1, a2, a3);
  result = dlsym(v4, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18859E5AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 8) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18859E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18859E748(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18859E878(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 16) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18859E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18859EA14(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_18859EB68(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel__locked_handleSharingUIUpdatedShare_recordID_isDeleted_error_, *(a1 + 40));
}

uint64_t sub_1885A0128(uint64_t a1)
{
  if (byte_1EA90C538)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = NSClassFromString(&cfstr_Ckdthrottleman.isa);
  }

  v2 = [v1 alloc];
  inited = objc_msgSend_initInternal(v2, v3, v4);
  v6 = qword_1ED4B6208;
  qword_1ED4B6208 = inited;

  return MEMORY[0x1EEE66BB8](inited, v6);
}

void sub_1885A067C(void **a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_mutableCopy(a1[1], v3, v4);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = v5;
    obj = v5;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v35, v41, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        v11 = 0;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * v11);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v13 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v15 = v13;
            v18 = objc_msgSend_throttleID(v12, v16, v17);
            v19 = v18;
            v20 = @"<throttleID unset>";
            if (v18)
            {
              v20 = v18;
            }

            *buf = 138543362;
            v40 = v20;
            _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "removing throttle: %{public}@", buf, 0xCu);
          }

          objc_msgSend_throttleWillBeRemoved_(a1, v14, v12);
          objc_msgSend_removeObject_(v6, v21, v12);
          ++v11;
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v35, v41, 16);
      }

      while (v9);
    }

    if (objc_msgSend_count(v6, v23, v24))
    {
      v27 = objc_msgSend_copy(v6, v25, v26);
      v28 = a1[1];
      a1[1] = v27;
    }

    else
    {
      v29 = a1[1];
      a1[1] = 0;

      objc_msgSend_throttleListBecameEmpty(a1, v30, v31);
    }

    v5 = v33;
  }

  v32 = *MEMORY[0x1E69E9840];
}

id sub_1885A2A7C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKUserIdentityLookupInfo alloc];
  v5 = objc_msgSend_initWithEmailAddress_(v3, v4, v2);

  return v5;
}

id sub_1885A2AE4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKUserIdentityLookupInfo alloc];
  v5 = objc_msgSend_initWithUserRecordID_(v3, v4, v2);

  return v5;
}

id sub_1885A2B4C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKUserIdentityLookupInfo alloc];
  v5 = objc_msgSend_initWithPhoneNumber_(v3, v4, v2);

  return v5;
}

void sub_1885A3674(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v32 = [CKException alloc];
    v34 = objc_msgSend_initWithName_format_(v32, v33, *MEMORY[0x1E695D940], @"Container cannot be nil");
    objc_exception_throw(v34);
  }

  v13 = v10;
  if (!v9)
  {
    v9 = objc_msgSend_standardOptions(CKAllowedSharingOptions, v11, v12);
  }

  v14 = objc_msgSend_containerID(v8, v11, v12);
  v17 = objc_msgSend_specialContainerType(v14, v15, v16);
  if (v17 <= 0x19 && ((1 << v17) & 0x2200010) != 0)
  {

    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v9, v18, 1);
  }

  else
  {
  }

  v19 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(v8);
  v20 = objc_opt_class();
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1885A391C;
  v42[3] = &unk_1E70BE5D0;
  v21 = v9;
  v43 = v21;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v22, v20, 0, v42);
  v23 = objc_opt_class();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1885A3950;
  v40[3] = &unk_1E70BE5D0;
  v24 = v19;
  v41 = v24;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v25, v23, 0, v40);
  v26 = objc_opt_class();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1885A3984;
  v35[3] = &unk_1E70BE620;
  v36 = v8;
  v37 = v24;
  v38 = v21;
  v39 = v13;
  v27 = v21;
  v28 = v24;
  v29 = v8;
  v30 = v13;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v31, v26, 0, v35);
}

uint64_t sub_1885A3984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1885A3A74;
  v8[3] = &unk_1E70BE5F8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8);

  return 0;
}

void sub_1885A3A74(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11 && a1[4])
  {
    v6 = [CKPreSharingContext alloc];
    v8 = objc_msgSend_initWithShare_containerSetupInfo_allowedOptions_(v6, v7, v11, a1[5], a1[6]);
    v9 = *(a1[7] + 16);
  }

  else
  {
    v10 = a1[7];
    v8 = CKXPCSuitableError(v5);
    v9 = *(v10 + 16);
  }

  v9();
}

void sub_1885A3B44(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || !v9)
  {
    v34 = [CKException alloc];
    v36 = objc_msgSend_initWithName_format_(v34, v35, *MEMORY[0x1E695D940], @"Non-nil share and container are required");
    objc_exception_throw(v36);
  }

  v13 = v10;
  if (!v10)
  {
    v13 = objc_msgSend_standardOptions(CKAllowedSharingOptions, v11, v12);
  }

  v14 = objc_msgSend_containerID(v9, v11, v12);
  v17 = objc_msgSend_specialContainerType(v14, v15, v16);
  if (v17 <= 0x19 && ((1 << v17) & 0x2200010) != 0)
  {

    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v13, v18, 1);
  }

  else
  {
  }

  v19 = objc_opt_class();
  v21 = objc_msgSend_resolvedOptionsFromOptions_forExistingShare_(v19, v20, v13, v8);

  v22 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(v9);
  v23 = objc_opt_class();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1885A3E00;
  v43[3] = &unk_1E70BE5D0;
  v24 = v21;
  v44 = v24;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v25, v23, 0, v43);
  v26 = objc_opt_class();
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1885A3E34;
  v41[3] = &unk_1E70BE5D0;
  v27 = v22;
  v42 = v27;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v28, v26, 0, v41);
  v29 = objc_opt_class();
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1885A3E68;
  v37[3] = &unk_1E70BE648;
  v38 = v8;
  v39 = v27;
  v40 = v24;
  v30 = v24;
  v31 = v27;
  v32 = v8;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v33, v29, 0, v37);
}

uint64_t sub_1885A3E68(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [CKPostSharingContext alloc];
  v6 = objc_msgSend_initWithShare_containerSetupInfo_allowedOptions_(v4, v5, a1[4], a1[5], a1[6]);
  v3[2](v3, v6, 0);

  return 0;
}

uint64_t CKCodeProto2AnyReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKCodeProto2Any__typeUrl;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKCodeProto2Any__value;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKCodeProto2ProtectedEnvelopeReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 2;
        v54 = objc_alloc_init(CKCodeProto2Any);
        objc_storeStrong((a1 + 24), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKCodeProto2AnyReadFrom(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 1;
        v52 = PBReaderReadData();
        v53 = *(a1 + 16);
        *(a1 + 16) = v52;
      }

      else if (v32)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = 0;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v34 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v34 >= objc_msgSend_position(a2, v35, v36) && (v39 = objc_msgSend_position(a2, v37, v38) + 1, v39 <= objc_msgSend_length(a2, v40, v41)))
          {
            v42 = objc_msgSend_data(a2, v37, v38);
            v45 = objc_msgSend_position(a2, v43, v44);
            objc_msgSend_getBytes_range_(v42, v46, v60, v45, 1);

            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_setPosition_(a2, v50, v49 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v37, v38);
          }

          if ((SLOBYTE(v60[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v33++ > 8)
          {
            goto LABEL_36;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_36:
      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKCodeRecordTransportReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v59 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v59, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v59 & 0x7F) << v10;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 1)
      {
        if (v32 == 2)
        {
          objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
          *(a1 + 40) |= 1u;
          *(a1 + 8) = 2;
          v33 = PBReaderReadData();
          v34 = 32;
        }

        else
        {
          if (v32 != 3)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_37;
          }

          v33 = PBReaderReadData();
          v34 = 16;
        }
      }

      else
      {
        if (!v32)
        {
          v36 = 0;
          while (1)
          {
            v60 = 0;
            v37 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v37 >= objc_msgSend_position(a2, v38, v39) && (v42 = objc_msgSend_position(a2, v40, v41) + 1, v42 <= objc_msgSend_length(a2, v43, v44)))
            {
              v45 = objc_msgSend_data(a2, v40, v41);
              v48 = objc_msgSend_position(a2, v46, v47);
              objc_msgSend_getBytes_range_(v45, v49, &v60, v48, 1);

              v52 = objc_msgSend_position(a2, v50, v51);
              objc_msgSend_setPosition_(a2, v53, v52 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v40, v41);
            }

            if ((v60 & 0x80000000) == 0)
            {
              break;
            }

            if (v36++ > 8)
            {
              goto LABEL_37;
            }
          }

          objc_msgSend_hasError(a2, v32, v9);
          goto LABEL_37;
        }

        if (v32 != 1)
        {
          goto LABEL_24;
        }

        objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
        *(a1 + 40) |= 1u;
        *(a1 + 8) = 1;
        v33 = PBReaderReadData();
        v34 = 24;
      }

      v55 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_37:
      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void *sub_1885A63D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A65B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A65D0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A6760(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A6944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A695C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A6AEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A6CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A6CE8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A6E78(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A7074(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A7260(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A745C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

id sub_1885A8234(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  objc_msgSend_setWireSerialization_(v6, v7, v5);

  if (objc_msgSend_count(*(a1 + 32), v8, v9) > a3)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v10, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setEncryptedMasterKey_(v6, v12, v11);
    }
  }

  return v6;
}

void sub_1885AA26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  os_activity_scope_leave((v13 - 64));
  _Unwind_Resume(a1);
}

void sub_1885AA298(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error getting proxy for global device identifier: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1885AA394(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1885AA408;
  v3[3] = &unk_1E70BC770;
  v4 = *(a1 + 32);
  return objc_msgSend_globalDeviceIdentifierWithCompletionHandler_(a2, a2, v3);
}

void sub_1885AA408(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Error fetching global device identifier from daemon: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "Fetched global device identifier from daemon: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1885AA68C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1885AA964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1885AA99C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v5, 0xCu);
    }

    objc_msgSend_setHasValidAdopterProcessScopedDaemonProxyCreator_(WeakRetained, v3, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1885AAA8C(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v12 = objc_msgSend_adopterProcessScopedDaemonProxyCreator(*(a1 + 32), v8, v9);
    if (v12 && (hasValidAdopterProcessScopedDaemonProxyCreator = objc_msgSend_hasValidAdopterProcessScopedDaemonProxyCreator(*(a1 + 32), v10, v11), v12, (hasValidAdopterProcessScopedDaemonProxyCreator & 1) != 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v5;
      v16 = "Ignoring superfluous adopter process scoped proxy for %@: %@";
    }

    else
    {
      objc_msgSend_setAdopterProcessScopedDaemonProxyCreator_(*(a1 + 32), v10, v5);
      objc_msgSend_setHasValidAdopterProcessScopedDaemonProxyCreator_(*(a1 + 32), v17, 1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 32);
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v5;
      v16 = "Got an adopter process scoped proxy for %@: %@";
    }

    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, v16, &v22, 0x16u);
LABEL_13:
    objc_sync_exit(v7);

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v22 = 138412546;
    v23 = v20;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get adopter process scoped proxy for %@: %@", &v22, 0x16u);
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

id sub_1885AADF8(id result, uint64_t a2)
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = CKContainerCallbackProxy;
    return objc_msgSendSuper2(&v2, sel_initWithWeakObject_callbackProtocol_, a2, &unk_1EFA892E8);
  }

  return result;
}

void sub_1885AB094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885AB0B0(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1885AB148;
  v5[3] = &unk_1E70BE760;
  v5[4] = *(a1 + 40);
  objc_msgSend_allClouddThrottlesWithCompletionHandler_(a2, a2, v5);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  return (*(*(a1 + 32) + 16))();
}

void sub_1885AB148(uint64_t a1, void *a2)
{
  if (!a2)
  {
    a2 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
}

void sub_1885AB308(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1885AB61C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1885AB654(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v5, 0xCu);
    }

    objc_msgSend_setHasValidLogicalDeviceScopedDaemonProxyCreator_(WeakRetained, v3, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1885AB744(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v12 = objc_msgSend_logicalDeviceScopedDaemonProxyCreator(*(a1 + 32), v8, v9);
    if (v12 && (hasValidLogicalDeviceScopedDaemonProxyCreator = objc_msgSend_hasValidLogicalDeviceScopedDaemonProxyCreator(*(a1 + 32), v10, v11), v12, (hasValidLogicalDeviceScopedDaemonProxyCreator & 1) != 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v5;
      v16 = "Ignoring superfluous logical device proxy for %@: %@";
    }

    else
    {
      objc_msgSend_setLogicalDeviceScopedDaemonProxyCreator_(*(a1 + 32), v10, v5);
      objc_msgSend_setHasValidLogicalDeviceScopedDaemonProxyCreator_(*(a1 + 32), v17, 1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 32);
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v5;
      v16 = "Got a logical device proxy for %@: %@";
    }

    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, v16, &v22, 0x16u);
LABEL_13:
    objc_sync_exit(v7);

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v22 = 138412546;
    v23 = v20;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get logical device proxy for %@: %@", &v22, 0x16u);
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1885AC530(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (objc_msgSend_isCancelled(v6, v3, v4))
    {
      v9 = @"op was cancelled";
    }

    else if (objc_msgSend_isFinished(*(a1 + 32), v7, v8))
    {
      v9 = @"op was finished";
    }

    else
    {
      v10 = *(a1 + 32);
      v9 = @"unknown";
      if (v10)
      {
        if (*(v10 + 282))
        {
          v9 = @"cloudd connection was interrupted";
        }

        else if (*(v10 + 283))
        {
          v9 = @"op was suspended";
        }
      }
    }
  }

  else
  {
    v9 = @"op was deallocated";
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    v21 = v11;
    v24 = objc_msgSend_operationID(v20, v22, v23);
    *buf = 134218498;
    v26 = v20;
    v27 = 2114;
    v28 = v24;
    v29 = 2114;
    v30 = v9;
    _os_log_debug_impl(&dword_1883EA000, v21, OS_LOG_TYPE_DEBUG, "Skipping callback invocation for %p %{public}@, %{public}@", buf, 0x20u);

    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
LABEL_16:
    v14 = objc_msgSend_operationID(*(a1 + 32), v12, v13);
    v5 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Not forwarding invocation to operation %@, no good reason why", v14);
  }

LABEL_17:
  v16 = *(a1 + 40);
  v17 = objc_msgSend_callbackProtocol(*(a1 + 48), v12, v13);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v16, v18, v5, v17);

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1885AC75C(uint64_t a1, const char *a2, uint64_t a3)
{
  isCancelled = objc_msgSend_isCancelled(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  if ((isCancelled & 1) == 0)
  {
    if (v7 && ((v7[282] & 1) != 0 || (v7[283] & 1) != 0))
    {
      v8 = *(a1 + 48);
      v9 = (v8 + 16);
      goto LABEL_8;
    }

    isFinished = objc_msgSend_isFinished(v7, v4, v5);
    v7 = *(a1 + 32);
    if ((isFinished & 1) == 0)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v11 = sub_188416C9C(v7);
      os_activity_scope_enter(v11, &state);

      objc_msgSend_invokeWithTarget_(*(a1 + 40), v12, *(a1 + 32));
      os_activity_scope_leave(&state);
      return;
    }
  }

  v8 = *(a1 + 48);
  v9 = (v8 + 16);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v7[283] & 1) == 0)
  {
LABEL_10:
    v13 = objc_msgSend_error(v7, v4, v5);
    (*(v8 + 16))(v8, v13);
    goto LABEL_11;
  }

  v13 = sub_18860E438(v7);
  (*v9)(v8, v13);
LABEL_11:
}

void sub_1885ACC40(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while granting access to bundle id %{public}@ containerIdentifiers %@, check your syslog", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1885ACEEC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while revoking access to bundle id %{public}@ containerIdentifiers %@, check your syslog", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1885AD17C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while deleting account %@, check your syslog", &v8, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1885AD4D0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while notifying about account change for account %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1885AD740(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching usability for test account credentials", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1885AD8AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while wiping all caches, check your syslog", v4, 2u);
  }
}

void sub_1885AD9F0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while wiping server configurations, check your syslog", v4, 2u);
  }
}

void sub_1885ADB34(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while updating push tokens, check your syslog", v4, 2u);
  }
}

uint64_t sub_1885ADE58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1885ADFA0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1885AE1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1885AE1C0(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting proxy for max inline mergeable delta size: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1885AE2B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  qword_1EA90C0E0 = a2;
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
  qword_1EA9115E0 = v3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = qword_1EA90C0E0;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Fetched max inline delta size from daemon: %ld", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1885AE5BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1885AE5F4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v5, 0xCu);
    }

    objc_msgSend_setHasValidProcessScopedDaemonProxyCreator_(WeakRetained, v3, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1885AE6E4(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v12 = objc_msgSend_processScopedDaemonProxyCreator(*(a1 + 32), v8, v9);
    if (v12 && (hasValidProcessScopedDaemonProxyCreator = objc_msgSend_hasValidProcessScopedDaemonProxyCreator(*(a1 + 32), v10, v11), v12, (hasValidProcessScopedDaemonProxyCreator & 1) != 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v5;
      v16 = "Ignoring superfluous process proxy for %@: %@";
    }

    else
    {
      objc_msgSend_setProcessScopedDaemonProxyCreator_(*(a1 + 32), v10, v5);
      objc_msgSend_setHasValidProcessScopedDaemonProxyCreator_(*(a1 + 32), v17, 1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 32);
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v5;
      v16 = "Got a process proxy for %@: %@";
    }

    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, v16, &v22, 0x16u);
LABEL_13:
    objc_sync_exit(v7);

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v22 = 138412546;
    v23 = v20;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get process proxy for %@: %@", &v22, 0x16u);
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

id sub_1885AEF1C(void *a1, _BYTE *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (a2)
    {
      v4 = v3[2];
      if (v4)
      {
        LOBYTE(v4) = *(v3 + 8);
      }

      *a2 = v4 & 1;
    }

    v5 = v3[2];
    objc_sync_exit(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1885AF0D4(void *a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_connection(a1, v5, v6);
    v10 = v8;
    if (v8)
    {
      if (a2)
      {
        objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }

      else
      {
        objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }
      v14 = ;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Couldn't get connection to daemon", v16, 2u);
      }

      v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 1, @"Couldn't get connection to daemon");
      if (v7)
      {
        v7[2](v7, v13);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1885AF9DC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v5 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(*(a1 + 32) + 8) + 24);
        v12 = 138543618;
        v13 = v4;
        v14 = 2048;
        v15 = v6;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Warn: %{public}@: NSXPCConnection %p was interrupted", &v12, 0x16u);
      }

      v4[8] = 0;
      *(*(*(a1 + 32) + 8) + 24) = 0;
      objc_sync_exit(v4);

      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      objc_msgSend_postNotificationName_object_(v9, v10, @"CKXPCConnectionInterrupted", v4);
    }

    else
    {
      objc_sync_exit(v4);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1885AFB58(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v5 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v6 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 138543618;
        v30 = v4;
        v31 = 2048;
        v32 = v6;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Warn: %{public}@: NSXPCConnection %p became invalid", buf, 0x16u);
      }

      v4[8] = 0;
      *(*(*(a1 + 40) + 8) + 24) = 0;
      objc_sync_exit(v4);

      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      objc_msgSend_postNotificationName_object_(v9, v10, @"CKXPCConnectionInvalidated", v4);

      v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
      objc_msgSend_postNotificationName_object_(v13, v14, @"CKXPCConnectionInterrupted", v4);

      v15 = *(a1 + 32);
      objc_sync_enter(v15);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = v16[6];
      }

      v17 = v16;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v24, v28, 16);
      if (v19)
      {
        v20 = *v25;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v24 + 1) + 8 * i) + 16))(*(*(&v24 + 1) + 8 * i));
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, &v24, v28, 16);
        }

        while (v19);
      }

      sub_1885AFDF4(*(a1 + 32), 0);
      objc_sync_exit(v15);
    }

    else
    {
      objc_sync_exit(v4);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1885AFDF4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

uint64_t sub_1885B00B4()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4B62A0;
  qword_1ED4B62A0 = v0;

  v3 = qword_1ED4B62A0;

  return objc_msgSend_setName_(v3, v2, @"CKObjcClassCache");
}

uint64_t sub_1885B03C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_name(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id *sub_1885B0468(void *a1, void *a2, objc_property *a3)
{
  if (!a1)
  {
    return 0;
  }

  v85.receiver = a1;
  v85.super_class = CKObjCProperty;
  v5 = objc_msgSendSuper2(&v85, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, a2);
    v7 = MEMORY[0x1E696AEC0];
    Name = property_getName(a3);
    v10 = objc_msgSend_stringWithUTF8String_(v7, v9, Name);
    v11 = v6[3];
    v6[3] = v10;

    if (!objc_msgSend_length(v6[3], v12, v13))
    {
      v74 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v74, v75, sel_initWithClass_property_, v6, @"CKObjCProperty.m", 19, @"How'd you get a no-length property name in there?");
    }

    v16 = v6[3];
    v17 = MEMORY[0x1E696AEC0];
    v19 = objc_msgSend_substringToIndex_(v6[3], v18, 1);
    v22 = objc_msgSend_uppercaseString(v19, v20, v21);
    v24 = objc_msgSend_substringFromIndex_(v6[3], v23, 1);
    v26 = objc_msgSend_stringWithFormat_(v17, v25, @"set%@%@:", v22, v24);

    outCount = 0;
    v27 = property_copyAttributeList(a3, &outCount);
    v29 = v27;
    if (outCount)
    {
      v30 = 0;
      p_value = &v27->value;
      do
      {
        v32 = *p_value;
        v33 = **(p_value - 1);
        if (v33 > 0x51)
        {
          if (**(p_value - 1) <= 0x53u)
          {
            if (v33 != 82)
            {
              if (v33 == 83)
              {
                v6[4] = (v6[4] | 0x20);
                v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, v32);

                v26 = v35;
              }

              goto LABEL_28;
            }

            v34 = v6[4] | 1;
            goto LABEL_24;
          }

          if (v33 == 86)
          {
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, v32);
            v37 = v6[7];
            v6[7] = v39;
            goto LABEL_27;
          }

          if (v33 == 84)
          {
            v36 = objc_msgSend_typeForEncoding_(CKObjCType, v28, v32);
            v37 = v6[2];
            v6[2] = v36;
LABEL_27:
          }
        }

        else if (**(p_value - 1) > 0x46u)
        {
          if (v33 == 71)
          {
            v6[4] = (v6[4] | 0x10);
            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, v32);

            v16 = v38;
            goto LABEL_28;
          }

          if (v33 == 78)
          {
            v34 = v6[4] | 8;
            goto LABEL_24;
          }
        }

        else
        {
          if (v33 == 38)
          {
            v34 = v6[4] | 4;
            goto LABEL_24;
          }

          if (v33 == 67)
          {
            v34 = v6[4] | 2;
LABEL_24:
            v6[4] = v34;
          }
        }

LABEL_28:
        ++v30;
        p_value += 2;
      }

      while (v30 < outCount);
    }

    free(v29);
    v40 = NSSelectorFromString(v16);
    v6[5] = v40;
    v42 = objc_msgSend_instanceMethodSignatureForSelector_(v6[1], v41, v40);
    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    v46 = objc_msgSend_methodReturnType(v42, v44, v45);
    v48 = objc_msgSend_initWithCString_encoding_(v43, v47, v46, 4);
    v51 = objc_msgSend_encoding(v6[2], v49, v50);
    v53 = objc_msgSend_caseInsensitiveCompare_(v51, v52, @"q");

    if (v53 | objc_msgSend_caseInsensitiveCompare_(v48, v54, @"q"))
    {
      v57 = objc_msgSend_encoding(v6[2], v55, v56);
      hasPrefix = objc_msgSend_hasPrefix_(v57, v58, v48);

      if ((hasPrefix & 1) == 0)
      {
        v60 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v55, v56);
        v63 = objc_msgSend_methodReturnType(v42, v61, v62);
        v66 = objc_msgSend_encoding(v6[2], v64, v65);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v67, sel_initWithClass_property_, v6, @"CKObjCProperty.m", 79, @"Getter method signature return type doesn't match property type encoding (%s != %@)", v63, v66);
      }
    }

    v68 = objc_msgSend_methodReturnLength(v42, v55, v56);
    if (v68 != objc_msgSend_size(v6[2], v69, v70))
    {
      v76 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v71, v72);
      v79 = objc_msgSend_methodReturnLength(v42, v77, v78);
      v82 = objc_msgSend_size(v6[2], v80, v81);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v83, sel_initWithClass_property_, v6, @"CKObjCProperty.m", 81, @"Getter method signature return length doesn't match property type size (%d != %d)", v79, v82);
    }

    v6[6] = NSSelectorFromString(v26);
  }

  return v6;
}

id sub_1885B0A48(void *a1, void *a2)
{
  v2 = a1;
  v22[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1[2];
    v4 = a2;
    v7 = v22 - ((objc_msgSend_size(v3, v5, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = MEMORY[0x1E695DF50];
    v10 = objc_msgSend_instanceMethodSignatureForSelector_(*(v2 + 8), v9, *(v2 + 40));
    v12 = objc_msgSend_invocationWithMethodSignature_(v8, v11, v10);

    objc_msgSend_setTarget_(v12, v13, v4);
    objc_msgSend_setSelector_(v12, v14, *(v2 + 40));
    objc_msgSend_invoke(v12, v15, v16);
    objc_msgSend_getReturnValue_(v12, v17, v7);
    v2 = sub_1885B147C(*(v2 + 16), v7, v18, v19);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1885B0B70(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v24 = v5;
  if (a1)
  {
    v6 = MEMORY[0x1E695DF50];
    v7 = *(a1 + 8);
    v8 = *(a1 + 48);
    v9 = a3;
    v11 = objc_msgSend_instanceMethodSignatureForSelector_(v7, v10, v8);
    v13 = objc_msgSend_invocationWithMethodSignature_(v6, v12, v11);

    objc_msgSend_setTarget_(v13, v14, v9);
    objc_msgSend_setSelector_(v13, v15, *(a1 + 48));
    v18 = *(a1 + 16);
    if (v18 && v18[1] == 15)
    {
      objc_msgSend_setArgument_atIndex_(v13, v16, &v24, 2);
    }

    else
    {
      v21 = &v24 - ((objc_msgSend_size(v18, v16, v17, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1885B166C(*(a1 + 16), v21, v5);
      objc_msgSend_setArgument_atIndex_(v13, v22, v21, 2);
    }

    objc_msgSend_invoke(v13, v19, v20, v24);

    v5 = v24;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void *sub_1885B147C(void *a1, const char *a2, uint64_t a3, double a4)
{
  if (a1)
  {
    switch(a1[1])
    {
      case 0:
        a1 = objc_msgSend_numberWithChar_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 1:
        a1 = objc_msgSend_numberWithShort_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 2:
        a1 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 3:
        a1 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 4:
        a1 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 5:
        a1 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 6:
        a1 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 7:
        a1 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 8:
        a1 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 9:
        a1 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 0xALL:
        LODWORD(a4) = *a2;
        a1 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], a2, a3, a4);
        break;
      case 0xBLL:
        a1 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *a2);
        break;
      case 0xCLL:
        a1 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *a2);
        break;
      case 0xFLL:
        a1 = *a2;
        break;
      default:
        v5 = MEMORY[0x1E695DF30];
        v6 = *MEMORY[0x1E695D930];
        v7 = objc_msgSend_name(a1, a2, a3);
        objc_msgSend_raise_format_(v5, v8, v6, @"Unsupported boxing type: %@", v7);

        a1 = 0;
        break;
    }

    v4 = vars8;
  }

  return a1;
}

void sub_1885B166C(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_getValue_(v11, v5, a2);
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = objc_msgSend_name(a1, v5, v6);
      objc_msgSend_raise_format_(v7, v10, v8, @"Unsupported unboxing type: %@", v9);
    }
  }
}

id sub_1885B1B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_name(v3, v4, v5);
  v7 = sub_1885B0A48(v3, *(a1 + 32));

  if (!v7)
  {
    v13 = [CKTuple2 alloc];
    v14 = objc_msgSend_null(MEMORY[0x1E695DFB0], v16, v17);
    goto LABEL_5;
  }

  v9 = objc_msgSend_conformsToProtocol_(v7, v8, &unk_1EFAA0830);
  v10 = [CKTuple2 alloc];
  v13 = v10;
  if (v9)
  {
    v14 = objc_msgSend_dictionaryPropertyEncoding(v7, v11, v12);
LABEL_5:
    v18 = v14;
    v19 = objc_msgSend_initWithObject1_object2_(v13, v15, v6, v14);

    goto LABEL_7;
  }

  v19 = objc_msgSend_initWithObject1_object2_(v10, v11, v6, v7);
LABEL_7:

  return v19;
}

void *sub_1885B1F38(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B2134(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B22C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B24A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B24C0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B324C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B3430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B3448(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B35D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B37BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B37D4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B43FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B45E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B45F8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B4788(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B4984(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B6004(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B61E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B6200(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B6390(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B6574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B658C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B671C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B6900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B6918(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885B7428(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_metadata(a2, a2, a3);
  v7 = objc_msgSend_identifier(v4, v5, v6);
  isEqual = objc_msgSend_isEqual_(v7, v8, *(a1 + 32));

  return isEqual;
}

void *sub_1885B7D80(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B7F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B7F7C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885B96F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885B9754(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885B98E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885B9948(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885B9AD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

uint64_t sub_1885B9B3C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885B9CCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885B9EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885B9EC8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885BA8C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    *(v4 + 584) += a2;
    v5 = *(result + 32);
    if (v5)
    {
      *(v5 + 592) += a3;
      v6 = *(result + 32);
      if (v6)
      {
        *(v6 + 600) += a4;
      }
    }
  }

  return result;
}

void *sub_1885BC09C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BC280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BC298(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885BD458(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BD63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BD654(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885BEBA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BED9C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885BEF2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885BF110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885BF128(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C06E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C08C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C08E0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C0A70(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C0C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C0C6C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C0DFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C0FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C0FF8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C1188(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C1384(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C36C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C38A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C38C0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C3A50(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C3C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C3C4C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C3DDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C3FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C3FD8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C4168(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C4364(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C44F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C46D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C46F0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C6DD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C6FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C6FD0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C7160(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C7344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C735C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C74EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C76D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C76E8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885C7878(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885C7A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885C7A74(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885C8D08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    *(v4 + 568) += a2;
    v5 = *(result + 32);
    if (v5)
    {
      *(v5 + 576) += a3;
      v6 = *(result + 32);
      if (v6)
      {
        *(v6 + 584) += a4;
      }
    }
  }

  return result;
}

void *sub_1885CA890(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CAA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CAA8C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CAC1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CAE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CAE18(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CC35C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CC558(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CC6E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CC8E4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CCA74(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CCC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CCC70(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CCE00(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CCFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CCFFC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CD18C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CD370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CD388(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CD518(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CD6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CD714(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CD8A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 560) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 560);
    *(v7 + 560) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CDA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CDAA0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 560));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885CDC30(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 568) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 568);
    *(v7 + 568) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885CDE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885CDE2C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 568));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885CEF14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4)
  {
    *(v4 + 640) += a2;
    v5 = *(result + 32);
    if (v5)
    {
      *(v5 + 648) += a3;
      v6 = *(result + 32);
      if (v6)
      {
        *(v6 + 656) += a4;
      }
    }
  }

  return result;
}

id sub_1885D00C0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_zoneID(v3, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v6, v7, *(a1 + 32)), v6, (isEqual) || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend_isEqual_(v3, v9, *(a1 + 32)))
  {
    v10 = [CKTuple2 alloc];
    v13 = objc_msgSend_perItemErrors(*(a1 + 40), v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v3);
    v17 = objc_msgSend_initWithObject1_object2_(v10, v16, v3, v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1885D1694(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, v3);
  v8 = objc_msgSend_zoneConfiguration(v5, v6, v7);
  v9 = [CKTuple2 alloc];
  v11 = objc_msgSend_initWithObject1_object2_(v9, v10, v3, v8);

  return v11;
}

id sub_1885D17FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_configurationsByRecordZoneID(v2, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v3);

  v9 = [CKTuple2 alloc];
  v10 = [CKFetchRecordZoneChangesOptions alloc];
  v12 = objc_msgSend_initWithZoneConfiguration_(v10, v11, v8);
  v14 = objc_msgSend_initWithObject1_object2_(v9, v13, v3, v12);

  return v14;
}

void *sub_1885D2978(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D2B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D2B74(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D417C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D4360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D4378(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D4508(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D46EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D4704(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D4894(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D4A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D4A90(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D64C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D66A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D66BC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D684C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D6A48(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D6BD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D6DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D6DD4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D6F64(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D7148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D7160(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D72F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D74D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D74EC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885D767C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885D7860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885D7878(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885D9520(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = objc_msgSend_configuration(*(a1 + 32), v6, v7);
  v11 = objc_msgSend_container(v8, v9, v10);
  v14 = objc_msgSend_options(v11, v12, v13);
  v17 = objc_msgSend_useAnonymousToServerShareParticipants(v14, v15, v16);

  if (v17)
  {
    v20 = 0;
    if (a3)
    {
      v21 = @"Assets not permitted when using anonymous to server share participants: %@";
LABEL_12:
      v46 = objc_msgSend_recordID(*(a1 + 40), v18, v19);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v47, @"CKErrorDomain", 12, v21, v46);
    }
  }

  else
  {
    v22 = objc_msgSend_assetReference(v5, v18, v19);

    if (v22)
    {
      v25 = objc_msgSend_configuration(*(a1 + 32), v23, v24);
      v28 = objc_msgSend_container(v25, v26, v27);
      v31 = objc_msgSend_options(v28, v29, v30);
      if (objc_msgSend_bypassPCSEncryption(v31, v32, v33))
      {
        v36 = 1;
      }

      else
      {
        v37 = objc_msgSend_configuration(*(a1 + 32), v34, v35);
        v40 = objc_msgSend_container(v37, v38, v39);
        v43 = objc_msgSend_options(v40, v41, v42);
        v36 = objc_msgSend_useClearAssetEncryption(v43, v44, v45);
      }

      v20 = v36 ^ 1u;
      if (a3 && v36)
      {
        v21 = @"Invalid CKAssetReference on record %@";
        goto LABEL_12;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  return v20;
}

void sub_1885D9B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_1885D9BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_msgSend_addObject_(*(a1 + 32), v5, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v4;
      v7 = v4;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v10 = objc_msgSend_deltasToSave(v7, v8, v9);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v72, v78, 16);
      if (v12)
      {
        v15 = v12;
        v16 = *v73;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v73 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v72 + 1) + 8 * i);
            v19 = objc_msgSend_asset(v18, v13, v14);

            if (v19)
            {
              v20 = *(a1 + 32);
              v21 = objc_msgSend_asset(v18, v13, v14);
              objc_msgSend_addObject_(v20, v22, v21);

              ++*(*(*(a1 + 40) + 8) + 24);
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v72, v78, 16);
        }

        while (v15);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v60 = v7;
      obj = objc_msgSend_pendingReplacementRequests(v7, v23, v24);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v68, v77, 16);
      if (v26)
      {
        v29 = v26;
        v63 = *v69;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v69 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v68 + 1) + 8 * j);
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v32 = objc_msgSend_replacementDeltas(v31, v27, v28);
            v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v64, v76, 16);
            if (v34)
            {
              v37 = v34;
              v38 = *v65;
              do
              {
                for (k = 0; k != v37; ++k)
                {
                  if (*v65 != v38)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v40 = *(*(&v64 + 1) + 8 * k);
                  v41 = objc_msgSend_asset(v40, v35, v36);

                  if (v41)
                  {
                    v44 = *(a1 + 32);
                    v45 = objc_msgSend_asset(v40, v42, v43);
                    objc_msgSend_addObject_(v44, v46, v45);

                    ++*(*(*(a1 + 40) + 8) + 24);
                  }

                  v47 = objc_msgSend_replacementDeltas(v31, v42, v43);
                  *(*(*(a1 + 48) + 8) + 24) += objc_msgSend_count(v47, v48, v49);

                  v52 = objc_msgSend_deltaIdentifiersToReplace(v31, v50, v51);
                  *(*(*(a1 + 56) + 8) + 24) += objc_msgSend_count(v52, v53, v54);
                }

                v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v64, v76, 16);
              }

              while (v37);
            }
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v68, v77, 16);
        }

        while (v29);
      }

      ++*(*(*(a1 + 64) + 8) + 24);
      v57 = objc_msgSend_deltasToSave(v60, v55, v56);
      *(*(*(a1 + 72) + 8) + 24) += objc_msgSend_count(v57, v58, v59);

      v4 = v61;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id sub_1885DA188(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_recordID(v3, v5, v6);
  v10 = objc_msgSend_recordChangeTag(v3, v8, v9);

  v12 = objc_msgSend_initWithFormat_(v4, v11, @"%@ etag=%@", v7, v10);

  return v12;
}

void *sub_1885DD484(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DD668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DD680(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DD810(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DD9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DDA0C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DDB9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DDD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DDD98(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DFB04(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885DFCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885DFD00(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885DFE90(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E0074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E008C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E021C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E0400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E0418(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885E0CB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_assetReference(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_assetReference(v4, v8, v9);
    if (objc_msgSend_databaseScope(v10, v11, v12) == 2 || objc_msgSend_databaseScope(v10, v13, v14) == 3)
    {
      v15 = objc_msgSend_database(*(a1 + 32), v13, v14);
      if (objc_msgSend_databaseScope(v15, v16, v17) == 2)
      {

LABEL_8:
        v27 = objc_msgSend_configuration(*(a1 + 32), v20, v21);
        v30 = objc_msgSend_container(v27, v28, v29);
        v33 = objc_msgSend_options(v30, v31, v32);
        if (objc_msgSend_bypassPCSEncryption(v33, v34, v35))
        {
          v22 = 1;
        }

        else
        {
          v38 = objc_msgSend_configuration(*(a1 + 32), v36, v37);
          v41 = objc_msgSend_container(v38, v39, v40);
          v44 = objc_msgSend_options(v41, v42, v43);
          v22 = objc_msgSend_useClearAssetEncryption(v44, v45, v46);
        }

        goto LABEL_13;
      }

      v23 = objc_msgSend_database(*(a1 + 32), v18, v19);
      v26 = objc_msgSend_databaseScope(v23, v24, v25);

      if (v26 == 3)
      {
        goto LABEL_8;
      }
    }

    v22 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v22 = 0;
LABEL_14:

  return v22;
}

id sub_1885E1104(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKTuple2 alloc];
  v6 = objc_msgSend_sourceRecordID(v2, v4, v5);
  v8 = objc_msgSend_initWithObject1_object2_(v3, v7, v6, v2);

  return v8;
}

id sub_1885E1184(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKTuple2 alloc];
  v6 = objc_msgSend_destinationRecord(v2, v4, v5);
  v9 = objc_msgSend_recordID(v6, v7, v8);
  v11 = objc_msgSend_initWithObject1_object2_(v3, v10, v9, v2);

  return v11;
}

void sub_1885E2E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E2E2C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_1885E34D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885E34F0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v11 = objc_msgSend_objectForKey_(v8, v10, v7);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1885E3618;
  v17[3] = &unk_1E70BED50;
  v18 = v11;
  v19 = v7;
  v24 = *(a1 + 56);
  v20 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v21 = v12;
  v22 = v13;
  v23 = a4;
  v14 = v11;
  v15 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v16, v17);
}

void sub_1885E3618(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = v8;
  v13 = objc_msgSend_assetContent(v10, v11, v12);

  if (v13)
  {
    v14 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = *(a1 + 32);
      if (objc_msgSend_integerValue(v9, v16, v17) < 0 || (v20 = objc_msgSend_integerValue(v9, v18, v19), v20 >= objc_msgSend_count(v15, v21, v22)))
      {
        v39 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v18, @"CKErrorDomain", 1, @"arrayIndex out of bounds");

        if (v39)
        {
          v26 = 0;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      v24 = objc_msgSend_integerValue(v9, v18, v23);
      v26 = objc_msgSend_objectAtIndexedSubscript_(v15, v25, v24);

      if (!v26)
      {
LABEL_17:
        v39 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKInternalErrorDomain", 1, @"Record has orphaned asset content for field %@", *(a1 + 40));
        v26 = 0;
        if (!v39)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      v29 = *(a1 + 32);
      if (!v29)
      {
        goto LABEL_17;
      }

      v26 = v29;
    }

    v30 = objc_msgSend_signature(v26, v27, v28);
    v33 = v30;
    if ((*(a1 + 80) & 1) == 0)
    {

      v33 = 0;
    }

    v34 = objc_msgSend_verificationKey(v26, v31, v32);
    v64 = 0;
    v36 = objc_msgSend_assetContentWithExpectedSignature_verificationKey_error_(v10, v35, v33, v34, &v64);
    v39 = v64;
    if (__sTestOverridesAvailable[0] == 1 && objc_msgSend_shouldFailInMemoryAssets(*(a1 + 48), v37, v38))
    {
      objc_msgSend_setAssetContent_(v26, v37, 0);

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v40, @"CKErrorDomain", 4, &stru_1EFA32970);
      v39 = v36 = v39;
    }

    else
    {
      if (!v36)
      {
        goto LABEL_24;
      }

      v41 = objc_msgSend_length(v36, v37, v38);
      if (v41 == objc_msgSend_size(v26, v42, v43))
      {
        v46 = objc_msgSend_assetContent(v10, v44, v45);
        objc_msgSend_setAssetContent_(v26, v47, v46);
      }

      else
      {
        v62 = objc_msgSend_size(v26, v44, v45);
        v50 = objc_msgSend_assetContent(v26, v48, v49);
        v53 = objc_msgSend_length(v50, v51, v52);
        v63 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v54, @"CKInternalErrorDomain", 1, @"asset size differs got %llu expected %lu", v62, v53);;

        v39 = v63;
      }
    }

LABEL_24:
    if (!v39)
    {
LABEL_30:

      goto LABEL_31;
    }

LABEL_25:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v55 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v57 = *(a1 + 56);
      v58 = v55;
      v61 = objc_msgSend_recordID(v57, v59, v60);
      *buf = 138412546;
      v66 = v61;
      v67 = 2112;
      v68 = v39;
      _os_log_error_impl(&dword_1883EA000, v58, OS_LOG_TYPE_ERROR, "Error wiring up asset content for recordID %@: %@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v39);
    **(a1 + 72) = 1;
    *a4 = 1;
    goto LABEL_30;
  }

LABEL_31:

  v56 = *MEMORY[0x1E69E9840];
}

void *sub_1885E3C38(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E3E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E3E34(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E3FC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 512) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 512);
    *(v7 + 512) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E41A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E41C0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E5B3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 504) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    *(v7 + 504) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E5D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E5D38(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_1885E6558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885E6570(void *a1, objc_class *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v22, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = NSStringFromClass(a2);
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v11 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1017, @"Wrong class for %@: %@", v12, v14, v18);

          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v10, &v18, v22, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

id sub_1885E66F8(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v63, v67, 16);
  if (!v5)
  {
    v50 = 0;
    goto LABEL_33;
  }

  v8 = v5;
  v9 = *v64;
  v10 = off_1E70BA000;
  v61 = a1;
  while (2)
  {
    v11 = 0;
    v62 = v8;
    do
    {
      if (*v64 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v63 + 1) + 8 * v11);
      v13 = *(a1 + 32);
      v14 = objc_msgSend_recordID(v12, v6, v7);
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, v14);

      v19 = objc_msgSend_fieldName(v12, v17, v18);
      v21 = objc_msgSend_objectForKeyedSubscript_(v16, v20, v19);

      v22 = v10[3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v12;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v27 = v24;
      if (v21)
      {
        if (v24)
        {
          if ((objc_msgSend_listIndex(v24, v25, v26) & 0x8000000000000000) == 0)
          {
            if (objc_msgSend_count(v21, v25, v26))
            {
              v30 = objc_msgSend_listIndex(v27, v28, v29);
              if (!objc_msgSend_containsIndex_(v21, v31, v30))
              {
                goto LABEL_14;
              }

              v52 = objc_msgSend_fieldName(v27, v25, v26);
              v60 = objc_msgSend_listIndex(v27, v55, v56);
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v57, @"CKInternalErrorDomain", 1017, @"Duplicate metadata for field %@ and index %ld", v52, v60);
            }

            else
            {
              v52 = objc_msgSend_fieldName(v27, v28, v29);
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v54, @"CKInternalErrorDomain", 1017, @"Duplicate metadata for field %@", v52);
            }
            v50 = ;
LABEL_32:

            goto LABEL_33;
          }

          v51 = v12;
        }

        else
        {
          v51 = 0;
        }

        v52 = objc_msgSend_fieldName(v12, v25, v26);
        v50 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v53, @"CKInternalErrorDomain", 1017, @"Duplicate metadata for field %@", v52);
        v12 = v51;
        goto LABEL_32;
      }

LABEL_14:
      if (v16)
      {
        if (v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v25, v26);
        v33 = v10;
        v34 = v9;
        v35 = *(a1 + 32);
        objc_msgSend_recordID(v12, v36, v37);
        v39 = v38 = v3;
        v40 = v35;
        v9 = v34;
        v10 = v33;
        v16 = v32;
        v8 = v62;
        objc_msgSend_setObject_forKeyedSubscript_(v40, v41, v16, v39);

        v3 = v38;
        a1 = v61;
        if (v21)
        {
LABEL_16:
          if (!v27)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      v21 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v25, v26);
      v44 = objc_msgSend_fieldName(v12, v42, v43);
      objc_msgSend_setObject_forKeyedSubscript_(v16, v45, v21, v44);

      if (!v27)
      {
        goto LABEL_22;
      }

LABEL_20:
      if ((objc_msgSend_listIndex(v27, v25, v26) & 0x8000000000000000) == 0)
      {
        v48 = objc_msgSend_listIndex(v27, v46, v47);
        objc_msgSend_addIndex_(v21, v49, v48);
      }

LABEL_22:

      ++v11;
    }

    while (v8 != v11);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v63, v67, 16);
    v50 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v58 = *MEMORY[0x1E69E9840];

  return v50;
}

BOOL sub_1885E6AA4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v14 = 0;
  v3 = *MEMORY[0x1E695DB50];
  v13 = 0;
  objc_msgSend_getResourceValue_forKey_error_(v2, v4, &v14, v3, &v13);
  v5 = v14;
  v8 = v13;
  if (v5)
  {
    v9 = objc_msgSend_unsignedIntegerValue(v5, v6, v7) == 0;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v2;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Could not get size for file %@: %@", buf, 0x16u);
    }

    v9 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}