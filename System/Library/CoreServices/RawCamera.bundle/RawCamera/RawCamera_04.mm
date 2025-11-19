void *sub_23376A5DC(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_233728FF4(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_23376A630(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_23376A538(a1, a2);
  return a1;
}

void sub_23376A660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_2338F9818(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_23376A698(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.canon.cr3-raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".cr3.";
  v42[3] = &unk_284956D88;
  v42[4] = &unk_284956DA0;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_23376A990, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_23376AAA0, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_23376AAAC, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_23376AAB8, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_23376AAC4, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_23376A990(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  sub_233723C18(v2, &v3);
  sub_233725138();
}

void sub_23376AA5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  sub_233735A90(&a9);
  if (a13)
  {
    sub_2337239E8(a13);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23376AA48);
}

void sub_23376AAD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_23377B9B8();
}

double sub_23376AB6C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v5 = sub_23373245C(a1, a2, a3, a4, a5);
  *v5 = &unk_284906B70;
  *(v5 + 504) = 0;
  *(v5 + 512) = -1;
  *(v5 + 604) = 0;
  *(v5 + 608) = 0;
  *(v5 + 612) = 0;
  *(v5 + 616) = 0;
  *(v5 + 620) = 0;
  *(v5 + 624) = 0;
  *(v5 + 628) = 0;
  *(v5 + 632) = 0;
  *(v5 + 636) = 0;
  *(v5 + 640) = 0;
  *(v5 + 644) = 0;
  *(v5 + 648) = 0;
  *(v5 + 652) = 0;
  *(v5 + 656) = 0;
  *(v5 + 660) = 0;
  *(v5 + 664) = 0;
  *(v5 + 668) = 0;
  *(v5 + 672) = 0;
  *(v5 + 676) = 0;
  *(v5 + 680) = 0;
  *(v5 + 684) = 0;
  *(v5 + 688) = 0;
  *(v5 + 692) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 732) = 0;
  *(v5 + 736) = 0;
  *(v5 + 600) = 0;
  result = 0.0;
  *(v5 + 568) = 0u;
  *(v5 + 584) = 0u;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 0u;
  *(v5 + 520) = 0u;
  return result;
}

void sub_23376AC30(uint64_t a1)
{
  v720 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  sub_2337338AC(a1, &__p);
  LODWORD(__src) = 0;
  sub_233725F08(v708, &__p, &__src, 0);
  sub_233725FD4(v708);
  if (v697)
  {
    sub_2337239E8(v697);
  }

  sub_2337338AC(a1, &__p);
  sub_233735A18(v707, &__p, 2);
  sub_233735A90(v707);
  if (v697)
  {
    sub_2337239E8(v697);
  }

  sub_2337338AC(a1, &__p);
  v663 = sub_23376CF6C(a1, &__p, 0xFFFFFFFFLL, v2, v3);
  if (v697)
  {
    sub_2337239E8(v697);
  }

  v660 = (*(*a1 + 400))(a1);
  v659 = objc_msgSend_valueForKeyPath_(v663, v4, @"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT1", v5, v6);
  if (!v659)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v705[0] = MEMORY[0x277D85DD0];
  v705[1] = 3221225472;
  v705[2] = sub_23376D8B4;
  v705[3] = &unk_2789EEC28;
  v12 = v11;
  v706 = v12;
  v648 = v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v659, v13, v705, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v660, v16, v12, *MEMORY[0x277CD3490], v17);
  v655 = objc_msgSend_valueForKeyPath_(v663, v18, @"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT2", v19, v20);
  if (!v655)
  {
    v639 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v639, "RawCameraException");
    __cxa_throw(v639, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v25 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v21, v22, v23, v24);
  v703[0] = MEMORY[0x277D85DD0];
  v703[1] = 3221225472;
  v703[2] = sub_23376D9D4;
  v703[3] = &unk_2789EEC28;
  v26 = v25;
  v704 = v26;
  v662 = v26;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v655, v27, v703, v28, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v660, v30, v26, *MEMORY[0x277CD3038], v31);
  v658 = objc_msgSend_valueForKeyPath_(v663, v32, @"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT3", v33, v34);
  if (!v658)
  {
    v640 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v640, "RawCameraException");
    __cxa_throw(v640, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v39 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v35, v36, v37, v38);
  v701[0] = MEMORY[0x277D85DD0];
  v701[1] = 3221225472;
  v701[2] = sub_23376DAF4;
  v701[3] = &unk_2789EEC28;
  v40 = v39;
  v702 = v40;
  v647 = v40;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v658, v41, v701, v42, v43);
  objc_msgSend_setObject_forKeyedSubscript_(v660, v44, v40, *MEMORY[0x277CD33B8], v45);
  v654 = objc_msgSend_valueForKeyPath_(v663, v46, @"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT4", v47, v48);
  if (!v654)
  {
    v641 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v641, "RawCameraException");
    __cxa_throw(v641, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v53 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v49, v50, v51, v52);
  v699[0] = MEMORY[0x277D85DD0];
  v699[1] = 3221225472;
  v699[2] = sub_23376DC14;
  v699[3] = &unk_2789EEC28;
  v54 = v53;
  v700 = v54;
  v646 = v54;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v654, v55, v699, v56, v57);
  objc_msgSend_setObject_forKeyedSubscript_(v660, v58, v54, *MEMORY[0x277CD3258], v59);
  v64 = *(a1 + 112);
  if (v64)
  {
    objc_msgSend_bytes(v64, v60, v61, v62, v63);
    objc_msgSend_length(*(a1 + 112), v65, v66, v67, v68);
    CGImagePluginReadRawXMPSidecarProps();
  }

  else
  {
    v72 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v60, @"uuid-%@", v62, v63, qword_27DE37BA0);
    v76 = objc_msgSend_valueForKeyPath_(v663, v73, v72, v74, v75);

    if (v76)
    {
      v77 = v76;
      objc_msgSend_UTF8String(v76, v78, v79, v80, v81);
      objc_msgSend_length(v76, v82, v83, v84, v85);
      CGImagePluginReadRawXMPProps();
    }
  }

  v86 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"%@.val", v70, v71, *MEMORY[0x277CD34A8]);
  v90 = objc_msgSend_valueForKeyPath_(v659, v87, v86, v88, v89);
  v91 = v90;
  v96 = objc_msgSend_UTF8String(v90, v92, v93, v94, v95);

  v100 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v97, @"%@.val", v98, v99, *MEMORY[0x277CD34B0]);
  v104 = objc_msgSend_valueForKeyPath_(v659, v101, v100, v102, v103);
  v105 = v104;
  v110 = objc_msgSend_UTF8String(v104, v106, v107, v108, v109);

  if (v96)
  {
    sub_23372610C((a1 + 520), v96);
  }

  if (v110)
  {
    sub_23372610C((a1 + 544), v110);
  }

  v114 = objc_msgSend_valueForKeyPath_(v658, v111, @"ModelID.val", v112, v113);
  *(a1 + 512) = objc_msgSend_unsignedLongValue(v114, v115, v116, v117, v118);

  v122 = objc_msgSend_objectForKeyedSubscript_(v658, v119, @"SensorInfo", v120, v121);
  v661 = v122;
  if (!v122)
  {
    v642 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v642, "RawCameraException");
    __cxa_throw(v642, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v126 = objc_msgSend_valueForKeyPath_(v122, v123, @"parsedVal.SensorWidth", v124, v125);
  *(a1 + 576) = objc_msgSend_unsignedIntValue(v126, v127, v128, v129, v130);

  v134 = objc_msgSend_valueForKeyPath_(v661, v131, @"parsedVal.SensorHeight", v132, v133);
  *(a1 + 580) = objc_msgSend_unsignedIntValue(v134, v135, v136, v137, v138);

  v142 = objc_msgSend_valueForKeyPath_(v661, v139, @"parsedVal.SensorLeftBorder", v140, v141);
  *(a1 + 584) = objc_msgSend_unsignedIntValue(v142, v143, v144, v145, v146);

  v150 = objc_msgSend_valueForKeyPath_(v661, v147, @"parsedVal.SensorTopBorder", v148, v149);
  *(a1 + 588) = objc_msgSend_unsignedIntValue(v150, v151, v152, v153, v154);

  v158 = objc_msgSend_valueForKeyPath_(v661, v155, @"parsedVal.SensorRightBorder", v156, v157);
  *(a1 + 592) = objc_msgSend_unsignedIntValue(v158, v159, v160, v161, v162);

  v166 = objc_msgSend_valueForKeyPath_(v661, v163, @"parsedVal.SensorBottomBorder", v164, v165);
  *(a1 + 596) = objc_msgSend_unsignedIntValue(v166, v167, v168, v169, v170);

  v644 = objc_msgSend_objectForKeyedSubscript_(v662, v171, *MEMORY[0x277CD3148], v172, v173);
  v181 = objc_msgSend_intValue(v644, v174, v175, v176, v177) - 1;
  if (v181 < 7 && (objc_msgSend_objectForKeyedSubscript_(v662, v178, **(&unk_2789EECF0 + v181), v179, v180), (v182 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v645 = v182;
    LODWORD(v686[0]) = objc_msgSend_unsignedIntValue(v182, v178, v183, v179, v180);
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    v184 = sub_23375E5EC(a1 + 192, &__p);
    sub_23375538C((v184 + 56), v686, v686 + 4, 1uLL);
    if (SHIBYTE(v698) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v645 = 0;
  }

  v650 = objc_msgSend_objectForKeyedSubscript_(v662, v178, *MEMORY[0x277CD3060], v179, v180);
  if (v650)
  {
    objc_msgSend_doubleValue(v650, v185, v186, v187, v188);
    v190 = v189;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60(a1 + 288, &__p) + 56) = v190;
    if (SHIBYTE(v698) < 0)
    {
      operator delete(__p);
    }
  }

  v651 = objc_msgSend_objectForKeyedSubscript_(v662, v185, *MEMORY[0x277CD3158], v187, v188);
  if (v651)
  {
    objc_msgSend_doubleValue(v651, v191, v192, v193, v194);
    v196 = v195;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60(a1 + 312, &__p) + 56) = v196;
    if (SHIBYTE(v698) < 0)
    {
      operator delete(__p);
    }
  }

  v652 = objc_msgSend_objectForKeyedSubscript_(v662, v191, *MEMORY[0x277CD3068], v193, v194);
  if (v652)
  {
    objc_msgSend_doubleValue(v652, v197, v198, v199, v200);
    v202 = v201;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60(a1 + 336, &__p) + 56) = v202;
    if (SHIBYTE(v698) < 0)
    {
      operator delete(__p);
    }
  }

  v653 = objc_msgSend_objectForKeyedSubscript_(v662, v197, *MEMORY[0x277CD3088], v199, v200);
  if (v653)
  {
    objc_msgSend_doubleValue(v653, v203, v204, v205, v206);
    v208 = v207;
    sub_23372A488(&__p, "IFD0:EXIF");
    __src = &__p;
    *(sub_23377BB60(a1 + 384, &__p) + 56) = v208;
    if (SHIBYTE(v698) < 0)
    {
      operator delete(__p);
    }
  }

  v656 = objc_msgSend_valueForKeyPath_(v663, v203, @"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.THMB", v205, v206);
  if (v656)
  {
    v212 = objc_msgSend_objectForKeyedSubscript_(v656, v209, @"thumbnailOffset", v210, v211);
    v217 = v212;
    if (v212)
    {
      *(a1 + 664) = objc_msgSend_unsignedIntValue(v212, v213, v214, v215, v216);
      *(a1 + 668) = 1;
    }

    v221 = objc_msgSend_objectForKeyedSubscript_(v656, v218, @"thumbnailLength", v219, v220);
    v226 = v221;
    if (v221)
    {
      *(a1 + 672) = objc_msgSend_unsignedIntValue(v221, v222, v223, v224, v225);
      *(a1 + 676) = 1;
    }

    v230 = objc_msgSend_objectForKeyedSubscript_(v656, v227, @"thumbnailWidth", v228, v229);
    v235 = v230;
    if (v230)
    {
      *(a1 + 680) = objc_msgSend_unsignedIntValue(v230, v231, v232, v233, v234);
      *(a1 + 684) = 1;
    }

    v239 = objc_msgSend_objectForKeyedSubscript_(v656, v236, @"thumbnailHeight", v237, v238);
    v244 = v239;
    if (v239)
    {
      *(a1 + 688) = objc_msgSend_unsignedIntValue(v239, v240, v241, v242, v243);
      *(a1 + 692) = 1;
    }
  }

  v657 = objc_msgSend_valueForKeyPath_(v663, v209, @"uuid-EAF42B5E-1C98-4B88-B9FB-B7DC406E4D16.PRVW", v210, v211);
  if (v657)
  {
    v249 = objc_msgSend_objectForKeyedSubscript_(v657, v245, @"previewOffset", v247, v248);
    v254 = v249;
    if (v249)
    {
      *(a1 + 632) = objc_msgSend_unsignedIntValue(v249, v250, v251, v252, v253);
      *(a1 + 636) = 1;
    }

    v258 = objc_msgSend_objectForKeyedSubscript_(v657, v255, @"previewLength", v256, v257);
    v263 = v258;
    if (v258)
    {
      *(a1 + 640) = objc_msgSend_unsignedIntValue(v258, v259, v260, v261, v262);
      *(a1 + 644) = 1;
    }

    v267 = objc_msgSend_objectForKeyedSubscript_(v657, v264, @"previewWidth", v265, v266);
    v272 = v267;
    if (v267)
    {
      *(a1 + 648) = objc_msgSend_unsignedIntValue(v267, v268, v269, v270, v271);
      *(a1 + 652) = 1;
    }

    v276 = objc_msgSend_objectForKeyedSubscript_(v657, v273, @"previewHeight", v274, v275);
    v281 = v276;
    if (v276)
    {
      *(a1 + 656) = objc_msgSend_unsignedIntValue(v276, v277, v278, v279, v280);
      *(a1 + 660) = 1;
    }
  }

  v664 = objc_msgSend_array(MEMORY[0x277CBEB18], v245, v246, v247, v248);
  v694 = 0u;
  v695 = 0u;
  v692 = 0u;
  v693 = 0u;
  v285 = objc_msgSend_valueForKeyPath_(v663, v282, @"moov.trak", v283, v284);
  v665 = a1;
  v668 = objc_msgSend_countByEnumeratingWithState_objects_count_(v285, v286, &v692, v719, 16);
  if (v668)
  {
    v666 = *v693;
    v290 = v285;
    do
    {
      for (i = 0; i != v668; ++i)
      {
        if (*v693 != v666)
        {
          objc_enumerationMutation(v285);
        }

        v291 = *(*(&v692 + 1) + 8 * i);
        v292 = objc_msgSend_valueForKeyPath_(v291, v287, @"mdia.hdlr.ComponentSubType", v288, v289);
        v297 = objc_msgSend_unsignedIntValue(v292, v293, v294, v295, v296);

        if (v297 == 1835365473)
        {
          v298 = objc_msgSend_valueForKeyPath_(v291, v287, @"mdia.minf.stbl.co64.Metadata", v288, v289);
          v673 = objc_msgSend_objectForKeyedSubscript_(v298, v349, @"ExifInfo7", v350, v351);
          v676 = objc_msgSend_objectForKeyedSubscript_(v298, v352, @"ExifInfo8", v353, v354);
          v674 = objc_msgSend_objectForKeyedSubscript_(v298, v355, @"ExifInfo9", v356, v357);
          v670 = objc_msgSend_valueForKeyPath_(v676, v358, @"37500.ColorData.parsedVal", v359, v360);
          v364 = v298;
          if ((*(*a1 + 632))(a1))
          {
            obj = objc_msgSend_objectForKeyedSubscript_(v670, v361, @"WB_RGGBLevelsAsShot", v362, v363);
            if (obj && objc_msgSend_count(obj, v365, v366, v367, v368) == 4)
            {
              v369 = objc_msgSend_objectAtIndexedSubscript_(obj, v365, 0, v367, v368);
              LODWORD(__src) = objc_msgSend_unsignedIntValue(v369, v370, v371, v372, v373);
              v377 = objc_msgSend_objectAtIndexedSubscript_(obj, v374, 1, v375, v376);
              HIDWORD(__src) = objc_msgSend_unsignedIntValue(v377, v378, v379, v380, v381);
              v385 = objc_msgSend_objectAtIndexedSubscript_(obj, v382, 2, v383, v384);
              LODWORD(v717) = objc_msgSend_unsignedIntValue(v385, v386, v387, v388, v389);
              v393 = objc_msgSend_objectAtIndexedSubscript_(obj, v390, 3, v391, v392);
              HIDWORD(v717) = objc_msgSend_unsignedIntValue(v393, v394, v395, v396, v397);
              sub_23372A488(&__p, "AsShotWhiteBalance");
              v686[0] = &__p;
              v398 = sub_23375E5EC(a1 + 120, &__p);
              sub_23375538C((v398 + 56), &__src, &v718, 4uLL);
              if (SHIBYTE(v698) < 0)
              {
                operator delete(__p);
              }
            }

            v399 = objc_msgSend_objectForKeyedSubscript_(v670, v365, @"PerChannelBlackLevel", v367, v368);
            v404 = v399;
            if (v399 && objc_msgSend_count(v399, v400, v401, v402, v403) == 4)
            {
              v408 = 0;
              __p = 0;
              v697 = 0;
              v698 = 0;
              do
              {
                v409 = objc_msgSend_objectAtIndexedSubscript_(v404, v405, v408, v406, v407);
                objc_msgSend_doubleValue(v409, v410, v411, v412, v413);
                v415 = v697;
                if (v697 >= v698)
                {
                  v417 = __p;
                  v418 = v697 - __p;
                  v419 = (v697 - __p) >> 3;
                  v420 = v419 + 1;
                  if ((v419 + 1) >> 61)
                  {
                    sub_2337235BC();
                  }

                  v421 = v698 - __p;
                  if ((v698 - __p) >> 2 > v420)
                  {
                    v420 = v421 >> 2;
                  }

                  v422 = v421 >= 0x7FFFFFFFFFFFFFF8;
                  v423 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v422)
                  {
                    v423 = v420;
                  }

                  if (v423)
                  {
                    sub_233723798(&__p, v423);
                  }

                  v424 = (8 * v419);
                  v425 = &v424[-((v697 - __p) >> 3)];
                  *v424 = v414;
                  p_shared_owners = (v424 + 1);
                  memcpy(v425, v417, v418);
                  v426 = __p;
                  __p = v425;
                  v697 = p_shared_owners;
                  v698 = 0;
                  if (v426)
                  {
                    operator delete(v426);
                  }

                  v298 = v364;
                }

                else
                {
                  v697->__vftable = v414;
                  p_shared_owners = &v415->__shared_owners_;
                }

                v697 = p_shared_owners;

                ++v408;
              }

              while (v408 != 4);
              sub_23372A488(&__src, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
              v686[0] = &__src;
              v427 = (sub_23375E520(a1 + 264, &__src) + 56);
              if (v427 != &__p)
              {
                sub_23373176C(v427, __p, v697, (v697 - __p) >> 3);
              }

              if (SHIBYTE(v718) < 0)
              {
                operator delete(__src);
              }

              if (__p)
              {
                v697 = __p;
                operator delete(__p);
              }
            }
          }

          else
          {
            v428 = objc_msgSend_valueForKeyPath_(v676, v361, @"37500.ColorData.val", v362, v363);
            if (v428)
            {
              __p = 0;
              v697 = 0;
              v698 = 0;
              v717 = 0;
              __src = 0;
              v718 = 0;
              v688 = 0u;
              v689 = 0u;
              v690 = 0u;
              v691 = 0u;
              obj = v428;
              v434 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v429, &v688, v715, 16);
              if (v434)
              {
                v435 = *v689;
                do
                {
                  for (j = 0; j != v434; ++j)
                  {
                    if (*v689 != v435)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v437 = *(*(&v688 + 1) + 8 * j);
                    v438 = objc_msgSend_unsignedIntValue(v437, v430, v431, v432, v433);
                    v443 = v697;
                    if (v697 >= v698)
                    {
                      v445 = __p;
                      v446 = v697 - __p;
                      v447 = (v697 - __p) >> 2;
                      v448 = v447 + 1;
                      if ((v447 + 1) >> 62)
                      {
                        sub_2337235BC();
                      }

                      v449 = v698 - __p;
                      if ((v698 - __p) >> 1 > v448)
                      {
                        v448 = v449 >> 1;
                      }

                      v422 = v449 >= 0x7FFFFFFFFFFFFFFCLL;
                      v450 = 0x3FFFFFFFFFFFFFFFLL;
                      if (!v422)
                      {
                        v450 = v448;
                      }

                      if (v450)
                      {
                        sub_2337235D4(&__p, v450);
                      }

                      *(4 * v447) = v438;
                      v444 = (4 * v447 + 4);
                      memcpy(0, v445, v446);
                      v451 = __p;
                      __p = 0;
                      v697 = v444;
                      v698 = 0;
                      if (v451)
                      {
                        operator delete(v451);
                      }

                      v285 = v290;
                    }

                    else
                    {
                      LODWORD(v697->__vftable) = v438;
                      v444 = &v443->__vftable + 4;
                    }

                    v697 = v444;
                    objc_msgSend_doubleValue(v437, v439, v440, v441, v442);
                    v453 = v717;
                    if (v717 >= v718)
                    {
                      v455 = __src;
                      v456 = v717 - __src;
                      v457 = (v717 - __src) >> 3;
                      v458 = v457 + 1;
                      if ((v457 + 1) >> 61)
                      {
                        sub_2337235BC();
                      }

                      v459 = v718 - __src;
                      if ((v718 - __src) >> 2 > v458)
                      {
                        v458 = v459 >> 2;
                      }

                      v422 = v459 >= 0x7FFFFFFFFFFFFFF8;
                      v460 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!v422)
                      {
                        v460 = v458;
                      }

                      if (v460)
                      {
                        sub_233723798(&__src, v460);
                      }

                      *(8 * v457) = v452;
                      v454 = (8 * v457 + 8);
                      memcpy(0, v455, v456);
                      v461 = __src;
                      __src = 0;
                      v717 = v454;
                      v718 = 0;
                      if (v461)
                      {
                        operator delete(v461);
                      }

                      v285 = v290;
                    }

                    else
                    {
                      *v717 = v452;
                      v454 = v453 + 8;
                    }

                    v717 = v454;
                    v298 = v364;
                  }

                  v434 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v430, &v688, v715, 16);
                }

                while (v434);
              }

              a1 = v665;
              sub_23372A488(v686, "IFD0:EXIF:MAKERNOTE:ColorBalance1");
              v709 = v686;
              v462 = (sub_23375E5EC(v665 + 120, v686) + 56);
              if (v462 != &__p)
              {
                sub_233723454(v462, __p, v697, (v697 - __p) >> 2);
              }

              if (v687 < 0)
              {
                operator delete(v686[0]);
              }

              sub_23372A488(v686, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
              v709 = v686;
              v463 = (sub_23375E520(v665 + 264, v686) + 56);
              if (v463 != &__src)
              {
                sub_23373176C(v463, __src, v717, (v717 - __src) >> 3);
              }

              if (v687 < 0)
              {
                operator delete(v686[0]);
              }

              if (__src)
              {
                v717 = __src;
                operator delete(__src);
              }

              if (__p)
              {
                v697 = __p;
                operator delete(__p);
              }
            }

            else
            {
              obj = 0;
            }
          }

LABEL_152:
          goto LABEL_153;
        }

        if (v297 != 1986618469)
        {
          continue;
        }

        v298 = objc_msgSend_valueForKeyPath_(v291, v287, @"mdia.minf.stbl", v288, v289);
        v673 = objc_msgSend_valueForKeyPath_(v298, v299, @"stsz", v300, v301);
        v676 = objc_msgSend_valueForKeyPath_(v298, v302, @"co64", v303, v304);
        v308 = objc_msgSend_valueForKeyPath_(v298, v305, @"stsd.Entries.CRAW", v306, v307);
        v674 = v308;
        if (v308)
        {
          v312 = objc_msgSend_valueForKeyPath_(v308, v309, @"Extensions.JPEG", v310, v311);
          v313 = v312 == 0;

          if (v313)
          {
            v464 = objc_msgSend_valueForKeyPath_(v674, v314, @"Extensions.CMP1", v315, v316);
            v465 = v464 == 0;

            if (!v465)
            {
              v469 = objc_msgSend_objectForKeyedSubscript_(v674, v466, @"Width", v467, v468);
              v474 = objc_msgSend_unsignedIntValue(v469, v470, v471, v472, v473);

              v478 = objc_msgSend_objectForKeyedSubscript_(v674, v475, @"Height", v476, v477);
              v483 = objc_msgSend_unsignedIntValue(v478, v479, v480, v481, v482);

              v671 = objc_msgSend_valueForKeyPath_(v674, v484, @"Extensions.CMP1", v485, v486);
              v713[0] = @"Width";
              v490 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v487, v474, v488, v489);
              v714[0] = v490;
              v713[1] = @"Height";
              v494 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v491, v483, v492, v493);
              v714[1] = v494;
              v714[2] = v676;
              v713[2] = @"co64";
              v713[3] = @"CMP1";
              v714[3] = v671;
              v496 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v495, v714, v713, 4);
              objc_msgSend_addObject_(v664, v497, v496, v498, v499);
            }

            goto LABEL_153;
          }

          v317 = objc_msgSend_objectForKeyedSubscript_(v676, v314, @"offset", v315, v316);
          v322 = v317;
          if (v317)
          {
            *(a1 + 600) = objc_msgSend_unsignedIntValue(v317, v318, v319, v320, v321);
            *(a1 + 604) = 1;
          }

          v326 = objc_msgSend_objectForKeyedSubscript_(v673, v323, @"SampleSize", v324, v325);
          v331 = v326;
          if (v326)
          {
            *(a1 + 608) = objc_msgSend_unsignedIntValue(v326, v327, v328, v329, v330);
            *(a1 + 612) = 1;
          }

          v335 = objc_msgSend_objectForKeyedSubscript_(v674, v332, @"Width", v333, v334);
          v340 = v335;
          if (v335)
          {
            *(a1 + 616) = objc_msgSend_unsignedIntValue(v335, v336, v337, v338, v339);
            *(a1 + 620) = 1;
          }

          v344 = objc_msgSend_objectForKeyedSubscript_(v674, v341, @"Height", v342, v343);
          v670 = v344;
          if (v344)
          {
            *(a1 + 624) = objc_msgSend_unsignedIntValue(v344, v345, v346, v347, v348);
            *(a1 + 628) = 1;
          }

          goto LABEL_152;
        }

