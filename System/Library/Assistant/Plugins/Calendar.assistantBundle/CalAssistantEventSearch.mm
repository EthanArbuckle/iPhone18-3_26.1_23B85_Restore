@interface CalAssistantEventSearch
- (EKEventStore)eventStore;
- (id)_validate;
- (id)_visibleCalendars;
- (void)performWithCompletion:(id)completion;
- (void)setEventStore:(id)store;
@end

@implementation CalAssistantEventSearch

- (EKEventStore)eventStore
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

- (void)setEventStore:(id)store
{
  storeCopy = store;
  if (self->_eventStore != storeCopy)
  {
    v6 = storeCopy;
    objc_storeStrong(&self->_eventStore, store);
    storeCopy = v6;
  }
}

- (void)performWithCompletion:(id)completion
{
  v198 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  sub_2334B11EC();
  sub_2334B11EC();
  v5 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B44F4(v5);
  }

  v6 = MEMORY[0x277CEF0D8];
  v7 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4588(v7);
  }

  v14 = objc_msgSend__validate(self, v8, v9, v10);
  if (!v14)
  {
    v15 = objc_msgSend_timeZoneId(self, v11, v12, v13);
    if (v15)
    {
      v16 = CFTimeZoneCreateWithName(0, v15, 1u);
    }

    else
    {
      v16 = CalCopyTimeZone();
    }

    v20 = v16;
    if (v16)
    {
      v24 = objc_msgSend_limit(self, v17, v18, v19);
      if (v24)
      {
        v25 = objc_msgSend_limit(self, v21, v22, v23);
        v29 = objc_msgSend_intValue(v25, v26, v27, v28);
      }

      else
      {
        v29 = 0;
      }

      v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v37 = objc_msgSend_eventStore(self, v34, v35, v36);
      v41 = objc_msgSend__visibleCalendars(self, v38, v39, v40);
      v45 = v41;
      if (v41 && objc_msgSend_count(v41, v42, v43, v44))
      {
        v168 = v29;
        v170 = v45;
        sub_2334B11EC();
        v46 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          log = v46;
          v155 = objc_opt_class();
          v162 = v155;
          v166 = objc_msgSend_startDate(self, v103, v104, v105);
          v164 = objc_msgSend_endDate(self, v106, v107, v108);
          v157 = objc_msgSend_title(self, v109, v110, v111);
          v154 = objc_msgSend_location(self, v112, v113, v114);
          v118 = objc_msgSend_notes(self, v115, v116, v117);
          objc_msgSend_participants(self, v119, v120, v121);
          *buf = 138414594;
          v177 = v155;
          v178 = 2112;
          v179 = v20;
          v180 = 2112;
          v181 = v166;
          v182 = 2112;
          v183 = v164;
          v184 = 2112;
          v185 = v157;
          v186 = 2112;
          v187 = v154;
          v188 = 2112;
          v189 = v118;
          v190 = 2112;
          v191 = v170;
          v193 = v192 = 2112;
          v122 = v193;
          v194 = 2112;
          v195 = v37;
          _os_log_debug_impl(&dword_2334AF000, log, OS_LOG_TYPE_DEBUG, "[%@] - Creating predicate for event search with timeZone %@, startDate %@, endDate %@, title %@, location %@, notes %@, visibleCalendars %@ participants %@ in store %@", buf, 0x66u);
        }

        v161 = completionCopy;
        v163 = v15;
        v47 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          loga = v47;
          v123 = objc_opt_class();
          v167 = v123;
          v158 = objc_msgSend_startDate(self, v124, v125, v126);
          v156 = objc_msgSend_endDate(self, v127, v128, v129);
          v133 = objc_msgSend_title(self, v130, v131, v132);
          v137 = objc_msgSend_location(self, v134, v135, v136);
          v141 = objc_msgSend_notes(self, v138, v139, v140);
          v145 = objc_msgSend_participants(self, v142, v143, v144);
          *buf = 136317698;
          v177 = "[CalAssistantEventSearch performWithCompletion:]";
          v178 = 2112;
          v179 = v123;
          v180 = 2112;
          v181 = v20;
          v182 = 2112;
          v183 = v158;
          v184 = 2112;
          v185 = v156;
          v186 = 2112;
          v187 = v133;
          v188 = 2112;
          v189 = v137;
          v190 = 2112;
          v191 = v141;
          v192 = 2112;
          v193 = v170;
          v194 = 2112;
          v195 = v145;
          v146 = v145;
          v196 = 2112;
          v197 = v37;
          _os_log_debug_impl(&dword_2334AF000, loga, OS_LOG_TYPE_DEBUG, "%s [%@] - Creating predicate for event search with timeZone %@, startDate %@, endDate %@, title %@, location %@, notes %@, visibleCalendars %@ participants %@ in store %@", buf, 0x70u);
        }

        v51 = objc_msgSend_startDate(self, v48, v49, v50);
        v55 = objc_msgSend_endDate(self, v52, v53, v54);
        v59 = objc_msgSend_title(self, v56, v57, v58);
        v63 = objc_msgSend_location(self, v60, v61, v62);
        v67 = objc_msgSend_notes(self, v64, v65, v66);
        v71 = objc_msgSend_participants(self, v68, v69, v70);
        v153 = v168;
        v169 = v37;
        v73 = objc_msgSend_predicateForAssistantEventSearchWithTimeZone_startDate_endDate_title_location_notes_participants_calendars_limit_(v37, v72, v20, v51, v55, v59, v63, v67, v71, v170, v153);

        sub_2334B11EC();
        v74 = qword_27DE0DD38;
        v165 = v73;
        if (v73)
        {
          v75 = os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG);
          v76 = MEMORY[0x277CEF0D8];
          completionCopy = v161;
          if (v75)
          {
            v147 = v74;
            v148 = objc_opt_class();
            *buf = 138412802;
            v177 = v148;
            v178 = 2112;
            v179 = v73;
            v180 = 2112;
            v181 = v169;
            v149 = v148;
            _os_log_debug_impl(&dword_2334AF000, v147, OS_LOG_TYPE_DEBUG, "[%@] - Searching for events matching predicate %@ in store %@", buf, 0x20u);
          }

          v77 = *v76;
          v80 = v169;
          if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
          {
            v150 = v77;
            v151 = objc_opt_class();
            *buf = 136315906;
            v177 = "[CalAssistantEventSearch performWithCompletion:]";
            v178 = 2112;
            v179 = v151;
            v180 = 2112;
            v181 = v165;
            v182 = 2112;
            v183 = v169;
            v152 = v151;
            _os_log_debug_impl(&dword_2334AF000, v150, OS_LOG_TYPE_DEBUG, "%s [%@] - Searching for events matching predicate %@ in store %@", buf, 0x2Au);

            v80 = v169;
          }

          v81 = objc_msgSend_eventsMatchingPredicate_(v80, v78, v165, v79);
          sub_2334B11EC();
          if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
          {
            sub_2334B4628();
          }

          if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
          {
            sub_2334B46E0();
          }

          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v82 = v81;
          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v171, v175, 16);
          if (v84)
          {
            v85 = v84;
            v86 = *v172;
            do
            {
              for (i = 0; i != v85; ++i)
              {
                if (*v172 != v86)
                {
                  objc_enumerationMutation(v82);
                }

                AceEventFromEKEvent_0 = CreateAceEventFromEKEvent_0(*(*(&v171 + 1) + 8 * i), v20);
                objc_msgSend_addObject_(v33, v89, AceEventFromEKEvent_0, v90);
              }

              v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v91, &v171, v175, 16);
            }

            while (v85);
          }

          sub_2334B11EC();
          if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
          {
            sub_2334B47AC();
          }

          v15 = v163;
          v37 = v169;
          if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
          {
            sub_2334B4854();
          }

          v45 = v170;
        }

        else
        {
          v94 = os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_ERROR);
          completionCopy = v161;
          v15 = v163;
          v95 = MEMORY[0x277CEF0D8];
          if (v94)
          {
            sub_2334B4904(v74);
          }

          v96 = *v95;
          v97 = os_log_type_enabled(*v95, OS_LOG_TYPE_ERROR);
          v37 = v169;
          v45 = v170;
          if (v97)
          {
            sub_2334B49A0(v96);
          }
        }
      }

      else
      {
        sub_2334B11EC();
        v92 = qword_27DE0DD38;
        if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B4A48(v92);
        }

        v93 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          sub_2334B4ADC(v93);
        }
      }

      v98 = objc_alloc(MEMORY[0x277D471D0]);
      v14 = objc_msgSend_initWithResults_(v98, v99, v33, v100);
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x277D47208]);
      v14 = objc_msgSend_initWithReason_(v30, v31, @"Invalid timezone", v32);
    }
  }

  v101 = objc_msgSend_dictionary(v14, v11, v12, v13);
  completionCopy[2](completionCopy, v101);

  v102 = *MEMORY[0x277D85DE8];
}

- (id)_visibleCalendars
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CC59F0]);
  v8 = objc_msgSend_eventStore(self, v5, v6, v7);
  v10 = objc_msgSend_initWithEventStore_visibilityChangedCallback_queue_(v4, v9, v8, 0, 0);

  v14 = objc_msgSend_visibleCalendars(v10, v11, v12, v13);
  objc_msgSend_addObjectsFromArray_(v3, v15, v14, v16);

  return v3;
}

- (id)_validate
{
  v5 = objc_msgSend_startDate(self, a2, v2, v3);
  v9 = objc_msgSend_endDate(self, v6, v7, v8);
  v12 = v9;
  if ((v5 != 0) != (v9 != 0))
  {
    v13 = @"Start date and end date must be either both specified or omitted";
LABEL_3:
    v14 = objc_alloc(MEMORY[0x277D47208]);
    v17 = objc_msgSend_initWithReason_(v14, v15, v13, v16);
    goto LABEL_4;
  }

  v17 = 0;
  if (v5 && v9)
  {
    if (objc_msgSend_compare_(v5, v10, v9, v11) == 1)
    {
      v13 = @"End date cannot be earlier than start date";
      goto LABEL_3;
    }

    v17 = 0;
  }

LABEL_4:

  return v17;
}

@end