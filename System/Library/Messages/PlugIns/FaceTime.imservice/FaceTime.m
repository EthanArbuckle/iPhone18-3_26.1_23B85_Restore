id sub_23BCA0328()
{
  qword_281422898 = objc_alloc_init(MEMORY[0x277CBEB18]);
  result = objc_alloc_init(MEMORY[0x277CBEB38]);
  qword_2814228A0 = result;
  return result;
}

uint64_t sub_23BCA420C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v979 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_topic(a2, a2, a3, a4, a5);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"com.apple.private.ac", v9, v10);
  v11 = OSLogHandleForIDSCategory();
  v12 = a4;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v18 = NSStringFromClass(v13);
    if (isEqualToString)
    {
      v19 = @"audio";
    }

    else
    {
      v19 = @"video";
    }

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v14, v15, v16, v17);
    v21 = v20;
    objc_msgSend_timeSent(a2, v22, v23, v24, v25);
    *buf = 138413570;
    v970 = v18;
    v971 = 2112;
    v972 = v6;
    v973 = 1024;
    *v974 = v12;
    *&v974[4] = 2112;
    *&v974[6] = a5;
    v975 = 2112;
    v976 = v19;
    v977 = 2048;
    v978 = v21 - v26;
    _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_DEFAULT, "Message class: %@  delivered with error: %@  code: %d result: %@  call type: %@   message delivery time: %fs", buf, 0x3Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v31 = objc_opt_class();
      v36 = NSStringFromClass(v31);
      if (isEqualToString)
      {
        v37 = @"audio";
      }

      else
      {
        v37 = @"video";
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v32, v33, v34, v35);
      v39 = v38;
      objc_msgSend_timeSent(a2, v40, v41, v42, v43);
      v932 = v39 - v44;
      v930 = a5;
      v931 = v37;
      v926 = v6;
      v928 = v12;
      v923 = v36;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v45 = objc_opt_class();
      v50 = NSStringFromClass(v45);
      if (isEqualToString)
      {
        v51 = @"audio";
      }

      else
      {
        v51 = @"video";
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v46, v47, v48, v49, v923, v926, v928, v930, v931, *&v932);
      v53 = v52;
      objc_msgSend_timeSent(a2, v54, v55, v56, v57);
      v932 = v53 - v58;
      v930 = a5;
      v931 = v51;
      v926 = v6;
      v928 = v12;
      v923 = v50;
      IMLogString();
    }
  }

  v938 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v27, v28, v29, v30, v923, v926, v928, v930, v931, *&v932);
  if (v12 == 5058)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v970 = a2;
          _os_log_impl(&dword_23BC9F000, v63, OS_LOG_TYPE_INFO, "  Peer claimed it was too old to receive a signal, that's ok!  (Message: %@)", buf, 0xCu);
        }
      }

      v12 = 0;
      v6 = 0;
    }

    else
    {
      v12 = 5058;
    }
  }

  v937 = v12;
  if (v12 == 5020)
  {
    v64 = 0;
  }

  else
  {
    v64 = v12;
  }

  v940 = v64;
  if (v12 == 5020)
  {
    v65 = 0;
  }

  else
  {
    v65 = v6;
  }

  v935 = v65;
  v66 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v59, v60, v61, v62);
  objc_msgSend_isScreenLocked(v66, v67, v68, v69, v70);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_23BCB5020(v940);
    v75 = objc_msgSend_date(MEMORY[0x277CBEAA8], v71, v72, v73, v74);
    v80 = objc_msgSend_userInfo(a2, v76, v77, v78, v79);
    v84 = objc_msgSend_objectForKey_(v80, v81, @"sendDate", v82, v83);
    objc_msgSend_timeIntervalSinceDate_(v75, v85, v84, v86, v87);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v88, v89, v90, v91);
    FTAWDLogCallInvitationSent();
LABEL_42:
    v240 = MEMORY[0x277CBEB38];
    v241 = objc_msgSend_uniqueIDString(a2, v93, v94, v95, v96);
    v242 = MEMORY[0x277CCACA8];
    v247 = objc_msgSend_command(a2, v243, v244, v245, v246);
    v251 = objc_msgSend_stringWithFormat_(v242, v248, @"%d", v249, v250, v247);
    v938 = objc_msgSend_dictionaryWithObjectsAndKeys_(v240, v252, v92, v253, v254, @"SendDuration", v241, @"MessageIdentifier", v251, @"CommandID", 0);
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_23BCB5020(v940);
    v101 = objc_msgSend_date(MEMORY[0x277CBEAA8], v97, v98, v99, v100);
    v106 = objc_msgSend_userInfo(a2, v102, v103, v104, v105);
    v110 = objc_msgSend_objectForKey_(v106, v107, @"sendDate", v108, v109);
    objc_msgSend_timeIntervalSinceDate_(v101, v111, v110, v112, v113);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v114, v115, v116, v117);
    FTAWDLogCallAcceptSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_23BCB5020(v940);
    v122 = objc_msgSend_date(MEMORY[0x277CBEAA8], v118, v119, v120, v121);
    v127 = objc_msgSend_userInfo(a2, v123, v124, v125, v126);
    v131 = objc_msgSend_objectForKey_(v127, v128, @"sendDate", v129, v130);
    objc_msgSend_timeIntervalSinceDate_(v122, v132, v131, v133, v134);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v135, v136, v137, v138);
    FTAWDLogCallCancelSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v143 = objc_msgSend_date(MEMORY[0x277CBEAA8], v139, v140, v141, v142);
    v148 = objc_msgSend_userInfo(a2, v144, v145, v146, v147);
    v152 = objc_msgSend_objectForKey_(v148, v149, @"sendDate", v150, v151);
    objc_msgSend_timeIntervalSinceDate_(v143, v153, v152, v154, v155);
    v157 = v156;
    sub_23BCB5020(v940);
    v162 = objc_msgSend_reason(a2, v158, v159, v160, v161);
    v167 = objc_msgSend_unsignedIntValue(v162, v163, v164, v165, v166);
    sub_23BCB5014(v167);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v168, v169, v170, v171, v157);
    FTAWDLogCallDeclineSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v176 = objc_msgSend_sessionToken(a2, v172, v173, v174, v175);
    v181 = objc_msgSend___imHexString(v176, v177, v178, v179, v180);
    objc_msgSend_containsObject_(*(*(a1 + 32) + 336), v182, v181, v183, v184);
    sub_23BCB5020(v940);
    v189 = objc_msgSend_date(MEMORY[0x277CBEAA8], v185, v186, v187, v188);
    v194 = objc_msgSend_userInfo(a2, v190, v191, v192, v193);
    v198 = objc_msgSend_objectForKey_(v194, v195, @"sendDate", v196, v197);
    objc_msgSend_timeIntervalSinceDate_(v189, v199, v198, v200, v201);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v202, v203, v204, v205);
    FTAWDLogCallRelayInitiateSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v210 = objc_msgSend_sessionToken(a2, v206, v207, v208, v209);
    v215 = objc_msgSend___imHexString(v210, v211, v212, v213, v214);
    objc_msgSend_containsObject_(*(*(a1 + 32) + 336), v216, v215, v217, v218);
    sub_23BCB5020(v940);
    v223 = objc_msgSend_date(MEMORY[0x277CBEAA8], v219, v220, v221, v222);
    v228 = objc_msgSend_userInfo(a2, v224, v225, v226, v227);
    v232 = objc_msgSend_objectForKey_(v228, v229, @"sendDate", v230, v231);
    objc_msgSend_timeIntervalSinceDate_(v223, v233, v232, v234, v235);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v236, v237, v238, v239);
    FTAWDLogCallRelayUpdateSent();
    goto LABEL_42;
  }

LABEL_43:
  v255 = objc_msgSend_userInfo(a2, v206, v207, v208, v209);
  v933 = objc_msgSend_objectForKey_(v255, v256, @"conference", v257, v258);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v263 = objc_msgSend_userInfo(a2, v259, v260, v261, v262);
    v267 = objc_msgSend_objectForKey_(v263, v264, @"conference", v265, v266);
    v272 = objc_msgSend_sessionToken(a2, v268, v269, v270, v271);
    v942 = objc_msgSend___imHexString(v272, v273, v274, v275, v276);
    if (!v940)
    {
      objc_msgSend__setInitiatedConference_(*(*(*(a1 + 40) + 8) + 40), v277, v942, v278, v279);
      objc_msgSend__setCallType_forConferenceID_(*(*(*(a1 + 40) + 8) + 40), v280, isEqualToString, v942, v281);
    }

    if ((objc_msgSend_isEqualToString_(v267, v277, v942, v278, v279) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v286 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v286, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v970 = v267;
          v971 = 2112;
          v972 = v942;
          _os_log_impl(&dword_23BC9F000, v286, OS_LOG_TYPE_INFO, "  Initiate processed!   CID changed from %@ to %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v287 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v287, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v970 = v942;
          _os_log_impl(&dword_23BC9F000, v287, OS_LOG_TYPE_INFO, "Conference ID: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      if (!v940)
      {
        v292 = *(*(*(a1 + 40) + 8) + 40);
        v293 = objc_msgSend_sessionToken(a2, v288, v289, v290, v291);
        objc_msgSend__setConferenceIDMap_forToken_(v292, v294, v267, v293, v295);
      }

      v296 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v288, @"%@", v290, v291, v942);
      objc_msgSend_setObject_forKey_(v938, v297, v296, @"ConferenceID", v298);
      v953 = 0u;
      v954 = 0u;
      v951 = 0u;
      v952 = 0u;
      v303 = objc_msgSend_queuedMessages(qword_281422890, v299, v300, v301, v302);
      v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v304, &v951, v960, 16);
      if (v309)
      {
        v310 = *v952;
        do
        {
          for (i = 0; i != v309; ++i)
          {
            if (*v952 != v310)
            {
              objc_enumerationMutation(v303);
            }

            v312 = *(*(&v951 + 1) + 8 * i);
            v313 = objc_msgSend_userInfo(v312, v305, v306, v307, v308);
            v317 = objc_msgSend_objectForKey_(v313, v314, @"conference", v315, v316);
            if (IMOSLoggingEnabled())
            {
              v321 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
              {
                v323 = objc_msgSend_sessionToken(v312, v318, v322, v319, v320);
                v328 = objc_msgSend___imHexString(v323, v324, v325, v326, v327);
                *buf = 138412802;
                v970 = v312;
                v971 = 2112;
                v972 = v317;
                v973 = 2112;
                *v974 = v328;
                _os_log_impl(&dword_23BC9F000, v321, OS_LOG_TYPE_INFO, "  Found queued message: %@   (%@: %@)", buf, 0x20u);
              }
            }

            if (objc_msgSend_isEqualToString_(v317, v318, v267, v319, v320))
            {
              if (IMOSLoggingEnabled())
              {
                v333 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v333, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v970 = v267;
                  v971 = 2112;
                  v972 = v942;
                  _os_log_impl(&dword_23BC9F000, v333, OS_LOG_TYPE_INFO, "  Fixing conference ID: %@ => %@", buf, 0x16u);
                }
              }

              v334 = objc_msgSend_sessionToken(a2, v329, v330, v331, v332);
              objc_msgSend_setSessionToken_(v312, v335, v334, v336, v337);
            }
          }

          v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v305, &v951, v960, 16);
        }

        while (v309);
      }

      v338 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
        v339 = objc_msgSend_broadcasterForACConferenceListeners(v338, v305, v306, v307, v308);
      }

      else
      {
        v339 = objc_msgSend_broadcasterForVCConferenceListeners(v338, v305, v306, v307, v308);
      }

      v345 = v339;
      v346 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v340, v341, v342, v343);
      objc_msgSend_account_conference_changedToNewConferenceID_(v345, v347, v346, v267, v942);
      v933 = v942;
    }

    if (v940)
    {
      PLLogRegisteredEvent();
      goto LABEL_249;
    }

    v348 = *(*(*(a1 + 40) + 8) + 40);
    if (isEqualToString)
    {
      v349 = objc_msgSend_broadcasterForACConferenceListeners(v348, v282, v283, v284, v285);
    }

    else
    {
      v349 = objc_msgSend_broadcasterForVCConferenceListeners(v348, v282, v283, v284, v285);
    }

    v354 = v349;
    v355 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v350, v351, v352, v353);
    objc_msgSend_account_conference_invitationSentSuccessfully_(v354, v356, v355, v942, 1);
    PLLogRegisteredEvent();
  }

  else
  {
    PLLogRegisteredEvent();
    v344 = v940;
    if (v940)
    {
      goto LABEL_247;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v478 = objc_msgSend_sessionToken(a2, v474, v475, v476, v477);
      v483 = objc_msgSend___imHexString(v478, v479, v480, v481, v482);
      v484 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v490 = objc_msgSend_relayType(a2, v485, v486, v487, v488);
      if (v490)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FE8], v490);
      }

      v494 = objc_msgSend_relayConnectionId(a2, v489, v490, v491, v492);
      if (v494)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18F48], v494);
      }

      v498 = objc_msgSend_relayTransactionIdAlloc(a2, v493, v494, v495, v496);
      if (v498)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FE0], v498);
      }

      v502 = objc_msgSend_relayTokenAllocReq(a2, v497, v498, v499, v500);
      if (v502)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FD8], v502);
      }

      v506 = objc_msgSend_peerRelayIP(a2, v501, v502, v503, v504);
      if (v506)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18F70], v506);
      }

      v510 = objc_msgSend_peerRelayPort(a2, v505, v506, v507, v508);
      if (v510)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18F88], v510);
      }

      v514 = objc_msgSend_selfRelayIP(a2, v509, v510, v511, v512);
      if (v514)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FB8], v514);
      }

      v517 = objc_msgSend_selfRelayPort(a2, v513, v514, v515, v516);
      if (v517)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FD0], v517);
      }

      if (IMOSLoggingEnabled())
      {
        v518 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v518, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v970 = v483;
          v971 = 2112;
          v972 = v484;
          _os_log_impl(&dword_23BC9F000, v518, OS_LOG_TYPE_INFO, "  Response to relay request %@    parameters: %@", buf, 0x16u);
        }
      }

      v519 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v519, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v970 = v483;
        v971 = 2112;
        v972 = v484;
        _os_log_impl(&dword_23BC9F000, v519, OS_LOG_TYPE_DEFAULT, "  Response to relay request %@    parameters: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v924 = v483;
          v927 = v484;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v924 = v483;
          v927 = v484;
          IMLogString();
        }
      }

      v524 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
