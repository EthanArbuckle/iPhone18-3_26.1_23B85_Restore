uint64_t sub_188518620(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188518668(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA919B50 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_188518700()
{
  v22 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v0 = qword_1EA919B50;
  v18 = qword_1EA919B50;
  if (!qword_1EA919B50)
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = sub_188518668;
    v12[4] = &unk_1E70BBE68;
    v13 = &v15;
    v14 = v12;
    v19 = xmmword_1E70BBE38;
    v20 = *off_1E70BBE48;
    v21 = 0;
    v16[3] = _sl_dlopen();
    qword_1EA919B50 = *(v13[1] + 24);
    v0 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v0)
  {
    v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *CloudKitTestingLibrary(void)");
    v8 = v5;
    v9 = v5;
    v10 = v7;
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v11, v7, @"CKTestFrameworkLinking.m", 11, @"%s", v12[0]);

    __break(1u);
    goto LABEL_7;
  }

  v3 = v12[0];
  if (v12[0])
  {
LABEL_7:
    free(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1885188A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885188C0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919CB0;
  v7 = qword_1EA919CB0;
  if (!qword_1EA919CB0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1885189A0;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_1885189A0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188518988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885189A0(uint64_t a1)
{
  sub_188518700();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKTestContainer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919CB0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getCKTestContainerClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKTestFrameworkLinking.m", 13, @"Unable to find class %s", "CKTestContainer");

    __break(1u);
  }
}

id sub_188518A68()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919CB8;
  v7 = qword_1EA919CB8;
  if (!qword_1EA919CB8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_188518B48;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_188518B48(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188518B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188518B48(uint64_t a1)
{
  sub_188518700();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKTestDeviceReference");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919CB8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getCKTestDeviceReferenceClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKTestFrameworkLinking.m", 14, @"Unable to find class %s", "CKTestDeviceReference");

    __break(1u);
  }
}

id sub_188518C10()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919CC0;
  v7 = qword_1EA919CC0;
  if (!qword_1EA919CC0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_188518CF0;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_188518CF0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188518CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188518CF0(uint64_t a1)
{
  sub_188518700();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKTestServerManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919CC0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "Class getCKTestServerManagerClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKTestFrameworkLinking.m", 15, @"Unable to find class %s", "CKTestServerManager");

    __break(1u);
  }
}

void sub_188519084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1885190A8(void *a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = objc_msgSend_checkElementType_error_(v6, a2, a3, &obj);
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[5] + 8) + 24) = v8;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_188519818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18851985C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v19 = a3;
  v8 = objc_msgSend_count(v19, v6, v7);
  if (v8 >= objc_msgSend_modifierLimitForInstallationIdentifierCheck(*(a1 + 32), v9, v10))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  if (objc_msgSend_count(v19, v11, v12) < 0x1F)
  {
    if (objc_msgSend_count(v19, v13, v14) < 0xB)
    {
      if (objc_msgSend_count(v19, v17, v18) < 6)
      {
        goto LABEL_10;
      }

      v15 = @"CKMultiValueMergeableDeltaRegisterInstallationIdentifierLowLimitExceededFault";
      v16 = &unk_1EFA2E488;
    }

    else
    {
      v15 = @"CKMultiValueMergeableDeltaRegisterInstallationIdentifierMediumLimitExceededFault";
      v16 = &unk_1EFA2E468;
    }
  }

  else
  {
    v15 = @"CKMultiValueMergeableDeltaRegisterInstallationIdentifierHighLimitExceededFault";
    v16 = &unk_1EFA2E448;
  }

  CKOncePerBoot(v15, v16);
LABEL_10:
}

void sub_188519944()
{
  v4 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v2 = 134217984;
    v3 = 30;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Unique installation identifier count in CKMultiValueMergeableDeltaRegister exceeded high limit of %lu", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_188519A1C()
{
  v4 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v2 = 134217984;
    v3 = 10;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Unique installation identifier count in CKMultiValueMergeableDeltaRegister exceeded medium limit of %lu", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_188519AF4()
{
  v4 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v2 = 134217984;
    v3 = 5;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Unique installation identifier count in CKMultiValueMergeableDeltaRegister exceeded low limit of %lu", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_188519C70(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = objc_msgSend_checkElementType_error_(v3, a2, a2, &v12);
  v5 = v12;
  if ((v4 & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    objc_msgSend_raise_format_(v6, v11, v7, @"Failed to set contents on %@: %@", v10, v5);
  }
}

void sub_18851A400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_18851A438(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a2;
  if (a3 < a3 + a4)
  {
    while (*(*(*(a1 + 48) + 8) + 24) < 2uLL)
    {
      v13 = [CKDistributedTimestamp alloc];
      v15 = objc_msgSend_initWithSiteIdentifierObject_clockValue_(v13, v14, v12, a3);
      v18 = objc_msgSend_copy(*(a1 + 32), v16, v17);
      objc_msgSend_setMetadata_(v18, v19, 0);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v20, v18, v15);
      ++*(*(*(a1 + 48) + 8) + 24);

      ++a3;
      if (!--a4)
      {
        goto LABEL_10;
      }
    }

    v21 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 1, @"Multi-value register delta has more than one CKDistributedTimestampAtomStatePresent timestamp");
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 32);
      v27 = 138412290;
      v28 = v26;
      _os_log_fault_impl(&dword_1883EA000, v24, OS_LOG_TYPE_FAULT, "Multi-value register delta %@ has more than one CKDistributedTimestampAtomStatePresent timestamp", &v27, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a7 = 1;
  }

LABEL_10:

  v25 = *MEMORY[0x1E69E9840];
}

void sub_18851ABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_18851AC14(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (objc_msgSend_includesTimestamp_(*(a1 + 32), v9, v7))
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 72) + 8);
    obj = *(v12 + 40);
    v13 = objc_msgSend_checkElementType_error_(v11, v10, v8, &obj);
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      v16 = objc_msgSend_mutableCopy(*(a1 + 48), v14, v15);
      v17 = MEMORY[0x1E696AC90];
      v20 = objc_msgSend_clockValue(v7, v18, v19);
      v22 = objc_msgSend_indexSetWithIndex_(v17, v21, v20);
      v25 = objc_msgSend_siteIdentifierObject(v7, v23, v24);
      objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v16, v26, v22, 1, v25);

      v27 = [CKMergeableDeltaMetadata alloc];
      v28 = [CKMergeableDeltaVectors alloc];
      v31 = objc_msgSend_vectors(*(a1 + 56), v29, v30);
      v34 = objc_msgSend_previous(v31, v32, v33);
      v37 = objc_msgSend_vectors(*(a1 + 56), v35, v36);
      v40 = objc_msgSend_removals(v37, v38, v39);
      v42 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v28, v41, v34, v16, v40, *(a1 + 64));
      v44 = objc_msgSend_initWithVectors_(v27, v43, v42);

      v47 = objc_msgSend_copy(v8, v45, v46);
      objc_msgSend_setMetadata_(v47, v48, v44);
      objc_msgSend_addObject_(*(*(*(a1 + 80) + 8) + 40), v49, v47);
    }

    else
    {
      v50 = *(*(a1 + 80) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = 0;

      *a4 = 1;
    }
  }
}

void sub_18851AF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18851AF3C(uint64_t a1, const char *a2, void *a3)
{
  v5 = 0;
  result = objc_msgSend_contentSize_error_(a3, a2, &v5, 0);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) += v5;
  }

  return result;
}

void sub_18851BAB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AC90];
  v4 = a2;
  v7 = objc_msgSend_clockValue(v4, v5, v6);
  v13 = objc_msgSend_indexSetWithIndex_(v3, v8, v7);
  v11 = objc_msgSend_siteIdentifierObject(v4, v9, v10);

  objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v2, v12, v13, 1, v11);
}

void sub_18851BDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18851BE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a6 - 1) <= 1)
  {
    v10 = *(a1 + 32);
    v11 = a2;
    v14 = objc_msgSend_vector(v10, v12, v13);
    v16 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v15, a3, a4);
    objc_msgSend_addClockValuesInIndexSet_withClockType_atomState_forSiteIdentifier_(v14, v17, v16, a5, *(a1 + 48), v11);

    *(*(*(a1 + 40) + 8) + 24) += a4;
  }
}

void sub_18851C3D4(uint64_t a1, void *a2)
{
  v9 = a2;
  v5 = objc_msgSend_vector(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_atomStateForTimestamp_(v5, v6, v9);

  if (v7 == 3)
  {
    objc_msgSend_addObject_(*(a1 + 40), v8, v9);
  }
}

void sub_18851C454(uint64_t a1, void *a2)
{
  v19 = a2;
  v5 = objc_msgSend_vector(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_atomStateForTimestamp_(v5, v6, v19);

  if (v7 == 2)
  {
    v10 = *(a1 + 40);
    v11 = MEMORY[0x1E696AC90];
    v12 = objc_msgSend_clockValue(v19, v8, v9);
    v14 = objc_msgSend_indexSetWithIndex_(v11, v13, v12);
    v17 = objc_msgSend_siteIdentifierObject(v19, v15, v16);
    objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v10, v18, v14, 1, v17);
  }
}

id sub_18851F928(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_valueForProperty_propertyInfo_inObject_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 56), *(a1 + 48));
  v6 = v3;
  if (!v3)
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v4, v9[10]);
    objc_msgSend_setValue_forProperty_propertyInfo_inObject_(v9, v11, v10, *(a1 + 40), *(a1 + 56), *(a1 + 48));

LABEL_6:
    v12 = *(a1 + 48);
    v18.receiver = *(a1 + 32);
    v18.super_class = CKPackageTableBase;
    v8 = objc_msgSendSuper2(&v18, sel_insertObject_, v12);
    goto LABEL_7;
  }

  if (objc_msgSend_unsignedLongLongValue(v3, v4, v5) == *(*(a1 + 32) + 80))
  {
    goto LABEL_6;
  }

  v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKErrorDomain", 12, @"Package object %@ has invalid %@", *(a1 + 48), *(a1 + 40));
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18851FAB0;
  v17[3] = &unk_1E70BC048;
  v17[4] = v13;
  v14 = v13;
  objc_msgSend_addTransactionCompletionHandler_(v14, v15, v17);

  return v8;
}

uint64_t sub_18851FAB0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    ++*(*(result + 32) + 80);
  }

  return result;
}

void sub_18851FC58(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_predicateWithFormat_(v2, v5, @"%@ = $ENTRYINDEX", v3);
  objc_msgSend_setSearchPredicate_(v4, v6, v7);
}

void sub_18851FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18851FEB8(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18851FF8C;
  v15[3] = &unk_1E70BC098;
  v15[4] = v3;
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(v3, a2, v4, off_1EA90EAD8, v15);
  v8 = objc_msgSend_allObjects(v5, v6, v7);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v13 = objc_msgSend_error(v5, v11, v12);

  return v13;
}

void sub_18851FF8C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setLimit_(v3, v4, &unk_1EFA84F18);
  v10 = objc_msgSend_primaryKey(*(a1 + 32), v5, v6);
  objc_msgSend_orderAscendingByProperty_(v3, v7, v10);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v10, @"%@ >= $STARTINDEX", v10);
  objc_msgSend_setSearchPredicate_(v3, v9, v8);
}

id sub_188520890(uint64_t a1)
{
  v3 = objc_alloc_init(CKPackageItem);
  if (*(a1 + 64))
  {
    v4 = 1;
    do
    {
      v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v2, v4 - 1);
      v8 = objc_msgSend_unsignedLongValue(v5, v6, v7);
      objc_msgSend_setPackageIndex_(v3, v9, v8);

      v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v10, v4 - 1);
      objc_msgSend_setFileURL_(v3, v12, v11);

      v14 = objc_msgSend_updateProperties_usingObject_label_(*(a1 + 48), v13, *(a1 + 56), v3, off_1EA90EB50);
      v15 = v14;
      if (v4 >= *(a1 + 64))
      {
        break;
      }

      ++v4;
    }

    while (!v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_188520A38(uint64_t a1, const char *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v20 = @"INDEX";
  v3 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  v21[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v21, &v20, 1);

  v9 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), v6, v5, off_1EA90EB68, &unk_1EFA2E4E8);
  v10 = 0;
  while (1)
  {
    v11 = v10;
    v10 = objc_msgSend_nextObject(v9, v7, v8);

    if (!v10)
    {
      break;
    }

    (*(*(a1 + 40) + 16))();
    v16 = objc_msgSend_error(v9, v14, v15);
    if (v16)
    {

      break;
    }
  }

  v17 = objc_msgSend_error(v9, v12, v13);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void sub_188520B9C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v7 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"%@ = $INDEX", @"sectionIndex");
  objc_msgSend_setSearchPredicate_(v7, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v7, v6, @"packageItemID");
}

id sub_188520CC4(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [CKPackageTableEntryEnumerator alloc];
  v4 = objc_msgSend_initWithPackageTable_(v2, v3, *(a1 + 32));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_msgSend_setPackageIndex_(v12, v8, 0xFFFFFFFFLL, v18);
        v14 = objc_msgSend_insertObject_(*(a1 + 40), v13, v12);
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void sub_188521138(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  if (a1)
  {
    objc_storeStrong((a1 + 128), a3);
    v9 = objc_msgSend_packageID(v6, v7, v8);
    v10 = *(a1 + 144);
    *(a1 + 144) = v9;

    objc_storeStrong((a1 + 136), a2);
  }
}

id sub_188521E20(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_resetSectionPlanning(*(*(a1 + 32) + 152), a2, a3);
  if (!v4)
  {
    v4 = objc_msgSend_resetSectionPlanning(*(*(a1 + 32) + 160), v5, v6);
  }

  return v4;
}

id sub_188521F34(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_insertObject_(*(*(a1 + 32) + 160), a2, *(a1 + 40));
  if (!v4)
  {
    objc_msgSend_setPackage_(*(a1 + 40), v3, *(a1 + 32));
  }

  return v4;
}

void sub_1885226C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_groupID(a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

uint64_t sub_18852335C(uint64_t a1, const char *a2, uint64_t a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (byte_1EA90C538)
  {
    v4 = &unk_1EFA85068;
  }

  else
  {
    v4 = &unk_1EFA85080;
  }

  v36[0] = @"TYPE";
  v36[1] = @"NOW";
  v37[0] = v4;
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
  v37[1] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v37, v36, 2);

  v9 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), v8, v7, 0, &unk_1EFA2E548);
  v12 = objc_msgSend_allObjects(v9, v10, v11);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v35, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_deleteReference_(*(a1 + 32), v15, *(*(&v29 + 1) + 8 * i));
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v29, v35, 16);
    }

    while (v17);
  }

  v21 = objc_msgSend_error(v9, v15, v16);

  if (v21)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      v28 = objc_msgSend_error(v9, v26, v27);
      *buf = 138412290;
      v34 = v28;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error enumerating expired package references: %@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1885235BC(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"(%@ = $TYPE) OR (%@ < $NOW)", @"referenceType", @"expirationDate");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

id sub_188523CA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_msgSend_referenceID(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_deletePrimaryKeyValue_(v4, v6, v5);

  if (!v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 40);
      *buf = 138412290;
      v28 = v25;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Deleted package ref: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_packageID(*(a1 + 40), v9, v10);
    v12 = *(a1 + 32);
    v26 = 0;
    IsZeroForPackageID_error = objc_msgSend_refcountIsZeroForPackageID_error_(v12, v13, v11, &v26);
    v15 = v26;
    v7 = v15;
    if ((IsZeroForPackageID_error & 1) == 0 && !v15)
    {
      v18 = objc_msgSend_tableGroup(*(a1 + 32), v16, v17);
      v21 = objc_msgSend_sqlitePackage(*(a1 + 40), v19, v20);
      v7 = objc_msgSend_refcountBecameZeroForPackage_packageID_(v18, v22, v21, v11);
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1885240CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885240E4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v17 = 0;
  v4 = objc_msgSend_newPackageInDatabase_error_(CKSQLitePackage, a2, v3, &v17);
  v5 = v17;
  v9 = objc_msgSend_packageID(v4, v6, v7);
  if (!v5)
  {
    v10 = *(*(a1 + 32) + 136);
    v16 = 0;
    v11 = objc_msgSend_newProcessReferenceForPackage_error_(v10, v8, v9, &v16);
    v5 = v16;
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!v5)
    {
      objc_msgSend_setSqlitePackage_(*(*(*(a1 + 40) + 8) + 40), v14, v4);
    }
  }

  return v5;
}

