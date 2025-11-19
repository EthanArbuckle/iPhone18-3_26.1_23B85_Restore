void sub_2334B008C(uint64_t a1, void *a2, void *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (!v8)
  {
    v70 = *(a1 + 48);
    v71 = objc_msgSend_dictionary(a3, v5, v6, v7);
    (*(v70 + 16))(v70, v71);

    goto LABEL_32;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = (a1 + 32);
  obj = objc_msgSend_identifiers(*(a1 + 32), v5, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v78, v88, 16);
  v14 = a1;
  if (!v10)
  {
    goto LABEL_26;
  }

  v15 = v10;
  v16 = *v79;
  v73 = 136315650;
  v74 = v8;
  v75 = v14;
  do
  {
    v17 = 0;
    do
    {
      if (*v79 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v78 + 1) + 8 * v17);
      v19 = objc_msgSend_timeZoneId(v18, v11, v12, v13, v73);
      if (v19)
      {
        v20 = CFTimeZoneCreateWithName(0, v19, 1u);
      }

      else
      {
        v20 = CalCopyTimeZone();
      }

      v21 = v20;
      if (v20)
      {
        sub_2334B11EC();
        v22 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          v35 = *v76;
          v36 = v22;
          v37 = objc_opt_class();
          v38 = v37;
          v42 = objc_msgSend_identifier(v18, v39, v40, v41);
          *buf = 138412546;
          v83 = v37;
          v8 = v74;
          v84 = 2112;
          v85 = v42;
          _os_log_debug_impl(&dword_2334AF000, v36, OS_LOG_TYPE_DEBUG, "[%@] - Looking for event with identifier %@", buf, 0x16u);

          v14 = v75;
        }

        v23 = *MEMORY[0x277CEF0D8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
        {
          v43 = *v76;
          v44 = v23;
          v45 = objc_opt_class();
          v46 = v45;
          v50 = objc_msgSend_identifier(v18, v47, v48, v49);
          *buf = v73;
          v83 = "[CalAssistantEventRetrieve performWithCompletion:]_block_invoke";
          v84 = 2112;
          v85 = v45;
          v86 = 2112;
          v87 = v50;
          _os_log_debug_impl(&dword_2334AF000, v44, OS_LOG_TYPE_DEBUG, "%s [%@] - Looking for event with identifier %@", buf, 0x20u);

          v8 = v74;
          v14 = v75;
        }

        v27 = objc_msgSend_identifier(v18, v24, v25, v26);
        v29 = objc_msgSend__eventWithURI_checkValid_(v8, v28, v27, 1);

        sub_2334B11EC();
        v30 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          v51 = *v76;
          v52 = v30;
          v53 = objc_opt_class();
          *buf = 138412546;
          v83 = v53;
          v84 = 2112;
          v85 = v29;
          v54 = v53;
          _os_log_debug_impl(&dword_2334AF000, v52, OS_LOG_TYPE_DEBUG, "[%@] - Found event %@", buf, 0x16u);

          v14 = v75;
        }

        v31 = *MEMORY[0x277CEF0D8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
        {
          v55 = *v76;
          v56 = v31;
          v57 = objc_opt_class();
          *buf = v73;
          v83 = "[CalAssistantEventRetrieve performWithCompletion:]_block_invoke";
          v84 = 2112;
          v85 = v57;
          v86 = 2112;
          v87 = v29;
          v58 = v57;
          _os_log_debug_impl(&dword_2334AF000, v56, OS_LOG_TYPE_DEBUG, "%s [%@] - Found event %@", buf, 0x20u);

          v14 = v75;
          if (v29)
          {
LABEL_19:
            AceEventFromEKEvent_0 = CreateAceEventFromEKEvent_0(v29, v21);
            objc_msgSend_addObject_(*(v14 + 40), v33, AceEventFromEKEvent_0, v34);
          }
        }

        else if (v29)
        {
          goto LABEL_19;
        }

        CFRelease(v21);
      }

      ++v17;
    }

    while (v15 != v17);
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v78, v88, 16);
    v15 = v59;
  }

  while (v59);