LABEL_243:
        v594 = objc_msgSend_broadcasterForACConferenceListeners(v524, v520, v521, v522, v523);
LABEL_393:
        v686 = v594;
        v687 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v595, v596, v597, v598, v924, v927);
        v688 = *(*(*(a1 + 40) + 8) + 40);
        v693 = objc_msgSend_peerID(a2, v689, v690, v691, v692);
        v696 = objc_msgSend__displayIDForPeerID_conferenceID_(v688, v694, v693, v483, v695);
        v697 = sub_23BCA7F48(v696);
        objc_msgSend_account_relay_handleInitate_fromPerson_(v686, v698, v687, v483, v484, v697);

        goto LABEL_394;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_relayType(a2, v546, v547, v548, v549))
      {
        goto LABEL_394;
      }

      v554 = objc_msgSend_sessionToken(a2, v550, v551, v552, v553);
      v483 = objc_msgSend___imHexString(v554, v555, v556, v557, v558);
      v484 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v564 = objc_msgSend_relayType(a2, v559, v560, v561, v562);
      if (v564)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FE8], v564);
      }

      v568 = objc_msgSend_relayConnectionId(a2, v563, v564, v565, v566);
      if (v568)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18F48], v568);
      }

      v572 = objc_msgSend_relayTransactionIdAlloc(a2, v567, v568, v569, v570);
      if (v572)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FE0], v572);
      }

      v576 = objc_msgSend_relayTokenAllocReq(a2, v571, v572, v573, v574);
      if (v576)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FD8], v576);
      }

      v580 = objc_msgSend_peerRelayIP(a2, v575, v576, v577, v578);
      if (v580)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18F70], v580);
      }

      v584 = objc_msgSend_peerRelayPort(a2, v579, v580, v581, v582);
      if (v584)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18F88], v584);
      }

      v588 = objc_msgSend_selfRelayIP(a2, v583, v584, v585, v586);
      if (v588)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FB8], v588);
      }

      v591 = objc_msgSend_selfRelayPort(a2, v587, v588, v589, v590);
      if (v591)
      {
        CFDictionarySetValue(v484, *MEMORY[0x277D18FD0], v591);
      }

      if (IMOSLoggingEnabled())
      {
        v592 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v592, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v970 = v483;
          v971 = 2112;
          v972 = v484;
          _os_log_impl(&dword_23BC9F000, v592, OS_LOG_TYPE_INFO, "  Inline request to relay %@    parameters: %@", buf, 0x16u);
        }
      }

      v593 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v593, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v970 = v483;
        v971 = 2112;
        v972 = v484;
        _os_log_impl(&dword_23BC9F000, v593, OS_LOG_TYPE_DEFAULT, "  Inline request to relay %@    parameters: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v924 = v483;
          v927 = v484;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v924 = v483;
          v927 = v484;
          IMLogString();
        }
      }

      v524 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
        goto LABEL_243;
      }
    }

    v594 = objc_msgSend_broadcasterForVCConferenceListeners(v524, v520, v521, v522, v523);
    goto LABEL_393;
  }

  v361 = objc_msgSend_sessionToken(a2, v357, v358, v359, v360);
  v943 = objc_msgSend___imHexString(v361, v362, v363, v364, v365);
  obj = objc_msgSend_canonicalizedPeers(a2, v366, v367, v368, v369);
  v944 = *(*(*(a1 + 40) + 8) + 40);
  v374 = objc_msgSend_userInfo(a2, v370, v371, v372, v373);
  v378 = objc_msgSend_objectForKey_(v374, v375, @"ID", v376, v377);
  if (!objc_msgSend_count(obj, v379, v380, v381, v382) || !objc_msgSend_length(v943, v383, v384, v385, v386))
  {
    goto LABEL_188;
  }

  objc_msgSend__setPeerInfo_conferenceID_(v944, v383, obj, v943, v387);
  if (IMOSLoggingEnabled())
  {
    v388 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v388, OS_LOG_TYPE_INFO))
    {
      *v961 = 138412802;
      v962 = obj;
      v963 = 2112;
      v964 = v943;
      v965 = 2112;
      v966 = v378;
      _os_log_impl(&dword_23BC9F000, v388, OS_LOG_TYPE_INFO, "  Processing peers: %@ for conferenceID: %@ and targetID: %@", v961, 0x20u);
    }
  }

  v389 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
  {
    *v961 = 138412290;
    v962 = obj;
    _os_log_impl(&dword_23BC9F000, v389, OS_LOG_TYPE_DEFAULT, "Processing peers: %@", v961, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v924 = obj;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v924 = obj;
      IMLogString();
    }
  }

  v957 = 0u;
  v958 = 0u;
  v955 = 0u;
  v956 = 0u;
  v393 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v390, &v955, buf, 16, v924);
  if (!v393)
  {
    goto LABEL_188;
  }

  v394 = 0;
  v395 = *v956;
  do
  {
    for (j = 0; j != v393; ++j)
    {
      if (*v956 != v395)
      {
        objc_enumerationMutation(obj);
      }

      v397 = *(*(&v955 + 1) + 8 * j);
      v398 = objc_msgSend_objectForKey_(v397, v383, @"status", v391, v392, v924, v927, v929);
      v402 = objc_msgSend_objectForKey_(v397, v399, @"id", v400, v401);
      v406 = objc_msgSend_objectForKey_(v397, v403, @"canonical-id", v404, v405);
      v411 = objc_msgSend__stripFZIDPrefix(v406, v407, v408, v409, v410);
      if (objc_msgSend_intValue(v398, v412, v413, v414, v415))
      {
        if (IMOSLoggingEnabled())
        {
          v417 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v417, OS_LOG_TYPE_INFO))
          {
            *v961 = 138412802;
            v962 = v402;
            v963 = 2112;
            v964 = v398;
            v965 = 2112;
            v966 = v411;
            _os_log_impl(&dword_23BC9F000, v417, OS_LOG_TYPE_INFO, "  Skipping (non-0 status)   peerID: %@    status code: %@  canonical id: %@", v961, 0x20u);
          }
        }

        v418 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v418, OS_LOG_TYPE_DEFAULT))
        {
          *v961 = 138412802;
          v962 = v402;
          v963 = 2112;
          v964 = v398;
          v965 = 2112;
          v966 = v411;
          _os_log_impl(&dword_23BC9F000, v418, OS_LOG_TYPE_DEFAULT, "  Skipping (non-0 status)   peerID: %@    status code: %@  canonical id: %@", v961, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v927 = v398;
            v929 = v411;
            v924 = v402;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v927 = v398;
            v929 = v411;
            v924 = v402;
            IMLogString();
          }
        }
      }

      else
      {
        objc_msgSend__setAlternateDisplayID_forPeerID_conferenceID_(v944, v416, v378, v402, v943);
        if (IMOSLoggingEnabled())
        {
          v419 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
          {
            *v961 = 138413058;
            v962 = v411;
            v963 = 2112;
            v964 = v402;
            v965 = 2112;
            v966 = v378;
            v967 = 2112;
            v968 = v411;
            _os_log_impl(&dword_23BC9F000, v419, OS_LOG_TYPE_INFO, "     Peer: %@    Canonical: %@   Old: %@   New: %@", v961, 0x2Au);
          }
        }

        v420 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
        {
          *v961 = 138413058;
          v962 = v411;
          v963 = 2112;
          v964 = v402;
          v965 = 2112;
          v966 = v378;
          v967 = 2112;
          v968 = v411;
          _os_log_impl(&dword_23BC9F000, v420, OS_LOG_TYPE_DEFAULT, "     Peer: %@    Canonical: %@   Old: %@   New: %@", v961, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v929 = v378;
            v924 = v411;
            v927 = v402;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v929 = v378;
            v924 = v411;
            v927 = v402;
            IMLogString();
          }
        }

        if (objc_msgSend_isEqualToString_(v378, v421, v411, v422, v423, v924))
        {
          if (IMOSLoggingEnabled())
          {
            v428 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v428, OS_LOG_TYPE_INFO))
            {
              *v961 = 138412290;
              v962 = v378;
              _os_log_impl(&dword_23BC9F000, v428, OS_LOG_TYPE_INFO, "Peer ID did not change: %@", v961, 0xCu);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            v924 = v378;
            MarcoNoteCheckpoint();
          }
        }

        else
        {
          if (isEqualToString)
          {
            v429 = objc_msgSend_broadcasterForACConferenceListeners(v944, v424, v425, v426, v427);
          }

          else
          {
            v429 = objc_msgSend_broadcasterForVCConferenceListeners(v944, v424, v425, v426, v427);
          }

          v434 = v429;
          v435 = objc_msgSend_accountID(v944, v430, v431, v432, v433);
          objc_msgSend_account_conference_peerIDChangedFromID_toID_(v434, v436, v435, v943, v378, v411);
          if (IMOSLoggingEnabled())
          {
            v437 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v437, OS_LOG_TYPE_INFO))
            {
              *v961 = 138412546;
              v962 = v378;
              v963 = 2112;
              v964 = v411;
              _os_log_impl(&dword_23BC9F000, v437, OS_LOG_TYPE_INFO, "Peer ID was mapped from: %@ to: %@", v961, 0x16u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            v924 = v378;
            v927 = v411;
            MarcoNoteCheckpoint();
          }
        }

        v394 = 1;
      }
    }

    v393 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v383, &v955, buf, 16);
  }

  while (v393);
  if (v394)
  {
    v945 = *(*(*(a1 + 40) + 8) + 40);
    v955 = 0u;
    v956 = 0u;
    v957 = 0u;
    v958 = 0u;
    v439 = objc_msgSend_queuedMessages(qword_281422890, v383, v438, v391, v392);
    v445 = objc_msgSend_countByEnumeratingWithState_objects_count_(v439, v440, &v955, buf, 16);
    if (v445)
    {
      v446 = *v956;
      do
      {
        for (k = 0; k != v445; ++k)
        {
          if (*v956 != v446)
          {
            objc_enumerationMutation(v439);
          }

          v448 = *(*(&v955 + 1) + 8 * k);
          v449 = objc_msgSend_userInfo(v448, v441, v442, v443, v444, v924);
          v453 = objc_msgSend_objectForKey_(v449, v450, @"ID", v451, v452);
          if (IMOSLoggingEnabled())
          {
            v454 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v454, OS_LOG_TYPE_INFO))
            {
              *v961 = 138412546;
              v962 = v448;
              v963 = 2112;
              v964 = v453;
              _os_log_impl(&dword_23BC9F000, v454, OS_LOG_TYPE_INFO, "  Found queued message: %@  with ID: %@", v961, 0x16u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v455 = objc_msgSend_peers(v448, v441, v442, v443, v444);
            if (!objc_msgSend_count(v455, v456, v457, v458, v459))
            {
              v460 = objc_msgSend_sessionToken(v448, v441, v442, v443, v444);
              v465 = objc_msgSend___imHexString(v460, v461, v462, v463, v464);
              if (objc_msgSend_isEqualToString_(v465, v466, v943, v467, v468))
              {
                v469 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(v945, v441, v453, v943, 0);
                if (IMOSLoggingEnabled())
                {
                  v473 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v473, OS_LOG_TYPE_INFO))
                  {
                    *v961 = 138412546;
                    v962 = v453;
                    v963 = 2112;
                    v964 = v469;
                    _os_log_impl(&dword_23BC9F000, v473, OS_LOG_TYPE_INFO, "  Fixing peers for ID: %@ => %@", v961, 0x16u);
                  }
                }

                objc_msgSend_setPeers_(v448, v470, v469, v471, v472);
              }
            }
          }
        }

        v445 = objc_msgSend_countByEnumeratingWithState_objects_count_(v439, v441, &v955, buf, 16);
      }

      while (v445);
    }

    v344 = 0;
  }

  else
  {
LABEL_188:
    v935 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v383, *MEMORY[0x277D07D88], 5030, 0, v924);
    if (IMOSLoggingEnabled())
    {
      v525 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v525, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v525, OS_LOG_TYPE_INFO, "No peer response in initiate", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v526 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v526, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v526, OS_LOG_TYPE_INFO, "No peer response in initiate", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    v344 = 5030;
  }

  v527 = objc_msgSend__anyPeersForConferenceIDMayRequireBreakBeforeMake_(*(*(*(a1 + 40) + 8) + 40), v441, v943, v443, v444, v924);
  if (IMOSLoggingEnabled())
  {
    v528 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v528, OS_LOG_TYPE_INFO))
    {
      v529 = @"NO";
      if (v527)
      {
        v529 = @"YES";
      }

      *buf = 138412290;
      v970 = v529;
      _os_log_impl(&dword_23BC9F000, v528, OS_LOG_TYPE_INFO, "Conference may require break before make: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v530 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v530, OS_LOG_TYPE_INFO))
    {
      v531 = @"NO";
      if (v527)
      {
        v531 = @"YES";
      }

      *buf = 138412290;
      v970 = v531;
      _os_log_impl(&dword_23BC9F000, v530, OS_LOG_TYPE_INFO, "Conference may require break before make: %@", buf, 0xCu);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v534 = @"NO";
    if (v527)
    {
      v534 = @"YES";
    }

    v924 = v534;
    MarcoNoteCheckpoint();
  }

  if (v527)
  {
    v539 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v532, MEMORY[0x277CBEC38], *MEMORY[0x277D19528], v533);
    v540 = *(*(*(a1 + 40) + 8) + 40);
    if (isEqualToString)
    {
      v541 = objc_msgSend_broadcasterForACConferenceListeners(v540, v535, v536, v537, v538);
    }

    else
    {
      v541 = objc_msgSend_broadcasterForVCConferenceListeners(v540, v535, v536, v537, v538);
    }

    v599 = v541;
    v600 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v542, v543, v544, v545, v924);
    objc_msgSend_account_conference_peerID_propertiesUpdated_(v599, v601, v600, v943, 0, v539);
  }

