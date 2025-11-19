void sub_1885E6BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = 1;
  }

  else
  {
    v12 = v3;
    v9 = objc_msgSend_fileURL(v3, v4, v5);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = objc_msgSend_fileURL(v12, v7, v8);
      *(*(*(a1 + 40) + 8) + 24) = (*(v10 + 16))(v10, v11);
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_size(v12, v7, v8) == 0;
    }

    v3 = v12;
  }
}

void *sub_1885E8284(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885E8468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E8480(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885E8610(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885E87F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885E880C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EA24C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EA430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EA448(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EB828(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885EBA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EBA24(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EBBB4(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885EBD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EBDB0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885ED364(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885ED548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885ED560(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885ED6F0(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885ED8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885ED8EC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EF36C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885EF550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EF568(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885EF6F8(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885EF8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885EF8F4(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F0D24(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F0F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F0F20(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F10B0(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F1294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F12AC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_1885F1710(uint64_t a1, void *a2)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_userInfo(v3, v4, v5);
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v11 = objc_msgSend_containsObject_(v9, v10, @"CKRetryAfter");

  if (!v11)
  {
LABEL_19:
    (*(*(a1 + 72) + 16))();
    goto LABEL_20;
  }

  if (!*(a1 + 88))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v42 = v3;
      _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Got a retryable error %@, but no more retries left, reporting it", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v14 = objc_msgSend_userInfo(v3, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"CKRetryAfter");
  objc_msgSend_doubleValue(v16, v17, v18);
  v20 = v19;

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v42 = @"CKRetryAfter";
    v43 = 2048;
    v44 = v20;
    v45 = 1024;
    LODWORD(v46[0]) = 0;
    WORD2(v46[0]) = 1024;
    *(v46 + 6) = 60;
    _os_log_debug_impl(&dword_1883EA000, v21, OS_LOG_TYPE_DEBUG, "Got a retryable error, found a %{public}@ header with a value %.1f, will now clip it to [%d, %d] range", buf, 0x22u);
  }

  v22 = 0.0;
  if (v20 >= 0.0)
  {
    v22 = v20;
    if (v20 > 60.0)
    {
      v22 = 60.0;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 88);
    *buf = 134218498;
    v42 = *&v22;
    v43 = 2048;
    v44 = v33;
    v45 = 2112;
    v46[0] = v3;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Got a retryable error, delay is %.1f seconds, retries left %lu, scheduling retry. The error was %@", buf, 0x20u);
  }

  v24 = dispatch_time(0, (v22 * 1000000000.0));
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1885F1B0C;
  v34[3] = &unk_1E70BEE68;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  *&v29 = v27;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  *(&v30 + 1) = v26;
  v35 = v30;
  v36 = v29;
  v40 = *(a1 + 88);
  v37 = *(a1 + 64);
  v38 = *(a1 + 80);
  v39 = *(a1 + 72);
  dispatch_after(v24, MEMORY[0x1E69E96A0], v34);

LABEL_20:
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1885F1B0C(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Calling into a retry block for operation %@", &v9, 0xCu);
  }

  v3 = [CKInitiateParticipantVettingOperation alloc];
  v5 = objc_msgSend_initWithShareMetadata_participantID_address_(v3, v4, a1[5], a1[6], a1[7]);
  objc_msgSend_retryTimes_container_participantVettingInitiatedBlock_participantVettingInitiationCompletionBlock_(v5, v6, a1[11], a1[8], a1[9], a1[10]);

  v7 = *MEMORY[0x1E69E9840];
}

void *sub_1885F2B74(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F2D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F2D70(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F2F00(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F30FC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F4B54(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F4D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F4D50(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F4EE0(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F50C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F50DC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F5738(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885F591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F5934(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F5AC4(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F5CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F5CC0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F6F70(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F7154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F716C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F72FC(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F74E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F74F8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F8A24(uint64_t a1, const char *a2, uint64_t a3)
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

uint64_t sub_1885F8A88(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885F8C18(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885F8DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885F8E14(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885F8FA4(uint64_t a1, const char *a2, uint64_t a3)
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

uint64_t sub_1885F9008(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885FAA44(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FAC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FAC40(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FBD7C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FBF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FBF78(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FC108(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FC2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FC304(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FDEA4(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FE088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FE0A0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FE230(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FE414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FE42C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FE5BC(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FE7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FE7B8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FE948(uint64_t a1, const char *a2, uint64_t a3)
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

uint64_t sub_1885FE9AC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885FEB3C(uint64_t a1, const char *a2, uint64_t a3)
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

uint64_t sub_1885FEBA0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void *sub_1885FED30(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FEF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FEF2C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885FF0BC(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1885FF2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885FF2B8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 560));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188601478(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_18860165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188601674(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188601804(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1886019E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188601A00(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1886031F0(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1886033D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886033EC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860357C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_188603760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188603778(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188603908(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_188603AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188603B04(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188606400(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1886065E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886065FC(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860700C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_1886071F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188607208(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188607CA0(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_188607E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188607E9C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188608C60(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188608E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188608E5C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1886098A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_188609A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188609A9C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_188609C2C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_188609E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188609E28(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860AA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860AC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860AC8C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860AE1C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_18860B000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860B018(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860C010(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 496) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 496);
    *(v7 + 496) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860C20C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 496));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860C39C(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_18860C580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860C598(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 504));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860C728(uint64_t a1, const char *a2, uint64_t a3)
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

void sub_18860C90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860C924(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 512));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

BOOL CKOperationExecutionStateIsFinished(_DWORD *a1)
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  v2 = *a1 == 2;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return v2;
}

BOOL CKOperationExecutionStateIsExecuting(_DWORD *a1)
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  v2 = *a1 == 1;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return v2;
}

void *sub_18860E050(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 344) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 344);
    *(v7 + 344) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18860E230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18860E248(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 344));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18860E3D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 352) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 352);
    *(v7 + 352) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

id sub_18860E438(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v4 = v1[42];
    if (!v4)
    {
      v5 = objc_msgSend_operationID(v1, v2, v3);
      v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 20, @"Operation %@ was cancelled internally by CloudKit", v5);
      v8 = v1[42];
      v1[42] = v7;

      v4 = v1[42];
    }

    v9 = v4;
    objc_sync_exit(v1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_18860E568(void *a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    v5 = objc_msgSend_configuration(a1, v3, v4);
    v8 = objc_msgSend_container(v5, v6, v7);

    if (v8)
    {
      objc_msgSend_performBlock_(v8, v9, v10);
    }

    else
    {
      v10[2](v10, 0);
    }
  }
}

void sub_18860E5FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v191 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_transitionToExecuting(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_msgSend_operationID(*(a1 + 32), v4, v5);
    objc_msgSend_raise_format_(v6, v9, v7, @"You can't restart an executing or finished CKOperation: %@", v8);
  }

  if (objc_msgSend_isCancelled(*(a1 + 32), v4, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_op;
    if (os_log_type_enabled(ck_log_facility_op, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = *(a1 + 32);
      v20 = objc_msgSend_ckShortDescription(v17, v18, v19);
      *buf = 138543874;
      v182 = v16;
      v183 = 2048;
      v184 = v17;
      v185 = 2114;
      v186 = v20;
      _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEFAULT, "Not starting already cancelled operation <%{public}@: %p; %{public}@>", buf, 0x20u);
    }

    v21 = *(a1 + 32);
    v22 = sub_18860E438(v21);
    objc_msgSend_finishWithError_(v21, v23, v22);
LABEL_66:

    goto LABEL_67;
  }

  if (!*(a1 + 40))
  {
    v35 = objc_msgSend_resolvedConfiguration(*(a1 + 32), v10, v11);
    v22 = objc_msgSend_backgroundTask(v35, v36, v37);

    if (!v22)
    {
LABEL_58:
      v129 = objc_msgSend_deviceContext(*(a1 + 32), v38, v39);
      v132 = objc_msgSend_throttleManager(v129, v130, v131);
      v133 = *(a1 + 32);
      v180 = 0;
      v135 = objc_msgSend_enforcedThrottleForCriteria_willSendRequest_outThrottleError_(v132, v134, v133, 1, &v180);
      v136 = v180;

      if (v135)
      {
        v139 = *(a1 + 32);
        v140 = objc_msgSend_CKClientSuitableError(v136, v137, v138);
        objc_msgSend_finishWithError_(v139, v141, v140);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v142 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v145 = *(a1 + 32);
          loga = v142;
          v146 = objc_opt_class();
          v147 = NSStringFromClass(v146);
          v148 = *(a1 + 32);
          v151 = objc_msgSend_ckShortDescription(v148, v149, v150);
          v177 = objc_msgSend_configuration(*(a1 + 32), v152, v153);
          v156 = objc_msgSend_container(v177, v154, v155);
          v159 = objc_msgSend_configuration(*(a1 + 32), v157, v158);
          v162 = objc_msgSend_container(v159, v160, v161);
          v165 = objc_msgSend_implementation(v162, v163, v164);
          *buf = 138544386;
          v182 = v147;
          v183 = 2048;
          v184 = v148;
          v185 = 2114;
          v186 = v151;
          v187 = 2048;
          v188 = v156;
          v189 = 2048;
          v190 = v165;
          _os_log_impl(&dword_1883EA000, loga, OS_LOG_TYPE_INFO, "Invoking main for operation <%{public}@: %p; %{public}@> on CKContainer/CKContainerImplementation %p / %p", buf, 0x34u);
        }

        objc_msgSend_main(*(a1 + 32), v143, v144);
      }

      goto LABEL_66;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v40 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v43 = *(a1 + 32);
      v44 = v40;
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = *(a1 + 32);
      v50 = objc_msgSend_ckShortDescription(v47, v48, v49);
      *buf = 138544130;
      v182 = v46;
      v183 = 2048;
      v184 = v47;
      v185 = 2114;
      v186 = v50;
      v187 = 2112;
      v188 = v22;
      _os_log_impl(&dword_1883EA000, v44, OS_LOG_TYPE_INFO, "Found background task for operation <%{public}@: %p; %{public}@>: %@", buf, 0x2Au);
    }

    v51 = objc_msgSend_identifier(v22, v41, v42);
    sub_18860F170(*(a1 + 32), v51);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = *(a1 + 32);
      if (!v54)
      {
        goto LABEL_27;
      }

      v55 = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v54 = *(a1 + 32);
      if ((isKindOfClass & 1) == 0 || !v54)
      {
LABEL_27:
        v57 = objc_msgSend_operationMetric(v54, v52, v53);
        v60 = objc_msgSend_identifier(v22, v58, v59);
        objc_msgSend_setObject_forKeyedSubscript_(v57, v61, v60, @"xpcActivity_identifier");

        v64 = objc_msgSend_priority(v22, v62, v63);
        v65 = CKBackgroundTaskPriorityDescription(v64);
        objc_msgSend_setObject_forKeyedSubscript_(v57, v66, v65, @"xpcActivity_priority");

        if (objc_msgSend_requiresSignificantUserInactivity(v22, v67, v68))
        {
          objc_msgSend_setObject_forKeyedSubscript_(v57, v69, MEMORY[0x1E695E118], @"xpcActivity_criteria_requireSignificantUserInactivity");
        }

        if ((objc_msgSend_requiresNetworkConnectivity(v22, v69, v70) & 1) == 0)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v57, v71, MEMORY[0x1E695E110], @"xpcActivity_criteria_requireNetworkConnectivity");
        }

        v73 = MEMORY[0x1E696AD98];
        objc_msgSend_interval(v22, v71, v72);
        v76 = objc_msgSend_numberWithDouble_(v73, v74, v75);
        objc_msgSend_setObject_forKeyedSubscript_(v57, v77, v76, @"xpcActivity_interval");

        v80 = objc_msgSend_requiresInexpensiveNetworkConnectivity(v22, v78, v79);
        v83 = objc_msgSend_configuration(*(a1 + 32), v81, v82);
        v86 = objc_msgSend_allowsExpensiveNetworkAccess(v83, v84, v85);

        if (v80)
        {
          if (v86)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v89 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
            {
              v90 = *(a1 + 32);
              log = v89;
              v91 = objc_opt_class();
              v92 = NSStringFromClass(v91);
              v93 = *(a1 + 32);
              v176 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v93, v94, 1, 0, 0);
              v97 = objc_msgSend_CKPropertiesStyleString(v176, v95, v96);
              v99 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 32), v98, 0, 1, 0);
              v102 = objc_msgSend_CKPropertiesStyleString(v99, v100, v101);
              *buf = 138544130;
              v182 = v92;
              v183 = 2048;
              v184 = v93;
              v185 = 2114;
              v186 = v97;
              v187 = 2112;
              v188 = v102;
              v103 = "BUG IN CLIENT OF CLOUDKIT: Operation configuration does not match background task request. \n Background task has disabled allows expensive network access. \n Operation has enabled allows expensive network access. \n<%{public}@: %p; %{public}@, %@>";
LABEL_69:
              _os_log_fault_impl(&dword_1883EA000, log, OS_LOG_TYPE_FAULT, v103, buf, 0x2Au);
            }
          }
        }

        else if ((v86 & 1) == 0)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v104 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
          {
            v167 = *(a1 + 32);
            log = v104;
            v168 = objc_opt_class();
            v92 = NSStringFromClass(v168);
            v169 = *(a1 + 32);
            v176 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v169, v170, 1, 0, 0);
            v97 = objc_msgSend_CKPropertiesStyleString(v176, v171, v172);
            v99 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(*(a1 + 32), v173, 0, 1, 0);
            v102 = objc_msgSend_CKPropertiesStyleString(v99, v174, v175);
            *buf = 138544130;
            v182 = v92;
            v183 = 2048;
            v184 = v169;
            v185 = 2114;
            v186 = v97;
            v187 = 2112;
            v188 = v102;
            v103 = "BUG IN CLIENT OF CLOUDKIT: Operation configuration does not match XPC Activity Criteria. \n Background task has enabled allows expensive network access. \n Operation has disabled allows expensive network access. \n<%{public}@: %p; %{public}@, %@>";
            goto LABEL_69;
          }
        }

        isDataBudgeted = objc_msgSend_isDataBudgeted(v22, v87, v88);
        v106 = *(a1 + 32);
        if (isDataBudgeted)
        {
          if (v106)
          {
            *(v106 + 376) = 1;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v107 = ck_log_facility_ck;
          if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            goto LABEL_55;
          }

          v108 = *(a1 + 32);
          v109 = v107;
          v110 = objc_opt_class();
          v111 = NSStringFromClass(v110);
          v112 = *(a1 + 32);
          v115 = objc_msgSend_ckShortDescription(v112, v113, v114);
          *buf = 138544130;
          v182 = v111;
          v183 = 2048;
          v184 = v112;
          v185 = 2114;
          v186 = v115;
          v187 = 2112;
          v188 = v22;
          v116 = "Setting duetPreClearedMode KOperationDuetPreClearedModeWithBudgeting for operation <%{public}@: %p; %{public}@> for background task %@";
        }

        else
        {
          if (v106)
          {
            *(v106 + 376) = 2;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v117 = ck_log_facility_ck;
          if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            goto LABEL_55;
          }

          v118 = *(a1 + 32);
          v109 = v117;
          v119 = objc_opt_class();
          v111 = NSStringFromClass(v119);
          v120 = *(a1 + 32);
          v115 = objc_msgSend_ckShortDescription(v120, v121, v122);
          *buf = 138544130;
          v182 = v111;
          v183 = 2048;
          v184 = v120;
          v185 = 2114;
          v186 = v115;
          v187 = 2112;
          v188 = v22;
          v116 = "Setting duetPreClearedMode CKOperationDuetPreClearedModeWithoutBudgeting for operation <%{public}@: %p; %{public}@> for background task %@";
        }

        _os_log_impl(&dword_1883EA000, v109, OS_LOG_TYPE_INFO, v116, buf, 0x2Au);

LABEL_55:
        v123 = *(a1 + 32);
        v124 = NSStringFromSelector(sel_state);
        objc_msgSend_addObserver_forKeyPath_options_context_(v22, v125, v123, v124, 0, qword_1EA910878);

        if (objc_msgSend_state(v22, v126, v127) != 1)
        {
          objc_msgSend__handleBackgroundTaskExpiration_(*(a1 + 32), v128, v22);
        }

        goto LABEL_58;
      }

      v55 = 3;
    }

    v54[49] = v55;
    v54 = *(a1 + 32);
    goto LABEL_27;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_op;
  if (os_log_type_enabled(ck_log_facility_op, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 32);
    v27 = v24;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = *(a1 + 32);
    v33 = objc_msgSend_ckShortDescription(v30, v31, v32);
    v34 = *(a1 + 40);
    *buf = 138544130;
    v182 = v29;
    v183 = 2048;
    v184 = v30;
    v185 = 2114;
    v186 = v33;
    v187 = 2112;
    v188 = v34;
    _os_log_impl(&dword_1883EA000, v27, OS_LOG_TYPE_DEFAULT, "Not starting operation due to error <%{public}@: %p; %{public}@>: %@", buf, 0x2Au);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v25, *(a1 + 40));
LABEL_67:
  v166 = *MEMORY[0x1E69E9840];
}

void sub_18860F170(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 400), a2);
  }
}

void sub_18860F874(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_18860F958;
  aBlock[3] = &unk_1E70BC388;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v5 = v2;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v6 = objc_msgSend_invokePlaceholderOperationFinishedCallback(*(a1 + 32), v3, v4);
    objc_msgSend_setPlaceholderOperationFinishedCallback_(*(a1 + 32), v7, 0);
    objc_msgSend_takeActionOnOperation_proceedBlock_(v6, v8, *(a1 + 32), v5);
  }

  else
  {
    (*(v2 + 2))(v2);
  }
}

void sub_18860F958(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__finishDiscretionaryOperation(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);
  if (v5)
  {

    objc_setProperty_atomic(v5, v4, 0, 440);
  }
}

void sub_18860F9B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_callbackQueue(*(a1 + 32), v4, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18860FA68;
  v8[3] = &unk_1E70BEEC0;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

id sub_18860FA7C(void *a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_configuration(a1, v3, v4);
    v9 = objc_msgSend_container(v6, v7, v8);
    v12 = objc_msgSend_discretionaryXPCConnection(v9, v10, v11);

    if (!v12)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v30 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v43 = v30;
        v46 = objc_msgSend_operationID(a1, v44, v45);
        v49 = objc_msgSend_configuration(a1, v47, v48);
        v52 = objc_msgSend_container(v49, v50, v51);
        *buf = 138543618;
        v67 = v46;
        v68 = 2112;
        v69 = v52;
        _os_log_error_impl(&dword_1883EA000, v43, OS_LOG_TYPE_ERROR, "Couldn't get a discretionary connection for operation %{public}@ and container %@", buf, 0x16u);
      }

      v33 = objc_msgSend_operationID(a1, v31, v32);
      v36 = objc_msgSend_configuration(a1, v34, v35);
      v39 = objc_msgSend_container(v36, v37, v38);
      v29 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v40, @"CKInternalErrorDomain", 2005, @"Couldn't get a discretionary connection for operation %@ and container %@", v33, v39);

      if (v5)
      {
        v5[2](v5, v29);
      }

      v18 = 0;
      goto LABEL_18;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188612678;
    aBlock[3] = &unk_1E70BC540;
    v13 = v5;
    v65 = v13;
    v14 = _Block_copy(aBlock);
    v18 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v12, v15, v14);
    if (v18)
    {
LABEL_10:

      v29 = v65;
LABEL_18:

      goto LABEL_19;
    }

    v63 = v5;
    v19 = objc_msgSend_operationID(a1, v16, v17);
    v22 = objc_msgSend_configuration(a1, v20, v21);
    v25 = objc_msgSend_container(v22, v23, v24);
    v27 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 2005, @"Couldn't get a discretionary connection for operation %@ and container %@", v19, v25);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    v5 = v63;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v53 = v28;
      v56 = objc_msgSend_operationID(a1, v54, v55);
      v59 = objc_msgSend_configuration(a1, v57, v58);
      v62 = objc_msgSend_container(v59, v60, v61);
      *buf = 138543618;
      v67 = v56;
      v68 = 2112;
      v69 = v62;
      _os_log_error_impl(&dword_1883EA000, v53, OS_LOG_TYPE_ERROR, "Couldn't get a discretionary connection for operation %{public}@ and container %@", buf, 0x16u);

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else if (!v13)
    {
LABEL_9:

      goto LABEL_10;
    }

    v13[2](v13, v27);
    goto LABEL_9;
  }

  v18 = 0;
LABEL_19:

  v41 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_18860FEA4()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_1883EA000, v0, OS_LOG_TYPE_DEBUG, "Queuing discretionary operation finished scheduling phase.", v1, 2u);
  }
}

void sub_188610098(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1886100B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v2, 440, 1);
  }

  sub_188435294(WeakRetained);
}

void sub_18861010C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_18861022C;
    v15 = &unk_1E70BC2E8;
    v3 = *(a1 + 32);
    v16 = WeakRetained;
    v17 = v3;
    v4 = _Block_copy(&v12);
    v9 = __ROR8__(objc_msgSend_qualityOfService(WeakRetained, v5, v6, v12, v13, v14, v15) - 9, 3);
    if (v9 <= 3)
    {
      v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, (8 * v9 + 9), 0, v4);

      v4 = v10;
    }

    v11 = objc_msgSend_callbackQueue(WeakRetained, v7, v8);
    ck_call_or_dispatch_async_if_not_key(v11, kCKOperationCallbackQueueName, v4);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_18861022C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 440, 1);
  }

  sub_188435294(Property);
}

void sub_188610D68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188610DD8;
  v2[3] = &unk_1E70BC048;
  v2[4] = v1;
  sub_18860E568(v1, v2);
}

void sub_188610DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &v9);

  v7 = *(a1 + 32);
  if (v7)
  {
    if (*(v7 + 276) != 1 || (*(v7 + 277) & 1) != 0 || (objc_msgSend__finishDiscretionaryOperation(*(a1 + 32), v5, v6, v9.opaque[0], v9.opaque[1]), (v7 = *(a1 + 32)) != 0))
    {
      if (*(v7 + 288))
      {
        objc_msgSend__cancelDaemonOperation(v7, v5, v6);
        v7 = *(a1 + 32);
      }
    }
  }

  v8 = sub_18860E438(v7);
  sub_188610EC8(v7, v8);

  os_activity_scope_leave(&v9);
}

void sub_188610EC8(_BYTE *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_callbackQueue(a1, v3, v4);
    dispatch_assert_queue_V2(v6);

    if (__sTestOverridesAvailable[0] == 1 && (objc_msgSend_unitTestOverrides(a1, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v9, v10, @"SkipCheckingExecuting"), v11 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_BOOLValue(v11, v12, v13), v11, v9, (v14 & 1) != 0) || (objc_msgSend_isExecuting(a1, v7, v8) & 1) != 0)
    {
      if (!v5)
      {
        if (objc_msgSend_isCancelled(a1, v7, v8))
        {
          v5 = sub_18860E438(a1);
        }

        else
        {
          v5 = 0;
        }
      }

      v21 = objc_msgSend_error(a1, v7, v8);

      if (!v21)
      {
        objc_msgSend_setError_(a1, v22, v5);
      }

      v24 = objc_msgSend_error(a1, v22, v23);
      isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v24, v25, v26);

      if (isCloudCoreSessionNoLongerValidError)
      {
        v30 = objc_msgSend_configuration(a1, v28, v29);
        v33 = objc_msgSend_container(v30, v31, v32);
        v36 = objc_msgSend_implementation(v33, v34, v35);
        v39 = objc_msgSend_error(a1, v37, v38);
        objc_msgSend_noteSessionInvalidation_(v36, v40, v39);
      }

      if ((objc_msgSend_isFinished(a1, v28, v29) & 1) == 0)
      {
        a1[281] = 1;
        v46 = objc_msgSend_error(a1, v41, v42);
        objc_msgSend__finishOnCallbackQueueWithError_(a1, v47, v46);

        a1[281] = 0;
        goto LABEL_24;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v43 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v16 = v43;
        v19 = objc_msgSend_operationID(a1, v44, v45);
        v49 = 138543362;
        v50 = v19;
        v20 = "Ignoring _finishInternalOnCallbackQueue invocation on already-finished operation %{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v15 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v16 = v15;
        v19 = objc_msgSend_operationID(a1, v17, v18);
        v49 = 138543362;
        v50 = v19;
        v20 = "The operation %{public}@ didn't start or is already finished";
LABEL_22:
        _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, v20, &v49, 0xCu);
      }
    }
  }

LABEL_24:

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1886112BC(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v10 = objc_msgSend_operationID(v6, v8, v9);
    v13 = objc_msgSend_configuration(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_container(v13, v14, v15);
    v17 = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v3;
    _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Couldn't get a connection in order to cancel operation %{public}@ on container %@: %@", &v17, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_18861140C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_operationID(v3, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886114BC;
  v9[3] = &unk_1E70BC388;
  v9[4] = *(a1 + 32);
  objc_msgSend_cancelOperationWithIdentifier_completionHandler_(v4, v8, v7, v9);
}

void sub_1886114BC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (__sTestOverridesAvailable[0] == 1)
  {
    v7 = objc_msgSend_invokeDaemonOperationDidCancelCallback(*(a1 + 32), a2, a3);
    objc_msgSend_setDaemonOperationDidCancelCallback_(*(a1 + 32), v5, 0);
    objc_msgSend_takeActionOnOperation_proceedBlock_(v7, v6, *(a1 + 32), &unk_1EFA2F588);
  }
}

void sub_188611544(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v10 = objc_msgSend_operationID(v6, v8, v9);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Error finishing discretionary operation %@: %@", &v11, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1886117F8(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ((objc_msgSend_isFinished(WeakRetained, v3, v4) & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v6 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v11 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v5, v10, 1, 0, 0);
        v14 = objc_msgSend_CKPropertiesStyleString(v11, v12, v13);
        v16 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v5, v15, 0, 1, 0);
        v19 = objc_msgSend_CKPropertiesStyleString(v16, v17, v18);
        v20 = CKDescriptionForTimeInterval(*(a1 + 40));
        v39 = 138544386;
        v40 = v9;
        v41 = 2048;
        v42 = v5;
        v43 = 2114;
        v44 = v14;
        v45 = 2112;
        v46 = v19;
        v47 = 2112;
        v48 = v20;
        _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Warn: ======================= Operation <%{public}@: %p; %{public}@, %@> has been running for %@.", &v39, 0x34u);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v24 = v21;
        v27 = objc_msgSend_configuration(v5, v25, v26);
        v30 = objc_msgSend_container(v27, v28, v29);
        v31 = sub_1886CEDB0(v30);
        v39 = 138412290;
        v40 = v31;
        _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Timeout status report: %@", &v39, 0xCu);
      }

      v32 = objc_msgSend_configuration(v5, v22, v23);
      v35 = objc_msgSend_container(v32, v33, v34);
      objc_msgSend_dumpDaemonStatusReport(v35, v36, v37);
    }

    sub_1884350BC(v5);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_188612578(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_18861259C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isOutstandingOperation(*(a1 + 32), a2, a3))
  {
    return 0;
  }

  v6 = objc_msgSend_configuration(*(a1 + 32), v4, v5);
  isLongLived = objc_msgSend_isLongLived(v6, v7, v8);

  if (isLongLived)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  return !v11 || *(v11 + 288) == 0;
}

void sub_18861261C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRemoteProxyFailureWithError_(WeakRetained, v4, v3);
}

void sub_188612678(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error connecting to CloudKit Discretionary daemon: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_188613DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188613E60;
  v2[3] = &unk_1E70BE848;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_18860E568(v1, v2);
}

void sub_188613E60(uint64_t a1, void *a2)
{
  v3 = a2;
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &v7);

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 282) = 1;
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  sub_188610EC8(v6, *(a1 + 40));
  os_activity_scope_leave(&v7);
}

void sub_188613FB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188614048;
  v2[3] = &unk_1E70BE848;
  v2[4] = v1;
  v3 = *(a1 + 40);
  sub_18860E568(v1, v2);
}

void sub_188614048(uint64_t a1, void *a2)
{
  v3 = a2;
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  v4 = sub_188416C9C(*(a1 + 32));
  os_activity_scope_enter(v4, &v5);

  sub_188610EC8(*(a1 + 32), *(a1 + 40));
  os_activity_scope_leave(&v5);
}

uint64_t sub_188615CE8(uint64_t result)
{
  if (result)
  {
    return *(result + 488);
  }

  return result;
}

void sub_188615CFC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 488), a2);
  }
}

void sub_1886166C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_188618000(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_errorInducerID(a2, a2, a3);
  LODWORD(a1) = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return a1 ^ 1;
}

uint64_t sub_1886181DC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_testResultOverlayID(a2, a2, a3);
  LODWORD(a1) = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return a1 ^ 1;
}