LABEL_153:
      }

      v668 = objc_msgSend_countByEnumeratingWithState_objects_count_(v285, v287, &v692, v719, 16);
    }

    while (v668);
  }

  objc_msgSend_sortUsingComparator_(v664, v500, &unk_284906DF0, v501, v502);
  if (objc_msgSend_count(v664, v503, v504, v505, v506))
  {
    v511 = objc_msgSend_firstObject(v664, v507, v508, v509, v510);
    v515 = objc_msgSend_objectForKeyedSubscript_(v511, v512, @"Width", v513, v514);
    *(a1 + 708) = objc_msgSend_unsignedIntValue(v515, v516, v517, v518, v519);

    v523 = objc_msgSend_objectForKeyedSubscript_(v511, v520, @"Height", v521, v522);
    *(a1 + 712) = objc_msgSend_unsignedIntValue(v523, v524, v525, v526, v527);

    v531 = objc_msgSend_valueForKeyPath_(v511, v528, @"CMP1.bayer_type", v529, v530);
    *(a1 + 716) = objc_msgSend_unsignedIntValue(v531, v532, v533, v534, v535);

    v539 = objc_msgSend_valueForKeyPath_(v511, v536, @"CMP1.tile_width", v537, v538);
    v643 = v539;
    v543 = objc_msgSend_valueForKeyPath_(v511, v540, @"CMP1.tile_height", v541, v542);
    v667 = v543;
    v547 = objc_msgSend_valueForKeyPath_(v511, v544, @"CMP1.dwt_level", v545, v546);
    v669 = v547;
    v551 = objc_msgSend_valueForKeyPath_(v511, v548, @"CMP1.tile_h_overlap", v549, v550);
    v672 = v551;
    v555 = objc_msgSend_valueForKeyPath_(v511, v552, @"CMP1.tile_v_overlap", v553, v554);
    v559 = objc_msgSend_valueForKeyPath_(v511, v556, @"CMP1.plane_num", v557, v558);
    v675 = v559;
    v563 = objc_msgSend_valueForKeyPath_(v511, v560, @"co64.tile_headers", v561, v562);
    v677 = v563;
    v679 = objc_msgSend_valueForKeyPath_(v511, v564, @"CMP1.ct_mode", v565, v566);
    obja = objc_msgSend_valueForKeyPath_(v511, v567, @"CMP1.bit_depth", v568, v569);
    if (*(a1 + 732) == 1)
    {
      objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v570, *(a1 + 728), v571, v572);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v570, 0, v571, v572);
    }
    v573 = ;
    v711[0] = @"tile_width";
    v711[1] = @"tile_height";
    v712[0] = v539;
    v712[1] = v543;
    v711[2] = @"dwt_level";
    v711[3] = @"tile_h_overlap";
    v712[2] = v547;
    v712[3] = v551;
    v711[4] = @"tile_v_overlap";
    v711[5] = @"plane_num";
    v712[4] = v555;
    v712[5] = v559;
    v711[6] = @"tile_headers";
    v711[7] = @"ct_mode";
    v712[6] = v563;
    v712[7] = v679;
    v711[8] = @"bit_depth";
    v711[9] = @"version";
    v712[8] = obja;
    v712[9] = v573;
    v575 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v574, v712, v711, 10);
    v576 = *(a1 + 720);
    *(a1 + 720) = v575;

    *(a1 + 572) = 0;
    v580 = objc_msgSend_valueForKeyPath_(v511, v577, @"CMP1.sub_header_part_length", v578, v579);
    v585 = objc_msgSend_unsignedIntValue(v580, v581, v582, v583, v584);

    v684 = 0u;
    v685 = 0u;
    v682 = 0u;
    v683 = 0u;
    v589 = objc_msgSend_valueForKeyPath_(v511, v586, @"co64.tile_headers", v587, v588);
    v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v589, v590, &v682, v710, 16);
    if (v594)
    {
      v595 = *v683;
      do
      {
        for (k = 0; k != v594; ++k)
        {
          if (*v683 != v595)
          {
            objc_enumerationMutation(v589);
          }

          v597 = objc_msgSend_objectForKeyedSubscript_(*(*(&v682 + 1) + 8 * k), v591, @"tile_data_length", v592, v593);
          a1 = v665;
          *(v665 + 572) += objc_msgSend_unsignedIntValue(v597, v598, v599, v600, v601);
        }

        v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v589, v591, &v682, v710, 16);
      }

      while (v594);
    }

    v605 = objc_msgSend_valueForKeyPath_(v511, v602, @"co64.offset", v603, v604);
    *(a1 + 568) = objc_msgSend_unsignedIntValue(v605, v606, v607, v608, v609) + v585;
  }

  if (objc_msgSend_count(v664, v507, v508, v509, v510) >= 2)
  {
    v613 = objc_msgSend_objectAtIndexedSubscript_(v664, v610, 1, v611, v612);
    v617 = objc_msgSend_objectForKeyedSubscript_(v613, v614, @"Width", v615, v616);
    *(a1 + 696) = objc_msgSend_unsignedIntValue(v617, v618, v619, v620, v621);

    v625 = objc_msgSend_objectForKeyedSubscript_(v613, v622, @"Height", v623, v624);
    *(a1 + 700) = objc_msgSend_unsignedIntValue(v625, v626, v627, v628, v629);

    v633 = objc_msgSend_valueForKeyPath_(v613, v630, @"CMP1.bayer_type", v631, v632);
    *(a1 + 704) = objc_msgSend_unsignedIntValue(v633, v634, v635, v636, v637);
  }

  objc_storeStrong((a1 + 504), v663);

  objc_autoreleasePoolPop(context);
}

id sub_23376CF6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v15 = *MEMORY[0x277D85DE8];
  for (i = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  {
    if (sub_23376E438(*a2) < 1)
    {
      break;
    }

    v8 = sub_233725614(*a2);
    v13 = bswap32(sub_233725614(*a2));
    if (v8 >= 8)
    {
      v9 = *a2;
      v14 = v8 - 8;
      sub_233725D94(v9, &v14);
    }

    v10 = *a2;
    LODWORD(v12) = 0;
    (*(*v10 + 40))(v10, &v12, 2);
  }

  return i;
}

void sub_23376D7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_2337239E8(a29);
  }

  _Unwind_Resume(a1);
}

void sub_23376D8B4(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v9 = objc_msgSend_valueForKey_(v5, v6, @"hide", v7, v8);
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    v21 = objc_msgSend_valueForKey_(v5, v15, @"parsedVal", v16, v17);
    if (v21)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v18, v21, v25, v20);
    }

    else
    {
      v24 = objc_msgSend_valueForKey_(v5, v18, @"val", v19, v20);
      if (v24)
      {
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v22, v24, v25, v23);
      }
    }
  }
}

void sub_23376D9D4(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v9 = objc_msgSend_valueForKey_(v5, v6, @"hide", v7, v8);
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    v21 = objc_msgSend_valueForKey_(v5, v15, @"parsedVal", v16, v17);
    if (v21)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v18, v21, v25, v20);
    }

    else
    {
      v24 = objc_msgSend_valueForKey_(v5, v18, @"val", v19, v20);
      if (v24)
      {
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v22, v24, v25, v23);
      }
    }
  }
}

void sub_23376DAF4(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v9 = objc_msgSend_valueForKey_(v5, v6, @"hide", v7, v8);
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    v21 = objc_msgSend_valueForKey_(v5, v15, @"parsedVal", v16, v17);
    if (v21)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v18, v21, v25, v20);
    }

    else
    {
      v24 = objc_msgSend_valueForKey_(v5, v18, @"val", v19, v20);
      if (v24)
      {
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v22, v24, v25, v23);
      }
    }
  }
}

void sub_23376DC14(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  v9 = objc_msgSend_valueForKey_(v5, v6, @"hide", v7, v8);
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    v21 = objc_msgSend_valueForKey_(v5, v15, @"parsedVal", v16, v17);
    if (v21)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v18, v21, v25, v20);
    }

    else
    {
      v24 = objc_msgSend_valueForKey_(v5, v18, @"val", v19, v20);
      if (v24)
      {
        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v22, v24, v25, v23);
      }
    }
  }
}

uint64_t sub_23376DD34(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v8 = objc_msgSend_valueForKey_(a3, v5, @"Width", v6, v7);
  v12 = objc_msgSend_valueForKey_(v4, v9, @"Width", v10, v11);
  v16 = objc_msgSend_compare_(v8, v13, v12, v14, v15);

  return v16;
}

void sub_23376DDB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23376DDE0(uint64_t a1)
{
  (*(*a1 + 384))(&v2);
  (*(*a1 + 424))(a1);
  sub_23377BC0C();
}

void sub_23376DEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23376DEDC(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = objc_msgSend_valueForKeyPath_(*(a1 + 504), a2, @"moov.uuid-85C0B687-820F-11E0-8111-F4CE462B6A48.CMT1.Orientation.val", a3, a4);
  v12 = v7;
  if (v7)
  {
    v13 = objc_msgSend_intValue(v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = 1;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if (*(a1 + 668) == 1 && *(a1 + 676) == 1)
  {
    sub_233723AE0(&v15, (a1 + 664));
    if ((*(a1 + 676) & 1) == 0)
    {
      sub_233728FA8();
    }

    v14 = *(a1 + 672);
    sub_23373401C(a1, &v15, &v14, v13, &v16);
    if (v16)
    {
      sub_233753C74(a5, &v16);
    }

    if (*(&v16 + 1))
    {
      sub_2337239E8(*(&v16 + 1));
    }
  }

  if (*(a1 + 636) == 1 && *(a1 + 644) == 1)
  {
    sub_233723AE0(&v15, (a1 + 632));
    if ((*(a1 + 644) & 1) == 0)
    {
      sub_233728FA8();
    }

    v14 = *(a1 + 640);
    sub_23373401C(a1, &v15, &v14, v13, &v16);
    if (v16)
    {
      sub_233753C74(a5, &v16);
    }

    if (*(&v16 + 1))
    {
      sub_2337239E8(*(&v16 + 1));
    }
  }

  if (*(a1 + 604) == 1 && *(a1 + 612) == 1)
  {
    sub_233723AE0(&v15, (a1 + 600));
    if ((*(a1 + 612) & 1) == 0)
    {
      sub_233728FA8();
    }

    v14 = *(a1 + 608);
    sub_23373401C(a1, &v15, &v14, v13, &v16);
    if (v16)
    {
      sub_233753C74(a5, &v16);
    }

    if (*(&v16 + 1))
    {
      sub_2337239E8(*(&v16 + 1));
    }
  }
}

void sub_23376E0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);

  _Unwind_Resume(a1);
}

char *sub_23376E0FC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[543] < 0)
  {
    return sub_233731FB8(a2, *(result + 65), *(result + 66));
  }

  *a2 = *(result + 520);
  *(a2 + 16) = *(result + 67);
  return result;
}

char *sub_23376E12C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[567] < 0)
  {
    return sub_233731FB8(a2, *(result + 68), *(result + 69));
  }

  *a2 = *(result + 34);
  *(a2 + 16) = *(result + 70);
  return result;
}

uint64_t sub_23376E160(uint64_t a1)
{
  v1 = *(a1 + 716) - 1;
  if (v1 > 2)
  {
    return 2492765332;
  }

  else
  {
    return dword_233904994[v1];
  }
}

uint64_t sub_23376E1CC(_DWORD *a1)
{
  v1 = a1[146];
  v2 = a1[147];
  v3 = a1[148] - v1;
  v4 = a1[149] - v2;
  sub_2337238F0(&v6, v1, v2);
  sub_2337238F0(&v7, v3 + 1, v4 + 1);
  return v6;
}

void sub_23376E230(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 440))(a1);
  snprintf(__str, 0x10uLL, "%u", a1[128]);
  snprintf(__s, 0x10uLL, "%d", v4);
  snprintf(v7, 0x10uLL, "%d", HIDWORD(v4));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_23372A488(__p, "cr3");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "canon");
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __s);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, v7);
  sub_233735478(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23376E3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23376E438(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v4 = (*(*a1 + 48))(a1);
  v5 = v2 - sub_233751844(&v4);
  sub_233723AE0(&v6, &v5);
  return v6;
}

id sub_23376E4D4(uint64_t a1, uint64_t *a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = sub_233725614(*a2);
  v4 = sub_233725614(*a2);
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v13 = (*(**a2 + 16))() - 8;
  if (v13 >= 4)
  {
    v14 = v13 >> 2;
    do
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = sub_233725614(*a2);
      v20 = objc_msgSend_numberWithUnsignedInt_(v15, v17, v16, v18, v19);
      objc_msgSend_addObject_(v9, v21, v20, v22, v23);

      --v14;
    }

    while (v14);
  }

  v32[0] = @"majorBrand";
  v24 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v10, v3, v11, v12);
  v33[0] = v24;
  v32[1] = @"minorVersion";
  v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, v4, v26, v27);
  v32[2] = @"compatibleBrands";
  v33[1] = v28;
  v33[2] = v9;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v33, v32, 3);

  return v30;
}

id sub_23376E6B8(uint64_t a1, uint64_t *a2)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  if (v9 >= 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v10 = v9;
  if (!v8 && v9 == 1)
  {
    v8 = sub_233725614(*a2);
  }

  v11 = sub_23376CF6C(a1, a2, v10);
  v27[0] = @"Version";
  v15 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, v4, v13, v14);
  v28[0] = v15;
  v27[1] = @"Flags";
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, (v5 << 16) | (v6 << 8) | v7, v17, v18);
  v28[1] = v19;
  v27[2] = @"SampleSize";
  v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, v8, v21, v22);
  v27[3] = @"Entries";
  v28[2] = v23;
  v28[3] = v11;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v28, v27, 4);

  return v25;
}

__CFString *sub_23376E8E0(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v2 = *a2;
  v8 = (*(**a2 + 16))(*a2);
  if (sub_2337257E8(v2, &v8, __p))
  {
    if (v10 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, __p, v4, v5);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, __p[0], v4, v5);
    }
    v6 = ;
  }

  else
  {
    v6 = &stru_284938540;
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_23376E9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23376E9C8(uint64_t a1, uint64_t *a2)
{
  sub_233725614(*a2);
  v4 = sub_233725614(*a2);

  return sub_23376CF6C(a1, a2, v4);
}

id sub_23376EA18(uint64_t a1, uint64_t *a2)
{
  v53[8] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  v47 = sub_233725614(*a2);
  __p[0] = 0;
  __p[1] = 0;
  v51 = 0;
  v11 = *a2;
  v48 = sub_23376E438(v11);
  sub_233726938(&v49, &v48);
  sub_2337257E8(v11, &v49, __p);
  if (v51 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, __p, v13, v14);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, __p[0], v13, v14);
  }
  v46 = ;
  v52[0] = @"Version";
  v18 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v15, v3, v16, v17);
  v53[0] = v18;
  v52[1] = @"Flags";
  v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, (v4 << 16) | (v5 << 8) | v6, v20, v21);
  v53[1] = v22;
  v52[2] = @"ComponentType";
  v26 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, v7, v24, v25);
  v53[2] = v26;
  v52[3] = @"ComponentSubType";
  v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, v8, v28, v29);
  v53[3] = v30;
  v52[4] = @"Component";
  v34 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, v9, v32, v33);
  v53[4] = v34;
  v52[5] = @"ComponentFlags";
  v38 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v35, v10, v36, v37);
  v53[5] = v38;
  v52[6] = @"ComponentFlagsMask";
  v42 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v39, v47, v40, v41);
  v52[7] = @"ComponentName";
  v53[6] = v42;
  v53[7] = v46;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v53, v52, 8);

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
  }

  return v44;
}

void sub_23376ECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_23376ED5C(uint64_t a1, uint64_t *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_23376CF6C(a1, a2, v8);
  v21[0] = @"Version";
  v13 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v10, v4, v11, v12);
  v22[0] = v13;
  v21[1] = @"Flags";
  v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, (v5 << 16) | (v6 << 8) | v7, v15, v16);
  v21[2] = @"Entries";
  v22[1] = v17;
  v22[2] = v9;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v22, v21, 3);

  return v19;
}

id sub_23376EEE4(uint64_t a1, uint64_t *a2)
{
  v99[18] = *MEMORY[0x277D85DE8];
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v4 = sub_2337255C0(*a2);
  v5 = sub_2337255C0(*a2);
  v6 = sub_2337255C0(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v91 = sub_233725614(*a2);
  v89 = sub_2337255C0(*a2);
  v88 = sub_2337255C0(*a2);
  v87 = sub_2337255C0(*a2);
  v86 = sub_2337255C0(*a2);
  v85 = sub_2337255C0(*a2);
  v84 = sub_2337255C0(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_2337255C0(*a2);
  v11 = sub_233725510(*a2);
  __p[0] = 0;
  __p[1] = 0;
  v97 = 0;
  v12 = *a2;
  v95 = v11;
  sub_2337257E8(v12, &v95, __p);
  v13 = *a2;
  v95 = 31 - v11;
  (*(*v13 + 40))(v13, &v95, 1);
  v83 = sub_2337255C0(*a2);
  v14 = sub_2337255C0(*a2);
  sub_233725614(*a2);
  v93 = sub_23376CF6C(a1, a2, 0xFFFFFFFFLL);
  if (v97 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, __p, v16, v17);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, __p[0], v16, v17);
  }
  v94 = ;
  v98[0] = @"DataReference";
  v82 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v18, v4, v19, v20);
  v99[0] = v82;
  v98[1] = @"Version";
  v81 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v21, v5, v22, v23);
  v99[1] = v81;
  v98[2] = @"RevisionLevel";
  v80 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v24, v6, v25, v26);
  v99[2] = v80;
  v98[3] = @"Vendor";
  v79 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, v7, v28, v29);
  v99[3] = v79;
  v98[4] = @"TemporalQuality";
  v78 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v30, v8, v31, v32);
  v99[4] = v78;
  v98[5] = @"SpatialQuality";
  v77 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v33, v91, v34, v35);
  v99[5] = v77;
  v98[6] = @"Width";
  v90 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v36, v89, v37, v38);
  v99[6] = v90;
  v98[7] = @"Height";
  v92 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v39, v88, v40, v41);
  v99[7] = v92;
  v98[8] = @"HorizontalRes";
  v45 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v42, v87, v43, v44);
  v99[8] = v45;
  v98[9] = @"HorizontalResDec";
  v49 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v46, v86, v47, v48);
  v99[9] = v49;
  v98[10] = @"VerticalRes";
  v53 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v50, v85, v51, v52);
  v99[10] = v53;
  v98[11] = @"VerticalResDec";
  v57 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v54, v84, v55, v56);
  v99[11] = v57;
  v98[12] = @"DataSize";
  v61 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v58, v9, v59, v60);
  v99[12] = v61;
  v98[13] = @"FrameCount";
  v65 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v62, v10, v63, v64);
  v99[13] = v65;
  v99[14] = v94;
  v98[14] = @"CompressorName";
  v98[15] = @"Depth";
  v69 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v66, v83, v67, v68);
  v99[15] = v69;
  v98[16] = @"ColorTableID";
  v73 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v70, v14, v71, v72);
  v98[17] = @"Extensions";
  v99[16] = v73;
  v99[17] = v93;
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, v99, v98, 18);

  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p[0]);
  }

  return v75;
}

void sub_23376F3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_23376F530(uint64_t a1, uint64_t *a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v27 = sub_2337255C0(*a2);
  v3 = sub_233725614(*a2);
  for (i = sub_233755CB8(v3);
  {
    sub_2337255C0(*a2);
    v8 = sub_2337255C0(*a2);
    v9 = sub_233725614(*a2);
    v30[0] = @"tagID";
    v13 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v10, v8, v11, v12);
    v30[1] = @"tagSize";
    v31[0] = v13;
    v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, v9, v15, v16);
    v31[1] = v17;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v31, v30, 2);
    objc_msgSend_addObject_(i, v20, v19, v21, v22);
  }

  v28[0] = @"DataReference";
  v23 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v4, v27, v5, v6);
  v28[1] = @"Tags";
  v29[0] = v23;
  v29[1] = i;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v29, v28, 2);

  return v25;
}

id sub_23376F74C(uint64_t a1, uint64_t *a2)
{
  v196[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2337255C0(*a2);
  v5 = sub_2337255C0(*a2);
  v6 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v186 = sub_233725614(*a2);
  v7 = sub_233725614(*a2);
  v184 = sub_233725614(*a2);
  v179 = sub_233725614(*a2);
  v8 = sub_233725510(*a2);
  v182 = sub_233725510(*a2);
  v175 = sub_233725510(*a2);
  v176 = sub_233725510(*a2);
  v174 = sub_233725614(*a2);
  v173 = sub_233725510(*a2);
  sub_233725510(*a2);
  sub_2337255C0(*a2);
  if (v6 == 256)
  {
    if ((*(a1 + 732) & 1) == 0)
    {
      *(a1 + 732) = 1;
    }

    *(a1 + 728) = 256;
    v9 = v179;
  }

  else if (v6 == 512)
  {
    v9 = v179;
    if ((*(a1 + 732) & 1) == 0)
    {
      *(a1 + 732) = 1;
    }

    *(a1 + 728) = 512;
  }

  else
  {
    v9 = v179;
    if ((*(a1 + 732) & 1) == 0)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  if (*(a1 + 728) == 256)
  {
    v10 = 65280;
  }

  else
  {
    v10 = 65296;
  }

  if (v10 != v4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v186 >> 5 >= 0xC35)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v7 > 0x1869F)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v186)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v7)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!v184)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v186 < v184)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v7 < v9)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v170 = v6;
  v172 = v8;
  v177 = v182 >> 4;
  v188 = sub_233755CB8(v177);
  if (v182 >= 0x10)
  {
    v15 = v177;
    do
    {
      v16 = sub_233725510(*a2);
      v17 = sub_233725510(*a2);
      sub_2337255C0(*a2);
      v195[0] = @"sample_width";
      v21 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v18, v16, v19, v20);
      v195[1] = @"sample_height";
      v196[0] = v21;
      v25 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v22, v17, v23, v24);
      v196[1] = v25;
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v196, v195, 2);
      objc_msgSend_addObject_(v188, v28, v27, v29, v30);

      --v15;
    }

    while (v15);
  }

  v181 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  v193[0] = @"marker_code_main_header";
  v194[0] = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v31, v4, v32, v33);
  v193[1] = @"main_header_length";
  v168 = v194[0];
  v169 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v34, v5, v35, v36);
  v194[1] = v169;
  v193[2] = @"revision";
  v171 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v37, v170, v38, v39);
  v194[2] = v171;
  v193[3] = @"frame_width";
  v167 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v40, v186, v41, v42);
  v194[3] = v167;
  v193[4] = @"frame_height";
  v166 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, v7, v44, v45);
  v194[4] = v166;
  v193[5] = @"tile_width";
  v165 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v46, v184, v47, v48);
  v194[5] = v165;
  v193[6] = @"tile_height";
  v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, v179, v50, v51);
  v53 = v7 / v179 * (v186 / v184);
  v187 = v52;
  v194[6] = v52;
  v193[7] = @"tile_num";
  v185 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v54, v53, v55, v56);
  v194[7] = v185;
  v193[8] = @"bit_depth";
  v180 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v57, v172, v58, v59);
  v194[8] = v180;
  v193[9] = @"plane_num";
  v178 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v60, v177, v61, v62);
  v194[9] = v178;
  v193[10] = @"bayer_type";
  v183 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v63, v182 & 0xF, v64, v65);
  v194[10] = v183;
  v193[11] = @"ct_mode";
  v69 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v66, v175 >> 4, v67, v68);
  v194[11] = v69;
  v193[12] = @"dwt_level";
  v73 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v70, v175 & 0xF, v71, v72);
  v194[12] = v73;
  v193[13] = @"tile_h_overlap";
  v77 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v74, v176 >> 7, v75, v76);
  v194[13] = v77;
  v193[14] = @"tile_v_overlap";
  v81 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v78, (v176 >> 6) & 1, v79, v80);
  v194[14] = v81;
  v193[15] = @"sub_header_part_length";
  v85 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v82, v174, v83, v84);
  v194[15] = v85;
  v193[16] = @"main_extension_flag";
  v89 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v86, (v173 >> 7) & 1, v87, v88);
  v193[17] = @"planes";
  v194[16] = v89;
  v194[17] = v188;
  v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v90, v194, v193, 18);
  objc_msgSend_addEntriesFromDictionary_(v181, v92, v91, v93, v94);

  if (v173 < 0)
  {
    v95 = sub_233725614(*a2);
    v96 = sub_233725510(*a2);
    sub_2337255C0(*a2);
    v97 = sub_233725510(*a2);
    v191[0] = @"main_extension_header_data_length";
    v101 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v98, v95, v99, v100);
    v102 = v96;
    v192[0] = v101;
    v191[1] = @"buffer_model_info_flag";
    v106 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v103, (v96 >> 7) & 1, v104, v105);
    v192[1] = v106;
    v191[2] = @"user_info_flag";
    v110 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v107, v97 & 1, v108, v109);
    v192[2] = v110;
    v112 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v111, v192, v191, 3);
    objc_msgSend_addEntriesFromDictionary_(v181, v113, v112, v114, v115);

    if (v102 < 0)
    {
      v119 = sub_233725614(*a2);
      v120 = sub_233725614(*a2);
      v121 = sub_233725614(*a2);
      v122 = sub_233725614(*a2);
      v123 = sub_233725614(*a2);
      v124 = sub_233725614(*a2);
      v189[0] = @"bit_rate_value_minus1";
      v128 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v125, v119, v126, v127);
      v190[0] = v128;
      v189[1] = @"bit_rate_scale";
      v132 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v129, v120, v130, v131);
      v190[1] = v132;
      v189[2] = @"buffersize_value_minus1";
      v136 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v133, v121, v134, v135);
      v190[2] = v136;
      v189[3] = @"buffersize_scale";
      v140 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v137, v122, v138, v139);
      v190[3] = v140;
      v189[4] = @"num_units_in_tick";
      v144 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v141, v123, v142, v143);
      v190[4] = v144;
      v189[5] = @"time_scale";
      v148 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v145, v124, v146, v147);
      v190[5] = v148;
      v150 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v149, v190, v189, 6);
      objc_msgSend_addEntriesFromDictionary_(v181, v151, v150, v152, v153);
    }

    if ((*(a1 + 732) & 1) == 0)
    {
      sub_233728FA8();
    }

    if (*(a1 + 728) == 512)
    {
      v154 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v116, (v102 >> 6) & 1, v117, v118);
      objc_msgSend_setObject_forKeyedSubscript_(v181, v155, v154, @"bit_depth_transformation_info_flag", v156);

      if ((v102 >> 6))
      {
        v157 = sub_233725614(*a2);
        v161 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v158, HIBYTE(v157), v159, v160);
        objc_msgSend_setObject_forKeyedSubscript_(v181, v162, v161, @"bit_depth_before_transformation", v163);
      }
    }
  }

  return v181;
}