LABEL_247:
  if (!v344)
  {
LABEL_394:
    v603 = 0;
    goto LABEL_395;
  }

  v937 = v344;
LABEL_249:
  if (IMOSLoggingEnabled())
  {
    v602 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v602, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v970) = v937;
      _os_log_impl(&dword_23BC9F000, v602, OS_LOG_TYPE_INFO, "Failed delivering message with code: %d", buf, 8u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v924 = v937;
    MarcoNoteCheckpoint();
  }

  v603 = v937;
  if (IMOSLoggingEnabled())
  {
    v604 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v604, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v970) = v937;
      _os_log_impl(&dword_23BC9F000, v604, OS_LOG_TYPE_INFO, "  Message delivery failed with code: %d", buf, 8u);
    }
  }

  if (v937 <= 5031)
  {
    if (v937 > 5005)
    {
      switch(v937)
      {
        case 5006:
          if (IMOSLoggingEnabled())
          {
            v668 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v668, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v668, OS_LOG_TYPE_INFO, "Bad push token - will re-register", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v673 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v673, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v673, OS_LOG_TYPE_INFO, "  Bad push token", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v669, v670, v671, v672, v924);
          v603 = 5006;
          break;
        case 5029:
          if (IMOSLoggingEnabled())
          {
            v680 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v680, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v680, OS_LOG_TYPE_INFO, "Not authorized - needs re-register", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v685 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v685, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v685, OS_LOG_TYPE_INFO, "  Not authorized", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v681, v682, v683, v684, v924);
          v603 = 5029;
          break;
        case 5030:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v949 = 0u;
            v950 = 0u;
            v947 = 0u;
            v948 = 0u;
            v620 = objc_msgSend_canonicalizedPeers(a2, v616, v617, v618, v619);
            v626 = objc_msgSend_countByEnumeratingWithState_objects_count_(v620, v621, &v947, v959, 16);
            if (v626)
            {
              v627 = *v948;
              do
              {
                for (m = 0; m != v626; ++m)
                {
                  if (*v948 != v627)
                  {
                    objc_enumerationMutation(v620);
                  }

                  v629 = *(*(&v947 + 1) + 8 * m);
                  v630 = objc_msgSend_sharedInstance(MEMORY[0x277D18728], v622, v623, v624, v625, v924);
                  v634 = objc_msgSend_objectForKey_(v629, v631, @"raw-id", v632, v633);
                  v639 = objc_msgSend_topic(a2, v635, v636, v637, v638);
                  objc_msgSend__setCurrentIDStatus_forDestination_service_(v630, v640, 2, v634, v639);
                }

                v626 = objc_msgSend_countByEnumeratingWithState_objects_count_(v620, v622, &v947, v959, 16);
              }

              while (v626);
            }
          }

          v603 = 5030;
          break;
      }
    }

    else
    {
      switch(v937)
      {
        case 5000:
          if (IMOSLoggingEnabled())
          {
            v662 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v662, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v662, OS_LOG_TYPE_INFO, "Not authenticated - needs re-register", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v667 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v667, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v667, OS_LOG_TYPE_INFO, "  Unauthenticated", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v663, v664, v665, v666, v924);
          v603 = 5000;
          break;
        case 5002:
          if (IMOSLoggingEnabled())
          {
            v674 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v674, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v674, OS_LOG_TYPE_INFO, "Version mismatch", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v679 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v679, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v679, OS_LOG_TYPE_INFO, "  Version Mismatch", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v675, v676, v677, v678, v924);
          v603 = 5002;
          break;
        case 5004:
          if (IMOSLoggingEnabled())
          {
            v608 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v608, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v608, OS_LOG_TYPE_INFO, "Server Busy", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v609 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v609, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v609, OS_LOG_TYPE_INFO, "  Server too busy", buf, 2u);
            }
          }

          v603 = 5004;
          break;
      }
    }
  }

  else if (v937 <= 5056)
  {
    switch(v937)
    {
      case 5032:
        if (IMOSLoggingEnabled())
        {
          v650 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v650, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v650, OS_LOG_TYPE_INFO, "Bad signature - will re-register", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }

        if (IMOSLoggingEnabled())
        {
          v655 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v655, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v655, OS_LOG_TYPE_INFO, "  Bad signature", buf, 2u);
          }
        }

        objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v651, v652, v653, v654, v924);
        v603 = 5032;
        break;
      case 5033:
        if (IMOSLoggingEnabled())
        {
          v656 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v656, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v656, OS_LOG_TYPE_INFO, "New signature required - will re-register", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }

        if (IMOSLoggingEnabled())
        {
          v661 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v661, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v661, OS_LOG_TYPE_INFO, "  Requires new signature", buf, 2u);
          }
        }

        objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v657, v658, v659, v660, v924);
        v603 = 5033;
        break;
      case 5034:
        if (IMOSLoggingEnabled())
        {
          v610 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v610, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v610, OS_LOG_TYPE_INFO, "New registration required - will re-register", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }

        if (IMOSLoggingEnabled())
        {
          v615 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v615, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v615, OS_LOG_TYPE_INFO, "  Requires new registration", buf, 2u);
          }
        }

        objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v611, v612, v613, v614, v924);
        v603 = 5034;
        break;
    }
  }

  else if (v937 > 5062)
  {
    if (v937 == 5063)
    {
      if (IMOSLoggingEnabled())
      {
        v647 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v647, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v647, OS_LOG_TYPE_INFO, "Invitation region context needs update", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      if (IMOSLoggingEnabled())
      {
        v649 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v649, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v649, OS_LOG_TYPE_INFO, "  Invitation region context needs update", buf, 2u);
        }
      }

      v935 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v648, *MEMORY[0x277D07D88], 5063, 0, v924);
      v603 = 5063;
    }

    else if (v937 == 5064)
    {
      if (IMOSLoggingEnabled())
      {
        v641 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v641, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v641, OS_LOG_TYPE_INFO, "Incomplete phone number", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      if (IMOSLoggingEnabled())
      {
        v643 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v643, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v643, OS_LOG_TYPE_INFO, "  Incomplete phone number", buf, 2u);
        }
      }

      v935 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v642, *MEMORY[0x277D07D88], 5064, 0, v924);
      v603 = 5064;
    }
  }

  else if (v937 == 5057)
  {
    if (IMOSLoggingEnabled())
    {
      v644 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v644, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v644, OS_LOG_TYPE_INFO, "Self version is too old", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v646 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v646, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v646, OS_LOG_TYPE_INFO, "  Self version is too old", buf, 2u);
      }
    }

    v935 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v645, *MEMORY[0x277D07D88], 5057, 0, v924);
    v603 = 5057;
  }

  else if (v937 == 5058)
  {
    if (IMOSLoggingEnabled())
    {
      v605 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v605, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v605, OS_LOG_TYPE_INFO, "Peer version is too old", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v607 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v607, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v607, OS_LOG_TYPE_INFO, "  Peer verion is too old", buf, 2u);
      }
    }

    v935 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v606, *MEMORY[0x277D07D88], 5058, 0, v924);
    v603 = 5058;
  }

LABEL_395:
  if (!v935)
  {
    goto LABEL_448;
  }

  if (IMOSLoggingEnabled())
  {
    v699 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v699, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v970 = v935;
      _os_log_impl(&dword_23BC9F000, v699, OS_LOG_TYPE_INFO, "  Message delivery failed with error: %@", buf, 0xCu);
    }
  }

  v700 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v705 = objc_msgSend_userInfo(a2, v701, v702, v703, v704);
  v709 = objc_msgSend_objectForKey_(v705, v706, @"ID", v707, v708);
  v714 = objc_msgSend_userInfo(a2, v710, v711, v712, v713);
  v718 = objc_msgSend_objectForKey_(v714, v715, @"properties", v716, v717);
  if (objc_msgSend_length(v933, v719, v720, v721, v722))
  {
    objc_msgSend_setObject_forKey_(v700, v723, v933, @"conference", v726);
  }

  if (objc_msgSend_length(v709, v723, v724, v725, v726, v924))
  {
    objc_msgSend_setObject_forKey_(v700, v727, v709, @"ID", v730);
  }

  if (objc_msgSend_count(v718, v727, v728, v729, v730))
  {
    objc_msgSend_setObject_forKey_(v700, v731, v718, @"properties", v734);
  }

  v735 = objc_msgSend_sessionToken(a2, v731, v732, v733, v734);
  v740 = objc_msgSend___imHexString(v735, v736, v737, v738, v739);
  if (objc_msgSend_length(v740, v741, v742, v743, v744))
  {
    objc_msgSend_setObject_forKey_(v700, v745, v740, @"conference", v746);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_411;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_reason(a2, v751, v752, v753, v754))
    {
      v755 = objc_msgSend_reason(a2, v747, v748, v749, v750);
      objc_msgSend_setObject_forKey_(v700, v756, v755, @"reason", v757);
    }

LABEL_411:
    v758 = 1;
    v759 = 4;
    goto LABEL_412;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_peers(a2, v886, v887, v888, v889))
    {
      v894 = objc_msgSend_peers(a2, v890, v891, v892, v893);
      objc_msgSend_setObject_forKey_(v700, v895, v894, @"peers", v896);
    }

    if (objc_msgSend_reason(a2, v890, v891, v892, v893))
    {
      v897 = objc_msgSend_reason(a2, v747, v748, v749, v750);
      objc_msgSend_setObject_forKey_(v700, v898, v897, @"reason", v899);
    }

    v758 = 0;
    v759 = 3;
    goto LABEL_412;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_peers(a2, v913, v914, v915, v916))
    {
      v917 = objc_msgSend_peers(a2, v747, v748, v749, v750);
      objc_msgSend_setObject_forKey_(v700, v918, v917, @"receivers", v919);
    }

    v759 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v758 = 1;
      v759 = 7;
      goto LABEL_412;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v758 = 1;
      v759 = 8;
      goto LABEL_412;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v758 = 0;
      v759 = 9;
      goto LABEL_412;
    }

    if (IMOSLoggingEnabled())
    {
      v920 = OSLogHandleForIMFoundationCategory();
      v758 = 1;
      if (os_log_type_enabled(v920, OS_LOG_TYPE_INFO))
      {
        v921 = objc_opt_class();
        v922 = NSStringFromClass(v921);
        *buf = 138412290;
        v970 = v922;
        _os_log_impl(&dword_23BC9F000, v920, OS_LOG_TYPE_INFO, "Unexpected message class being delivered: %@", buf, 0xCu);
      }

      v759 = 0;
      goto LABEL_412;
    }

    v759 = 0;
  }

  v758 = 1;
LABEL_412:
  v760 = objc_msgSend_domain(v935, v747, v748, v749, v750);
  if (objc_msgSend_length(v760, v761, v762, v763, v764))
  {
    v769 = objc_msgSend_domain(v935, v765, v766, v767, v768);
    objc_msgSend_setObject_forKey_(v700, v770, v769, @"internalErrorDomain", v771);
  }

  v772 = objc_msgSend_userInfo(v935, v765, v766, v767, v768);
  if (objc_msgSend_count(v772, v773, v774, v775, v776))
  {
    v781 = objc_msgSend_userInfo(v935, v777, v778, v779, v780);
    objc_msgSend_setObject_forKey_(v700, v782, v781, @"internalUserInfo", v783);
  }

  v784 = MEMORY[0x277CCABB0];
  v785 = objc_msgSend_code(v935, v777, v778, v779, v780);
  v789 = objc_msgSend_numberWithInteger_(v784, v786, v785, v787, v788);
  objc_msgSend_setObject_forKey_(v700, v790, v789, @"internalCode", v791);
  if (a5)
  {
    v796 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v792, v603, v794, v795);
    objc_msgSend_setObject_forKey_(v700, v797, v796, @"result", v798);
  }

  if (objc_msgSend_messageBodyUsingCache(a2, v792, v793, v794, v795))
  {
    v803 = objc_msgSend_messageBodyUsingCache(a2, v799, v800, v801, v802);
    objc_msgSend_setObject_forKey_(v700, v804, v803, @"messageBody", v805);
  }

  if (objc_msgSend_bagKey(a2, v799, v800, v801, v802))
  {
    v810 = objc_msgSend_bagKey(a2, v806, v807, v808, v809);
    objc_msgSend_setObject_forKey_(v700, v811, v810, @"bagKey", v812);
  }

  v813 = MEMORY[0x277CCA9B8];
  v814 = objc_msgSend_count(v700, v806, v807, v808, v809);
  v816 = *MEMORY[0x277D18F40];
  if (v814)
  {
    v817 = objc_msgSend_errorWithDomain_code_userInfo_(v813, v815, v816, v759, v700);
  }

  else
  {
    v817 = objc_msgSend_errorWithDomain_code_userInfo_(v813, v815, v816, v759, 0);
  }

  v818 = v817;
  if (v758)
  {
    v819 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v819, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v970 = v818;
      _os_log_impl(&dword_23BC9F000, v819, OS_LOG_TYPE_DEFAULT, "Posting error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v924 = v818;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v924 = v818;
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v824 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v824, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v970 = v818;
        _os_log_impl(&dword_23BC9F000, v824, OS_LOG_TYPE_INFO, "Posting error: %@", buf, 0xCu);
      }
    }

    v825 = objc_msgSend_broadcaster(*(*(*(a1 + 40) + 8) + 40), v820, v821, v822, v823, v924);
    v830 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v826, v827, v828, v829);
    objc_msgSend_account_postedError_(v825, v831, v830, v818, v832);
  }

  else
  {
    v833 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v833, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v970 = v818;
      _os_log_impl(&dword_23BC9F000, v833, OS_LOG_TYPE_DEFAULT, "Not reporting error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v924 = v818;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v924 = v818;
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v834 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v834, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v970 = v818;
        _os_log_impl(&dword_23BC9F000, v834, OS_LOG_TYPE_INFO, "Not reporting error: %@", buf, 0xCu);
      }
    }
  }