uint64_t CKOperationGroupTransferSizeForBytes(unint64_t a1)
{
  v1 = HIDWORD(a1);
  v2 = 6;
  v3 = a1 >> 31;
  v4 = 5;
  v5 = a1 >> 30;
  v6 = 4;
  v7 = a1 >> 22;
  v8 = 3;
  v9 = a1 >> 21;
  v10 = a1 >> 20 == 0;
  v11 = 1;
  if (!v10)
  {
    v11 = 2;
  }

  if (v9 <= 4)
  {
    v8 = v11;
  }

  if (v7 <= 0x18)
  {
    v6 = v8;
  }

  if (!v5)
  {
    v4 = v6;
  }

  if (v3 <= 4)
  {
    v2 = v4;
  }

  if (v1 <= 0x18)
  {
    return v2;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_1886194E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 1) > 6)
    {
      return -1;
    }

    else
    {
      return qword_1886FE7C0[a2 - 1];
    }
  }

  return result;
}

id sub_1886198B8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = objc_msgSend_unsignedIntegerValue(a3, v5, v6);
  v8 = MEMORY[0x1E696AEC0];
  isUplink = objc_msgSend_isUplink(v4, v9, v10);
  v14 = objc_msgSend_allowsCellularAccess(v4, v12, v13);

  v15 = CKStringForNetworkServiceType(v7);
  v17 = objc_msgSend_stringWithFormat_(v8, v16, @"(uplink:%d, allowsCellularAccess:%d, ServiceType: %@)", isUplink, v14, v15);

  return v17;
}

id sub_18861AF10(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v31.receiver = a1;
    v31.super_class = CKPlaceholderOperation;
    a1 = objc_msgSendSuper2(&v31, sel_init);
    if (a1)
    {
      v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
      v10 = *(a1 + 33);
      *(a1 + 33) = v9;

      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = *(a1 + 31);
      *(a1 + 31) = v11;
      v13 = v11;

      *(a1 + 260) = 0;
      v16 = objc_msgSend_operationID(v5, v14, v15);
      v17 = *(a1 + 34);
      *(a1 + 34) = v16;

      v20 = objc_msgSend_copy(v6, v18, v19);
      v21 = *(a1 + 35);
      *(a1 + 35) = v20;

      v24 = objc_msgSend_qualityOfService(v5, v22, v23);
      objc_msgSend_setQualityOfService_(a1, v25, v24);
      v28 = objc_msgSend_queuePriority(v5, v26, v27);
      objc_msgSend_setQueuePriority_(a1, v29, v28);
    }
  }

  return a1;
}

uint64_t CKDPDistributedTimestampsReadFrom(void *a1, void *a2, uint64_t a3)
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
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
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
        v32 = objc_alloc_init(CKDPSiteIdentifier);
        objc_msgSend_addSiteIdentifiers_(a1, v33, v32);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !CKDPSiteIdentifierReadFrom(v32, a2, v34))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPDistributedTimestampsSiteVersionVectors);
    objc_msgSend_addSiteVersionVectors_(a1, v35, v32);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !CKDPDistributedTimestampsSiteVersionVectorsReadFrom(v32, a2, v36))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPDistributedTimestampsSiteVersionVectorsReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v42[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42[0] & 0x7F) << v10;
        if ((v42[0] & 0x80) == 0)
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

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
          v34 = 32;
        }

        else
        {
          if (v32 != 4)
          {
LABEL_24:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_31;
          }

          v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
          v34 = 16;
        }
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
        v34 = 24;
      }

      else
      {
        if (v32 != 2)
        {
          goto LABEL_24;
        }

        v33 = objc_alloc_init(CKDPDistributedTimestampsVersionVector);
        v34 = 8;
      }

      objc_storeStrong((a1 + v34), v33);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPDistributedTimestampsVersionVectorReadFrom(v33, a2, v37))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_31:
      v38 = objc_msgSend_position(a2, v35, v36);
    }

    while (v38 < objc_msgSend_length(a2, v39, v40));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPDistributedTimestampsVersionVectorReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_position(a2, a2, a3);
  if (v4 < objc_msgSend_length(a2, v5, v6))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v7, v8))
      {
        return objc_msgSend_hasError(a2, v7, v8) ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v234) = 0;
        v12 = objc_msgSend_position(a2, v7, v8) + 1;
        if (v12 >= objc_msgSend_position(a2, v13, v14) && (v17 = objc_msgSend_position(a2, v15, v16) + 1, v17 <= objc_msgSend_length(a2, v18, v19)))
        {
          v20 = objc_msgSend_data(a2, v15, v16);
          v23 = objc_msgSend_position(a2, v21, v22);
          objc_msgSend_getBytes_range_(v20, v24, &v234, v23, 1);

          v27 = objc_msgSend_position(a2, v25, v26);
          objc_msgSend_setPosition_(a2, v28, v27 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v15, v16);
        }

        v11 |= (v234 & 0x7F) << v9;
        if ((v234 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v29 = v10++ >= 9;
        if (v29)
        {
          v30 = 0;
          goto LABEL_15;
        }
      }

      v30 = objc_msgSend_hasError(a2, v7, v8) ? 0 : v11;
LABEL_15:
      if (objc_msgSend_hasError(a2, v7, v8))
      {
        return objc_msgSend_hasError(a2, v7, v8) ^ 1;
      }

      v8 = v30 & 7;
      if (v8 == 4)
      {
        return objc_msgSend_hasError(a2, v7, v8) ^ 1;
      }

      v31 = (v30 >> 3);
      if ((v30 >> 3) > 3)
      {
        if (v31 == 4)
        {
          if (v8 != 2)
          {
            v211 = 0;
            v212 = 0;
            v213 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v214 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v214 >= objc_msgSend_position(a2, v215, v216) && (v219 = objc_msgSend_position(a2, v217, v218) + 1, v219 <= objc_msgSend_length(a2, v220, v221)))
              {
                v222 = objc_msgSend_data(a2, v217, v218);
                v225 = objc_msgSend_position(a2, v223, v224);
                objc_msgSend_getBytes_range_(v222, v226, &v234, v225, 1);

                v229 = objc_msgSend_position(a2, v227, v228);
                objc_msgSend_setPosition_(a2, v230, v229 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v217, v218);
              }

              v213 |= (v234 & 0x7F) << v211;
              if ((v234 & 0x80) == 0)
              {
                break;
              }

              v211 += 7;
              v29 = v212++ >= 9;
              if (v29)
              {
                goto LABEL_126;
              }
            }

            objc_msgSend_hasError(a2, v31, v8);
LABEL_126:
            PBRepeatedInt32Add();
            goto LABEL_127;
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v124 = objc_msgSend_position(a2, v122, v123);
            if (v124 >= objc_msgSend_length(a2, v125, v126) || (objc_msgSend_hasError(a2, v127, v128) & 1) != 0)
            {
              break;
            }

            v131 = 0;
            v132 = 0;
            v133 = 0;
            while (1)
            {
              v236 = 0;
              v134 = objc_msgSend_position(a2, v129, v130) + 1;
              if (v134 >= objc_msgSend_position(a2, v135, v136) && (v139 = objc_msgSend_position(a2, v137, v138) + 1, v139 <= objc_msgSend_length(a2, v140, v141)))
              {
                v142 = objc_msgSend_data(a2, v137, v138);
                v145 = objc_msgSend_position(a2, v143, v144);
                objc_msgSend_getBytes_range_(v142, v146, &v236, v145, 1);

                v149 = objc_msgSend_position(a2, v147, v148);
                objc_msgSend_setPosition_(a2, v150, v149 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v137, v138);
              }

              v133 |= (v236 & 0x7F) << v131;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              v29 = v132++ >= 9;
              if (v29)
              {
                goto LABEL_83;
              }
            }

            objc_msgSend_hasError(a2, v129, v130);
LABEL_83:
            PBRepeatedInt32Add();
          }

LABEL_84:
          PBReaderRecallMark();
          goto LABEL_127;
        }

        if (v31 == 5)
        {
          if (v8 != 2)
          {
            v171 = 0;
            v172 = 0;
            v173 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v174 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v174 >= objc_msgSend_position(a2, v175, v176) && (v179 = objc_msgSend_position(a2, v177, v178) + 1, v179 <= objc_msgSend_length(a2, v180, v181)))
              {
                v182 = objc_msgSend_data(a2, v177, v178);
                v185 = objc_msgSend_position(a2, v183, v184);
                objc_msgSend_getBytes_range_(v182, v186, &v234, v185, 1);

                v189 = objc_msgSend_position(a2, v187, v188);
                objc_msgSend_setPosition_(a2, v190, v189 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v177, v178);
              }

              v173 |= (v234 & 0x7F) << v171;
              if ((v234 & 0x80) == 0)
              {
                break;
              }

              v171 += 7;
              v29 = v172++ >= 9;
              if (v29)
              {
                goto LABEL_124;
              }
            }

            objc_msgSend_hasError(a2, v31, v8);
