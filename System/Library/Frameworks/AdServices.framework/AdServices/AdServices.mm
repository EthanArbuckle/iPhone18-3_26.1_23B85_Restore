id sub_236A43010()
{
  if (qword_2814EEBE0 != -1)
  {
    sub_236A4475C();
  }

  v1 = qword_2814EEBE8;

  return v1;
}

uint64_t sub_236A430DC()
{
  qword_2814EEBE8 = os_log_create("com.apple.adplatforms", "Attribution");

  return MEMORY[0x2821F96F8]();
}

id sub_236A43120(id val, void *a2)
{
  v2 = val;
  v350 = *MEMORY[0x277D85DE8];
  if (!val)
  {
    goto LABEL_72;
  }

  objc_initWeak(&location, val);
  v4 = 0;
  v339 = 0;
  v340 = &v339;
  v341 = 0x3032000000;
  v342 = sub_236A43C0C;
  v343 = sub_236A43C1C;
  v344 = 0;
  *&v5 = 134349056;
  v329 = v5;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = dispatch_semaphore_create(0);
    v336[0] = MEMORY[0x277D85DD0];
    v336[1] = 3221225472;
    v336[2] = sub_236A43C24;
    v336[3] = &unk_278A03CD0;
    objc_copyWeak(&v338, &location);
    v9 = v8;
    v337 = v9;
    v10 = *(v2 + 16);
    objc_msgSend_setInterruptionHandler_(v10, v11, v336, v12, v13, v14, v15);

    objc_msgSend_setConnectionInterrupted_(v2, v16, 0, v17, v18, v19, v20);
    v331 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v21 = APPerfLogForCategory();
    v28 = objc_msgSend_intervalId(v2, v22, v23, v24, v25, v26, v27);
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v35 = objc_msgSend_intervalId(v2, v29, v30, v31, v32, v33, v34);
      *buf = 134349312;
      v347 = v35;
      v348 = 2050;
      v349 = v4;
      _os_signpost_emit_with_name_impl(&dword_236A42000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v28, "Token Request XPC", "id=%{public, name=id}lld retryCount=%{public, name=retryCount}ld", buf, 0x16u);
    }

    v42 = objc_msgSend_remoteProxy(v2, v36, v37, v38, v39, v40, v41);
    v49 = objc_msgSend_requestTime(v2, v43, v44, v45, v46, v47, v48);
    v56 = objc_msgSend_intervalId(v2, v50, v51, v52, v53, v54, v55);
    v332[0] = MEMORY[0x277D85DD0];
    v332[1] = 3221225472;
    v332[2] = sub_236A43CB4;
    v332[3] = &unk_278A03CF8;
    objc_copyWeak(&v335, &location);
    v334 = &v339;
    v57 = v9;
    v333 = v57;
    objc_msgSend_attributionTokenRequestTimestamp_interval_completionHandler_(v42, v58, v49, v56, v332, v59, v60);

    if (objc_msgSend_isMainThread(v2, v61, v62, v63, v64, v65, v66))
    {
      v67 = 1500000000;
    }

    else
    {
      v67 = 10000000000;
    }

    v68 = dispatch_time(0, v67);
    v69 = dispatch_semaphore_wait(v57, v68);
    v70 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v71 = APPerfLogForCategory();
    v78 = objc_msgSend_intervalId(v2, v72, v73, v74, v75, v76, v77);
    if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      v85 = objc_msgSend_intervalId(v2, v79, v80, v81, v82, v83, v84);
      v86 = MEMORY[0x277CCABB0];
      isMainThread = objc_msgSend_isMainThread(v2, v87, v88, v89, v90, v91, v92);
      v99 = objc_msgSend_numberWithBool_(v86, v94, isMainThread, v95, v96, v97, v98);
      *buf = 134349314;
      v347 = v85;
      v348 = 2114;
      v349 = v99;
      _os_signpost_emit_with_name_impl(&dword_236A42000, v71, OS_SIGNPOST_INTERVAL_END, v78, "Token Request XPC", "id=%{public, name=id}lld thread=%{public, name=thread}@", buf, 0x16u);
    }

    v106 = v69 == 0;
    if (v69)
    {
      v107 = APLogForCategory();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_236A42000, v107, OS_LOG_TYPE_ERROR, "AAAttribution XPC call timed out.", buf, 2u);
      }

      if (a2)
      {
        *a2 = objc_msgSend__createInternalError(AAAttributionRequester, v108, v109, v110, v111, v112, v113);
      }

      objc_msgSend__sendAnalyticsAndInvalidateConnection_end_(v2, v108, v331, v70, v111, v112, v113, v329);
      if (objc_msgSend_isMainThread(v2, v114, v115, v116, v117, v118, v119))
      {
        objc_msgSend__reportTokenStatus_storeFront_daemonRunningTime_(v2, v120, 1, 0, v121, v122, v123, 0.0);
      }

      else
      {
        objc_msgSend__reportTokenStatus_storeFront_daemonRunningTime_(v2, v120, 2, 0, v121, v122, v123, 0.0);
      }

      v124 = APPerfLogForCategory();
      v131 = objc_msgSend_intervalId(v2, v125, v126, v127, v128, v129, v130);
      if (v131 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v124))
      {
        v138 = objc_msgSend_intervalId(v2, v132, v133, v134, v135, v136, v137);
        *buf = v329;
        v347 = v138;
        _os_signpost_emit_with_name_impl(&dword_236A42000, v124, OS_SIGNPOST_INTERVAL_END, v131, "Attribution Request", "id=%{public, name=id}lld", buf, 0xCu);
      }