void sub_188524328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188524340(void *a1, const char *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 128);
  v21 = 0;
  v5 = objc_msgSend_entryWithPrimaryKey_error_(v4, a2, v3, &v21);
  v7 = v21;
  if (v5)
  {
    v8 = a1[5];
    v9 = *(a1[4] + 136);
    v20 = v7;
    v10 = objc_msgSend_newProcessReferenceForPackage_error_(v9, v6, v8, &v20);
    v11 = v20;

    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    v14 = a1[4];
    v19 = v11;
    v16 = objc_msgSend_existingPackageInDatabase_packageInfo_error_(CKSQLitePackage, v15, v14, v5, &v19);
    v7 = v19;

    objc_msgSend_setSqlitePackage_(*(*(a1[6] + 8) + 40), v17, v16);
  }

  return v7;
}

void sub_1885245C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1885245E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v43[5] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_packageID(*(a1 + 32), a2, a3);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 136);
  v35 = 0;
  v8 = objc_msgSend_newAnchorReferenceForPackage_expirationDate_error_(v6, v7, v4, v5, &v35);
  v9 = v35;
  if (v9 || (objc_msgSend_extendExpirationOfPackage_forReference_(*(*(a1 + 40) + 128), v10, *(a1 + 32), v8), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v9;
  }

  else
  {
    v17 = objc_msgSend_bundleID(*(a1 + 40), v11, v12);
    v20 = objc_msgSend_creationDate(*(a1 + 40), v18, v19);
    v23 = objc_msgSend_referenceID(v8, v21, v22);
    v25 = v23;
    v26 = *(a1 + 48);
    if (v26)
    {
      v42[0] = @"packageID";
      v42[1] = @"bundleID";
      v43[0] = v4;
      v43[1] = v17;
      v42[2] = @"referenceID";
      v42[3] = @"expirationDate";
      v43[2] = v23;
      v43[3] = v26;
      v42[4] = @"packageDBCreationDate";
      v43[4] = v20;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v43, v42, 5);
    }

    else
    {
      v40[0] = @"packageID";
      v40[1] = @"bundleID";
      v41[0] = v4;
      v41[1] = v17;
      v40[2] = @"referenceID";
      v40[3] = @"packageDBCreationDate";
      v41[2] = v23;
      v41[3] = v20;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v41, v40, 4);
    }
    v27 = ;
    v34 = 0;
    v29 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v28, v27, 200, 0, &v34);
    v13 = v34;
    v30 = *(*(a1 + 56) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v32 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 40);
      *buf = 138412546;
      v37 = v25;
      v38 = 2112;
      v39 = v33;
      _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Created new anchor referenceID:%@ to package %@", buf, 0x16u);
    }
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

id sub_1885248A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v28 = 0;
  v6 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v5, v4, 0, 0, &v28);

  v7 = v28;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectForKey_(v6, v8, @"packageID");
    v11 = objc_msgSend_objectForKey_(v6, v14, @"referenceID");
    v12 = objc_msgSend_objectForKey_(v6, v15, @"bundleID");
    v17 = objc_msgSend_objectForKey_(v6, v16, @"packageDBCreationDate");
    v13 = v17;
    if (v10 && v12 && v17 && v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 12, @"Invalid anchor: %@", v6);
    }
  }

  v18 = objc_msgSend_objectForKey_(v6, v8, @"expirationDate");
  v21 = v18;
  if (!v9 && v18)
  {
    v22 = objc_msgSend_date(MEMORY[0x1E695DF00], v19, v20);
    v24 = objc_msgSend_compare_(v21, v23, v22);

    if (v24 != -1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 12, @"Anchor is expired: %@", v6);
  }

  if (a3 && v9)
  {
    v26 = v9;
    *a3 = v9;

    v6 = 0;
  }

LABEL_17:

  return v6;
}

void sub_188524F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188524F94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = 0;
  v7 = objc_msgSend_packageReferenceFromAnchorDictionary_error_(v5, v6, a3, &v19);
  v10 = v19;
  if (v7)
  {
    v11 = objc_msgSend_packageID(v7, v8, v9);
    v18 = v10;
    v13 = objc_msgSend_existingPackage_error_(v5, v12, v11, &v18);
    v14 = v18;

    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v13;

    v10 = v14;
  }

  return v10;
}

void sub_188525230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188525250(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = 0;
  v7 = objc_msgSend_packageReferenceFromAnchorDictionary_error_(v5, v6, a3, &v13);
  v8 = v13;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (!v8)
  {
    v8 = objc_msgSend_deleteReference_(v5[17], v11, *(*(*(a1 + 32) + 8) + 40));
  }

  return v8;
}

void sub_188527CD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_sharedManager(CKProcessScopedStateManager, a2, a3);
  v5 = objc_msgSend_untrustedEntitlements(v8, v3, v4);
  byte_1ED4B60C0 = objc_msgSend_hasVFSOpenByIDEntitlement(v5, v6, v7);
}

void sub_18852FA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18852FA30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_18852FEF4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 12, @"Cannot append a zero-length segment to a streaming asset.");
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))(v4, 0);
    v3 = v5;
  }
}

void sub_18852FF78(uint64_t a1, const char *a2, uint64_t a3)
{
  v92 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAppending(*(a1 + 32), a2, a3))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v91 = v8;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Trying to append to streaming asset while already appending %@", buf, 0xCu);
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKErrorDomain", 1, @"An append is already in progress. Please wait until the current append has finished before appending again.");
  }

  else
  {
    v9 = objc_msgSend_streamingAsset(*(a1 + 32), v4, v5);
    v12 = objc_msgSend_uploadURL(v9, v10, v11);

    if (v12)
    {
      goto LABEL_19;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v82 = *(a1 + 32);
      v83 = v14;
      v86 = objc_msgSend_streamingAsset(v82, v84, v85);
      *buf = 138412290;
      v91 = v86;
      _os_log_error_impl(&dword_1883EA000, v83, OS_LOG_TYPE_ERROR, "Missing uploadURL appending to streaming asset %@", buf, 0xCu);
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKErrorDomain", 12, @"Missing upload URL for streaming asset. Try saving the streaming asset in a record to the server.");
  }
  v16 = ;
  if (v16)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v91 = v16;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Error before starting streaming asset append: %@", buf, 0xCu);
    }

    v20 = objc_msgSend_callbackQueue(*(a1 + 32), v18, v19);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1885304F4;
    block[3] = &unk_1E70BC2E8;
    v21 = *(a1 + 64);
    v88 = v16;
    v89 = v21;
    v22 = v16;
    dispatch_async(v20, block);

    v23 = v89;
    goto LABEL_27;
  }

LABEL_19:
  objc_msgSend_setAppending_(*(a1 + 32), v13, 1);
  objc_msgSend_setCurrentAppendCancelled_(*(a1 + 32), v24, 0);
  objc_msgSend_setCompletionHandler_(*(a1 + 32), v25, *(a1 + 64));
  v26 = *(a1 + 32);
  v27 = objc_opt_class();
  v28 = *(a1 + 40);
  v31 = objc_msgSend_streamingAsset(*(a1 + 32), v29, v30);
  v34 = objc_msgSend_uploadURL(v31, v32, v33);
  v35 = *(a1 + 48);
  v38 = objc_msgSend_streamingAsset(*(a1 + 32), v36, v37);
  v41 = objc_msgSend_bytesUploaded(v38, v39, v40);
  v22 = objc_msgSend_requestToAppendSegmentData_uploadURL_requestUUID_offset_(v27, v42, v28, v34, v35, v41);

  v45 = objc_msgSend_length(*(a1 + 40), v43, v44);
  objc_msgSend_setCurrentSegmentLength_(*(a1 + 32), v46, v45);
  v49 = objc_msgSend_streamingAsset(*(a1 + 32), v47, v48);
  v52 = objc_msgSend_requestOptions(v49, v50, v51);
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = objc_alloc_init(MEMORY[0x1E698F6D0]);
  }

  v23 = v54;

  v55 = MEMORY[0x1E696AEC0];
  v56 = *(a1 + 32);
  v57 = objc_opt_class();
  v59 = objc_msgSend_stringWithFormat_(v55, v58, @"%@ requestUUID:%@", v57, *(a1 + 48));
  objc_msgSend_setIdentifier_(v23, v60, v59);

  objc_msgSend_setTlsPinning_(v23, v61, 1);
  v64 = objc_msgSend_sharedManager(MEMORY[0x1E698F6C8], v62, v63);
  v66 = objc_msgSend_createDataTaskWithRequest_options_delegate_sessionHandle_(v64, v65, v22, v23, *(a1 + 32), 0);
  objc_msgSend_setDataTask_(*(a1 + 32), v67, v66);

  objc_msgSend_setRequestUUID_(*(a1 + 32), v68, *(a1 + 48));
  objc_msgSend_setOsActivity_(*(a1 + 32), v69, *(a1 + 56));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v70 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v77 = *(a1 + 32);
    v78 = v70;
    v81 = objc_msgSend_dataTask(v77, v79, v80);
    *buf = 138412290;
    v91 = v81;
    _os_log_debug_impl(&dword_1883EA000, v78, OS_LOG_TYPE_DEBUG, "Will resume streaming asset append data task: %@", buf, 0xCu);
  }

  v73 = objc_msgSend_dataTask(*(a1 + 32), v71, v72);
  objc_msgSend_resume(v73, v74, v75);

LABEL_27:
  v76 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1885304F4(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "On callback queue about to call completion handler for before starting append", v5, 2u);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_1885309CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v201 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = objc_msgSend_osActivity(*(a1 + 32), a2, a3);
  v5 = v4;
  if (v4)
  {
    os_activity_scope_enter(v4, &state);
  }

  else
  {
    v6 = _os_activity_create(&dword_1883EA000, "client/streaming-asset-didComplete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);
  }

  if (*(a1 + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412546;
      v192 = v10;
      v193 = 2112;
      *v194 = v11;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Append task completed with error %@: %@", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v111 = *(a1 + 48);
      *buf = 138412290;
      v192 = v111;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Append task completed %@", buf, 0xCu);
    }
  }

  v13 = *(a1 + 48);
  v14 = objc_msgSend_dataTask(*(a1 + 32), v8, v9);
  LOBYTE(v13) = v13 == v14;

  if ((v13 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      *buf = 138412290;
      v192 = v18;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Received completion callback for task that is not ours: %@", buf, 0xCu);
    }

    goto LABEL_140;
  }

  v19 = objc_msgSend_response(*(a1 + 48), v15, v16);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_msgSend_response(*(a1 + 48), v21, v22), v23 = objc_claimAutoreleasedReturnValue(), (v26 = v23) == 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v97 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v112 = *(a1 + 32);
      *buf = 138412290;
      v192 = v112;
      _os_log_error_impl(&dword_1883EA000, v97, OS_LOG_TYPE_ERROR, "No response for %@", buf, 0xCu);
    }

    if (objc_msgSend_isCurrentAppendCancelled(*(a1 + 32), v98, v99))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v101 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1883EA000, v101, OS_LOG_TYPE_DEBUG, "Sending error back that the current append was cancelled", buf, 2u);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v102, @"CKErrorDomain", 20, @"Append was cancelled");
    }

    else
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v100, @"CKErrorDomain", 34, @"No response appending to streaming asset");
    }
    v75 = ;
    v26 = 0;
    goto LABEL_126;
  }

  v27 = objc_msgSend_allHeaderFields(v23, v24, v25);
  v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"x-apple-sa-status");

  v32 = objc_msgSend_allHeaderFields(v26, v30, v31);
  v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"x-apple-sa-status");
  v37 = objc_msgSend_integerValue(v34, v35, v36);

  v40 = objc_msgSend_allHeaderFields(v26, v38, v39);
  v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"x-apple-sa-content-status");

  v45 = objc_msgSend_allHeaderFields(v26, v43, v44);
  v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"x-apple-sa-content-status");
  v180 = objc_msgSend_integerValue(v47, v48, v49);

  v52 = objc_msgSend_allHeaderFields(v26, v50, v51);
  v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"x-apple-sa-error-code");

  v57 = objc_msgSend_allHeaderFields(v26, v55, v56);
  v59 = objc_msgSend_objectForKeyedSubscript_(v57, v58, @"x-apple-sa-error-code");
  v182 = objc_msgSend_integerValue(v59, v60, v61);

  v64 = objc_msgSend_allHeaderFields(v26, v62, v63);
  v183 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"x-apple-sa-error-description");

  v67 = objc_msgSend_valueForHTTPHeaderField_(v26, v66, @"X-Apple-Request-UUID");
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v68 = ck_log_facility_ck;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    v179 = objc_msgSend_requestUUID(*(a1 + 32), v69, v70);
    v175 = objc_msgSend_statusCode(v26, v124, v125);
    if (v67)
    {
      v178 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" requestUUID=%@", v67);
    }

    else
    {
      v178 = &stru_1EFA32970;
    }

    if (v29)
    {
      v177 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" edgeStatus=%d", v37);
    }

    else
    {
      v177 = &stru_1EFA32970;
    }

    if (v42)
    {
      v146 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" contentStatus=%d", v180);
    }

    else
    {
      v146 = &stru_1EFA32970;
    }

    v181 = v146;
    if (v54)
    {
      v147 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, @" errorCode=%d errorDescription=%@", v182, v183);
      v146 = v181;
    }

    else
    {
      v147 = &stru_1EFA32970;
    }

    v148 = v175;
    v176 = v147;
    *buf = 138544642;
    v192 = v179;
    v193 = 1024;
    *v194 = v148;
    *&v194[4] = 2114;
    *&v194[6] = v178;
    v195 = 2114;
    v196 = v177;
    v197 = 2114;
    v198 = v146;
    v199 = 2114;
    v200 = v147;
    _os_log_debug_impl(&dword_1883EA000, v68, OS_LOG_TYPE_DEBUG, "Append request %{public}@ finished with httpStatus=%d%{public}@%{public}@%{public}@%{public}@", buf, 0x3Au);
    if (v54)
    {
    }

    if (v42)
    {
    }

    if (v29)
    {
    }

    if (v67)
    {
    }
  }

  if (objc_msgSend_statusCode(v26, v71, v72) != 200)
  {
    v76 = v67;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v103 = ck_log_facility_ck;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v145 = objc_msgSend_allHeaderFields(v26, v104, v105);
      *buf = 138412290;
      v192 = v145;
      _os_log_error_impl(&dword_1883EA000, v103, OS_LOG_TYPE_ERROR, "Received unknown error appending to streaming asset. Headers=%@", buf, 0xCu);
    }

    v96 = CKErrorFromHTTPResponse(v26);
    v75 = objc_msgSend_CKClientSuitableError(v96, v106, v107);
    goto LABEL_57;
  }

  v75 = 0;
  v76 = v67;
  if (v37 <= 1)
  {
    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_125;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v108 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v110 = *(a1 + 32);
        *buf = 138412290;
        v192 = v110;
        _os_log_impl(&dword_1883EA000, v108, OS_LOG_TYPE_INFO, "Upload was terminated by the uploader for %@", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v109, @"CKErrorDomain", 20, @"Streaming asset upload terminated: requestUUID=%@", v67);
      goto LABEL_124;
    }

    v119 = objc_msgSend_allHeaderFields(v26, v73, v74);
    v96 = objc_msgSend_objectForKeyedSubscript_(v119, v120, @"x-apple-sa-receipt");

    if (objc_msgSend_fakeMissingUploadReceipt(*(a1 + 32), v121, v122))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v123 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v123, OS_LOG_TYPE_INFO, "Pretending like we didn't get an upload receipt", buf, 2u);
      }
    }

    else if (v96)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v127 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v174 = *(a1 + 32);
        *buf = 138412290;
        v192 = v174;
        _os_log_debug_impl(&dword_1883EA000, v127, OS_LOG_TYPE_DEBUG, "Successfully appended to streaming asset %@", buf, 0xCu);
      }

      v130 = objc_msgSend_streamingAsset(*(a1 + 32), v128, v129);
      objc_msgSend_setUploadReceipt_(v130, v131, v96);

      v134 = objc_msgSend_streamingAsset(*(a1 + 32), v132, v133);
      v137 = objc_msgSend_currentSegmentLength(*(a1 + 32), v135, v136);
      v140 = objc_msgSend_size(v134, v138, v139);
      objc_msgSend_setSize_(v134, v141, v140 + v137);

      v75 = 0;
      goto LABEL_94;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v143 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v143, OS_LOG_TYPE_ERROR, "No upload receipt after appending to streaming asset", buf, 2u);
    }

    v75 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v144, @"CKErrorDomain", 1, @"Missing upload receipt after appending to streaming asset. Create a new streaming asset to continue: requestUUID=%@", v67);
    v96 = 0;
