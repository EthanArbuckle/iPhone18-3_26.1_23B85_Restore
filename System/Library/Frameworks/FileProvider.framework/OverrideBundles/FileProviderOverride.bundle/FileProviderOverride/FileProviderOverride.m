void sub_23834D0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23834D0FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23834D114(uint64_t a1, void *a2, void *a3)
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

void sub_23834D580(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_domain(v9, v10, v11, v12, v13);
    if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277CC6330], v17, v18))
    {
      v23 = objc_msgSend_code(v14, v19, v20, v21, v22);

      if (!v23)
      {
        v24 = *(*(a1 + 32) + 16);
LABEL_8:
        v24();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v24 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v25 = *(a1 + 32);
  v26 = objc_msgSend_remoteObjectProxyCreating(v7, v10, v11, v12, v13);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23834D6F4;
  v27[3] = &unk_278A50860;
  v28 = v7;
  (*(v25 + 16))(v25, v26, v8, v27, 0);

LABEL_9:
}

void sub_23834D810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_domain(v9, v10, v11, v12, v13);
    if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277CC6330], v17, v18))
    {
      v23 = objc_msgSend_code(v14, v19, v20, v21, v22);

      if (!v23)
      {
        v24 = *(*(a1 + 32) + 16);
LABEL_8:
        v24();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v24 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v25 = *(a1 + 32);
  v26 = objc_msgSend_remoteObjectProxyCreating(v7, v10, v11, v12, v13);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23834D978;
  v27[3] = &unk_278A50860;
  v28 = v7;
  (*(v25 + 16))(v25, v26, v27, 0);

LABEL_9:
}

void sub_23834DD98(uint64_t a1, void *a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA050];
  v33[0] = *MEMORY[0x277CC6300];
  v33[1] = v3;
  v33[2] = *MEMORY[0x277CCA5B8];
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v8 = objc_msgSend_arrayWithObjects_count_(v4, v6, v33, 3, v7);
  v12 = objc_msgSend_fp_unwrappedErrorForDomains_(v5, v9, v8, v10, v11);

  if (objc_msgSend_fp_isPOSIXErrorCode_(v12, v13, 16, v14, v15))
  {
    v20 = objc_msgSend_userInfo(v5, v16, v17, v18, v19);

    v5 = objc_msgSend_objectForKey_(v20, v21, *MEMORY[0x277CCA068], v22, v23);

    v24 = *(a1 + 32);
    v25 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA7E8];
    v32 = v12;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v32, &v31, 1);
    v29 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v28, v3, 255, v27);
    (*(v24 + 16))(v24, 1, v29);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
}

id fp_backtrace()
{
  MEMORY[0x28223BE20]();
  v7 = *MEMORY[0x277D85DE8];
  bzero(v6, 0x2000uLL);
  sub_23834EE04(v6);
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v0, v6, v1, v2);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void fp_backtrace_exception_snprint(char *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18 = objc_msgSend_callStackSymbols(a3, a2, a3, a4, a5);
  v11 = objc_msgSend_description(v18, v7, v8, v9, v10);
  v12 = v11;
  v17 = objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
  snprintf(a1, a2, "%s", v17);
}

void FPCaptureLogsForOperation(void *a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  v13 = objc_msgSend_domain(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_code(v7, v14, v15, v16, v17);
  v22 = objc_msgSend_stringWithFormat_(v8, v19, @"%@.%ld", v20, v21, v13, v18);

  v27 = objc_msgSend_underlyingErrors(v7, v23, v24, v25, v26);

  if (v27)
  {
    v59 = v5;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v32 = objc_msgSend_underlyingErrors(v7, v28, v29, v30, v31);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v60, v70, 16);
    if (v34)
    {
      v39 = v34;
      v40 = *v61;
      do
      {
        v41 = 0;
        v42 = v22;
        do
        {
          if (*v61 != v40)
          {
            objc_enumerationMutation(v32);
          }

          v43 = *(*(&v60 + 1) + 8 * v41);
          v44 = objc_msgSend_domain(v43, v35, v36, v37, v38);
          v49 = objc_msgSend_code(v43, v45, v46, v47, v48);
          v22 = objc_msgSend_stringByAppendingFormat_(v42, v50, @"%@.%ld", v51, v52, v44, v49);;

          ++v41;
          v42 = v22;
        }

        while (v39 != v41);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v60, v70, 16);
      }

      while (v39);
    }

    v5 = v59;
  }

  v53 = fp_current_or_default_log();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v65 = v5;
    v66 = 2112;
    v67 = v6;
    v68 = 2112;
    v69 = v22;
    _os_log_debug_impl(&dword_23834C000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] Sending ABC report with signature: type = %@, subtype = %@, subtype context = %@", buf, 0x20u);
  }

  v54 = sub_23834E3C8();
  v56 = objc_msgSend_signatureWithDomain_type_subType_subtypeContext_detectedProcess_triggerThresholdValues_(v54, v55, @"FileProvider", v5, v6, v22, @"fileproviderd", 0);
  objc_msgSend_snapshotWithSignature_duration_events_payload_actions_reply_(v54, v57, v56, 0, 0, 0, &unk_284B19B58, 15.0);

  v58 = *MEMORY[0x277D85DE8];
}