id sub_233770440(uint64_t a1, uint64_t *a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  v11 = sub_2337255C0(*a2);
  v47 = sub_2337255C0(*a2);
  v48[0] = @"Version";
  v15 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, v3, v13, v14);
  v49[0] = v15;
  v48[1] = @"Flags";
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, (v4 << 16) | (v5 << 8) | v6, v17, v18);
  v49[1] = v19;
  v48[2] = @"CreationTime";
  v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, v7, v21, v22);
  v49[2] = v23;
  v48[3] = @"ModificationTime";
  v27 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v24, v8, v25, v26);
  v49[3] = v27;
  v48[4] = @"TimeScale";
  v31 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v28, v9, v29, v30);
  v49[4] = v31;
  v48[5] = @"Duration";
  v35 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v32, v10, v33, v34);
  v49[5] = v35;
  v48[6] = @"Language";
  v39 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v36, v11, v37, v38);
  v49[6] = v39;
  v48[7] = @"Quality";
  v43 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v40, v47, v41, v42);
  v49[7] = v43;
  v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v49, v48, 8);

  return v45;
}

id sub_233770718(uint64_t a1, uint64_t *a2)
{
  v134[16] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  v129 = sub_233725614(*a2);
  v127 = sub_2337255C0(*a2);
  sub_233725614(*a2);
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v125 = sub_233725614(*a2);
  v123 = sub_233725614(*a2);
  v121 = sub_233725614(*a2);
  v119 = sub_233725614(*a2);
  v117 = sub_233725614(*a2);
  v115 = sub_233725614(*a2);
  v113 = sub_233725614(*a2);
  v111 = sub_233725614(*a2);
  v110 = sub_233725614(*a2);
  v109 = sub_233725614(*a2);
  v108 = sub_233725614(*a2);
  v107 = sub_233725614(*a2);
  v106 = sub_233725614(*a2);
  v105 = sub_233725614(*a2);
  v104 = sub_233725614(*a2);
  v11 = sub_233725614(*a2);
  v133[0] = @"Version";
  v131 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, v3, v13, v14);
  v134[0] = v131;
  v133[1] = @"Flags";
  v103 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v15, (v4 << 16) | (v5 << 8) | v6, v16, v17);
  v134[1] = v103;
  v133[2] = @"CreationTime";
  v102 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v7, v19, v20);
  v134[2] = v102;
  v133[3] = @"ModificationTime";
  v101 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v21, v8, v22, v23);
  v134[3] = v101;
  v133[4] = @"TimeScale";
  v100 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v24, v9, v25, v26);
  v134[4] = v100;
  v133[5] = @"Duration";
  v99 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, v10, v28, v29);
  v134[5] = v99;
  v133[6] = @"PreferredRate";
  v130 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v30, v129, v31, v32);
  v134[6] = v130;
  v133[7] = @"PreferredVolume";
  v128 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v33, v127, v34, v35);
  v134[7] = v128;
  v133[8] = @"Matrix";
  v126 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v36, v125, v37, v38);
  v132[0] = v126;
  v124 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v39, v123, v40, v41);
  v132[1] = v124;
  v122 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v42, v121, v43, v44);
  v132[2] = v122;
  v120 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v45, v119, v46, v47);
  v132[3] = v120;
  v118 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v48, v117, v49, v50);
  v132[4] = v118;
  v116 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v51, v115, v52, v53);
  v132[5] = v116;
  v114 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v54, v113, v55, v56);
  v132[6] = v114;
  v112 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v57, v111, v58, v59);
  v132[7] = v112;
  v63 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v60, v110, v61, v62);
  v64 = v11;
  v132[8] = v63;
  v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v65, v132, 9, v66);
  v134[8] = v67;
  v133[9] = @"PreviewTime";
  v71 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v68, v109, v69, v70);
  v134[9] = v71;
  v133[10] = @"PreviewDuration";
  v75 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v72, v108, v73, v74);
  v134[10] = v75;
  v133[11] = @"PosterTime";
  v79 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v76, v107, v77, v78);
  v134[11] = v79;
  v133[12] = @"SelectionTime";
  v83 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v80, v106, v81, v82);
  v134[12] = v83;
  v133[13] = @"SelectionDuration";
  v87 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v84, v105, v85, v86);
  v134[13] = v87;
  v133[14] = @"CurrentTime";
  v91 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v88, v104, v89, v90);
  v134[14] = v91;
  v133[15] = @"NextTrackID";
  v95 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v92, v64, v93, v94);
  v134[15] = v95;
  v97 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v96, v134, v133, 16);

  return v97;
}

id sub_233770E60(uint64_t a1, uint64_t *a2)
{
  v124[14] = *MEMORY[0x277D85DE8];
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725614(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  sub_233725614(*a2);
  v10 = sub_233725614(*a2);
  sub_233725660(*a2);
  v119 = sub_2337255C0(*a2);
  v117 = sub_2337255C0(*a2);
  v115 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v113 = sub_233725614(*a2);
  v111 = sub_233725614(*a2);
  v109 = sub_233725614(*a2);
  v107 = sub_233725614(*a2);
  v105 = sub_233725614(*a2);
  v103 = sub_233725614(*a2);
  v102 = sub_233725614(*a2);
  v101 = sub_233725614(*a2);
  v100 = sub_233725614(*a2);
  v99 = sub_2337255C0(*a2);
  v98 = sub_2337255C0(*a2);
  v97 = sub_2337255C0(*a2);
  v11 = sub_2337255C0(*a2);
  v123[0] = @"Version";
  v121 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, v3, v13, v14);
  v124[0] = v121;
  v123[1] = @"Flags";
  v96 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v15, (v4 << 16) | (v5 << 8) | v6, v16, v17);
  v124[1] = v96;
  v123[2] = @"CreationTime";
  v95 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v7, v19, v20);
  v124[2] = v95;
  v123[3] = @"ModificationTime";
  v94 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v21, v8, v22, v23);
  v124[3] = v94;
  v123[4] = @"TrackID";
  v93 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v24, v9, v25, v26);
  v124[4] = v93;
  v123[5] = @"Duration";
  v92 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, v10, v28, v29);
  v124[5] = v92;
  v123[6] = @"Layer";
  v120 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v30, v119, v31, v32);
  v124[6] = v120;
  v123[7] = @"AlternateGroup";
  v118 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v33, v117, v34, v35);
  v124[7] = v118;
  v123[8] = @"Volume";
  v116 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v36, v115, v37, v38);
  v124[8] = v116;
  v123[9] = @"Matrix";
  v114 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v39, v113, v40, v41);
  v122[0] = v114;
  v112 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v42, v111, v43, v44);
  v122[1] = v112;
  v110 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v45, v109, v46, v47);
  v122[2] = v110;
  v108 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v48, v107, v49, v50);
  v122[3] = v108;
  v106 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v51, v105, v52, v53);
  v122[4] = v106;
  v104 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v54, v103, v55, v56);
  v122[5] = v104;
  v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v57, v102, v58, v59);
  v61 = v11;
  v122[6] = v60;
  v65 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v62, v101, v63, v64);
  v122[7] = v65;
  v69 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v66, v100, v67, v68);
  v122[8] = v69;
  v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v122, 9, v71);
  v124[9] = v72;
  v123[10] = @"TrackWidth";
  v76 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v73, v99, v74, v75);
  v124[10] = v76;
  v123[11] = @"TrackWidthQ";
  v80 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v77, v98, v78, v79);
  v124[11] = v80;
  v123[12] = @"TrackHeight";
  v84 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v81, v97, v82, v83);
  v124[12] = v84;
  v123[13] = @"TrackHeightQ";
  v88 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v85, v61, v86, v87);
  v124[13] = v88;
  v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v89, v124, v123, 14);

  return v90;
}

id sub_233771520(uint64_t a1, uint64_t *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_233725510(*a2);
  v7 = sub_233725510(*a2);
  v8 = sub_233725614(*a2);
  v9 = sub_233725614(*a2);
  v10 = sub_23376CF6C(a1, a2, v9);
  v26[0] = @"Version";
  v14 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v11, v4, v12, v13);
  v27[0] = v14;
  v26[1] = @"Flags";
  v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v15, (v5 << 16) | (v6 << 8) | v7, v16, v17);
  v27[1] = v18;
  v26[2] = @"MainShootingMode";
  v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, v8, v20, v21);
  v26[3] = @"boxes";
  v27[2] = v22;
  v27[3] = v10;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v27, v26, 4);

  return v24;
}

id sub_2337716F0(uint64_t a1, char *a2)
{
  v3 = sub_233778774(a1, a2);
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_23377175C(uint64_t a1, char *a2)
{
  v3 = sub_233773E4C(a1, a2);
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_2337717C8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_233774D40();
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_233771834(uint64_t a1, char *a2)
{
  v3 = sub_233778C90(a1, a2);
  v4 = sub_233777384(v3, a2, v3, 1);

  return v4;
}

id sub_2337718A0(uint64_t a1, uint64_t *a2)
{
  v37[5] = *MEMORY[0x277D85DE8];
  sub_233725510(*a2);
  v3 = sub_233725510(*a2);
  v4 = sub_233725510(*a2);
  v5 = sub_233725510(*a2);
  v6 = sub_2337255C0(*a2);
  v7 = sub_2337255C0(*a2);
  v8 = sub_233725614(*a2);
  sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v9 = sub_233725428(*a2);
  v34 = (*(**a2 + 48))();
  v35 = v9;
  v35 = *sub_233725A80(&v35, &v34);
  v10 = sub_233751844(&v35);
  v36[0] = @"Flags";
  v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v11, (v3 << 16) | (v4 << 8) | v5, v12, v13);
  v37[0] = v14;
  v36[1] = @"thumbnailWidth";
  v18 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v15, v6, v16, v17);
  v37[1] = v18;
  v36[2] = @"thumbnailHeight";
  v22 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v19, v7, v20, v21);
  v37[2] = v22;
  v36[3] = @"thumbnailOffset";
  v26 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, v10, v24, v25);
  v37[3] = v26;
  v36[4] = @"thumbnailLength";
  v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, v8, v28, v29);
  v37[4] = v30;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v37, v36, 5);

  return v32;
}

id sub_233771B14(uint64_t a1, uint64_t *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  sub_233725614(*a2);
  sub_2337255C0(*a2);
  v3 = sub_2337255C0(*a2);
  v4 = sub_2337255C0(*a2);
  sub_2337255C0(*a2);
  v5 = sub_233725614(*a2);
  v6 = sub_233725428(*a2);
  v27 = (*(**a2 + 48))();
  v28 = v6;
  v28 = *sub_233725A80(&v28, &v27);
  v7 = sub_233751844(&v28);
  v29[0] = @"previewWidth";
  v11 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, v3, v9, v10);
  v30[0] = v11;
  v29[1] = @"previewHeight";
  v15 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v12, v4, v13, v14);
  v30[1] = v15;
  v29[2] = @"previewOffset";
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, v7, v17, v18);
  v30[2] = v19;
  v29[3] = @"previewLength";
  v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, v5, v21, v22);
  v30[3] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v30, v29, 4);

  return v25;
}

id sub_233771D20(uint64_t a1, uint64_t *a2, void *a3)
{
  v120 = *MEMORY[0x277D85DE8];
  v96 = a3;
  v97 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v97, v14, v13, @"Metadata", v15);
  v16 = sub_233725510(*a2);
  v99 = v13;
  v17 = sub_233725510(*a2);
  v18 = sub_233725510(*a2);
  v19 = sub_233725510(*a2);
  v20 = sub_233725614(*a2);
  v24 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v21, v16, v22, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v97, v25, v24, @"version", v26);

  v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v27, (v17 << 16) | (v18 << 8) | v19, v28, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v97, v31, v30, @"flags", v32);

  if (v20 < 2)
  {
    v45 = MEMORY[0x277CCABB0];
    v46 = sub_233725660(*a2);
    v33 = objc_msgSend_numberWithUnsignedLongLong_(v45, v47, v46, v48, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v97, v50, v33, @"offset", v51);
  }

  else
  {
    v33 = sub_233755CB8(v20);
    do
    {
      v34 = MEMORY[0x277CCABB0];
      v35 = sub_233725660(*a2);
      v39 = objc_msgSend_numberWithUnsignedLongLong_(v34, v36, v35, v37, v38);
      objc_msgSend_addObject_(v33, v40, v39, v41, v42);

      --v20;
    }

    while (v20);
    objc_msgSend_setObject_forKeyedSubscript_(v97, v43, v33, @"offset", v44);
  }

  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v55 = objc_msgSend_objectForKeyedSubscript_(v96, v52, @"Tags", v53, v54);
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v114, v119, 16);
  if (v60)
  {
    v61 = *v115;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v115 != v61)
        {
          objc_enumerationMutation(v55);
        }

        v63 = objc_msgSend_objectForKeyedSubscript_(*(*(&v114 + 1) + 8 * i), v57, @"tagSize", v58, v59);
        objc_msgSend_unsignedIntValue(v63, v64, v65, v66, v67);
      }

      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v114, v119, 16);
    }

    while (v60);
  }

  v71 = objc_msgSend_objectForKeyedSubscript_(v97, v68, @"offset", v69, v70);
  v76 = objc_msgSend_unsignedLongLongValue(v71, v72, v73, v74, v75);

  v113 = v76;
  if (v76)
  {
    sub_2337338AC(a1, &v110);
    sub_233723B40(&v108, &v113);
    sub_233725F08(v112, &v110, &v108, 0);
    if (v111)
    {
      sub_2337239E8(v111);
    }

    sub_2337338AC(a1, &v108);
    sub_233735A18(&v110, &v108, 1);
    if (v109)
    {
      sub_2337239E8(v109);
    }

    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = objc_msgSend_objectForKeyedSubscript_(v96, v77, @"Tags", v78, v79);
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v104, v118, 16);
    if (v81)
    {
      v100 = *v105;
      do
      {
        v101 = v81;
        for (j = 0; j != v101; ++j)
        {
          if (*v105 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v86 = objc_msgSend_objectForKeyedSubscript_(*(*(&v104 + 1) + 8 * j), v82, @"tagID", v83, v84);
          v91 = objc_msgSend_unsignedIntValue(v86, v87, v88, v89, v90);

          sub_2337338AC(a1, &v108);
          v92 = sub_233725614(v108);
          if (v109)
          {
            sub_2337239E8(v109);
          }

          sub_2337338AC(a1, &v108);
          v93 = sub_2337255C0(v108);
          if (v109)
          {
            sub_2337239E8(v109);
          }

          if (v91 == v93)
          {
            sub_2337338AC(a1, &v103);
            v102 = v92 - 6;
            sub_233725D94(v103, &v102);
          }

          sub_2337338AC(a1, &v108);
          v94 = v108;
          v102 = v92 - 6;
          sub_233723AE0(&v103, &v102);
          (*(*v94 + 40))(v94, &v103, 1);
          if (v109)
          {
            sub_2337239E8(v109);
          }
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v104, v118, 16);
      }

      while (v81);
    }

    sub_233735A90(&v110);
    sub_233725FD4(v112);
  }

  return v97;
}

id sub_233772F14(uint64_t a1, uint64_t *a2, void *a3)
{
  v66 = a3;
  v67 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v9 = sub_233725510(*a2);
  v10 = sub_233725510(*a2);
  v11 = sub_233725510(*a2);
  v12 = sub_233725510(*a2);
  v13 = sub_233725614(*a2);
  v17 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v14, v9, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v67, v18, v17, @"version", v19);

  v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, (v10 << 16) | (v11 << 8) | v12, v21, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v67, v24, v23, @"flags", v25);

  if (v13 < 2)
  {
    v39 = MEMORY[0x277CCABB0];
    v40 = sub_233725660(*a2);
    v26 = objc_msgSend_numberWithUnsignedLongLong_(v39, v41, v40, v42, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v67, v44, v26, @"offset", v45);
  }

  else
  {
    v26 = sub_233755CB8(v13);
    v27 = v13;
    do
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = sub_233725660(*a2);
      v33 = objc_msgSend_numberWithUnsignedLongLong_(v28, v30, v29, v31, v32);
      objc_msgSend_addObject_(v26, v34, v33, v35, v36);

      --v27;
    }

    while (v27);
    objc_msgSend_setObject_forKeyedSubscript_(v67, v37, v26, @"offset", v38);
  }

  if (v66)
  {
    if (v13 == 1)
    {
      v49 = objc_msgSend_objectForKeyedSubscript_(v66, v46, @"sub_header_part_length", v47, v48);
      v54 = objc_msgSend_unsignedIntValue(v49, v50, v51, v52, v53);

      v58 = objc_msgSend_objectForKeyedSubscript_(v67, v55, @"offset", v56, v57);
      v63 = objc_msgSend_unsignedLongLongValue(v58, v59, v60, v61, v62);

      v73 = v63;
      if (v63)
      {
        sub_2337338AC(a1, &v70);
        sub_233723B40(&v69, &v73);
        sub_233725F08(v72, &v70, &v69, 0);
        if (v71)
        {
          sub_2337239E8(v71);
        }

        sub_2337338AC(a1, &v69);
        v68 = v54;
        sub_233725D94(v69, &v68);
      }
    }
  }

  v64 = v67;

  return v64;
}

void sub_233773B9C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);

  if (a15)
  {
    sub_2337239E8(a15);
  }

  sub_233725FD4(va);

  _Unwind_Resume(a1);
}

id sub_233773E4C(uint64_t a1, const char *a2)
{
  v166[39] = *MEMORY[0x277D85DE8];
  v165[0] = @"33434";
  v163 = qword_27DE37BA8;
  v164 = *MEMORY[0x277CD3060];
  v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, &v164, &v163, 1);
  v166[0] = v86;
  v165[1] = @"33437";
  v161 = qword_27DE37BA8;
  v162 = *MEMORY[0x277CD3068];
  v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, &v162, &v161, 1);
  v166[1] = v85;
  v165[2] = @"34850";
  v159 = qword_27DE37BA8;
  v160 = *MEMORY[0x277CD3058];
  v84 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, &v160, &v159, 1);
  v166[2] = v84;
  v165[3] = @"34855";
  v157 = qword_27DE37BA8;
  v158 = *MEMORY[0x277CD30A8];
  v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, &v158, &v157, 1);
  v166[3] = v83;
  v165[4] = @"34864";
  v155 = qword_27DE37BA8;
  v156 = *MEMORY[0x277CD3148];
  v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, &v156, &v155, 1);
  v166[4] = v82;
  v165[5] = @"34866";
  v153 = qword_27DE37BA8;
  v154 = *MEMORY[0x277CD3120];
  v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v154, &v153, 1);
  v166[5] = v81;
  v165[6] = @"36864";
  v7 = *MEMORY[0x277CD31A0];
  v151[0] = qword_27DE37BA8;
  v151[1] = qword_27DE37BB0;
  v152[0] = v7;
  v152[1] = &unk_284954A48;
  v151[2] = qword_27DE37BB8;
  v152[2] = &unk_284906E10;
  v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v152, v151, 3);
  v166[6] = v80;
  v165[7] = @"36867";
  v149 = qword_27DE37BA8;
  v150 = *MEMORY[0x277CD3030];
  v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, &v150, &v149, 1);
  v166[7] = v79;
  v165[8] = @"36868";
  v147 = qword_27DE37BA8;
  v148 = *MEMORY[0x277CD3028];
  v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v148, &v147, 1);
  v166[8] = v78;
  v165[9] = @"36880";
  v145[0] = qword_27DE37BA8;
  v145[1] = qword_27DE37BC0;
  v11 = MEMORY[0x277CBEC38];
  v146[0] = @"36880";
  v146[1] = MEMORY[0x277CBEC38];
  v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v146, v145, 2);
  v166[9] = v77;
  v165[10] = @"36881";
  v143[0] = qword_27DE37BA8;
  v143[1] = qword_27DE37BC0;
  v144[0] = @"36881";
  v144[1] = v11;
  v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v144, v143, 2);
  v166[10] = v76;
  v165[11] = @"36882";
  v141[0] = qword_27DE37BA8;
  v141[1] = qword_27DE37BC0;
  v142[0] = @"36882";
  v142[1] = v11;
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v142, v141, 2);
  v166[11] = v75;
  v165[12] = @"37121";
  v15 = *MEMORY[0x277CD3008];
  v139[0] = qword_27DE37BA8;
  v139[1] = qword_27DE37BB0;
  v140[0] = v15;
  v140[1] = &unk_284954A60;
  v139[2] = qword_27DE37BB8;
  v140[2] = &unk_284906E10;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v140, v139, 3);
  v166[12] = v74;
  v165[13] = @"37377";
  v137 = qword_27DE37BA8;
  v138 = *MEMORY[0x277CD3158];
  v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v138, &v137, 1);
  v166[13] = v73;
  v165[14] = @"37378";
  v135 = qword_27DE37BA8;
  v136 = *MEMORY[0x277CD2F48];
  v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v136, &v135, 1);
  v166[14] = v72;
  v165[15] = @"37380";
  v133 = qword_27DE37BA8;
  v134 = *MEMORY[0x277CD3048];
  v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v134, &v133, 1);
  v166[15] = v71;
  v165[16] = @"37383";
  v131 = qword_27DE37BA8;
  v132 = *MEMORY[0x277CD30F0];
  v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, &v132, &v131, 1);
  v166[16] = v70;
  v165[17] = @"37385";
  v129 = qword_27DE37BA8;
  v130 = *MEMORY[0x277CD3070];
  v69 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v130, &v129, 1);
  v166[17] = v69;
  v165[18] = @"37386";
  v127 = qword_27DE37BA8;
  v128 = *MEMORY[0x277CD3088];
  v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v128, &v127, 1);
  v166[18] = v68;
  v165[19] = @"37510";
  v23 = *MEMORY[0x277CD3198];
  v125[0] = qword_27DE37BA8;
  v125[1] = qword_27DE37BC0;
  v126[0] = v23;
  v126[1] = v11;
  v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v126, v125, 2);
  v166[19] = v67;
  v165[20] = @"37520";
  v123 = qword_27DE37BA8;
  v124 = *MEMORY[0x277CD3180];
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v124, &v123, 1);
  v166[20] = v66;
  v165[21] = @"37521";
  v121 = qword_27DE37BA8;
  v122 = *MEMORY[0x277CD3190];
  v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v122, &v121, 1);
  v166[21] = v65;
  v165[22] = @"37522";
  v119 = qword_27DE37BA8;
  v120 = *MEMORY[0x277CD3188];
  v64 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v120, &v119, 1);
  v166[22] = v64;
  v165[23] = @"40960";
  v28 = *MEMORY[0x277CD3078];
  v117[0] = qword_27DE37BA8;
  v117[1] = qword_27DE37BB0;
  v118[0] = v28;
  v118[1] = &unk_284954A78;
  v117[2] = qword_27DE37BB8;
  v118[2] = &unk_284906E10;
  v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v118, v117, 3);
  v166[23] = v63;
  v165[24] = @"40961";
  v115 = qword_27DE37BA8;
  v116 = *MEMORY[0x277CD3000];
  v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v116, &v115, 1);
  v166[24] = v62;
  v165[25] = @"40962";
  v113 = qword_27DE37BA8;
  v114 = *MEMORY[0x277CD3110];
  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, &v114, &v113, 1);
  v166[25] = v61;
  v165[26] = @"40963";
  v111 = qword_27DE37BA8;
  v112 = *MEMORY[0x277CD3118];
  v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v112, &v111, 1);
  v166[26] = v60;
  v165[27] = @"41486";
  v109 = qword_27DE37BA8;
  v110 = *MEMORY[0x277CD3098];
  v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v110, &v109, 1);
  v166[27] = v59;
  v165[28] = @"41487";
  v107 = qword_27DE37BA8;
  v108 = *MEMORY[0x277CD30A0];
  v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, &v108, &v107, 1);
  v166[28] = v58;
  v165[29] = @"41488";
  v105 = qword_27DE37BA8;
  v106 = *MEMORY[0x277CD3090];
  v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v106, &v105, 1);
  v166[29] = v57;
  v165[30] = @"41985";
  v103 = qword_27DE37BA8;
  v104 = *MEMORY[0x277CD3020];
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, &v104, &v103, 1);
  v166[30] = v37;
  v165[31] = @"41986";
  v101 = qword_27DE37BA8;
  v102 = *MEMORY[0x277CD3050];
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v102, &v101, 1);
  v166[31] = v39;
  v165[32] = @"41987";
  v99 = qword_27DE37BA8;
  v100 = *MEMORY[0x277CD31A8];
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v100, &v99, 1);
  v166[32] = v41;
  v165[33] = @"41990";
  v97 = qword_27DE37BA8;
  v98 = *MEMORY[0x277CD3130];
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v98, &v97, 1);
  v166[33] = v43;
  v165[34] = @"42032";
  v95 = qword_27DE37BA8;
  v96 = *MEMORY[0x277CD2FF8];
  v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, &v96, &v95, 1);
  v166[34] = v45;
  v165[35] = @"42033";
  v93 = qword_27DE37BA8;
  v94 = *MEMORY[0x277CD2FE8];
  v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v94, &v93, 1);
  v166[35] = v47;
  v165[36] = @"42034";
  v91 = qword_27DE37BA8;
  v92 = *MEMORY[0x277CD30D8];
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, &v92, &v91, 1);
  v166[36] = v49;
  v165[37] = @"42036";
  v89 = qword_27DE37BA8;
  v90 = *MEMORY[0x277CD30C8];
  v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, &v90, &v89, 1);
  v166[37] = v51;
  v165[38] = @"42037";
  v87 = qword_27DE37BA8;
  v88 = *MEMORY[0x277CD30D0];
  v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v88, &v87, 1);
  v166[38] = v53;
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v166, v165, 39);

  return v55;
}