LABEL_124:
            PBRepeatedUInt32Add();
            goto LABEL_127;
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v64 = objc_msgSend_position(a2, v62, v63);
            if (v64 >= objc_msgSend_length(a2, v65, v66) || (objc_msgSend_hasError(a2, v67, v68) & 1) != 0)
            {
              goto LABEL_84;
            }

            v71 = 0;
            v72 = 0;
            v73 = 0;
            while (1)
            {
              v236 = 0;
              v74 = objc_msgSend_position(a2, v69, v70) + 1;
              if (v74 >= objc_msgSend_position(a2, v75, v76) && (v79 = objc_msgSend_position(a2, v77, v78) + 1, v79 <= objc_msgSend_length(a2, v80, v81)))
              {
                v82 = objc_msgSend_data(a2, v77, v78);
                v85 = objc_msgSend_position(a2, v83, v84);
                objc_msgSend_getBytes_range_(v82, v86, &v236, v85, 1);

                v89 = objc_msgSend_position(a2, v87, v88);
                objc_msgSend_setPosition_(a2, v90, v89 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v77, v78);
              }

              v73 |= (v236 & 0x7F) << v71;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v29 = v72++ >= 9;
              if (v29)
              {
                goto LABEL_51;
              }
            }

            objc_msgSend_hasError(a2, v69, v70);
LABEL_51:
            PBRepeatedUInt32Add();
          }
        }
      }

      else
      {
        if (v31 == 2)
        {
          if (v8 != 2)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v194 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v194 >= objc_msgSend_position(a2, v195, v196) && (v199 = objc_msgSend_position(a2, v197, v198) + 1, v199 <= objc_msgSend_length(a2, v200, v201)))
              {
                v202 = objc_msgSend_data(a2, v197, v198);
                v205 = objc_msgSend_position(a2, v203, v204);
                objc_msgSend_getBytes_range_(v202, v206, &v234, v205, 1);

                v209 = objc_msgSend_position(a2, v207, v208);
                objc_msgSend_setPosition_(a2, v210, v209 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v197, v198);
              }

              v193 |= (v234 & 0x7F) << v191;
              if ((v234 & 0x80) == 0)
              {
                goto LABEL_112;
              }

              v191 += 7;
              v29 = v192++ >= 9;
              if (v29)
              {
                goto LABEL_113;
              }
            }
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v95 = objc_msgSend_position(a2, v93, v94);
            if (v95 >= objc_msgSend_length(a2, v96, v97) || (objc_msgSend_hasError(a2, v98, v99) & 1) != 0)
            {
              goto LABEL_84;
            }

            v102 = 0;
            v103 = 0;
            v104 = 0;
            while (1)
            {
              v236 = 0;
              v105 = objc_msgSend_position(a2, v100, v101) + 1;
              if (v105 >= objc_msgSend_position(a2, v106, v107) && (v110 = objc_msgSend_position(a2, v108, v109) + 1, v110 <= objc_msgSend_length(a2, v111, v112)))
              {
                v113 = objc_msgSend_data(a2, v108, v109);
                v116 = objc_msgSend_position(a2, v114, v115);
                objc_msgSend_getBytes_range_(v113, v117, &v236, v116, 1);

                v120 = objc_msgSend_position(a2, v118, v119);
                objc_msgSend_setPosition_(a2, v121, v120 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v108, v109);
              }

              v104 |= (v236 & 0x7F) << v102;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              v29 = v103++ >= 9;
              if (v29)
              {
                goto LABEL_68;
              }
            }

            objc_msgSend_hasError(a2, v100, v101);
LABEL_68:
            PBRepeatedUInt64Add();
          }
        }

        if (v31 == 3)
        {
          if (v8 != 2)
          {
            v151 = 0;
            v152 = 0;
            v153 = 0;
            while (1)
            {
              LOBYTE(v234) = 0;
              v154 = objc_msgSend_position(a2, v31, v8) + 1;
              if (v154 >= objc_msgSend_position(a2, v155, v156) && (v159 = objc_msgSend_position(a2, v157, v158) + 1, v159 <= objc_msgSend_length(a2, v160, v161)))
              {
                v162 = objc_msgSend_data(a2, v157, v158);
                v165 = objc_msgSend_position(a2, v163, v164);
                objc_msgSend_getBytes_range_(v162, v166, &v234, v165, 1);

                v169 = objc_msgSend_position(a2, v167, v168);
                objc_msgSend_setPosition_(a2, v170, v169 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v157, v158);
              }

              v153 |= (v234 & 0x7F) << v151;
              if ((v234 & 0x80) == 0)
              {
                break;
              }

              v151 += 7;
              v29 = v152++ >= 9;
              if (v29)
              {
                goto LABEL_113;
              }
            }

LABEL_112:
            objc_msgSend_hasError(a2, v31, v8);
LABEL_113:
            PBRepeatedUInt64Add();
            goto LABEL_127;
          }

          v234 = 0;
          v235 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v35 = objc_msgSend_position(a2, v33, v34);
            if (v35 >= objc_msgSend_length(a2, v36, v37) || (objc_msgSend_hasError(a2, v38, v39) & 1) != 0)
            {
              goto LABEL_84;
            }

            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              v236 = 0;
              v45 = objc_msgSend_position(a2, v40, v41) + 1;
              if (v45 >= objc_msgSend_position(a2, v46, v47) && (v50 = objc_msgSend_position(a2, v48, v49) + 1, v50 <= objc_msgSend_length(a2, v51, v52)))
              {
                v53 = objc_msgSend_data(a2, v48, v49);
                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_getBytes_range_(v53, v57, &v236, v56, 1);

                v60 = objc_msgSend_position(a2, v58, v59);
                objc_msgSend_setPosition_(a2, v61, v60 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v48, v49);
              }

              v44 |= (v236 & 0x7F) << v42;
              if ((v236 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v29 = v43++ >= 9;
              if (v29)
              {
                goto LABEL_34;
              }
            }

            objc_msgSend_hasError(a2, v40, v41);
LABEL_34:
            PBRepeatedUInt64Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_127:
      v231 = objc_msgSend_position(a2, v91, v92);
    }

    while (v231 < objc_msgSend_length(a2, v232, v233));
  }

  return objc_msgSend_hasError(a2, v7, v8) ^ 1;
}

uint64_t CKDPLocationCoordinateReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v162[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v162[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v162, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v162[0] & 0x7F) << v10;
        if ((v162[0] & 0x80) == 0)
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
      if ((v31 >> 3) <= 4)
      {
        break;
      }

      if (v32 <= 6)
      {
        if (v32 == 5)
        {
          *(a1 + 72) |= 0x40u;
          v162[0] = 0;
          v69 = objc_msgSend_position(a2, v32, v9) + 8;
          if (v69 >= objc_msgSend_position(a2, v70, v71) && (v74 = objc_msgSend_position(a2, v72, v73) + 8, v74 <= objc_msgSend_length(a2, v75, v76)))
          {
            v104 = objc_msgSend_data(a2, v72, v73);
            v107 = objc_msgSend_position(a2, v105, v106);
            objc_msgSend_getBytes_range_(v104, v108, v162, v107, 8);

            v111 = objc_msgSend_position(a2, v109, v110);
            objc_msgSend_setPosition_(a2, v112, v111 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v72, v73);
          }

          v102 = v162[0];
          v103 = 56;
          goto LABEL_68;
        }

        if (v32 == 6)
        {
          *(a1 + 72) |= 2u;
          v162[0] = 0;
          v43 = objc_msgSend_position(a2, v32, v9) + 8;
          if (v43 >= objc_msgSend_position(a2, v44, v45) && (v48 = objc_msgSend_position(a2, v46, v47) + 8, v48 <= objc_msgSend_length(a2, v49, v50)))
          {
            v140 = objc_msgSend_data(a2, v46, v47);
            v143 = objc_msgSend_position(a2, v141, v142);
            objc_msgSend_getBytes_range_(v140, v144, v162, v143, 8);

            v147 = objc_msgSend_position(a2, v145, v146);
            objc_msgSend_setPosition_(a2, v148, v147 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v46, v47);
          }

          v102 = v162[0];
          v103 = 16;
          goto LABEL_68;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_69;
      }

      if (v32 == 7)
      {
        *(a1 + 72) |= 0x20u;
        v162[0] = 0;
        v85 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v85 >= objc_msgSend_position(a2, v86, v87) && (v90 = objc_msgSend_position(a2, v88, v89) + 8, v90 <= objc_msgSend_length(a2, v91, v92)))
        {
          v122 = objc_msgSend_data(a2, v88, v89);
          v125 = objc_msgSend_position(a2, v123, v124);
          objc_msgSend_getBytes_range_(v122, v126, v162, v125, 8);

          v129 = objc_msgSend_position(a2, v127, v128);
          objc_msgSend_setPosition_(a2, v130, v129 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v88, v89);
        }

        v102 = v162[0];
        v103 = 48;
        goto LABEL_68;
      }

      if (v32 != 8)
      {
        goto LABEL_52;
      }

      v59 = objc_alloc_init(CKDPDate);
      objc_storeStrong((a1 + 64), v59);
      v162[0] = 0;
      v162[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPDateReadFrom(v59, a2, v60))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v158 = objc_msgSend_position(a2, v41, v42);
      if (v158 >= objc_msgSend_length(a2, v159, v160))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 > 2)
    {
      if (v32 == 3)
      {
        *(a1 + 72) |= 4u;
        v162[0] = 0;
        v77 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v77 >= objc_msgSend_position(a2, v78, v79) && (v82 = objc_msgSend_position(a2, v80, v81) + 8, v82 <= objc_msgSend_length(a2, v83, v84)))
        {
          v113 = objc_msgSend_data(a2, v80, v81);
          v116 = objc_msgSend_position(a2, v114, v115);
          objc_msgSend_getBytes_range_(v113, v117, v162, v116, 8);

          v120 = objc_msgSend_position(a2, v118, v119);
          objc_msgSend_setPosition_(a2, v121, v120 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v80, v81);
        }

        v102 = v162[0];
        v103 = 24;
        goto LABEL_68;
      }

      if (v32 == 4)
      {
        *(a1 + 72) |= 1u;
        v162[0] = 0;
        v51 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v51 >= objc_msgSend_position(a2, v52, v53) && (v56 = objc_msgSend_position(a2, v54, v55) + 8, v56 <= objc_msgSend_length(a2, v57, v58)))
        {
          v149 = objc_msgSend_data(a2, v54, v55);
          v152 = objc_msgSend_position(a2, v150, v151);
          objc_msgSend_getBytes_range_(v149, v153, v162, v152, 8);

          v156 = objc_msgSend_position(a2, v154, v155);
          objc_msgSend_setPosition_(a2, v157, v156 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v54, v55);
        }

        v102 = v162[0];
        v103 = 8;
        goto LABEL_68;
      }
    }

    else
    {
      if (v32 == 1)
      {
        *(a1 + 72) |= 8u;
        v162[0] = 0;
        v61 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 8, v66 <= objc_msgSend_length(a2, v67, v68)))
        {
          v93 = objc_msgSend_data(a2, v64, v65);
          v96 = objc_msgSend_position(a2, v94, v95);
          objc_msgSend_getBytes_range_(v93, v97, v162, v96, 8);

          v100 = objc_msgSend_position(a2, v98, v99);
          objc_msgSend_setPosition_(a2, v101, v100 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v64, v65);
        }

        v102 = v162[0];
        v103 = 32;
        goto LABEL_68;
      }

      if (v32 == 2)
      {
        *(a1 + 72) |= 0x10u;
        v162[0] = 0;
        v33 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v33 >= objc_msgSend_position(a2, v34, v35) && (v38 = objc_msgSend_position(a2, v36, v37) + 8, v38 <= objc_msgSend_length(a2, v39, v40)))
        {
          v131 = objc_msgSend_data(a2, v36, v37);
          v134 = objc_msgSend_position(a2, v132, v133);
          objc_msgSend_getBytes_range_(v131, v135, v162, v134, 8);

          v138 = objc_msgSend_position(a2, v136, v137);
          objc_msgSend_setPosition_(a2, v139, v138 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v36, v37);
        }

        v102 = v162[0];
        v103 = 40;
LABEL_68:
        *(a1 + v103) = v102;
        goto LABEL_69;
      }
    }

    goto LABEL_52;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPOneTimeFullTokenInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        v61 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
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
      if ((v31 >> 3) == 3)
      {
        v33 = PBReaderReadData();
        v34 = 16;
      }

      else
      {
        if (v32 == 2)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v62 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v62, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v62 & 0x7F) << v35;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_37;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_37:
          *(a1 + 24) = v55;
          goto LABEL_38;
        }

        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_38;
        }

        v33 = PBReaderReadData();
        v34 = 8;
      }

      v56 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_38:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPSiteIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
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

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPSiteIdentifier__modifier;
LABEL_21:
        v33 = PBReaderReadData();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

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

    v32 = &OBJC_IVAR___CKDPSiteIdentifier__identifier;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_18862538C(uint64_t a1, const char *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1883EE124;
  v43 = sub_1883EF754;
  v44 = 0;
  v3 = objc_msgSend_createRepairOperationGroupWithName_(*(a1 + 56), a2, @"Touch Repair Zone");
  v6 = objc_msgSend_repairZoneID(*(a1 + 32), v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [CKRecordZoneID alloc];
    v8 = objc_msgSend_initWithZoneName_ownerName_(v9, v10, @"RepairZone", @"__defaultOwner__");
  }

  v11 = v8;

  v14 = objc_msgSend_container(*(a1 + 40), v12, v13);
  v16 = objc_msgSend_createRepairContainerFromContainer_withOverrides_(*(a1 + 56), v15, v14, *(a1 + 32));
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [CKModifyRecordZonesOperation alloc];
  v45[0] = v11;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v45, 1);
  v22 = objc_msgSend_initWithRecordZonesToSave_recordZoneIDsToDelete_(v18, v21, 0, v20);

  objc_msgSend_setGroup_(v22, v23, v3);
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = sub_188625638;
  v36 = &unk_1E70BF1F0;
  v38 = &v39;
  v24 = v17;
  v37 = v24;
  objc_msgSend_setModifyRecordZonesCompletionBlock_(v22, v25, &v33);
  v28 = objc_msgSend_privateCloudDatabase(v16, v26, v27, v33, v34, v35, v36);
  objc_msgSend_addOperation_(v28, v29, v22);

  dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  v30 = objc_opt_self();

  v31 = v40[5];
  (*(*(a1 + 48) + 16))();

  _Block_object_dispose(&v39, 8);
  v32 = *MEMORY[0x1E69E9840];
}