LABEL_29:

      v154 = 0;
      goto LABEL_30;
    }

    if (objc_msgSend_connectionInterrupted(v2, v100, v101, v102, v103, v104, v105))
    {
      v139 = APPerfLogForCategory();
      v146 = objc_msgSend_intervalId(v2, v140, v141, v142, v143, v144, v145);
      if (v146 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
      {
        v153 = objc_msgSend_intervalId(v2, v147, v148, v149, v150, v151, v152);
        *buf = v329;
        v347 = v153;
        _os_signpost_emit_with_name_impl(&dword_236A42000, v139, OS_SIGNPOST_EVENT, v146, "Connection Interrupted", "Connection Interrupted id=%{public, name=id}lld", buf, 0xCu);
      }

      v124 = APLogForCategory();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_236A42000, v124, OS_LOG_TYPE_INFO, "AAAttribution XPC call interrupted. Initiating a retry.", buf, 2u);
      }

      goto LABEL_29;
    }

    v106 = 0;
    v154 = 1;
LABEL_30:

    objc_destroyWeak(&v335);
    objc_destroyWeak(&v338);

    if (!v106)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (!v154)
  {
    v2 = 0;
    goto LABEL_71;
  }

LABEL_35:
  if (objc_msgSend_connectionInterrupted(v2, v155, v156, v157, v158, v159, v160, v329))
  {
    if (a2)
    {
      *a2 = objc_msgSend__createInternalError(AAAttributionRequester, v161, v162, v163, v164, v165, v166);
    }

    v167 = APLogForCategory();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_236A42000, v167, OS_LOG_TYPE_ERROR, "AAAttribution XPC call failed.", buf, 2u);
    }

    v168 = *(v2 + 16);
    objc_msgSend_invalidate(v168, v169, v170, v171, v172, v173, v174);

    objc_msgSend__reportTokenStatus_storeFront_daemonRunningTime_(v2, v175, 0, 0, v176, v177, v178, 0.0);
    v179 = APPerfLogForCategory();
    v186 = objc_msgSend_intervalId(v2, v180, v181, v182, v183, v184, v185);
    if (v186 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v179))
    {
      v193 = objc_msgSend_intervalId(v2, v187, v188, v189, v190, v191, v192);
      sub_236A449A8(buf, v193, v179, v186);
    }

    goto LABEL_69;
  }

  objc_msgSend__sendAnalyticsAndInvalidateConnection_end_(v2, v161, v331, v70, v164, v165, v166);
  os_unfair_lock_lock_with_options();
  v179 = v340[5];
  os_unfair_lock_unlock((v2 + 12));
  if (objc_msgSend_success(v179, v194, v195, v196, v197, v198, v199))
  {
    if (objc_msgSend_source(v179, v200, v201, v202, v203, v204, v205))
    {
      v212 = objc_msgSend_source(v179, v206, v207, v208, v209, v210, v211);
      v218 = objc_msgSend__tokenStatusFromTokenSource_(AAAttributionRequester, v213, v212, v214, v215, v216, v217);
      v225 = objc_msgSend_storeFront(v179, v219, v220, v221, v222, v223, v224);
      objc_msgSend_daemonRunningTime(v179, v226, v227, v228, v229, v230, v231);
      objc_msgSend__reportTokenStatus_storeFront_daemonRunningTime_(v2, v232, v218, v225, v233, v234, v235);
    }

    else
    {
      objc_msgSend_cStringUsingEncoding_(@"com.apple.ap.AdPlatformsCommon", v206, 30, v208, v209, v210, v211);
      if (os_variant_has_internal_content() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        sub_236A44960();
      }
    }

    v245 = APPerfLogForCategory();
    v252 = objc_msgSend_intervalId(v2, v246, v247, v248, v249, v250, v251);
    if (v252 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v245))
    {
      v259 = objc_msgSend_intervalId(v2, v253, v254, v255, v256, v257, v258);
      *buf = v330;
      v347 = v259;
      _os_signpost_emit_with_name_impl(&dword_236A42000, v245, OS_SIGNPOST_INTERVAL_END, v252, "Attribution Request", "id=%{public, name=id}lld", buf, 0xCu);
    }

    v2 = objc_msgSend_token(v179, v260, v261, v262, v263, v264, v265);
    goto LABEL_70;
  }

  if (a2)
  {
    v236 = objc_msgSend_error(v179, v200, v201, v202, v203, v204, v205);
    v243 = v236;
    if (v236)
    {
      v244 = v236;
      *a2 = v243;
    }

    else
    {
      v266 = objc_msgSend__createInternalError(AAAttributionRequester, v237, v238, v239, v240, v241, v242);
      *a2 = v266;
    }
  }

  v273 = objc_msgSend_error(v179, v200, v201, v202, v203, v204, v205);
  if (v273)
  {
    v274 = objc_msgSend_error(v179, v267, v268, v269, v270, v271, v272);
    if (objc_msgSend_code(v274, v275, v276, v277, v278, v279, v280) == 3)
    {
      v287 = objc_msgSend_error(v179, v281, v282, v283, v284, v285, v286);
      v294 = objc_msgSend_domain(v287, v288, v289, v290, v291, v292, v293);
      isEqualToString = objc_msgSend_isEqualToString_(v294, v295, @"com.apple.ap.adservices.attributionError", v296, v297, v298, v299);

      if (isEqualToString)
      {
        goto LABEL_65;
      }
    }

    else
    {
    }
  }

  v301 = objc_msgSend_storeFront(v179, v267, v268, v269, v270, v271, v272);
  objc_msgSend_daemonRunningTime(v179, v302, v303, v304, v305, v306, v307);
  objc_msgSend__reportTokenStatus_storeFront_daemonRunningTime_(v2, v308, 0, v301, v309, v310, v311);