id sub_233774D40()
{
  v0 = MEMORY[0x28223BE20]();
  v381[93] = *MEMORY[0x277D85DE8];
  v193[0] = MEMORY[0x277D85DD0];
  v193[1] = 3221225472;
  v193[2] = sub_23377A494;
  v193[3] = &unk_2789EECD0;
  v193[4] = v0;
  v192 = MEMORY[0x2383AC810](v193);
  v380[0] = @"1";
  v378[0] = qword_27DE37BA8;
  v378[1] = qword_27DE37BC0;
  v1 = MEMORY[0x277CBEC38];
  v379[0] = @"CameraSettings";
  v379[1] = MEMORY[0x277CBEC38];
  v378[2] = qword_27DE37BB0;
  v379[2] = &unk_284954DA8;
  v186 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v379, v378, 3);
  v381[0] = v186;
  v380[1] = @"2";
  v376[0] = qword_27DE37BA8;
  v376[1] = qword_27DE37BC0;
  v377[0] = @"FocalLength";
  v377[1] = v1;
  v185 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v377, v376, 2);
  v381[1] = v185;
  v380[2] = @"3";
  v374[0] = qword_27DE37BA8;
  v374[1] = qword_27DE37BC0;
  v375[0] = @"FlashInfo";
  v375[1] = v1;
  v184 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v375, v374, 2);
  v381[2] = v184;
  v380[3] = @"4";
  v372[0] = qword_27DE37BA8;
  v372[1] = qword_27DE37BB0;
  v373[0] = @"ShotInfo";
  v373[1] = &unk_284954DC0;
  v372[2] = qword_27DE37BB8;
  v372[3] = qword_27DE37BC0;
  v373[2] = &unk_284906F90;
  v373[3] = v1;
  v183 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v373, v372, 4);
  v381[3] = v183;
  v380[4] = @"5";
  v370[0] = qword_27DE37BA8;
  v370[1] = qword_27DE37BC0;
  v371[0] = @"Panorama";
  v371[1] = v1;
  v182 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v371, v370, 2);
  v381[4] = v182;
  v380[5] = @"6";
  v368[0] = qword_27DE37BA8;
  v368[1] = qword_27DE37BB0;
  v369[0] = @"ImageType";
  v369[1] = &unk_284954DD8;
  v181 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v369, v368, 2);
  v381[5] = v181;
  v380[6] = @"7";
  v366[0] = qword_27DE37BA8;
  v366[1] = qword_27DE37BB0;
  v367[0] = @"FirmwareVersion";
  v367[1] = &unk_284954DF0;
  v366[2] = qword_27DE37BB8;
  v367[2] = &unk_284906E90;
  v180 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v367, v366, 3);
  v381[6] = v180;
  v380[7] = @"8";
  v364 = qword_27DE37BA8;
  v365 = @"FileNumber";
  v179 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, &v365, &v364, 1);
  v381[7] = v179;
  v380[8] = @"9";
  v362[0] = qword_27DE37BA8;
  v362[1] = qword_27DE37BB0;
  v363[0] = @"OwnerName";
  v363[1] = &unk_284954E08;
  v178 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v363, v362, 2);
  v381[8] = v178;
  v380[9] = @"10";
  v360[0] = qword_27DE37BA8;
  v360[1] = qword_27DE37BC0;
  v361[0] = @"UnknownD30";
  v361[1] = v1;
  v177 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v361, v360, 2);
  v381[9] = v177;
  v380[10] = @"12";
  v358 = qword_27DE37BA8;
  v359 = @"SerialNumber";
  v176 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v359, &v358, 1);
  v381[10] = v176;
  v380[11] = @"13";
  v356[0] = qword_27DE37BA8;
  v356[1] = qword_27DE37BC0;
  v357[0] = @"CameraInfo";
  v357[1] = v1;
  v175 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v357, v356, 2);
  v381[11] = v175;
  v380[12] = @"14";
  v354 = qword_27DE37BA8;
  v355 = @"FileLength";
  v174 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, &v355, &v354, 1);
  v381[12] = v174;
  v380[13] = @"15";
  v352[0] = qword_27DE37BA8;
  v352[1] = qword_27DE37BC0;
  v353[0] = @"CustomFunctions";
  v353[1] = v1;
  v173 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v353, v352, 2);
  v381[13] = v173;
  v380[14] = @"16";
  v350 = qword_27DE37BA8;
  v351 = @"ModelID";
  v172 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v351, &v350, 1);
  v381[14] = v172;
  v380[15] = @"17";
  v348[0] = qword_27DE37BA8;
  v348[1] = qword_27DE37BC0;
  v349[0] = @"MovieInfo";
  v349[1] = v1;
  v171 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v349, v348, 2);
  v381[15] = v171;
  v380[16] = @"18";
  v346[0] = qword_27DE37BA8;
  v346[1] = qword_27DE37BC0;
  v347[0] = @"AFInfo";
  v347[1] = v1;
  v170 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v347, v346, 2);
  v381[16] = v170;
  v380[17] = @"19";
  v344[0] = qword_27DE37BA8;
  v344[1] = qword_27DE37BC0;
  v345[0] = @"ThumbnailImageValidArea";
  v345[1] = v1;
  v169 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v345, v344, 2);
  v381[17] = v169;
  v380[18] = @"21";
  v342[0] = qword_27DE37BA8;
  v342[1] = qword_27DE37BC0;
  v343[0] = @"SerialNumberFormat";
  v343[1] = v1;
  v168 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v343, v342, 2);
  v381[18] = v168;
  v380[19] = @"25";
  v340[0] = qword_27DE37BA8;
  v340[1] = qword_27DE37BC0;
  v341[0] = @"25";
  v341[1] = v1;
  v167 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v341, v340, 2);
  v381[19] = v167;
  v380[20] = @"26";
  v338 = qword_27DE37BA8;
  v339 = @"SuperMacro";
  v166 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v339, &v338, 1);
  v381[20] = v166;
  v380[21] = @"28";
  v336[0] = qword_27DE37BA8;
  v336[1] = qword_27DE37BC0;
  v337[0] = @"DateStampMode";
  v337[1] = v1;
  v165 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v337, v336, 2);
  v381[21] = v165;
  v380[22] = @"29";
  v334[0] = qword_27DE37BA8;
  v334[1] = qword_27DE37BC0;
  v335[0] = @"MyColors";
  v335[1] = v1;
  v164 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v335, v334, 2);
  v381[22] = v164;
  v380[23] = @"30";
  v332 = qword_27DE37BA8;
  v333 = @"FirmwareRevision";
  v163 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v333, &v332, 1);
  v381[23] = v163;
  v380[24] = @"35";
  v330[0] = qword_27DE37BA8;
  v330[1] = qword_27DE37BC0;
  v331[0] = @"Categories";
  v331[1] = v1;
  v162 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v331, v330, 2);
  v381[24] = v162;
  v380[25] = @"36";
  v328[0] = qword_27DE37BA8;
  v328[1] = qword_27DE37BC0;
  v329[0] = @"FaceDetect1";
  v329[1] = v1;
  v161 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v329, v328, 2);
  v381[25] = v161;
  v380[26] = @"37";
  v326[0] = qword_27DE37BA8;
  v326[1] = qword_27DE37BC0;
  v327[0] = @"FaceDetect2";
  v327[1] = v1;
  v160 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v327, v326, 2);
  v381[26] = v160;
  v380[27] = @"38";
  v324[0] = qword_27DE37BA8;
  v324[1] = qword_27DE37BC0;
  v325[0] = @"AFInfo2";
  v325[1] = v1;
  v324[2] = qword_27DE37BB0;
  v324[3] = qword_27DE37BB8;
  v325[2] = &unk_284954E20;
  v325[3] = &unk_284906F10;
  v159 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v325, v324, 4);
  v381[27] = v159;
  v380[28] = @"39";
  v322[0] = qword_27DE37BA8;
  v322[1] = qword_27DE37BC0;
  v323[0] = @"ContrastInfo";
  v323[1] = v1;
  v158 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v323, v322, 2);
  v381[28] = v158;
  v380[29] = @"40";
  v320[0] = qword_27DE37BA8;
  v320[1] = qword_27DE37BC0;
  v321[0] = @"ImageUniqueID";
  v321[1] = v1;
  v157 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v321, v320, 2);
  v381[29] = v157;
  v380[30] = @"47";
  v318[0] = qword_27DE37BA8;
  v318[1] = qword_27DE37BC0;
  v319[0] = @"FaceDetect3";
  v319[1] = v1;
  v156 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v319, v318, 2);
  v381[30] = v156;
  v380[31] = @"51";
  v316[0] = qword_27DE37BA8;
  v316[1] = qword_27DE37BC0;
  v317[0] = @"51";
  v317[1] = v1;
  v155 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v317, v316, 2);
  v381[31] = v155;
  v380[32] = @"53";
  v314[0] = qword_27DE37BA8;
  v314[1] = qword_27DE37BC0;
  v315[0] = @"TimeInfo";
  v315[1] = v1;
  v154 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v315, v314, 2);
  v381[32] = v154;
  v380[33] = @"56";
  v312[0] = qword_27DE37BA8;
  v312[1] = qword_27DE37BC0;
  v313[0] = @"BatteryType";
  v313[1] = v1;
  v153 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v313, v312, 2);
  v381[33] = v153;
  v380[34] = @"60";
  v310[0] = qword_27DE37BA8;
  v310[1] = qword_27DE37BC0;
  v311[0] = @"AFInfo3";
  v311[1] = v1;
  v152 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v311, v310, 2);
  v381[34] = v152;
  v380[35] = @"61";
  v308[0] = qword_27DE37BA8;
  v308[1] = qword_27DE37BC0;
  v309[0] = @"61";
  v309[1] = v1;
  v151 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v309, v308, 2);
  v381[35] = v151;
  v380[36] = @"63";
  v306[0] = qword_27DE37BA8;
  v306[1] = qword_27DE37BC0;
  v307[0] = @"63";
  v307[1] = v1;
  v150 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v307, v306, 2);
  v381[36] = v150;
  v380[37] = @"129";
  v304[0] = qword_27DE37BA8;
  v304[1] = qword_27DE37BC0;
  v305[0] = @"RawDataOffset";
  v305[1] = v1;
  v149 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v305, v304, 2);
  v381[37] = v149;
  v380[38] = @"131";
  v302[0] = qword_27DE37BA8;
  v302[1] = qword_27DE37BC0;
  v303[0] = @"OriginalDecisionDataOffset";
  v303[1] = v1;
  v148 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v303, v302, 2);
  v381[38] = v148;
  v380[39] = @"144";
  v300[0] = qword_27DE37BA8;
  v300[1] = qword_27DE37BC0;
  v301[0] = @"CustomFunctions";
  v301[1] = v1;
  v147 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v301, v300, 2);
  v381[39] = v147;
  v380[40] = @"145";
  v298[0] = qword_27DE37BA8;
  v298[1] = qword_27DE37BC0;
  v299[0] = @"PersonalFunctions";
  v299[1] = v1;
  v146 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v299, v298, 2);
  v381[40] = v146;
  v380[41] = @"146";
  v296[0] = qword_27DE37BA8;
  v296[1] = qword_27DE37BC0;
  v297[0] = @"PersonalFunctionValues";
  v297[1] = v1;
  v145 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v297, v296, 2);
  v381[41] = v145;
  v380[42] = @"147";
  v294[0] = qword_27DE37BA8;
  v294[1] = qword_27DE37BC0;
  v295[0] = @"FileInfo";
  v295[1] = v1;
  v144 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v295, v294, 2);
  v381[42] = v144;
  v380[43] = @"148";
  v292[0] = qword_27DE37BA8;
  v292[1] = qword_27DE37BC0;
  v293[0] = @"AFPointsInFocus";
  v293[1] = v1;
  v143 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v293, v292, 2);
  v381[43] = v143;
  v380[44] = @"149";
  v290 = qword_27DE37BA8;
  v291 = *MEMORY[0x277CD33C0];
  v142 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v291, &v290, 1);
  v381[44] = v142;
  v380[45] = @"150";
  v288[0] = qword_27DE37BA8;
  v288[1] = qword_27DE37BC0;
  v289[0] = @"InternalSerialNumber";
  v289[1] = v1;
  v141 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v289, v288, 2);
  v381[45] = v141;
  v380[46] = @"151";
  v286[0] = qword_27DE37BA8;
  v286[1] = qword_27DE37BC0;
  v287[0] = @"DustRemovalData";
  v287[1] = v1;
  v140 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, v287, v286, 2);
  v381[46] = v140;
  v380[47] = @"152";
  v284[0] = qword_27DE37BA8;
  v284[1] = qword_27DE37BC0;
  v285[0] = @"CropInfo";
  v285[1] = v1;
  v284[2] = qword_27DE37BB0;
  v284[3] = qword_27DE37BB8;
  v285[2] = &unk_284954E38;
  v285[3] = &unk_284906F30;
  v139 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v285, v284, 4);
  v381[47] = v139;
  v380[48] = @"153";
  v282[0] = qword_27DE37BA8;
  v282[1] = qword_27DE37BC0;
  v283[0] = @"CustomFunctions2";
  v283[1] = v1;
  v138 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, v283, v282, 2);
  v381[48] = v138;
  v380[49] = @"154";
  v280[0] = qword_27DE37BA8;
  v280[1] = qword_27DE37BC0;
  v281[0] = @"AspectInfo";
  v281[1] = v1;
  v280[2] = qword_27DE37BB0;
  v280[3] = qword_27DE37BB8;
  v281[2] = &unk_284954E50;
  v281[3] = &unk_284906EF0;
  v137 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v281, v280, 4);
  v381[49] = v137;
  v380[50] = @"160";
  v278[0] = qword_27DE37BA8;
  v278[1] = qword_27DE37BC0;
  v279[0] = @"ProcessingInfo";
  v279[1] = v1;
  v278[2] = qword_27DE37BB0;
  v278[3] = qword_27DE37BB8;
  v279[2] = &unk_284954E68;
  v279[3] = &unk_284906F70;
  v136 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, v279, v278, 4);
  v381[50] = v136;
  v380[51] = @"161";
  v276[0] = qword_27DE37BA8;
  v276[1] = qword_27DE37BC0;
  v277[0] = @"ToneCurveTable";
  v277[1] = v1;
  v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, v277, v276, 2);
  v381[51] = v135;
  v380[52] = @"162";
  v274[0] = qword_27DE37BA8;
  v274[1] = qword_27DE37BC0;
  v275[0] = @"SharpnessTable";
  v275[1] = v1;
  v134 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v275, v274, 2);
  v381[52] = v134;
  v380[53] = @"163";
  v272[0] = qword_27DE37BA8;
  v272[1] = qword_27DE37BC0;
  v273[0] = @"SharpnessFreqTable";
  v273[1] = v1;
  v133 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, v273, v272, 2);
  v381[53] = v133;
  v380[54] = @"164";
  v270[0] = qword_27DE37BA8;
  v270[1] = qword_27DE37BC0;
  v271[0] = @"WhiteBalanceTable";
  v271[1] = v1;
  v132 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v271, v270, 2);
  v381[54] = v132;
  v380[55] = @"169";
  v268[0] = qword_27DE37BA8;
  v268[1] = qword_27DE37BC0;
  v269[0] = @"ColorBalance";
  v269[1] = v1;
  v131 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v269, v268, 2);
  v381[55] = v131;
  v380[56] = @"170";
  v266[0] = qword_27DE37BA8;
  v266[1] = qword_27DE37BC0;
  v267[0] = @"MeasuredColor";
  v267[1] = v1;
  v130 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, v267, v266, 2);
  v381[56] = v130;
  v380[57] = @"174";
  v264 = qword_27DE37BA8;
  v265 = @"ColorTemperature";
  v129 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, &v265, &v264, 1);
  v381[57] = v129;
  v380[58] = @"176";
  v262[0] = qword_27DE37BA8;
  v262[1] = qword_27DE37BC0;
  v263[0] = @"Flags";
  v263[1] = v1;
  v128 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, v263, v262, 2);
  v381[58] = v128;
  v380[59] = @"177";
  v260[0] = qword_27DE37BA8;
  v260[1] = qword_27DE37BC0;
  v261[0] = @"ModifiedInfo";
  v261[1] = v1;
  v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, v261, v260, 2);
  v381[59] = v127;
  v380[60] = @"178";
  v258[0] = qword_27DE37BA8;
  v258[1] = qword_27DE37BC0;
  v259[0] = @"ToneCurveMatching";
  v259[1] = v1;
  v126 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v62, v259, v258, 2);
  v381[60] = v126;
  v380[61] = @"179";
  v256[0] = qword_27DE37BA8;
  v256[1] = qword_27DE37BC0;
  v257[0] = @"WhiteBalanceMatching";
  v257[1] = v1;
  v109 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, v257, v256, 2);
  v381[61] = v109;
  v380[62] = @"180";
  v254 = qword_27DE37BA8;
  v255 = @"ColorSpace";
  v108 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, &v255, &v254, 1);
  v381[62] = v108;
  v380[63] = @"182";
  v252[0] = qword_27DE37BA8;
  v252[1] = qword_27DE37BC0;
  v253[0] = @"PreviewImageInfo";
  v253[1] = v1;
  v107 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v253, v252, 2);
  v381[63] = v107;
  v380[64] = @"208";
  v250[0] = qword_27DE37BA8;
  v250[1] = qword_27DE37BC0;
  v251[0] = @"VRDOffset";
  v251[1] = v1;
  v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, v251, v250, 2);
  v381[64] = v106;
  v380[65] = @"224";
  v248[0] = qword_27DE37BA8;
  v248[1] = qword_27DE37BC0;
  v249[0] = @"SensorInfo";
  v249[1] = v1;
  v248[2] = qword_27DE37BB8;
  v249[2] = &unk_284906EB0;
  v105 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, v249, v248, 3);
  v381[65] = v105;
  v380[66] = @"16385";
  v246[0] = qword_27DE37BA8;
  v246[1] = qword_27DE37BC0;
  v247[0] = @"ColorData";
  v247[1] = v1;
  v247[2] = &unk_284954E80;
  v246[2] = qword_27DE37BB0;
  v246[3] = qword_27DE37BB8;
  v191 = MEMORY[0x2383AC810](v192);
  v247[3] = v191;
  v190 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, v247, v246, 4);
  v381[66] = v190;
  v380[67] = @"16386";
  v244[0] = qword_27DE37BA8;
  v244[1] = qword_27DE37BC0;
  v245[0] = @"CRWParam";
  v245[1] = v1;
  v189 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, v245, v244, 2);
  v381[67] = v189;
  v380[68] = @"16387";
  v242[0] = qword_27DE37BA8;
  v242[1] = qword_27DE37BC0;
  v243[0] = @"ColorInfo";
  v243[1] = v1;
  v188 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, v243, v242, 2);
  v381[68] = v188;
  v380[69] = @"16389";
  v240[0] = qword_27DE37BA8;
  v240[1] = qword_27DE37BC0;
  v241[0] = @"Flavor";
  v241[1] = v1;
  v187 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, v241, v240, 2);
  v381[69] = v187;
  v380[70] = @"16392";
  v238[0] = qword_27DE37BA8;
  v238[1] = qword_27DE37BC0;
  v239[0] = @"PictureStyleUserDef";
  v239[1] = v1;
  v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, v239, v238, 2);
  v381[70] = v125;
  v380[71] = @"16393";
  v236[0] = qword_27DE37BA8;
  v236[1] = qword_27DE37BC0;
  v237[0] = @"PictureStylePC";
  v237[1] = v1;
  v124 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, v237, v236, 2);
  v381[71] = v124;
  v380[72] = @"16400";
  v234[0] = qword_27DE37BA8;
  v234[1] = qword_27DE37BC0;
  v235[0] = @"CustomPictureStyleFileName";
  v235[1] = v1;
  v123 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, v235, v234, 2);
  v381[72] = v123;
  v380[73] = @"16401";
  v232[0] = qword_27DE37BA8;
  v232[1] = qword_27DE37BC0;
  v233[0] = @"16401";
  v233[1] = v1;
  v122 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, v233, v232, 2);
  v381[73] = v122;
  v380[74] = @"16402";
  v230[0] = qword_27DE37BA8;
  v230[1] = qword_27DE37BC0;
  v231[0] = @"16402";
  v231[1] = v1;
  v121 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v76, v231, v230, 2);
  v381[74] = v121;
  v380[75] = @"16403";
  v228[0] = qword_27DE37BA8;
  v228[1] = qword_27DE37BC0;
  v229[0] = @"AFMicroAdj";
  v229[1] = v1;
  v120 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v77, v229, v228, 2);
  v381[75] = v120;
  v380[76] = @"16405";
  v226[0] = qword_27DE37BA8;
  v226[1] = qword_27DE37BC0;
  v227[0] = @"VignettingCorr";
  v227[1] = v1;
  v119 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v78, v227, v226, 2);
  v381[76] = v119;
  v380[77] = @"16406";
  v224[0] = qword_27DE37BA8;
  v224[1] = qword_27DE37BC0;
  v225[0] = @"VignettingCorr2";
  v225[1] = v1;
  v224[2] = qword_27DE37BB0;
  v224[3] = qword_27DE37BB8;
  v225[2] = &unk_284954E98;
  v225[3] = &unk_284906ED0;
  v118 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v79, v225, v224, 4);
  v381[77] = v118;
  v380[78] = @"16408";
  v222[0] = qword_27DE37BA8;
  v222[1] = qword_27DE37BC0;
  v223[0] = @"LightingOpt";
  v223[1] = v1;
  v222[2] = qword_27DE37BB0;
  v222[3] = qword_27DE37BB8;
  v223[2] = &unk_284954EB0;
  v223[3] = &unk_284906F50;
  v117 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v80, v223, v222, 4);
  v381[78] = v117;
  v380[79] = @"16409";
  v220[0] = qword_27DE37BA8;
  v220[1] = qword_27DE37BC0;
  v221[0] = @"LensInfo";
  v221[1] = v1;
  v116 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v81, v221, v220, 2);
  v381[79] = v116;
  v380[80] = @"16416";
  v218[0] = qword_27DE37BA8;
  v218[1] = qword_27DE37BC0;
  v219[0] = @"AmbienceInfo";
  v219[1] = v1;
  v115 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, v219, v218, 2);
  v381[80] = v115;
  v380[81] = @"16417";
  v216[0] = qword_27DE37BA8;
  v216[1] = qword_27DE37BC0;
  v217[0] = @"MultiExp";
  v217[1] = v1;
  v114 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v83, v217, v216, 2);
  v381[81] = v114;
  v380[82] = @"16420";
  v214[0] = qword_27DE37BA8;
  v214[1] = qword_27DE37BC0;
  v215[0] = @"FilterInfo";
  v215[1] = v1;
  v113 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, v215, v214, 2);
  v381[82] = v113;
  v380[83] = @"16421";
  v212[0] = qword_27DE37BA8;
  v212[1] = qword_27DE37BC0;
  v213[0] = @"HDRInfo";
  v213[1] = v1;
  v112 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v85, v213, v212, 2);
  v381[83] = v112;
  v380[84] = @"16423";
  v210[0] = qword_27DE37BA8;
  v210[1] = qword_27DE37BC0;
  v211[0] = @"16423";
  v211[1] = v1;
  v111 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, v211, v210, 2);
  v381[84] = v111;
  v380[85] = @"16424";
  v208[0] = qword_27DE37BA8;
  v208[1] = qword_27DE37BC0;
  v209[0] = @"AFConfig";
  v209[1] = v1;
  v110 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, v209, v208, 2);
  v381[85] = v110;
  v380[86] = @"16428";
  v206[0] = qword_27DE37BA8;
  v206[1] = qword_27DE37BC0;
  v207[0] = @"16428";
  v207[1] = v1;
  v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v88, v207, v206, 2);
  v381[86] = v89;
  v380[87] = @"16430";
  v204[0] = qword_27DE37BA8;
  v204[1] = qword_27DE37BC0;
  v205[0] = @"16430";
  v205[1] = v1;
  v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v90, v205, v204, 2);
  v381[87] = v91;
  v380[88] = @"16435";
  v202[0] = qword_27DE37BA8;
  v202[1] = qword_27DE37BC0;
  v203[0] = @"16435";
  v203[1] = v1;
  v93 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v92, v203, v202, 2);
  v381[88] = v93;
  v380[89] = @"16437";
  v200[0] = qword_27DE37BA8;
  v200[1] = qword_27DE37BC0;
  v201[0] = @"16437";
  v201[1] = v1;
  v95 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v94, v201, v200, 2);
  v381[89] = v95;
  v380[90] = @"16439";
  v198[0] = qword_27DE37BA8;
  v198[1] = qword_27DE37BC0;
  v199[0] = @"16439";
  v199[1] = v1;
  v97 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v96, v199, v198, 2);
  v381[90] = v97;
  v380[91] = @"16441";
  v196[0] = qword_27DE37BA8;
  v196[1] = qword_27DE37BC0;
  v197[0] = @"16441";
  v197[1] = v1;
  v99 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v98, v197, v196, 2);
  v381[91] = v99;
  v380[92] = @"16444";
  v194[0] = qword_27DE37BA8;
  v194[1] = qword_27DE37BC0;
  v195[0] = @"16444";
  v195[1] = v1;
  v101 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v100, v195, v194, 2);
  v381[92] = v101;
  v104 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v102, v381, v380, 93);

  return v104;
}