LABEL_448:
  v835 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v835, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BC9F000, v835, OS_LOG_TYPE_DEFAULT, "Checking to see if the queue needs flushing", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  v840 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
  if (isEqualToString)
  {
    v840 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
  }

  v841 = *v840;
  result = objc_msgSend_isEmpty(*(*(a1 + 32) + v841), v836, v837, v838, v839, v924);
  if ((result & 1) == 0)
  {
    v844 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v844, OS_LOG_TYPE_DEFAULT))
    {
      hasQueuedItems = objc_msgSend_hasQueuedItems(qword_281422890, v845, v846, v847, v848);
      *buf = 67109120;
      LODWORD(v970) = hasQueuedItems;
      _os_log_impl(&dword_23BC9F000, v844, OS_LOG_TYPE_DEFAULT, "Message delivery has queued items: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v925 = objc_msgSend_hasQueuedItems(qword_281422890, v850, v851, v852, v853);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v925 = objc_msgSend_hasQueuedItems(qword_281422890, v854, v855, v856, v857);
        IMLogString();
      }
    }

    v858 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v858, OS_LOG_TYPE_DEFAULT))
    {
      v863 = objc_msgSend_count(*(*(a1 + 32) + v841), v859, v860, v861, v862);
      *buf = 67109120;
      LODWORD(v970) = v863;
      _os_log_impl(&dword_23BC9F000, v858, OS_LOG_TYPE_DEFAULT, "Queue has %d items in it", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v925 = objc_msgSend_count(*(*(a1 + 32) + v841), v868, v869, v870, v871);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v925 = objc_msgSend_count(*(*(a1 + 32) + v841), v864, v865, v866, v867);
        IMLogString();
      }
    }

    if (objc_msgSend_hasQueuedItems(qword_281422890, v864, v865, v866, v867, v925))
    {
      v872 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v872, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v872, OS_LOG_TYPE_DEFAULT, " => Pending delivery", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        result = IMShouldLog();
        if (result)
        {
          result = IMLogString();
        }
      }
    }

    else
    {
      v873 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v873, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v873, OS_LOG_TYPE_DEFAULT, " => Flushing now", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v878 = *(a1 + 32);
      v879 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
        v880 = 344;
        v881 = *(v878 + 344);
        v882 = objc_msgSend_broadcasterForACConferenceListeners(v879, v874, v875, v876, v877);
      }

      else
      {
        v880 = 352;
        v881 = *(v878 + 352);
        v882 = objc_msgSend_broadcasterForVCConferenceListeners(v879, v874, v875, v876, v877);
      }

      objc_msgSend_setTarget_(v881, v883, v882, v884, v885);
      objc_msgSend_invokeAll(*(*(a1 + 32) + v880), v900, v901, v902, v903);
      result = objc_msgSend_isEmpty(*(*(a1 + 32) + v880), v904, v905, v906, v907);
      if ((result & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v912 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v912, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v912, OS_LOG_TYPE_INFO, "Invocations are left over after notifying clients!", buf, 2u);
          }
        }

        result = objc_msgSend_removeAllInvocations(*(*(a1 + 32) + v841), v908, v909, v910, v911);
      }
    }
  }

  v843 = *MEMORY[0x277D85DE8];
  return result;
}

__CFDictionary *sub_23BCA7F48(const void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  if (a1)
  {
    CFDictionarySetValue(v2, *MEMORY[0x277D193A8], a1);
  }

  return v3;
}

uint64_t sub_23BCAA810(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_23BCB4FB0(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v10 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v5, v6, v7, v8);
  valid = objc_msgSend_inValidSIMState(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v16, v17, v18, v19);
  return valid & (objc_msgSend_isSIMLocked(v20, v21, v22, v23, v24) ^ 1);
}

uint64_t sub_23BCAAF28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_23BCB4FB0(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v10 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v5, v6, v7, v8);
  valid = objc_msgSend_inValidSIMState(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v16, v17, v18, v19);
  isSIMLocked = objc_msgSend_isSIMLocked(v20, v21, v22, v23, v24);
  if (isSIMLocked)
  {
    v30 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v25, v26, v27, v28);
    objc_msgSend_showSIMUnlock(v30, v31, v32, v33, v34);
  }

  return valid & (isSIMLocked ^ 1u);
}

void *sub_23BCACF04(void *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a2)
    {
      v11 = objc_msgSend_unsignedIntValue(result, a2, a3, a4, a5);
      v8 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, &v11, 4, v7);
      return objc_msgSend_setObject_forKey_(a2, v9, v8, @"r", v10);
    }
  }

  return result;
}

uint64_t sub_23BCACF68(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    objc_msgSend_setObject_forKey_(a2, a2, result, @"k", a5);
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, 1, v7, v8);

    return objc_msgSend_setObject_forKey_(a2, v9, v10, @"kv", v11);
  }

  return result;
}

void *sub_23BCACFD4(void *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a2)
    {
      v11 = objc_msgSend_unsignedIntValue(result, a2, a3, a4, a5);
      v8 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v6, &v11, 4, v7);
      return objc_msgSend_setObject_forKey_(a2, v9, v8, @"h", v10);
    }
  }

  return result;
}

void sub_23BCADC48(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x23BCADAD8);
  }

  _Unwind_Resume(a1);
}

void *sub_23BCB0E7C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_objectForKey_(a1, a2, @"r", a4, a5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v6, @"r", v7, v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v17, @"r", v18, v19);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v20 = 0;
    objc_msgSend_getBytes_length_(result, v15, &v20, 4, v16);
    return (v20 != 0);
  }

  v9 = MEMORY[0x277CBEA90];
  v10 = objc_msgSend_objectForKey_(a1, v6, @"r", v7, v8);
  result = objc_msgSend__IDSDataFromBase64String_(v9, v11, v10, v12, v13);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_23BCB0F64(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_objectForKey_(a1, a2, @"s", a4, a5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v6, @"s", v7, v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v17, @"s", v18, v19);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v23 = 0;
    objc_msgSend_getBytes_length_(result, v15, &v23, 4, v16);
    return objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, v23, v21, v22);
  }

  v9 = MEMORY[0x277CBEA90];
  v10 = objc_msgSend_objectForKey_(a1, v6, @"s", v7, v8);
  result = objc_msgSend__IDSDataFromBase64String_(v9, v11, v10, v12, v13);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_23BCB1050(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_objectForKey_(a1, a2, @"a", a4, a5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v6, @"a", v7, v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v17, @"a", v18, v19);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v23 = 0;
    objc_msgSend_getBytes_length_(result, v15, &v23, 4, v16);
    return objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, v23, v21, v22);
  }

  v9 = MEMORY[0x277CBEA90];
  v10 = objc_msgSend_objectForKey_(a1, v6, @"a", v7, v8);
  result = objc_msgSend__IDSDataFromBase64String_(v9, v11, v10, v12, v13);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_23BCB113C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_objectForKey_(a1, a2, @"h", a4, a5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v6, @"h", v7, v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v17, @"h", v18, v19);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v20 = 0;
    objc_msgSend_getBytes_length_(result, v15, &v20, 4, v16);
    return (v20 != 0);
  }

  v9 = MEMORY[0x277CBEA90];
  v10 = objc_msgSend_objectForKey_(a1, v6, @"h", v7, v8);
  result = objc_msgSend__IDSDataFromBase64String_(v9, v11, v10, v12, v13);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23BCB1224(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_objectForKey_(a1, a2, @"k", a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBEA90];
    v11 = objc_msgSend_objectForKey_(a1, v6, @"k", v7, v8);

    return objc_msgSend__IDSDataFromBase64String_(v9, v10, v11, v12, v13);
  }

  else
  {
    objc_msgSend_objectForKey_(a1, v6, @"k", v7, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return objc_msgSend_objectForKey_(a1, v15, @"k", v16, v17);
    }

    else
    {
      return 0;
    }
  }
}

void *sub_23BCB1308(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_objectForKey_(a1, a2, @"p", a4, a5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v6, @"p", v7, v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v17, @"p", v18, v19);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v23 = 0;
    objc_msgSend_getBytes_length_(result, v15, &v23, 4, v16);
    return objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, v23, v21, v22);
  }

  v9 = MEMORY[0x277CBEA90];
  v10 = objc_msgSend_objectForKey_(a1, v6, @"p", v7, v8);
  result = objc_msgSend__IDSDataFromBase64String_(v9, v11, v10, v12, v13);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23BCB27F8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 120);
  v4 = *(a1 + 152);
  return objc_msgSend_handler_sessionAccepted_topic_peerID_peerCN_peerPushToken_peerNATType_peerBlob_peerNatIP_relayType_relayConnectionID_relayTransactionIDAlloc_relayTokenAllocReq_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_clientInfo_serviceData_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184));
}

id sub_23BCB2858(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = objc_msgSend_initWithObjectsAndKeys_(v4, v5, a1, v6, v7, @"id", a2, @"push-token", 0);
  v9 = objc_alloc(MEMORY[0x277CBEA60]);
  v13 = objc_msgSend_initWithObjects_(v9, v10, v8, v11, v12, 0);

  return v13;
}

uint64_t sub_23BCB4FB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, a3, a4, a5);
  if (!objc_msgSend_isTelephonyDevice(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  v14 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v10, v11, v12, v13);
  if (objc_msgSend_allowAnyNetwork(v14, v15, v16, v17, v18))
  {
    return 1;
  }

  v24 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v19, v20, v21, v22);

  return MEMORY[0x2821F9670](v24, sel_isAirplaneModeEnabled, v25, v26, v27);
}

uint64_t sub_23BCB5014(unsigned int a1)
{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BCB5020(uint64_t a1)
{
  v1 = a1;
  if (a1 <= 4999)
  {
    if (a1 > 199)
    {
      if (a1 == 200)
      {
        return 2;
      }

      if (a1 == 1000)
      {
        return 70;
      }
    }

    else
    {
      if (!a1)
      {
        return 1;
      }

      if (a1 == 1)
      {
        return 0;
      }
    }

    goto LABEL_89;
  }

  if (a1 > 5999)
  {
    if (a1 > 9999)
    {
      if (a1 == 10000)
      {
        return 73;
      }

      if (a1 == 20000)
      {
        return 74;
      }
    }

    else
    {
      if (a1 == 6000)
      {
        return 71;
      }

      if (a1 == 8000)
      {
        return 72;
      }
    }

LABEL_89:
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_23BCBF7DC(v1, v2);
    }

    return v1;
  }

  switch(a1)
  {
    case 5000:
      v1 = 3;
      break;
    case 5001:
      v1 = 4;
      break;
    case 5002:
      v1 = 5;
      break;
    case 5003:
      v1 = 6;
      break;
    case 5004:
      v1 = 7;
      break;
    case 5005:
      v1 = 8;
      break;
    case 5006:
      v1 = 9;
      break;
    case 5007:
      v1 = 10;
      break;
    case 5008:
      v1 = 11;
      break;
    case 5009:
      v1 = 12;
      break;
    case 5010:
      v1 = 13;
      break;
    case 5011:
      v1 = 14;
      break;
    case 5012:
      v1 = 15;
      break;
    case 5013:
      v1 = 16;
      break;
    case 5014:
      v1 = 17;
      break;
    case 5015:
      v1 = 18;
      break;
    case 5016:
      v1 = 19;
      break;
    case 5017:
      v1 = 20;
      break;
    case 5018:
      v1 = 21;
      break;
    case 5019:
      v1 = 22;
      break;
    case 5020:
      v1 = 23;
      break;
    case 5021:
      v1 = 24;
      break;
    case 5022:
      v1 = 25;
      break;
    case 5023:
      v1 = 26;
      break;
    case 5024:
      v1 = 27;
      break;
    case 5025:
      v1 = 28;
      break;
    case 5026:
      v1 = 29;
      break;
    case 5027:
      v1 = 30;
      break;
    case 5028:
      v1 = 31;
      break;
    case 5029:
      v1 = 32;
      break;
    case 5030:
      v1 = 33;
      break;
    case 5031:
      v1 = 34;
      break;
    case 5032:
      v1 = 35;
      break;
    case 5033:
      v1 = 36;
      break;
    case 5034:
      v1 = 37;
      break;
    case 5035:
      v1 = 41;
      break;
    case 5036:
      v1 = 42;
      break;
    case 5037:
      v1 = 43;
      break;
    case 5038:
    case 5055:
      v1 = 44;
      break;
    case 5039:
      v1 = 38;
      break;
    case 5040:
      v1 = 39;
      break;
    case 5041:
      v1 = 40;
      break;
    case 5046:
      v1 = 45;
      break;
    case 5047:
      v1 = 46;
      break;
    case 5048:
      v1 = 47;
      break;
    case 5051:
      v1 = 48;
      break;
    case 5052:
      v1 = 49;
      break;
    case 5057:
      v1 = 50;
      break;
    case 5058:
      v1 = 51;
      break;
    case 5059:
      v1 = 52;
      break;
    case 5060:
      v1 = 53;
      break;
    case 5061:
      v1 = 54;
      break;
    case 5062:
      v1 = 55;
      break;
    case 5063:
      v1 = 56;
      break;
    case 5064:
      v1 = 57;
      break;
    case 5068:
      v1 = 58;
      break;
    case 5076:
      v1 = 64;
      break;
    case 5078:
      v1 = 59;
      break;
    case 5079:
      v1 = 60;
      break;
    case 5080:
      v1 = 61;
      break;
    case 5085:
      v1 = 65;
      break;
    case 5086:
      v1 = 66;
      break;
    case 5087:
      v1 = 67;
      break;
    case 5088:
      v1 = 68;
      break;
    case 5089:
      v1 = 62;
      break;
    case 5090:
      v1 = 63;
      break;
    case 5092:
      v1 = 69;
      break;
    default:
      goto LABEL_89;
  }

  return v1;
}