LABEL_94:
    objc_msgSend_setCurrentSegmentLength_(*(a1 + 32), v142, 0);
LABEL_57:

    goto LABEL_125;
  }

  switch(v37)
  {
    case 2:
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v113 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v115 = *(a1 + 32);
        *buf = 138412290;
        v192 = v115;
        _os_log_impl(&dword_1883EA000, v113, OS_LOG_TYPE_INFO, "Segment signature mismatch for %@", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v114, @"CKErrorDomain", 1, @"Segment signature mismatch: requestUUID=%@", v67);
      goto LABEL_124;
    case 3:
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v116 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v118 = *(a1 + 32);
        *buf = 138412290;
        v192 = v118;
        _os_log_impl(&dword_1883EA000, v116, OS_LOG_TYPE_INFO, "Vendor upload error for %@", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v117, @"CKErrorDomain", 1, @"Vendor upload error: requestUUID=%@", v67);
      goto LABEL_124;
    case 4:
      if (v182 == 48)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v149 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v151 = *(a1 + 32);
          *buf = 138412290;
          v192 = v151;
          _os_log_impl(&dword_1883EA000, v149, OS_LOG_TYPE_INFO, "Append would exceed max length for %@", buf, 0xCu);
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v150, @"CKErrorDomain", 27, @"Append would exceed max length of streaming asset: requestUUID=%@", v67);
      }

      else
      {
        if (v182 == 42)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v77 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v80 = *(a1 + 32);
            *buf = 138412290;
            v192 = v80;
            _os_log_impl(&dword_1883EA000, v77, OS_LOG_TYPE_INFO, "Stream offset invalid for %@", buf, 0xCu);
          }

          v81 = objc_msgSend_allHeaderFields(v26, v78, v79);
          v83 = objc_msgSend_objectForKeyedSubscript_(v81, v82, @"x-apple-sa-current-length");

          if (objc_opt_respondsToSelector())
          {
            v86 = objc_msgSend_integerValue(v83, v84, v85);
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v87 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v192 = v86;
              _os_log_debug_impl(&dword_1883EA000, v87, OS_LOG_TYPE_DEBUG, "Offset was invalid, and we have a new length of the streaming asset (%ld)", buf, 0xCu);
            }

            v90 = objc_msgSend_streamingAsset(*(a1 + 32), v88, v89);
            v93 = objc_msgSend_copy(v90, v91, v92);

            objc_msgSend_setSize_(v93, v94, v86);
            v189 = @"CKServerStreamingAsset";
            v190 = v93;
            v96 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v95, &v190, &v189, 1);
          }

          else
          {
            v96 = 0;
          }

          v75 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v84, @"CKErrorDomain", 124, v96, @"Local streaming asset bytes uploaded doesn't match server: requestUUID=%@", v67);

          goto LABEL_57;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v152 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v154 = *(a1 + 32);
          *buf = 138412290;
          v192 = v154;
          _os_log_impl(&dword_1883EA000, v152, OS_LOG_TYPE_INFO, "Content error for %@", buf, 0xCu);
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v153, @"CKErrorDomain", 1, @"Content error: requestUUID=%@", v67);
      }

      v75 = LABEL_124:;
      v76 = v67;
      break;
  }

LABEL_125:

LABEL_126:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v155 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v155, OS_LOG_TYPE_DEBUG, "Finishing streaming asset append", buf, 2u);
  }

  objc_msgSend_setAppending_(*(a1 + 32), v156, 0);
  objc_msgSend_setRequestUUID_(*(a1 + 32), v157, 0);
  objc_msgSend_setOsActivity_(*(a1 + 32), v158, 0);
  v161 = objc_msgSend_completionHandler(*(a1 + 32), v159, v160);
  objc_msgSend_setCompletionHandler_(*(a1 + 32), v162, 0);
  if (v75)
  {
    v165 = 0;
  }

  else
  {
    v166 = objc_msgSend_streamingAsset(*(a1 + 32), v163, v164);
    v165 = objc_msgSend_copy(v166, v167, v168);
  }

  if (v161)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v169 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v169, OS_LOG_TYPE_DEBUG, "About to call back to adopter for streaming asset append completion", buf, 2u);
    }

    v172 = objc_msgSend_callbackQueue(*(a1 + 32), v170, v171);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188531AF8;
    block[3] = &unk_1E70BC338;
    v185 = v75;
    v187 = v161;
    v186 = v165;
    dispatch_async(v172, block);
  }

LABEL_140:
  os_activity_scope_leave(&state);
  v173 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188531AF8(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v8 = @" with error: ";
    if (!v7)
    {
      v8 = &stru_1EFA32970;
      v7 = &stru_1EFA32970;
    }

    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v7;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "On callback queue for streaming asset append completion%{public}@%@", &v9, 0x16u);
  }

  v3 = a1[5];
  v4 = a1[4];
  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_188531D48(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_osActivity(*(a1 + 32), a2, a3, 0, 0);
  v5 = v4;
  if (v4)
  {
    os_activity_scope_enter(v4, &v35);
  }

  else
  {
    v6 = _os_activity_create(&dword_1883EA000, "client/streaming-asset-abort", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &v35);
  }

  objc_msgSend_setCurrentAppendCancelled_(*(a1 + 32), v7, 1);
  v10 = objc_msgSend_dataTask(*(a1 + 32), v8, v9);
  v11 = v10 == 0;

  if (v11)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v37 = v27;
      _os_log_impl(&dword_1883EA000, v26, OS_LOG_TYPE_INFO, "Trying to abort a streaming asset append with no data task %@", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 32);
      *buf = 138412290;
      v37 = v33;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Aborting streaming asset append %@", buf, 0xCu);
    }

    v15 = objc_msgSend_dataTask(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_state(v15, v16, v17) == 0;

    if (v18)
    {
      v28 = objc_msgSend_dataTask(*(a1 + 32), v19, v20);
      objc_msgSend_cancel(v28, v29, v30);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v31 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 32);
        *buf = 138412290;
        v37 = v34;
        _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Did cancel data task for %@", buf, 0xCu);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = objc_msgSend_dataTask(*(a1 + 32), v22, v23);
        v25 = *(a1 + 32);
        *buf = 138412546;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "Trying to cancel a data task that isn't running %@ for %@", buf, 0x16u);
      }
    }
  }

  os_activity_scope_leave(&v35);
  v32 = *MEMORY[0x1E69E9840];
}

__CFString *CKStringFromPartition(uint64_t a1)
{
  v1 = @"Unknown Partition Type";
  if (a1 == 1)
  {
    v1 = @"Prod";
  }

  if (a1 == 2)
  {
    return @"Carry";
  }

  else
  {
    return v1;
  }
}

__CFString *CKStringFromDeviceToDeviceDataPrivacyStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BC438[a1];
  }
}

__CFString *CKStringFromWalrusStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BC438[a1];
  }
}

void sub_1885322B8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v8 = 134218240;
    v9 = v5;
    v10 = 1024;
    v11 = geteuid();
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "Setting the in-memory account info validation counter to %ld for uid %u", &v8, 0x12u);
  }

  qword_1ED4B6018 = *(a1 + 32);

  v7 = *MEMORY[0x1E69E9840];
}

void *sub_1885323CC(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_188532744;
  v32[3] = &unk_1E70BC418;
  v32[4] = v3;
  CKOncePerBoot(@"CKAccountInfoCacheReset", v32);
  objc_opt_self();
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = geteuid();
  if (v5)
  {
    v8 = v5 == 501;
  }

  else
  {
    v8 = 1;
  }

  v9 = qword_1ED4B60D0;
  if (v8 && !qword_1ED4B60D0)
  {
    v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v6, v7);
    v12 = objc_msgSend_objectForKey_(v10, v11, @"CloudKitAccountInfoCache");
    v13 = qword_1ED4B60D0;
    qword_1ED4B60D0 = v12;

    v9 = qword_1ED4B60D0;
  }

  v14 = v9;
  objc_sync_exit(v4);

  v16 = objc_msgSend_objectForKey_(v14, v15, v2);

  if (!v16)
  {
    v18 = 0;
    objc_msgSend_setIsFromCache_(0, v17, 1);
    goto LABEL_26;
  }

  v31 = 0;
  v18 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(MEMORY[0x1E696ACD0], v17, v3, v16, &v31);
  v21 = v31;
  if (v21)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_error_impl(&dword_1883EA000, v22, OS_LOG_TYPE_ERROR, "Failed to unarchive account info cache: %@", buf, 0xCu);
    }
  }

  else
  {
    valid = objc_msgSend_validAccountInfoValidationCounterValue(v3, v19, v20);
    v24 = valid;
    if (v18)
    {
      v25 = v18[2];
    }

    else
    {
      v25 = 0;
    }

    if (valid == v25)
    {
      goto LABEL_25;
    }

    if (!valid && qword_1ED4B60D8 != -1)
    {
      dispatch_once(&qword_1ED4B60D8, &unk_1EFA2E5E8);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      if (v18)
      {
        v30 = v18[2];
      }

      else
      {
        v30 = 0;
      }

      *buf = 134218240;
      v34 = v24;
      v35 = 2048;
      v36 = v30;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "The cached account info is obsolete, not using it. currentValidationCounter: %zu, cached: %zu", buf, 0x16u);
    }
  }

  v18 = 0;
LABEL_25:

  objc_msgSend_setIsFromCache_(v18, v27, 1);
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_18853274C()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_1883EA000, v0, OS_LOG_TYPE_FAULT, "Could not validate account info cache. (This is a potential performance issue.)", v1, 2u);
  }
}

void sub_1885329AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1885329D8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_188532C14;
  v16[3] = &unk_1E70BBE90;
  v16[4] = &v17;
  CKOncePerBoot(@"AccountInfoValidationCounterReset", v16);
  if (v18[3])
  {
    v4 = 1;
  }

  else
  {
    if (__sTestOverridesAvailable[0])
    {
      v5 = @"TEST_AccountInfoValidationCounter";
    }

    else
    {
      v5 = @"AccountInfoValidationCounter";
    }

    v6 = v5;
    v8 = objc_msgSend_integerForKey_(v3, v7, v6);

    v4 = v8 + 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (__sTestOverridesAvailable[0])
  {
    v10 = @"TEST_AccountInfoValidationCounter";
  }

  else
  {
    v10 = @"AccountInfoValidationCounter";
  }

  v11 = v10;
  objc_msgSend_setInteger_forKey_(v3, v12, v9, v11);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v14 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 134217984;
    v22 = v14;
    _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_INFO, "Invalidated adopter account info caches. validationCounter: %zu", buf, 0xCu);
  }

  _Block_object_dispose(&v17, 8);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_188532BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CKSharingSummaryStringFromOptionsGroups(void *a1)
{
  v108 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v95 = [CKException alloc];
    v97 = objc_msgSend_initWithName_format_(v95, v96, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    objc_exception_throw(v97);
  }

  v3 = v1;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v103, v107, 16);
  v99 = v3;
  if (!v4)
  {
    v92 = &stru_1EFA32970;
    goto LABEL_45;
  }

  v7 = v4;
  v101 = 0;
  v102 = 0;
  v8 = 0;
  isSelected = 0;
  v9 = 0;
  v10 = *v104;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v104 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v103 + 1) + 8 * i);
      v13 = objc_msgSend_identifier(v12, v5, v6);
      isEqualToString = objc_msgSend_isEqualToString_(v13, v14, @"CKSharingPermissionGroupID");

      if (isEqualToString)
      {
        v18 = v12;
        v21 = objc_msgSend_options(v18, v19, v20);
        v8 = objc_msgSend_count(v21, v22, v23);

        v26 = objc_msgSend_selectedOptionIdentifier(v18, v24, v25);
        v28 = objc_msgSend_isEqualToString_(v26, v27, @"CKSharingPermissionViewOnlyOptionID");

        if (v28)
        {
          v9 = @"RO";
        }

        else
        {
          v49 = objc_msgSend_selectedOptionIdentifier(v18, v29, v30);
          v51 = objc_msgSend_isEqualToString_(v49, v50, @"CKSharingPermissionCanMakeChangesOptionID");

          if (v51)
          {
            v9 = @"RW";
          }

          else
          {
            v68 = objc_msgSend_selectedOptionIdentifier(v18, v52, v53);
            v70 = objc_msgSend_isEqualToString_(v68, v69, @"CKSharingPermissionMixedOptionID");

            if (v70)
            {
              v9 = @"RO";
            }
          }
        }
      }

      else
      {
        v31 = objc_msgSend_identifier(v12, v16, v17);
        v33 = objc_msgSend_isEqualToString_(v31, v32, @"CKSharingWhoCanAccessGroupID");

        if (v33)
        {
          v18 = v12;
          v38 = objc_msgSend_options(v18, v36, v37);
          v101 = objc_msgSend_count(v38, v39, v40);

          v43 = objc_msgSend_selectedOptionIdentifier(v18, v41, v42);
          v45 = objc_msgSend_isEqualToString_(v43, v44, @"CKSharingAccessAnyoneWithLinkOptionID");

          if (v45)
          {
            v48 = @"anyone";
          }

          else
          {
            v65 = objc_msgSend_selectedOptionIdentifier(v18, v46, v47);
            v67 = objc_msgSend_isEqualToString_(v65, v66, @"CKSharingAccessSpecifiedRecipientsOnlyOptionID");

            v48 = v102;
            if (v67)
            {
              v48 = @"invited";
            }
          }

          v102 = v48;
        }

        else
        {
          v54 = objc_msgSend_identifier(v12, v34, v35);
          v56 = objc_msgSend_isEqualToString_(v54, v55, @"CKSharingAllowOthersToInviteGroupID");

          if (!v56)
          {
            continue;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v12;
            v61 = objc_msgSend_selectedOptionIdentifier(v18, v59, v60);
            if (objc_msgSend_isEqualToString_(v61, v62, @"CKSharingAllowOthersToInviteOptionID"))
            {
              isSelected = 1;
            }

            else
            {
              v81 = objc_msgSend_selectedOptionIdentifier(v18, v63, v64);
              v83 = objc_msgSend_isEqualToString_(v81, v82, @"CKSharingAllowOthersToInviteMixedOptionID");

              isSelected |= v83;
              v3 = v99;
            }
          }

          else
          {
            v71 = objc_msgSend_options(v12, v57, v58);
            v18 = objc_msgSend_firstObject(v71, v72, v73);

            v76 = objc_msgSend_identifier(v18, v74, v75);
            v78 = objc_msgSend_isEqualToString_(v76, v77, @"CKSharingAllowOthersToInviteOptionID");

            if (v78)
            {
              isSelected = objc_msgSend_isSelected(v18, v79, v80);
            }

            v3 = v99;
          }
        }
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v103, v107, 16);
  }

  while (v7);
  if (v8 == 1 && v101 == 1 && objc_msgSend_isEqualToString_(v9, v5, @"RW") && objc_msgSend_isEqualToString_(v102, v5, @"invited"))
  {
    v84 = @"COLLABORATION_OPTIONS_SUMMARY_invited_RW_no_invite";
    if (isSelected)
    {
      v84 = @"COLLABORATION_OPTIONS_SUMMARY_invited_RW_allow_invite";
    }

    v91 = v84;
LABEL_43:
    v92 = CKLocalizedString(v91, &stru_1EFA32970, v85, v86, v87, v88, v89, v90, v98);
  }

  else
  {
    v92 = &stru_1EFA32970;
    if (v102)
    {
      if (v9)
      {
        v98 = v102;
        v91 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"COLLABORATION_OPTIONS_SUMMARY_%@_%@");
        if (v91)
        {
          goto LABEL_43;
        }
      }
    }
  }

LABEL_45:

  v93 = *MEMORY[0x1E69E9840];

  return v92;
}