id sub_233777384(uint64_t a1, uint64_t *a2, void *a3, char a4)
{
  v289[6] = *MEMORY[0x277D85DE8];
  v278 = a3;
  v276 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v9 = sub_2337255C0(*a2);
  if (v9 != 18761 && v9 != 19789)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 == 18761)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  sub_23372540C(*a2, v11);
  if (sub_2337255C0(*a2) != 42)
  {
    v272 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v272, "RawCameraException");
    __cxa_throw(v272, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v287 = sub_233725614(*a2);
  v281 = a2;
  v12 = *a2;
  sub_233723AE0(&v285, &v287);
  (*(*v12 + 40))(v12, &v285, 0);
  v13 = v281;
  v277 = sub_2337255C0(*v281);
  if (v277)
  {
    for (i = 0; v277 > i; ++i)
    {
      v280 = sub_2337255C0(*v13);
      v14 = sub_2337255C0(*v13);
      v15 = sub_233725614(*v13);
      v16 = sub_233725614(*v13);
      v286 = v16;
      v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, v16, v18, v19);
      v26 = v20;
      if (v14 > 6)
      {
        if (v14 > 9)
        {
          switch(v14)
          {
            case 0xA:
              if (v15 < 2)
              {
                sub_233723AE0(__p, &v286);
                sub_233725F08(&v285, v13, __p, 0);
                v191 = v13;
                v192 = MEMORY[0x277CCABB0];
                *&v193 = sub_233725768(*v191);
                v27 = objc_msgSend_numberWithFloat_(v192, v194, v195, v196, v197, v193);

                sub_233725FD4(&v285);
                goto LABEL_116;
              }

              sub_233723AE0(__p, &v286);
              sub_233725F08(&v285, v13, __p, 0);
              v27 = sub_233755CB8(v15);
              v109 = v15;
              do
              {
                v110 = MEMORY[0x277CCABB0];
                *&v111 = sub_233725768(*v281);
                v116 = objc_msgSend_numberWithFloat_(v110, v112, v113, v114, v115, v111);
                objc_msgSend_addObject_(v27, v117, v116, v118, v119);

                --v109;
              }

              while (v109);
              break;
            case 0xB:
              if (v15 < 2)
              {
                LODWORD(v25) = v286;
                v27 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v21, v22, v23, v24, v25);

                goto LABEL_116;
              }

              sub_233723AE0(__p, &v286);
              sub_233725F08(&v285, v13, __p, 0);
              v27 = sub_233755CB8(v15);
              v145 = v15;
              do
              {
                v146 = MEMORY[0x277CCABB0];
                *&v147 = sub_233725730(*v281);
                v152 = objc_msgSend_numberWithFloat_(v146, v148, v149, v150, v151, v147);
                objc_msgSend_addObject_(v27, v153, v152, v154, v155);

                --v145;
              }

              while (v145);
              break;
            case 0xC:
              if (v15 < 2)
              {
                sub_233723AE0(__p, &v286);
                sub_233725F08(&v285, v13, __p, 0);
                v174 = v13;
                v175 = MEMORY[0x277CCABB0];
                v176 = sub_23372574C(*v174);
                v27 = objc_msgSend_numberWithDouble_(v175, v177, v178, v179, v180, v176);

                sub_233725FD4(&v285);
                goto LABEL_116;
              }

              sub_233723AE0(__p, &v286);
              sub_233725F08(&v285, v13, __p, 0);
              v27 = sub_233755CB8(v15);
              v58 = v15;
              do
              {
                v59 = MEMORY[0x277CCABB0];
                v60 = sub_23372574C(*v281);
                v65 = objc_msgSend_numberWithDouble_(v59, v61, v62, v63, v64, v60);
                objc_msgSend_addObject_(v27, v66, v65, v67, v68);

                --v58;
              }

              while (v58);
              break;
            default:
              goto LABEL_77;
          }
        }

        else
        {
          if (v14 == 7)
          {
            if (v15 < 5)
            {
              v27 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEB28], v21, &v286, v15, v24);
            }

            else
            {
              sub_233723AE0(__p, &v286);
              sub_233725F08(&v285, v13, __p, 0);
              v82 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v79, v15, v80, v81);
              v83 = *v281;
              v84 = v82;
              v89 = objc_msgSend_mutableBytes(v82, v85, v86, v87, v88);
              v94 = objc_msgSend_length(v82, v90, v91, v92, v93);
              LODWORD(v83) = (*(*v83 + 32))(v83, v89, v94);
              if (objc_msgSend_length(v82, v95, v96, v97, v98) == v83)
              {
                v27 = v82;
              }

              else
              {
                v27 = v26;
              }

              sub_233725FD4(&v285);
            }

            goto LABEL_116;
          }

          if (v14 == 8)
          {
            if (v15 < 3)
            {
              if (v15 != 2)
              {
                v27 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v21, v286, v23, v24);

                goto LABEL_116;
              }

              v27 = sub_233755CB8(2uLL);
              v210 = 0;
              do
              {
                v211 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v207, *(&v286 + v210), v208, v209);
                objc_msgSend_addObject_(v27, v212, v211, v213, v214);

                v210 += 2;
              }

              while (v210 != 4);
              goto LABEL_106;
            }

            sub_233723AE0(__p, &v286);
            sub_233725F08(&v285, v13, __p, 0);
            v27 = sub_233755CB8(v15);
            v124 = v15;
            do
            {
              v125 = MEMORY[0x277CCABB0];
              v126 = sub_2337256DC(*v281);
              v130 = objc_msgSend_numberWithShort_(v125, v127, v126, v128, v129);
              objc_msgSend_addObject_(v27, v131, v130, v132, v133);

              --v124;
            }

            while (v124);
          }

          else
          {
            if (v15 < 2)
            {
              v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v21, v286, v23, v24);

              goto LABEL_116;
            }

            sub_233723AE0(__p, &v286);
            sub_233725F08(&v285, v13, __p, 0);
            v27 = sub_233755CB8(v15);
            v38 = v15;
            do
            {
              v39 = MEMORY[0x277CCABB0];
              v40 = sub_233725614(*v281);
              v44 = objc_msgSend_numberWithInt_(v39, v41, v40, v42, v43);
              objc_msgSend_addObject_(v27, v45, v44, v46, v47);

              --v38;
            }

            while (v38);
          }
        }
      }

      else if (v14 > 3)
      {
        if (v14 == 4)
        {
          if (v15 < 2)
          {
            v27 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v21, v286, v23, v24);

            goto LABEL_116;
          }

          sub_233723AE0(__p, &v286);
          sub_233725F08(&v285, v13, __p, 0);
          v27 = sub_233755CB8(v15);
          v99 = v15;
          do
          {
            v100 = MEMORY[0x277CCABB0];
            v101 = sub_233725614(*v281);
            v105 = objc_msgSend_numberWithUnsignedInt_(v100, v102, v101, v103, v104);
            objc_msgSend_addObject_(v27, v106, v105, v107, v108);

            --v99;
          }

          while (v99);
        }

        else if (v14 == 5)
        {
          if (v15 < 2)
          {
            sub_233723AE0(__p, &v286);
            sub_233725F08(&v285, v13, __p, 0);
            v215 = v13;
            v216 = MEMORY[0x277CCABB0];
            *&v217 = sub_2337257A8(*v215);
            v27 = objc_msgSend_numberWithFloat_(v216, v218, v219, v220, v221, v217);

            sub_233725FD4(&v285);
            goto LABEL_116;
          }

          sub_233723AE0(__p, &v286);
          sub_233725F08(&v285, v13, __p, 0);
          v27 = sub_233755CB8(v15);
          v134 = v15;
          do
          {
            v135 = MEMORY[0x277CCABB0];
            *&v136 = sub_2337257A8(*v281);
            v141 = objc_msgSend_numberWithFloat_(v135, v137, v138, v139, v140, v136);
            objc_msgSend_addObject_(v27, v142, v141, v143, v144);

            --v134;
          }

          while (v134);
        }

        else
        {
          if (v15 < 5)
          {
            v164 = v15;
            v27 = sub_233755CB8(v15);
            if (v15)
            {
              v168 = &v286;
              do
              {
                v169 = *v168;
                v168 = (v168 + 1);
                v170 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v165, v169, v166, v167);
                objc_msgSend_addObject_(v27, v171, v170, v172, v173);

                --v164;
              }

              while (v164);
            }

            goto LABEL_106;
          }

          sub_233723AE0(__p, &v286);
          sub_233725F08(&v285, v13, __p, 0);
          v27 = sub_233755CB8(v15);
          v48 = v15;
          do
          {
            v49 = MEMORY[0x277CCABB0];
            v50 = sub_2337256AC(*v281);
            v54 = objc_msgSend_numberWithChar_(v49, v51, v50, v52, v53);
            objc_msgSend_addObject_(v27, v55, v54, v56, v57);

            --v48;
          }

          while (v48);
        }
      }

      else
      {
        switch(v14)
        {
          case 1:
            if (v15 < 5)
            {
              v181 = v15;
              v27 = sub_233755CB8(v15);
              if (v15)
              {
                v185 = &v286;
                do
                {
                  v186 = *v185;
                  v185 = (v185 + 1);
                  v187 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v182, v186, v183, v184);
                  objc_msgSend_addObject_(v27, v188, v187, v189, v190);

                  --v181;
                }

                while (v181);
              }

LABEL_106:

              goto LABEL_116;
            }

            sub_233723AE0(__p, &v286);
            sub_233725F08(&v285, v13, __p, 0);
            v27 = sub_233755CB8(v15);
            v69 = v15;
            do
            {
              v70 = MEMORY[0x277CCABB0];
              v71 = sub_233725510(*v281);
              v75 = objc_msgSend_numberWithUnsignedChar_(v70, v72, v71, v73, v74);
              objc_msgSend_addObject_(v27, v76, v75, v77, v78);

              --v69;
            }

            while (v69);
            break;
          case 2:
            if (v15 < 5)
            {
              v198 = sub_233725404(*v13);
              v202 = v286;
              v203 = bswap32(v286);
              if (v198 == 2)
              {
                v202 = v203;
              }

              LODWORD(__p[0]) = v202;
              memset(&v285, 0, sizeof(v285));
              if (!v15)
              {
                goto LABEL_113;
              }

              v204 = v15;
              v205 = __p;
              do
              {
                v206 = *v205++;
                std::string::append(&v285, 1uLL, v206);
                --v204;
              }

              while (v204);
              if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, v285.__r_.__value_.__l.__data_, v200, v201);
              }

              else
              {
LABEL_113:
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, &v285, v200, v201);
              }
              v27 = ;

              if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v285.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              sub_233723AE0(__p, &v286);
              sub_233725F08(&v285, v13, __p, 0);
              __p[0] = 0;
              __p[1] = 0;
              v284 = 0;
              v120 = *v13;
              v282 = v15;
              v27 = &stru_284938540;
              if (sub_2337257E8(v120, &v282, __p))
              {
                if (v284 >= 0)
                {
                  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, __p, v122, v123);
                }

                else
                {
                  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, __p[0], v122, v123);
                }
                v27 = ;
              }

              if (SHIBYTE(v284) < 0)
              {
                operator delete(__p[0]);
              }

              sub_233725FD4(&v285);
            }

            goto LABEL_116;
          case 3:
            if (v15 < 3)
            {
              if (v15 != 2)
              {
                v27 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v21, v286, v23, v24);

                goto LABEL_116;
              }

              v27 = sub_233755CB8(2uLL);
              v159 = 0;
              do
              {
                v160 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v156, *(&v286 + v159), v157, v158);
                objc_msgSend_addObject_(v27, v161, v160, v162, v163);

                v159 += 2;
              }

              while (v159 != 4);
              goto LABEL_106;
            }

            sub_233723AE0(__p, &v286);
            sub_233725F08(&v285, v13, __p, 0);
            v27 = sub_233755CB8(v15);
            v28 = v15;
            do
            {
              v29 = MEMORY[0x277CCABB0];
              v30 = sub_2337255C0(*v281);
              v34 = objc_msgSend_numberWithUnsignedShort_(v29, v31, v30, v32, v33);
              objc_msgSend_addObject_(v27, v35, v34, v36, v37);

              --v28;
            }

            while (v28);
            break;
          default:
LABEL_77:
            v27 = v20;
            goto LABEL_116;
        }
      }

      sub_233725FD4(&v285);
LABEL_116:
      v222 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v21, v280, v23, v24);
      v227 = objc_msgSend_stringValue(v222, v223, v224, v225, v226);
      v231 = objc_msgSend_objectForKeyedSubscript_(v278, v228, v227, v229, v230);

      if (v231)
      {
        v235 = objc_msgSend_objectForKeyedSubscript_(v231, v232, qword_27DE37BA8, v233, v234);
        v239 = objc_msgSend_objectForKeyedSubscript_(v231, v236, qword_27DE37BC0, v237, v238);
        v243 = objc_msgSend_objectForKeyedSubscript_(v231, v240, qword_27DE37BB0, v241, v242);
        v250 = objc_msgSend_objectForKeyedSubscript_(v231, v244, qword_27DE37BB8, v245, v246);
        if (v243 && (objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v247, v14, v248, v249), v251 = objc_claimAutoreleasedReturnValue(), v255 = objc_msgSend_containsObject_(v243, v252, v251, v253, v254), v251, !v255))
        {
          NSLog(&cfstr_UnexpectedType.isa);
        }

        else if (v235)
        {
          v288[0] = @"tag";
          v256 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v247, v280, v248, v249);
          v289[0] = v256;
          v289[1] = v235;
          v288[1] = @"tagName";
          v288[2] = @"type";
          v260 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v257, v14, v258, v259);
          v289[2] = v260;
          v288[3] = @"count";
          v265 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v261, v15, v262, v263);
          v289[3] = v265;
          v289[4] = v27;
          v288[4] = @"val";
          v288[5] = @"hide";
          v266 = MEMORY[0x277CBEC28];
          if (v239)
          {
            v266 = v239;
          }

          v289[5] = v266;
          v267 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v264, v289, v288, 6);

          if (v250)
          {
            v270 = (v250)[2](v250, v267);

            v267 = v270;
          }

          objc_msgSend_setObject_forKeyedSubscript_(v276, v268, v267, v235, v269);
        }

        else
        {
          NSLog(&cfstr_NoTagName.isa);
        }
      }

      v13 = v281;
    }
  }

  if ((a4 & 1) != 0 && sub_233725614(*v13))
  {
    v273 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v273, "RawCameraException");
    __cxa_throw(v273, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v276;
}

void sub_233778338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);

  _Unwind_Resume(a1);
}

id sub_233778774(uint64_t a1, const char *a2)
{
  v57[13] = *MEMORY[0x277D85DE8];
  v56[0] = @"256";
  v54 = qword_27DE37BA8;
  v55 = *MEMORY[0x277CD3520];
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, &v55, &v54, 1);
  v57[0] = v29;
  v56[1] = @"257";
  v52 = qword_27DE37BA8;
  v53 = *MEMORY[0x277CD3370];
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, &v53, &v52, 1);
  v57[1] = v28;
  v56[2] = @"258";
  v50 = qword_27DE37BA8;
  v51 = *MEMORY[0x277CD2DF0];
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, &v51, &v50, 1);
  v57[2] = v27;
  v56[3] = @"259";
  v48 = qword_27DE37BA8;
  v49 = *MEMORY[0x277CD3478];
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, &v49, &v48, 1);
  v57[3] = v26;
  v56[4] = @"271";
  v46 = qword_27DE37BA8;
  v47 = *MEMORY[0x277CD34A8];
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, &v47, &v46, 1);
  v57[4] = v6;
  v56[5] = @"272";
  v44 = qword_27DE37BA8;
  v45 = *MEMORY[0x277CD34B0];
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, &v45, &v44, 1);
  v57[5] = v8;
  v56[6] = @"274";
  v42 = qword_27DE37BA8;
  v43 = *MEMORY[0x277CD34B8];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, &v43, &v42, 1);
  v57[6] = v10;
  v56[7] = @"282";
  v40 = qword_27DE37BA8;
  v41 = *MEMORY[0x277CD34E0];
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &v41, &v40, 1);
  v57[7] = v12;
  v56[8] = @"283";
  v38 = qword_27DE37BA8;
  v39 = *MEMORY[0x277CD34F0];
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v39, &v38, 1);
  v57[8] = v14;
  v56[9] = @"296";
  v36 = qword_27DE37BA8;
  v37 = *MEMORY[0x277CD34C8];
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v37, &v36, 1);
  v57[9] = v16;
  v56[10] = @"306";
  v34 = qword_27DE37BA8;
  v35 = *MEMORY[0x277CD3488];
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v35, &v34, 1);
  v57[10] = v18;
  v56[11] = @"315";
  v32 = qword_27DE37BA8;
  v33 = *MEMORY[0x277CD3470];
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v33, &v32, 1);
  v57[11] = v20;
  v56[12] = @"33432";
  v30 = qword_27DE37BA8;
  v31 = *MEMORY[0x277CD3480];
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v31, &v30, 1);
  v57[12] = v22;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v57, v56, 13);

  return v24;
}

id sub_233778C90(uint64_t a1, const char *a2)
{
  v160[31] = *MEMORY[0x277D85DE8];
  v159[0] = @"0";
  v2 = *MEMORY[0x277CD32E8];
  v157[0] = qword_27DE37BA8;
  v157[1] = qword_27DE37BB0;
  v158[0] = v2;
  v158[1] = &unk_284954A90;
  v157[2] = qword_27DE37BB8;
  v158[2] = &unk_284906E30;
  v96 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v158, v157, 3);
  v160[0] = v96;
  v159[1] = @"1";
  v3 = *MEMORY[0x277CD3280];
  v155[0] = qword_27DE37BA8;
  v155[1] = qword_27DE37BB0;
  v156[0] = v3;
  v156[1] = &unk_284954AA8;
  v95 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v156, v155, 2);
  v160[1] = v95;
  v159[2] = @"2";
  v5 = *MEMORY[0x277CD3278];
  v153[0] = qword_27DE37BA8;
  v153[1] = qword_27DE37BB0;
  v154[0] = v5;
  v154[1] = &unk_284954AC0;
  v153[2] = qword_27DE37BB8;
  v154[2] = &unk_284906E70;
  v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v154, v153, 3);
  v160[2] = v94;
  v159[3] = @"3";
  v7 = *MEMORY[0x277CD3290];
  v151[0] = qword_27DE37BA8;
  v151[1] = qword_27DE37BB0;
  v152[0] = v7;
  v152[1] = &unk_284954AD8;
  v93 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v152, v151, 2);
  v160[3] = v93;
  v159[4] = @"4";
  v9 = *MEMORY[0x277CD3288];
  v149[0] = qword_27DE37BA8;
  v149[1] = qword_27DE37BB0;
  v150[0] = v9;
  v150[1] = &unk_284954AF0;
  v149[2] = qword_27DE37BB8;
  v150[2] = &unk_284906E70;
  v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v150, v149, 3);
  v160[4] = v92;
  v159[5] = @"5";
  v11 = *MEMORY[0x277CD31F8];
  v147[0] = qword_27DE37BA8;
  v147[1] = qword_27DE37BB0;
  v148[0] = v11;
  v148[1] = &unk_284954B08;
  v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v148, v147, 2);
  v160[5] = v91;
  v159[6] = @"6";
  v13 = *MEMORY[0x277CD31F0];
  v145[0] = qword_27DE37BA8;
  v145[1] = qword_27DE37BB0;
  v146[0] = v13;
  v146[1] = &unk_284954B20;
  v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v146, v145, 2);
  v160[6] = v90;
  v159[7] = @"7";
  v15 = *MEMORY[0x277CD32D0];
  v143[0] = qword_27DE37BA8;
  v143[1] = qword_27DE37BB0;
  v144[0] = v15;
  v144[1] = &unk_284954B38;
  v143[2] = qword_27DE37BB8;
  v144[2] = &unk_284906E50;
  v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v144, v143, 3);
  v160[7] = v89;
  v159[8] = @"8";
  v17 = *MEMORY[0x277CD32B0];
  v141[0] = qword_27DE37BA8;
  v141[1] = qword_27DE37BB0;
  v142[0] = v17;
  v142[1] = &unk_284954B50;
  v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v142, v141, 2);
  v160[8] = v88;
  v159[9] = @"9";
  v19 = *MEMORY[0x277CD32C8];
  v139[0] = qword_27DE37BA8;
  v139[1] = qword_27DE37BB0;
  v140[0] = v19;
  v140[1] = &unk_284954B68;
  v87 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v140, v139, 2);
  v160[9] = v87;
  v159[10] = @"10";
  v21 = *MEMORY[0x277CD32A0];
  v137[0] = qword_27DE37BA8;
  v137[1] = qword_27DE37BB0;
  v138[0] = v21;
  v138[1] = &unk_284954B80;
  v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v138, v137, 2);
  v160[10] = v86;
  v159[11] = @"11";
  v23 = *MEMORY[0x277CD3208];
  v135[0] = qword_27DE37BA8;
  v135[1] = qword_27DE37BB0;
  v136[0] = v23;
  v136[1] = &unk_284954B98;
  v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v136, v135, 2);
  v160[11] = v85;
  v159[12] = @"12";
  v25 = *MEMORY[0x277CD32C0];
  v133[0] = qword_27DE37BA8;
  v133[1] = qword_27DE37BB0;
  v134[0] = v25;
  v134[1] = &unk_284954BB0;
  v84 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v134, v133, 2);
  v160[12] = v84;
  v159[13] = @"13";
  v27 = *MEMORY[0x277CD32B8];
  v131[0] = qword_27DE37BA8;
  v131[1] = qword_27DE37BB0;
  v132[0] = v27;
  v132[1] = &unk_284954BC8;
  v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v132, v131, 2);
  v160[13] = v83;
  v159[14] = @"14";
  v29 = *MEMORY[0x277CD32E0];
  v129[0] = qword_27DE37BA8;
  v129[1] = qword_27DE37BB0;
  v130[0] = v29;
  v130[1] = &unk_284954BE0;
  v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v130, v129, 2);
  v160[14] = v82;
  v159[15] = @"15";
  v31 = *MEMORY[0x277CD32D8];
  v127[0] = qword_27DE37BA8;
  v127[1] = qword_27DE37BB0;
  v128[0] = v31;
  v128[1] = &unk_284954BF8;
  v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v128, v127, 2);
  v160[15] = v81;
  v159[16] = @"16";
  v33 = *MEMORY[0x277CD3270];
  v125[0] = qword_27DE37BA8;
  v125[1] = qword_27DE37BB0;
  v126[0] = v33;
  v126[1] = &unk_284954C10;
  v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v126, v125, 2);
  v160[16] = v80;
  v159[17] = @"17";
  v35 = *MEMORY[0x277CD3268];
  v123[0] = qword_27DE37BA8;
  v123[1] = qword_27DE37BB0;
  v124[0] = v35;
  v124[1] = &unk_284954C28;
  v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v124, v123, 2);
  v160[17] = v79;
  v159[18] = @"18";
  v37 = *MEMORY[0x277CD3298];
  v121[0] = qword_27DE37BA8;
  v121[1] = qword_27DE37BB0;
  v122[0] = v37;
  v122[1] = &unk_284954C40;
  v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v122, v121, 2);
  v160[18] = v78;
  v159[19] = @"19";
  v39 = *MEMORY[0x277CD3240];
  v119[0] = qword_27DE37BA8;
  v119[1] = qword_27DE37BB0;
  v120[0] = v39;
  v120[1] = &unk_284954C58;
  v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v120, v119, 2);
  v160[19] = v77;
  v159[20] = @"20";
  v41 = *MEMORY[0x277CD3238];
  v117[0] = qword_27DE37BA8;
  v117[1] = qword_27DE37BB0;
  v118[0] = v41;
  v118[1] = &unk_284954C70;
  v117[2] = qword_27DE37BB8;
  v118[2] = &unk_284906E70;
  v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v118, v117, 3);
  v160[20] = v76;
  v159[21] = @"21";
  v43 = *MEMORY[0x277CD3250];
  v115[0] = qword_27DE37BA8;
  v115[1] = qword_27DE37BB0;
  v116[0] = v43;
  v116[1] = &unk_284954C88;
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v116, v115, 2);
  v160[21] = v75;
  v159[22] = @"22";
  v45 = *MEMORY[0x277CD3248];
  v113[0] = qword_27DE37BA8;
  v113[1] = qword_27DE37BB0;
  v114[0] = v45;
  v114[1] = &unk_284954CA0;
  v113[2] = qword_27DE37BB8;
  v114[2] = &unk_284906E70;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v114, v113, 3);
  v160[22] = v74;
  v159[23] = @"23";
  v47 = *MEMORY[0x277CD3220];
  v111[0] = qword_27DE37BA8;
  v111[1] = qword_27DE37BB0;
  v112[0] = v47;
  v112[1] = &unk_284954CB8;
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, v112, v111, 2);
  v160[23] = v49;
  v159[24] = @"24";
  v50 = *MEMORY[0x277CD3218];
  v109[0] = qword_27DE37BA8;
  v109[1] = qword_27DE37BB0;
  v110[0] = v50;
  v110[1] = &unk_284954CD0;
  v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v110, v109, 2);
  v160[24] = v52;
  v159[25] = @"25";
  v53 = *MEMORY[0x277CD3230];
  v107[0] = qword_27DE37BA8;
  v107[1] = qword_27DE37BB0;
  v108[0] = v53;
  v108[1] = &unk_284954CE8;
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v108, v107, 2);
  v160[25] = v55;
  v159[26] = @"26";
  v56 = *MEMORY[0x277CD3228];
  v105[0] = qword_27DE37BA8;
  v105[1] = qword_27DE37BB0;
  v106[0] = v56;
  v106[1] = &unk_284954D00;
  v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v106, v105, 2);
  v160[26] = v58;
  v159[27] = @"27";
  v59 = *MEMORY[0x277CD32A8];
  v103[0] = qword_27DE37BA8;
  v103[1] = qword_27DE37BB0;
  v104[0] = v59;
  v104[1] = &unk_284954D18;
  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, v104, v103, 2);
  v160[27] = v61;
  v159[28] = @"28";
  v62 = *MEMORY[0x277CD3200];
  v101[0] = qword_27DE37BA8;
  v101[1] = qword_27DE37BB0;
  v102[0] = v62;
  v102[1] = &unk_284954D30;
  v64 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, v102, v101, 2);
  v160[28] = v64;
  v159[29] = @"29";
  v65 = *MEMORY[0x277CD3210];
  v99[0] = qword_27DE37BA8;
  v99[1] = qword_27DE37BB0;
  v100[0] = v65;
  v100[1] = &unk_284954D48;
  v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, v100, v99, 2);
  v160[29] = v67;
  v159[30] = @"30";
  v68 = *MEMORY[0x277CD3260];
  v97[0] = qword_27DE37BA8;
  v97[1] = qword_27DE37BB0;
  v98[0] = v68;
  v98[1] = &unk_284954D60;
  v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, v98, v97, 2);
  v160[30] = v70;
  v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, v160, v159, 31);

  return v72;
}