void sub_188625608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188625638(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_188627AD4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v4, v6);
      v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v8, v6);
      v12 = *(a1 + 48);
      if (v12)
      {
        objc_msgSend_operations(*(v12 + 104), v9, v10);
      }

      else
      {
        objc_msgSend_operations(0, v9, v10);
      }
      v13 = ;
      v16 = objc_msgSend_firstObject(v13, v14, v15);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = objc_msgSend_includedMetadata(v16, v17, v18);
        if (objc_msgSend_containsObject_(v19, v20, v7))
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 48) + 8), v21, v7);

          if (v22 != v11)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v23 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
            {
              *v30 = 0;
              _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Attempted to change upload request callback while operation was already running", v30, 2u);
            }
          }
        }

        else
        {
        }
      }

      v24 = _Block_copy(v11);
      v25 = sub_188627CB8(*(a1 + 48));
      objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v24, v7);

      ++v6;
    }

    while (v6 < objc_msgSend_count(*(a1 + 32), v27, v28));
  }

  return objc_msgSend_tickle(*(a1 + 48), v4, v5);
}

dispatch_queue_t *sub_188627CB8(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[1];
    v1 = vars8;
  }

  return a1;
}

void sub_188627E10(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v2 = sub_188628470(*(a1 + 32));
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v89, v97, 16);
  if (!v4)
  {
    goto LABEL_65;
  }

  v7 = v4;
  v8 = *v90;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v90 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v89 + 1) + 8 * i);
      v11 = objc_msgSend_repairZoneRecordID(v10, v5, v6);
      isEqual = objc_msgSend_isEqual_(v11, v12, *(a1 + 40));

      if (isEqual)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v14 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v96 = v10;
          _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Attempting to cancel repairs for: %@", buf, 0xCu);
        }

        v17 = objc_msgSend_allRemainingRequestableAssets(*(a1 + 32), v15, v16);
        v19 = objc_msgSend_containsObject_(v17, v18, v10);

        if (v19)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v20 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Operation not yet started, cancelling", buf, 2u);
          }

          v21 = sub_188627CB8(*(a1 + 32));
          objc_msgSend_setObject_forKeyedSubscript_(v21, v22, 0, v10);

          v24 = *(a1 + 32);
          if (v24)
          {
            objc_msgSend_removeObjectForKey_(*(v24 + 128), v23, v10);
          }

          else
          {
            objc_msgSend_removeObjectForKey_(0, v23, v10);
          }

          goto LABEL_65;
        }

        v25 = sub_1886284F0(*(a1 + 32));
        v27 = objc_msgSend_containsObject_(v25, v26, v10);

        if (v27)
        {
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v30 = *(a1 + 32);
          if (v30)
          {
            objc_msgSend_operations(*(v30 + 96), v28, v29, v2);
          }

          else
          {
            objc_msgSend_operations(0, v28, v29, v2);
          }
          obj = ;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v85, v94, 16);
          if (v32)
          {
            v33 = v32;
            v34 = *v86;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v86 != v34)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v85 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = objc_msgSend_metadata(v36, v37, v38);
                  v42 = objc_msgSend_repairZoneRecordID(v39, v40, v41);
                  v45 = objc_msgSend_repairZoneRecordID(v10, v43, v44);
                  v47 = objc_msgSend_isEqual_(v42, v46, v45);

                  if (v47)
                  {
                    if (ck_log_initialization_predicate != -1)
                    {
                      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                    }

                    v2 = v79;
                    v71 = ck_log_facility_data_repair;
                    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1883EA000, v71, OS_LOG_TYPE_DEBUG, "Found operation in request queue, cancelling", buf, 2u);
                    }

                    objc_msgSend_cancel(v36, v72, v73);

                    goto LABEL_65;
                  }
                }
              }

              v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v85, v94, 16);
              if (v33)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v48 = sub_188628534(*(a1 + 32));
          v50 = objc_msgSend_containsObject_(v48, v49, v10);

          if (!v50)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v74 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1883EA000, v74, OS_LOG_TYPE_ERROR, "Could not find operation for cancellation", buf, 2u);
            }

            goto LABEL_65;
          }

          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v53 = *(a1 + 32);
          if (v53)
          {
            objc_msgSend_operations(*(v53 + 104), v51, v52, v2);
          }

          else
          {
            objc_msgSend_operations(0, v51, v52, v2);
          }
          v54 = ;
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v81, v93, 16);
          if (v56)
          {
            v57 = v56;
            v58 = *v82;
            while (2)
            {
              for (k = 0; k != v57; ++k)
              {
                if (*v82 != v58)
                {
                  objc_enumerationMutation(v54);
                }

                v60 = *(*(&v81 + 1) + 8 * k);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v63 = objc_msgSend_includedMetadata(v60, v61, v62);
                  if (objc_msgSend_count(v63, v64, v65) == 1)
                  {
                    v68 = objc_msgSend_includedMetadata(v60, v66, v67);
                    v70 = objc_msgSend_containsObject_(v68, v69, v10);

                    if (v70)
                    {
                      if (ck_log_initialization_predicate != -1)
                      {
                        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                      }

                      v2 = v79;
                      v75 = ck_log_facility_data_repair;
                      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_debug_impl(&dword_1883EA000, v75, OS_LOG_TYPE_DEBUG, "Found operation in upload queue, cancelling", buf, 2u);
                      }

                      objc_msgSend_cancel(v60, v76, v77);

                      goto LABEL_65;
                    }
                  }

                  else
                  {
                  }
                }
              }

              v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v61, &v81, v93, 16);
              if (v57)
              {
                continue;
              }

              break;
            }
          }
        }

        v2 = v79;
        goto LABEL_65;
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v89, v97, 16);
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v78 = *MEMORY[0x1E69E9840];
}

id sub_188628470(dispatch_queue_t *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = sub_188627CB8(a1);
    v5 = objc_msgSend_allKeys(v2, v3, v4);
    v7 = objc_msgSend_setWithArray_(v1, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

dispatch_queue_t *sub_1886284F0(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[4];
    v1 = vars8;
  }

  return a1;
}

dispatch_queue_t *sub_188628534(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[5];
    v1 = vars8;
  }

  return a1;
}

dispatch_queue_t *sub_188628578(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[2];
    v1 = vars8;
  }

  return a1;
}

id sub_1886285BC(dispatch_queue_t *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = sub_188628578(a1);
    v5 = objc_msgSend_allKeys(v2, v3, v4);
    v7 = objc_msgSend_setWithArray_(v1, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

dispatch_queue_t *sub_18862863C(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_V2(a1[10]);
    a1 = v2[3];
    v1 = vars8;
  }

  return a1;
}

void sub_18862868C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 80);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_18862874C;
    v8[3] = &unk_1E70BF240;
    v8[4] = a1;
    v10 = a2;
    v9 = v5;
    ck_call_or_dispatch_sync_if_not_key(v7, (a1 + 80), v8);
  }
}

void sub_18862874C(uint64_t a1)
{
  v164 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v126 = *(a1 + 32);
    v127 = v2;
    v128 = objc_opt_class();
    v130 = objc_msgSend_nameForEvent_(v128, v129, *(a1 + 48));
    v131 = v130;
    v132 = *(a1 + 40);
    v133 = @"with object ";
    v134 = v132 == 0;
    if (!v132)
    {
      v133 = &stru_1EFA32970;
      v132 = &stru_1EFA32970;
    }

    *from = 138544130;
    *&from[4] = v130;
    *&from[12] = 2114;
    *&from[14] = v133;
    if (v134)
    {
      v135 = &stru_1EFA32970;
    }

    else
    {
      v135 = @" ";
    }

    *&from[22] = 2112;
    v162 = v132;
    LOWORD(v163) = 2112;
    *(&v163 + 2) = v135;
    _os_log_debug_impl(&dword_1883EA000, v127, OS_LOG_TYPE_DEBUG, "Received %{public}@ event %{public}@%@%@in repair scheduler", from, 0x2Au);
  }

  v5 = *(a1 + 48);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v45 = *(a1 + 40);
      if (objc_msgSend_errorIsRetriableInNearFuture_(CKAssetRepairOperationUtilities, v46, v45))
      {
        v48 = *(a1 + 32);
        if (v48 && ((v49 = *(v48 + 120)) == 0 || (dispatch_source_cancel(v49), sub_188629480(*(a1 + 32), 0), (v48 = *(a1 + 32)) != 0)))
        {
          objc_msgSend_setSuspended_(*(v48 + 104), v47, 1);
        }

        else
        {
          objc_msgSend_setSuspended_(0, v47, 1);
        }

        v52 = objc_msgSend_userInfo(v45, v50, v51);
        v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"CKRetryAfter");
        objc_msgSend_doubleValue(v54, v55, v56);
        v60 = v59;
        if (v59 == 0.0)
        {
          objc_msgSend_defaultSuspensionTime(*(a1 + 32), v57, v58);
          v60 = v61;
        }

        objc_initWeak(&location, *(a1 + 32));
        v62 = *(a1 + 32);
        if (v62)
        {
          v63 = *(v62 + 80);
        }

        else
        {
          v63 = 0;
        }

        v64 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v63);
        v65 = dispatch_time(0, (v60 * 1000000000.0));
        dispatch_source_set_timer(v64, v65, (v60 * 1000000000.0), 0x3B9ACA00uLL);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_188629490;
        handler[3] = &unk_1E70BC680;
        objc_copyWeak(&v150, &location);
        dispatch_source_set_event_handler(v64, handler);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v66 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          *from = 134217984;
          *&from[4] = v60;
          _os_log_debug_impl(&dword_1883EA000, v66, OS_LOG_TYPE_DEBUG, "Suspending upload queue for %f", from, 0xCu);
        }

        dispatch_resume(v64);
        sub_188629480(*(a1 + 32), v64);
        objc_destroyWeak(&v150);

        objc_destroyWeak(&location);
      }
    }

    else if (v5 == 3)
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        objc_msgSend_cancelAllOperations(*(v23 + 104), v3, v4);
      }

      else
      {
        objc_msgSend_cancelAllOperations(0, v3, v4);
      }

      v26 = *(a1 + 32);
      if (v26)
      {
        objc_msgSend_cancelAllOperations(*(v26 + 96), v24, v25);
      }

      else
      {
        objc_msgSend_cancelAllOperations(0, v24, v25);
      }

      v27 = sub_1886284F0(*(a1 + 32));
      objc_msgSend_removeAllObjects(v27, v28, v29);

      v30 = sub_188628534(*(a1 + 32));
      objc_msgSend_removeAllObjects(v30, v31, v32);

      v33 = sub_188627CB8(*(a1 + 32));
      objc_msgSend_removeAllObjects(v33, v34, v35);

      v36 = sub_18862863C(*(a1 + 32));
      objc_msgSend_removeAllObjects(v36, v37, v38);

      v41 = *(a1 + 32);
      if (v41)
      {
        objc_msgSend_removeAllObjects(*(v41 + 128), v39, v40);
      }

      else
      {
        objc_msgSend_removeAllObjects(0, v39, v40);
      }

      v43 = *(a1 + 32);
      if (v43)
      {
        v44 = *(v43 + 104);
        *from = MEMORY[0x1E69E9820];
        *&from[8] = 3221225472;
        *&from[16] = sub_18862B45C;
        v162 = &unk_1E70BC388;
        *&v163 = v43;
        objc_msgSend_addOperationWithBlock_(v44, v42, from);
      }
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_88;
      }

      v6 = *(a1 + 32);
      if (v6 && v6[14])
      {
        dispatch_source_cancel(v6[14]);
        sub_188629424(*(a1 + 32), 0);
        v6 = *(a1 + 32);
      }

      objc_msgSend_allRemainingUploadableAssets(v6, v3, v4);
      v155 = 0u;
      v156 = 0u;
      v154 = 0u;
      v7 = v153 = 0u;
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v153, v160, 16);
      if (v9)
      {
        v10 = 0;
        v11 = *v154;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v154 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v153 + 1) + 8 * i);
            v14 = *(a1 + 32);
            v15 = objc_opt_class();
            v16 = sub_188628578(*(a1 + 32));
            v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v13);
            v20 = objc_msgSend_estimatedSizeForAssetOrPackage_(v15, v19, v18);

            v10 += v20;
          }

          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v21, &v153, v160, 16);
        }

        while (v9);
        v22 = v10 < 104857600;
      }

      else
      {
        v22 = 1;
      }

      v67 = sub_1886284F0(*(a1 + 32));
      if (objc_msgSend_count(v67, v68, v69))
      {
        v70 = *(a1 + 32);
        if (v70)
        {
          v70 = v70[13];
        }

        v71 = v70;
        if (objc_msgSend_operationCount(v71, v72, v73) || (v76 = objc_msgSend_count(v7, v74, v75), v76 >= objc_msgSend_repairBatchCountLimit(*(a1 + 32), v77, v78)))
        {
        }

        else
        {
          objc_opt_self();

          if (v22)
          {
            objc_initWeak(from, *(a1 + 32));
            v79 = *(a1 + 32);
            if (v79)
            {
              v80 = *(v79 + 80);
            }

            else
            {
              v80 = 0;
            }

            v81 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v80);
            objc_msgSend_requestTimeout(*(a1 + 32), v82, v83);
            v85 = dispatch_time(0, (v84 * 1000000000.0));
            objc_msgSend_requestTimeout(*(a1 + 32), v86, v87);
            dispatch_source_set_timer(v81, v85, (v88 * 1000000000.0), 0x3B9ACA00uLL);
            v151[0] = MEMORY[0x1E69E9820];
            v151[1] = 3221225472;
            v151[2] = sub_188629434;
            v151[3] = &unk_1E70BC680;
            objc_copyWeak(&v152, from);
            dispatch_source_set_event_handler(v81, v151);
            dispatch_resume(v81);
            sub_188629424(*(a1 + 32), v81);
            objc_destroyWeak(&v152);

            objc_destroyWeak(from);
          }
        }
      }

      else
      {
      }
    }

    v89 = *(a1 + 32);
    if (v89)
    {
      location.opaque[0] = 0;
      location.opaque[1] = &location;
      v158 = 0x2020000000;
      v159 = 0;
      v90 = *(v89 + 80);
      *from = MEMORY[0x1E69E9820];
      *&from[8] = 3221225472;
      *&from[16] = sub_18862CB94;
      v162 = &unk_1E70BF378;
      *&v163 = v89;
      *(&v163 + 1) = &location;
      ck_call_or_dispatch_sync_if_not_key(v90, (v89 + 80), from);

      v91 = *(location.opaque[1] + 24);
      _Block_object_dispose(&location, 8);
      v92 = *(a1 + 32);
      if (v92)
      {
        location.opaque[0] = 0;
        location.opaque[1] = &location;
        v158 = 0x2020000000;
        v159 = 0;
        v93 = *(v92 + 80);
        *from = MEMORY[0x1E69E9820];
        *&from[8] = 3221225472;
        *&from[16] = sub_18862CCD8;
        v162 = &unk_1E70BE500;
        *&v163 = v92;
        *(&v163 + 1) = &location;
        ck_call_or_dispatch_sync_if_not_key(v93, (v92 + 80), from);

        v92 = *(location.opaque[1] + 24);
        _Block_object_dispose(&location, 8);
        v94 = *(a1 + 32);
      }

      else
      {
        v94 = 0;
      }
    }

    else
    {
      v94 = 0;
      v91 = 0;
      v92 = 0;
    }

    v95 = sub_1886284F0(v94);
    v98 = objc_msgSend_count(v95, v96, v97);

    v101 = objc_msgSend_allRemainingUploadableAssets(*(a1 + 32), v99, v100);
    v104 = objc_msgSend_count(v101, v102, v103);

    v107 = objc_msgSend_repairBatchCountLimit(*(a1 + 32), v105, v106);
    if (v98 + v92 < objc_msgSend_cacheCountLimit(*(a1 + 32), v108, v109))
    {
      objc_opt_self();
      objc_opt_self();
      if (v91 <= 104857599)
      {
        v112 = objc_msgSend_cacheCountLimit(*(a1 + 32), v110, v111);
        v113 = *(a1 + 32);
        if (v113)
        {
          v114 = v107 - (v104 + v98);
          if (v114 <= 1)
          {
            v114 = 1;
          }

          if (v114 >= v112)
          {
            v115 = v112;
          }

          else
          {
            v115 = v114;
          }

          v116 = _os_activity_create(&dword_1883EA000, "client/data-repair-enqueue-requests", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
          location.opaque[0] = 0;
          location.opaque[1] = 0;
          os_activity_scope_enter(v116, &location);
          v117 = *(v113 + 80);
          *from = MEMORY[0x1E69E9820];
          *&from[8] = 3221225472;
          *&from[16] = sub_1886295BC;
          v162 = &unk_1E70BF2B8;
          *&v163 = v113;
          *(&v163 + 1) = v115;
          ck_call_or_dispatch_sync_if_not_key(v117, (v113 + 80), from);

          os_activity_scope_leave(&location);
        }
      }
    }

    v118 = *(a1 + 32);
    if (!v118)
    {
      goto LABEL_99;
    }

    v119 = *(v118 + 112);
    if (v119)
    {

      goto LABEL_88;
    }

    v120 = *(a1 + 32);
    if (v120)
    {
      v121 = objc_msgSend_operationCount(*(v120 + 104), v110, v111);
    }

    else
    {
LABEL_99:
      v121 = objc_msgSend_operationCount(0, v110, v111);
    }

    if (!v121)
    {
      v122 = *(a1 + 32);
      if (v122)
      {
        v123 = _os_activity_create(&dword_1883EA000, "client/data-repair-enqueue-uploads", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        location.opaque[0] = 0;
        location.opaque[1] = 0;
        os_activity_scope_enter(v123, &location);
        WeakRetained = objc_loadWeakRetained((v122 + 64));
        if (WeakRetained)
        {
          v125 = *(v122 + 80);
          *from = MEMORY[0x1E69E9820];
          *&from[8] = 3221225472;
          *&from[16] = sub_188629F30;
          v162 = &unk_1E70BEEC0;
          *&v163 = v122;
          *(&v163 + 1) = WeakRetained;
          ck_call_or_dispatch_sync_if_not_key(v125, (v122 + 80), from);
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v136 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
          {
            *from = 0;
            _os_log_debug_impl(&dword_1883EA000, v136, OS_LOG_TYPE_DEBUG, "Not scheduling upload batch due to nil container", from, 2u);
          }
        }

        os_activity_scope_leave(&location);
      }
    }
  }

LABEL_88:
  v137 = sub_188628470(*(a1 + 32));
  if (objc_msgSend_count(v137, v138, v139))
  {
  }

  else
  {
    v142 = objc_msgSend_delegate(*(a1 + 32), v140, v141);
    v143 = v142 == 0;

    if (!v143)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v144 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        *from = 0;
        _os_log_debug_impl(&dword_1883EA000, v144, OS_LOG_TYPE_DEBUG, "Completed all enqueued repairs", from, 2u);
      }

      v145 = *(a1 + 32);
      if (v145)
      {
        v146 = *(v145 + 88);
      }

      else
      {
        v146 = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_188629568;
      block[3] = &unk_1E70BC388;
      block[4] = v145;
      dispatch_async(v146, block);
    }
  }

  v147 = *MEMORY[0x1E69E9840];
}