uint64_t sub_23BCB5370(uint64_t a1)
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  memset(&v6, 0, sizeof(v6));
  localtime_r(&v7.tv_sec, &v6);
  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v2, @"%02d:%02d:%02d.%06d %@", v3, v4, v6.tm_hour, v6.tm_min, v6.tm_sec, v7.tv_usec, a1);
}

void sub_23BCB6034(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_23BCB8A78()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = _Block_copy(&unk_284E71408);
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v3, 1, v4, v5);
  objc_msgSend_setObject_forKey_(v1, v7, v2, v6, v8);

  v9 = _Block_copy(&unk_284E71428);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, 127, v11, v12);
  objc_msgSend_setObject_forKey_(v1, v14, v9, v13, v15);

  v16 = _Block_copy(&unk_284E71448);
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, 2, v18, v19);
  objc_msgSend_setObject_forKey_(v1, v21, v16, v20, v22);

  v23 = _Block_copy(&unk_284E71468);
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, 3, v25, v26);
  objc_msgSend_setObject_forKey_(v1, v28, v23, v27, v29);

  v30 = _Block_copy(&unk_284E71488);
  v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, 4, v32, v33);
  objc_msgSend_setObject_forKey_(v1, v35, v30, v34, v36);

  v37 = _Block_copy(&unk_284E714A8);
  v41 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v38, 5, v39, v40);
  objc_msgSend_setObject_forKey_(v1, v42, v37, v41, v43);

  v44 = _Block_copy(&unk_284E714C8);
  v48 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v45, 6, v46, v47);
  objc_msgSend_setObject_forKey_(v1, v49, v44, v48, v50);

  v51 = _Block_copy(&unk_284E714E8);
  v55 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v52, 7, v53, v54);
  objc_msgSend_setObject_forKey_(v1, v56, v51, v55, v57);

  v58 = _Block_copy(&unk_284E71508);
  v62 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v59, 8, v60, v61);
  objc_msgSend_setObject_forKey_(v1, v63, v58, v62, v64);

  qword_2814228B0 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_23BCB8C84(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v166 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v162 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleInitatePush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v162 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v147 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v147 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v147);
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v157, v165, 16);
  if (v13)
  {
    v153 = *v158;
    obj = v11;
    do
    {
      v14 = 0;
      v154 = v13;
      do
      {
        if (*v158 != v153)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v157 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v16, @"s", v17, v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = MEMORY[0x277CBEA90];
            v23 = objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            v152 = objc_msgSend__IDSDataFromBase64String_(v22, v24, v23, v25, v26);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v152 = objc_msgSend_objectForKey_(a4, v27, @"s", v28, v29);
            }

            else
            {
              v152 = 0;
            }
          }

          v30 = objc_opt_class();
          v156 = objc_msgSend_objectForKey_(a4, v31, @"i", v32, v33);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v156)
            {
              v38 = objc_msgSend_registration(MEMORY[0x277D19298], v34, v35, v36, v37);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v162 = @"i";
                v163 = 2112;
                v164 = v30;
                _os_log_fault_impl(&dword_23BC9F000, v38, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v156 = 0;
          }

          v39 = objc_opt_class();
          v155 = objc_msgSend_objectForKey_(a4, v40, @"I", v41, v42);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v155)
            {
              v47 = objc_msgSend_registration(MEMORY[0x277D19298], v43, v44, v45, v46);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v162 = @"I";
                v163 = 2112;
                v164 = v39;
                _os_log_fault_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v155 = 0;
          }

          v48 = objc_opt_class();
          v52 = objc_msgSend_objectForKey_(a4, v49, @"W", v50, v51);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v52)
          {
            v57 = objc_msgSend_registration(MEMORY[0x277D19298], v53, v54, v55, v56);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v162 = @"W";
              v163 = 2112;
              v164 = v48;
              _os_log_fault_impl(&dword_23BC9F000, v57, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v52 = 0;
          }

          v58 = objc_opt_class();
          v62 = objc_msgSend_objectForKey_(a4, v59, @"J", v60, v61);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v62)
          {
            v67 = objc_msgSend_registration(MEMORY[0x277D19298], v63, v64, v65, v66);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v162 = @"J";
              v163 = 2112;
              v164 = v58;
              _os_log_fault_impl(&dword_23BC9F000, v67, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v62 = 0;
          }

          objc_msgSend_objectForKey_(a4, v63, @"P", v65, v66);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = MEMORY[0x277CBEA90];
            v72 = objc_msgSend_objectForKey_(a4, v68, @"P", v69, v70);
            v151 = objc_msgSend__IDSDataFromBase64String_(v71, v73, v72, v74, v75);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v68, @"P", v69, v70);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v151 = objc_msgSend_objectForKey_(a4, v76, @"P", v77, v78);
            }

            else
            {
              v151 = 0;
            }
          }

          v79 = MEMORY[0x277CCABB0];
          v80 = objc_opt_class();
          v84 = objc_msgSend_objectForKey_(a4, v81, @"N", v82, v83);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v84)
          {
            v89 = objc_msgSend_registration(MEMORY[0x277D19298], v85, v86, v87, v88);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v162 = @"N";
              v163 = 2112;
              v164 = v80;
              _os_log_fault_impl(&dword_23BC9F000, v89, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v84 = 0;
          }

          v90 = objc_msgSend_intValue(v84, v85, v86, v87, v88);
          v94 = objc_msgSend_numberWithInt_(v79, v91, v90, v92, v93);
          objc_msgSend_objectForKey_(a4, v95, @"B", v96, v97);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = MEMORY[0x277CBEA90];
            v102 = objc_msgSend_objectForKey_(a4, v98, @"B", v99, v100);
            v106 = objc_msgSend__IDSDataFromBase64String_(v101, v103, v102, v104, v105);
            goto LABEL_56;
          }

          objc_msgSend_objectForKey_(a4, v98, @"B", v99, v100);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v106 = objc_msgSend_objectForKey_(a4, v107, @"B", v108, v109);
LABEL_56:
            v110 = v106;
          }

          else
          {
            v110 = 0;
          }

          objc_msgSend_objectForKey_(a4, v107, @"A", v108, v109);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v114 = MEMORY[0x277CBEA90];
            v115 = objc_msgSend_objectForKey_(a4, v111, @"A", v112, v113);
            v119 = objc_msgSend__IDSDataFromBase64String_(v114, v116, v115, v117, v118);
            goto LABEL_62;
          }

          objc_msgSend_objectForKey_(a4, v111, @"A", v112, v113);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v119 = objc_msgSend_objectForKey_(a4, v120, @"A", v121, v122);
LABEL_62:
            v123 = v119;
          }

          else
          {
            v123 = 0;
          }

          v124 = objc_opt_class();
          v128 = objc_msgSend_objectForKey_(a4, v125, @"x", v126, v127);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v128)
          {
            v133 = objc_msgSend_registration(MEMORY[0x277D19298], v129, v130, v131, v132);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v162 = @"x";
              v163 = 2112;
              v164 = v124;
              _os_log_fault_impl(&dword_23BC9F000, v133, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v128 = 0;
          }

          objc_msgSend_objectForKey_(a4, v129, @"d", v131, v132);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v137 = MEMORY[0x277CBEA90];
            v138 = objc_msgSend_objectForKey_(a4, v134, @"d", v135, v136);
            v142 = objc_msgSend__IDSDataFromBase64String_(v137, v139, v138, v140, v141);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v134, @"d", v135, v136);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v142 = objc_msgSend_objectForKey_(a4, v143, @"d", v144, v145);
            }

            else
            {
              v142 = 0;
            }
          }

          objc_msgSend_handler_sessionInitated_topic_myID_peerID_peerDisplayID_peerCN_peerPushToken_peerNATType_peerBlob_peerNatIP_clientInfo_serviceData_(v15, v143, a2, v152, a3, v156, v155, v52, v62, v151, v94, v110, v123, v128, v142);
        }

        ++v14;
      }

      while (v154 != v14);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v157, v165, 16);
    }

    while (v13);
  }

  v146 = *MEMORY[0x277D85DE8];
}

void sub_23BCB97EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v99 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleProtectedInitatePush", buf, 2u);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "Protected initiate push block", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10);
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v90, v98, 16);
  if (v13)
  {
    v88 = *v91;
    *&v14 = 138412802;
    v84 = v14;
    obj = v11;
    do
    {
      v15 = 0;
      v89 = v13;
      do
      {
        if (*v91 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v90 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v18 = objc_opt_class();
          v22 = objc_msgSend_objectForKey_(a4, v19, @"W", v20, v21);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v22)
          {
            v27 = objc_msgSend_registration(MEMORY[0x277D19298], v23, v24, v25, v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v95 = @"W";
              v96 = 2112;
              v97 = v18;
              _os_log_fault_impl(&dword_23BC9F000, v27, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v22 = 0;
          }

          v28 = objc_opt_class();
          v32 = objc_msgSend_objectForKey_(a4, v29, @"i", v30, v31);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v32)
          {
            v37 = objc_msgSend_registration(MEMORY[0x277D19298], v33, v34, v35, v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v95 = @"i";
              v96 = 2112;
              v97 = v28;
              _os_log_fault_impl(&dword_23BC9F000, v37, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v32 = 0;
          }

          objc_msgSend_objectForKey_(a4, v33, @"s", v35, v36);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = MEMORY[0x277CBEA90];
            v42 = objc_msgSend_objectForKey_(a4, v38, @"s", v39, v40);
            v46 = objc_msgSend__IDSDataFromBase64String_(v41, v43, v42, v44, v45);
            goto LABEL_31;
          }

          objc_msgSend_objectForKey_(a4, v38, @"s", v39, v40);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = objc_msgSend_objectForKey_(a4, v47, @"s", v48, v49);
LABEL_31:
            v50 = v46;
          }

          else
          {
            v50 = 0;
          }

          v51 = objc_opt_class();
          v55 = objc_msgSend_objectForKey_(a4, v52, @"x", v53, v54);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v55)
          {
            v60 = objc_msgSend_registration(MEMORY[0x277D19298], v56, v57, v58, v59);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v95 = @"x";
              v96 = 2112;
              v97 = v51;
              _os_log_fault_impl(&dword_23BC9F000, v60, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v55 = 0;
          }

          v61 = objc_opt_class();
          v65 = objc_msgSend_objectForKey_(a4, v62, @"I", v63, v64);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v65)
          {
            v70 = objc_msgSend_registration(MEMORY[0x277D19298], v66, v67, v68, v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v95 = @"I";
              v96 = 2112;
              v97 = v61;
              _os_log_fault_impl(&dword_23BC9F000, v70, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v65 = 0;
          }

          objc_msgSend_objectForKey_(a4, v66, @"P", v68, v69);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v74 = MEMORY[0x277CBEA90];
            v75 = objc_msgSend_objectForKey_(a4, v71, @"P", v72, v73);
            v79 = objc_msgSend__IDSDataFromBase64String_(v74, v76, v75, v77, v78);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v71, @"P", v72, v73);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v79 = objc_msgSend_objectForKey_(a4, v80, @"P", v81, v82);
            }

            else
            {
              v79 = 0;
            }
          }

          objc_msgSend_handler_peerDisplay_topic_myID_sessionInitated_clientInfo_peerID_peerPushToken_(v16, v80, a2, v22, a3, v32, v50, v55, v65, v79, v84);
        }

        ++v15;
      }

      while (v89 != v15);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v90, v98, 16);
    }

    while (v13);
  }

  v83 = *MEMORY[0x277D85DE8];
}

