@interface CalAssistantEventCommit
- (id)_commitEvent:(id)a3 serviceHelper:(id)a4;
- (id)_validateEvent:(id)a3;
- (id)eventStore;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
- (void)setEventStore:(id)a3;
@end

@implementation CalAssistantEventCommit

- (id)eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v5 = objc_msgSend__ca_eventStoreWithError_(MEMORY[0x277CC5A40], a2, 0, v2);
    v6 = self->_eventStore;
    self->_eventStore = v5;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

- (void)setEventStore:(id)a3
{
  v5 = a3;
  if (self->_eventStore != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_eventStore, a3);
    v5 = v6;
  }
}

- (id)_validateEvent:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_title(v3, v4, v5, v6);

  if (!v7)
  {
    v20 = objc_alloc(MEMORY[0x277D47208]);
    v23 = objc_msgSend_initWithReason_(v20, v21, @"No title specified", v22);
    goto LABEL_11;
  }

  v11 = objc_msgSend_startDate(v3, v8, v9, v10);
  v15 = objc_msgSend_endDate(v3, v12, v13, v14);
  v18 = v15;
  if (v11)
  {
    if (v15)
    {
      if (objc_msgSend_compare_(v11, v16, v15, v17) != 1)
      {
        v23 = 0;
        goto LABEL_10;
      }

      v19 = @"End date cannot be earlier than start date";
    }

    else
    {
      v19 = @"No end date specified";
    }
  }

  else
  {
    v19 = @"No start date specified";
  }

  v24 = objc_alloc(MEMORY[0x277D47208]);
  v23 = objc_msgSend_initWithReason_(v24, v25, v19, v26);
LABEL_10:

LABEL_11:

  return v23;
}

- (id)_commitEvent:(id)a3 serviceHelper:(id)a4
{
  v419 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  sub_2334B11EC();
  v7 = qword_27DE0DD38;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5598();
  }

  v8 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5628();
  }

  v12 = objc_msgSend_timeZoneId(v5, v9, v10, v11);
  if (v12)
  {
    v13 = CFTimeZoneCreateWithName(0, v12, 1u);
  }

  else
  {
    v13 = CalCopyTimeZone();
  }

  v17 = v13;
  if (!v13)
  {
    v70 = objc_alloc(MEMORY[0x277D47208]);
    v73 = objc_msgSend_initWithReason_(v70, v71, @"Invalid timezone", v72);
    goto LABEL_168;
  }

  v18 = objc_msgSend_eventStore(self, v14, v15, v16);
  cf = v17;
  objc_msgSend_setTimeZone_(v18, v19, v17, v20);

  v24 = objc_msgSend_startDate(v5, v21, v22, v23);
  v392 = objc_msgSend_endDate(v5, v25, v26, v27);
  sub_2334B11EC();
  v28 = qword_27DE0DD38;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v379 = objc_opt_class();
    units.years = 138412802;
    *&units.months = v379;
    LOWORD(units.hours) = 2112;
    *(&units.hours + 2) = v24;
    *(&units.minutes + 3) = 2112;
    *&units.seconds = v392;
    _os_log_debug_impl(&dword_2334AF000, v28, OS_LOG_TYPE_DEBUG, "[%@] - Giving event start date %@ and end date %@", &units, 0x20u);
  }

  v29 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v380 = objc_opt_class();
    units.years = 136315906;
    *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
    LOWORD(units.hours) = 2112;
    *(&units.hours + 2) = v380;
    *(&units.minutes + 3) = 2112;
    *&units.seconds = v24;
    v417 = 2112;
    v418 = v392;
    _os_log_debug_impl(&dword_2334AF000, v29, OS_LOG_TYPE_DEBUG, "%s [%@] - Giving event start date %@ and end date %@", &units, 0x2Au);
  }

  v33 = objc_msgSend_identifier(v5, v30, v31, v32);
  v37 = objc_msgSend_scheme(v33, v34, v35, v36);
  if (!v37)
  {

LABEL_28:
    v74 = MEMORY[0x277CC5A28];
    v75 = objc_msgSend_eventStore(self, v49, v50, v51);
    v63 = objc_msgSend_eventWithEventStore_(v74, v76, v75, v77);

    v81 = objc_msgSend_eventStore(self, v78, v79, v80);
    v85 = objc_msgSend_acquireDefaultCalendarForNewEvents(v81, v82, v83, v84);
    objc_msgSend_setCalendar_(v63, v86, v85, v87);

    sub_2334B11EC();
    v88 = qword_27DE0DD38;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5AF4();
    }

    v89 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5BAC();
    }

    v69 = 0;
    goto LABEL_33;
  }

  v41 = v37;
  v42 = objc_msgSend_identifier(v5, v38, v39, v40);
  v46 = objc_msgSend_scheme(v42, v43, v44, v45);
  v48 = objc_msgSend_compare_options_(v46, v47, *MEMORY[0x277CC5B20], 1);

  if (v48)
  {
    goto LABEL_28;
  }

  sub_2334B11EC();
  v52 = qword_27DE0DD38;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B56C8();
  }

  v53 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5770();
  }

  v57 = objc_msgSend_eventStore(self, v54, v55, v56);
  v61 = objc_msgSend_identifier(v5, v58, v59, v60);
  v63 = objc_msgSend__eventWithURI_checkValid_(v57, v62, v61, 1);

  sub_2334B11EC();
  v64 = qword_27DE0DD38;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B5824();
  }

  v65 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B58E0();
  }

  if (!v63)
  {
    goto LABEL_28;
  }

  if ((objc_msgSend_isEditable(v63, v49, v50, v51) & 1) == 0)
  {
    sub_2334B11EC();
    v374 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR))
    {
      sub_2334B59A4(v374);
    }

    v375 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_ERROR))
    {
      sub_2334B5A44(v375);
    }

    CFRelease(cf);
    v376 = objc_alloc(MEMORY[0x277D47208]);
    v73 = objc_msgSend_initWithReason_(v376, v377, @"Can't modify a read-only event.", v378);
    goto LABEL_167;
  }

  v69 = 1;