void sub_188629424(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_188629434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_188629424(WeakRetained, 0);
  objc_msgSend_tickle(WeakRetained, v1, v2);
}

void sub_188629480(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_188629490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Resuming upload queue", v6, 2u);
    if (WeakRetained)
    {
      goto LABEL_5;
    }

LABEL_8:
    objc_msgSend_setSuspended_(0, v3, 0);
    goto LABEL_6;
  }

  if (!WeakRetained)
  {
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_setSuspended_(WeakRetained[13], v3, 0);
LABEL_6:
  sub_188629480(WeakRetained, 0);
  objc_msgSend_tickle(WeakRetained, v4, v5);
}

void sub_188629568(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_assetRepairSchedulerAllRequestsComplete_(v5, v4, *(a1 + 32));
}

void sub_1886295BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  objc_msgSend_allRemainingRequestableAssets(*(a1 + 32), a2, a3);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v33, v39, 16);
  if (v5)
  {
    v26 = 0;
    v6 = *v34;
LABEL_3:
    v7 = 0;
    v8 = v26;
    v26 += v5;
    while (1)
    {
      if (*v34 != v6)
      {
        objc_enumerationMutation(obj);
      }

      if (v8 >= *(a1 + 40))
      {
        break;
      }

      v9 = *(*(&v33 + 1) + 8 * v7);
      v10 = sub_188627CB8(*(a1 + 32));
      v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v9);

      objc_initWeak(&location, *(a1 + 32));
      v13 = sub_1886284F0(*(a1 + 32));
      objc_msgSend_addObject_(v13, v14, v9);

      v15 = [CKRequestAssetOperation alloc];
      v17 = objc_msgSend_initWithAssetMetadata_requestCallback_(v15, v16, v9, v12);
      objc_initWeak(&from, v17);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_188629904;
      v28[3] = &unk_1E70BF290;
      objc_copyWeak(&v29, &location);
      objc_copyWeak(&v30, &from);
      v28[4] = v9;
      objc_msgSend_setAssetRequestCompletionBlock_(v17, v18, v28);
      objc_msgSend_setCompletionBlock_(v17, v19, &unk_1EFA2F608);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v20 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_1883EA000, v20, OS_LOG_TYPE_INFO, "Enqueueing asset request for %@", buf, 0xCu);
      }

      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = v21[12];
      }

      v22 = v21;
      objc_msgSend_addOperation_(v22, v23, v17);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&from);

      objc_destroyWeak(&location);
      ++v8;
      if (v5 == ++v7)
      {
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v33, v39, 16);
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1886298C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_188629904(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v12 = *(a1 + 32);
      *buf = 138412546;
      v35 = v12;
      v36 = 2112;
      v37 = v8;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Asset request operation for %@ completed with error: %@", buf, 0x16u);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

LABEL_9:
    v13 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      *buf = 138412290;
      v35 = v25;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Asset request operation for %@ completed", buf, 0xCu);
    }

    v14 = WeakRetained[10];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188629CAC;
    block[3] = &unk_1E70BF268;
    v15 = *(a1 + 32);
    block[4] = WeakRetained;
    block[5] = v15;
    v33 = a3;
    v30 = v10;
    v31 = v8;
    v32 = v7;
    dispatch_sync(v14, block);
    v16 = WeakRetained[10];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_188629E30;
    v28[3] = &unk_1E70BEEC0;
    v17 = *(a1 + 32);
    v28[4] = WeakRetained;
    v28[5] = v17;
    dispatch_async(v16, v28);
    v20 = objc_msgSend_delegate(WeakRetained, v18, v19);

    if (v20)
    {
      v21 = WeakRetained[11];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_188629E40;
      v27[3] = &unk_1E70BF240;
      v22 = *(a1 + 32);
      v27[4] = WeakRetained;
      v27[5] = v22;
      v27[6] = a3;
      dispatch_async(v21, v27);
    }

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 32);
    *buf = 138412290;
    v35 = v26;
    _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Asset request operation for %@ no longer has a reference to self", buf, 0xCu);
  }

LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
}

void sub_188629CAC(uint64_t a1)
{
  v2 = sub_1886284F0(*(a1 + 32));
  objc_msgSend_removeObject_(v2, v3, *(a1 + 40));

  v4 = *(a1 + 72);
  if ((objc_msgSend_isCancelled(*(a1 + 48), v5, v6) & 1) != 0 || (objc_msgSend_code(*(a1 + 56), v7, v8) != 1 ? (v9 = v4 == 2) : (v9 = 1), v9))
  {
    v17 = sub_188627CB8(*(a1 + 32));
    objc_msgSend_removeObjectForKey_(v17, v10, *(a1 + 40));
  }

  else
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(a1 + 64);
        v14 = v11;
        if (v12)
        {
          v15 = *(v12 + 80);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = sub_18862BEBC;
          v18[3] = &unk_1E70BC360;
          v19 = v13;
          v20 = v12;
          v21 = v14;
          ck_call_or_dispatch_sync_if_not_key(v15, (v12 + 80), v18);
        }
      }

      return;
    }

    v17 = sub_18862863C(*(a1 + 32));
    objc_msgSend_addObject_(v17, v16, *(a1 + 40));
  }
}

void sub_188629E40(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_assetRepairScheduler_completedRequestWithMetadata_result_(v5, v4, *(a1 + 32), *(a1 + 40), *(a1 + 48));
}

void sub_188629E98()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1883EA000, v0, OS_LOG_TYPE_INFO, "Asset request completed", v1, 2u);
  }
}

void sub_188629F30(uint64_t a1, const char *a2, uint64_t a3)
{
  v129 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_allRemainingUploadableAssets(*(a1 + 32), a2, a3);
  v94 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v120, v128, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v121;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v121 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v120 + 1) + 8 * v13);
      v15 = objc_msgSend_count(v94, v8, v9);
      if (v15 >= objc_msgSend_repairBatchCountLimit(*(a1 + 32), v16, v17))
      {
        break;
      }

      objc_opt_self();
      v18 = sub_188628578(*(a1 + 32));
      v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v14);

      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v24 = objc_msgSend_estimatedSizeForAssetOrPackage_(v22, v23, v20);
      objc_msgSend_count(v94, v25, v26);
      objc_opt_self();
      v28 = v24 + v11;
      if (v28 >> 22 <= 0x18)
      {
        objc_msgSend_addObject_(v94, v27, v14);
        v11 = v28;
      }

      if (v10 == ++v13)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v120, v128, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!objc_msgSend_count(v94, v29, v30))
  {
    goto LABEL_47;
  }

  v99 = objc_opt_new();
  v97 = objc_opt_new();
  v98 = objc_opt_new();
  v96 = objc_opt_new();
  v95 = objc_opt_new();
  v93 = objc_opt_new();
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v31 = v94;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v116, v127, 16);
  if (!v33)
  {
    goto LABEL_27;
  }

  v34 = *v117;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v117 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v116 + 1) + 8 * i);
      v37 = sub_188628578(*(a1 + 32));
      v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v36);

      if (v39)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v43 = v98;
        v42 = v99;
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v44 = objc_opt_isKindOfClass(), v43 = v96, v42 = v97, (v44))
        {
          objc_msgSend_addObject_(v42, v40, v39);
LABEL_21:
          objc_msgSend_addObject_(v43, v45, v36);
        }
      }

      else
      {
        v46 = sub_18862863C(*(a1 + 32));
        v48 = objc_msgSend_containsObject_(v46, v47, v36);

        if (v48)
        {
          objc_opt_class();
          v43 = v95;
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_21;
          }

          objc_opt_class();
          v43 = v93;
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_21;
          }
        }
      }
    }

    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v49, &v116, v127, 16);
  }

  while (v33);
LABEL_27:

  v50 = [CKRepairAssetsOperation alloc];
  v52 = objc_msgSend_initWithAssets_packages_assetMetadata_packageMetadata_unavailableAssets_unavailablePackages_(v50, v51, v99, v97, v98, v96, v95, v93);
  v54 = objc_msgSend_createRepairOperationGroupWithName_(CKAssetRepairOperationUtilities, v53, @"Data Repair");
  objc_msgSend_setGroup_(v52, v55, v54);

  v58 = objc_msgSend_privateCloudDatabase(*(a1 + 40), v56, v57);
  objc_msgSend_setDatabase_(v52, v59, v58);

  v61 = *(a1 + 32);
  if (v61)
  {
    objc_msgSend_setUploadRequestConfiguration_(v52, v60, *(v61 + 72));
  }

  else
  {
    objc_msgSend_setUploadRequestConfiguration_(v52, v60, 0);
  }

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v52);
  v112[0] = 0;
  v112[1] = v112;
  v112[2] = 0x3032000000;
  v112[3] = sub_1883EE134;
  v112[4] = sub_1883EF75C;
  v113 = 0;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x2020000000;
  v111 = 1;
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = sub_18862A78C;
  v107[3] = &unk_1E70BF308;
  objc_copyWeak(&v108, &location);
  objc_copyWeak(&v109, &from);
  v107[4] = v112;
  v107[5] = v110;
  objc_msgSend_setRepairAssetsCompletionBlock_(v52, v62, v107);
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = sub_18862B31C;
  v105[3] = &unk_1E70BF330;
  objc_copyWeak(&v106, &location);
  v105[4] = v110;
  v105[5] = v112;
  objc_msgSend_setCompletionBlock_(v52, v63, v105);
  v66 = objc_msgSend_delegate(*(a1 + 32), v64, v65);

  if (v66)
  {
    v69 = objc_msgSend_includedMetadata(v52, v67, v68);
    v72 = objc_msgSend_count(v69, v70, v71);

    v73 = *(a1 + 32);
    if (v73)
    {
      v74 = *(v73 + 88);
    }

    else
    {
      v74 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18862B408;
    block[3] = &unk_1E70BF2B8;
    block[4] = v73;
    block[5] = v72;
    dispatch_async(v74, block);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v75 = objc_msgSend_includedMetadata(v52, v67, v68);
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v100, v126, 16);
  if (v77)
  {
    v78 = *v101;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v101 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v100 + 1) + 8 * j);
        v81 = sub_188628534(*(a1 + 32));
        objc_msgSend_addObject_(v81, v82, v80);
      }

      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v83, &v100, v126, 16);
    }

    while (v77);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v84 = ck_log_facility_data_repair;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
  {
    v87 = objc_msgSend_includedMetadata(v52, v85, v86);
    *buf = 138412290;
    v125 = v87;
    _os_log_impl(&dword_1883EA000, v84, OS_LOG_TYPE_INFO, "Enqueueing asset upload for %@", buf, 0xCu);
  }

  v88 = *(a1 + 32);
  if (v88)
  {
    v88 = v88[13];
  }

  v89 = v88;
  objc_msgSend_addOperation_(v89, v90, v52);

  objc_destroyWeak(&v106);
  objc_destroyWeak(&v109);
  objc_destroyWeak(&v108);
  _Block_object_dispose(v110, 8);
  _Block_object_dispose(v112, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

LABEL_47:
  v91 = *MEMORY[0x1E69E9840];
}

void sub_18862A718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, id a58)
{
  objc_destroyWeak((v59 + 48));
  objc_destroyWeak((v58 + 56));
  objc_destroyWeak((v58 + 48));
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a58);
  _Unwind_Resume(a1);
}

void sub_18862A78C(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v68 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v67 = a1;
  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = v5;
  v69 = WeakRetained;
  if (WeakRetained)
  {
    v66 = v5;
    if (v68)
    {
      objc_storeStrong((*(*(v67 + 32) + 8) + 40), a2);
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v9 = objc_msgSend_includedMetadata(v66, v7, v8);
      v11 = 0;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v82, v91, 16);
      if (v13)
      {
        v14 = *v83;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v83 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = objc_msgSend_objectForKeyedSubscript_(*(v69 + 16), v12, *(*(&v82 + 1) + 8 * i));
            v19 = objc_msgSend_integerValue(v16, v17, v18);

            if (v11 <= v19)
            {
              v11 = v19;
            }
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v82, v91, 16);
        }

        while (v13);
      }

      if (objc_msgSend_errorIsRetriableInNearFuture_(CKAssetRepairOperationUtilities, v20, v68) && v11 < objc_msgSend_repairRetryCount(v69, v21, v22))
      {
        *(*(*(v67 + 40) + 8) + 24) = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v25 = objc_msgSend_includedMetadata(v66, v23, v24);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v78, v90, 16);
        if (v27)
        {
          v28 = *v79;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v79 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v78 + 1) + 8 * j);
              v31 = MEMORY[0x1E696AD98];
              v32 = *(v69 + 16);
              v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v30);
              v37 = objc_msgSend_integerValue(v34, v35, v36);
              v39 = objc_msgSend_numberWithInteger_(v31, v38, v37 + 1);
              objc_msgSend_setObject_forKeyedSubscript_(*(v69 + 16), v40, v39, v30);
            }

            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v41, &v78, v90, 16);
          }

          while (v27);
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v42 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
        {
          v43 = v42;
          v46 = objc_msgSend_includedMetadata(v66, v44, v45);
          *buf = 138412546;
          v87 = v46;
          v88 = 2112;
          v89 = v68;
          _os_log_error_impl(&dword_1883EA000, v43, OS_LOG_TYPE_ERROR, "Could not upload assets for %@, but will try again: %@", buf, 0x16u);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v47 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
        {
          v48 = v47;
          v51 = objc_msgSend_includedMetadata(v66, v49, v50);
          *buf = 138412546;
          v87 = v51;
          v88 = 2112;
          v89 = v68;
          _os_log_error_impl(&dword_1883EA000, v48, OS_LOG_TYPE_ERROR, "Could not upload assets for %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v52 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v62 = v52;
        v65 = objc_msgSend_includedMetadata(v66, v63, v64);
        *buf = 138412290;
        v87 = v65;
        _os_log_debug_impl(&dword_1883EA000, v62, OS_LOG_TYPE_DEBUG, "Completed upload for assets %@", buf, 0xCu);
      }
    }

    v53 = *(*(*(v67 + 40) + 8) + 24);
    v54 = v69 + 80;
    v55 = *(v69 + 10);
    if (v53 == 1)
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = sub_18862AE28;
      v76[3] = &unk_1E70BF2E0;
      v56 = &v77;
      objc_copyWeak(&v77, (v67 + 56));
      v76[4] = v69;
      ck_call_or_dispatch_async_if_not_key(v55, v54, v76);

      v59 = objc_msgSend_delegate(v69, v57, v58);

      if (!v59)
      {
LABEL_38:
        objc_destroyWeak(v56);
        v6 = v66;
        goto LABEL_39;
      }

      v60 = *(v69 + 11);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_18862B044;
      block[3] = &unk_1E70BC360;
      v73 = v66;
      v74 = v68;
      v75 = v69;
      dispatch_async(v60, block);

      v55 = v73;
    }

    else
    {
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = sub_18862B1F8;
      v70[3] = &unk_1E70BF2E0;
      v56 = &v71;
      objc_copyWeak(&v71, (v67 + 56));
      v70[4] = v69;
      ck_call_or_dispatch_async_if_not_key(v55, v54, v70);
    }

    goto LABEL_38;
  }

LABEL_39:

  v61 = *MEMORY[0x1E69E9840];
}