id fp_current_or_default_log()
{
  v0 = fpfs_current_log();
  if (!v0)
  {
    v0 = fp_default_log();
  }

  return v0;
}

id sub_23834E3C8()
{
  if (qword_27DF08478 != -1)
  {
    sub_23834F08C();
  }

  v1 = qword_27DF08470;

  return v1;
}

void sub_23834E40C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *MEMORY[0x277D6B198], a4, a5);
  v10 = objc_msgSend_BOOLValue(v5, v6, v7, v8, v9);

  v11 = fp_current_or_default_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      sub_23834F0E0();
    }
  }

  else if (v12)
  {
    sub_23834F0A0();
  }
}

void sub_23834E48C()
{
  v0 = MEMORY[0x28223BE20]();
  v49 = *MEMORY[0x277D85DE8];
  v1 = v0;
  v10 = v1;
  if (objc_msgSend_length(v1, v2, v3, v4, v5) >= 0x65)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_msgSend_hash(v1, v6, v7, v8, v9);
    v16 = objc_msgSend_stringWithFormat_(v11, v13, @":0x%lx", v14, v15, v12);
    v21 = objc_msgSend_length(v16, v17, v18, v19, v20);
    v25 = objc_msgSend_substringToIndex_(v1, v22, 100 - v21, v23, v24);
    v10 = objc_msgSend_stringByAppendingString_(v25, v26, v16, v27, v28);
  }

  v29 = sub_23834E3C8();
  v31 = objc_msgSend_signatureWithDomain_type_subType_detectedProcess_triggerThresholdValues_(v29, v30, @"Application", @"Functional", @"AssertionFailed", @"fileproviderd", 0);

  objc_msgSend_setObject_forKeyedSubscript_(v31, v32, v10, *MEMORY[0x277D6B1F0], v33);
  bzero(v48, 0x2000uLL);
  sub_23834EE04(v48);
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v48, v35, v36);
  v38 = sub_23834E3C8();
  v46 = @"backtrace";
  v47 = v37;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v47, &v46, 1);
  v42 = objc_msgSend_snapshotWithSignature_duration_event_payload_reply_(v38, v41, v31, v40, 0, &unk_284B19B78, 15.0);

  v43 = fp_current_or_default_log();
  v44 = v43;
  if (v42)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_23834F198();
    }
  }

  else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_23834F120(v1, v44);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_23834E6D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F20C();
  }
}

void fp_simulate_crash(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [v9 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9, v13);
  getpid();
  SimulateCrash();
  sub_23834E48C();
}

id fp_default_log()
{
  if (qword_27DF08420 != -1)
  {
    sub_23834F280();
  }

  v1 = qword_27DF08428;

  return v1;
}

uint64_t sub_23834E7DC()
{
  qword_27DF08428 = os_log_create("com.apple.FileProvider", "default");

  return MEMORY[0x2821F96F8]();
}

void *fpfs_current_log()
{
  if (qword_27DF08480 != -1)
  {
    sub_23834F294();
  }

  v1 = qword_27DF08448;

  return pthread_getspecific(v1);
}