LABEL_26:

  sub_2334B11EC();
  v60 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B435C(v76, v60, v14);
  }

  v61 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4420(v76, v61, v14);
  }

  v62 = objc_alloc_init(MEMORY[0x277D472B8]);
  objc_msgSend_setObjects_(v62, v63, *(v14 + 40), v64);
  v65 = *(v14 + 48);
  v69 = objc_msgSend_dictionary(v62, v66, v67, v68);
  (*(v65 + 16))(v65, v69);

LABEL_32:
  v72 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334B11A4()
{

  return objc_opt_class();
}

uint64_t sub_2334B11D4()
{

  return objc_opt_class();
}

void sub_2334B11EC()
{
  if (qword_27DE0DD30 != -1)
  {
    sub_2334B4B7C();
  }
}

uint64_t sub_2334B1218()
{
  qword_27DE0DD38 = os_log_create(qword_27DE0DD28, "CalendarAssistant");

  return MEMORY[0x2821F96F8]();
}

id sub_2334B125C()
{
  v0 = objc_alloc(MEMORY[0x277CC5A40]);
  v3 = objc_msgSend_initWithEKOptions_(v0, v1, 4, v2);

  return v3;
}

void sub_2334B1294(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CC5A40]);
  v7 = objc_msgSend_initWithEKOptions_(v4, v5, 4, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2334B1350;
  v12[3] = &unk_2789D86A0;
  v13 = v7;
  v14 = v3;
  v8 = v7;
  v9 = v3;
  objc_msgSend_requestFullAccessToEventsWithCompletion_(v8, v10, v12, v11);
}

void sub_2334B1350(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    sub_2334B11EC();
    v7 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR))
    {
      sub_2334B4B90(v5, v7);
    }

    v8 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_ERROR))
    {
      sub_2334B4C08(v5, v8);
    }

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"We weren't granted access to EventKit. %@", v10, v5);
    v12 = objc_alloc(MEMORY[0x277D47208]);
    v15 = objc_msgSend_initWithReason_(v12, v13, v11, v14);
    (*(*(a1 + 40) + 16))();
  }
}

id sub_2334B1D14(id a1)
{

  return a1;
}

id sub_2334B1D2C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_count(v1, v2, v3, v4);
  v9 = objc_msgSend_bundle(CalAssistantBundle, v6, v7, v8);
  v12 = v9;
  if (v5)
  {
    if (v5 == 2)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"%@ and %@ (two attendee format)", @"%@ and %@", 0);
      v18 = objc_msgSend_objectAtIndex_(v1, v16, 0, v17);
      v21 = objc_msgSend_objectAtIndex_(v1, v19, 1, v20);
      v13 = objc_msgSend_localizedStringWithFormat_(v14, v22, v15, v23, v18, v21);
    }

    else if (v5 == 1)
    {
      v13 = objc_msgSend_objectAtIndex_(v1, v10, 0, v11);
    }

    else
    {
      v24 = 0x277CCA000uLL;
      v25 = MEMORY[0x277CCACA8];
      v26 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"%@, %@ (three or more start format)", @"%@, %@", 0);
      v29 = objc_msgSend_objectAtIndex_(v1, v27, 0, v28);
      v32 = objc_msgSend_objectAtIndex_(v1, v30, 1, v31);
      v35 = objc_msgSend_localizedStringWithFormat_(v25, v33, v26, v34, v29, v32);

      v56 = v5 - 1;
      if ((v5 - 1) < 3)
      {
        v47 = v35;
      }

      else
      {
        v37 = v5 - 3;
        v38 = 2;
        do
        {
          v39 = *(v24 + 3240);
          objc_msgSend_localizedStringForKey_value_table_(v12, v36, @"%@, %@ (three or more middle format)", @"%@, %@", 0);
          v41 = v40 = v24;
          v44 = objc_msgSend_objectAtIndex_(v1, v42, v38, v43);
          v47 = objc_msgSend_localizedStringWithFormat_(v39, v45, v41, v46, v35, v44);

          v24 = v40;
          ++v38;
          v35 = v47;
          --v37;
        }

        while (v37);
      }

      v48 = *(v24 + 3240);
      v49 = objc_msgSend_localizedStringForKey_value_table_(v12, v36, @"%@ and %@ (three or more end format)", @"%@ and %@", 0);
      v52 = objc_msgSend_objectAtIndex_(v1, v50, v56, v51);
      v13 = objc_msgSend_localizedStringWithFormat_(v48, v53, v49, v54, v47, v52);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_2334B1FD0(unsigned int a1)
{
  if (a1 < 5)
  {
    return qword_2334B7308[a1];
  }

  sub_2334B11EC();
  v3 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR))
  {
    sub_2334B5494(a1, v3);
  }

  v4 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_ERROR))
  {
    sub_2334B550C(a1, v4);
  }

  return 0;
}