uint64_t CKSharingAccessTypeFromOptionsGroups(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v41 = [CKException alloc];
    v43 = objc_msgSend_initWithName_format_(v41, v42, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    goto LABEL_25;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v57, v61, 16);
  if (!v3)
  {

    goto LABEL_24;
  }

  v6 = v3;
  v7 = 0;
  v8 = 0;
  v9 = *v58;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v58 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v57 + 1) + 8 * i);
      v12 = objc_msgSend_identifier(v11, v4, v5);
      isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"CKSharingWhoCanAccessGroupID");

      if (isEqualToString)
      {
        v17 = v7;
        v7 = v11;
        v18 = v8;
      }

      else
      {
        v19 = objc_msgSend_identifier(v11, v15, v16);
        v21 = objc_msgSend_isEqualToString_(v19, v20, @"CKSharingPermissionGroupID");

        v17 = v8;
        v18 = v11;
        if (!v21)
        {
          continue;
        }
      }

      v22 = v11;

      v8 = v18;
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v57, v61, 16);
  }

  while (v6);

  if (!v7)
  {
LABEL_24:
    v44 = [CKException alloc];
    v43 = objc_msgSend_initWithName_format_(v44, v45, *MEMORY[0x1E695D940], @"Could not find any access picker group in optionsGroups: %@", obj);
    goto LABEL_25;
  }

  v25 = objc_msgSend_selectedOptionIdentifier(v7, v23, v24);
  v27 = objc_msgSend_isEqualToString_(v25, v26, @"CKSharingAccessAnyoneWithLinkOptionID");

  if (!v27)
  {
    v35 = 1;
    goto LABEL_21;
  }

  if (!v8)
  {
    v46 = [CKException alloc];
    v43 = objc_msgSend_initWithName_format_(v46, v47, *MEMORY[0x1E695D940], @"Could not find any permission picker group for anyone-with-link case optionsGroups: %@", obj);
LABEL_25:
    objc_exception_throw(v43);
  }

  v30 = objc_msgSend_selectedOptionIdentifier(v8, v28, v29);
  v32 = objc_msgSend_isEqualToString_(v30, v31, @"CKSharingPermissionViewOnlyOptionID");

  if (v32)
  {
    v35 = 2;
  }

  else
  {
    v36 = objc_msgSend_selectedOptionIdentifier(v8, v33, v34);
    v38 = objc_msgSend_isEqualToString_(v36, v37, @"CKSharingPermissionCanMakeChangesOptionID");

    if ((v38 & 1) == 0)
    {
      v48 = [CKException alloc];
      v49 = *MEMORY[0x1E695D940];
      v52 = objc_msgSend_selectedOptionIdentifier(v8, v50, v51);
      v54 = objc_msgSend_initWithName_format_(v48, v53, v49, @"Unknown permission group selected option %@ for anyone-with-link case optionsGroups: %@", v52, obj);
      v55 = v54;

      objc_exception_throw(v54);
    }

    v35 = 3;
  }

LABEL_21:

  v39 = *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t CKSharingPermissionTypeFromOptionsGroups(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v36 = [CKException alloc];
    v35 = objc_msgSend_initWithName_format_(v36, v37, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
LABEL_20:
    objc_exception_throw(v35);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v46, v50, 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  v7 = v4;
  v8 = *v47;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v47 != v8)
    {
      objc_enumerationMutation(v2);
    }

    v10 = *(*(&v46 + 1) + 8 * v9);
    v11 = objc_msgSend_identifier(v10, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"CKSharingPermissionGroupID");

    if (isEqualToString)
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v46, v50, 16);
      if (!v7)
      {
LABEL_10:

        goto LABEL_18;
      }

      goto LABEL_4;
    }
  }

  v14 = v10;

  if (!v14)
  {
LABEL_18:
    v33 = [CKException alloc];
    v35 = objc_msgSend_initWithName_format_(v33, v34, *MEMORY[0x1E695D940], @"Could not find any permission picker group in optionsGroups: %@", v2);
    goto LABEL_20;
  }

  v17 = objc_msgSend_selectedOptionIdentifier(v14, v15, v16);
  v19 = objc_msgSend_isEqualToString_(v17, v18, @"CKSharingPermissionViewOnlyOptionID");

  if (v19)
  {
LABEL_16:
    v27 = 2;
    goto LABEL_17;
  }

  v22 = objc_msgSend_selectedOptionIdentifier(v14, v20, v21);
  v24 = objc_msgSend_isEqualToString_(v22, v23, @"CKSharingPermissionCanMakeChangesOptionID");

  if ((v24 & 1) == 0)
  {
    v28 = objc_msgSend_selectedOptionIdentifier(v14, v25, v26);
    v30 = objc_msgSend_isEqualToString_(v28, v29, @"CKSharingPermissionMixedOptionID");

    if ((v30 & 1) == 0)
    {
      v38 = [CKException alloc];
      v39 = *MEMORY[0x1E695D940];
      v42 = objc_msgSend_selectedOptionIdentifier(v14, v40, v41);
      v44 = objc_msgSend_initWithName_format_(v38, v43, v39, @"Unknown permission group selected option %@ for optionsGroups: %@", v42, v2, v46);
      v45 = v44;

      objc_exception_throw(v44);
    }

    goto LABEL_16;
  }

  v27 = 3;
LABEL_17:

  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t CKSharingAllowOthersToInviteFromOptionsGroups(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v50 = [CKException alloc];
    v52 = objc_msgSend_initWithName_format_(v50, v51, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    objc_exception_throw(v52);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v64, v68, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v65;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v64 + 1) + 8 * i);
        v11 = objc_msgSend_identifier(v10, v5, v6);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"CKSharingAllowOthersToInviteGroupID");

        if (isEqualToString)
        {
          v14 = v10;
          goto LABEL_12;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v64, v68, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v17 = objc_msgSend_options(v14, v15, v16);
  isSelected = objc_msgSend_count(v17, v18, v19);

  if (isSelected)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v14;
      v26 = objc_msgSend_selectedOptionIdentifier(v23, v24, v25);
      if (objc_msgSend_isEqualToString_(v26, v27, @"CKSharingAllowOthersToInviteOptionID"))
      {

LABEL_19:
        isSelected = 1;
        goto LABEL_22;
      }

      v40 = objc_msgSend_selectedOptionIdentifier(v23, v28, v29);
      v42 = objc_msgSend_isEqualToString_(v40, v41, @"CKSharingAllowOthersToInviteMixedOptionID");

      if (v42)
      {
        goto LABEL_19;
      }

      v45 = objc_msgSend_selectedOptionIdentifier(v23, v43, v44);
      v47 = objc_msgSend_isEqualToString_(v45, v46, @"CKSharingOnlyYouCanInviteOthersOptionID");

      if (v47)
      {
        isSelected = 0;
        goto LABEL_22;
      }

      v53 = [CKException alloc];
      v54 = *MEMORY[0x1E695D940];
      v57 = objc_msgSend_selectedOptionIdentifier(v23, v59, v60);
    }

    else
    {
      v30 = objc_msgSend_options(v14, v21, v22);
      v23 = objc_msgSend_firstObject(v30, v31, v32);

      v35 = objc_msgSend_identifier(v23, v33, v34);
      v37 = objc_msgSend_isEqualToString_(v35, v36, @"CKSharingAllowOthersToInviteOptionID");

      if (v37)
      {
        isSelected = objc_msgSend_isSelected(v23, v38, v39);
LABEL_22:

        goto LABEL_23;
      }

      v53 = [CKException alloc];
      v54 = *MEMORY[0x1E695D940];
      v57 = objc_msgSend_identifier(v23, v55, v56);
    }

    v61 = v57;
    v62 = objc_msgSend_initWithName_format_(v53, v58, v54, @"Unknown admin group selection option %@ for optionsGroups: %@", v57, v2, v64);
    v63 = v62;

    objc_exception_throw(v62);
  }

LABEL_23:

  v48 = *MEMORY[0x1E69E9840];
  return isSelected;
}

uint64_t CKSharingAllowAccessRequestsFromOptionsGroups(void *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v38 = [CKException alloc];
    v40 = objc_msgSend_initWithName_format_(v38, v39, *MEMORY[0x1E695D940], @"Must specify non-nil optionsGroups");
    objc_exception_throw(v40);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v49, v53, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v50;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = objc_msgSend_identifier(v10, v5, v6);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"CKSharingAllowAccessRequestsGroupID");

        if (isEqualToString)
        {
          v14 = v10;
          goto LABEL_12;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v49, v53, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v17 = objc_msgSend_options(v14, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_msgSend_selectedOptionIdentifier(v14, v21, v22);
      isSelected = objc_msgSend_isEqualToString_(v23, v24, @"CKSharingAllowAccessRequestsOptionID");
    }

    else
    {
      v26 = objc_msgSend_options(v14, v21, v22);
      v23 = objc_msgSend_firstObject(v26, v27, v28);

      v31 = objc_msgSend_identifier(v23, v29, v30);
      v33 = objc_msgSend_isEqualToString_(v31, v32, @"CKSharingAllowAccessRequestsOptionID");

      if (!v33)
      {
        v41 = [CKException alloc];
        v42 = *MEMORY[0x1E695D940];
        v45 = objc_msgSend_identifier(v23, v43, v44);
        v47 = objc_msgSend_initWithName_format_(v41, v46, v42, @"Unknown access request option %@ in switch style group: %@", v45, v2, v49);
        v48 = v47;

        objc_exception_throw(v47);
      }

      isSelected = objc_msgSend_isSelected(v23, v34, v35);
    }

    v20 = isSelected;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

__CFString *CKStringFromServerEnvironment(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BCF68[a1];
  }
}

uint64_t CKServerEnvironmentFromString(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a1, a2, a3);
  if (objc_msgSend_hasPrefix_(v3, v4, @"icloud"))
  {
    v6 = objc_msgSend_substringWithRange_(v3, v5, 6, 1);
    v9 = objc_msgSend_integerValue(v6, v7, v8);
    if ((v9 - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *CKStringFromAccountChangeType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BCFA0[a1 - 1];
  }
}

__CFString *CKStringFromApplicationPermissionStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown status";
  }

  else
  {
    return off_1E70BCFF0[a1];
  }
}

void sub_188537C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_188537CE0(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1883EA000, "CKStatusReport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = WeakRetained;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Building status report for %@", buf, 0xCu);
    }

    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = sub_1886CEDB0(v5);
    sub_188537F84(v6);

    v7 = sub_1886CEDB0(v5[8]);
    sub_188537F84(v7);

    v8 = sub_1886CEDB0(v5[9]);
    sub_188537F84(v8);

    v9 = sub_1886CEDB0(v5[10]);
    sub_188537F84(v9);

    v10 = sub_1886CEDB0(v5[11]);
    sub_188537F84(v10);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v5[18];
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v24, 16);
    if (v13)
    {
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = sub_1886CEDB0(*(*(&v19 + 1) + 8 * i));
          sub_188537F84(v16);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v19, v24, 16);
      }

      while (v13);
    }

    objc_sync_exit(v5);
  }

  os_activity_scope_leave(&state);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_188537F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state)
{
  objc_sync_exit(v17);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_188537F84(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = v1;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Status report from notification: %{public}@", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

id sub_1885381D4(void *a1, void *a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v61 = a3;
  v8 = a4;
  v59 = v8;
  if (a1)
  {
    if (v8)
    {
      v10 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v9, v8, 0);
      objc_msgSend_applyDefaultParametersToServiceURLComponents_(CKCodeFunctionInvokeOperationInfo, v11, v10);
      v14 = objc_msgSend_URL(v10, v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v16 = a1;
    objc_sync_enter(v16);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v60 = v16;
    v19 = objc_msgSend_codeServiceImplementations(v16, v17, v18);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v62, v72, 16);
    if (v23)
    {
      v24 = *v63;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v62 + 1) + 8 * v25);
        v27 = objc_msgSend_serviceName(v26, v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v27, v28, v7);

        if (isEqualToString)
        {
          v30 = objc_msgSend_boxedDatabaseScope(v26, v21, v22);
          v33 = v30;
          if (v30 == v61)
          {

LABEL_16:
            v37 = objc_msgSend_serviceInstanceURL(v26, v21, v22);
            v40 = v37;
            if (v37 == v14)
            {

LABEL_28:
              inited = v26;

              v49 = v60;
              goto LABEL_29;
            }

            v41 = objc_msgSend_serviceInstanceURL(v26, v38, v39);
            isEqual = objc_msgSend_isEqual_(v41, v42, v14);

            if (isEqual)
            {
              goto LABEL_28;
            }

            goto LABEL_18;
          }

          v34 = objc_msgSend_boxedDatabaseScope(v26, v31, v32);
          v36 = objc_msgSend_isEqual_(v34, v35, v61);

          if (v36)
          {
            goto LABEL_16;
          }
        }

LABEL_18:
        if (v23 == ++v25)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v62, v72, 16);
          if (v23)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v44 = ck_log_facility_ck;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v55 = objc_msgSend_intValue(v61, v45, v46);
      v58 = objc_msgSend_containerID(v60, v56, v57);
      *buf = 138412802;
      v67 = v7;
      v68 = 1024;
      v69 = v55;
      v70 = 2112;
      v71 = v58;
      _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "Creating code service implementation for serviceName %@ (scope: %d) in container %@", buf, 0x1Cu);
    }

    if (!v60[18])
    {
      v47 = objc_opt_new();
      v48 = v60[18];
      v60[18] = v47;
    }

    v49 = v60;
    v50 = [CKCodeServiceImplementation alloc];
    inited = objc_msgSend_initInternalWithContainerImplementation_serviceName_boxedDatabaseScope_serviceInstanceURL_(v50, v51, v60, v7, v61, v14);
    objc_msgSend_addObject_(v60[18], v52, inited);
LABEL_29:
    objc_sync_exit(v49);
  }

  else
  {
    inited = 0;
  }

  v53 = *MEMORY[0x1E69E9840];

  return inited;
}

void sub_1885387A0(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = v3;
  if (a1 && objc_msgSend_count(v3, v4, v5))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v6;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v32, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_longLongValue(*(*(&v24 + 1) + 8 * i), v10, v11, v24);
          sandbox_extension_release();
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v24, v32, 16);
      }

      while (v12);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v17 = v15;
      v20 = objc_msgSend_count(v7, v18, v19);
      v23 = objc_msgSend_containerID(a1, v21, v22);
      *buf = 134218242;
      v29 = v20;
      v30 = 2112;
      v31 = v23;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Released %lu sandbox extensions for container %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_188539328(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = objc_msgSend_ckShortDescription(v3, v5, v6);
    v9 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v8, @"CKErrorDomain", 5, v4, @"Failed to perform block with persona %@", v7);
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_188539550(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_1885395C8(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188539654;
  v4[3] = &unk_1E70BC568;
  v5 = *(a1 + 32);
  objc_msgSend_getPersona_(a2, v3, v4);
}

void sub_188539654(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
    (*(v3 + 16))(v3, v5, v8);
  }
}

BOOL sub_1885397AC()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

void sub_1885397D0(void *a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188539A7C;
    aBlock[3] = &unk_1E70BC5B8;
    objc_copyWeak(v34, &location);
    v34[1] = a3;
    v31 = v11;
    v35 = a2;
    v32 = v12;
    v14 = v13;
    v33 = v14;
    v15 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_188539DA0;
    v26[3] = &unk_1E70BC5E0;
    v29 = a2;
    v27 = v14;
    v16 = v15;
    v28 = v16;
    v17 = v26;
    v18 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(a1, v19, v18) && __sTestOverridesAvailable[0] == 1 && byte_1EA919CC8 == 1)
    {
      v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, sel__getContainerScopedDaemonProxyCreatorSynchronous_completionHandler_, a1, @"CKContainer.m", 831, @"In a testing process, some silly code decided to xpc from a non-test CKContainer");
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_188539E5C;
    v37[3] = &unk_1E70BC658;
    v37[4] = a1;
    v24 = v17;
    v38 = v24;
    v39 = a2;
    objc_msgSend_performBlock_(a1, v25, v37);

    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