void sub_23BCB9FC4(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v268 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v264 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleAcceptPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v264 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v243 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v243 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v243);
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v259, v267, 16);
  if (v13)
  {
    v255 = *v260;
    obj = v11;
    do
    {
      v14 = 0;
      v256 = v13;
      do
      {
        if (*v260 != v255)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v259 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v16, @"s", v17, v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = MEMORY[0x277CBEA90];
            v23 = objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            v254 = objc_msgSend__IDSDataFromBase64String_(v22, v24, v23, v25, v26);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v254 = objc_msgSend_objectForKey_(a4, v27, @"s", v28, v29);
            }

            else
            {
              v254 = 0;
            }
          }

          v30 = objc_opt_class();
          v258 = objc_msgSend_objectForKey_(a4, v31, @"I", v32, v33);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v258)
            {
              v38 = objc_msgSend_registration(MEMORY[0x277D19298], v34, v35, v36, v37);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v264 = @"I";
                v265 = 2112;
                v266 = v30;
                _os_log_fault_impl(&dword_23BC9F000, v38, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v258 = 0;
          }

          v39 = objc_opt_class();
          v257 = objc_msgSend_objectForKey_(a4, v40, @"J", v41, v42);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v257)
            {
              v47 = objc_msgSend_registration(MEMORY[0x277D19298], v43, v44, v45, v46);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v264 = @"J";
                v265 = 2112;
                v266 = v39;
                _os_log_fault_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v257 = 0;
          }

          objc_msgSend_objectForKey_(a4, v43, @"P", v45, v46);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = MEMORY[0x277CBEA90];
            v52 = objc_msgSend_objectForKey_(a4, v48, @"P", v49, v50);
            v253 = objc_msgSend__IDSDataFromBase64String_(v51, v53, v52, v54, v55);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v48, @"P", v49, v50);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v253 = objc_msgSend_objectForKey_(a4, v56, @"P", v57, v58);
            }

            else
            {
              v253 = 0;
            }
          }

          v59 = MEMORY[0x277CCABB0];
          v60 = objc_opt_class();
          v64 = objc_msgSend_objectForKey_(a4, v61, @"N", v62, v63);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v64)
          {
            v69 = objc_msgSend_registration(MEMORY[0x277D19298], v65, v66, v67, v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v264 = @"N";
              v265 = 2112;
              v266 = v60;
              _os_log_fault_impl(&dword_23BC9F000, v69, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v64 = 0;
          }

          v70 = objc_msgSend_intValue(v64, v65, v66, v67, v68);
          v252 = objc_msgSend_numberWithInt_(v59, v71, v70, v72, v73);
          objc_msgSend_objectForKey_(a4, v74, @"B", v75, v76);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = MEMORY[0x277CBEA90];
            v81 = objc_msgSend_objectForKey_(a4, v77, @"B", v78, v79);
            v251 = objc_msgSend__IDSDataFromBase64String_(v80, v82, v81, v83, v84);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v77, @"B", v78, v79);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v251 = objc_msgSend_objectForKey_(a4, v85, @"B", v86, v87);
            }

            else
            {
              v251 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v85, @"A", v86, v87);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v91 = MEMORY[0x277CBEA90];
            v92 = objc_msgSend_objectForKey_(a4, v88, @"A", v89, v90);
            v250 = objc_msgSend__IDSDataFromBase64String_(v91, v93, v92, v94, v95);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v88, @"A", v89, v90);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v250 = objc_msgSend_objectForKey_(a4, v96, @"A", v97, v98);
            }

            else
            {
              v250 = 0;
            }
          }

          v99 = objc_opt_class();
          v103 = objc_msgSend_objectForKey_(a4, v100, @"t", v101, v102);
          if (objc_opt_isKindOfClass())
          {
            if (v103)
            {
              v108 = MEMORY[0x277CCABB0];
              v109 = objc_opt_class();
              v113 = objc_msgSend_objectForKey_(a4, v110, @"t", v111, v112);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v113)
              {
                v118 = objc_msgSend_registration(MEMORY[0x277D19298], v114, v115, v116, v117);
                if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v264 = @"t";
                  v265 = 2112;
                  v266 = v109;
                  _os_log_fault_impl(&dword_23BC9F000, v118, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v113 = 0;
              }

              v119 = objc_msgSend_intValue(v113, v114, v115, v116, v117);
              v249 = objc_msgSend_numberWithInt_(v108, v120, v119, v121, v122);
LABEL_64:
              objc_msgSend_objectForKey_(a4, v104, @"k", v106, v107);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v127 = MEMORY[0x277CBEA90];
                v128 = objc_msgSend_objectForKey_(a4, v124, @"k", v125, v126);
                v248 = objc_msgSend__IDSDataFromBase64String_(v127, v129, v128, v130, v131);
              }

              else
              {
                objc_msgSend_objectForKey_(a4, v124, @"k", v125, v126);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v248 = objc_msgSend_objectForKey_(a4, v132, @"k", v133, v134);
                }

                else
                {
                  v248 = 0;
                }
              }

              objc_msgSend_objectForKey_(a4, v132, @"q", v133, v134);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v138 = MEMORY[0x277CBEA90];
                v139 = objc_msgSend_objectForKey_(a4, v135, @"q", v136, v137);
                v247 = objc_msgSend__IDSDataFromBase64String_(v138, v140, v139, v141, v142);
              }

              else
              {
                objc_msgSend_objectForKey_(a4, v135, @"q", v136, v137);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v247 = objc_msgSend_objectForKey_(a4, v143, @"q", v144, v145);
                }

                else
                {
                  v247 = 0;
                }
              }

              objc_msgSend_objectForKey_(a4, v143, @"r", v144, v145);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v149 = MEMORY[0x277CBEA90];
                v150 = objc_msgSend_objectForKey_(a4, v146, @"r", v147, v148);
                v154 = objc_msgSend__IDSDataFromBase64String_(v149, v151, v150, v152, v153);
                goto LABEL_78;
              }

              objc_msgSend_objectForKey_(a4, v146, @"r", v147, v148);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v154 = objc_msgSend_objectForKey_(a4, v155, @"r", v156, v157);
LABEL_78:
                v158 = v154;
              }

              else
              {
                v158 = 0;
              }

              objc_msgSend_objectForKey_(a4, v155, @"h", v156, v157);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v162 = MEMORY[0x277CBEA90];
                v163 = objc_msgSend_objectForKey_(a4, v159, @"h", v160, v161);
                v167 = objc_msgSend__IDSDataFromBase64String_(v162, v164, v163, v165, v166);
                goto LABEL_84;
              }

              objc_msgSend_objectForKey_(a4, v159, @"h", v160, v161);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v167 = objc_msgSend_objectForKey_(a4, v168, @"h", v169, v170);
LABEL_84:
                v171 = v167;
              }

              else
              {
                v171 = 0;
              }

              v172 = MEMORY[0x277CCABB0];
              v173 = objc_opt_class();
              v177 = objc_msgSend_objectForKey_(a4, v174, @"o", v175, v176);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v177)
              {
                v182 = objc_msgSend_registration(MEMORY[0x277D19298], v178, v179, v180, v181);
                if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v264 = @"o";
                  v265 = 2112;
                  v266 = v173;
                  _os_log_fault_impl(&dword_23BC9F000, v182, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v177 = 0;
              }

              v183 = objc_msgSend_intValue(v177, v178, v179, v180, v181);
              v187 = objc_msgSend_numberWithInt_(v172, v184, v183, v185, v186);
              objc_msgSend_objectForKey_(a4, v188, @"H", v189, v190);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v194 = MEMORY[0x277CBEA90];
                v195 = objc_msgSend_objectForKey_(a4, v191, @"H", v192, v193);
                v199 = objc_msgSend__IDSDataFromBase64String_(v194, v196, v195, v197, v198);
                goto LABEL_95;
              }

              objc_msgSend_objectForKey_(a4, v191, @"H", v192, v193);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v199 = objc_msgSend_objectForKey_(a4, v200, @"H", v201, v202);
LABEL_95:
                v203 = v199;
              }

              else
              {
                v203 = 0;
              }

              v204 = MEMORY[0x277CCABB0];
              v205 = objc_opt_class();
              v209 = objc_msgSend_objectForKey_(a4, v206, @"O", v207, v208);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v209)
              {
                v214 = objc_msgSend_registration(MEMORY[0x277D19298], v210, v211, v212, v213);
                if (os_log_type_enabled(v214, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v264 = @"O";
                  v265 = 2112;
                  v266 = v205;
                  _os_log_fault_impl(&dword_23BC9F000, v214, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v209 = 0;
              }

              v215 = objc_msgSend_intValue(v209, v210, v211, v212, v213);
              v219 = objc_msgSend_numberWithInt_(v204, v216, v215, v217, v218);
              v220 = objc_opt_class();
              v224 = objc_msgSend_objectForKey_(a4, v221, @"x", v222, v223);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v224)
              {
                v229 = objc_msgSend_registration(MEMORY[0x277D19298], v225, v226, v227, v228);
                if (os_log_type_enabled(v229, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v264 = @"x";
                  v265 = 2112;
                  v266 = v220;
                  _os_log_fault_impl(&dword_23BC9F000, v229, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v224 = 0;
              }

              objc_msgSend_objectForKey_(a4, v225, @"d", v227, v228);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v233 = MEMORY[0x277CBEA90];
                v234 = objc_msgSend_objectForKey_(a4, v230, @"d", v231, v232);
                v238 = objc_msgSend__IDSDataFromBase64String_(v233, v235, v234, v236, v237);
              }

              else
              {
                objc_msgSend_objectForKey_(a4, v230, @"d", v231, v232);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v238 = objc_msgSend_objectForKey_(a4, v239, @"d", v240, v241);
                }

                else
                {
                  v238 = 0;
                }
              }

              objc_msgSend_handler_sessionAccepted_topic_peerID_peerCN_peerPushToken_peerNATType_peerBlob_peerNatIP_relayType_relayConnectionID_relayTransactionIDAlloc_relayTokenAllocReq_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_clientInfo_serviceData_(v15, v239, a2, v254, a3, v258, v257, v253, v252, v251, v250, v249, v248, v247, v158, v171, v187, v203, v219, v224, v238);
              goto LABEL_113;
            }
          }

          else if (v103)
          {
            v123 = objc_msgSend_registration(MEMORY[0x277D19298], v104, v105, v106, v107);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v264 = @"t";
              v265 = 2112;
              v266 = v99;
              _os_log_fault_impl(&dword_23BC9F000, v123, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }
          }

          v249 = 0;
          goto LABEL_64;
        }

LABEL_113:
        ++v14;
      }

      while (v256 != v14);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v259, v267, 16);
    }

    while (v13);
  }

  v242 = *MEMORY[0x277D85DE8];
}

void sub_23BCBB018(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v110 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v106 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRejectPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v95 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v95 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v95);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v101, v109, 16);
  if (v13)
  {
    v100 = *v102;
    *&v14 = 138412802;
    v96 = v14;
    obj = v11;
    do
    {
      v15 = 0;
      do
      {
        if (*v102 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v101 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = MEMORY[0x277CBEA90];
            v24 = objc_msgSend_objectForKey_(a4, v20, @"s", v21, v22);
            v28 = objc_msgSend__IDSDataFromBase64String_(v23, v25, v24, v26, v27);
            goto LABEL_21;
          }

          objc_msgSend_objectForKey_(a4, v20, @"s", v21, v22);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = objc_msgSend_objectForKey_(a4, v29, @"s", v30, v31);
LABEL_21:
            v32 = v28;
          }

          else
          {
            v32 = 0;
          }

          v33 = objc_opt_class();
          v37 = objc_msgSend_objectForKey_(a4, v34, @"I", v35, v36);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v37)
          {
            v42 = objc_msgSend_registration(MEMORY[0x277D19298], v38, v39, v40, v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v106 = @"I";
              v107 = 2112;
              v108 = v33;
              _os_log_fault_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v37 = 0;
          }

          objc_msgSend_objectForKey_(a4, v38, @"P", v40, v41);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = MEMORY[0x277CBEA90];
            v47 = objc_msgSend_objectForKey_(a4, v43, @"P", v44, v45);
            v51 = objc_msgSend__IDSDataFromBase64String_(v46, v48, v47, v49, v50);
            goto LABEL_32;
          }

          objc_msgSend_objectForKey_(a4, v43, @"P", v44, v45);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = objc_msgSend_objectForKey_(a4, v52, @"P", v53, v54);
LABEL_32:
            v55 = v51;
          }

          else
          {
            v55 = 0;
          }

          v56 = MEMORY[0x277CCABB0];
          v57 = objc_opt_class();
          v61 = objc_msgSend_objectForKey_(a4, v58, @"y", v59, v60);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v61)
          {
            v66 = objc_msgSend_registration(MEMORY[0x277D19298], v62, v63, v64, v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v106 = @"y";
              v107 = 2112;
              v108 = v57;
              _os_log_fault_impl(&dword_23BC9F000, v66, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v61 = 0;
          }

          v67 = objc_msgSend_intValue(v61, v62, v63, v64, v65);
          v71 = objc_msgSend_numberWithInt_(v56, v68, v67, v69, v70);
          v72 = objc_opt_class();
          v76 = objc_msgSend_objectForKey_(a4, v73, @"x", v74, v75);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v76)
          {
            v81 = objc_msgSend_registration(MEMORY[0x277D19298], v77, v78, v79, v80);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v106 = @"x";
              v107 = 2112;
              v108 = v72;
              _os_log_fault_impl(&dword_23BC9F000, v81, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v76 = 0;
          }

          objc_msgSend_objectForKey_(a4, v77, @"d", v79, v80);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = MEMORY[0x277CBEA90];
            v86 = objc_msgSend_objectForKey_(a4, v82, @"d", v83, v84);
            v90 = objc_msgSend__IDSDataFromBase64String_(v85, v87, v86, v88, v89);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v82, @"d", v83, v84);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = objc_msgSend_objectForKey_(a4, v91, @"d", v92, v93);
            }

            else
            {
              v90 = 0;
            }
          }

          objc_msgSend_handler_sessionRejected_topic_peerID_peerPushToken_reason_clientInfo_serviceData_(v16, v91, a2, v32, a3, v37, v55, v71, v76, v90, v96);
        }

        ++v15;
      }

      while (v13 != v15);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v101, v109, 16);
    }

    while (v13);
  }

  v94 = *MEMORY[0x277D85DE8];
}

void sub_23BCBB848(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v95 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v91 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleCancelPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v81 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v81 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v81);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v86, v94, 16);
  if (v13)
  {
    v85 = *v87;
    obj = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v87 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v86 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v16, @"s", v17, v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = MEMORY[0x277CBEA90];
            v23 = objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            v27 = objc_msgSend__IDSDataFromBase64String_(v22, v24, v23, v25, v26);
            goto LABEL_21;
          }

          objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = objc_msgSend_objectForKey_(a4, v28, @"s", v29, v30);
LABEL_21:
            v31 = v27;
          }

          else
          {
            v31 = 0;
          }

          v32 = objc_opt_class();
          v36 = objc_msgSend_objectForKey_(a4, v33, @"I", v34, v35);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v36)
          {
            v41 = objc_msgSend_registration(MEMORY[0x277D19298], v37, v38, v39, v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v91 = @"I";
              v92 = 2112;
              v93 = v32;
              _os_log_fault_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v36 = 0;
          }

          v42 = MEMORY[0x277CCABB0];
          v43 = objc_opt_class();
          v47 = objc_msgSend_objectForKey_(a4, v44, @"y", v45, v46);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v47)
          {
            v52 = objc_msgSend_registration(MEMORY[0x277D19298], v48, v49, v50, v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v91 = @"y";
              v92 = 2112;
              v93 = v43;
              _os_log_fault_impl(&dword_23BC9F000, v52, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v47 = 0;
          }

          v53 = objc_msgSend_intValue(v47, v48, v49, v50, v51);
          v57 = objc_msgSend_numberWithInt_(v42, v54, v53, v55, v56);
          v58 = objc_opt_class();
          v62 = objc_msgSend_objectForKey_(a4, v59, @"x", v60, v61);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v62)
          {
            v67 = objc_msgSend_registration(MEMORY[0x277D19298], v63, v64, v65, v66);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v91 = @"x";
              v92 = 2112;
              v93 = v58;
              _os_log_fault_impl(&dword_23BC9F000, v67, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v62 = 0;
          }

          objc_msgSend_objectForKey_(a4, v63, @"d", v65, v66);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = MEMORY[0x277CBEA90];
            v72 = objc_msgSend_objectForKey_(a4, v68, @"d", v69, v70);
            v76 = objc_msgSend__IDSDataFromBase64String_(v71, v73, v72, v74, v75);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v68, @"d", v69, v70);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = objc_msgSend_objectForKey_(a4, v77, @"d", v78, v79);
            }

            else
            {
              v76 = 0;
            }
          }

          objc_msgSend_handler_sessionCancelled_topic_peerID_reason_clientInfo_serviceData_(v15, v77, a2, v31, a3, v36, v57, v62, v76);
        }

        ++v14;
      }

      while (v13 != v14);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v86, v94, 16);
    }

    while (v13);
  }

  v80 = *MEMORY[0x277D85DE8];
}