id sub_233779AB4(uint64_t a1, void *a2)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v2, v8, @"val", v9, v10);
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v11, v12, v13, v14, v15) == 4)
    {
      v16 = v11;
      v21 = objc_msgSend_bytes(v16, v17, v18, v19, v20);
      v25 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v22, *v21, v23, v24);
      v44[0] = v25;
      v29 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v26, v21[1], v27, v28);
      v44[1] = v29;
      v33 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v30, v21[2], v31, v32);
      v44[2] = v33;
      v37 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v34, v21[3], v35, v36);
      v44[3] = v37;
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v44, 4, v39);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v41, v40, @"parsedVal", v42);
    }
  }

  return v7;
}

void sub_233779C48(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_233779CC0(uint64_t a1, void *a2)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v2, v8, @"val", v9, v10);
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v11, v12, v13, v14, v15) == 4)
    {
      v16 = v11;
      v21 = objc_msgSend_bytes(v16, v17, v18, v19, v20);
      v25 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v22, *v21, v23, v24);
      v44[0] = v25;
      v29 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v26, v21[1], v27, v28);
      v44[1] = v29;
      v33 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v30, v21[2], v31, v32);
      v44[2] = v33;
      v37 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v34, v21[3], v35, v36);
      v44[3] = v37;
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v44, 4, v39);

      objc_msgSend_setObject_forKeyedSubscript_(v7, v41, v40, @"parsedVal", v42);
    }
  }

  return v7;
}

void sub_233779E54(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_233779ECC(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v2, v8, @"val", v9, v10);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v11, v12, v13, v14, v15) == 3)
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v11, v16, 0, v17, v18);
    objc_msgSend_doubleValue(v19, v20, v21, v22, v23);
    v25 = v24;

    v29 = objc_msgSend_objectAtIndexedSubscript_(v11, v26, 1, v27, v28);
    objc_msgSend_doubleValue(v29, v30, v31, v32, v33);
    v35 = v34;

    v39 = objc_msgSend_objectAtIndexedSubscript_(v11, v36, 2, v37, v38);
    objc_msgSend_doubleValue(v39, v40, v41, v42, v43);
    v45 = v25 + v35 / 60.0 + v44 / 3600.0;

    v46 = 2000000000.0;
    if (v45 <= 2000000000.0)
    {
      v46 = v45;
    }

    if (v45 >= -2000000000.0)
    {
      v47 = v46;
    }

    else
    {
      v47 = -2000000000.0;
    }

    v48 = MEMORY[0x277CCACA8];
    v49 = fmod(v47 * 60.0, 60.0);
    v50 = fmod(v47 * 3600.0, 60.0);
    v54 = objc_msgSend_stringWithFormat_(v48, v51, @"%.2d:%.2d:%05.2f", v52, v53, v47, v49, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v55, v54, @"parsedVal", v56);
  }

  return v7;
}

void sub_23377A08C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_23377A0D8(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v2, v8, @"val", v9, v10);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v11, v12, v13, v14, v15) == 3)
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v11, v16, 0, v17, v18);
    objc_msgSend_doubleValue(v19, v20, v21, v22, v23);
    v25 = v24;

    v29 = objc_msgSend_objectAtIndexedSubscript_(v11, v26, 1, v27, v28);
    objc_msgSend_doubleValue(v29, v30, v31, v32, v33);
    v35 = v34;

    v39 = objc_msgSend_objectAtIndexedSubscript_(v11, v36, 2, v37, v38);
    objc_msgSend_doubleValue(v39, v40, v41, v42, v43);
    v45 = v25 + v35 / 60.0 + v44 / 3600.0;

    v50 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v46, v47, v48, v49, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v51, v50, @"parsedVal", v52);
  }

  return v7;
}

void sub_23377A220(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_23377A270(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377A3D4;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495C790, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377A3D4(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377A494(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x277D85DE8];
  v114 = a2;
  v115 = *(a1 + 32);
  v116 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v3, v4, v5, v6);
  v10 = objc_msgSend_objectForKeyedSubscript_(v114, v7, @"type", v8, v9);
  isEqualToValue = objc_msgSend_isEqualToValue_(v10, v11, &unk_284956DB8, v12, v13);

  if (isEqualToValue)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v114, v15, @"val", v16, v17);
    v23 = objc_msgSend_length(v18, v19, v20, v21, v22);
    sub_233755CB8(v23 >> 1);
    objc_claimAutoreleasedReturnValue();
    v24 = v18;
    objc_msgSend_bytes(v24, v25, v26, v27, v28);
    v121 = objc_msgSend_length(v18, v29, v30, v31, v32);
    sub_233723C18(&v122, &v121);
    sub_233725138();
  }

  v33 = objc_msgSend_objectForKeyedSubscript_(v114, v15, @"val", v16, v17);
  v37 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0, v35, v36);
  if (objc_msgSend_unsignedShortValue(v37, v38, v39, v40, v41) <= 0x1F)
  {
  }

  else
  {
    v45 = objc_msgSend_objectAtIndexedSubscript_(v33, v42, 0, v43, v44);
    v50 = objc_msgSend_unsignedShortValue(v45, v46, v47, v48, v49) < 0x22;

    if (v50)
    {
      v54 = &unk_284954D78;
      goto LABEL_12;
    }
  }

  v55 = objc_msgSend_objectAtIndexedSubscript_(v33, v51, 0, v52, v53);
  if (objc_msgSend_unsignedShortValue(v55, v56, v57, v58, v59) <= 0xF)
  {

    v54 = 0;
  }

  else
  {
    v63 = objc_msgSend_objectAtIndexedSubscript_(v33, v60, 0, v61, v62);
    v68 = objc_msgSend_unsignedShortValue(v63, v64, v65, v66, v67) < 0x20;

    if (v68)
    {
      v54 = &unk_284954D90;
    }

    else
    {
      v54 = 0;
    }
  }

LABEL_12:
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v51, &v117, v123, 16);
  if (v73)
  {
    v74 = *v118;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v118 != v74)
        {
          objc_enumerationMutation(v54);
        }

        v76 = *(*(&v117 + 1) + 8 * i);
        *(v115 + 736) = 1;
        v77 = objc_msgSend_objectForKeyedSubscript_(v76, v69, @"index", v71, v72);
        v82 = objc_msgSend_unsignedIntValue(v77, v78, v79, v80, v81);

        v86 = objc_msgSend_objectForKeyedSubscript_(v76, v83, @"name", v84, v85);
        v90 = objc_msgSend_objectForKeyedSubscript_(v76, v87, @"size", v88, v89);
        v95 = objc_msgSend_unsignedIntValue(v90, v91, v92, v93, v94);

        if (v95 == 1)
        {
          v99 = objc_msgSend_objectAtIndexedSubscript_(v33, v96, v82, v97, v98);
          objc_msgSend_setObject_forKeyedSubscript_(v116, v100, v99, v86, v101);
        }

        else
        {
          v102 = v95;
          v99 = sub_233755CB8(v95);
          if (v95)
          {
            do
            {
              v106 = objc_msgSend_objectAtIndexedSubscript_(v33, v103, v82, v104, v105);
              objc_msgSend_addObject_(v99, v107, v106, v108, v109);

              ++v82;
              --v102;
            }

            while (v102);
          }

          objc_msgSend_setObject_forKeyedSubscript_(v116, v103, v99, v86, v105);
        }
      }

      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v69, &v117, v123, 16);
    }

    while (v73);
  }

  v110 = objc_msgSend_mutableCopy(v114, v69, v70, v71, v72);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v111, v116, @"parsedVal", v112);

  return v110;
}