LABEL_65:
  v312 = APPerfLogForCategory();
  v319 = objc_msgSend_intervalId(v2, v313, v314, v315, v316, v317, v318);
  if (v319 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v312))
  {
    v326 = objc_msgSend_intervalId(v2, v320, v321, v322, v323, v324, v325);
    sub_236A449A8(buf, v326, v312, v319);
  }

LABEL_69:
  v2 = 0;
LABEL_70:

LABEL_71:
  _Block_object_dispose(&v339, 8);

  objc_destroyWeak(&location);
LABEL_72:
  v327 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_236A43B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  objc_destroyWeak((v32 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_236A43C0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_236A43C24(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_236A42000, v2, OS_LOG_TYPE_INFO, "AAAttribution XPC connection interrupted. Lost connection.", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setConnectionInterrupted_(WeakRetained, v4, 1, v5, v6, v7, v8);

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_236A43CB4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    os_unfair_lock_unlock(WeakRetained + 3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_236A43F28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v86[3] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = objc_msgSend_requestTime(*(a1 + 40), a2, a3, a4, a5, a6, a7);
  objc_msgSend_timeIntervalSinceDate_(v8, v10, v9, v11, v12, v13, v14);
  v16 = v15;

  BucketForDaemonRunningTime = objc_msgSend__findBucketForDaemonRunningTime_(AAAttributionRequester, v17, v18, v19, v20, v21, v22, *(a1 + 56));
  v85[0] = @"tokenClientVendingTime";
  v29 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, (v16 * 1000.0), v25, v26, v27, v28);
  v86[0] = v29;
  v85[1] = @"tokenStatus";
  v35 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, *(a1 + 64), v31, v32, v33, v34);
  v86[1] = v35;
  v85[2] = @"daemonRunningTime";
  v41 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, BucketForDaemonRunningTime, v37, v38, v39, v40);
  v86[2] = v41;
  v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v86, v85, 3, v43, v44);

  if (*(a1 + 48))
  {
    v52 = objc_msgSend_mutableCopy(v45, v46, v47, v48, v49, v50, v51);
    v58 = objc_msgSend_componentsSeparatedByString_(*(a1 + 48), v53, @"-", v54, v55, v56, v57);
    if (objc_msgSend_count(v58, v59, v60, v61, v62, v63, v64))
    {
      v71 = objc_msgSend_firstObject(v58, v65, v66, v67, v68, v69, v70);
      objc_msgSend_setObject_forKey_(v52, v72, v71, @"storeFront", v73, v74, v75);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v52, v65, *(a1 + 48), @"storeFront", v68, v69, v70);
    }

    v82 = objc_msgSend_copy(v52, v76, v77, v78, v79, v80, v81);

    v45 = v82;
  }

  v83 = *MEMORY[0x277D85DE8];

  return v45;
}