void sub_23BCBBFD0(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v221 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v217 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRelayInitatePush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v217 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v198 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v198 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v198);
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v212, v220, 16);
  if (v13)
  {
    v210 = *v213;
    *&v14 = 138412802;
    v199 = v14;
    obj = v11;
    do
    {
      v15 = 0;
      v211 = v13;
      do
      {
        if (*v213 != v210)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v212 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = MEMORY[0x277CBEA90];
            v24 = objc_msgSend_objectForKey_(a4, v20, @"s", v21, v22);
            v209 = objc_msgSend__IDSDataFromBase64String_(v23, v25, v24, v26, v27);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v20, @"s", v21, v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v209 = objc_msgSend_objectForKey_(a4, v28, @"s", v29, v30);
            }

            else
            {
              v209 = 0;
            }
          }

          v31 = objc_opt_class();
          v35 = objc_msgSend_objectForKey_(a4, v32, @"I", v33, v34);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v35)
          {
            v40 = objc_msgSend_registration(MEMORY[0x277D19298], v36, v37, v38, v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v217 = @"I";
              v218 = 2112;
              v219 = v31;
              _os_log_fault_impl(&dword_23BC9F000, v40, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v35 = 0;
          }

          objc_msgSend_objectForKey_(a4, v36, @"P", v38, v39);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = MEMORY[0x277CBEA90];
            v45 = objc_msgSend_objectForKey_(a4, v41, @"P", v42, v43);
            v208 = objc_msgSend__IDSDataFromBase64String_(v44, v46, v45, v47, v48);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v41, @"P", v42, v43);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v208 = objc_msgSend_objectForKey_(a4, v49, @"P", v50, v51);
            }

            else
            {
              v208 = 0;
            }
          }

          v52 = MEMORY[0x277CCABB0];
          v53 = objc_opt_class();
          v57 = objc_msgSend_objectForKey_(a4, v54, @"t", v55, v56);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v57)
          {
            v62 = objc_msgSend_registration(MEMORY[0x277D19298], v58, v59, v60, v61);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v217 = @"t";
              v218 = 2112;
              v219 = v53;
              _os_log_fault_impl(&dword_23BC9F000, v62, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v57 = 0;
          }

          v63 = objc_msgSend_intValue(v57, v58, v59, v60, v61);
          v207 = objc_msgSend_numberWithInt_(v52, v64, v63, v65, v66);
          objc_msgSend_objectForKey_(a4, v67, @"k", v68, v69);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v73 = MEMORY[0x277CBEA90];
            v74 = objc_msgSend_objectForKey_(a4, v70, @"k", v71, v72);
            v206 = objc_msgSend__IDSDataFromBase64String_(v73, v75, v74, v76, v77);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v70, @"k", v71, v72);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v206 = objc_msgSend_objectForKey_(a4, v78, @"k", v79, v80);
            }

            else
            {
              v206 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v78, @"q", v79, v80);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = MEMORY[0x277CBEA90];
            v85 = objc_msgSend_objectForKey_(a4, v81, @"q", v82, v83);
            v205 = objc_msgSend__IDSDataFromBase64String_(v84, v86, v85, v87, v88);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v81, @"q", v82, v83);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v205 = objc_msgSend_objectForKey_(a4, v89, @"q", v90, v91);
            }

            else
            {
              v205 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v89, @"r", v90, v91);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v95 = MEMORY[0x277CBEA90];
            v96 = objc_msgSend_objectForKey_(a4, v92, @"r", v93, v94);
            v204 = objc_msgSend__IDSDataFromBase64String_(v95, v97, v96, v98, v99);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v92, @"r", v93, v94);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v204 = objc_msgSend_objectForKey_(a4, v100, @"r", v101, v102);
            }

            else
            {
              v204 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v100, @"K", v101, v102);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v106 = MEMORY[0x277CBEA90];
            v107 = objc_msgSend_objectForKey_(a4, v103, @"K", v104, v105);
            v203 = objc_msgSend__IDSDataFromBase64String_(v106, v108, v107, v109, v110);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v103, @"K", v104, v105);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v203 = objc_msgSend_objectForKey_(a4, v111, @"K", v112, v113);
            }

            else
            {
              v203 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v111, @"h", v112, v113);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v117 = MEMORY[0x277CBEA90];
            v118 = objc_msgSend_objectForKey_(a4, v114, @"h", v115, v116);
            v122 = objc_msgSend__IDSDataFromBase64String_(v117, v119, v118, v120, v121);
            goto LABEL_61;
          }

          objc_msgSend_objectForKey_(a4, v114, @"h", v115, v116);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v122 = objc_msgSend_objectForKey_(a4, v123, @"h", v124, v125);
LABEL_61:
            v126 = v122;
          }

          else
          {
            v126 = 0;
          }

          v127 = MEMORY[0x277CCABB0];
          v128 = objc_opt_class();
          v132 = objc_msgSend_objectForKey_(a4, v129, @"o", v130, v131);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v132)
          {
            v137 = objc_msgSend_registration(MEMORY[0x277D19298], v133, v134, v135, v136);
            if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v217 = @"o";
              v218 = 2112;
              v219 = v128;
              _os_log_fault_impl(&dword_23BC9F000, v137, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v132 = 0;
          }

          v138 = objc_msgSend_intValue(v132, v133, v134, v135, v136);
          v142 = objc_msgSend_numberWithInt_(v127, v139, v138, v140, v141);
          objc_msgSend_objectForKey_(a4, v143, @"H", v144, v145);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v149 = MEMORY[0x277CBEA90];
            v150 = objc_msgSend_objectForKey_(a4, v146, @"H", v147, v148);
            v154 = objc_msgSend__IDSDataFromBase64String_(v149, v151, v150, v152, v153);
            goto LABEL_72;
          }

          objc_msgSend_objectForKey_(a4, v146, @"H", v147, v148);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = objc_msgSend_objectForKey_(a4, v155, @"H", v156, v157);
LABEL_72:
            v158 = v154;
          }

          else
          {
            v158 = 0;
          }

          v159 = MEMORY[0x277CCABB0];
          v160 = objc_opt_class();
          v164 = objc_msgSend_objectForKey_(a4, v161, @"O", v162, v163);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v164)
          {
            v169 = objc_msgSend_registration(MEMORY[0x277D19298], v165, v166, v167, v168);
            if (os_log_type_enabled(v169, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v217 = @"O";
              v218 = 2112;
              v219 = v160;
              _os_log_fault_impl(&dword_23BC9F000, v169, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v164 = 0;
          }

          v170 = objc_msgSend_intValue(v164, v165, v166, v167, v168);
          v174 = objc_msgSend_numberWithInt_(v159, v171, v170, v172, v173);
          v175 = objc_opt_class();
          v179 = objc_msgSend_objectForKey_(a4, v176, @"x", v177, v178);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v179)
          {
            v184 = objc_msgSend_registration(MEMORY[0x277D19298], v180, v181, v182, v183);
            if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v217 = @"x";
              v218 = 2112;
              v219 = v175;
              _os_log_fault_impl(&dword_23BC9F000, v184, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v179 = 0;
          }

          objc_msgSend_objectForKey_(a4, v180, @"d", v182, v183);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v188 = MEMORY[0x277CBEA90];
            v189 = objc_msgSend_objectForKey_(a4, v185, @"d", v186, v187);
            v193 = objc_msgSend__IDSDataFromBase64String_(v188, v190, v189, v191, v192);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v185, @"d", v186, v187);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v193 = objc_msgSend_objectForKey_(a4, v194, @"d", v195, v196);
            }

            else
            {
              v193 = 0;
            }
          }

          objc_msgSend_handler_relayInitiated_topic_peerID_peerPushToken_relayType_relayConnectionID_relayTransactionIDAlloc_relayTokenAllocReq_relayCandidateID_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_clientInfo_serviceData_(v16, v194, a2, v209, a3, v35, v208, v207, v206, v205, v204, v203, v126, v142, v158, v174, v179, v193, v199);
        }

        ++v15;
      }

      while (v211 != v15);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v212, v220, 16);
    }

    while (v13);
  }

  v197 = *MEMORY[0x277D85DE8];
}

void sub_23BCBCD70(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v201 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v197 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRelayUpdatePush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v197 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v180 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v180 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v180);
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v192, v200, 16);
  if (v13)
  {
    v190 = *v193;
    obj = v11;
    do
    {
      v14 = 0;
      v191 = v13;
      do
      {
        if (*v193 != v190)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v192 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v16, @"s", v17, v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = MEMORY[0x277CBEA90];
            v23 = objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            v189 = objc_msgSend__IDSDataFromBase64String_(v22, v24, v23, v25, v26);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v189 = objc_msgSend_objectForKey_(a4, v27, @"s", v28, v29);
            }

            else
            {
              v189 = 0;
            }
          }

          v30 = objc_opt_class();
          v34 = objc_msgSend_objectForKey_(a4, v31, @"I", v32, v33);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v34)
          {
            v39 = objc_msgSend_registration(MEMORY[0x277D19298], v35, v36, v37, v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v197 = @"I";
              v198 = 2112;
              v199 = v30;
              _os_log_fault_impl(&dword_23BC9F000, v39, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v34 = 0;
          }

          objc_msgSend_objectForKey_(a4, v35, @"P", v37, v38);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = MEMORY[0x277CBEA90];
            v44 = objc_msgSend_objectForKey_(a4, v40, @"P", v41, v42);
            v188 = objc_msgSend__IDSDataFromBase64String_(v43, v45, v44, v46, v47);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v40, @"P", v41, v42);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v188 = objc_msgSend_objectForKey_(a4, v48, @"P", v49, v50);
            }

            else
            {
              v188 = 0;
            }
          }

          v51 = MEMORY[0x277CCABB0];
          v52 = objc_opt_class();
          v56 = objc_msgSend_objectForKey_(a4, v53, @"t", v54, v55);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v56)
          {
            v61 = objc_msgSend_registration(MEMORY[0x277D19298], v57, v58, v59, v60);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v197 = @"t";
              v198 = 2112;
              v199 = v52;
              _os_log_fault_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v56 = 0;
          }

          v62 = objc_msgSend_intValue(v56, v57, v58, v59, v60);
          v187 = objc_msgSend_numberWithInt_(v51, v63, v62, v64, v65);
          objc_msgSend_objectForKey_(a4, v66, @"k", v67, v68);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = MEMORY[0x277CBEA90];
            v73 = objc_msgSend_objectForKey_(a4, v69, @"k", v70, v71);
            v186 = objc_msgSend__IDSDataFromBase64String_(v72, v74, v73, v75, v76);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v69, @"k", v70, v71);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v186 = objc_msgSend_objectForKey_(a4, v77, @"k", v78, v79);
            }

            else
            {
              v186 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v77, @"q", v78, v79);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v83 = MEMORY[0x277CBEA90];
            v84 = objc_msgSend_objectForKey_(a4, v80, @"q", v81, v82);
            v185 = objc_msgSend__IDSDataFromBase64String_(v83, v85, v84, v86, v87);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v80, @"q", v81, v82);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v185 = objc_msgSend_objectForKey_(a4, v88, @"q", v89, v90);
            }

            else
            {
              v185 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v88, @"r", v89, v90);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v94 = MEMORY[0x277CBEA90];
            v95 = objc_msgSend_objectForKey_(a4, v91, @"r", v92, v93);
            v184 = objc_msgSend__IDSDataFromBase64String_(v94, v96, v95, v97, v98);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v91, @"r", v92, v93);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v184 = objc_msgSend_objectForKey_(a4, v99, @"r", v100, v101);
            }

            else
            {
              v184 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v99, @"K", v100, v101);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v105 = MEMORY[0x277CBEA90];
            v106 = objc_msgSend_objectForKey_(a4, v102, @"K", v103, v104);
            v110 = objc_msgSend__IDSDataFromBase64String_(v105, v107, v106, v108, v109);
            goto LABEL_56;
          }

          objc_msgSend_objectForKey_(a4, v102, @"K", v103, v104);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v110 = objc_msgSend_objectForKey_(a4, v111, @"K", v112, v113);
LABEL_56:
            v114 = v110;
          }

          else
          {
            v114 = 0;
          }

          objc_msgSend_objectForKey_(a4, v111, @"L", v112, v113);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v118 = MEMORY[0x277CBEA90];
            v119 = objc_msgSend_objectForKey_(a4, v115, @"L", v116, v117);
            v123 = objc_msgSend__IDSDataFromBase64String_(v118, v120, v119, v121, v122);
            goto LABEL_62;
          }

          objc_msgSend_objectForKey_(a4, v115, @"L", v116, v117);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v123 = objc_msgSend_objectForKey_(a4, v124, @"L", v125, v126);
LABEL_62:
            v127 = v123;
          }

          else
          {
            v127 = 0;
          }

          objc_msgSend_objectForKey_(a4, v124, @"U", v125, v126);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v131 = MEMORY[0x277CBEA90];
            v132 = objc_msgSend_objectForKey_(a4, v128, @"U", v129, v130);
            v136 = objc_msgSend__IDSDataFromBase64String_(v131, v133, v132, v134, v135);
            goto LABEL_68;
          }

          objc_msgSend_objectForKey_(a4, v128, @"U", v129, v130);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v136 = objc_msgSend_objectForKey_(a4, v137, @"U", v138, v139);