void sub_188539A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_188539A7C(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained || !objc_msgSend_CKIsXPCConnectionError(v3, v4, v5))
  {
    goto LABEL_16;
  }

  sub_188539C88(WeakRetained, v7, v8);
  if (!*(a1 + 64) || (v9 = *(a1 + 32)) != 0 && !(*(v9 + 16))(v9, v3))
  {
    if (!*(a1 + 40))
    {
      goto LABEL_17;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Exhausted automatic retries getting container proxy, failing with error for %@: %@", &v13, 0x16u);
    }

LABEL_16:
    (*(*(a1 + 40) + 16))();
    goto LABEL_17;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "Automatically retrying getting container proxy due to error for %@: %@", &v13, 0x16u);
  }

  sub_1885397D0(WeakRetained, *(a1 + 72), *(a1 + 64) - 1, *(a1 + 32), *(a1 + 40), *(a1 + 48));
LABEL_17:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_188539C88(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(*(a1 + 240), a2, a3);
  v4 = *(a1 + 57);
  *(a1 + 57) = 0;
  objc_msgSend_unlock(*(a1 + 240), v5, v6);
  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = a1;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v17, 0xCu);
    }

    v10 = objc_msgSend_deviceContext(a1, v8, v9);
    v13 = objc_msgSend_deviceScopedStateManager(v10, v11, v12);
    objc_msgSend_resetThrottles(v13, v14, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_188539DA0(uint64_t a1, void *a2, void *a3)
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

void sub_188539E5C(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    v6 = *(a1 + 32);
    if (!v6 || !v6[27])
    {
      objc_initWeak(location, v6);
      v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_18853A1F0;
      v33[3] = &unk_1E70BC608;
      objc_copyWeak(&v34, location);
      v11 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v9, v10, @"CKXPCConnectionInterrupted", 0, 0, v33);
      v12 = *(a1 + 32);
      if (v12)
      {
        objc_storeStrong((v12 + 216), v11);
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(location);
    }

    objc_sync_exit(v5);

    v15 = *(a1 + 32);
    if (v15)
    {
      objc_msgSend_lock(*(v15 + 240), v13, v14);
    }

    else
    {
      objc_msgSend_lock(0, v13, v14);
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      if (*(v18 + 57))
      {
        v19 = *(v18 + 208);
        v18 = *(a1 + 32);
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = 0;
      }

      objc_msgSend_unlock(*(v18 + 240), v16, v17);
LABEL_20:
      if (v19)
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v20 = sub_1885AADF8([CKContainerCallbackProxy alloc], *(a1 + 32));
        v23 = objc_msgSend_connection(*(a1 + 32), v21, v22);
        v26 = objc_msgSend_setupInfo(*(a1 + 32), v24, v25);
        v27 = *(a1 + 48);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = sub_18853A2DC;
        v31[3] = &unk_1E70BC630;
        v31[4] = *(a1 + 32);
        v32 = *(a1 + 40);
        objc_msgSend_getContainerScopedDaemonProxyCreatorForContainerSetupInfo_exportedProxy_synchronous_completionHandler_(v23, v28, v26, v20, v27, v31);
      }

      goto LABEL_24;
    }

    v19 = 0;
LABEL_27:
    objc_msgSend_unlock(0, v16, v17);
    goto LABEL_20;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v30 = *(a1 + 32);
    *location = 138412546;
    *&location[4] = v30;
    v36 = 2112;
    v37 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to get container proxy for %@: %@", location, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_24:

  v29 = *MEMORY[0x1E69E9840];
}

void sub_18853A1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_18853A1F0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted for %@", &v6, 0xCu);
    }

    sub_188539C88(WeakRetained, v3, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_18853A2DC(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v9 = a3;
  if (v6)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_msgSend_lock(*(v10 + 240), v7, v8);
    }

    else
    {
      objc_msgSend_lock(0, v7, v8);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 208);
      if (v12)
      {
        v13 = *(a1 + 32);
        if (v13)
        {
          v14 = *(v13 + 57);

          if (v14)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v15 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              v16 = *(a1 + 32);
              v29 = 138412546;
              v30 = v16;
              v31 = 2112;
              v32 = v6;
              _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "Ignoring superfluous container proxy for %@: %@", &v29, 0x16u);
            }

            v17 = *(a1 + 32);
            if (v17)
            {
              v17 = v17[26];
            }

            v18 = v17;

            v6 = v18;
LABEL_29:
            v27 = *(a1 + 32);
            if (v27)
            {
              objc_msgSend_unlock(*(v27 + 240), v19, v20);
            }

            else
            {
              objc_msgSend_unlock(0, v19, v20);
            }

            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v23 = *(a1 + 32);
      if (v23)
      {
        objc_storeStrong((v23 + 208), a2);
        v24 = *(a1 + 32);
        if (v24)
        {
          *(v24 + 57) = 1;
        }
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 32);
      v29 = 138412546;
      v30 = v26;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_1883EA000, v25, OS_LOG_TYPE_INFO, "Got a container proxy for %@: %@", &v29, 0x16u);
    }

    goto LABEL_29;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 32);
    v29 = 138412546;
    v30 = v22;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get container proxy for %@: %@", &v29, 0x16u);
  }

  v6 = 0;
LABEL_31:
  (*(*(a1 + 40) + 16))();

  v28 = *MEMORY[0x1E69E9840];
}

void sub_18853A86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18853A8B8(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Discretionary connection was interrupted: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_18853A998(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
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
      v8 = 138412290;
      v9 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v8, 0xCu);
    }

    objc_msgSend_lock(WeakRetained[30], v3, v4);
    *(WeakRetained + 58) = 0;
    objc_msgSend_unlock(WeakRetained[30], v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_18853B2A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853B318(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18853B3A8;
  v5[3] = &unk_1E70BC6A8;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  objc_msgSend_statusGroupsForApplicationPermission_completionHandler_(a2, v4, v3, v5);
}

void sub_18853B3A8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_18853B598(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_18853B610(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18853B6B0;
  v6[3] = &unk_1E70BC6F8;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  objc_msgSend_setApplicationPermission_enabled_completionHandler_(a2, v5, v4, v3, v6);
}

void sub_18853B6B0(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
    (*(v3 + 16))(v3, a2, v5);
  }
}

void sub_18853B888(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853B8FC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853B988;
  v4[3] = &unk_1E70BC540;
  v5 = *(a1 + 32);
  objc_msgSend_resetAllApplicationPermissionsWithCompletionHandler_(a2, v3, v4);
}

void sub_18853B988(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853BB58(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853BBCC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853BC58;
  v4[3] = &unk_1E70BC540;
  v5 = *(a1 + 32);
  objc_msgSend_tossConfigWithCompletionHandler_(a2, v3, v4);
}

void sub_18853BC58(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853C064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, os_activity_scope_state_s state)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_18853C094(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch server preferred push environment: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Successfully fetched server preferred push environment: %{public}@", &v13, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    objc_msgSend_setPushEnvironment_(WeakRetained, v10, v5);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_18853C4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18853C4F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_18853C6E0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853C758(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853C7E4;
  v4[3] = &unk_1E70BC798;
  v5 = *(a1 + 32);
  objc_msgSend_serverPreferredPushEnvironmentWithCompletionHandler_(a2, v3, v4);
}

void sub_18853C7E4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_18853C9E4(uint64_t a1, void *a2)
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
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "IRONY. Errored out talking to daemon while trying to set a fake error for class name %{public}@, check your syslog", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_18853CCA4(uint64_t a1, void *a2)
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
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "IRONY. Errored out talking to daemon while trying to set a fake operation result for class name %{public}@, check your syslog", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18853CD94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  return MEMORY[0x1EEE66B58](a2, sel_setFakeResponseOperationResult_forNextRequestOfClassName_forItemID_withLifetime_completionHandler_, *(a1 + 32));
}

void sub_18853CF10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853CF88(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853D014;
  v4[3] = &unk_1E70BC830;
  v5 = *(a1 + 32);
  objc_msgSend_getOutstandingOperationCountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853D014(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853D1D8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853D250(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853D2DC;
  v4[3] = &unk_1E70BC830;
  v5 = *(a1 + 32);
  objc_msgSend_getRegisteredItemCountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853D2DC(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853D4A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, v4);
  }
}

void sub_18853D514(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853D5A0;
  v4[3] = &unk_1E70BC540;
  v5 = *(a1 + 32);
  objc_msgSend_dropDetachedContainersWithCompletionHandler_(a2, v3, v4);
}

void sub_18853D5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_18853D694(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = a2;
    v6 = [CKSignatureGenerator alloc];
    a2 = objc_msgSend_initWithBoundaryKey_(v6, v7, v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_18853D900(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Error fetching boundary key: %@", &v10, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_18853DA20(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853DAAC;
  v4[3] = &unk_1E70BC858;
  v5 = *(a1 + 32);
  objc_msgSend_globalPerUserBoundaryKeyWithCompletionHandler_(a2, v3, v4);
}

void sub_18853DAAC(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = v7;
    v17 = objc_msgSend_length(v5, v15, v16);
    v19 = objc_msgSend_stringWithFormat_(v13, v18, @"<%lu bytes>", v17);
    v20 = @". Error was ";
    v21 = &stru_1EFA32970;
    *buf = 138543874;
    v23 = v19;
    if (v6)
    {
      v21 = v6;
    }

    else
    {
      v20 = &stru_1EFA32970;
    }

    v24 = 2114;
    v25 = v20;
    v26 = 2112;
    v27 = v21;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Boundary key is %{public}@%{public}@%@", buf, 0x20u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = objc_msgSend_CKClientSuitableError(v6, v8, v9);
    (*(v10 + 16))(v10, v5, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_18853DFE0(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing metadata cache, check your syslog", v4, 2u);
  }
}

void sub_18853E19C(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing PILS cache, check your syslog", v4, 2u);
  }
}

void sub_18853E3AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while requesting dataclass status from account, check your syslog", v9, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_18853E494(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853E520;
  v4[3] = &unk_1E70BC8C8;
  v5 = *(a1 + 32);
  objc_msgSend_representativeDataclassEnabledWithCompletionHandler_(a2, v3, v4);
}

void sub_18853E520(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853E6E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while retrieving session validity error, check your syslog", v9, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_18853E7CC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853E858;
  v4[3] = &unk_1E70BC8F0;
  v5 = *(a1 + 32);
  objc_msgSend_getCloudCoreSessionValidityError_(a2, v3, v4);
}

void sub_18853E858(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v11 = objc_msgSend_CKClientSuitableError(a2, v6, v7);
  v10 = objc_msgSend_CKClientSuitableError(v5, v8, v9);

  (*(v4 + 16))(v4, v11, v10);
}

void sub_18853EA44(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, -1, v4);
  }
}

void sub_18853EABC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853EB48;
  v4[3] = &unk_1E70BC6F8;
  v5 = *(a1 + 32);
  objc_msgSend_serverEnvironmentWithCompletionHandler_(a2, v3, v4);
}

void sub_18853EB48(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  (*(v4 + 16))(v4, a2, v5);
}

void sub_18853ED0C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18853ED84(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853EE10;
  v4[3] = &unk_1E70BC798;
  v5 = *(a1 + 32);
  objc_msgSend_currentDeviceIDWithCompletionHandler_(a2, v3, v4);
}

void sub_18853EE10(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_18853EFE8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_18853F064(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853F0F0;
  v4[3] = &unk_1E70BC918;
  v5 = *(a1 + 32);
  objc_msgSend_displayInfoOnAccountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853F0F0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v8 = a3;
    v9 = a2;
    v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
    (*(v5 + 16))(v5, v9, v8, v12);
  }
}

void sub_18853F2F4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_18853F370(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18853F3FC;
  v4[3] = &unk_1E70BC918;
  v5 = *(a1 + 32);
  objc_msgSend_displayInfoOnAccountWithCompletionHandler_(a2, v3, v4);
}

void sub_18853F3FC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v8 = a4;
    v9 = a2;
    v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
    (*(v5 + 16))(v5, v9, v8, v12);
  }
}

void sub_18853F9A4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v4;
      v11 = objc_msgSend_metricUUID(v7, v9, v10);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Error reaching cloudd to submit CKEventMetric %{public}@: %@", &v12, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_18853FAD8(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = v3 == 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18853FB84;
  v7[3] = &unk_1E70BC940;
  v5 = a1[4];
  v7[4] = a1[5];
  v8 = v3;
  objc_msgSend_submitClientEventMetric_completeWhenQueued_completionHandler_(a2, v6, v5, v4, v7);
}

uint64_t sub_18853FB84(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_18853FE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18853FE4C(uint64_t a1, void *a2)
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
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error retrieving daemon to get network transfer endpoint: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18853FF48(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18853FFBC;
  v3[3] = &unk_1E70BC9B8;
  v4 = *(a1 + 32);
  return objc_msgSend_networkTransferEndpointWithCompletionHandler_(a2, a2, v3);
}

void sub_18853FFBC(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v23 = v17;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error getting network transfer endpoint: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_16;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_14:
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKInternalErrorDomain", 1000, @"No endpoint dictionary received from daemon");
    goto LABEL_15;
  }

  v18 = *(*(*(a1 + 40) + 8) + 40);
  *buf = 138412290;
  v23 = v18;
  _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Received network transfer endpoint: %@", buf, 0xCu);
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = nw_endpoint_create_from_dictionary();
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKInternalErrorDomain", 1000, @"Failed to convert endpoint dictionary: %@", v5);
    v19 = LABEL_15:;
    v20 = *(*(a1 + 32) + 8);
    v10 = *(v20 + 40);
    *(v20 + 40) = v19;
LABEL_16:
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_188540494(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18854050C(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188540598;
  v4[3] = &unk_1E70BC798;
  v5 = *(a1 + 32);
  objc_msgSend_frameworkCachesDirectoryWithCompletionHandler_(a2, v3, v4);
}

void sub_188540598(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
    (*(v3 + 16))(v3, v5, v8);
  }
}

void sub_188540B88(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_188540BE8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188540C78;
  v5[3] = &unk_1E70BC540;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_msgSend_dumpDaemonStatusReportToFileHandle_completionHandler_(a2, v4, v3, v5);
}

void sub_188540C78(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_188541074(uint64_t a1, void *a2)
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
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to simulate memory pressure with error: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_188541178(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188541208;
  v5[3] = &unk_1E70BC540;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  objc_msgSend_handleMemoryPressure_completionHandler_(a2, v4, v3, v5);
}

void sub_188541208(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Failed to simulate memory pressure with error: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Successfully simulated memory pressure", &v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1885417B4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v8 = v5;
    if (a3)
    {
      v5 = objc_msgSend_setOrgAdminUserID_(a1, v5, v5);
    }

    else
    {
      v5 = objc_msgSend_setContainerScopedUserID_(a1, v5, v5);
    }

    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

id sub_188541820(void *a1, uint64_t a2, id a3)
{
  if (a1)
  {
    if (a2 == 1)
    {
      v3 = objc_msgSend_orgAdminUserID(a1, 1, a3);
    }

    else
    {
      if (a2)
      {
        goto LABEL_7;
      }

      v3 = objc_msgSend_containerScopedUserID(a1, 0, a3);
    }

    a3 = v3;
  }

  else
  {
    a3 = 0;
  }

LABEL_7:

  return a3;
}

void sub_188541878(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1883ED874;
    v28 = sub_1883EF590;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1883ED874;
    v22 = sub_1883EF590;
    v23 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188541C5C;
    block[3] = &unk_1E70BCA58;
    block[4] = a1;
    block[5] = &v24;
    block[6] = &v18;
    block[7] = a2;
    dispatch_sync(qword_1ED4B60E0, block);
    if (!v19[5])
    {
      objc_initWeak(&location, a1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v7 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = a1;
        _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Will fetch user record ID for container: %@", buf, 0xCu);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_188541CD0;
      v14[3] = &unk_1E70BC540;
      v8 = v5;
      v15 = v8;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_188541D5C;
      v11[3] = &unk_1E70BCAA8;
      objc_copyWeak(v13, &location);
      v13[1] = a2;
      v12 = v8;
      sub_1885397D0(a1, 0, 1, 0, v14, v11);

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
      goto LABEL_13;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v10 = v25[5];
      *buf = 138412290;
      v31 = v10;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Have cached user IDs, returning %@", buf, 0xCu);
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    else if (!v5)
    {
LABEL_13:
      _Block_object_dispose(&v18, 8);

      _Block_object_dispose(&v24, 8);
      goto LABEL_14;
    }

    (*(v5 + 2))(v5, v25[5], 0);
    goto LABEL_13;
  }

LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
}

void sub_188541C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188541C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188541820(*(a1 + 32), *(a1 + 56), a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = sub_188541820(*(a1 + 32), 0, v7);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8]();
}

void sub_188541CD0(uint64_t a1, void *a2)
{
  v8 = a2;
  if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
  {
    v5 = objc_msgSend_CKClientSuitableError(v8, v3, v4);

    v6 = v5;
  }

  else
  {
    v6 = v8;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v9 = v6;
    (*(v7 + 16))(v7, 0);
    v6 = v9;
  }
}

void sub_188541D5C(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188541E2C;
  v5[3] = &unk_1E70BCA80;
  objc_copyWeak(v7, a1 + 5);
  v7[1] = a1[6];
  v6 = a1[4];
  objc_msgSend_importantUserIDsWithCompletionHandler_(v3, v4, v5);

  objc_destroyWeak(v7);
}

void sub_188541E2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    v11 = [CKRecordID alloc];
    v13 = objc_msgSend_initWithRecordName_(v11, v12, v7);
    if (v8)
    {
LABEL_3:
      v14 = [CKRecordID alloc];
      v16 = objc_msgSend_initWithRecordName_(v14, v15, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = qword_1ED4B60E0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188542188;
  block[3] = &unk_1E70BC360;
  block[4] = WeakRetained;
  v18 = v13;
  v33 = v18;
  v19 = v16;
  v34 = v19;
  dispatch_sync(v17, block);
  if (*(a1 + 48))
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v22 = v20;
  if (!(v9 | v22))
  {
    v37[0] = *MEMORY[0x1E696A578];
    v37[1] = @"CKErrorDescription";
    v38[0] = @"Failed to obtain the necessary user record ID";
    v38[1] = @"Failed to obtain the necessary user record ID";
    v37[2] = @"CKRetryAfter";
    v38[2] = &unk_1EFA85098;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v38, v37, 3);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(CKPrettyError, v24, @"CKErrorDomain", 6, v23);
  }

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error fetching user record ID: %@", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v22;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Fetched user record ID: %@", buf, 0xCu);
    }
  }

  if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
  {
    v29 = objc_msgSend_CKClientSuitableError(v9, v27, v28);

    v9 = v29;
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    (*(v30 + 16))(v30, v22, v9);
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188542188(uint64_t a1)
{
  sub_1885417B4(*(a1 + 32), *(a1 + 40), 0);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return sub_1885417B4(v2, v3, 1);
}

uint64_t sub_188542494(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void sub_1885424B8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = [CKDiscoverUserIdentitiesOperation alloc];
    v32[0] = v9;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v32, 1);
    v17 = objc_msgSend_initWithUserIdentityLookupInfos_(v13, v16, v15);

    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_1883ED874;
    v30[4] = sub_1883EF590;
    v31 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1885426F4;
    v29[3] = &unk_1E70BCB20;
    v29[4] = v30;
    objc_msgSend_setUserIdentityDiscoveredBlock_(v17, v18, v29);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = sub_188542704;
    v25 = &unk_1E70BCB48;
    v27 = v12;
    v28 = v30;
    v26 = v9;
    objc_msgSend_setDiscoverUserIdentitiesCompletionBlock_(v17, v19, &v22);
    objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(a1, v20, v17, v10, v11, v22, v23, v24, v25);

    _Block_object_dispose(v30, 8);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1885426D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188542704(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = a1[4];
    v5 = a2;
    v10 = objc_msgSend_lookupValue(v4, v6, v7);
    v9 = objc_msgSend_CKItemErrorForID_(v5, v8, v10);

    (*(v2 + 16))(v2, v3, v9);
  }
}

void sub_188542C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188542C44(uint64_t *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = objc_msgSend_CKItemErrorForID_(a2, a2, a1[4]);
    (*(v2 + 16))(v2, v3, v4);
  }
}