id sub_23377A9F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377AB5C;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495CF88, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377AB5C(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377AC1C(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377AD80;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495CFB0, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377AD80(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377AE40(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377AFA4;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495CFD8, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377AFA4(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377B064(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377B1C8;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495D000, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377B1C8(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377B288(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377B3EC;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495D028, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377B3EC(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377B4AC(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377B610;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495D050, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377B610(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

id sub_23377B6D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = objc_msgSend_objectForKeyedSubscript_(v2, v3, @"val", v4, v5);
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_23377B834;
  v28 = &unk_2789EECB0;
  v12 = v6;
  v29 = v12;
  v13 = v11;
  v30 = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(&unk_28495D078, v14, &v25, v15, v16);
  v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20, v25, v26, v27, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v13, @"parsedVal", v23);

  return v21;
}

void sub_23377B834(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v10 = objc_msgSend_unsignedIntegerValue(v5, v6, v7, v8, v9);
  if (objc_msgSend_count(*(a1 + 32), v11, v12, v13, v14) > v10)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v10, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v21, v20);
  }
}

void sub_23377B8F8(uint64_t a1)
{
  sub_23377B938(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23377B938(uint64_t a1)
{
  *a1 = &unk_284906B70;

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  return sub_233755950(a1);
}

void *sub_23377BA5C(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284906FD8;
  sub_23376AB6C((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_23377BAE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284906FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23377BB60(uint64_t a1, void **a2)
{
  v2 = *sub_233757640(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_23377BCC0(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, void **a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907028;
  sub_23377BDC4((a1 + 3), a2, *a3, a4, a5, *a6, 16);
}

void sub_23377BD48(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_23377BDC4(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, void *a6, int a7)
{
  v13 = a6;
  sub_2337AD9D8(a1, a2, a3, a4, a5);
  *a1 = &unk_2849379D0;
  *(a1 + 188) = a7;
  *(a1 + 192) = 0;
  *(a1 + 200) = v13;
  *(a1 + 256) = 0;
  sub_23384F87C();
}

void sub_23377C0D8(_Unwind_Exception *a1)
{
  v5 = *(v2 + 272);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  sub_233723A54(v2);
  _Unwind_Resume(a1);
}

id sub_23377C168(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = @"com.fuji.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".raf.";
  v42[3] = &unk_2849574D8;
  v42[4] = &unk_2849574F0;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2338F982C, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_23377C460, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_23377C46C, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_23377C478, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_23377C484, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_23377C490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_23377FED4();
}

double sub_23377C52C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *v5 = &unk_284907098;
  *(v5 + 1380) = 0;
  *(v5 + 1384) = 0;
  *(v5 + 1392) = 0;
  *(v5 + 1604) = 0;
  *(v5 + 1608) = 0;
  *(v5 + 1612) = 0;
  *(v5 + 1616) = 0;
  *(v5 + 1620) = 0;
  *(v5 + 1624) = 0;
  *(v5 + 1628) = 0;
  *(v5 + 1632) = 0;
  *(v5 + 1640) = 0;
  *(v5 + 1180) = 0;
  *(v5 + 1184) = 0u;
  *(v5 + 1200) = 0u;
  *(v5 + 1216) = 0u;
  *(v5 + 1232) = 0u;
  *(v5 + 1248) = 0u;
  *(v5 + 1264) = 0u;
  *(v5 + 1280) = 0u;
  *(v5 + 1296) = 0u;
  *(v5 + 1312) = 0u;
  *(v5 + 1328) = 0u;
  *(v5 + 1344) = 0u;
  *(v5 + 1357) = 0u;
  *(v5 + 1400) = 0u;
  *(v5 + 1416) = 0u;
  *(v5 + 1440) = 0;
  *(v5 + 1448) = 0;
  *(v5 + 1456) = 0u;
  *(v5 + 1472) = 0u;
  *(v5 + 1488) = 0u;
  *(v5 + 1504) = 0u;
  *(v5 + 1520) = 0u;
  *(v5 + 1536) = 0u;
  *(v5 + 1552) = 0u;
  *(v5 + 1568) = 0u;
  *(v5 + 1584) = 0u;
  *(v5 + 1600) = 0;
  result = NAN;
  *(v5 + 1432) = -1;
  return result;
}

void sub_23377C60C(void **a1)
{
  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 100;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v2 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  v23 = v2;
  sub_2337338AC(a1, &v20);
  v3 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v4 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 128;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v5 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  v22 = v5;
  sub_2337338AC(a1, &v20);
  v6 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v7 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (v4 == 2 || v7 == 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 == 3 || v7 == 3)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 92;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  v8 = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (((*(*a1 + 7))(a1) & 1) == 0)
  {
    sub_23377CE08(a1, v8);
  }

  sub_2337338AC(a1, &v20);
  LODWORD(v17) = 84;
  (*(*v20 + 40))(v20, &v17, 0);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  *(a1 + 337) = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v20);
  *(a1 + 338) = sub_233725614(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_2337338AC(a1, &v17);
  v19 = *(a1 + 337) + 12;
  sub_233723AE0(&v15, &v19);
  sub_233754E8C(&v20, &v17, &v15);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  sub_23374B9D8(a1);
  sub_233754F18(&v20);
  if (v23)
  {
    sub_2337338AC(a1, &v17);
    sub_233723AE0(&v15, &v23);
    sub_233754E8C(&v20, &v17, &v15);
    if (v18)
    {
      sub_2337239E8(v18);
    }

    sub_2337338AC(a1, &v15);
    v19 = 0;
    sub_233725F08(&v17, &v15, &v19, 0);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v9 = sub_2337255C0(v15);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v10 = sub_2337255C0(v15);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    if (v9 == 18761 && v10 == 10752 || v9 == 19789 && v10 == 42)
    {
      sub_23374B9D8(a1);
    }

    else
    {
      a1[175] = v23;
      a1[177] = v3;
    }

    sub_233725FD4(&v17);
    sub_233754F18(&v20);
  }

  ++*(a1 + 336);
  if (v22)
  {
    sub_2337338AC(a1, &v20);
    if ((**v20)(v20))
    {
      v11 = 1;
    }

    else
    {
      sub_2337338AC(a1, &v17);
      if ((**v17)(v17))
      {
        v11 = 0;
      }

      else
      {
        v12 = v22;
        sub_2337338AC(a1, &v15);
        v11 = v12 + v6 < (*(*v15 + 16))(v15);
        if (v16)
        {
          sub_2337239E8(v16);
        }
      }

      if (v18)
      {
        sub_2337239E8(v18);
      }
    }

    if (v21)
    {
      sub_2337239E8(v21);
    }

    if (v11)
    {
      sub_2337338AC(a1, &v17);
      sub_233723AE0(&v15, &v22);
      sub_233754E8C(&v20, &v17, &v15);
      if (v18)
      {
        sub_2337239E8(v18);
      }

      sub_2337338AC(a1, &v15);
      v19 = 0;
      sub_233725F08(&v17, &v15, &v19, 0);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      sub_2337338AC(a1, &v15);
      v13 = sub_2337255C0(v15);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      sub_2337338AC(a1, &v15);
      v14 = sub_2337255C0(v15);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      if (v13 == 18761 && v14 == 10752 || v13 == 19789 && v14 == 42)
      {
        sub_23374B9D8(a1);
      }

      else
      {
        a1[176] = v22;
        a1[178] = v6;
      }

      sub_233725FD4(&v17);
      sub_233754F18(&v20);
    }
  }
}

void sub_23377CCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, char a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_23377CE08(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v35[0] = a2;
  sub_2337338AC(a1, &__p);
  v3 = __p;
  sub_2337268D8(&__src, v35);
  (*(*v3 + 40))(v3, &__src, 0);
  if (v32)
  {
    sub_2337239E8(v32);
  }

  sub_2337338AC(a1, &__p);
  LODWORD(__src) = sub_233725614(__p);
  sub_233726998(&v34, &__src);
  if (v32)
  {
    sub_2337239E8(v32);
  }

  sub_2337338AC(a1, &__p);
  v4 = (*(*__p + 48))(__p);
  LODWORD(v27) = 4;
  LODWORD(__src) = v34;
  LODWORD(v29) = *sub_23378007C(&__src, &v27);
  LODWORD(__src) = v4;
  v5 = *sub_233723874(&__src, &v29);
  sub_2337338AC(a1, &__src);
  v6 = (*(*__src + 16))(__src);
  v8 = v5 < 0 || v6 >= v5;
  if (v37)
  {
    sub_2337239E8(v37);
  }

  if (v32)
  {
    sub_2337239E8(v32);
  }

  if (v34 - 1 < 0xC8 && v8)
  {
    for (i = 0; i < v34; ++i)
    {
      sub_2337338AC(a1, &__p);
      v11 = sub_2337255C0(__p);
      if (v32)
      {
        sub_2337239E8(v32);
      }

      sub_2337338AC(a1, &__p);
      v12 = sub_2337255C0(__p);
      if (v32)
      {
        sub_2337239E8(v32);
      }

      sub_2337338AC(a1, &__p);
      v13 = (*(*__p + 48))(__p);
      if (v32)
      {
        sub_2337239E8(v32);
      }

      if (v11 <= 288)
      {
        if (v11 != 256)
        {
          if (v11 == 272)
          {
            if (v12 == 4)
            {
              sub_2337338AC(a1, &__p);
              v19 = sub_2337255C0(__p);
              if (v32)
              {
                sub_2337239E8(v32);
              }

              sub_2337338AC(a1, &__p);
              v20 = sub_2337255C0(__p);
              if (v32)
              {
                sub_2337239E8(v32);
              }

              if ((*(a1 + 1380) & 1) == 0)
              {
                *(a1 + 1380) = 1;
              }

              *(a1 + 1372) = v20 | (v19 << 32);
            }
          }

          else if (v11 == 273 && v12 == 4)
          {
            sub_2337338AC(a1, &__p);
            v14 = sub_2337255C0(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            sub_2337338AC(a1, &__p);
            v15 = sub_2337255C0(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            if ((*(a1 + 1392) & 1) == 0)
            {
              *(a1 + 1392) = 1;
            }

            *(a1 + 1384) = v15 | (v14 << 32);
          }

          goto LABEL_79;
        }

        if (v12 == 4)
        {
          sub_2337338AC(a1, &__p);
          *(a1 + 1360) = sub_2337255C0(__p);
          if (v32)
          {
            sub_2337239E8(v32);
          }

          sub_2337338AC(a1, &__p);
          *(a1 + 1356) = sub_2337255C0(__p);
          goto LABEL_59;
        }
      }

      else
      {
        if (v11 > 12271)
        {
          if (v11 == 12272)
          {
            sub_23372A488(&__p, "RAF:WB_GRGBLevels");
            sub_2337338AC(a1, &v29);
            LODWORD(__src) = sub_2337255C0(v29);
            sub_2337338AC(a1, &v27);
            HIDWORD(__src) = sub_2337255C0(v27);
            sub_2337338AC(a1, &v25);
            LODWORD(v37) = sub_2337255C0(v25);
            sub_2337338AC(a1, &v23);
            HIDWORD(v37) = sub_2337255C0(v23);
            v35[2] = &__p;
            v18 = sub_2337577E4(a1 + 120, &__p);
            sub_23375538C((v18 + 56), &__src, &v38, 4uLL);
            if (v24)
            {
              sub_2337239E8(v24);
            }

            if (v26)
            {
              sub_2337239E8(v26);
            }

            if (v28)
            {
              sub_2337239E8(v28);
            }

            if (v30)
            {
              sub_2337239E8(v30);
            }

            if (v33 < 0)
            {
              operator delete(__p);
            }
          }

          else if (v11 == 38480 && v12 == 4)
          {
            sub_2337338AC(a1, &__p);
            v16 = sub_2337256DC(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            sub_2337338AC(a1, &__p);
            v17 = sub_2337256DC(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            *(a1 + 1632) = v16 / v17;
            *(a1 + 1640) = 1;
          }

          goto LABEL_79;
        }

        if (v11 == 289)
        {
          if (v12 == 4)
          {
            sub_2337338AC(a1, &__p);
            *(a1 + 1368) = sub_2337255C0(__p);
            if (v32)
            {
              sub_2337239E8(v32);
            }

            sub_2337338AC(a1, &__p);
            *(a1 + 1364) = sub_2337255C0(__p);
            goto LABEL_59;
          }
        }

        else if (v11 == 304 && v12 == 4)
        {
          sub_2337338AC(a1, &__p);
          *(a1 + 1396) = sub_233725614(__p);
LABEL_59:
          if (v32)
          {
            sub_2337239E8(v32);
          }
        }
      }

LABEL_79:
      sub_2337338AC(a1, &__p);
      v21 = v12;
      v22 = __p;
      __src = v13 + v21;
      sub_2337268D8(&v29, &__src);
      (*(*v22 + 40))(v22, &v29, 0);
      if (v32)
      {
        sub_2337239E8(v32);
      }
    }
  }
}

void sub_23377D434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 96);
  if (v24)
  {
    sub_2337239E8(v24);
  }

  if (a18)
  {
    sub_2337239E8(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23377D5F4(_BYTE *a1)
{
  if (a1[1380] == 1 && (a1[1392] & 1) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x800000008;
  }

  (*(*a1 + 800))(a1);
  return v1;
}

uint64_t sub_23377D690(uint64_t a1)
{
  if (*(a1 + 1380) == 1 && *(a1 + 1392) == 1)
  {
    return *(a1 + 1372);
  }

  (*(*a1 + 800))(a1);
  return 0;
}

void sub_23377D728(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  if (a2[1] == *a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**a2 + 16);
  }

  sub_233723AE0(&v6, (a1 + 1348));
  v5 = *(a1 + 1352);
  sub_23373401C(a1, &v6, &v5, v4, &v7);
  if (v7)
  {
    sub_233753C74(a2, &v7);
  }

  if (*(&v7 + 1))
  {
    sub_2337239E8(*(&v7 + 1));
  }
}

void sub_23377D7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_23377D7F8(uint64_t a1)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_2337338AC(a1, &v9);
  v2 = v9;
  v7 = 8;
  sub_233726998(&v8, &v7);
  v3 = sub_2337257E8(v2, &v8, &__p);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if (SHIBYTE(v13) == 8)
    {
      p_p = &__p;
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (v12 != 8)
  {
    goto LABEL_10;
  }

  p_p = __p;
LABEL_9:
  if (*p_p != 0x4D4C4946494A5546)
  {
    goto LABEL_10;
  }

  sub_2337338AC(a1, &v9);
  sub_233725614(v9);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  (*(*a1 + 128))(a1, 1);
  sub_2337338AC(a1, &v9);
  v8 = (*(*v9 + 48))(v9);
  (*(*a1 + 160))(a1, &v8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v5 = 1;
LABEL_11:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_23377D98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23377D9D0()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v104 = *MEMORY[0x277D85DE8];
  if (*v2 == -4096)
  {
    if (v2[1] == 13)
    {
      sub_2337338AC(v0, &v98);
      LODWORD(__src) = *(v3 + 2);
      sub_233723AE0(&v95, &__src);
      sub_233725F08(v100, &v98, &v95, 0);
      if (v99)
      {
        sub_2337239E8(v99);
      }

      v75 = v3;
      v6 = sub_23374DF5C(v5, v4, &v98);
      if (v6)
      {
        v7 = 0;
        v79 = (v5 + 1344);
        v74 = v5 + 1416;
        v76 = v5 + 1442;
        v77 = v5 + 1180;
        v8 = v6;
        v78 = v4;
        while (2)
        {
          v9 = &v98 + 12 * v7 + 4;
          switch(*v9)
          {
            case 0xF001:
              if (v75[1] != 3)
              {
                goto LABEL_149;
              }

              goto LABEL_111;
            case 0xF002:
              if (*(v9 + 1) == 3)
              {
LABEL_111:
                LODWORD(__src) = 0;
                sub_233726998(&v95, &__src);
                v51 = sub_23374B704(&v98 + 12 * v7 + 4, &v95);
                v95 = v4;
                *(sub_2337575A8(v5 + 536, &v4->__vftable) + 56) = v51;
              }

              else
              {
LABEL_149:
                v67 = *(v9 + 2);
                v95 = v4;
                *(sub_2337575A8(v5 + 536, &v4->__vftable) + 56) = v67;
              }

              goto LABEL_178;
            case 0xF003:
              if (*(v9 + 1) != 4)
              {
                goto LABEL_178;
              }

              v95 = 0;
              v96 = 0;
              v97 = 0;
              if (sub_23375134C(v5, &v98 + 12 * v7 + 4, &v95))
              {
                __src = v4;
                v50 = (sub_2337577E4(v5 + 656, &v4->__vftable) + 56);
                if (v50 != &v95)
                {
                  sub_233723454(v50, v95, v96, (v96 - v95) >> 2);
                }
              }

              *(v5 + 1600) = *(v9 + 2);
              *(v5 + 1604) = 1;
              goto LABEL_176;
            case 0xF004:
              if (*(v9 + 1) == 4)
              {
                *(v5 + 1608) = *(v9 + 2);
                *(v5 + 1612) = 1;
              }

              goto LABEL_178;
            case 0xF005:
              if (*(v9 + 1) == 4)
              {
                *(v5 + 1616) = *(v9 + 2);
                *(v5 + 1620) = 1;
              }

              goto LABEL_178;
            case 0xF006:
              if (*(v9 + 1) == 4)
              {
                *(v5 + 1624) = *(v9 + 2);
                *(v5 + 1628) = 1;
              }

              goto LABEL_178;
            case 0xF007:
              if (*(v9 + 1) - 3 > 1)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v5, &v95);
              LODWORD(__src) = sub_233725414(v95);
              if (v96)
              {
                sub_2337239E8(v96);
              }

              v95 = 0;
              v96 = 0;
              v97 = 0;
              if (!sub_23375134C(v5, &v98 + 12 * v7 + 4, &v95))
              {
                goto LABEL_176;
              }

              if (v95 == v96)
              {
                sub_2338F9990();
                goto LABEL_176;
              }

              if (!__src)
              {
                goto LABEL_175;
              }

              if ((__src & 0x80000000) != 0)
              {
                sub_2338F995C();
                goto LABEL_176;
              }

              if (((v96 - v95) & 0x3FFFFFFFCLL) == 0)
              {
                goto LABEL_175;
              }

              v52 = 0;
              v53 = ((v96 - v95) >> 2);
              while (1)
              {
                v54 = sub_233751844(&__src);
                v55 = *(v95 + v52);
                if (__CFADD__(v54, v55))
                {
                  break;
                }

                *(v95 + v52++) = v55 + v54;
                if (v53 == v52)
                {
                  goto LABEL_175;
                }
              }

              sub_2338F98D4();
LABEL_175:
              sub_2338F9908(v79, &v95, v5 + 1400);
LABEL_176:
              v65 = v95;
              if (v95)
              {
LABEL_177:
                v96 = v65;
                operator delete(v65);
              }

              goto LABEL_178;
            case 0xF008:
              if (*(v9 + 1) - 3 > 1)
              {
                goto LABEL_178;
              }

              v95 = 0;
              v96 = 0;
              v97 = 0;
              if (!sub_23375134C(v5, &v98 + 12 * v7 + 4, &v95))
              {
                goto LABEL_176;
              }

              v56 = v95;
              v57 = v96;
              if (v95 == v96)
              {
                v59 = *MEMORY[0x277D85DF8];
                v60 = "eFujiCD_RawDataBytes: Empty value vector\n";
                v61 = 41;
              }

              else
              {
                v58 = *v79;
                if (v58 < 2)
                {
                  v68 = 0;
                  v69 = 0;
                  *(v74 + 8 * v58) = 0;
                  v70 = (v57 - v56) >> 2;
                  v71 = 1;
                  while (1)
                  {
                    v72 = *&v56[4 * v69];
                    if (0xFFFFFFFFLL - v68 < v72)
                    {
                      break;
                    }

                    v68 += v72;
                    v69 = v71;
                    v73 = v70 > v71++;
                    *(v74 + 8 * v58) = v68;
                    if (!v73)
                    {
                      goto LABEL_176;
                    }
                  }

                  v59 = *MEMORY[0x277D85DF8];
                  v60 = "eFujiCD_RawDataBytes: Integer overflow in length calculation\n";
                  v61 = 61;
                }

                else
                {
                  v59 = *MEMORY[0x277D85DF8];
                  v60 = "eFujiCD_RawDataBytes: Array index out of bounds\n";
                  v61 = 48;
                }
              }

              fwrite(v60, v61, 1uLL, v59);
              goto LABEL_176;
            case 0xF009:
              if (*(v9 + 1) == 4 && *(v9 + 1) == 1)
              {
                *(v5 + 1432 + 4 * *v79) = *(v9 + 2);
              }

              goto LABEL_178;
            case 0xF00A:
              v62 = *(v9 + 1);
              if (*(v9 + 1) != 4 || (v62 & 0xFFFFFFDF) != 4)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v5, &__src);
              sub_23374AEDC(&v98 + 12 * v7 + 4, &__src, &v95);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              if (v62 == 36 && v95 + 32 != v96)
              {
                v96 = v95 + 32;
              }

              __src = v4;
              v64 = (sub_233757B14(v5 + 264, &v4->__vftable) + 56);
              if (v64 != &v95)
              {
                sub_23373176C(v64, v95, v96, (v96 - v95) >> 3);
              }

              v65 = v95;
              if (!v95)
              {
                goto LABEL_178;
              }

              goto LABEL_177;
            case 0xF00B:
              if (*(v9 + 1) != 10 || *(v9 + 1) < 2u)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v5, &__src);
              LODWORD(v91) = sub_233749410(&v98 + 12 * v7 + 4);
              sub_233726A8C(&__p, &v91);
              sub_233725F08(&v95, &__src, &__p, 0);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              sub_2337338AC(v5, &__src);
              v21 = sub_233725614(__src);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              sub_2337338AC(v5, &__src);
              v22 = sub_233725614(__src);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              if (v22 <= 0x10)
              {
                sub_233730758(&__src, 2 * v22);
                if (v22)
                {
                  v23 = 0;
                  do
                  {
                    sub_2337338AC(v5, &__p);
                    v24 = sub_233725614(__p);
                    if (v94)
                    {
                      sub_2337239E8(v94);
                    }

                    sub_2337338AC(v5, &__p);
                    v25 = sub_233725614(__p);
                    if (v94)
                    {
                      sub_2337239E8(v94);
                    }

                    *(&__src->__vftable + v23) = v24 / v25;
                    v23 += 8;
                  }

                  while (16 * v22 != v23);
                }

                *(v77 + *v79) = 0;
                sub_233730758(&__p, v22);
                sub_233730758(&v91, v22);
                if (v22)
                {
                  v26 = 0;
                  v27 = __src;
                  v28 = v91;
                  v29 = __p;
                  do
                  {
                    *&v28[v26] = v27->__vftable;
                    v30 = *(&v27->__vftable + v22);
                    v27 = (v27 + 8);
                    *&v29[v26] = v30;
                    v26 += 8;
                  }

                  while (8 * v22 != v26);
                }

                *(v5 + 1184 + 4 * *v79) = v21;
                v31 = *v79;
                v32 = (v5 + 1192 + 24 * *v79);
                v4 = v78;
                if (v32 != &v91)
                {
                  sub_23373176C(v32, v91, v92, (v92 - v91) >> 3);
                  v31 = *v79;
                }

                v33 = (v5 + 1240 + 24 * v31);
                v34 = __p;
                if (v33 != &__p)
                {
                  sub_23373176C(v33, __p, v94, (v94 - __p) >> 3);
                  v34 = __p;
                }

                v88 = 0;
                v89 = 0;
                v90 = 0;
                sub_2337236E0(&v88, v34, v94, (v94 - v34) >> 3);
                *(v77 + *v79) = (*(*v5 + 864))(v5, &v88);
                if (v88)
                {
                  v89 = v88;
                  operator delete(v88);
                }

                if (v91)
                {
                  v92 = v91;
                  operator delete(v91);
                }

                if (__p)
                {
                  v94 = __p;
                  operator delete(__p);
                }

                if (__src)
                {
                  v102 = __src;
                  operator delete(__src);
                }
              }

              goto LABEL_162;
            case 0xF00E:
              if (*(v9 + 1) != 4 || *(v9 + 1) != 3)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v5, &__src);
              sub_23374B2FC(&v98 + 12 * v7 + 4, &__src, &v95);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              LODWORD(__src) = *(v95 + 1);
              HIDWORD(__src) = *v95;
              LODWORD(v102) = HIDWORD(__src);
              HIDWORD(v102) = *(v95 + 2);
              __p = v4;
              v49 = sub_2337577E4(v5 + 120, &v4->__vftable);
              sub_23375538C((v49 + 56), &__src, v103, 4uLL);
              goto LABEL_176;
            case 0xF00F:
              if (*(v9 + 1) != 10 || *(v9 + 1) < 2u)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v5, &__src);
              LODWORD(v91) = sub_233749410(&v98 + 12 * v7 + 4);
              sub_233726A8C(&__p, &v91);
              sub_233725F08(&v95, &__src, &__p, 0);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              sub_2337338AC(v5, &__src);
              v35 = sub_233725614(__src);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              sub_2337338AC(v5, &__src);
              v36 = sub_233725614(__src);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              if (v36 <= 0x10)
              {
                sub_233730758(&__src, 3 * v36);
                if (v36)
                {
                  v37 = 0;
                  do
                  {
                    sub_2337338AC(v5, &__p);
                    v38 = sub_233725614(__p);
                    if (v94)
                    {
                      sub_2337239E8(v94);
                    }

                    sub_2337338AC(v5, &__p);
                    v39 = sub_233725614(__p);
                    if (v94)
                    {
                      sub_2337239E8(v94);
                    }

                    *(&__src->__vftable + v37) = v38 / v39;
                    v37 += 8;
                  }

                  while (24 * v36 != v37);
                }

                *(v76 + *v79) = 0;
                sub_233730758(&__p, v36);
                sub_233730758(&v91, v36);
                sub_233730758(&v86, v36);
                if (v36)
                {
                  v40 = 0;
                  v41 = __src;
                  v42 = __p;
                  v43 = v91;
                  v44 = v86;
                  do
                  {
                    *&v42[v40] = v41->__vftable;
                    *&v43[v40] = *(&v41->__vftable + v36);
                    *&v44[v40] = *(&v41->__vftable + 2 * v36);
                    v41 = (v41 + 8);
                    v40 += 8;
                  }

                  while (8 * v36 != v40);
                }

                v45 = *v79;
                *(v5 + 1444 + 4 * v45) = v35;
                v46 = (v5 + 1456 + 24 * v45);
                v4 = v78;
                if (v46 != &__p)
                {
                  sub_23373176C(v46, __p, v94, (v94 - __p) >> 3);
                  LODWORD(v45) = *v79;
                }

                v47 = (v5 + 1504 + 24 * v45);
                if (v47 != &v91)
                {
                  sub_23373176C(v47, v91, v92, (v92 - v91) >> 3);
                  LODWORD(v45) = *v79;
                }

                v48 = (v5 + 1552 + 24 * v45);
                if (v48 != &v86)
                {
                  sub_23373176C(v48, v86, v87, (v87 - v86) >> 3);
                }

                v83 = 0;
                v84 = 0;
                v85 = 0;
                sub_2337236E0(&v83, v91, v92, (v92 - v91) >> 3);
                if ((*(*v5 + 864))(v5, &v83))
                {
                  *(v76 + *v79) = 1;
                }

                else
                {
                  v80 = 0;
                  v81 = 0;
                  v82 = 0;
                  sub_2337236E0(&v80, v86, v87, (v87 - v86) >> 3);
                  *(v76 + *v79) = (*(*v5 + 864))(v5, &v80);
                  if (v80)
                  {
                    v81 = v80;
                    operator delete(v80);
                  }
                }

                if (v83)
                {
                  v84 = v83;
                  operator delete(v83);
                }

                if (v86)
                {
                  v87 = v86;
                  operator delete(v86);
                }

                if (v91)
                {
                  v92 = v91;
                  operator delete(v91);
                }

                if (__p)
                {
                  v94 = __p;
                  operator delete(__p);
                }

                if (__src)
                {
                  v102 = __src;
                  operator delete(__src);
                }
              }

LABEL_162:
              sub_233725FD4(&v95);
              goto LABEL_178;
            case 0xF010:
              if (*(v9 + 1) != 10 || *(v9 + 1) < 2u)
              {
                goto LABEL_178;
              }

              sub_2337338AC(v5, &__src);
              LODWORD(v91) = sub_233749410(&v98 + 12 * v7 + 4);
              sub_233726A8C(&__p, &v91);
              sub_233725F08(&v95, &__src, &__p, 0);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              sub_2337338AC(v5, &__src);
              v10 = sub_233725614(__src);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              sub_2337338AC(v5, &__src);
              v11 = sub_233725614(__src);
              if (v102)
              {
                sub_2337239E8(v102);
              }

              if (v11 > 0x10)
              {
                goto LABEL_34;
              }

              sub_233730758(&__src, 2 * v11);
              if (v11)
              {
                v12 = 0;
                do
                {
                  sub_2337338AC(v5, &__p);
                  v13 = sub_233725614(__p);
                  if (v94)
                  {
                    sub_2337239E8(v94);
                  }

                  sub_2337338AC(v5, &__p);
                  v14 = sub_233725614(__p);
                  if (v94)
                  {
                    sub_2337239E8(v94);
                  }

                  *(&__src->__vftable + v12) = v13 / v14;
                  v12 += 8;
                }

                while (16 * v11 != v12);
              }

              sub_23377FB8C(&__p, v11);
              v15 = __p;
              if (v11)
              {
                v16 = 0;
                v17 = __src;
                v18 = __p + 8;
                do
                {
                  v19 = *(&v17->__vftable + v11);
                  *(v18 - 1) = v17->__vftable;
                  *v18 = v19;
                  v17 = (v17 + 8);
                  v16 += 8;
                  v18 += 2;
                }

                while (8 * v11 != v16);
              }

              *(v5 + 1288 + 4 * *v79) = v10;
              v20 = (v5 + 1296 + 24 * *v79);
              if (v20 != &__p)
              {
                sub_23377FC88(v20, v15, v94, (v94 - v15) >> 4);
                v15 = __p;
                if (!__p)
                {
                  goto LABEL_32;
                }

LABEL_31:
                v94 = v15;
                operator delete(v15);
                goto LABEL_32;
              }

              if (v15)
              {
                goto LABEL_31;
              }

LABEL_32:
              if (__src)
              {
                v102 = __src;
                operator delete(__src);
              }

LABEL_34:
              sub_233725FD4(&v95);
              v4 = v78;
LABEL_178:
              if (++v7 == v8)
              {
                break;
              }

              continue;
            default:
              goto LABEL_178;
          }

          break;
        }
      }

      sub_233725FD4(v100);
    }
  }

  else
  {

    sub_23374FA0C(v0, v1, v2);
  }
}

void sub_23377E96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  v51 = *(v49 - 120);
  if (v51)
  {
    *(v49 - 112) = v51;
    operator delete(v51);
  }

  sub_233725FD4(&a45);
  sub_233725FD4((v49 - 144));
  _Unwind_Resume(a1);
}

void sub_23377EC48(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "raf");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "fuji");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23377ECFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23377ED70@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = (*(*a1 + 824))(a1);
  if (result)
  {
    (*(*a1 + 464))(a1, 0);
    sub_233780104();
  }

  *a2 = 0uLL;
  return result;
}

uint64_t sub_23377EE44@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = (*(*a1 + 824))(a1);
  if (result)
  {
    (*(*a1 + 464))(a1, 0);
    sub_233780454();
  }

  *a2 = 0uLL;
  return result;
}

BOOL sub_23377EF28(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v3 = *a2 + 8;
  do
  {
    v4 = fabs(*(v3 - 8));
    result = v4 > 0.0001;
    v6 = v4 > 0.0001 || v3 == v2;
    v3 += 8;
  }

  while (!v6);
  return result;
}

float sub_23377EF68@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1464);
  v3 = *(a1 + 1456);
  v4 = v2 - v3;
  *a2 = *(a1 + 1442);
  v5 = *(a1 + 1444);
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  if (v4 > 0x10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = 0uLL;
  *(a2 + 60) = 0u;
  v7 = (a2 + 76);
  v8 = (a2 + 140);
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = 0u;
  v9 = 16;
  do
  {
    *(v8 - 4) = 0uLL;
    *v8++ = 0uLL;
    v9 -= 4;
  }

  while (v9);
  if (v2 != v3)
  {
    v10 = *(a1 + 1504);
    v11 = *(a1 + 1552);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v12 = *v10++;
      v13 = v12;
      *v7 = v13;
      v14 = *v11++;
      v15 = v14;
      v7[16] = v15;
      v16 = *v3++;
      *&v6 = v16;
      *(v7++ - 16) = v6;
      --v4;
    }

    while (v4);
  }

  return *&v6;
}

float sub_23377F058@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1200);
  v3 = *(a1 + 1192);
  v4 = v2 - v3;
  *a2 = *(a1 + 1180);
  *(a2 + 4) = *(a1 + 1184);
  *(a2 + 8) = v4;
  if (v4 > 0x10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  result = 0.0;
  *(a2 + 76) = 0u;
  v6 = a2 + 76;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0u;
  *(v6 - 32) = 0u;
  *(v6 - 16) = 0u;
  *(v6 - 64) = 0u;
  *(v6 - 48) = 0u;
  if (v2 != v3)
  {
    v7 = *(a1 + 1240);
    v8 = (*(a1 + 1248) - v7) >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v9 = *v3;
      *(v6 - 64) = v9;
      if (!v8)
      {
        sub_2337306B0();
      }

      v10 = *v7++;
      result = v10;
      *v6 = result;
      v6 += 4;
      --v8;
      ++v3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_23377F138(unsigned int *a1)
{
  v2 = (*(*a1 + 784))(a1);
  v3 = a1[358];
  if (v2)
  {
    if (v3 >= 4)
    {
      return 0;
    }

    else
    {
      return dword_233904AA0[v3];
    }
  }

  else if (v3 <= 2)
  {
    if (v3 == 2)
    {
      v5 = 1229539657;
    }

    else
    {
      v5 = 0;
    }

    if (v3 == 1)
    {
      v6 = 1633771873;
    }

    else
    {
      v6 = v5;
    }

    if (v3)
    {
      return v6;
    }

    else
    {
      return 2492765332;
    }
  }

  else
  {
    switch(v3)
    {
      case 128:
        return 2172748160;
      case 129:
        return 2172748161;
      case 130:
        return 2172748162;
      case 131:
        return 2172748163;
      case 132:
        return 2172748164;
      case 133:
        v7 = 5;
        goto LABEL_36;
      case 134:
        return 2172748166;
      case 135:
        return 2172748167;
      case 136:
        return 2172748168;
      case 137:
        v7 = 9;
        goto LABEL_36;
      case 138:
        v7 = 10;
        goto LABEL_36;
      case 139:
        v7 = 11;
        goto LABEL_36;
      case 140:
        return 2172748172;
      case 141:
        v7 = 13;
        goto LABEL_36;
      case 142:
        return 2172748174;
      case 143:
        return 2172748175;
      case 144:
        return 2172748176;
      case 145:
        v7 = 17;
LABEL_36:
        result = v7 | 0x81818180;
        break;
      default:
        if (v3 == 3)
        {
          result = 370546198;
        }

        else
        {
          result = 0;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23377F31C@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 784))(a1);
  if (result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a1 + 1604) != 1 || ((v5 = a1[400], v5 <= 0x10) ? (v6 = ((1 << v5) & 0x15000) == 0) : (v6 = 1), v6))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a1 + 1612) != 1 || *(a1 + 1620) != 1 || (a1[407] & 1) == 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *a2 = 0;
  a2[1] = 0;
  v7 = a1[402];
  if (v5 == 12)
  {
    if (v7 == 4)
    {
      v8 = a1[406];
      if (v8 == 1)
      {
        (*(*a1 + 384))(&v9, a1);
        (*(*a1 + 424))(a1);
        sub_2337646DC();
      }

      if (!v8)
      {
        (*(*a1 + 384))(&v9, a1);
        (*(*a1 + 424))(a1);
        (*(*a1 + 784))(a1);
        sub_233780650();
      }

      return result;
    }

    goto LABEL_18;
  }

  if (v7 != 4)
  {
LABEL_18:
    if (!v7 && !a1[406])
    {
      (*(*a1 + 384))(&v9, a1);
      (*(*a1 + 424))(a1);
      (*(*a1 + 784))(a1);
      sub_2337809F8();
    }

    return result;
  }

  if (a1[406] == 1)
  {
    (*(*a1 + 384))(&v9, a1);
    (*(*a1 + 424))(a1);
    sub_233780838();
  }

  return result;
}

void sub_23377F764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23377F7CC(uint64_t a1)
{
  if (*(a1 + 1604) == 1)
  {
    return *(a1 + 1600);
  }

  else
  {
    return sub_233733AFC();
  }
}

id sub_23377F7E4(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23374C650(a1);
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);

  v24 = &unk_284957508;
  v22[1] = @"Namespace";
  v23[0] = @"FujiIFD";
  v21[4] = a1;
  v22[0] = @"Name";
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23377F9B4;
  v21[3] = &unk_2789EEAE0;
  v8 = MEMORY[0x2383AC810](v21);
  v23[1] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v23, v22, 2);
  v25[0] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v25, &v24, 1);
  objc_msgSend_addEntriesFromDictionary_(v7, v13, v12, v14, v15);

  v19 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v16, v7, v17, v18);

  return v19;
}

id sub_23377F9E4(uint64_t a1, const char *a2)
{
  v5[12] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284957520;
  v4[1] = &unk_284957538;
  v5[0] = &unk_28495D0A0;
  v5[1] = &unk_28495D0C8;
  v4[2] = &unk_284957550;
  v4[3] = &unk_284957568;
  v5[2] = &unk_28495D0F0;
  v5[3] = &unk_28495D118;
  v4[4] = &unk_284957580;
  v4[5] = &unk_284957598;
  v5[4] = &unk_28495D140;
  v5[5] = &unk_28495D168;
  v4[6] = &unk_2849575B0;
  v4[7] = &unk_2849575C8;
  v5[6] = &unk_28495D190;
  v5[7] = &unk_28495D1B8;
  v4[8] = &unk_2849575E0;
  v4[9] = &unk_2849575F8;
  v5[8] = &unk_28495D1E0;
  v5[9] = &unk_28495D208;
  v4[10] = &unk_284957610;
  v4[11] = &unk_284957628;
  v5[10] = &unk_28495D230;
  v5[11] = &unk_28495D258;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 12);

  return v2;
}

void sub_23377FB4C(void *a1)
{
  sub_23377FDAC(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23377FB8C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_23377FC04(result, a2);
  }

  return result;
}

void sub_23377FBE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23377FC04(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_23377FC40(a1, a2);
  }

  sub_2337235BC();
}

void sub_23377FC40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2337236AC();
}

char *sub_23377FC88(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_23377FC04(a1, v10);
    }

    sub_2337235BC();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 16;
        v12 -= 16;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_23377FDAC(void *a1)
{
  v2 = 0;
  *a1 = &unk_284907098;
  do
  {
    v3 = a1[v2 + 197];
    if (v3)
    {
      a1[v2 + 198] = v3;
      operator delete(v3);
    }

    v2 -= 3;
  }

  while (v2 != -6);
  for (i = 0; i != -6; i -= 3)
  {
    v5 = a1[i + 191];
    if (v5)
    {
      a1[i + 192] = v5;
      operator delete(v5);
    }
  }

  for (j = 0; j != -6; j -= 3)
  {
    v7 = a1[j + 185];
    if (v7)
    {
      a1[j + 186] = v7;
      operator delete(v7);
    }
  }

  for (k = 0; k != -6; k -= 3)
  {
    v9 = a1[k + 165];
    if (v9)
    {
      a1[k + 166] = v9;
      operator delete(v9);
    }
  }

  for (m = 0; m != -6; m -= 3)
  {
    v11 = a1[m + 158];
    if (v11)
    {
      a1[m + 159] = v11;
      operator delete(v11);
    }
  }

  for (n = 0; n != -6; n -= 3)
  {
    v13 = a1[n + 152];
    if (v13)
    {
      a1[n + 153] = v13;
      operator delete(v13);
    }
  }

  return sub_2337557B4(a1);
}

void *sub_23377FF78(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907430;
  sub_23377C52C((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_233780000(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

int *sub_23378007C(int *result, unsigned int *a2)
{
  v2 = *a2;
  if ((*a2 & 0x80000000) != 0)
  {
    v2 = -v2;
  }

  v3 = *result * v2;
  if ((*a2 & 0x80000000) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  v5 = (v3 & 0xFFFFFFFF00000000) != 0;
  if (v3)
  {
    v6 = (*a2 & 0x80000000) != 0;
  }

  else
  {
    v6 = 0;
  }

  *result = v4;
  if (v5 || v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337801A8(void *a1, void *a2, void *a3, int *a4, int *a5, uint64_t *a6, uint64_t *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907480;
  sub_2337802A0((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_233780224(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337802A0(uint64_t a1, void *a2, void *a3, int *a4, int *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = *a4;
  v12 = *a5;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_2337236E0(&v17, *a6, a6[1], (a6[1] - *a6) >> 3);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337236E0(&__p, *a7, a7[1], (a7[1] - *a7) >> 3);
  sub_23378039C(a1, a2, a3, v11, v12, &v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return a1;
}

void sub_233780368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23378039C(uint64_t a1, void *a2, void *a3, int a4, int a5, uint64_t *a6, uint64_t *a7)
{
  *a1 = &unk_284937FE8;
  *(a1 + 8) = *a2;
  *(a1 + 16) = *a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_2337236E0(a1 + 40, *a6, a6[1], (a6[1] - *a6) >> 3);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2337236E0(a1 + 64, *a7, a7[1], (a7[1] - *a7) >> 3);
  return a1;
}

void sub_233780438(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337804F8(void *a1, void *a2, void *a3, int *a4, int *a5, uint64_t *a6, uint64_t *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284907480;
  sub_233780554((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t sub_233780554(uint64_t a1, void *a2, void *a3, int *a4, int *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = *a4;
  v12 = *a5;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_2337236E0(&v17, *a6, a6[1], (a6[1] - *a6) >> 3);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337236E0(&__p, *a7, a7[1], (a7[1] - *a7) >> 3);
  sub_23378039C(a1, a2, a3, v11, v12, &v17, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return a1;
}

void sub_23378061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233780704(void *a1, void *a2, unint64_t *a3, uint64_t *a4, void *a5, _OWORD *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849074D0;
  v7 = *a4;
  sub_2337AD9D8((a1 + 3), a2, *a3, a5, a6);
  a1[3] = &unk_28491FDD8;
  *(a1 + 212) = 0x100000000;
  a1[28] = v7;
  return a1;
}

void sub_2337807BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849074D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337808DC(uint64_t a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284907520;
  sub_2337AD9D8(a1 + 24, a2, *a3, a4, a5);
  *(a1 + 24) = &unk_284925B58;
  *(a1 + 211) = 0;
  return a1;
}

void sub_23378097C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284907520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233780AAC(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, void *a5, _OWORD *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849060F0;
  v7 = *a4;
  sub_2337AD9D8(a1 + 24, a2, *a3, a5, a6);
  *(a1 + 24) = &unk_28490B2B8;
  *(a1 + 212) = 16;
  *(a1 + 216) = v7;
  return a1;
}

id sub_233780B40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.canon.tif-raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".tif.";
  v42[3] = &unk_284957640;
  v42[4] = &unk_284957658;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2338F99C4, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_233780E38, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_233780E44, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_233780E50, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_233780E5C, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_233780E68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_2337814C8();
}

void sub_233780F04(uint64_t a1, void **a2, unsigned __int16 *a3)
{
  sub_2338F9C58(a1, a2, a3);
  v5 = *a3;
  switch(v5)
  {
    case 160:
      if (((*(*a1 + 56))(a1) & 1) == 0)
      {
        sub_2337338AC(a1, &v30);
        v6 = sub_233749410(a3);
        v32 = 16;
        LODWORD(v28) = v6;
        v36 = *sub_233726AE8(&v28, &v32);
        sub_233723AE0(&v24, &v36);
        sub_233725F08(&__src, &v30, &v24, 0);
        if (v31)
        {
          sub_2337239E8(v31);
        }

        sub_2337338AC(a1, &v30);
        LODWORD(v24) = sub_2337255C0(v30);
        v28 = a2;
        v7 = sub_2337577E4(a1 + 168, a2);
        sub_23375538C((v7 + 56), &v24, &v24 + 4, 1uLL);
        if (v31)
        {
          sub_2337239E8(v31);
        }

        sub_233725FD4(&__src);
      }

      break;
    case 164:
      if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3)
      {
        __src = 0;
        v34 = 0;
        v35 = 0;
        if (*(a3 + 1) >= 3u)
        {
          v8 = 0;
          do
          {
            sub_2337338AC(a1, &v28);
            v9 = sub_233749410(a3);
            v24 = 48;
            sub_233723C18(&v25, &v24);
            v36 = v8;
            v26 = *sub_233757DB0(&v36, &v25);
            v36 = v9;
            v27 = *sub_233753AB0(&v36, &v26);
            sub_233723AE0(&v32, &v27);
            sub_233725F08(&v30, &v28, &v32, 0);
            if (v29)
            {
              sub_2337239E8(v29);
            }

            v10 = 3;
            do
            {
              sub_2337338AC(a1, &v28);
              v11 = sub_2337255C0(v28);
              if (v29)
              {
                sub_2337239E8(v29);
              }

              v12 = v34;
              if (v34 >= v35)
              {
                v14 = __src;
                v15 = v34 - __src;
                v16 = (v34 - __src) >> 2;
                v17 = v16 + 1;
                if ((v16 + 1) >> 62)
                {
                  sub_2337235BC();
                }

                v18 = v35 - __src;
                if ((v35 - __src) >> 1 > v17)
                {
                  v17 = v18 >> 1;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v19 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v19 = v17;
                }

                if (v19)
                {
                  sub_2337235D4(&__src, v19);
                }

                *(4 * v16) = v11;
                v13 = (4 * v16 + 4);
                memcpy(0, v14, v15);
                v20 = __src;
                __src = 0;
                v34 = v13;
                v35 = 0;
                if (v20)
                {
                  operator delete(v20);
                }
              }

              else
              {
                *v34 = v11;
                v13 = v12 + 4;
              }

              v34 = v13;
              --v10;
            }

            while (v10);
            sub_233725FD4(&v30);
            v21 = 24 * v8++ + 27;
          }

          while (v21 <= *(a3 + 1));
        }

        v30 = a2;
        v22 = (sub_2337577E4(a1 + 120, a2) + 56);
        if (v22 != &__src)
        {
          sub_233723454(v22, __src, v34, (v34 - __src) >> 2);
        }

        sub_2338F884C(&__src);
      }

      break;
    case 129:
      sub_2338F9A38(a3, a1);
      break;
  }
}

void sub_233781354(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_233786818(a1);
  snprintf(__str, 0x10uLL, "%u", v3);
  sub_23372A488(__p, "tif");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "canon");
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, __str);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23378144C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_233781490(uint64_t a1)
{
  sub_23375BA54(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23378156C(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849078C8;
  sub_233785D40((a1 + 3), a2, *a3, *a4, *a5);
  a1[3] = &unk_284907590;
  a1[160] = 0;
  return a1;
}

void sub_233781614(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849078C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233781748(void *a1)
{
  __cxa_begin_catch(a1);
  v8 = objc_msgSend_redImage(MEMORY[0x277CBF758], v4, v5, v6, v7);
  v13 = objc_msgSend_imageByCroppingToRect_(v8, v9, v10, v11, v12, 0.0, 0.0, 698.0, 282.0);
  objc_msgSend_setCiImage_(v1, v14, v13, v15, v16);

  __cxa_end_catch();
  JUMPOUT(0x233781718);
}

void sub_233781854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void *sub_2337819B4(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337819F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

uint64_t sub_233781BD8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, char a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284907918;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = *a3;
  *(a1 + 40) = a2;
  *(a1 + 48) = v7;
  *(a1 + 56) = *a4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 113) = a5;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 168) = MEMORY[0x2383AC810](a6);
  return a1;
}

void sub_233781C78(_Unwind_Exception *a1)
{
  v4 = *(v1 + 160);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  sub_2338F9AD4((v1 + 144), v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_233781CA8(uint64_t a1)
{
  *a1 = &unk_284907918;
  v2 = (a1 + 24);
  if (*(a1 + 24) && *(a1 + 112) == 1)
  {
    v3 = sub_23384B990();
    sub_23384BEE4(v3, v2);
  }

  if (*(a1 + 112) == 1)
  {
    v4 = sub_23384B990();
    sub_23384C088(v4, a1);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_233781D90(uint64_t a1)
{
  sub_233781CA8(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233781DC8(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    v3 = CGImagePluginGetOptions();
    v4 = *(a1 + 136);
    *(a1 + 136) = v3;

    v2 = *(a1 + 136);
  }

  return v2;
}

void sub_233781E1C()
{
  if (getenv("RAWCAMERA_IMAGEBLOCKSET_NOLOCK"))
  {
    operator new();
  }

  sub_23384F87C();
}

void sub_23378210C(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_end_catch();
  JUMPOUT(0x233781FF4);
}

void sub_23378214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337821A0(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v85[0] = a4;
  v85[1] = a5;
  v86[0] = a6;
  v86[1] = a7;
  v84[0] = a8;
  v84[1] = a9;
  v11 = a1[1];
  v13 = *v11;
  v12 = *(v11 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v13 || ((v15 = a1[2], (v14 = a1[3]) != 0) ? (v16 = (a1[3] & 1 | v15) == 0) : (v16 = 1), !v16 ? (v17 = 0) : (v17 = 1), !v15 && (v17 & 1) != 0))
  {
    v27 = 0;
    if (!v12)
    {
      return v27;
    }

    goto LABEL_33;
  }

  v18 = v13[16];
  v73 = v13[15];
  v74 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_233785314(v83, &v73);
  if (v74)
  {
    sub_2337239E8(v74);
  }

  v19 = a3;
  v26 = objc_msgSend_objectForKeyedSubscript_(v19, v20, *MEMORY[0x277CBF530], v21, v22);
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v32 = objc_msgSend_objectForKeyedSubscript_(v19, v23, *MEMORY[0x277CBF540], v24, v25);
    if (v32)
    {
      v27 = 0;
    }

    else
    {
      objc_msgSend_BOOLValue(0, v28, v29, v30, v31);
      v40 = objc_msgSend_objectForKeyedSubscript_(v19, v33, *MEMORY[0x277CBF538], v34, v35);
      if (v40)
      {
        v27 = 0;
      }

      else
      {
        objc_msgSend_BOOLValue(0, v36, v37, v38, v39);
        v44 = objc_msgSend_objectForKeyedSubscript_(v19, v41, *MEMORY[0x277CBF510], v42, v43);
        if (v44)
        {
          v27 = 0;
        }

        else
        {
          v61 = objc_msgSend_objectForKeyedSubscript_(v19, v45, *MEMORY[0x277CBF518], v46, v47);
          if (v61 || (objc_msgSend_objectForKeyedSubscript_(v19, v48, *MEMORY[0x277CBF520], v49, v50, 0), v51 = objc_claimAutoreleasedReturnValue(), v51, v51) || (objc_msgSend_objectForKeyedSubscript_(v19, v52, *MEMORY[0x277CBF528], v53, v54), v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
          {
            v27 = 0;
          }

          else
          {
            sub_233741018(&v82, v85);
            sub_233741018(&v82 + 2, v86);
            sub_233741018(&v81, v84);
            v73 = 0;
            v74 = &v73;
            v75 = 0x4012000000;
            v76 = sub_233785054;
            v77 = sub_233785064;
            v78 = "";
            v79 = 0;
            v80 = 0;
            (*(*v13 + 64))(&v71, v13);
            (*(*v71 + 120))(v71);
            (*(*v13 + 64))(&v69, v13);
            sub_233739B84(v69);
            v57 = sub_233785074();
            v58 = v57;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3321888768;
            block[2] = sub_233785204;
            block[3] = &unk_284907A30;
            block[4] = &v73;
            block[5] = v13;
            v63 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v64 = v15;
            v65 = v14;
            v66 = a2;
            v67 = v82;
            v68 = v81;
            dispatch_sync(v57, block);

            if (v70)
            {
              sub_2337239E8(v70);
            }

            if (v72)
            {
              sub_2337239E8(v72);
            }

            if (v63)
            {
              sub_2337239E8(v63);
            }

            v59 = v74[2].__vftable;
            if (!v59)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x2383ABCE0](exception, "RawCameraException");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v27 = sub_233857374(v59);
            _Block_object_dispose(&v73, 8);
            if (v80)
            {
              sub_2337239E8(v80);
            }
          }

          v44 = 0;
        }
      }
    }
  }

  sub_2337853E4(v83);
  if (v12)
  {
LABEL_33:
    sub_2337239E8(v12);
  }

  return v27;
}

void sub_2337825F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  _Block_object_dispose(&a28, 8);
  if (a35)
  {
    sub_2337239E8(a35);
  }

  sub_2337853E4((v37 - 160));
  if (v35)
  {
    sub_2337239E8(v35);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337823A0);
}

uint64_t sub_2337826D8(uint64_t result)
{
  v1 = result;
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        sub_2337239E8(v3);
      }

      MEMORY[0x2383ABF10](v2, 0x20C40A4A59CD2);
      *(v1 + 8) = 0;
    }

    v4 = *v1;
    *v1 = 0;

    return MEMORY[0x2383ABF10](v1, 0xA0C40069AE433);
  }

  return result;
}

uint64_t sub_233782764(uint64_t a1, void *a2, int a3, int a4, CGColorSpaceRef space)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ((*a2 - 0xFFFFFFFFLL) < 0xFFFFFFFF00000002 || !*(a1 + 40))
  {
    return 0;
  }

  if (space)
  {
    v9 = *MEMORY[0x277CD3400];
    v10[0] = CGColorSpaceGetName(space);
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v10, &v9, 1);
    inited = CGImagePluginInitThumbJPEGAtOffsetWithOptions();

    return inited;
  }

  return MEMORY[0x282122AE8]();
}

void sub_2337828C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    CGImagePluginReadRawXMPProps();
  }
}

uint64_t sub_233782944(std::__shared_weak_count **a1)
{
  ((*a1)[5].__shared_weak_owners_)(v31);
  sub_233785424(v39, v31);
  if (*(&v31[0] + 1))
  {
    sub_2337239E8(*(&v31[0] + 1));
  }

  *(a1 + 112) = 0;
  ((*a1)[2].__shared_weak_owners_)(&v37, a1);
  if (!v37 || (*(a1 + 113) & 1) == 0 && ((*(*v37 + 40))() & 1) == 0)
  {
    goto LABEL_53;
  }

  v2 = a1[12];
  if (v2)
  {
    goto LABEL_7;
  }

  v6 = v37;
  v7 = ((*a1)[1].__vftable)(a1);
  (*(*v6 + 296))(v31, v6, v7);
  v8 = v31[0];
  v31[0] = 0uLL;
  v9 = a1[13];
  *(a1 + 6) = v8;
  if (v9)
  {
    sub_2337239E8(v9);
    if (*(&v31[0] + 1))
    {
      sub_2337239E8(*(&v31[0] + 1));
    }

    v2 = a1[12];
    if (!v2)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = v8;
    if (!v8)
    {
LABEL_53:
      v26 = 0;
      goto LABEL_54;
    }
  }

LABEL_7:
  v3 = __dynamic_cast(v2, &unk_284911100, &unk_284911168, 0);
  if (v3)
  {
    v4 = a1[13];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[12];
      if (!v2)
      {
        v5 = 0;
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = __dynamic_cast(v2, &unk_284911100, &unk_2849259A8, 0);
  if (v10)
  {
    v5 = a1[13];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v2 = a1[12];
      if (!v2)
      {
LABEL_25:
        if (v3)
        {
LABEL_37:
          v30[0] = (*(*v3 + 16))(v3);
          v36 = (*(*v3 + 24))(v3);
          v35 = ((*a1)[1].__vftable)(a1);
          v31[0] = 0uLL;
          v25 = (*(*v3 + 56))(v3, v31);
          v26 = ((*a1)[5].__vftable)(a1, v30, &v36, &v35, v25);
          if (*(&v31[0] + 1))
          {
            sub_2337239E8(*(&v31[0] + 1));
          }

          goto LABEL_46;
        }

LABEL_41:
        v27 = a1[12];
        ((*a1)[5].__shared_weak_owners_)(v31, a1);
        v28 = (v27->__vftable[1].__on_zero_shared)(v27, v31);
        if (!v28)
        {
          v28 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
        }

        if (*(&v31[0] + 1))
        {
          sub_2337239E8(*(&v31[0] + 1));
        }

        v34 = 0u;
        v33 = 0u;
        *&v31[0] = sub_2337DE858(a1[12]);
        *(&v31[0] + 1) = sub_2337DE858(a1[12]) >> 32;
        v31[1] = xmmword_233904B30;
        v32 = (3 * sub_2337DE858(a1[12]));
        LODWORD(v33) = 1380401696;
        *(&v33 + 1) = v28;
        DWORD1(v34) = 0;
        *(&v34 + 7) = 0;
        v30[0] = sub_233783170;
        v30[1] = 0;
        ((*a1)[4].__shared_owners_)(a1, v31, v30);
        CGColorSpaceRelease(v28);
        v26 = 1;
        goto LABEL_46;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = __dynamic_cast(v2, &unk_284911100, &unk_284911238, 0);
  if (v11)
  {
    v2 = a1[13];
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!a1[12])
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v15 = ((*a1)[3].__shared_weak_owners_)(a1);
  if (v15)
  {
    v16 = a1[12];
    shared_weak_owners_low = LODWORD(v16->__shared_weak_owners_);
    if (shared_weak_owners_low >= 2)
    {
      v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, shared_weak_owners_low, v13, v14);
      sub_2337830C4(v15, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v18);

      v16 = a1[12];
    }

    if (HIDWORD(v16->__shared_weak_owners_))
    {
      if (*(a1 + 113) == 1)
      {
        if (((*a1)[1].__shared_weak_owners_)(a1))
        {
          v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v19, HIDWORD(a1[12]->__shared_weak_owners_), v20, v21);
          objc_msgSend_setObject_forKeyedSubscript_(v15, v23, v22, @"disorientation", v24);
        }
      }

      else
      {
        sub_2337830C4(v15, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], &unk_284957670);
      }
    }

    if (v3)
    {
      goto LABEL_37;
    }

    if (v11 | v10)
    {
      goto LABEL_41;
    }
  }

  v26 = 0;
LABEL_46:
  if (v2)
  {
    sub_2337239E8(v2);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (v4)
  {
    sub_2337239E8(v4);
  }

LABEL_54:
  if (v38)
  {
    sub_2337239E8(v38);
  }

  sub_233785598(v39);
  return v26;
}

void sub_233782FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v26)
  {
    sub_2337239E8(v26);
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else if (!v25)
  {
LABEL_7:
    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_2337239E8(v25);
  if (!v24)
  {
LABEL_9:
    if (a24)
    {
      sub_2337239E8(a24);
    }

    sub_233785598((v29 - 96));
    _Unwind_Resume(a1);
  }

LABEL_8:
  sub_2337239E8(v24);
  goto LABEL_9;
}

void sub_2337830C4(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = sub_2337854A4(a1, a2, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v9, v7, v11, v10);
}

uint64_t sub_233783194(_DWORD *a1)
{
  if (*(a1 + 113) == 1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 136))(&v35);
  sub_233785424(v50, &v35);
  if (*(&v35 + 1))
  {
    sub_2337239E8(*(&v35 + 1));
  }

  (*(*a1 + 64))(&v48, a1);
  if (!v48)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = (*(*v48 + 408))(v48);
  v47[0] = 0;
  v47[1] = v2;
  v46[0] = (*(*v48 + 432))();
  v46[1] = v3;
  v45[0] = 0;
  v45[1] = v3;
  v4 = (*(*v48 + 456))(v48);
  v6 = v5;
  v7 = (*(*v48 + 2640))(v48);
  v8 = (*(*v48 + 2648))(v48);
  v42 = v4;
  v43 = (v6 / v7);
  v44 = (SHIDWORD(v6) / v8);
  if (!sub_23385F3FC(v46, v47) || !sub_23385F3FC(&v42, v45))
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v32, "RawCameraException");
    __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = v48;
  v10 = sub_233739B84(v48);
  v11 = (*(*a1 + 88))(a1);
  (*(*v9 + 2728))(v9, v10, v11);

  if (v48)
  {
    (*(*v48 + 2872))(&v40);
    if (v41)
    {
      sub_2337239E8(v41);
    }
  }

  if (sub_233739BAC(v48))
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = (*(*a1 + 80))(a1);
    v16 = sub_2337397F8(v12, @"PreserveMargin", v13, v14, v15);
    sub_233783A14(a1, v16, &v35);

    v33 = sub_233783B24;
    v34 = 0;
    (*(*a1 + 104))(a1, &v35, &v33);
    v17 = (*(*a1 + 88))(a1);
    v18 = v48;
    v19 = sub_233739B84(v48);
    v20 = (*(*v18 + 2736))(v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v21, v20, *MEMORY[0x277CD3468], v22);
  }

  else
  {
    v23 = sub_233739B8C(v48);
    if (sub_2338191D0(v23))
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      sub_233783A14(a1, 0, &v35);
      v33 = sub_233783B48;
      v34 = 0;
      (*(*a1 + 104))(a1, &v35, &v33);
    }

    else
    {
      if (!(*(*v48 + 544))(v48) && (*(*a1 + 24))(a1))
      {
        v24 = (*(*a1 + 24))(a1);
        v25 = 16;
        do
        {
          (*(*v48 + 552))(v48, v25 >> 1);
          v26 = (*(*v48 + 520))(v48);
          v28 = v26 <= v24 && SHIDWORD(v26) <= v24 && v25 > 1;
          v25 >>= 1;
        }

        while (v28);
      }

      if ((*(*a1 + 24))(a1))
      {
        if ((*(*v48 + 544))(v48))
        {
          v29 = 8;
        }

        else
        {
          v29 = 16;
        }
      }

      else
      {
        v29 = 16;
      }

      a1[22] = v29;
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      sub_233783B6C(a1, &v35);
      a1[16] = (*(*v48 + 544))(v48);
      v33 = sub_233783B48;
      v34 = 0;
      (*(*a1 + 104))(a1, &v35, &v33);
      (*(*a1 + 144))(a1);
    }
  }

  if (v49)
  {
    sub_2337239E8(v49);
  }

  sub_233785598(v50);
  return 1;
}

void sub_233783950(_Unwind_Exception *a1)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  sub_233785598((v1 - 80));
  _Unwind_Resume(a1);
}

CGColorSpaceRef sub_233783A14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  v4 = **(a1 + 24);
  if (a2)
  {
    v5 = (*(v4 + 408))();
  }

  else
  {
    (*(v4 + 432))();
    v5 = v6;
  }

  *a3 = v5;
  *(a3 + 8) = v5 >> 32;
  *(a3 + 16) = vdupq_n_s64(0x10uLL);
  v7 = 63;
  if (((2 * v5) & 0x1FFFFFFFFFFFFE00) == 0)
  {
    v7 = 31;
  }

  v8 = 15;
  if (((2 * v5) & 0x1FFFFFFFFFFFFF80) != 0)
  {
    v8 = v7;
  }

  *(a3 + 32) = (v8 + ((2 * v5) & 0x1FFFFFFFFFFFFFFELL)) & ~v8;
  *(a3 + 40) = 1196573017;
  v9 = sub_2338F297C();
  *(a3 + 48) = v9;
  *(a3 + 60) = 0;
  *(a3 + 64) = 256;
  *(a3 + 66) = 0;

  return CGColorSpaceRetain(v9);
}

CGColorSpaceRef sub_233783B6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = (*(*a1[3] + 520))(a1[3]);
  v5 = v4;
  *a2 = v4;
  *(a2 + 8) = v4 >> 32;
  *(a2 + 16) = (*(*a1 + 152))(a1);
  v6 = 4 * (*(*a1 + 152))(a1);
  v7 = v5 * v6;
  v8 = 63;
  if ((v5 * v6) < 0x1000)
  {
    v8 = 31;
  }

  if (v7 < 0x400)
  {
    v8 = 15;
  }

  *(a2 + 24) = v6;
  *(a2 + 32) = (v8 + (v7 >> 3)) & ~v8;
  *(a2 + 40) = 1380401696;
  if (sub_233739B84(a1[3]) && !sub_233739B94(a1[3]))
  {
    v9 = sub_2338F28E4();
  }

  else
  {
    v9 = sub_233739BB4(a1[3]);
  }

  *(a2 + 48) = v9;
  *(a2 + 60) = 5;
  *(a2 + 64) = 256;
  *(a2 + 66) = 0;

  return CGColorSpaceRetain(v9);
}

id sub_233783CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*a1 + 136))(&v7, a1);
  sub_233785424(v9, &v7);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  (*(*a1 + 64))(&v7, a1);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = (*(*v7 + 16))(v7, v3);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  sub_233785598(v9);

  return v4;
}

void sub_233783E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233785598(va);

  _Unwind_Resume(a1);
}

void *sub_233783E64@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[9];
  if (!v3)
  {
    if (result[5])
    {
      if (CGImagePluginGetSession())
      {
        sub_23372518C();
      }

      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v4 = result[10];
  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_233783F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (a1 + 24);
  result = *(a1 + 24);
  if (result)
  {
    goto LABEL_35;
  }

  v6 = *(a1 + 113);
  if (*(a1 + 112) != 1)
  {
    v10 = *(a1 + 168);
    (*(*a1 + 136))(&v23, a1);
    v11 = *(a1 + 113);
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(*a1 + 88))(a1);
    }

    v13 = (*(*a1 + 184))(a1);
    (*(v10 + 16))(&v24, v10, &v23, v11, v12, v13);

    if ((v6 & 1) == 0)
    {
    }

    if (*(&v23 + 1))
    {
      sub_2337239E8(*(&v23 + 1));
    }

    v14 = (*(*a1 + 80))(a1);
    sub_233758808(v14, &v22);
  }

  sub_2337269FC(&v24, (a1 + 8));
  v7 = sub_23384B990();
  sub_23384BD84(v7, a1, &v23);
  v8 = v23;
  v23 = 0uLL;
  v9 = *(a1 + 32);
  *(a1 + 24) = v8;
  if (v9)
  {
    sub_2337239E8(v9);
    if (*(&v23 + 1))
    {
      sub_2337239E8(*(&v23 + 1));
    }

    if (!*v5)
    {
LABEL_25:
      v16 = *(a1 + 168);
      (*(*a1 + 136))(&v22, a1);
      v17 = *(a1 + 113);
      if (v6)
      {
        v18 = 0;
      }

      else
      {
        v18 = (*(*a1 + 88))(a1);
      }

      v19 = (*(*a1 + 184))(a1);
      (*(v16 + 16))(&v23, v16, &v22, v17, v18, v19);

      if ((v6 & 1) == 0)
      {
      }

      if (*(&v22 + 1))
      {
        sub_2337239E8(*(&v22 + 1));
      }

      v20 = (*(*a1 + 80))(a1);
      sub_233758808(v20, &v21);
    }
  }

  else if (!v8)
  {
    goto LABEL_25;
  }

  if (v25)
  {
    sub_2337239E8(v25);
  }

  result = *v5;
  if (*v5)
  {
LABEL_35:
    if (*(a1 + 120))
    {
      sub_233738F44(result, (a1 + 120));
      result = *v5;
    }
  }

  v15 = *(a1 + 32);
  *a2 = result;
  a2[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337845A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a18)
  {
    sub_2337239E8(a18);
  }

  if (a20)
  {
    sub_2337239E8(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337846D0(uint64_t a1)
{
  v1 = (a1 + 24);
  if (*(a1 + 24))
  {
    v3 = sub_23384B990();
    sub_23384BEE4(v3, v1);
    v4 = *(a1 + 32);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if (v4)
    {

      sub_2337239E8(v4);
    }
  }
}

void sub_233784738(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = (*(*a1 + 80))(a1);
  v8 = sub_2337397F8(v4, @"PreserveMargin", v5, v6, v7);

  (*(*a1 + 64))(&v10, a1);
  if (v8)
  {
    (*(*v10 + 384))(&v12);
  }

  else
  {
    (*(*v10 + 392))(&v12);
  }

  v9 = v12;
  v12 = 0uLL;
  *a2 = v9;
  if (v11)
  {
    sub_2337239E8(v11);
  }
}

void sub_233784890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337848C4(uint64_t a1)
{
  sub_233784738(a1, &v1);
  sub_2337B0628(v1);
  operator new();
}

void sub_233784AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  __cxa_free_exception(v14);
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_233784AEC(uint64_t result)
{
  v1 = result;
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      sub_2337239E8(v2);
    }

    return MEMORY[0x2383ABF10](v1, 0x20C40A4A59CD2);
  }

  return result;
}