void sub_18862AE28(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_includedMetadata(WeakRetained, v3, v4);

  obj = v5;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v34, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = sub_188628534(*(a1 + 32));
        objc_msgSend_removeObject_(v12, v13, v11);

        v14 = sub_188627CB8(*(a1 + 32));
        objc_msgSend_removeObjectForKey_(v14, v15, v11);

        v16 = *(a1 + 32);
        v17 = v11;
        v18 = v17;
        if (v16)
        {
          v19 = *(v16 + 80);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = sub_18862C1E8;
          v32[3] = &unk_1E70BEEC0;
          v32[4] = v16;
          v33 = v17;
          ck_call_or_dispatch_sync_if_not_key(v19, (v16 + 80), v32);
        }

        v20 = sub_18862863C(*(a1 + 32));
        objc_msgSend_removeObject_(v20, v21, v18);

        v23 = *(a1 + 32);
        if (v23)
        {
          objc_msgSend_removeObjectForKey_(*(v23 + 128), v22, v18);
        }

        else
        {
          objc_msgSend_removeObjectForKey_(0, v22, v18);
        }

        ++v10;
      }

      while (v8 != v10);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v28, v34, 16);
      v8 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_18862B044(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = objc_msgSend_includedMetadata(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v29, v33, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = *(a1 + 40);
        if (v13)
        {
          v16 = objc_msgSend_code(v13, v7, v8);
          v17 = *(a1 + 40);
          if (v16 == 2)
          {
            v18 = objc_msgSend_userInfo(v17, v14, v15);
            v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"CKPartialErrors");
            v23 = objc_msgSend_repairZoneRecordID(v12, v21, v22);
            v25 = objc_msgSend_objectForKeyedSubscript_(v20, v24, v23);
          }

          else
          {
            v25 = v17;
          }
        }

        else
        {
          v25 = 0;
        }

        v26 = objc_msgSend_delegate(*(a1 + 48), v7, v8);
        objc_msgSend_assetRepairScheduler_completedRepairWithMetadata_error_(v26, v27, *(a1 + 48), v12, v25);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v29, v33, 16);
    }

    while (v9);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_18862B1F8(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_includedMetadata(WeakRetained, v3, v4, 0);

  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = sub_188628534(*(a1 + 32));
        objc_msgSend_removeObject_(v12, v13, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v16, v20, 16);
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_18862B31C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Asset upload completed", v6, 2u);
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    objc_msgSend_tickle(WeakRetained, v4, v5);
  }

  else
  {
    sub_18862868C(WeakRetained, 2, *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_18862B408(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_assetRepairScheduler_preparingRepairWithIncludedMetadataCount_(v5, v4, *(a1 + 32), *(a1 + 40));
}

void sub_18862B4E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6);
    v10 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v7, v11, v10, 0, 0, &unk_1EFA2F628);

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v12;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v32, v40, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v33;
      *&v17 = 138543618;
      v30 = v17;
      do
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v32 + 1) + 8 * v20);
          v31 = 0;
          v22 = objc_msgSend_removeItemAtURL_error_(v7, v16, v21, &v31, v30);
          v23 = v31;
          if (v23 || (v22 & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v24 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
            {
              v25 = v24;
              v28 = objc_msgSend_CKSanitizedPath(v21, v26, v27);
              *buf = v30;
              v37 = v28;
              v38 = 2112;
              v39 = v23;
              _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error removing repair scheduler cache file at %{public}@: %@", buf, 0x16u);
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v32, v40, 16);
      }

      while (v18);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18862B734(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    v9 = v6;
    v12 = objc_msgSend_CKSanitizedPath(v4, v10, v11);
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v5;
    _os_log_error_impl(&dword_1883EA000, v9, OS_LOG_TYPE_ERROR, "Error enumerating repair scheduler cache directory at %{public}@: %@", &v13, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_18862BEBC(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v27 = 0;
  v6 = objc_msgSend_clonedAsset_withError_(v3, v5, v4, &v27);
  v7 = v27;
  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v7;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Unexpected error when cloning asset or package %@: %@", buf, 0x16u);
    }
  }

  else if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 40);
      v20 = v10;
      v23 = objc_msgSend_temporaryAssetDirectory(v19, v21, v22);
      v26 = objc_msgSend_CKSanitizedPath(v23, v24, v25);
      *buf = 138412546;
      v29 = v6;
      v30 = 2114;
      v31 = v26;
      _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Cloned asset or package %@ to directory %{public}@", buf, 0x16u);
    }

    v11 = v6;

    v2 = v11;
  }

  if (v2 == *(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Repair scheduler will attempt to upload non-cloned asset", buf, 2u);
    }
  }

  v13 = sub_188628578(*(a1 + 40));
  objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v2, *(a1 + 48));

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v15 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    *buf = 138412546;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Repair scheduler cached asset %@ for metadata %@", buf, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18862C1E8(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = sub_188628578(*(a1 + 32));
  v4 = objc_msgSend_objectForKeyedSubscript_(v2, v3, *(a1 + 40));

  v70 = a1;
  v7 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), v5, v6);

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v11 = objc_msgSend_fileURL(v8, v9, v10);
      v14 = objc_msgSend_path(v11, v12, v13);
      v17 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), v15, v16);
      v20 = objc_msgSend_path(v17, v18, v19);
      hasPrefix = objc_msgSend_hasPrefix_(v14, v21, v20);

      if (!hasPrefix)
      {
LABEL_38:

        goto LABEL_39;
      }

      v25 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v23, v24);
      v28 = objc_msgSend_fileURL(v8, v26, v27);
      v76 = 0;
      objc_msgSend_removeItemAtURL_error_(v25, v29, v28, &v76);
      v30 = v76;

      if (v30)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v31 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v79 = v8;
          *&v79[8] = 2112;
          *&v79[10] = v30;
          _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Error deleting cached asset %@: %@", buf, 0x16u);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v62 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v79 = v8;
          _os_log_debug_impl(&dword_1883EA000, v62, OS_LOG_TYPE_DEBUG, "Deleted cached asset %@", buf, 0xCu);
        }

        v30 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_39;
      }

      v68 = v4;
      v67 = v4;
      objc_msgSend_itemEnumerator(v67, v32, v33);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = v75 = 0u;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v72, v77, 16);
      if (v35)
      {
        v38 = v35;
        v39 = 0;
        v40 = *v73;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v73 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v72 + 1) + 8 * i);
            v43 = objc_msgSend_fileURL(v42, v36, v37);
            v46 = objc_msgSend_path(v43, v44, v45);
            v49 = objc_msgSend_temporaryAssetDirectory(*(v70 + 32), v47, v48);
            v52 = objc_msgSend_path(v49, v50, v51);
            v54 = objc_msgSend_hasPrefix_(v46, v53, v52);

            if (v54)
            {
              v55 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v36, v37);
              v58 = objc_msgSend_fileURL(v42, v56, v57);
              v71 = 0;
              objc_msgSend_removeItemAtURL_error_(v55, v59, v58, &v71);
              v60 = v71;

              if (v60)
              {
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v4 = v68;
                v30 = obj;
                v61 = ck_log_facility_data_repair;
                if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *v79 = v42;
                  *&v79[8] = 2112;
                  *&v79[10] = v60;
                  _os_log_error_impl(&dword_1883EA000, v61, OS_LOG_TYPE_ERROR, "Error deleting cached package item %@: %@", buf, 0x16u);
                }

                goto LABEL_37;
              }

              ++v39;
            }
          }

          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v72, v77, 16);
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v39 = 0;
      }

      v30 = obj;

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v63 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        *v79 = v39;
        *&v79[4] = 2112;
        *&v79[6] = v67;
        _os_log_debug_impl(&dword_1883EA000, v63, OS_LOG_TYPE_DEBUG, "Deleted %d items from cached package %@", buf, 0x12u);
      }

      v4 = v68;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_39:
  if (v4)
  {
    v64 = sub_188628578(*(v70 + 32));
    objc_msgSend_removeObjectForKey_(v64, v65, *(v70 + 40));
  }

  v66 = *MEMORY[0x1E69E9840];
}

void sub_18862C8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18862C8E8(uint64_t a1)
{
  v2 = sub_188628470(*(a1 + 32));
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v6 = sub_1886285BC(*(a1 + 32));
  objc_msgSend_minusSet_(v5, v7, v6);

  v8 = sub_18862863C(*(a1 + 32));
  objc_msgSend_minusSet_(v5, v9, v8);

  v10 = sub_1886284F0(*(a1 + 32));
  objc_msgSend_minusSet_(v5, v11, v10);

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
}

void sub_18862CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18862CAD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3);
  v5 = sub_1886285BC(*(a1 + 32));
  objc_msgSend_unionSet_(v4, v6, v5);

  v7 = sub_18862863C(*(a1 + 32));
  objc_msgSend_unionSet_(v4, v8, v7);

  v9 = sub_188628534(*(a1 + 32));
  objc_msgSend_minusSet_(v4, v10, v9);

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v4;
}

void sub_18862CB94(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = sub_188628578(*(a1 + 32));
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v17, v21, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = sub_188628578(*(a1 + 32));
        v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v8, v17);

        v12 = *(a1 + 32);
        v13 = objc_opt_class();
        *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_estimatedSizeForAssetOrPackage_(v13, v14, v11);

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v15, &v17, v21, 16);
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18862CCD8(uint64_t a1)
{
  v4 = sub_188628578(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v4, v2, v3);
}

void sub_18862CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18862CE60(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  if (v5)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained((v4 + 64));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = NSTemporaryDirectory();
    v16 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, @"com.apple.cloudkit.upload-request.cache");

    v19 = objc_msgSend_primaryIdentifier(v13, v17, v18);
    v21 = objc_msgSend_stringByAppendingPathComponent_(v16, v20, v19);

    v23 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v22, v21, 1);
    v24 = *(a1 + 32);
    v25 = *(v24 + 48);
    *(v24 + 48) = v23;

    v5 = *(*(a1 + 32) + 48);
    if (!v5)
    {
      v10 = 0;
LABEL_8:
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
      goto LABEL_9;
    }

LABEL_2:
    v6 = objc_msgSend_path(v5, a2, a3);
    v27 = 0;
    v7 = CKCreateDirectoryAtPathWithAttributes(v6, 0, &v27);
    v8 = v27;

    if ((v7 & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "Could not create temporary asset directory: %@", buf, 0xCu);
      }
    }

    v10 = *(*(a1 + 32) + 48);
    goto LABEL_8;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v26 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Not returning temporary asset directory due to nil container", buf, 2u);
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_18862DC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18862DC7C(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (objc_msgSend_isCancelled(WeakRetained, v7, v8))
    {
      v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKInternalErrorDomain", 1, @"Asset request operation was cancelled");
    }

    else
    {
      v12 = 0;
    }

    v15 = objc_msgSend_metadata(v9, v10, v11);
    switch(a3)
    {
      case 2:
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v17 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v18 = "Requested asset delayed with try again later";
          a3 = 2;
LABEL_47:
          _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
          break;
        }

        a3 = 2;
        break;
      case 1:
        goto LABEL_43;
      case 0:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v19 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            v32 = v19;
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            *buf = 138543362;
            v39 = v34;
            _os_log_error_impl(&dword_1883EA000, v32, OS_LOG_TYPE_ERROR, "Expected asset in asset request response, but received %{public}@, so treating as unavailable", buf, 0xCu);

            if (v12)
            {
              goto LABEL_43;
            }
          }

          else if (v12)
          {
            goto LABEL_43;
          }

          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKInternalErrorDomain", 10004, @"Expected asset in asset request response, but received %@", v21);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if (v5)
            {
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v16 = ck_log_facility_data_repair;
              if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Requested asset available", buf, 2u);
              }

              a3 = 0;
              break;
            }

            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v23 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Expected asset or package in asset request response, but received nil, so treating as unavailable", buf, 2u);
              if (v12)
              {
                goto LABEL_43;
              }

              goto LABEL_36;
            }

            if (!v12)
            {
LABEL_36:
              v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v24, @"CKInternalErrorDomain", 10004, @"Expected package in asset request response, but received nil");
            }

LABEL_43:
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v17 = ck_log_facility_data_repair;
            a3 = 1;
            if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
            {
              break;
            }

            *buf = 0;
            v18 = "Requested asset not available";
            a3 = 1;
            goto LABEL_47;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v25 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            v35 = v25;
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138543362;
            v39 = v37;
            _os_log_error_impl(&dword_1883EA000, v35, OS_LOG_TYPE_ERROR, "Expected package in asset request response, but received %{public}@, so treating as unavailable", buf, 0xCu);

            if (v12)
            {
              goto LABEL_43;
            }
          }

          else if (v12)
          {
            goto LABEL_43;
          }

          v26 = objc_opt_class();
          v21 = NSStringFromClass(v26);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKInternalErrorDomain", 10004, @"Expected package in asset request response, but received %@", v21);
        }
        v12 = ;

        goto LABEL_43;
    }

    objc_msgSend_setState_(v9, v14, 2);
    v30 = objc_msgSend_assetRequestCompletionBlock(v9, v28, v29);
    (v30)[2](v30, v5, a3, v12);

    goto LABEL_49;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "Attempted to process asset request response, but operation was nil", buf, 2u);
  }

LABEL_49:

  v31 = *MEMORY[0x1E69E9840];
}

void sub_18862FF94(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Fetching server changes manually", buf, 2u);
  }

  v3 = objc_opt_new();
  objc_msgSend_setForceFetchChanges_(v3, v4, 1);
  v7 = objc_msgSend_repairZoneSyncEngine(*(a1 + 32), v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886300D0;
  v9[3] = &unk_1E70BC540;
  v10 = *(a1 + 40);
  objc_msgSend_fetchChangesWithOptions_completionHandler_(v7, v8, v3, v9);
}

void sub_1886300D0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Fetch server changes completed with error %@", &v8, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Fetch server changes completed successfully", &v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1886304B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_callbackForOverridePoint(*(a1 + 32), a2, a3);

  if (!v4)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
    objc_msgSend_setCallbackForOverridePoint_(*(a1 + 32), v8, v7);
  }

  v15 = _Block_copy(*(a1 + 40));
  v11 = objc_msgSend_callbackForOverridePoint(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, *(a1 + 48));
  objc_msgSend_setObject_forKeyedSubscript_(v11, v14, v15, v13);
}

void sub_188630724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863073C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_callbackForOverridePoint(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v4, *(a1 + 48));
  v7 = objc_msgSend_objectForKeyedSubscript_(v10, v6, v5);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_188630C70(void **a1, const char *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(a1[4], a2, 0))
  {
    v4 = a1[5];
    if (!v4)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *v77 = 0;
        _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Asset was successfully reuploaded, so deleting persisted repair record", v77, 2u);
      }

      v20 = objc_msgSend_database(a1[4], v18, v19);
      v23 = objc_msgSend_repairZoneRecordID(a1[6], v21, v22);
      objc_msgSend_deleteRepairRecord_(v20, v24, v23);

      goto LABEL_40;
    }

    if (objc_msgSend_repairErrorShouldBeMarkedAsBroken_(CKAssetRepairOperationUtilities, v3, v4))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v5 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *v77 = 0;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Asset was successfully marked as missing, so deleting persisted repair record", v77, 2u);
      }

      v8 = objc_msgSend_database(a1[4], v6, v7);
      v11 = objc_msgSend_repairZoneRecordID(a1[6], v9, v10);
      objc_msgSend_deleteRepairRecord_(v8, v12, v11);
    }

    else
    {
      v26 = CKCanRetryForError(a1[5]);
      v29 = objc_msgSend_database(a1[4], v27, v28);
      v32 = objc_msgSend_repairZoneRecordID(a1[6], v30, v31);
      v35 = objc_msgSend_recordName(v32, v33, v34);
      v37 = objc_msgSend_delayedSyncCountForRecordName_(v29, v36, v35);
      objc_msgSend_retryableErrorMaxRetryCount(a1[4], v38, v39);
      v41 = v40;

      if (CKErrorIsCode(a1[5], 20))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v42 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
        {
          v43 = a1[5];
          *v77 = 138412290;
          *&v77[4] = v43;
          _os_log_impl(&dword_1883EA000, v42, OS_LOG_TYPE_INFO, "Received repair cancellation %@, rescheduling", v77, 0xCu);
        }

        v46 = CKRetryAfterSecondsForError(a1[5]);
        if (v46 == 0.0)
        {
          objc_msgSend_cancelledErrorRetryTime(a1[4], v44, v45);
          v46 = v47;
        }

        v48 = a1[4];
        v8 = objc_msgSend_repairZoneRecordID(a1[6], v44, v45);
        objc_msgSend_scheduleRecordRepair_withDelay_increasingCount_(v48, v49, v8, 0, v46);
        goto LABEL_38;
      }

      if (v41 > v37)
      {
        v50 = v26;
      }

      else
      {
        v50 = 0;
      }

      if (v50 == 1)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v51 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
        {
          v52 = a1[5];
          *v77 = 138412290;
          *&v77[4] = v52;
          _os_log_impl(&dword_1883EA000, v51, OS_LOG_TYPE_INFO, "Received recoverable repair error %@, rescheduling", v77, 0xCu);
        }

        v55 = CKRetryAfterSecondsForError(a1[5]);
        if (v55 == 0.0)
        {
          objc_msgSend_retryableErrorRetryTime(a1[4], v53, v54);
          v55 = v56;
        }

        v57 = a1[4];
        v8 = objc_msgSend_repairZoneRecordID(a1[6], v53, v54);
        objc_msgSend_scheduleRecordRepair_withDelay_increasingCount_(v57, v58, v8, 1, v55);
        goto LABEL_38;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v61 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        v70 = a1[6];
        v71 = v61;
        v74 = objc_msgSend_repairZoneRecordID(v70, v72, v73);
        v75 = a1[5];
        v76 = @"which is unrecoverable";
        *v77 = 138412802;
        *&v77[4] = v74;
        if (v26)
        {
          v76 = @"after several attempts";
        }

        *&v77[12] = 2112;
        *&v77[14] = v75;
        v78 = 2112;
        v79 = v76;
        _os_log_error_impl(&dword_1883EA000, v71, OS_LOG_TYPE_ERROR, "Could not recover repair record %@ with error %@ %@, so marking locally as unrecoverable", v77, 0x20u);
      }

      v8 = objc_msgSend_database(a1[4], v62, v63, *v77);
      v11 = objc_msgSend_repairZoneRecordID(a1[6], v64, v65);
      v68 = objc_msgSend_recordName(v11, v66, v67);
      objc_msgSend_markRecordNameUnrecoverable_(v8, v69, v68);
    }

LABEL_38:
    if (objc_msgSend_errorShouldTriggerNetworkReachabilityEvent_(CKAssetRepairOperationUtilities, v59, a1[5]))
    {
      objc_msgSend_dispatchEvent_(a1[4], v25, 7);
    }