void sub_188543360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188543380(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (objc_msgSend_isEqual_(a2, v6, *(a1 + 32)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void sub_1885433F8(uint64_t *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = objc_msgSend_CKItemErrorForID_(a2, a2, a1[4]);
    (*(v2 + 16))(v2, v3, v4);
  }
}

void sub_188543754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188543774(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (objc_msgSend_isEqual_(*(a1 + 32), v6, a2))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void sub_1885437EC(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = a1[4];
    v5 = a2;
    v13 = objc_msgSend_share(v4, v6, v7);
    v10 = objc_msgSend_URL(v13, v8, v9);
    v12 = objc_msgSend_CKItemErrorForID_(v5, v11, v10);

    (*(v2 + 16))(v2, v3, v12);
  }
}

void sub_188543A44(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_188543ABC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188543B4C;
  v5[3] = &unk_1E70BCBE8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_msgSend_decryptPersonalInfoOnShare_completionHandler_(a2, v4, v3, v5);
}

void sub_188543B4C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_188543D78(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Failed to request access to share %@: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188543E80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_188543FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18854406C(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1885440F8;
  v4[3] = &unk_1E70BC858;
  v5 = *(a1 + 32);
  objc_msgSend_getNewWebSharingIdentityDataWithCompletionHandler_(a2, v3, v4);
}

void sub_1885440F8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_188544174()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.cloudkit.accountInfoFetchQueue.bypassesPCS", v2);
  v1 = qword_1ED4B60E8;
  qword_1ED4B60E8 = v0;
}

void sub_1885442DC(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = v2;
    v26 = objc_msgSend_containerID(v22, v24, v25);
    *buf = 138412290;
    v34 = v26;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Checking account access authorization for container %@", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 256);
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);

  v32 = 0;
  if (objc_msgSend___preflightAccountAccessAuthorization_(*(a1 + 32), v6, &v32))
  {
    v7 = v32;
    if (v32 != v5)
    {
      v8 = *(a1 + 32);
      objc_sync_enter(v8);
      v9 = *(a1 + 32);
      if (v9)
      {
        *(v9 + 256) = v32;
      }

      objc_sync_exit(v8);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v32;
        v12 = v10;
        v13 = CKTernaryDescription(v11);
        v14 = CKTernaryDescription(v5);
        *buf = 138412546;
        v34 = v13;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEFAULT, "In-process account access authorization check returned: %@, previously: %@", buf, 0x16u);
      }
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v7 != v5);
      goto LABEL_34;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
LABEL_36:
      _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "No completion handler", buf, 2u);
    }
  }

  else if (v5 == -1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "No previous account access authorization.", buf, 2u);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, 1);
      goto LABEL_34;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      goto LABEL_36;
    }
  }

  else
  {
    objc_initWeak(buf, *(a1 + 32));
    v16 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1885447C4;
    v30[3] = &unk_1E70BC540;
    v31 = *(a1 + 40);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_18854493C;
    v27[3] = &unk_1E70BCC58;
    v27[4] = *(a1 + 32);
    v29[1] = v5;
    objc_copyWeak(v29, buf);
    v17 = *(a1 + 40);
    v28 = v17;
    if (v16)
    {
      sub_1885397D0(v16, 0, 1, 0, v30, v27);
      v17 = v28;
    }

    objc_destroyWeak(v29);
    objc_destroyWeak(buf);
  }

LABEL_34:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1885447A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1885447C4(uint64_t a1, void *a2)
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
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't access daemon to fetch account access authorization: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "No completion handler", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_18854493C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Fetching account access authorization from daemon.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188544A8C;
  v7[3] = &unk_1E70BCC30;
  v5 = *(a1 + 56);
  v7[4] = *(a1 + 32);
  v9[1] = v5;
  objc_copyWeak(v9, (a1 + 48));
  v8 = *(a1 + 40);
  objc_msgSend_accountAccessAuthorizationWithCompletionHandler_(v3, v6, v7);

  objc_destroyWeak(v9);
}

void sub_188544A8C(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v19 = v6;
    v20 = CKTernaryDescription(a2);
    v21 = *(a1 + 32);
    v22 = 138412546;
    v23 = v20;
    v24 = 2114;
    v25 = v21;
    _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Retrieved account access authorization '%@' for container %{public}@", &v22, 0x16u);
  }

  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch account access authorization: %@", &v22, 0xCu);
    }

    v8 = 1;
  }

  else if (*(a1 + 56) == a2)
  {
    v8 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    v8 = WeakRetained != 0;
    if (WeakRetained)
    {
      v11 = WeakRetained;
      objc_sync_enter(v11);
      v11[32] = a2;
      objc_sync_exit(v11);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = CKTernaryDescription(a2);
        v15 = CKTernaryDescription(*(a1 + 56));
        v22 = 138543874;
        v23 = v11;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "Account access authorization updated for container %{public}@: %@, previous: %@", &v22, 0x20u);
      }
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "No completion handler", &v22, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_188544FCC(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (!v7)
  {
    objc_msgSend_accountStatus(a2, v5, v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_188545388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, char a26)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a26, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1885453C8(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188545830;
  aBlock[3] = &unk_1E70BCCA8;
  v56 = *(a1 + 64);
  v44 = *(a1 + 48);
  v2 = v44;
  v55 = v44;
  v3 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v54 = v3;
  v4 = _Block_copy(aBlock);
  v7 = objc_msgSend_setupInfo(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_hashString(v7, v8, v9);
  v13 = objc_msgSend_options(*(a1 + 32), v11, v12);
  IsDisabled = objc_msgSend_accountInfoCacheIsDisabled(v13, v14, v15);

  if (IsDisabled)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Account info cache disabled.", buf, 2u);
    }

    goto LABEL_17;
  }

  v20 = sub_1885323CC(CKAccountInfo, v10);
  if (!v20)
  {
LABEL_17:
    v29 = objc_msgSend_accountInfoFetchQueue(*(a1 + 32), v18, v19, v44);
    dispatch_suspend(v29);

    v32 = *(a1 + 40);
    if (v32)
    {
      v33 = objc_msgSend_log(v32, v30, v31);
      v36 = objc_msgSend_identifier(*(a1 + 40), v34, v35);
      if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = v36;
        if (os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1883EA000, v33, OS_SIGNPOST_EVENT, v37, "accountStatus", "Fetching account info", buf, 2u);
        }
      }
    }

    v38 = *(a1 + 32);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_188545B78;
    v51[3] = &unk_1E70BCAF8;
    v39 = v4;
    v51[4] = *(a1 + 32);
    v52 = v39;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_188545CA8;
    v45[3] = &unk_1E70BCCF8;
    v40 = *(a1 + 40);
    v41 = *(a1 + 32);
    v46 = v40;
    v47 = v41;
    v50 = IsDisabled;
    v48 = v10;
    v42 = v39;
    v49 = v42;
    if (v38)
    {
      sub_1885397D0(v38, 0, 1, 0, v51, v45);
      v42 = v49;
    }

    v21 = v52;
    goto LABEL_25;
  }

  v21 = v20;
  v22 = *(a1 + 40);
  if (v22)
  {
    v23 = objc_msgSend_log(v22, v18, v19);
    v26 = objc_msgSend_identifier(*(a1 + 40), v24, v25);
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v23, OS_SIGNPOST_EVENT, v27, "accountStatus", "Returning cached account info", buf, 2u);
      }
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v28 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v58 = v21;
    _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, "Found cached account info: %@", buf, 0xCu);
  }

  (*(v4 + 2))(v4, v21, 0);
LABEL_25:

  v43 = *MEMORY[0x1E69E9840];
}

void sub_188545830(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_msgSend_lock(*(*(*(a1 + 56) + 8) + 40), v7, v8);
  v11 = *(*(a1 + 64) + 8);
  if (*(v11 + 40) != 1)
  {
    *(v11 + 40) = 1;
    objc_msgSend_unlock(*(*(*(a1 + 56) + 8) + 40), v9, v10);
    if (*(a1 + 48))
    {
      v17 = objc_msgSend_fakeDeviceToDeviceEncryptionAvailability(*(a1 + 32), v15, v16);
      v20 = v17;
      if (v17)
      {
        v21 = objc_msgSend_integerValue(v17, v18, v19);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v22 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v24 = v22;
          v25 = CKStringFromDeviceToDeviceEncryptionStatus(v21);
          v42 = 138543362;
          v43 = v25;
          _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Overriding device-to-device encryption availability with a fake one: %{public}@", &v42, 0xCu);
        }

        v26 = objc_msgSend_copyWithFakeDeviceToDeviceEncryptionAvailability_(v5, v23, v21);

        v5 = v26;
      }

      (*(*(a1 + 48) + 16))();
    }

    v27 = *(a1 + 40);
    if (v6)
    {
      if (!v27)
      {
        goto LABEL_26;
      }

      v28 = objc_msgSend_log(v27, v15, v16);
      v31 = objc_msgSend_identifier(*(a1 + 40), v29, v30);
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        if (os_signpost_enabled(v28))
        {
          v42 = 138412290;
          v43 = v6;
          v33 = "Error: %@";
          v34 = v28;
          v35 = v32;
          v36 = 12;
LABEL_24:
          _os_signpost_emit_with_name_impl(&dword_1883EA000, v34, OS_SIGNPOST_INTERVAL_END, v35, "accountStatus", v33, &v42, v36);
        }
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_26;
      }

      v28 = objc_msgSend_log(v27, v15, v16);
      v39 = objc_msgSend_identifier(*(a1 + 40), v37, v38);
      if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = v39;
        if (os_signpost_enabled(v28))
        {
          LOWORD(v42) = 0;
          v33 = "";
          v34 = v28;
          v35 = v40;
          v36 = 2;
          goto LABEL_24;
        }
      }
    }

    goto LABEL_26;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v42 = 138412546;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Warn: Completion handler has already been invoked, ignoring this callback. accountInfo: %@, error: %@", &v42, 0x16u);
  }

  objc_msgSend_unlock(*(*(*(a1 + 56) + 8) + 40), v13, v14);
LABEL_26:

  v41 = *MEMORY[0x1E69E9840];
}

void sub_188545B78(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Error fetching account info: %@", &v12, 0xCu);
  }

  v7 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
  (*(*(a1 + 40) + 16))();
  v10 = objc_msgSend_accountInfoFetchQueue(*(a1 + 32), v8, v9);
  dispatch_resume(v10);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_188545CA8(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188545D8C;
  v12[3] = &unk_1E70BCCD0;
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v15 = *(a1 + 64);
  *&v6 = v5;
  *(&v6 + 1) = *v4;
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  objc_msgSend_accountInfoWithCompletionHandler_(a2, v10, v12);
}

void sub_188545D8C(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_msgSend_log(v9, v6, v7);
    v13 = objc_msgSend_identifier(*(a1 + 32), v11, v12);
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v10))
      {
        *v51 = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v10, OS_SIGNPOST_EVENT, v14, "accountStatus", "Fetched account info", v51, 2u);
      }
    }
  }

  v15 = objc_msgSend_deviceContext(*(a1 + 40), v6, v7);
  v18 = objc_msgSend_testDeviceReferenceProtocol(v15, v16, v17);

  if (v18)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = v19;
      v26 = objc_msgSend_deviceContext(v22, v24, v25);
      v29 = objc_msgSend_testDeviceReferenceProtocol(v26, v27, v28);
      v32 = objc_msgSend_deviceID(v29, v30, v31);
      v33 = @". Error was ";
      *v51 = 138413058;
      v34 = &stru_1EFA32970;
      *&v51[4] = v32;
      *&v51[12] = 2112;
      if (v8)
      {
        v34 = v8;
      }

      else
      {
        v33 = &stru_1EFA32970;
      }

      *&v51[14] = v5;
      v52 = 2114;
      v53 = v33;
      v54 = 2112;
      v55 = v34;
      _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "For test device %@, account info is %@%{public}@%@", v51, 0x2Au);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v44 = @". Error was ";
      }

      else
      {
        v44 = &stru_1EFA32970;
      }

      if (v8)
      {
        v45 = v8;
      }

      else
      {
        v45 = &stru_1EFA32970;
      }

      v46 = *(a1 + 40);
      v47 = v35;
      v50 = objc_msgSend_containerID(v46, v48, v49);
      *v51 = 138413314;
      *&v51[4] = v5;
      *&v51[12] = 2114;
      *&v51[14] = v44;
      v52 = 2112;
      v53 = v45;
      v54 = 2048;
      v55 = v46;
      v56 = 2112;
      v57 = v50;
      _os_log_debug_impl(&dword_1883EA000, v47, OS_LOG_TYPE_DEBUG, "Account info is %@%{public}@%@ for CKContainerImplementation %p, containerID %@", v51, 0x34u);
    }
  }

  if (!v8)
  {
    v36 = *(a1 + 40);
    objc_sync_enter(v36);
    if (v5)
    {
      v37 = v5[7];
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a1 + 40);
    if (v38)
    {
      *(v38 + 256) = v37;
    }

    objc_sync_exit(v36);

    if ((*(a1 + 64) & 1) == 0)
    {
      objc_msgSend_setAsCachedAccountInfoForSetupInfoHash_(v5, v20, *(a1 + 48));
    }
  }

  v39 = objc_msgSend_CKClientSuitableError(v8, v20, v21, *v51);
  (*(*(a1 + 56) + 16))();
  v42 = objc_msgSend_accountInfoFetchQueue(*(a1 + 40), v40, v41);
  dispatch_resume(v42);

  v43 = *MEMORY[0x1E69E9840];
}