LABEL_68:
            v140 = v136;
          }

          else
          {
            v140 = 0;
          }

          v141 = MEMORY[0x277CCABB0];
          v142 = objc_opt_class();
          v146 = objc_msgSend_objectForKey_(a4, v143, @"V", v144, v145);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v146)
          {
            v151 = objc_msgSend_registration(MEMORY[0x277D19298], v147, v148, v149, v150);
            if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v197 = @"V";
              v198 = 2112;
              v199 = v142;
              _os_log_fault_impl(&dword_23BC9F000, v151, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v146 = 0;
          }

          v152 = objc_msgSend_intValue(v146, v147, v148, v149, v150);
          v156 = objc_msgSend_numberWithInt_(v141, v153, v152, v154, v155);
          v157 = objc_opt_class();
          v161 = objc_msgSend_objectForKey_(a4, v158, @"x", v159, v160);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v161)
          {
            v166 = objc_msgSend_registration(MEMORY[0x277D19298], v162, v163, v164, v165);
            if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v197 = @"x";
              v198 = 2112;
              v199 = v157;
              _os_log_fault_impl(&dword_23BC9F000, v166, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v161 = 0;
          }

          objc_msgSend_objectForKey_(a4, v162, @"d", v164, v165);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v170 = MEMORY[0x277CBEA90];
            v171 = objc_msgSend_objectForKey_(a4, v167, @"d", v168, v169);
            v175 = objc_msgSend__IDSDataFromBase64String_(v170, v172, v171, v173, v174);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v167, @"d", v168, v169);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v175 = objc_msgSend_objectForKey_(a4, v176, @"d", v177, v178);
            }

            else
            {
              v175 = 0;
            }
          }

          objc_msgSend_handler_relayUpdated_topic_peerID_peerPushToken_relayType_relayConnectionID_relayTransactionIDChannelBind_relayTokenChannelBind_relayCandidateID_relayBlob_peerRelayNATIP_peerRelayNATPort_clientInfo_serviceData_(v15, v176, a2, v189, a3, v34, v188, v187, v186, v185, v184, v114, v127, v140, v156, v161, v175);
        }

        ++v14;
      }

      while (v191 != v14);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v192, v200, 16);
    }

    while (v13);
  }

  v179 = *MEMORY[0x277D85DE8];
}

void sub_23BCBDA50(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v219 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v215 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRelayCancelPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v215 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v196 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v196 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v196);
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v210, v218, 16);
  if (v13)
  {
    v207 = *v211;
    *&v14 = 138412802;
    v197 = v14;
    obj = v11;
    do
    {
      v15 = 0;
      v208 = v13;
      do
      {
        if (*v211 != v207)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v210 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = MEMORY[0x277CBEA90];
            v24 = objc_msgSend_objectForKey_(a4, v20, @"s", v21, v22);
            v206 = objc_msgSend__IDSDataFromBase64String_(v23, v25, v24, v26, v27);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v20, @"s", v21, v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v206 = objc_msgSend_objectForKey_(a4, v28, @"s", v29, v30);
            }

            else
            {
              v206 = 0;
            }
          }

          v31 = objc_opt_class();
          v209 = objc_msgSend_objectForKey_(a4, v32, @"I", v33, v34);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v209)
            {
              v39 = objc_msgSend_registration(MEMORY[0x277D19298], v35, v36, v37, v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v215 = @"I";
                v216 = 2112;
                v217 = v31;
                _os_log_fault_impl(&dword_23BC9F000, v39, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v209 = 0;
          }

          v40 = MEMORY[0x277CCABB0];
          v41 = objc_opt_class();
          v45 = objc_msgSend_objectForKey_(a4, v42, @"t", v43, v44);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v45)
          {
            v50 = objc_msgSend_registration(MEMORY[0x277D19298], v46, v47, v48, v49);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v215 = @"t";
              v216 = 2112;
              v217 = v41;
              _os_log_fault_impl(&dword_23BC9F000, v50, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v45 = 0;
          }

          v51 = objc_msgSend_intValue(v45, v46, v47, v48, v49);
          v205 = objc_msgSend_numberWithInt_(v40, v52, v51, v53, v54);
          objc_msgSend_objectForKey_(a4, v55, @"r", v56, v57);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v61 = MEMORY[0x277CBEA90];
            v62 = objc_msgSend_objectForKey_(a4, v58, @"r", v59, v60);
            v204 = objc_msgSend__IDSDataFromBase64String_(v61, v63, v62, v64, v65);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v58, @"r", v59, v60);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v204 = objc_msgSend_objectForKey_(a4, v66, @"r", v67, v68);
            }

            else
            {
              v204 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v66, @"k", v67, v68);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = MEMORY[0x277CBEA90];
            v73 = objc_msgSend_objectForKey_(a4, v69, @"k", v70, v71);
            v203 = objc_msgSend__IDSDataFromBase64String_(v72, v74, v73, v75, v76);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v69, @"k", v70, v71);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v203 = objc_msgSend_objectForKey_(a4, v77, @"k", v78, v79);
            }

            else
            {
              v203 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v77, @"q", v78, v79);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v83 = MEMORY[0x277CBEA90];
            v84 = objc_msgSend_objectForKey_(a4, v80, @"q", v81, v82);
            v202 = objc_msgSend__IDSDataFromBase64String_(v83, v85, v84, v86, v87);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v80, @"q", v81, v82);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v202 = objc_msgSend_objectForKey_(a4, v88, @"q", v89, v90);
            }

            else
            {
              v202 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v88, @"K", v89, v90);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v94 = MEMORY[0x277CBEA90];
            v95 = objc_msgSend_objectForKey_(a4, v91, @"K", v92, v93);
            v201 = objc_msgSend__IDSDataFromBase64String_(v94, v96, v95, v97, v98);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v91, @"K", v92, v93);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v201 = objc_msgSend_objectForKey_(a4, v99, @"K", v100, v101);
            }

            else
            {
              v201 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v99, @"h", v100, v101);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v105 = MEMORY[0x277CBEA90];
            v106 = objc_msgSend_objectForKey_(a4, v102, @"h", v103, v104);
            v110 = objc_msgSend__IDSDataFromBase64String_(v105, v107, v106, v108, v109);
            goto LABEL_56;
          }

          objc_msgSend_objectForKey_(a4, v102, @"h", v103, v104);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v110 = objc_msgSend_objectForKey_(a4, v111, @"h", v112, v113);
LABEL_56:
            v114 = v110;
          }

          else
          {
            v114 = 0;
          }

          v115 = MEMORY[0x277CCABB0];
          v116 = objc_opt_class();
          v120 = objc_msgSend_objectForKey_(a4, v117, @"o", v118, v119);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v120)
          {
            v125 = objc_msgSend_registration(MEMORY[0x277D19298], v121, v122, v123, v124);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v215 = @"o";
              v216 = 2112;
              v217 = v116;
              _os_log_fault_impl(&dword_23BC9F000, v125, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v120 = 0;
          }

          v126 = objc_msgSend_intValue(v120, v121, v122, v123, v124);
          v130 = objc_msgSend_numberWithInt_(v115, v127, v126, v128, v129);
          objc_msgSend_objectForKey_(a4, v131, @"H", v132, v133);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v137 = MEMORY[0x277CBEA90];
            v138 = objc_msgSend_objectForKey_(a4, v134, @"H", v135, v136);
            v142 = objc_msgSend__IDSDataFromBase64String_(v137, v139, v138, v140, v141);
            goto LABEL_67;
          }

          objc_msgSend_objectForKey_(a4, v134, @"H", v135, v136);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v142 = objc_msgSend_objectForKey_(a4, v143, @"H", v144, v145);
LABEL_67:
            v146 = v142;
          }

          else
          {
            v146 = 0;
          }

          v147 = MEMORY[0x277CCABB0];
          v148 = objc_opt_class();
          v152 = objc_msgSend_objectForKey_(a4, v149, @"O", v150, v151);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v152)
          {
            v157 = objc_msgSend_registration(MEMORY[0x277D19298], v153, v154, v155, v156);
            if (os_log_type_enabled(v157, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v215 = @"O";
              v216 = 2112;
              v217 = v148;
              _os_log_fault_impl(&dword_23BC9F000, v157, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v152 = 0;
          }

          v158 = objc_msgSend_intValue(v152, v153, v154, v155, v156);
          v162 = objc_msgSend_numberWithInt_(v147, v159, v158, v160, v161);
          v163 = objc_opt_class();
          v167 = objc_msgSend_objectForKey_(a4, v164, @"y", v165, v166);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v167)
          {
            v172 = objc_msgSend_registration(MEMORY[0x277D19298], v168, v169, v170, v171);
            if (os_log_type_enabled(v172, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v215 = @"y";
              v216 = 2112;
              v217 = v163;
              _os_log_fault_impl(&dword_23BC9F000, v172, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v167 = 0;
          }

          v173 = objc_opt_class();
          v177 = objc_msgSend_objectForKey_(a4, v174, @"x", v175, v176);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v177)
          {
            v182 = objc_msgSend_registration(MEMORY[0x277D19298], v178, v179, v180, v181);
            if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v215 = @"x";
              v216 = 2112;
              v217 = v173;
              _os_log_fault_impl(&dword_23BC9F000, v182, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v177 = 0;
          }

          objc_msgSend_objectForKey_(a4, v178, @"d", v180, v181);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v186 = MEMORY[0x277CBEA90];
            v187 = objc_msgSend_objectForKey_(a4, v183, @"d", v184, v185);
            v191 = objc_msgSend__IDSDataFromBase64String_(v186, v188, v187, v189, v190);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v183, @"d", v184, v185);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v191 = objc_msgSend_objectForKey_(a4, v192, @"d", v193, v194);
            }

            else
            {
              v191 = 0;
            }
          }

          objc_msgSend_handler_relayCancelled_topic_peerID_relayType_relayTokenAllocReq_relayConnectionID_relayTransactionIDAlloc_relayCandidateID_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_reason_clientInfo_serviceData_(v16, v192, a2, v206, a3, v209, v205, v204, v203, v202, v201, v114, v130, v146, v162, v167, v177, v191, v197);
        }

        ++v15;
      }

      while (v208 != v15);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v210, v218, 16);
    }

    while (v13);
  }

  v195 = *MEMORY[0x277D85DE8];
}

void sub_23BCBE7E8(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v95 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v91 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleSendPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v81 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v81 = a4;
      IMLogString();
    }
  }

  v11 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v10, v81);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v86, v94, 16);
  if (v13)
  {
    v85 = *v87;
    obj = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v87 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v86 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v16, @"s", v17, v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = MEMORY[0x277CBEA90];
            v23 = objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
            v27 = objc_msgSend__IDSDataFromBase64String_(v22, v24, v23, v25, v26);
            goto LABEL_21;
          }

          objc_msgSend_objectForKey_(a4, v19, @"s", v20, v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = objc_msgSend_objectForKey_(a4, v28, @"s", v29, v30);
LABEL_21:
            v31 = v27;
          }

          else
          {
            v31 = 0;
          }

          v32 = objc_opt_class();
          v36 = objc_msgSend_objectForKey_(a4, v33, @"I", v34, v35);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v36)
          {
            v41 = objc_msgSend_registration(MEMORY[0x277D19298], v37, v38, v39, v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v91 = @"I";
              v92 = 2112;
              v93 = v32;
              _os_log_fault_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v36 = 0;
          }

          v42 = MEMORY[0x277CCABB0];
          v43 = objc_opt_class();
          v47 = objc_msgSend_objectForKey_(a4, v44, @"y", v45, v46);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v47)
          {
            v52 = objc_msgSend_registration(MEMORY[0x277D19298], v48, v49, v50, v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v91 = @"y";
              v92 = 2112;
              v93 = v43;
              _os_log_fault_impl(&dword_23BC9F000, v52, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v47 = 0;
          }

          v53 = objc_msgSend_intValue(v47, v48, v49, v50, v51);
          v57 = objc_msgSend_numberWithInt_(v42, v54, v53, v55, v56);
          v58 = objc_opt_class();
          v62 = objc_msgSend_objectForKey_(a4, v59, @"x", v60, v61);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v62)
          {
            v67 = objc_msgSend_registration(MEMORY[0x277D19298], v63, v64, v65, v66);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v91 = @"x";
              v92 = 2112;
              v93 = v58;
              _os_log_fault_impl(&dword_23BC9F000, v67, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v62 = 0;
          }

          objc_msgSend_objectForKey_(a4, v63, @"d", v65, v66);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v71 = MEMORY[0x277CBEA90];
            v72 = objc_msgSend_objectForKey_(a4, v68, @"d", v69, v70);
            v76 = objc_msgSend__IDSDataFromBase64String_(v71, v73, v72, v74, v75);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v68, @"d", v69, v70);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = objc_msgSend_objectForKey_(a4, v77, @"d", v78, v79);
            }

            else
            {
              v76 = 0;
            }
          }

          objc_msgSend_handler_incomingMessage_topic_peerID_reason_clientInfo_serviceData_(v15, v77, a2, v31, a3, v36, v57, v62, v76);
        }

        ++v14;
      }

      while (v13 != v14);
      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v86, v94, 16);
    }

    while (v13);
  }

  v80 = *MEMORY[0x277D85DE8];
}

void sub_23BCBF7DC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_23BC9F000, a2, OS_LOG_TYPE_ERROR, "IMAVInterfaceNetworkCheckResult unknown/unhandled result: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_23BCBF898()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"session-token";
  v3 = 2080;
  v4 = "dictionary";
  _os_log_error_impl(&dword_23BC9F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_23BCBF934()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBF9BC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFA44()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFACC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFB54()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFBDC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFC64()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFCEC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFD74()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFDFC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"reason";
  v3 = 2080;
  v4 = "dictionary";
  _os_log_error_impl(&dword_23BC9F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFE98()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"peers";
  v3 = 2080;
  v4 = "dictionary";
  _os_log_error_impl(&dword_23BC9F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFF34()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCBFFBC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC0044()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC00CC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC0154()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC01DC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC0264()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC02EC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC0374()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC03FC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC0484()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC050C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23BCC05A8(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"W";
  v5 = 2112;
  v6 = a1;
  _os_log_fault_impl(&dword_23BC9F000, a2, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}