LABEL_33:
  v90 = objc_msgSend_title(v5, v66, v67, v68);

  if (v90)
  {
    v94 = objc_msgSend_title(v5, v91, v92, v93);
    objc_msgSend_setTitle_(v63, v95, v94, v96);

    sub_2334B11EC();
    v97 = qword_27DE0DD38;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5C70();
    }

    v98 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5D18();
    }
  }

  v99 = objc_msgSend_location(v5, v91, v92, v93);

  if (v99)
  {
    v103 = objc_msgSend_location(v5, v100, v101, v102);
    objc_msgSend_setLocation_(v63, v104, v103, v105);

    sub_2334B11EC();
    v106 = qword_27DE0DD38;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5DCC();
    }

    v107 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5E74();
    }
  }

  v108 = objc_msgSend_notes(v5, v100, v101, v102);

  if (v108)
  {
    v112 = objc_msgSend_notes(v5, v109, v110, v111);
    objc_msgSend_setNotes_(v63, v113, v112, v114);

    sub_2334B11EC();
    v115 = qword_27DE0DD38;
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5F28();
    }

    v116 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5FD0();
    }
  }

  objc_msgSend_setStartDate_(v63, v109, v24, v111);
  v120 = v392;
  if (!v392)
  {
    v121 = objc_msgSend_endDate(v63, v117, v118, v119);

    if (v121)
    {
      v120 = 0;
    }

    else
    {
      objc_msgSend_timeIntervalSinceReferenceDate(v24, v117, v122, v119);
      *&units.years = 0;
      *&units.days = 0x100000000;
      *&units.minutes = 0;
      units.seconds = 0.0;
      v124 = CFAbsoluteTimeAddGregorianUnits(v123, cf, &units);
      v120 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v125, v126, v127, v124);
    }
  }

  v392 = v120;
  objc_msgSend_setEndDate_(v63, v117, v120, v119);
  objc_msgSend_setTimeZone_(v63, v128, cf, v129);
  v133 = objc_msgSend_allDay(v5, v130, v131, v132);
  objc_msgSend_setAllDay_(v63, v134, v133, v135);
  sub_2334B11EC();
  v136 = qword_27DE0DD38;
  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B6084(self, v63);
  }

  v137 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B617C(self, v63);
  }

  v390 = objc_msgSend_attendees(v5, v138, v139, v140);
  v387 = v12;
  v388 = v6;
  v386 = v24;
  v389 = v5;
  if (objc_msgSend_count(v390, v141, v142, v143))
  {
    sub_2334B11EC();
    v147 = qword_27DE0DD38;
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B6280();
    }

    v148 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B632C();
    }

    v395 = objc_msgSend_array(MEMORY[0x277CBEB18], v149, v150, v151);
    v155 = objc_msgSend_calendar(v63, v152, v153, v154);
    v159 = objc_msgSend_source(v155, v156, v157, v158);
    v163 = objc_msgSend_constraints(v159, v160, v161, v162);
    v167 = objc_msgSend_supportsOutgoingInvitations(v163, v164, v165, v166);

    if (v167)
    {
      v171 = objc_msgSend_constraints(v159, v168, v169, v170);
      v175 = objc_msgSend_requiresOutgoingInvitationsInDefaultCalendar(v171, v172, v173, v174);

      if (v175)
      {
        isDefaultSchedulingCalendar = objc_msgSend_isDefaultSchedulingCalendar(v155, v176, v177, v178);
      }

      else
      {
        isDefaultSchedulingCalendar = 1;
      }
    }

    else
    {
      isDefaultSchedulingCalendar = 0;
    }

    sub_2334B11EC();
    v179 = qword_27DE0DD38;
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B63E0();
    }

    v383 = v155;
    v385 = v69;

    v180 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B648C();
    }

    v381 = v159;
    v396 = v63;

    v411 = 0u;
    v412 = 0u;
    v409 = 0u;
    v410 = 0u;
    obj = v390;
    v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v181, &v409, v415, 16);
    if (v182)
    {
      v186 = v182;
      v394 = 0;
      v187 = *v410;
      do
      {
        for (i = 0; i != v186; ++i)
        {
          if (*v410 != v187)
          {
            objc_enumerationMutation(obj);
          }

          v189 = *(*(&v409 + 1) + 8 * i);
          v193 = objc_msgSend_object(v189, v183, v184, v185);
          if (v193)
          {
            v194 = objc_msgSend_data(v189, v190, v191, v192);
            v198 = objc_msgSend_displayText(v189, v195, v196, v197);
            v199 = MEMORY[0x277CFBC50];
            v203 = objc_msgSend_identifier(v193, v200, v201, v202);
            v206 = objc_msgSend_externalIdentifierFromAssistantID_(v199, v204, v203, v205);

            v210 = objc_msgSend_emails(v193, v207, v208, v209);
            v214 = objc_msgSend_count(v210, v211, v212, v213);

            if (v214)
            {
              v218 = objc_msgSend_emails(v193, v215, v216, v217);
              v221 = objc_msgSend_objectAtIndex_(v218, v219, 0, v220);
              v225 = objc_msgSend_emailAddress(v221, v222, v223, v224);

              sub_2334B11EC();
              v226 = qword_27DE0DD38;
              if (os_log_type_enabled(v226, OS_LOG_TYPE_DEBUG))
              {
                v244 = objc_opt_class();
                units.years = 138412546;
                *&units.months = v244;
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v225;
                _os_log_debug_impl(&dword_2334AF000, v226, OS_LOG_TYPE_DEBUG, "[%@] - Attendee has email %@", &units, 0x16u);
              }

              v227 = *MEMORY[0x277CEF0D8];
              if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
              {
                v245 = objc_opt_class();
                units.years = 136315650;
                *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v245;
                *(&units.minutes + 3) = 2112;
                *&units.seconds = v225;
                _os_log_debug_impl(&dword_2334AF000, v227, OS_LOG_TYPE_DEBUG, "%s [%@] - Attendee has email %@", &units, 0x20u);
              }
            }

            else
            {
              v225 = v194;
            }

            if (((v225 != 0) & isDefaultSchedulingCalendar) == 1)
            {
              v228 = MEMORY[0x277CC59A0];
              if (v206)
              {
                v229 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v215, v206, v217);
                v231 = objc_msgSend_attendeeWithName_emailAddress_phoneNumber_url_(v228, v230, v198, v225, 0, v229);
              }

              else
              {
                v231 = objc_msgSend_attendeeWithName_emailAddress_phoneNumber_url_(MEMORY[0x277CC59A0], v215, v198, v225, 0, 0);
              }

              objc_msgSend_setParticipantType_(v231, v232, 1, v233);
              objc_msgSend_setParticipantStatus_(v231, v234, 0, v235);
              objc_msgSend_setParticipantRole_(v231, v236, 1, v237);
              objc_msgSend_addObject_(v395, v238, v231, v239);
              objc_msgSend_addAttendee_(v396, v240, v231, v241);
              sub_2334B11EC();
              v242 = qword_27DE0DD38;
              if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
              {
                v246 = objc_opt_class();
                units.years = 138412546;
                *&units.months = v246;
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v231;
                _os_log_debug_impl(&dword_2334AF000, v242, OS_LOG_TYPE_DEBUG, "[%@] - Added attendee %@", &units, 0x16u);
              }

              v243 = *MEMORY[0x277CEF0D8];
              if (os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG))
              {
                v247 = objc_opt_class();
                units.years = 136315650;
                *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
                LOWORD(units.hours) = 2112;
                *(&units.hours + 2) = v247;
                *(&units.minutes + 3) = 2112;
                *&units.seconds = v231;
                _os_log_debug_impl(&dword_2334AF000, v243, OS_LOG_TYPE_DEBUG, "%s [%@] - Added attendee %@", &units, 0x20u);
              }

              v394 = 1;
            }
          }
        }

        v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v183, &v409, v415, 16);
      }

      while (v186);
    }

    else
    {
      v394 = 0;
    }

    v251 = objc_msgSend_array(MEMORY[0x277CBEB18], v248, v249, v250);
    v405 = 0u;
    v406 = 0u;
    v407 = 0u;
    v408 = 0u;
    v252 = obj;
    v254 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v253, &v405, v414, 16);
    v5 = v389;
    if (v254)
    {
      v258 = v254;
      v259 = *v406;
      do
      {
        for (j = 0; j != v258; ++j)
        {
          if (*v406 != v259)
          {
            objc_enumerationMutation(v252);
          }

          v261 = objc_msgSend_displayText(*(*(&v405 + 1) + 8 * j), v255, v256, v257);
          objc_msgSend_addObject_(v251, v262, v261, v263);
        }

        v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v255, &v405, v414, 16);
      }

      while (v258);
    }

    v264 = sub_2334B1D2C(v251);
    v268 = objc_msgSend_bundle(CalAssistantBundle, v265, v266, v267);
    v270 = v268;
    v271 = MEMORY[0x277CCACA8];
    if (v388)
    {
      v272 = objc_msgSend_assistantLocalizedStringForKey_table_bundle_(v388, v269, @"%1$@ with %2$@", 0, v268);
      v276 = objc_msgSend_title(v389, v273, v274, v275);
      objc_msgSend_stringWithFormat_(v271, v277, v272, v278, v276, v264, v381, v383);
    }

    else
    {
      v272 = objc_msgSend_localizedStringForKey_value_table_(v268, v269, @"%1$@ with %2$@", &stru_2848D0778, 0);
      v276 = objc_msgSend_title(v389, v279, v280, v281);
      objc_msgSend_localizedStringWithFormat_(v271, v282, v272, v283, v276, v264, v381, v383);
    }
    v284 = ;

    if ((v385 | v394))
    {
      v288 = objc_msgSend_title(v389, v285, v286, v287);
      objc_msgSend_setTitle_(v396, v289, v288, v290);
    }

    else
    {
      objc_msgSend_setTitle_(v396, v285, v284, v287);
    }

    sub_2334B11EC();
    v291 = qword_27DE0DD38;
    if (os_log_type_enabled(v291, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B6550();
    }

    v292 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(v292, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B65F8();
    }

    v63 = v396;
  }

  v293 = objc_msgSend_recurrences(v5, v144, v145, v146);
  v297 = objc_msgSend_count(v293, v294, v295, v296);

  if (v297)
  {
    if (v297 == 1)
    {
      v301 = objc_msgSend_recurrences(v5, v298, v299, v300);
      v304 = objc_msgSend_objectAtIndex_(v301, v302, 0, v303);
      v305 = sub_2334B2068(v304);

      sub_2334B11EC();
      v306 = qword_27DE0DD38;
      if (os_log_type_enabled(v306, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B66AC();
      }

      v307 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B674C();
      }

      v310 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v308, v305, v309);
      v311 = v63;
      objc_msgSend_setRecurrenceRules_(v63, v312, v310, v313);

      v397 = 0;
    }

    else
    {
      sub_2334B11EC();
      v314 = qword_27DE0DD38;
      if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
      {
        sub_2334B67FC();
      }

      v315 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
      {
        sub_2334B6890();
      }

      v316 = objc_alloc(MEMORY[0x277D47208]);
      v397 = objc_msgSend_initWithReason_(v316, v317, @"Calendar plugin doesn't handle multiple recurrences.", v318);
      v305 = v63;
      v311 = 0;
    }
  }

  else
  {
    v311 = v63;
    v397 = 0;
  }

  v403 = 0u;
  v404 = 0u;
  v401 = 0u;
  v402 = 0u;
  v319 = objc_msgSend_alerts(v5, v298, v299, v300);
  v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v320, &v401, v413, 16);
  if (v321)
  {
    v322 = v321;
    v323 = *v402;
    do
    {
      for (k = 0; k != v322; ++k)
      {
        if (*v402 != v323)
        {
          objc_enumerationMutation(v319);
        }

        v325 = *(*(&v401 + 1) + 8 * k);
        v326 = objc_alloc(MEMORY[0x277CC5988]);
        objc_msgSend_doubleValue(v325, v327, v328, v329);
        v333 = objc_msgSend_initWithRelativeOffset_(v326, v330, v331, v332);
        if (v333)
        {
          sub_2334B11EC();
          v334 = qword_27DE0DD38;
          if (os_log_type_enabled(v334, OS_LOG_TYPE_DEBUG))
          {
            v339 = objc_opt_class();
            units.years = 138412546;
            *&units.months = v339;
            LOWORD(units.hours) = 2112;
            *(&units.hours + 2) = v333;
            _os_log_debug_impl(&dword_2334AF000, v334, OS_LOG_TYPE_DEBUG, "[%@] - Giving event alarm %@", &units, 0x16u);
          }

          v335 = *MEMORY[0x277CEF0D8];
          if (os_log_type_enabled(v335, OS_LOG_TYPE_DEBUG))
          {
            v340 = objc_opt_class();
            units.years = 136315650;
            *&units.months = "[CalAssistantEventCommit _commitEvent:serviceHelper:]";
            LOWORD(units.hours) = 2112;
            *(&units.hours + 2) = v340;
            *(&units.minutes + 3) = 2112;
            *&units.seconds = v333;
            _os_log_debug_impl(&dword_2334AF000, v335, OS_LOG_TYPE_DEBUG, "%s [%@] - Giving event alarm %@", &units, 0x20u);
          }

          objc_msgSend_addAlarm_(v311, v336, v333, v337);
        }
      }

      v322 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v338, &v401, v413, 16);
    }

    while (v322);
  }

  v63 = v311;
  if (v311)
  {
    v344 = objc_msgSend_eventStore(self, v341, v342, v343);
    v400 = 0;
    v346 = objc_msgSend_saveEvent_span_commit_error_(v344, v345, v311, v297 != 0, 1, &v400);
    v347 = v400;

    sub_2334B11EC();
    v348 = qword_27DE0DD38;
    v349 = v348;
    v6 = v388;
    v5 = v389;
    v24 = v386;
    v12 = v387;
    v350 = cf;
    v351 = v397;
    if (v346)
    {
      if (os_log_type_enabled(v348, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B6A8C();
      }

      v352 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v352, OS_LOG_TYPE_DEBUG))
      {
        sub_2334B6B1C();
      }

      AceEventFromEKEvent_0 = CreateAceEventFromEKEvent_0(v63, cf);
      if (AceEventFromEKEvent_0)
      {
        sub_2334B11EC();
        v354 = qword_27DE0DD38;
        if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B6BBC();
        }

        v355 = *MEMORY[0x277CEF0D8];
        if (os_log_type_enabled(v355, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B6C4C();
        }

        v356 = objc_alloc_init(MEMORY[0x277D472A8]);
        v351 = objc_msgSend_identifier(AceEventFromEKEvent_0, v357, v358, v359);
        objc_msgSend_setIdentifier_(v356, v360, v351, v361);
        goto LABEL_165;
      }

      v369 = objc_alloc(MEMORY[0x277D47208]);
      v368 = objc_msgSend_initWithReason_(v369, v370, @"Unable to create ace event from calendar event", v371);
    }

    else
    {
      if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
      {
        sub_2334B6934();
      }

      v362 = *MEMORY[0x277CEF0D8];
      if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
      {
        sub_2334B69D8();
      }

      v363 = objc_alloc(MEMORY[0x277D47208]);
      AceEventFromEKEvent_0 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v364, @"Unable to save event: %@", v365, v347);
      v368 = objc_msgSend_initWithReason_(v363, v366, AceEventFromEKEvent_0, v367);
    }

    v356 = v368;
LABEL_165:

    goto LABEL_166;
  }

  v6 = v388;
  v5 = v389;
  v24 = v386;
  v12 = v387;
  v350 = cf;
  v356 = v397;
LABEL_166:
  CFRelease(v350);
  v73 = v356;

LABEL_167:
LABEL_168:

  v372 = *MEMORY[0x277D85DE8];

  return v73;
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v22 = a4;
  v6 = a3;
  sub_2334B11EC();
  v10 = objc_msgSend_identifier(self, v7, v8, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_msgSend__validateEvent_(self, v11, v10, v12);
    if (v16)
    {
      goto LABEL_6;
    }

    v17 = objc_msgSend__commitEvent_serviceHelper_(self, v13, v10, v22);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277D47208]);
    v17 = objc_msgSend_initWithReason_(v18, v19, @"I could not find the event to commit.", v20);
  }

  v16 = v17;
LABEL_6:
  v21 = objc_msgSend_dictionary(v16, v13, v14, v15);
  v6[2](v6, v21);
}

@end