void sub_188546304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  os_activity_scope_leave((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_188546328(uint64_t a1, void *a2)
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
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error getting daemon to reload account: %@", &v10, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_188546444(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18854650C;
  v5[3] = &unk_1E70BCD48;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  objc_msgSend_reloadAccountWithCompletionHandler_(v3, v4, v5);

  objc_destroyWeak(&v7);
}

void sub_18854650C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error reloading account: %@", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Reloaded account", buf, 2u);
    }
  }

  objc_msgSend_invalidateCachedAccountInfo(CKAccountInfo, v5, v6);
  v8 = qword_1ED4B60E0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188546734;
  block[3] = &unk_1E70BC680;
  objc_copyWeak(&v17, (a1 + 40));
  dispatch_async(v8, block);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setPushEnvironment_(WeakRetained, v10, 0);

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = objc_msgSend_CKClientSuitableError(v3, v11, v12);
    (*(v13 + 16))(v13, v14);
  }

  objc_destroyWeak(&v17);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_188546734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setContainerScopedUserID_(WeakRetained, v1, 0);
  objc_msgSend_setOrgAdminUserID_(WeakRetained, v2, 0);
}

void sub_188546A5C(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 1, v6);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_msgSend_log(v8, v4, v5);
      v12 = objc_msgSend_identifier(*(a1 + 32), v10, v11);
      if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      v13 = v12;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_13;
      }

      v23 = 138412290;
      v24 = v6;
      v14 = "Error: %@";
      v15 = v9;
      v16 = v13;
      v17 = 12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_INTERVAL_END, v16, "statusForApplicationPermission", v14, &v23, v17);
LABEL_13:
    }
  }

  else if (v8)
  {
    v9 = objc_msgSend_log(v8, v4, v5);
    v20 = objc_msgSend_identifier(*(a1 + 32), v18, v19);
    if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    v21 = v20;
    if (!os_signpost_enabled(v9))
    {
      goto LABEL_13;
    }

    LOWORD(v23) = 0;
    v14 = "";
    v15 = v9;
    v16 = v21;
    v17 = 2;
    goto LABEL_12;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_188546BD0(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188546C80;
  v6[3] = &unk_1E70BCD98;
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  objc_msgSend_statusForApplicationPermission_completionHandler_(a2, v5, v4, v6);
}

void sub_188546C80(uint64_t a1, unint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    if (a2 > 3)
    {
      v28 = @"Unknown status";
    }

    else
    {
      v28 = off_1E70BCFF0[a2];
    }

    *v32 = 138543874;
    *&v32[4] = v28;
    if (v5)
    {
      v29 = @". Error was ";
    }

    else
    {
      v29 = &stru_1EFA32970;
    }

    if (v5)
    {
      v30 = v5;
    }

    else
    {
      v30 = &stru_1EFA32970;
    }

    *&v32[12] = 2114;
    *&v32[14] = v29;
    *&v32[22] = 2112;
    v33 = v30;
    v31 = v6;
    _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Application permission status is %{public}@%{public}@%@", v32, 0x20u);
  }

  v11 = objc_msgSend_CKClientSuitableError(v5, v7, v8, *v32, *&v32[16], v33);
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v11);
  }

  v13 = *(a1 + 32);
  if (v11)
  {
    if (v13)
    {
      v14 = objc_msgSend_log(v13, v9, v10);
      v17 = objc_msgSend_identifier(*(a1 + 32), v15, v16);
      if ((v17 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_16;
      }

      v18 = v17;
      if (!os_signpost_enabled(v14))
      {
        goto LABEL_16;
      }

      *v32 = 138412290;
      *&v32[4] = v11;
      v19 = "Error: %@";
      v20 = v14;
      v21 = v18;
      v22 = 12;
LABEL_15:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v20, OS_SIGNPOST_INTERVAL_END, v21, "statusForApplicationPermission", v19, v32, v22);
LABEL_16:
    }
  }

  else if (v13)
  {
    v14 = objc_msgSend_log(v13, v9, v10);
    v25 = objc_msgSend_identifier(*(a1 + 32), v23, v24);
    if ((v25 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_16;
    }

    v26 = v25;
    if (!os_signpost_enabled(v14))
    {
      goto LABEL_16;
    }

    *v32 = 0;
    v19 = "";
    v20 = v14;
    v21 = v26;
    v22 = 2;
    goto LABEL_15;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1885471C0(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 1, v6);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_msgSend_log(v8, v4, v5);
      v12 = objc_msgSend_identifier(*(a1 + 32), v10, v11);
      if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      v13 = v12;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_13;
      }

      v23 = 138412290;
      v24 = v6;
      v14 = "Error: %@";
      v15 = v9;
      v16 = v13;
      v17 = 12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_INTERVAL_END, v16, "requestApplicationPermission", v14, &v23, v17);
LABEL_13:
    }
  }

  else if (v8)
  {
    v9 = objc_msgSend_log(v8, v4, v5);
    v20 = objc_msgSend_identifier(*(a1 + 32), v18, v19);
    if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    v21 = v20;
    if (!os_signpost_enabled(v9))
    {
      goto LABEL_13;
    }

    LOWORD(v23) = 0;
    v14 = "";
    v15 = v9;
    v16 = v21;
    v17 = 2;
    goto LABEL_12;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_188547334(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1885473E4;
  v6[3] = &unk_1E70BCD98;
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  objc_msgSend_requestApplicationPermission_completionHandler_(a2, v5, v4, v6);
}

void sub_1885473E4(uint64_t a1, const char *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v7);
  }

  v9 = *(a1 + 32);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_msgSend_log(v9, v5, v6);
      v13 = objc_msgSend_identifier(*(a1 + 32), v11, v12);
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      v14 = v13;
      if (!os_signpost_enabled(v10))
      {
        goto LABEL_13;
      }

      v24 = 138412290;
      v25 = v7;
      v15 = "Error: %@";
      v16 = v10;
      v17 = v14;
      v18 = 12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_INTERVAL_END, v17, "requestApplicationPermission", v15, &v24, v18);
LABEL_13:
    }
  }

  else if (v9)
  {
    v10 = objc_msgSend_log(v9, v5, v6);
    v21 = objc_msgSend_identifier(*(a1 + 32), v19, v20);
    if ((v21 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    v22 = v21;
    if (!os_signpost_enabled(v10))
    {
      goto LABEL_13;
    }

    LOWORD(v24) = 0;
    v15 = "";
    v16 = v10;
    v17 = v22;
    v18 = 2;
    goto LABEL_12;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_18854755C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_1885475D4(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188547684;
  v6[3] = &unk_1E70BCDE8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  objc_msgSend_fetchLongLivedOperationsWithIDs_completionHandler_(a2, v5, v4, v6);
}

void sub_188547684(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v35, v39, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = *(a1 + 32);
        v18 = objc_msgSend_resolvedConfiguration(v16, v11, v12, v35);
        objc_msgSend_setContainer_(v18, v19, v17);

        v22 = objc_msgSend_ckOperationClassName(v16, v20, v21);
        v23 = NSClassFromString(v22);

        v24 = objc_alloc_init(v23);
        objc_msgSend_fillFromOperationInfo_(v24, v25, v16);
        v28 = objc_msgSend_operationID(v16, v26, v27);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v29, v24, v28);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v35, v39, 16);
    }

    while (v13);
  }

  v32 = *(a1 + 40);
  if (v32)
  {
    v33 = objc_msgSend_CKClientSuitableError(v6, v30, v31);
    (*(v32 + 16))(v32, v7, v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1885479B4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_188547A2C(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188547AB8;
  v4[3] = &unk_1E70BC6A8;
  v5 = *(a1 + 32);
  objc_msgSend_fetchAllLongLivedOperationIDsWithCompletionHandler_(a2, v3, v4);
}

void sub_188547AB8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
    (*(v3 + 16))(v3, v5, v8);
  }
}

void sub_188547DE8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v11 = objc_msgSend_allValues(a2, v6, v7);
    v10 = objc_msgSend_firstObject(v11, v8, v9);
    (*(v3 + 16))(v3, v10, v5);
  }
}

uint64_t sub_188547F84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  objc_msgSend_setAssetRequestCallback_(v4, v5, v3);
  objc_msgSend_setMachServiceName_(v4, v6, *(a1 + 32));
  objc_msgSend_registerForItemRequests(v4, v7, v8);

  return 0;
}

uint64_t sub_1885480D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  objc_msgSend_setPackageRequestCallback_(v4, v5, v3);
  objc_msgSend_setMachServiceName_(v4, v6, *(a1 + 32));
  objc_msgSend_registerForItemRequests(v4, v7, v8);

  return 0;
}

uint64_t sub_1885485C4(uint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v6 = a1[5];
  if (v6)
  {
    objc_msgSend_setAssetRequestCallback_(v3, v4, v6);
  }

  else
  {
    v8 = objc_msgSend_assetRequestCallback(v3, v4, 0);
    objc_msgSend_setAssetRequestCallback_(v5, v9, v8);
  }

  v10 = a1[6];
  if (v10)
  {
    objc_msgSend_setPackageRequestCallback_(v5, v7, v10);
  }

  else
  {
    v12 = objc_msgSend_packageRequestCallback(v5, v7, 0);
    objc_msgSend_setPackageRequestCallback_(v5, v13, v12);
  }

  objc_msgSend_setMachServiceName_(v5, v11, a1[4]);
  objc_msgSend_registerForItemRequests(v5, v14, v15);

  return 0;
}

void sub_1885487B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885487C8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to begin content access with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1885488A8(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18854891C;
  v3[3] = &unk_1E70BCEF8;
  v3[4] = *(a1 + 32);
  return objc_msgSend_beginContentAccess_(a2, a2, v3);
}

void sub_18854891C(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      v7 = "Failed to begin content access with error: %@";
      v8 = v6;
      v9 = 12;
LABEL_15:
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, v7, &v13, v9);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    if (a2)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Successfully began content access", &v13, 2u);
      }
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
        LOWORD(v13) = 0;
        v7 = "Failed to begin content access";
        v8 = v11;
        v9 = 2;
        goto LABEL_15;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_188548BB0(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to end content access with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188548C90(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_endContentAccess(a2, a2, a3);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Successfully ended content access", v4, 2u);
  }
}

void sub_188548DF8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to discard content with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188548ED8(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_discardContentIfPossible(a2, a2, a3);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Successfully discarded content if possible", v4, 2u);
  }
}

void sub_188549040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188549058(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to check if content is discarded with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188549138(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1885491AC;
  v3[3] = &unk_1E70BCEF8;
  v3[4] = *(a1 + 32);
  return objc_msgSend_isContentDiscarded_(a2, a2, v3);
}

void sub_1885491AC(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Failed to check if content is discarded with error: %@", &v8, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_188549AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v28 - 120));
  _Unwind_Resume(a1);
}

void sub_188549B04(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting scoped CKIdentityUpdateNotification for service named %{public}@", &v10, 0xCu);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_postNotificationName_object_(v5, v7, @"CKIdentityUpdateNotification", WeakRetained);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_188549C1C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting scoped CKIdentityUpdateNotification for view named %{public}@", &v10, 0xCu);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_postNotificationName_object_(v5, v7, @"CKIdentityUpdateNotification", WeakRetained);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_188549D34(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = 138543362;
    v12 = v10;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting scoped CKAccountChangedNotification for service named %{public}@", &v11, 0xCu);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  v6 = CKNotificationKey(@"CKAccountChangedNotification", 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_postNotificationName_object_(v5, v8, v6, WeakRetained);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_188549F04(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_implementation(a1, v5, v6);
    v9 = v8;
    if (v8)
    {
      sub_1885397D0(v8, 0, 1, 0, v10, v7);
    }
  }
}

uint64_t sub_18854A5F0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8B00);
  v3 = qword_1ED4B6150;
  qword_1ED4B6150 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18854A7E0(void *a1, void *a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v57 = a3;
  v8 = a4;
  v55 = v8;
  if (a1)
  {
    if (v8)
    {
      v10 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v9, v8, 0);
      objc_msgSend_applyDefaultParametersToServiceURLComponents_(CKCodeFunctionInvokeOperationInfo, v11, v10);
      v14 = objc_msgSend_URL(v10, v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v16 = a1;
    objc_sync_enter(v16);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v16;
    v19 = objc_msgSend_codeServices(v16, v17, v18);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v58, v62, 16);
    if (v23)
    {
      v24 = *v59;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v58 + 1) + 8 * v25);
        v27 = objc_msgSend_serviceName(v26, v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v27, v28, v7);

        if (isEqualToString)
        {
          v30 = objc_msgSend_boxedDatabaseScope(v26, v21, v22);
          v33 = v30;
          if (v30 == v57)
          {

LABEL_16:
            v37 = objc_msgSend_serviceInstanceURL(v26, v21, v22);
            v40 = v37;
            if (v37 == v14)
            {

LABEL_24:
              inited = v26;
              goto LABEL_25;
            }

            v41 = objc_msgSend_serviceInstanceURL(v26, v38, v39);
            isEqual = objc_msgSend_isEqual_(v41, v42, v14);

            if (isEqual)
            {
              goto LABEL_24;
            }

            goto LABEL_18;
          }

          v34 = objc_msgSend_boxedDatabaseScope(v26, v31, v32);
          v36 = objc_msgSend_isEqual_(v34, v35, v57);

          if (v36)
          {
            goto LABEL_16;
          }
        }

LABEL_18:
        if (v23 == ++v25)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v58, v62, 16);
          if (v23)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v46 = obj;
    if (!obj[7])
    {
      v47 = objc_opt_new();
      v48 = obj[7];
      obj[7] = v47;

      v46 = obj;
    }

    v49 = objc_msgSend_implementation(v46, v44, v45);
    v19 = sub_1885381D4(v49, v7, v57, v55);

    v50 = [CKCodeService alloc];
    inited = objc_msgSend_initInternalWithImplementation_container_(v50, v51, v19, obj);
    objc_msgSend_addObject_(obj[7], v52, inited);
LABEL_25:

    objc_sync_exit(obj);
  }

  else
  {
    inited = 0;
  }

  v53 = *MEMORY[0x1E69E9840];

  return inited;
}

void sub_18854BB1C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v10 = objc_msgSend_CKClientSuitableError(v3, v8, v9);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v10;
      _os_log_fault_impl(&dword_1883EA000, v7, OS_LOG_TYPE_FAULT, "Failed to register CKSystemSharingUIObserver %@: %@", &v11, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_18854BC3C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Successfully got a daemon proxy for CKSystemSharingUIObserver %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CKDatabaseScopeFromString(void *a1)
{
  v1 = a1;
  v2 = 1;
  if (objc_msgSend_compare_options_(v1, v3, @"Public", 1))
  {
    if (objc_msgSend_compare_options_(v1, v4, @"Private", 1))
    {
      if (objc_msgSend_compare_options_(v1, v5, @"Shared", 1))
      {
        v2 = 4 * (objc_msgSend_compare_options_(v1, v6, @"Organization", 1) == 0);
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

void sub_18854D5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18854D5C4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while counting asset cache items, check your syslog.  Error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18854D6A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_scope(v3, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18854D748;
  v9[3] = &unk_1E70BD020;
  v9[4] = *(a1 + 40);
  objc_msgSend_countAssetCacheItemsWithDatabaseScope_completionHandler_(v4, v8, v7, v9);
}

void sub_18854D748(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Error while counting asset cache items, check your syslog %@", &v8, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_18854D8EC(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing asset cache, check your syslog", v4, 2u);
  }
}

void sub_18854D994(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_scope(v2, v3, v4);
  objc_msgSend_clearAssetCacheWithDatabaseScope_completionHandler_(v7, v6, v5, &unk_1EFA2E948);
}

void sub_18854D9F4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error while clearing record cache, check your syslog %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18854DB7C(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while showing asset cache, check your syslog", v4, 2u);
  }
}

void sub_18854DC24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_scope(v2, v3, v4);
  objc_msgSend_showAssetCacheWithDatabaseScope_(v7, v6, v5);
}

void sub_18854DD20(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854DDC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_scope(v2, v3, v4);
  objc_msgSend_clearRecordCacheWithDatabaseScope_(v7, v6, v5);
}

void sub_18854DEE4(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while getting Record PCS diagnostics for zones. Check your syslog", v4, 2u);
  }
}