uint64_t __fp_create_section()
{
  if (qword_27DF08440 != -1)
  {
    sub_23834F2A8();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23834E98C;
  block[3] = &unk_278A50918;
  block[4] = &v3;
  dispatch_sync(qword_27DF08438, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23834E928()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("create-log-section", v2);
  v1 = qword_27DF08438;
  qword_27DF08438 = v0;
}

uint64_t sub_23834E98C(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = qword_27DF08430 + 1;
  qword_27DF08430 = *(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t __fp_log_fork(uint64_t a1)
{
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F2BC(a1, section, v3);
  }

  return section;
}

void __fp_log_adopt(uint64_t *a1, uint64_t a2)
{
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F344(a1, a2, v4);
  }
}

void __fp_leave_section_Debug(uint64_t *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_23834F3F8(a1);
  }
}

void __fp_leave_section_Notice(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_23834C000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┗%llx ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __fp_leave_section_Error(uint64_t *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_23834F470(a1, v2);
  }
}

void **__fp_pop_log(void **result)
{
  if (result)
  {
    return fpfs_adopt_log(*result);
  }

  return result;
}

id fpfs_adopt_log(void *a1)
{
  v1 = a1;
  if (qword_27DF08480 != -1)
  {
    sub_23834F294();
  }

  v2 = fpfs_current_log();
  v3 = qword_27DF08448;
  v4 = v1;
  pthread_setspecific(v3, v4);

  return v2;
}

os_log_t fpfs_create_log_for_provider(char *category)
{
  v1 = os_log_create("com.apple.FileProvider", category);

  return v1;
}

id fpfs_current_or_default_log()
{
  v0 = fpfs_current_log();
  if (!v0)
  {
    if (qword_27DF08488 != -1)
    {
      sub_23834F4EC();
    }

    v0 = qword_27DF08490;
  }

  return v0;
}

id fssync_default_log()
{
  if (qword_27DF08450 != -1)
  {
    sub_23834F500();
  }

  v1 = qword_27DF08458;

  return v1;
}

uint64_t sub_23834ED38()
{
  qword_27DF08458 = os_log_create("com.apple.FileProvider", "fssync");

  return MEMORY[0x2821F96F8]();
}

id telemetry_default_log()
{
  if (qword_27DF08460 != -1)
  {
    sub_23834F514();
  }

  v1 = qword_27DF08468;

  return v1;
}

uint64_t sub_23834EDC0()
{
  qword_27DF08468 = os_log_create("com.apple.FileProvider", "telemetry");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23834EE04(char *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  result = backtrace(v12, 24);
  if (result)
  {
    v3 = 0;
    v4 = result;
    v5 = 0x2000;
    do
    {
      memset(&v11, 0, sizeof(v11));
      if (v3)
      {
        if (dladdr(v12[v3], &v11))
        {
          dli_sname = v11.dli_sname;
          v7 = rindex(v11.dli_fname, 47);
          dli_fname = v11.dli_fname;
          if (v7)
          {
            dli_fname = v7 + 1;
          }
        }

        else
        {
          dli_sname = &unk_23834FE1E;
          dli_fname = &unk_23834FE1E;
        }

        result = snprintf(a1, v5, "frame %d: %lld %s in %s\n", v3, v12[v3], dli_sname, dli_fname);
        v9 = v5 <= result;
        v5 -= result;
        if (v9)
        {
          break;
        }

        a1 += result;
      }

      ++v3;
    }

    while (v4 != v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23834EF3C()
{
  qword_27DF08470 = objc_alloc_init(MEMORY[0x277D6AFC8]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23834EF78()
{
  result = pthread_key_create(&qword_27DF08448, j__CFRelease);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_23834EFB4()
{
  qword_27DF08490 = os_log_create("com.apple.FileProvider", "fpfs");

  return MEMORY[0x2821F96F8]();
}

void sub_23834F004(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_23834C000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] found %@ as original URL to %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23834F120(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23834C000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to send snapshot for signature %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23834F198()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23834EFF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23834F20C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23834EFF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23834F2BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2080;
  v7 = a1;
  _os_log_debug_impl(&dword_23834C000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23834F344(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v6 = 134218498;
  v7 = v4;
  v8 = 2080;
  v9 = a2;
  v10 = 1024;
  v11 = qos_class_self();
  _os_log_debug_impl(&dword_23834C000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s at QoS %d", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23834F3F8(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  sub_23834EFF8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23834F470(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_23834C000, a2, OS_LOG_TYPE_ERROR, "[ERROR] ┗%llx ", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}