LABEL_40:
    objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(a1[4], v25, 4, a1[5], 1);
    goto LABEL_41;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v16 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v15, 0);
    *v77 = 138543362;
    *&v77[4] = v16;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Upload request repair scheduler attempted to perform function %{public}@, but failed to do so", v77, 0xCu);
  }

LABEL_41:
  v60 = *MEMORY[0x1E69E9840];
}

void sub_188631430(uint64_t a1, const char *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    if (objc_msgSend_isRepairRecordActionable_(*(a1 + 32), v3, *(a1 + 40)))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v4 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 40);
        v33 = v4;
        v36 = objc_msgSend_recordID(v32, v34, v35);
        v42 = 138412290;
        v43 = v36;
        _os_log_debug_impl(&dword_1883EA000, v33, OS_LOG_TYPE_DEBUG, "Sync engine: repair record %@ was fetched, persisting", &v42, 0xCu);
      }

      v7 = objc_msgSend_database(*(a1 + 32), v5, v6);
      objc_msgSend_persistRepairRecord_(v7, v8, *(a1 + 40));
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v13 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 40);
        v38 = v13;
        v41 = objc_msgSend_recordID(v37, v39, v40);
        v42 = 138412290;
        v43 = v41;
        _os_log_debug_impl(&dword_1883EA000, v38, OS_LOG_TYPE_DEBUG, "Sync engine: repair record %@ was fetched but is not actionable, deleting", &v42, 0xCu);
      }

      v16 = objc_msgSend_database(*(a1 + 32), v14, v15);
      v19 = objc_msgSend_recordID(*(a1 + 40), v17, v18);
      objc_msgSend_deleteRepairRecord_(v16, v20, v19);

      v7 = objc_msgSend_repairProcessor(*(a1 + 32), v21, v22);
      v25 = objc_msgSend_recordID(*(a1 + 40), v23, v24);
      objc_msgSend_removeUploadRequestWithRecordID_(v7, v26, v25);
    }

    if ((objc_msgSend_ignoreUploadRequestPushNotifications(CKUploadRequestManager, v27, v28) & 1) == 0)
    {
      objc_msgSend_scheduleOrInvokeRepairsNow(*(a1 + 32), v29, v30);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v12 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v11, 0);
      v42 = 138543362;
      v43 = v12;
      _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Sync engine did fetch record attempted to perform function %{public}@, but failed to do so", &v42, 0xCu);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_18863185C(uint64_t a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v18 = 138412290;
      v19 = v14;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Sync engine: repair record %@ was deleted", &v18, 0xCu);
    }

    v6 = objc_msgSend_database(*(a1 + 32), v4, v5);
    objc_msgSend_deleteRepairRecord_(v6, v7, *(a1 + 40));

    v10 = objc_msgSend_repairProcessor(*(a1 + 32), v8, v9);
    objc_msgSend_removeUploadRequestWithRecordID_(v10, v11, *(a1 + 40));
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v15 = v12;
      v17 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v16, 0);
      v18 = 138543362;
      v19 = v17;
      _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Sync engine record deleted attempted to perform function %{public}@, but failed to do so", &v18, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_188631AD0(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v12 = objc_msgSend_database(*(a1 + 32), v3, v4);
    objc_msgSend_persistSyncEngineMetadata_(v12, v5, *(a1 + 40));
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
      v11 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v10, 0);
      *buf = 138543362;
      v14 = v11;
      _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "Sync engine did update metadata attempted to perform function %{public}@, but failed to do so", buf, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

void sub_188631D58(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneName(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_repairZoneID(*(a1 + 40), v5, v6);
  v10 = objc_msgSend_zoneName(v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v11, v10);

  if (isEqualToString)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v13 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Sync engine: repair zone was changed", v14, 2u);
    }
  }
}

void sub_188631F70(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v5 = objc_msgSend_zoneName(*(a1 + 40), v3, v4);
    v8 = objc_msgSend_repairZoneID(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_zoneName(v8, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v5, v12, v11);

    if (isEqualToString)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v24) = 0;
        _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Sync engine: repair zone was deleted", &v24, 2u);
      }

      v17 = objc_msgSend_database(*(a1 + 32), v15, v16);
      objc_msgSend_clearRepairRecords(v17, v18, v19);
      goto LABEL_8;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v17 = v20;
      v23 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v22, 0);
      v24 = 138543362;
      v25 = v23;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Sync engine zone deleted attempted to perform function %{public}@, but failed to do so", &v24, 0xCu);

LABEL_8:
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_188632294(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v5 = objc_msgSend_zoneName(*(a1 + 40), v3, v4);
    v8 = objc_msgSend_repairZoneID(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_zoneName(v8, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v5, v12, v11);

    if (isEqualToString)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v24) = 0;
        _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Sync engine: repair zone was purged", &v24, 2u);
      }

      v17 = objc_msgSend_database(*(a1 + 32), v15, v16);
      objc_msgSend_clearRepairRecords(v17, v18, v19);
      goto LABEL_8;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v17 = v20;
      v23 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v22, 0);
      v24 = 138543362;
      v25 = v23;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Sync engine zone purged attempted to perform function %{public}@, but failed to do so", &v24, 0xCu);

LABEL_8:
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_188632598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886325B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_recordType(*(a1 + 32), a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"MissingAsset");

  v9 = *(a1 + 32);
  if (isEqualToString)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v9, v7, @"hasAssetRecovered");
    if (objc_msgSend_integerValue(v10, v11, v12) >= 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 32);
      v16 = v14;
      v19 = objc_msgSend_recordID(v15, v17, v18);
      v60 = 138412290;
      v61 = v19;
      v20 = "Skipping asset repair record, already recovered: %@";
LABEL_28:
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, v20, &v60, 0xCu);

LABEL_29:
      v53 = 0;
LABEL_30:
      *(*(*(a1 + 48) + 8) + 24) = v53;

      goto LABEL_31;
    }

    v33 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v13, @"confirmedUnrecoverableDevices");
    v36 = objc_msgSend_deviceID(*(a1 + 40), v34, v35);
    v38 = objc_msgSend_containsObject_(v33, v37, v36);

    if (v38)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v39 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v40 = *(a1 + 32);
      v16 = v39;
      v19 = objc_msgSend_recordID(v40, v41, v42);
      v60 = 138412290;
      v61 = v19;
      v20 = "Skipping asset repair record, device identifier included: %@";
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  v21 = objc_msgSend_recordType(v9, v7, v8);
  v23 = objc_msgSend_isEqualToString_(v21, v22, @"MissingPackage");

  if (v23)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v24, @"hasAssetRecovered");
    if (objc_msgSend_integerValue(v10, v25, v26) >= 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v29 = *(a1 + 32);
      v16 = v28;
      v19 = objc_msgSend_recordID(v29, v30, v31);
      v60 = 138412290;
      v61 = v19;
      v20 = "Skipping package repair record, already recovered: %@";
      goto LABEL_28;
    }

    v43 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v27, @"confirmedUnrecoverableDevices");
    v46 = objc_msgSend_deviceID(*(a1 + 40), v44, v45);
    v48 = objc_msgSend_containsObject_(v43, v47, v46);

    if (v48)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v49 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v50 = *(a1 + 32);
      v16 = v49;
      v19 = objc_msgSend_recordID(v50, v51, v52);
      v60 = 138412290;
      v61 = v19;
      v20 = "Skipping package repair record, device identifier included: %@";
      goto LABEL_28;
    }

LABEL_32:
    v53 = 1;
    goto LABEL_30;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v55 = *(a1 + 32);
    v56 = v32;
    v59 = objc_msgSend_recordType(v55, v57, v58);
    v60 = 138543362;
    v61 = v59;
    _os_log_debug_impl(&dword_1883EA000, v56, OS_LOG_TYPE_DEBUG, "Skipping unknown repair record with type %{public}@", &v60, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_31:
  v54 = *MEMORY[0x1E69E9840];
}

void sub_188632B5C(uint64_t a1, const char *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 1))
  {
    v3 = *(a1 + 40);
    if (v3 < 0.0)
    {
      v3 = 0.0;
    }

    if (v3 <= 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 + 2.0;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      v28 = 134217984;
      v29 = v4;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Scheduling upload request in %.1f seconds", &v28, 0xCu);
    }

    v6 = [CKSchedulerActivity alloc];
    v9 = objc_msgSend_activityIdentifierForSchedulingRepairs(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_container(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_initWithIdentifier_container_priority_(v6, v13, v9, v12, 2);

    if (v4 > 0.0)
    {
      v17 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v15, v16, v4);
      objc_msgSend_setEarliestStartDate_(v14, v18, v17);
    }

    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(empty, *MEMORY[0x1E69E9C40], MEMORY[0x1E69E9E08]);
    xpc_dictionary_set_value(empty, *MEMORY[0x1E69E9DB0], MEMORY[0x1E69E9E10]);
    objc_msgSend_setXpcActivityCriteriaOverrides_(v14, v20, empty);
    v23 = objc_msgSend_sharedScheduler(CKScheduler, v21, v22);
    objc_msgSend_submitActivity_(v23, v24, v14);

    goto LABEL_14;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v25 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v14 = v25;
    empty = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v27, 1);
    v28 = 138543362;
    v29 = *&empty;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Upload request schedule repairs attempted to perform function %{public}@, but failed to do so", &v28, 0xCu);
LABEL_14:
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188632E98(uint64_t a1, const char *a2)
{
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 1))
  {
    v5 = *(a1 + 32);

    return objc_msgSend_scheduleRepairsWithDelay_(v5, v3, v4, 0.0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Not permitted to schedule upload requests in the current state, so attempting to process them right away", v10, 2u);
    }

    return objc_msgSend_performRepairs(*(a1 + 32), v8, v9);
  }
}

void sub_188633048(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v5 = objc_msgSend_date(MEMORY[0x1E695DF00], v3, v4);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v30 = 138412546;
      v31 = v26;
      v32 = 2048;
      v33 = v27;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Persisting delayed repair for record %@ with a delay of %.1f seconds", &v30, 0x16u);
    }

    v9 = objc_msgSend_database(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_recordName(*(a1 + 40), v10, v11);
    v15 = objc_msgSend_dateByAddingTimeInterval_(v5, v13, v14, *(a1 + 48));
    objc_msgSend_persistDelayedSyncForRecordName_withDate_increasingCount_(v9, v16, v12, v15, *(a1 + 56));

    v18 = objc_msgSend_nextRepairDateForDate_(*(a1 + 32), v17, v5);
    v19 = *(a1 + 32);
    objc_msgSend_timeIntervalSinceDate_(v18, v20, v5);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    objc_msgSend_scheduleRepairsWithDelay_(v19, v21, v22, v23);

    goto LABEL_9;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v5 = v24;
    v29 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v28, 0);
    v30 = 138543362;
    v31 = v29;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Upload request schedule record repair attempted to perform function %{public}@, but failed to do so", &v30, 0xCu);

LABEL_9:
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_188633390(uint64_t a1, const char *a2, uint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_msgSend_database(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_delayedSyncRecordNamesAfterDate_(v5, v6, *(a1 + 40));
  v9 = objc_msgSend_setWithArray_(v4, v8, v7);

  v12 = objc_msgSend_assetRequestCallback(*(a1 + 32), v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_database(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_assetRepairMetadata(v15, v16, v17);

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v19 = v18;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v61, v66, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v62;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v61 + 1) + 8 * i);
          v28 = objc_msgSend_repairZoneRecordID(v27, v22, v23);
          v31 = objc_msgSend_recordName(v28, v29, v30);
          v33 = objc_msgSend_containsObject_(v9, v32, v31);

          if ((v33 & 1) == 0)
          {
            objc_msgSend_addObject_(*(a1 + 48), v22, v27);
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v61, v66, 16);
      }

      while (v24);
    }
  }

  v34 = objc_msgSend_packageRequestCallback(*(a1 + 32), v13, v14);

  if (v34)
  {
    v37 = objc_msgSend_database(*(a1 + 32), v35, v36);
    v40 = objc_msgSend_packageRepairMetadata(v37, v38, v39);

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = v40;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v57, v65, 16);
    if (v43)
    {
      v46 = v43;
      v47 = *v58;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v58 != v47)
          {
            objc_enumerationMutation(v41);
          }

          v49 = *(*(&v57 + 1) + 8 * j);
          v50 = objc_msgSend_repairZoneRecordID(v49, v44, v45, v57);
          v53 = objc_msgSend_recordName(v50, v51, v52);
          v55 = objc_msgSend_containsObject_(v9, v54, v53);

          if ((v55 & 1) == 0)
          {
            objc_msgSend_addObject_(*(a1 + 48), v44, v49);
          }
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v57, v65, 16);
      }

      while (v46);
    }
  }

  v56 = *MEMORY[0x1E69E9840];
}

void sub_188633784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18863379C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1886337B4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_repairableAssetsForDate_(*(a1 + 32), a2, *(a1 + 40));
  v6 = objc_msgSend_count(v3, v4, v5);

  if (v6 < 1)
  {
    v18 = objc_msgSend_database(*(a1 + 32), v7, v8);
    v14 = objc_msgSend_earliestDelayedSyncDateAfterDate_(v18, v13, *(a1 + 40));
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v12 = v18;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 48) + 8);
    v11 = v9;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  return MEMORY[0x1EEE66BB8](v11, v12);
}

void sub_188633950(uint64_t a1, const char *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 2))
  {
    v5 = objc_msgSend_date(MEMORY[0x1E695DF00], v3, v4);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v31 = v5;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Performing asset repairs with date %{public}@", buf, 0xCu);
    }

    v8 = objc_msgSend_repairableAssetsForDate_(*(a1 + 32), v7, v5);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_188633BE0;
    v29[3] = &unk_1E70BF4D8;
    v29[4] = *(a1 + 32);
    v10 = objc_msgSend_CKCompactMap_(v8, v9, v29);
    v13 = objc_msgSend_repairProcessor(*(a1 + 32), v11, v12);
    hasPendingWork = objc_msgSend_hasPendingWork(v13, v14, v15);

    v19 = objc_msgSend_repairProcessor(*(a1 + 32), v17, v18);
    objc_msgSend_addUploadRequestsWithMetadata_requestBlocks_(v19, v20, v8, v10);

    if ((hasPendingWork & 1) == 0 && !objc_msgSend_count(v8, v21, v22))
    {
      objc_msgSend_dispatchEvent_(*(a1 + 32), v23, 17);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v26 = v24;
      v28 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v27, 2);
      *buf = 138543362;
      v31 = v28;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Upload request perform repairs attempted to perform function %{public}@, but failed to do so", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

id sub_188633BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_assetRequestCallback(*(a1 + 32), v4, v5);
LABEL_5:
    v11 = v6;
    v12 = objc_msgSend_copy(v6, v7, v8);

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_packageRequestCallback(*(a1 + 32), v9, v10);
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

void sub_188633E20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_188633E64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"retry");

  v10 = objc_msgSend_BOOLValue(v7, v8, v9);
  objc_msgSend_respondToStateMachineAction_isRetry_(WeakRetained, v11, a2, v10);
}

void sub_188633F00(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_respondToStateMachineChangeState_enter_(WeakRetained, v3, a2, 1);
}

void sub_188633F54(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_respondToStateMachineChangeState_enter_(WeakRetained, v3, a2, 0);
}

void sub_188634078(uint64_t a1, const char *a2, uint64_t a3)
{
  v138 = *MEMORY[0x1E69E9840];
  switch(*(a1 + 40))
  {
    case 0:
      v4 = *(a1 + 32);
      v5 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v4, sel_registerForRepairScheduler, a3);
      return;
    case 2:
      v91 = *(a1 + 32);
      v92 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v91, sel_openSyncEngine, a3);
      return;
    case 3:
      v35 = *(a1 + 32);
      v36 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v35, sel_closeSyncEngine, a3);
      return;
    case 4:
      v84 = objc_msgSend_database(*(a1 + 32), a2, a3);

      if (!v84)
      {
        v87 = objc_msgSend_createDatabase(*(a1 + 32), v85, v86);
        objc_msgSend_setDatabase_(*(a1 + 32), v88, v87);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v89 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          v121 = *(a1 + 32);
          v122 = v89;
          v125 = objc_msgSend_database(v121, v123, v124);
          v128 = objc_msgSend_databaseURL(v125, v126, v127);
          v131 = objc_msgSend_path(v128, v129, v130);
          *buf = 138543362;
          v137 = v131;
          _os_log_debug_impl(&dword_1883EA000, v122, OS_LOG_TYPE_DEBUG, "Upload request manager database initialized with path: %{public}@", buf, 0xCu);
        }
      }

      goto LABEL_42;
    case 5:
      v37 = *(a1 + 32);
      v38 = *MEMORY[0x1E69E9840];

      objc_msgSend_setDatabase_(v37, a2, 0);
      return;
    case 6:
      v45 = [CKAssetRepairScheduler alloc];
      v48 = objc_msgSend_container(*(a1 + 32), v46, v47);
      v51 = objc_msgSend_repairContainerOverrides(*(a1 + 32), v49, v50);
      v53 = objc_msgSend_initWithContainer_repairContainerOverrides_(v45, v52, v48, v51);
      objc_msgSend_setRepairProcessor_(*(a1 + 32), v54, v53);

      v57 = objc_msgSend_assetRepairSchedulerRepairBatchCountLimit(*(a1 + 32), v55, v56);
      v60 = objc_msgSend_repairProcessor(*(a1 + 32), v58, v59);
      objc_msgSend_setRepairBatchCountLimit_(v60, v61, v57);

      objc_msgSend_assetRepairSchedulerDefaultSuspensionTime(*(a1 + 32), v62, v63);
      v65 = v64;
      v68 = objc_msgSend_repairProcessor(*(a1 + 32), v66, v67);
      objc_msgSend_setDefaultSuspensionTime_(v68, v69, v70, v65);

      v73 = objc_msgSend_assetRepairSchedulerRepairRetryCount(*(a1 + 32), v71, v72);
      v76 = objc_msgSend_repairProcessor(*(a1 + 32), v74, v75);
      objc_msgSend_setRepairRetryCount_(v76, v77, v73);

      v78 = *(a1 + 32);
      v132 = objc_msgSend_repairProcessor(v78, v79, v80);
      objc_msgSend_setDelegate_(v132, v81, v78);
      goto LABEL_76;
    case 7:
      v95 = objc_msgSend_repairProcessor(*(a1 + 32), a2, a3);
      objc_msgSend_setDelegate_(v95, v96, 0);

      v98 = *(a1 + 32);
      v99 = *MEMORY[0x1E69E9840];

      objc_msgSend_setRepairProcessor_(v98, v97, 0);
      return;
    case 8:
      v100 = *(a1 + 32);
      v101 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v100, sel_cancelScheduledEvent, a3);
      return;
    case 9:
      v132 = objc_msgSend_repairProcessor(*(a1 + 32), a2, a3);
      objc_msgSend_cancelAllOperations(v132, v111, v112);
      goto LABEL_76;
    case 0xALL:
      v106 = objc_msgSend_database(*(a1 + 32), a2, a3);
      v109 = v106;
      if (v106)
      {
        v110 = v106;
      }

      else
      {
        v110 = objc_msgSend_createDatabase(*(a1 + 32), v107, v108);
      }

      v132 = v110;

      objc_msgSend_deleteDatabase(v132, v118, v119);