void sub_18854E06C(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854E114(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_clearCachesWithOptions_databaseScope_completionHandler_(v9, v8, v3, v7, a1[5]);
}

void sub_18854E274(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854E31C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_clearCachesForRecordWithRecordID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854E478(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854E520(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_clearCachesForZoneWithZoneID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854E6AC(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching zone PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854E754(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_fetchPCSFromCacheForZoneWithZoneID_databaseScope_localCacheOnly_unitTestOverrides_completionHandler_(v9, v8, v3, v7, *(a1 + 64), *(a1 + 48), *(a1 + 56));
}

void sub_18854E8B4(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching share PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854E95C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_fetchPCSFromCacheForShareWithRecordID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854EAB8(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching record PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854EB60(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_fetchPCSFromCacheForRecordWithRecordID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854EC2C(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching zone PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854F194(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_allValues(v5, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12 >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = v15;
      v28 = objc_msgSend_allValues(v5, v26, v27);
      v29 = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v28;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Fetching record %@, got too many results %@", &v29, 0x16u);
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = objc_msgSend_allValues(v5, v13, v14);
    v20 = objc_msgSend_firstObject(v17, v18, v19);
    v22 = objc_msgSend_CKItemErrorForID_(v6, v21, *(a1 + 32));
    (*(v16 + 16))(v16, v20, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_18854F558(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = v12;
      v25 = objc_msgSend_recordID(v21, v23, v24);
      v26 = 138412546;
      v27 = v25;
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&dword_1883EA000, v22, OS_LOG_TYPE_ERROR, "Saving record %@, got too many results %@", &v26, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v17 = objc_msgSend_recordID(*(a1 + 32), v15, v16);
    v19 = objc_msgSend_CKItemErrorForID_(v7, v18, v17);
    (*(v13 + 16))(v13, v14, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_18854F90C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412546;
      v20 = v18;
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Deleting record with id %@, got too many results %@", &v19, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v16 = objc_msgSend_CKItemErrorForID_(v7, v15, *(a1 + 32));
    (*(v13 + 16))(v13, v14, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_18854FCC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    objc_msgSend_addObject_(*(a1 + 32), v10, v7);
    objc_sync_exit(v9);
  }
}

uint64_t sub_18854FD6C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_18854FE84(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_allValues(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_188550124(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v11 = objc_msgSend_objectForKeyedSubscript_(a2, v8, v6);
    v10 = objc_msgSend_CKItemErrorForID_(v7, v9, *(a1 + 32));

    (*(v3 + 16))(v3, v11, v10);
  }
}

void sub_1885503F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v15 = objc_msgSend_firstObject(a2, v8, v9);
    v12 = objc_msgSend_zoneID(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_CKItemErrorForID_(v7, v13, v12);

    (*(v4 + 16))(v4, v15, v14);
  }
}

void sub_1885506CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v12 = objc_msgSend_firstObject(a3, v8, v9);
    v11 = objc_msgSend_CKItemErrorForID_(v7, v10, *(a1 + 32));

    (*(v4 + 16))(v4, v12, v11);
  }
}

void sub_18855098C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = 138412546;
      v23 = v21;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Saving subscription %@, got too many results %@", &v22, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v17 = objc_msgSend_subscriptionID(*(a1 + 32), v15, v16);
    v19 = objc_msgSend_CKItemErrorForID_(v7, v18, v17);
    (*(v13 + 16))(v13, v14, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_188550E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188550E50(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (!(v11 | v12))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Handler called wihout both result and error.", &v18, 2u);
      }

      v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Unknown failure.");
    }

    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Warn: Not invoking completion handler for zoneID: %@", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_188551058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (v5)
    {
      v9 = objc_msgSend_zoneID(*(a1 + 32), v6, v7);
      v11 = objc_msgSend_objectForKey_(v5, v10, v9);

      if (v11)
      {
        v13 = objc_msgSend_objectForKey_(v11, v12, *(a1 + 40));
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (!(v8 | v13))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Handler called wihout both result and error.", v16, 2u);
      }

      v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Unknown failure.");
    }

    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1885513FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412546;
      v20 = v18;
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Deleting subscription %@, got too many results %@", &v19, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v16 = objc_msgSend_CKItemErrorForID_(v7, v15, *(a1 + 32));
    (*(v13 + 16))(v13, v14, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_188551778(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Fetching subscription with id %@, got too many results %@", &v17, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v5, v9, *(a1 + 32));
    v14 = objc_msgSend_CKItemErrorForID_(v6, v13, *(a1 + 32));
    (*(v11 + 16))(v11, v12, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1885519E4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_allValues(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_188552F7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18855326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v12 != v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_188553538(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_18855447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3 + a2 - 1;
    v5 = [CKDistributedTimestamp alloc];
    v8 = objc_msgSend_identifier(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_initWithSiteIdentifier_clockValue_(v5, v9, v8, v4);

    objc_msgSend_addTimestamp_(*(a1 + 40), v10, v11);
  }
}

void sub_188554644(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1885548E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188554910(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_msgSend_siteIdentifier(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v7, v8, *(a1 + 32));

  if (isEqual)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_188554B2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_siteIdentifier(a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

void sub_188554D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188554D50(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v8 = objc_msgSend_clockValue(v18, v6, v7);
  v9 = *(a1 + 32);
  v12 = objc_msgSend_siteIdentifier(v18, v10, v11);
  v14 = objc_msgSend_timestampForSiteIdentifier_(v9, v13, v12);
  v17 = objc_msgSend_clockValue(v14, v15, v16);

  if (v8 > v17)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_18855512C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_timestampAtIndex_(*(a1 + 40), a2, a3);
  objc_msgSend_addTimestamp_(v3, v4, v5);
}

void sub_188555330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = v3;
  v7 = objc_msgSend_siteIdentifier(v3, v5, v6);
  v9 = objc_msgSend_timestampForSiteIdentifier_(v4, v8, v7);

  if (v9)
  {
    v12 = objc_msgSend_clockValue(v18, v10, v11);
    v16 = objc_msgSend_clockValue(v9, v13, v14);
    v17 = *(a1 + 40);
    if (v12 >= v16)
    {
      objc_msgSend_addTimestamp_(v17, v15, v9);
    }

    else
    {
      objc_msgSend_addTimestamp_(v17, v15, v18);
    }
  }
}

void sub_188555570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188555594(uint64_t a1, void *a2)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v5, v3, v4);
}

void sub_188555758(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1885557C4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_siteIdentifier(a2, v5, v6);
  v10 = objc_msgSend_siteIdentifier(v4, v8, v9);
  v12 = objc_msgSend_CKCompare_(v7, v11, v10);

  return v12;
}

void sub_188555834(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_188555860(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  v9 = objc_msgSend_description(v5, v7, v8);
  objc_msgSend_appendString_(v6, v10, v9);

  if (objc_msgSend_count(*(a1 + 40), v11, v12) - 1 != a3)
  {
    objc_msgSend_appendString_(*(a1 + 32), v13, @"|");
  }
}

void sub_188555DD0(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188555F2C(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_188556068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_188556098(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v10, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v5, v8, v9);
}

void sub_1885561C4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1885562B4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_188556408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188556464(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (objc_msgSend_containsObject_(*(a1 + 32), v6, v14))
  {
    v9 = objc_msgSend_mutableCopy(v5, v7, v8);
    v12 = objc_msgSend_clockValues(*(a1 + 40), v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v9, v14);
  }
}

void sub_188556500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_188556650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_1885566AC(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v8 = objc_msgSend_modifier(v18, v6, v7);
  isEqual = objc_msgSend_isEqual_(v8, v9, *(a1 + 32));

  if (isEqual)
  {
    v13 = objc_msgSend_mutableCopy(v5, v11, v12);
    v16 = objc_msgSend_clockValues(*(a1 + 40), v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v13, v18);
  }
}

void sub_18855675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id sub_188556820(uint64_t a1, void *a2)
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

void sub_188556904(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188556A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v15);

  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_188556A5C(uint64_t a1, void *a2, int a3, int a4)
{
  v24 = a2;
  if (a3 && a4)
  {
    v9 = objc_msgSend_clockValues(*(a1 + 32), v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v24);

    v14 = objc_msgSend_clockValues(*(a1 + 40), v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v24);
    objc_msgSend_removeIndexes_(v11, v17, v16);

    if (!objc_msgSend_count(v11, v18, v19))
    {
      v22 = objc_msgSend_clockValues(*(a1 + 32), v20, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v23, 0, v24);
    }
  }
}

void sub_188556C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v15);

  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_188556CD4(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (a3)
  {
    v27 = v7;
    v10 = *(a1 + 32);
    if (a4)
    {
      v11 = objc_msgSend_clockValues(v10, v8, v9);
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v27);

      v16 = objc_msgSend_clockValues(*(a1 + 40), v14, v15);
      v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v27);
      objc_msgSend_CKIntersectIndexes_(v13, v19, v18);

      if (!objc_msgSend_count(v13, v20, v21))
      {
        v24 = objc_msgSend_clockValues(*(a1 + 32), v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v24, v25, 0, v27);
      }
    }

    else
    {
      v13 = objc_msgSend_clockValues(v10, v8, v9);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v26, 0, v27);
    }

    v7 = v27;
  }
}

void sub_188556ED4(uint64_t a1, void *a2, int a3, int a4)
{
  v24 = a2;
  if (a3)
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    v9 = objc_msgSend_clockValues(*(a1 + 32), v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v24);
    v14 = objc_msgSend_clockValues(*(a1 + 40), v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v24);
    objc_msgSend_addIndexes_(v11, v17, v16);
  }

  else
  {
    v9 = objc_msgSend_clockValues(*(a1 + 40), v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v18, v24);
    v14 = objc_msgSend_mutableCopy(v11, v19, v20);
    v16 = objc_msgSend_clockValues(*(a1 + 32), v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v23, v14, v24);
  }

LABEL_6:
}

void sub_188556FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_188557150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_188557294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_188557704(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188557864(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_1885579A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_1885579D0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v10, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v5, v8, v9);
}

void sub_188557B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_188557B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_timestampCount(v6, v4, v5);
}

void sub_188557CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_188557D28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_timestampCountForSiteIdentifier_(v5, v4, *(a1 + 32));
}

void sub_188557F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1885580E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188558124(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_clockValuesForSiteIdentifier_(a3, a2, *(a1 + 40));
  objc_msgSend_addIndexes_(v3, v4, v5);
}

void sub_188558444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, id obj, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 152), 8);

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1885584E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = objc_msgSend_clockValuesForSiteIdentifier_(a3, v6, *(a1 + 32));
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885585E8;
  v12[3] = &unk_1E70BD3D0;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v10 = v5;
  v13 = v10;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v7, v11, v8, v9, 0, v12);
}

uint64_t sub_1885585E8(uint64_t result, const char *a2, uint64_t a3, _BYTE *a4)
{
  v7 = result;
  v8 = *(*(result + 40) + 8);
  if ((*(v8 + 24) & 1) != 0 || a2 < *(*(*(result + 48) + 8) + 48))
  {
    result = objc_msgSend_unsignedShortValue(*(result + 32), a2, a3);
    *(*(v7[7] + 8) + 24) = result;
    v9 = *(v7[6] + 8);
    *(v9 + 48) = a2;
    *(v9 + 56) = a3;
    v8 = *(v7[5] + 8);
  }

  *(v8 + 24) = 0;
  *a4 = 1;
  return result;
}

void sub_188558848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

uint64_t sub_1885588A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a1[4];
  v8 = *(a1[6] + 8);
  result = (*(a1[5] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_188558A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188558A88(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = objc_msgSend_vectorFilteredBySiteIdentifiers_(a3, v5, *(a1 + 32));
  if (objc_msgSend_timestampCount(v6, v7, v8))
  {
    v11 = objc_msgSend_mutableCopy(v6, v9, v10);
    v14 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 40), v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v11, v16);
  }
}

void sub_188558B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_188558C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188558CDC(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = objc_msgSend_vectorFilteredByModifier_(a3, v5, *(a1 + 32));
  if (objc_msgSend_timestampCount(v6, v7, v8))
  {
    v11 = objc_msgSend_mutableCopy(v6, v9, v10);
    v14 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 40), v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v11, v16);
  }
}

void sub_188558D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_188558ED4(_Unwind_Exception *a1)
{
  v9 = v6;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188559060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_1885590BC(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  v9 = objc_msgSend_shortValue(v26, v7, v8);
  v10 = (*(v6 + 16))(v6, v9);
  v13 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v11, v12);
  v15 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v14, v10);
  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v16, v15);

  if (!v17)
  {
    v19 = objc_opt_new();
    v22 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v20, v21);
    v24 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v23, v10);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v25, v19, v24);

    v17 = v19;
  }

  objc_msgSend_unionVector_(v17, v18, v5);
}

id sub_188559258(void *a1, int a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v54 = a3;
  v8 = v7;
  objc_sync_enter(v8);
  v57 = v8;
  v11 = objc_msgSend_allSiteIdentifiers(v8, v9, v10);
  v51 = objc_msgSend_allObjects(v11, v12, v13);

  v56 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v51;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v71, v76, 16);
  if (v17)
  {
    v18 = *v72;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v72 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v71 + 1) + 8 * i);
        if (a2)
        {
          v4 = objc_msgSend_descriptionWithStringSiteIdentifiers(*(*(&v71 + 1) + 8 * i), v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v56, v21, v4, v20);
        }

        else
        {
          v3 = objc_msgSend_description(*(*(&v71 + 1) + 8 * i), v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v56, v22, v3, v20);
        }

        if (a2)
        {
          v23 = v4;
        }

        else
        {
          v23 = v3;
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v71, v76, 16);
    }

    while (v17);
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = sub_188560540;
  v69[3] = &unk_1E70BD6D0;
  v24 = v56;
  v70 = v24;
  v50 = objc_msgSend_sortedArrayUsingComparator_(obj, v25, v69);
  v55 = objc_opt_new();
  objc_msgSend_appendFormat_(v55, v26, @"[");
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v52 = v50;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v27, &v65, v75, 16);
  if (v28)
  {
    v29 = *v66;
    v30 = 1;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v66 != v29)
        {
          objc_enumerationMutation(v52);
        }

        v32 = *(*(&v65 + 1) + 8 * j);
        v33 = objc_opt_new();
        v35 = v33;
        if ((v30 & 1) == 0)
        {
          objc_msgSend_appendFormat_(v33, v34, @"|");
        }

        v36 = objc_msgSend_objectForKeyedSubscript_(v24, v34, v32);
        objc_msgSend_appendFormat_(v35, v37, @"%@:", v36);

        if (objc_msgSend_timestampCountForSiteIdentifier_(v57, v38, v32))
        {
          v40 = objc_opt_new();
          v63[0] = 0;
          v63[1] = v63;
          v63[2] = 0x2020000000;
          v64 = 1;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = sub_1885605E8;
          v58[3] = &unk_1E70BD6F8;
          v62 = v63;
          v41 = v40;
          v59 = v41;
          v42 = v54;
          v60 = v32;
          v61 = v42;
          objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v57, v43, v32, v58);
          objc_msgSend_appendString_(v35, v44, v41);

          _Block_object_dispose(v63, 8);
        }

        else
        {
          objc_msgSend_appendFormat_(v35, v39, @"∅");
        }

        objc_msgSend_appendString_(v55, v45, v35);

        v30 = 0;
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v46, &v65, v75, 16);
      v30 = 0;
    }

    while (v28);
  }

  objc_msgSend_appendFormat_(v55, v47, @"]");
  objc_sync_exit(v57);

  v48 = *MEMORY[0x1E69E9840];

  return v55;
}