id sub_2334B2068(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_frequency(v1, v2, v3, v4);
  v6 = sub_2334B1FD0(v5);
  v10 = objc_msgSend_endDate(v1, v7, v8, v9);

  if (v10)
  {
    v14 = objc_alloc(MEMORY[0x277CC5A90]);
    v18 = objc_msgSend_endDate(v1, v15, v16, v17);
    v21 = objc_msgSend_initWithEndDate_(v14, v19, v18, v20);
  }

  else if (objc_msgSend_endCount(v1, v11, v12, v13) < 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CC5A90]);
    v26 = objc_msgSend_endCount(v1, v23, v24, v25);
    v21 = objc_msgSend_initWithOccurrenceCount_(v22, v27, v26, v28);
  }

  v29 = objc_alloc(MEMORY[0x277CC5AA8]);
  v33 = objc_msgSend_interval(v1, v30, v31, v32);
  inited = objc_msgSend_initRecurrenceWithFrequency_interval_end_(v29, v34, v6, v33, v21);

  return inited;
}

id CreateAceEventFromEKEvent_0(void *a1, void *a2)
{
  v192 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  sub_2334B11EC();
  v8 = objc_alloc_init(MEMORY[0x277D471C8]);
  if (v8)
  {
    v9 = objc_msgSend_externalURI(v3, v5, v6, v7);
    objc_msgSend_setIdentifier_(v8, v10, v9, v11);

    v15 = objc_msgSend_externalURI(v3, v12, v13, v14);
    objc_msgSend_setCalendarPunchoutURI_(v8, v16, v15, v17);

    v21 = objc_msgSend_title(v3, v18, v19, v20);
    objc_msgSend_setTitle_(v8, v22, v21, v23);

    v27 = objc_msgSend_location(v3, v24, v25, v26);
    objc_msgSend_setLocation_(v8, v28, v27, v29);

    isAllDay = objc_msgSend_isAllDay(v3, v30, v31, v32);
    objc_msgSend_setAllDay_(v8, v34, isAllDay, v35);
    v39 = objc_msgSend_startDate(v3, v36, v37, v38);
    objc_msgSend_setStartDate_(v8, v40, v39, v41);

    v45 = objc_msgSend_endDate(v3, v42, v43, v44);
    objc_msgSend_setEndDate_(v8, v46, v45, v47);

    v185 = v4;
    v51 = objc_msgSend_name(v4, v48, v49, v50);
    objc_msgSend_setTimeZoneId_(v8, v52, v51, v53);

    v57 = objc_msgSend_calendar(v3, v54, v55, v56);
    v61 = objc_msgSend_externalURI(v57, v58, v59, v60);
    objc_msgSend_setCalendarId_(v8, v62, v61, v63);

    if ((objc_msgSend_isEditable(v3, v64, v65, v66) & 1) == 0)
    {
      v69 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v67, 1, v68);
      objc_msgSend_setReadOnly_(v8, v70, v69, v71);
    }

    v72 = v8;
    v76 = objc_msgSend_attendees(v3, v73, v74, v75);
    v186 = v8;
    if (objc_msgSend_count(v76, v77, v78, v79))
    {
      v183 = v72;
      v80 = objc_alloc(MEMORY[0x277CBEB18]);
      v83 = objc_msgSend_initWithCapacity_(v80, v81, 0, v82);
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v181 = v76;
      v84 = v76;
      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v187, v191, 16);
      if (v86)
      {
        v90 = v86;
        v91 = *v188;
        do
        {
          for (i = 0; i != v90; ++i)
          {
            if (*v188 != v91)
            {
              objc_enumerationMutation(v84);
            }

            v93 = *(*(&v187 + 1) + 8 * i);
            v94 = objc_msgSend_name(v93, v87, v88, v89, v181);
            v98 = objc_msgSend_emailAddress(v93, v95, v96, v97);
            if (v98 | v94)
            {
              v99 = objc_alloc_init(MEMORY[0x277D47638]);
              v102 = v99;
              if (v98)
              {
                objc_msgSend_setData_(v99, v100, v98, v101);
              }

              else
              {
                objc_msgSend_setData_(v99, v100, v94, v101);
              }

              if (v94)
              {
                objc_msgSend_setDisplayText_(v102, v103, v94, v104);
              }

              else
              {
                objc_msgSend_setDisplayText_(v102, v103, v98, v104);
              }

              objc_msgSend_addObject_(v83, v105, v102, v106);
            }
          }

          v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v87, &v187, v191, 16);
        }

        while (v90);
      }

      v72 = v183;
      objc_msgSend_setAttendees_(v183, v107, v83, v108);

      v8 = v186;
      v76 = v181;
    }

    v109 = v72;
    v113 = objc_msgSend_recurrenceRules(v3, v110, v111, v112);
    if (objc_msgSend_count(v113, v114, v115, v116))
    {
      v184 = v109;
      v117 = objc_alloc(MEMORY[0x277CBEB18]);
      v121 = objc_msgSend_count(v113, v118, v119, v120);
      v124 = objc_msgSend_initWithCapacity_(v117, v122, v121, v123);
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v182 = v113;
      v125 = v113;
      v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v126, &v187, v191, 16);
      if (v127)
      {
        v128 = v127;
        v129 = *v188;
        do
        {
          for (j = 0; j != v128; ++j)
          {
            if (*v188 != v129)
            {
              objc_enumerationMutation(v125);
            }

            v131 = *(*(&v187 + 1) + 8 * j);
            v132 = objc_alloc_init(MEMORY[0x277D471D8]);
            v136 = objc_msgSend_frequency(v131, v133, v134, v135);
            if (v136 <= 3)
            {
              objc_msgSend_setFrequency_(v132, v137, (v136 + 1), v139);
            }

            v140 = objc_msgSend_interval(v131, v137, v138, v139, v182);
            objc_msgSend_setInterval_(v132, v141, v140, v142);
            v146 = objc_msgSend_recurrenceEnd(v131, v143, v144, v145);
            v150 = v146;
            if (v146)
            {
              v151 = objc_msgSend_endDate(v146, v147, v148, v149);

              if (v151)
              {
                v155 = objc_msgSend_endDate(v150, v152, v153, v154);
                objc_msgSend_setEndDate_(v132, v156, v155, v157);
              }

              else if (objc_msgSend_occurrenceCount(v150, v152, v153, v154))
              {
                v159 = objc_msgSend_occurrenceCount(v150, v147, v158, v149);
                objc_msgSend_setEndCount_(v132, v160, v159, v161);
              }
            }

            objc_msgSend_addObject_(v124, v147, v132, v149);
          }

          v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v162, &v187, v191, 16);
        }

        while (v128);
      }

      v109 = v184;
      objc_msgSend_setRecurrences_(v184, v163, v124, v164);

      v8 = v186;
      v113 = v182;
    }

    v165 = v109;
    v169 = objc_msgSend_selfParticipantStatus(v3, v166, v167, v168);
    if (v169 <= 7)
    {
      objc_msgSend_setSelfParticipantStatus_(v165, v170, **(&unk_2789D86C0 + v169), v171);
    }

    v172 = v165;
    v176 = objc_msgSend_status(v3, v173, v174, v175);
    v4 = v185;
    if (v176 <= 3)
    {
      objc_msgSend_setStatus_(v172, v177, **(&unk_2789D8700 + v176), v178);
    }
  }

  v179 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2334B41F8(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138412290;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_debug_impl(&dword_2334AF000, v1, OS_LOG_TYPE_DEBUG, "[%@] - Performing Event Retrieve", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2334B42A0(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 136315394;
  v5 = "[CalAssistantEventRetrieve performWithCompletion:]";
  v6 = 2112;
  v7 = objc_opt_class();
  v2 = v7;
  _os_log_debug_impl(&dword_2334AF000, v1, OS_LOG_TYPE_DEBUG, "%s [%@] - Performing Event Retrieve", &v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2334B435C(uint64_t *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a3 + 40);
  v10 = 138412546;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v8 = v6;
  _os_log_debug_impl(&dword_2334AF000, v5, OS_LOG_TYPE_DEBUG, "[%@] - Returning results %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2334B4420(uint64_t *a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a3 + 40);
  v10 = 136315650;
  v11 = "[CalAssistantEventRetrieve performWithCompletion:]_block_invoke";
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v8 = v6;
  _os_log_debug_impl(&dword_2334AF000, v5, OS_LOG_TYPE_DEBUG, "%s [%@] - Returning results %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2334B44F4(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4588(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1170();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4628()
{
  sub_2334B11BC();
  v14 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_2334B11D4();
  objc_msgSend_count(v0, v5, v6, v7);
  sub_2334B1194();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334B46E0()
{
  sub_2334B11BC();
  v14 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_2334B11D4();
  objc_msgSend_count(v0, v5, v6, v7);
  sub_2334B1194();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x20u);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334B47AC()
{
  sub_2334B11BC();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  sub_2334B11D4();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B1194();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4854()
{
  sub_2334B11BC();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  sub_2334B11D4();
  sub_2334B1170();
  v4 = v3;
  sub_2334B1194();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4904(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B11C8();
  v4 = v3;
  _os_log_error_impl(&dword_2334AF000, v1, OS_LOG_TYPE_ERROR, "[%@] - Predicate was nil", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B49A0(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  v6[0] = 136315394;
  sub_2334B1170();
  v4 = v3;
  _os_log_error_impl(&dword_2334AF000, v1, OS_LOG_TYPE_ERROR, "%s [%@] - Predicate was nil", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B4A48(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B11C8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4ADC(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1170();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4B90(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "We weren't granted access to EventKit. %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2334B4C08(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[EKEventStore(CalAssistant) _ca_performBlock:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "%s We weren't granted access to EventKit. %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2334B4C94(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4D24(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4DC8(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  objc_opt_class();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1D04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4E90(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  objc_opt_class();
  sub_2334B1CE8();
  v4 = v3;
  sub_2334B1D04();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4F5C(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B4FEC(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B5090(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B5120(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B51C4(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = v5;
  v10 = objc_msgSend_localizedDescription(a3, v7, v8, v9);
  v12 = 138412546;
  v13 = v5;
  sub_2334B1CD8();
  _os_log_debug_impl(&dword_2334AF000, v4, OS_LOG_TYPE_DEBUG, "[%@] - Event deletion failed because removeEvent returned a non nil error: [%@]", &v12, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334B5294(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v9 = objc_msgSend_localizedDescription(a3, v6, v7, v8);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2334B5360(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334B11A4();
  v4 = sub_2334B1D14(v3);
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B53F0(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  sub_2334B11A4();
  sub_2334B1CD8();
  v4 = v3;
  sub_2334B1184();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2334B5494(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "Error: Invalid SACalendarRecurrenceFrequency [%d]", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2334B550C(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "EKRecurrenceFrequencyFromSACalendarRecurrenceFrequency";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_2334AF000, a2, OS_LOG_TYPE_ERROR, "%s Error: Invalid SACalendarRecurrenceFrequency [%d]", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2334B5598()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B5628()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B56C8()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_identifier(v2, v3, v4, v5);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5770()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_identifier(v2, v3, v4, v5);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5824()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_title(v2, v3, v4, v5);
  sub_2334B41D4();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B58E0()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_title(v2, v3, v4, v5);
  sub_2334B41A4();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x2Au);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B59A4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  sub_2334B11C8();
  v3 = v2;
  sub_2334B41EC();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2334B5A44(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  sub_2334B41B8();
  v3 = v2;
  sub_2334B41EC();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2334B5AF4()
{
  sub_2334B11BC();
  v17 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_calendar(v2, v3, v4, v5);
  v10 = objc_msgSend_title(v6, v7, v8, v9);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x16u);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334B5BAC()
{
  sub_2334B11BC();
  v17 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_calendar(v2, v3, v4, v5);
  v10 = objc_msgSend_title(v6, v7, v8, v9);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x20u);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2334B5C70()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_title(v2, v3, v4, v5);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5D18()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_title(v2, v3, v4, v5);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5DCC()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_location(v2, v3, v4, v5);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5E74()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_location(v2, v3, v4, v5);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5F28()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_notes(v2, v3, v4, v5);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B5FD0()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_notes(v2, v3, v4, v5);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B6084(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v7 = objc_msgSend_startDate(a2, v4, v5, v6);
  v11 = objc_msgSend_endDate(a2, v8, v9, v10);
  objc_msgSend_isAllDay(a2, v12, v13, v14);
  sub_2334B41D4();
  sub_2334B41EC();
  _os_log_debug_impl(v15, v16, OS_LOG_TYPE_DEBUG, v17, v18, 0x26u);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2334B617C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v7 = objc_msgSend_startDate(a2, v4, v5, v6);
  v11 = objc_msgSend_endDate(a2, v8, v9, v10);
  objc_msgSend_isAllDay(a2, v12, v13, v14);
  sub_2334B41B8();
  sub_2334B41EC();
  _os_log_debug_impl(v15, v16, OS_LOG_TYPE_DEBUG, v17, v18, 0x30u);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2334B6280()
{
  sub_2334B11BC();
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  objc_msgSend_count(v2, v3, v4, v5);
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334B632C()
{
  sub_2334B11BC();
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  objc_msgSend_count(v2, v3, v4, v5);
  sub_2334B41A4();
  sub_2334B1D04();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334B63E0()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B648C()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  sub_2334B1D04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B6550()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_title(v2, v3, v4, v5);
  sub_2334B418C();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B65F8()
{
  sub_2334B11BC();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = sub_2334B41E0();
  v6 = objc_msgSend_title(v2, v3, v4, v5);
  sub_2334B1CE8();
  sub_2334B1D04();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334B66AC()
{
  sub_2334B11BC();
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B41D4();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B674C()
{
  sub_2334B11BC();
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B67FC()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B41C8();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B6890()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B41C8();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B6934()
{
  sub_2334B11BC();
  v6 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B41D4();
  sub_2334B41C8();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B69D8()
{
  sub_2334B11BC();
  v6 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B41C8();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x20u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334B6A8C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B6B1C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B6BBC()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B11C8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2334B6C4C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  sub_2334B41B8();
  sub_2334B1D04();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}