LABEL_76:
      v120 = *MEMORY[0x1E69E9840];

      return;
    case 0xBLL:
      v15 = objc_msgSend_sharedScheduler(CKScheduler, a2, a3);
      v18 = objc_msgSend_activityIdentifierForSchedulingRepairs(*(a1 + 32), v16, v17);
      objc_msgSend_unregisterActivityIdentifier_(v15, v19, v18);

      objc_msgSend_setHasRegisteredActivity_(*(a1 + 32), v20, 0);
      v25 = objc_msgSend_machServiceName(*(a1 + 32), v21, v22);
      if (v25)
      {
        v26 = objc_msgSend_stateQueue(*(a1 + 32), v23, v24);
        dispatch_suspend(v26);

        v29 = objc_msgSend_stateQueue(*(a1 + 32), v27, v28);
        v32 = objc_msgSend_repairContainer(*(a1 + 32), v30, v31);
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = sub_1886349FC;
        v133[3] = &unk_1E70BF550;
        v134 = v25;
        v135 = v29;
        v33 = v29;
        objc_msgSend_pushEnvironmentWithCompletionHandler_(v32, v34, v133);
      }

      goto LABEL_42;
    case 0xCLL:
      v82 = *(a1 + 32);
      v83 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v82, sel_checkNetworkReachability, a3);
      return;
    case 0xDLL:
      v41 = *(a1 + 32);
      v42 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v41, sel_registerForNetworkReachability, a3);
      return;
    case 0xELL:
      v11 = *(a1 + 32);
      v12 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v11, sel_unregisterFromNetworkReachability, a3);
      return;
    case 0xFLL:
      v102 = *(a1 + 32);
      v103 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v102, sel_fetchRepairContainerMetadata, a3);
      return;
    case 0x10:
      v104 = *(a1 + 32);
      v105 = *MEMORY[0x1E69E9840];

      objc_msgSend_checkAccountStatus(v104, a2, a3);
      return;
    case 0x11:
      v115 = *(a1 + 32);
      v116 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v115, sel_checkAccountID, a3);
      return;
    case 0x12:
      v113 = *(a1 + 32);
      v114 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v113, sel_registerForAccountNotifications, a3);
      return;
    case 0x13:
      v6 = *(a1 + 32);
      v7 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v6, sel_unregisterFromAccountNotifications, a3);
      return;
    case 0x14:
      v43 = *(a1 + 32);
      v44 = *MEMORY[0x1E69E9840];

      objc_msgSend_fetchServerChanges_(v43, a2, 0);
      return;
    case 0x15:
      v8 = *(a1 + 32);
      v117 = *MEMORY[0x1E69E9840];
      v10 = 0;
      goto LABEL_71;
    case 0x16:
      v8 = *(a1 + 32);
      v9 = *MEMORY[0x1E69E9840];
      v10 = 1;
LABEL_71:

      MEMORY[0x1EEE66B58](v8, sel_finishSchedulerCallbackWithDeferral_, v10);
      break;
    case 0x17:
      v39 = *(a1 + 32);
      v40 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v39, sel_scheduleRecurringFetch, a3);
      break;
    case 0x18:
      v13 = *(a1 + 32);
      v14 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v13, sel_scheduleNextSync, a3);
      break;
    case 0x19:
      v93 = *(a1 + 32);
      v94 = *MEMORY[0x1E69E9840];

      objc_msgSend_performRepairs(v93, a2, a3);
      break;
    default:
LABEL_42:
      v90 = *MEMORY[0x1E69E9840];
      break;
  }
}

void sub_1886349FC(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698CF20];
  if (a2)
  {
    objc_msgSend_ck_singletonConnectionForEnvironmentName_namedDelegatePort_(MEMORY[0x1E698CF30], a2, a2, *(a1 + 32));
  }

  else
  {
    objc_msgSend_ck_singletonConnectionForEnvironmentName_namedDelegatePort_(MEMORY[0x1E698CF30], 0, *MEMORY[0x1E698CF20], *(a1 + 32));
  }
  v4 = ;
  objc_msgSend__setEnabledTopics_(v4, v5, 0);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Cleared all enabled topics from connection %@", &v8, 0xCu);
  }

  dispatch_resume(*(a1 + 40));

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188634BD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 40) == 2)
  {
    v3 = *(result + 48);
    v4 = *(result + 32);
    if (v3 == 1)
    {
      return MEMORY[0x1EEE66B58](v4, sel_registerForFetchAllNotifications, a3);
    }

    else
    {
      return MEMORY[0x1EEE66B58](v4, sel_unregisterFromFetchAllNotifications, a3);
    }
  }

  return result;
}

void sub_188634CA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_stateMachine(*(a1 + 32), a2, a3);
  objc_msgSend_dispatchEvent_(v5, v4, *(a1 + 40));
}

void sub_188634DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188634DF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_stateMachine(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_canPerformFunction_(v5, v4, *(a1 + 48));
}

void sub_188634F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_188634FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(WeakRetained, v8, 5, 0, 0);
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v9, v10);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188635150;
    block[3] = &unk_1E70BF5A0;
    block[4] = WeakRetained;
    v14 = v5;
    v15 = v6;
    dispatch_async(v11, block);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Repair XPC activity was called, but self was nil", buf, 2u);
    }

    (*(v6 + 2))(v6, 1);
  }
}

uint64_t sub_188635150(uint64_t a1, const char *a2)
{
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(*(a1 + 32), a2, 6, 0, 0);
  v5 = objc_msgSend_observedRepairActivity(*(a1 + 32), v3, v4);

  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_FAULT))
    {
      *v25 = 0;
      _os_log_fault_impl(&dword_1883EA000, v7, OS_LOG_TYPE_FAULT, "Activity triggered while another activity was running", v25, 2u);
    }

    v10 = objc_msgSend_observedRepairActivity(*(a1 + 32), v8, v9);
    v11 = *(a1 + 32);
    v12 = NSStringFromSelector(sel_shouldDefer);
    objc_msgSend_removeObserver_forKeyPath_context_(v10, v13, v11, v12, qword_1EA9108E0);

    objc_msgSend_setObservedRepairActivity_(*(a1 + 32), v14, 0);
    objc_msgSend_setRepairActivityHandler_(*(a1 + 32), v15, 0);
  }

  objc_msgSend_setObservedRepairActivity_(*(a1 + 32), v6, *(a1 + 40));
  v18 = objc_msgSend_observedRepairActivity(*(a1 + 32), v16, v17);
  v19 = *(a1 + 32);
  v20 = NSStringFromSelector(sel_shouldDefer);
  objc_msgSend_addObserver_forKeyPath_options_context_(v18, v21, v19, v20, 0, qword_1EA9108E0);

  objc_msgSend_setRepairActivityHandler_(*(a1 + 32), v22, *(a1 + 48));
  return objc_msgSend_dispatchEvent_(*(a1 + 32), v23, 15);
}

void sub_188635590(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_observedRepairActivity(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Critical error: received KVO call for scheduler activity, but activity is different from the persisted one", v8, 2u);
    }
  }

  if (*(a1 + 48) == 1)
  {
    objc_msgSend_dispatchEvent_(*(a1 + 32), v6, 16);
  }
}

void sub_188635A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_188635A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v8, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188635B30;
    v12[3] = &unk_1E70BF640;
    v13 = v6;
    v14 = v10;
    v15 = v5;
    objc_copyWeak(&v16, (a1 + 32));
    dispatch_async(v11, v12);

    objc_destroyWeak(&v16);
  }
}

void sub_188635B30(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v18 = v14;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error fetching repair container device identifier: %@", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    objc_msgSend_setDeviceID_(v6, v4, 0);
    objc_msgSend_setCachesDirectory_(*v5, v7, 0);
    objc_msgSend_dispatchEvent_(*v5, v8, 5);
  }

  else
  {
    objc_msgSend_setDeviceID_(*(a1 + 40), a2, *(a1 + 48));
    v11 = objc_msgSend_repairContainer(*(a1 + 40), v9, v10);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_188635CE0;
    v15[3] = &unk_1E70BF618;
    objc_copyWeak(&v16, (a1 + 56));
    objc_msgSend_frameworkCachesDirectoryWithCompletionHandler_(v11, v12, v15);

    objc_destroyWeak(&v16);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_188635CE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v8, v9);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188635DC4;
    block[3] = &unk_1E70BC360;
    v13 = v6;
    v14 = v10;
    v15 = v5;
    dispatch_async(v11, block);
  }
}

uint64_t sub_188635DC4(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error fetching repair container caches directory: %@", &v13, 0xCu);
    }

    objc_msgSend_setDeviceID_(*(a1 + 40), v4, 0);
    objc_msgSend_setCachesDirectory_(*(a1 + 40), v5, 0);
    result = objc_msgSend_dispatchEvent_(*(a1 + 40), v6, 5);
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    objc_msgSend_setCachesDirectory_(*(a1 + 40), a2, *(a1 + 48));
    v10 = *(a1 + 40);
    v11 = *MEMORY[0x1E69E9840];

    return objc_msgSend_dispatchEvent_(v10, v9, 4);
  }

  return result;
}

void sub_188635FE0(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  v6 = objc_msgSend_stateQueue(v8, v4, v5);
  dispatch_assert_queue_V2(v6);

  if ((a2 & 0x2A) != 0)
  {
    objc_msgSend_dispatchEvent_(v8, v7, 6);
  }

  else
  {
    objc_msgSend_dispatchEvent_(v8, v7, 7);
  }
}

void sub_18863631C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_stateQueue(WeakRetained, v3, v4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1886363E4;
    block[3] = &unk_1E70BF668;
    block[4] = v5;
    objc_copyWeak(v8, (a1 + 32));
    v8[1] = *(a1 + 40);
    dispatch_async(v6, block);

    objc_destroyWeak(v8);
  }
}

void sub_1886363E4(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Received account change notification, enqueueing", buf, 2u);
  }

  v5 = objc_msgSend_scheduledAccountStatusCheck(*(a1 + 32), v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_scheduledAccountStatusCheck(*(a1 + 32), v6, v7);
    dispatch_block_cancel(v8);

    objc_msgSend_setScheduledAccountStatusCheck_(*(a1 + 32), v9, 0);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188636598;
  block[3] = &unk_1E70BC680;
  objc_copyWeak(&v17, (a1 + 40));
  v10 = dispatch_block_create(0, block);
  objc_msgSend_setScheduledAccountStatusCheck_(*(a1 + 32), v11, v10);
  v12 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v15 = objc_msgSend_stateQueue(*(a1 + 32), v13, v14);
  dispatch_after(v12, v15, v10);

  objc_destroyWeak(&v17);
}

void sub_188636598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Acting on account change notification", v6, 2u);
  }

  objc_msgSend_checkAccountStatus(WeakRetained, v3, v4);
  objc_msgSend_setScheduledAccountStatusCheck_(WeakRetained, v5, 0);
}

void sub_188636870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_188636894(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = objc_msgSend_stateQueue(WeakRetained, v7, v8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188636960;
    block[3] = &unk_1E70BF240;
    v12 = v5;
    v13 = v9;
    v14 = a2;
    dispatch_async(v10, block);
  }
}

uint64_t sub_188636960(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error fetching account info in upload request manager: %@", &v11, 0xCu);
    }

    result = objc_msgSend_dispatchEvent_(*(a1 + 40), v4, 10);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *MEMORY[0x1E69E9840];
    if (*(a1 + 48) == 1)
    {
      v9 = 8;
    }

    else
    {
      v9 = 9;
    }

    return objc_msgSend_dispatchEvent_(v7, a2, v9);
  }

  return result;
}

void sub_188636B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_188636BB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v8, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188636CA4;
    v12[3] = &unk_1E70BF6E0;
    v13 = v6;
    v14 = v10;
    v15 = *(a1 + 32);
    v16 = v5;
    dispatch_async(v11, v12);
  }
}

void sub_188636CA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_CKClientSuitableError(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_domain(v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"CKErrorDomain"))
  {
    if (objc_msgSend_code(v4, v9, v10) == 9)
    {

LABEL_16:
      objc_msgSend_dispatchEvent_(*(a1 + 40), v13, 9);
      goto LABEL_23;
    }

    v26 = objc_msgSend_code(v4, v11, v12);

    if (v26 == 115)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v15 = objc_msgSend_domain(v4, v13, v14);
  if (objc_msgSend_isEqualToString_(v15, v16, @"CKErrorDomain"))
  {
    if (objc_msgSend_code(v4, v17, v18) == 4)
    {

LABEL_18:
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v42 = 138412290;
        v43 = v30;
        _os_log_impl(&dword_1883EA000, v28, OS_LOG_TYPE_INFO, "Error fetching user record ID in upload request manager, treating as network unreachable: %@", &v42, 0xCu);
      }

      objc_msgSend_dispatchEvent_(*(a1 + 40), v29, 7);
      goto LABEL_23;
    }

    v27 = objc_msgSend_code(v4, v19, v20);

    if (v27 == 3)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 32);
      v42 = 138412290;
      v43 = v41;
      _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Error fetching user record ID in upload request manager: %@", &v42, 0xCu);
    }

    objc_msgSend_dispatchEvent_(*(a1 + 40), v24, 11);
  }

  else
  {
    v32 = objc_msgSend_database(*(a1 + 48), v21, v22);
    v35 = objc_msgSend_currentUser(v32, v33, v34);

    v38 = *(a1 + 56);
    if (v38)
    {
      v39 = objc_msgSend_database(*(a1 + 48), v36, v37);
      objc_msgSend_setCurrentUser_(v39, v40, v38);
    }

    if (!v35 || objc_msgSend_isEqual_(v35, v36, *(a1 + 56)))
    {
      objc_msgSend_dispatchEvent_(*(a1 + 40), v36, 12);
    }

    else
    {
      objc_msgSend_dispatchEvent_(*(a1 + 40), v36, 13);
    }
  }

LABEL_23:
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(*(a1 + 48), v25, 1, *(a1 + 32), 1);

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1886370CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1886370F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_stateQueue(WeakRetained, v2, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188637190;
  v5[3] = &unk_1E70BC388;
  v5[4] = WeakRetained;
  ck_call_or_dispatch_sync_if_not_key(v4, WeakRetained + 232, v5);
}

uint64_t sub_188637190(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Manually fetching and scheduling changes via notification", v6, 2u);
  }

  return objc_msgSend_manuallyTriggerUploadRequests(*(a1 + 32), v3, v4);
}

void sub_1886389B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188638A54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_name(v5, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 18);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (isEqualToString)
  {
    v16 = objc_msgSend_userInfo(v5, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"function");
    v21 = objc_msgSend_integerValue(v18, v19, v20);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v32 = v22;
      v34 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v33, v21);
      *buf = 138543362;
      v40 = v34;
      _os_log_error_impl(&dword_1883EA000, v32, OS_LOG_TYPE_ERROR, "Warning: requested permission for function %{public}@, but not allowed in current state", buf, 0xCu);
    }

    v37 = @"function";
    v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, v21);
    v38 = v24;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, &v38, &v37, 1);
    v6[2](v6, 28, v26);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v5;
      _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "Unhandled event %@ in state machine", buf, 0xCu);
    }

    v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v28, @"CKErrorDomain", 10002, @"Unhandled event %@ in state machine", v5);
    v35 = @"error";
    v36 = v24;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, &v36, &v35, 1);
    v6[2](v6, 26, v26);
  }

  v30 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t sub_188638D78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 1);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if ((isEqualToString & 1) == 0)
  {
    v16 = objc_msgSend_name(v6, v14, v15);
    v18 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v17, 0);
    v20 = objc_msgSend_isEqualToString_(v16, v19, v18);

    if (!v20)
    {
      v22 = 1;
      goto LABEL_6;
    }

    objc_msgSend_transitionToState_withEvent_(v5, v21, *(a1 + 32), v6);
  }

  v22 = 2;
LABEL_6:

  return v22;
}