void sub_236A44354(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, a5, a6, &buf, 0xCu);
}

id *sub_236A44770(id *a1, void *a2, char a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  if (a1 && v8)
  {
    v40.receiver = a1;
    v40.super_class = AAAttributionRequester;
    v10 = objc_msgSendSuper2(&v40, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      v18 = objc_msgSend_remoteObjectProxy(v11[2], v12, v13, v14, v15, v16, v17);
      v19 = v11[3];
      v11[3] = v18;

      *(v11 + 3) = 0;
      *(v11 + 9) = a3;
      objc_storeStrong(v11 + 4, a4);
      v20 = APPerfLogForCategory();
      v11[5] = os_signpost_id_generate(v20);

      v21 = APPerfLogForCategory();
      v22 = v21;
      v23 = v11[5];
      if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        HIDWORD(v41) = HIDWORD(v23);
        sub_236A44354(&dword_236A42000, v24, v25, v26, "Attribution Request", "id=%{public, name=id}lld", v27, v28, v40.receiver, v40.super_class, 0);
      }

      v29 = APPerfLogForCategory();
      v30 = v29;
      v31 = v11[5];
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        HIDWORD(v41) = HIDWORD(v31);
        sub_236A44354(&dword_236A42000, v32, v33, v34, "Token V3 Request", "id=%{public, name=id}lld", v35, v36, v40.receiver, v40.super_class, 0);
      }
    }

    a1 = v11;
    v37 = a1;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t sub_236A44948(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 32);
  if (v7)
  {
    return objc_msgSend_invalidate(*(v7 + 16), a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return objc_msgSend_invalidate(0, a2, a3, a4, a5, a6, a7);
  }
}

void sub_236A449A8(uint8_t *buf, uint64_t a2, os_log_t log, os_signpost_id_t a4)
{
  *buf = 134349056;
  *(buf + 4) = a2;
  _os_signpost_emit_with_name_impl(&dword_236A42000, log, OS_SIGNPOST_INTERVAL_END, a4, "Attribution Request", "id=%{public, name=id}lld", buf, 0xCu);
}