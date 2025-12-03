@interface CKSyncEngineDataSourceAdapter
- (BOOL)syncEngine:(id)engine shouldFetchAssetContentsForZoneID:(id)d;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (CKSyncEngineDataSource)dataSource;
- (CKSyncEngineDataSourceAdapter)initWithDataSource:(id)source;
- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context;
- (id)syncEngine:(id)engine relatedApplicationBundleIdentifiersForZoneIDs:(id)ds recordIDs:(id)iDs;
- (void)syncEngine:(id)engine handleEvent:(id)event;
@end

@implementation CKSyncEngineDataSourceAdapter

- (CKSyncEngineDataSourceAdapter)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = CKSyncEngineDataSourceAdapter;
  v5 = [(CKSyncEngineDataSourceAdapter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (void)syncEngine:(id)engine handleEvent:(id)event
{
  v363 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  eventCopy = event;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%@ is handling event for CKSyncEngineDataSourceAdapter", buf, 0xCu);
  }

  v11 = objc_msgSend_dataSource(self, v9, v10);
  v14 = objc_msgSend_type(eventCopy, v12, v13);
  if (v14 > 5)
  {
    if (v14 > 8)
    {
      if (v14 == 9)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_syncEngineDidEndFetchingChanges_(v11, v131, engineCopy);
        }
      }

      else if (v14 == 10)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_syncEngineWillBeginModifyingPendingChanges_(v11, v198, engineCopy);
        }
      }

      else if (v14 == 11 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_syncEngineDidEndModifyingPendingChanges_(v11, v96, engineCopy);
      }

      goto LABEL_165;
    }

    if (v14 == 6)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_syncEngineWillBeginFetchingChanges_(v11, v105, engineCopy);
      }

      goto LABEL_165;
    }

    if (v14 == 7)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_165;
      }

      v97 = objc_msgSend_willFetchRecordZoneChangesEvent(eventCopy, v139, v140);
      v100 = objc_msgSend_zoneID(v97, v141, v142);
      v348 = v100;
      v103 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v143, &v348, 1);
      objc_msgSend_syncEngine_willBeginFetchingChangesForZoneIDs_(v11, v144, engineCopy, v103);
      goto LABEL_86;
    }

    v50 = objc_msgSend_didFetchRecordZoneChangesEvent(eventCopy, v15, v16);
    v53 = objc_msgSend_error(v50, v51, v52);
    if (v53)
    {
      v54 = v53;
      v55 = objc_opt_respondsToSelector();

      if (v55)
      {
        v58 = objc_msgSend_zoneID(v50, v56, v57);
        v61 = objc_msgSend_error(v50, v59, v60);
        v64 = objc_msgSend_CKClientSuitableError(v61, v62, v63);
        if (objc_msgSend_code(v64, v65, v66) == 2)
        {
          v292 = v61;
          v294 = v58;
          v290 = eventCopy;
          v69 = objc_alloc(MEMORY[0x1E695DF90]);
          v72 = objc_msgSend_userInfo(v64, v70, v71);
          v74 = objc_msgSend_initWithDictionary_copyItems_(v69, v73, v72, 1);

          v75 = objc_alloc(MEMORY[0x1E695DF90]);
          v287 = v74;
          v77 = objc_msgSend_objectForKeyedSubscript_(v74, v76, @"CKPartialErrors");
          v79 = objc_msgSend_initWithDictionary_copyItems_(v75, v78, v77, 1);

          v346 = 0u;
          v347 = 0u;
          v344 = 0u;
          v345 = 0u;
          v82 = objc_msgSend_allKeys(v79, v80, v81);
          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v344, buf, 16);
          if (v84)
          {
            v86 = v84;
            v87 = *v345;
            while (2)
            {
              for (i = 0; i != v86; ++i)
              {
                if (*v345 != v87)
                {
                  objc_enumerationMutation(v82);
                }

                v89 = objc_msgSend_objectForKeyedSubscript_(v79, v85, *(*(&v344 + 1) + 8 * i));
                if (objc_msgSend_code(v89, v90, v91) == 112)
                {

                  goto LABEL_156;
                }
              }

              v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v85, &v344, buf, 16);
              if (v86)
              {
                continue;
              }

              break;
            }
          }

          v89 = 0;
LABEL_156:
          eventCopy = v290;
          v61 = v292;
          v58 = v294;
        }

        else if (objc_msgSend_code(v64, v67, v68) == 112)
        {
          v89 = v64;
        }

        else
        {
          v89 = 0;
        }

        if (v89)
        {
          v278 = objc_msgSend_zoneID(v50, v276, v277);
          objc_msgSend_syncEngine_failedToFetchChangesForRecordZoneID_error_(v11, v279, engineCopy, v278, v89);
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v190 = objc_msgSend_zoneID(v50, v280, v281);
      objc_msgSend_syncEngine_didEndFetchingChangesForZoneID_(v11, v282, engineCopy, v190);
      goto LABEL_163;
    }

    goto LABEL_164;
  }

  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v50 = objc_msgSend_fetchedRecordZoneChangesEvent(eventCopy, v15, v16);
      v332 = 0u;
      v333 = 0u;
      v334 = 0u;
      v335 = 0u;
      v108 = objc_msgSend_modifications(v50, v106, v107);
      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v332, v358, 16);
      if (v110)
      {
        v112 = v110;
        v113 = *v333;
        do
        {
          for (j = 0; j != v112; ++j)
          {
            if (*v333 != v113)
            {
              objc_enumerationMutation(v108);
            }

            objc_msgSend_syncEngine_didFetchRecord_(v11, v111, engineCopy, *(*(&v332 + 1) + 8 * j));
          }

          v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v332, v358, 16);
        }

        while (v112);
      }

      v330 = 0u;
      v331 = 0u;
      v328 = 0u;
      v329 = 0u;
      v117 = objc_msgSend_deletions(v50, v115, v116);
      v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, &v328, v357, 16);
      if (v119)
      {
        v122 = v119;
        v123 = *v329;
        do
        {
          for (k = 0; k != v122; ++k)
          {
            if (*v329 != v123)
            {
              objc_enumerationMutation(v117);
            }

            v125 = *(*(&v328 + 1) + 8 * k);
            v126 = objc_msgSend_recordID(v125, v120, v121);
            v129 = objc_msgSend_recordType(v125, v127, v128);
            objc_msgSend_syncEngine_recordWithIDWasDeleted_recordType_(v11, v130, engineCopy, v126, v129);
          }

          v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v120, &v328, v357, 16);
        }

        while (v122);
      }

      goto LABEL_164;
    }

    if (v14 != 4)
    {
      v285 = objc_opt_respondsToSelector();
      if (v285)
      {
        v94 = objc_opt_new();
        v284 = objc_opt_new();
        v95 = objc_opt_new();
        v286 = objc_opt_new();
        v295 = objc_opt_new();
      }

      else
      {
        v295 = 0;
        v95 = 0;
        v94 = 0;
        v284 = 0;
        v286 = 0;
      }

      objc_msgSend_sentRecordZoneChangesEvent(eventCopy, v92, v93);
      v309 = 0u;
      v310 = 0u;
      v311 = 0u;
      v293 = v312 = 0u;
      v201 = objc_msgSend_savedRecords(v293, v199, v200);
      v203 = objc_msgSend_countByEnumeratingWithState_objects_count_(v201, v202, &v309, v353, 16);
      if (v203)
      {
        v205 = v203;
        v206 = *v310;
        do
        {
          for (m = 0; m != v205; ++m)
          {
            if (*v310 != v206)
            {
              objc_enumerationMutation(v201);
            }

            v208 = *(*(&v309 + 1) + 8 * m);
            objc_msgSend_syncEngine_didSaveRecord_(v11, v204, engineCopy, v208);
            objc_msgSend_addObject_(v94, v209, v208);
            objc_msgSend_addObject_(v95, v210, v208);
          }

          v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v201, v204, &v309, v353, 16);
        }

        while (v205);
      }

      v288 = v95;
      v289 = eventCopy;

      v307 = 0u;
      v308 = 0u;
      v305 = 0u;
      v306 = 0u;
      v213 = objc_msgSend_failedRecordSaves(v293, v211, v212);
      v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v214, &v305, v352, 16);
      if (v215)
      {
        v218 = v215;
        v219 = *v306;
        do
        {
          for (n = 0; n != v218; ++n)
          {
            if (*v306 != v219)
            {
              objc_enumerationMutation(v213);
            }

            v221 = *(*(&v305 + 1) + 8 * n);
            v222 = objc_msgSend_error(v221, v216, v217);
            v224 = sub_18865311C(v222, 0, v223);

            if ((v224 & 1) == 0)
            {
              v227 = objc_msgSend_record(v221, v225, v226);
              v230 = objc_msgSend_error(v221, v228, v229);
              objc_msgSend_syncEngine_failedToSaveRecord_error_(v11, v231, engineCopy, v227, v230);
            }

            v232 = objc_msgSend_record(v221, v225, v226);
            objc_msgSend_addObject_(v94, v233, v232);

            v236 = objc_msgSend_error(v221, v234, v235);
            v239 = objc_msgSend_record(v221, v237, v238);
            v242 = objc_msgSend_recordID(v239, v240, v241);
            objc_msgSend_setObject_forKeyedSubscript_(v295, v243, v236, v242);
          }

          v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v216, &v305, v352, 16);
        }

        while (v218);
      }

      v303 = 0u;
      v304 = 0u;
      v301 = 0u;
      v302 = 0u;
      v246 = objc_msgSend_deletedRecordIDs(v293, v244, v245);
      v248 = objc_msgSend_countByEnumeratingWithState_objects_count_(v246, v247, &v301, v351, 16);
      v250 = v286;
      if (v248)
      {
        v251 = v248;
        v252 = *v302;
        do
        {
          for (ii = 0; ii != v251; ++ii)
          {
            if (*v302 != v252)
            {
              objc_enumerationMutation(v246);
            }

            v254 = *(*(&v301 + 1) + 8 * ii);
            objc_msgSend_syncEngine_didDeleteRecordWithID_(v11, v249, engineCopy, v254);
            objc_msgSend_addObject_(v284, v255, v254);
            objc_msgSend_addObject_(v286, v256, v254);
          }

          v251 = objc_msgSend_countByEnumeratingWithState_objects_count_(v246, v249, &v301, v351, 16);
        }

        while (v251);
      }

      v259 = objc_msgSend_failedRecordDeletes(v293, v257, v258);
      v296[0] = MEMORY[0x1E69E9820];
      v296[1] = 3221225472;
      v296[2] = sub_1886533D4;
      v296[3] = &unk_1E70C0250;
      v260 = v11;
      v297 = v260;
      v261 = engineCopy;
      v298 = v261;
      v262 = v284;
      v299 = v262;
      v263 = v295;
      v300 = v263;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v259, v264, v296);

      if (v285)
      {
        v265 = [CKSyncEngineBatch alloc];
        v267 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v265, v266, v94, v262);
        objc_msgSend_setSavedRecords_(v267, v268, v288);
        objc_msgSend_setDeletedRecordIDs_(v267, v269, v286);
        if (objc_msgSend_count(v263, v270, v271))
        {
          v349 = @"CKPartialErrors";
          v350 = v263;
          v273 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v272, &v350, &v349, 1);
          v275 = objc_msgSend_errorWithCode_userInfo_format_(CKPrettyError, v274, 2, v273, @"Failed to send changes");
        }

        else
        {
          v275 = 0;
        }

        objc_msgSend_syncEngine_didCompleteModifyRecordsBatch_error_(v260, v272, v261, v267, v275);

        v250 = v286;
      }

LABEL_152:
      eventCopy = v289;
      goto LABEL_165;
    }

    v50 = objc_msgSend_sentDatabaseChangesEvent(eventCopy, v15, v16);
    v147 = objc_msgSend_savedZones(v50, v145, v146);
    if (objc_msgSend_count(v147, v148, v149))
    {
      v150 = objc_opt_respondsToSelector();

      if ((v150 & 1) == 0)
      {
        goto LABEL_97;
      }

      v326 = 0u;
      v327 = 0u;
      v324 = 0u;
      v325 = 0u;
      v147 = objc_msgSend_savedZones(v50, v151, v152);
      v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v153, &v324, v356, 16);
      if (v154)
      {
        v156 = v154;
        v157 = *v325;
        do
        {
          for (jj = 0; jj != v156; ++jj)
          {
            if (*v325 != v157)
            {
              objc_enumerationMutation(v147);
            }

            objc_msgSend_syncEngine_didSaveRecordZone_(v11, v155, engineCopy, *(*(&v324 + 1) + 8 * jj));
          }

          v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v155, &v324, v356, 16);
        }

        while (v156);
      }
    }

LABEL_97:
    v159 = objc_msgSend_failedZoneSaves(v50, v151, v152);
    if (objc_msgSend_count(v159, v160, v161))
    {
      v162 = objc_opt_respondsToSelector();

      if ((v162 & 1) == 0)
      {
        goto LABEL_107;
      }

      v322 = 0u;
      v323 = 0u;
      v320 = 0u;
      v321 = 0u;
      v159 = objc_msgSend_failedZoneSaves(v50, v163, v164);
      v166 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v165, &v320, v355, 16);
      if (v166)
      {
        v169 = v166;
        v170 = *v321;
        do
        {
          for (kk = 0; kk != v169; ++kk)
          {
            if (*v321 != v170)
            {
              objc_enumerationMutation(v159);
            }

            v172 = *(*(&v320 + 1) + 8 * kk);
            v173 = objc_msgSend_recordZone(v172, v167, v168);
            v176 = objc_msgSend_error(v172, v174, v175);
            objc_msgSend_syncEngine_failedToSaveRecordZone_error_(v11, v177, engineCopy, v173, v176);
          }

          v169 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v167, &v320, v355, 16);
        }

        while (v169);
      }
    }

LABEL_107:
    v178 = objc_msgSend_deletedZoneIDs(v50, v163, v164);
    if (objc_msgSend_count(v178, v179, v180))
    {
      v181 = objc_opt_respondsToSelector();

      if ((v181 & 1) == 0)
      {
LABEL_117:
        v190 = objc_msgSend_failedZoneDeletes(v50, v182, v183);
        if (!objc_msgSend_count(v190, v191, v192))
        {
LABEL_163:

          goto LABEL_164;
        }

        v193 = objc_opt_respondsToSelector();

        if (v193)
        {
          v196 = objc_msgSend_failedZoneDeletes(v50, v194, v195);
          v313[0] = MEMORY[0x1E69E9820];
          v313[1] = 3221225472;
          v313[2] = sub_188653108;
          v313[3] = &unk_1E70C0228;
          v314 = v11;
          v315 = engineCopy;
          objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v196, v197, v313);

          v190 = v314;
          goto LABEL_163;
        }

LABEL_164:

        goto LABEL_165;
      }

      v318 = 0u;
      v319 = 0u;
      v316 = 0u;
      v317 = 0u;
      v178 = objc_msgSend_deletedZoneIDs(v50, v182, v183);
      v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v184, &v316, v354, 16);
      if (v185)
      {
        v187 = v185;
        v188 = *v317;
        do
        {
          for (mm = 0; mm != v187; ++mm)
          {
            if (*v317 != v188)
            {
              objc_enumerationMutation(v178);
            }

            objc_msgSend_syncEngine_didDeleteRecordZoneWithID_(v11, v186, engineCopy, *(*(&v316 + 1) + 8 * mm));
          }

          v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v186, &v316, v354, 16);
        }

        while (v187);
      }
    }

    goto LABEL_117;
  }

  switch(v14)
  {
    case 0:
      v97 = objc_msgSend_stateUpdateEvent(eventCopy, v15, v16);
      v100 = objc_msgSend_stateSerialization(v97, v98, v99);
      v103 = objc_msgSend_data(v100, v101, v102);
      objc_msgSend_syncEngine_didUpdateMetadata_(v11, v104, engineCopy, v103);
      goto LABEL_86;
    case 1:
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      v97 = objc_msgSend_accountChangeEvent(eventCopy, v132, v133);
      v100 = objc_msgSend_previousUser(v97, v134, v135);
      v103 = objc_msgSend_currentUser(v97, v136, v137);
      objc_msgSend_syncEngine_accountChangedFromUserRecordID_toUserRecordID_(v11, v138, engineCopy, v100, v103);
LABEL_86:

      break;
    case 2:
      objc_msgSend_fetchedDatabaseChangesEvent(eventCopy, v15, v16);
      v340 = 0u;
      v341 = 0u;
      v342 = 0u;
      v291 = v343 = 0u;
      v19 = objc_msgSend_modifications(v291, v17, v18);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v340, v360, 16);
      if (v21)
      {
        v22 = v21;
        v23 = *v341;
        do
        {
          for (nn = 0; nn != v22; ++nn)
          {
            if (*v341 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v340 + 1) + 8 * nn);
            if (objc_opt_respondsToSelector())
            {
              v28 = objc_msgSend_zoneID(v25, v26, v27);
              objc_msgSend_syncEngine_zoneWithIDChanged_(v11, v29, engineCopy, v28);
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, &v340, v360, 16);
        }

        while (v22);
      }

      v289 = eventCopy;

      v338 = 0u;
      v339 = 0u;
      v336 = 0u;
      v337 = 0u;
      v32 = objc_msgSend_deletions(v291, v30, v31);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v336, v359, 16);
      if (v34)
      {
        v37 = v34;
        v38 = *v337;
        do
        {
          for (i1 = 0; i1 != v37; ++i1)
          {
            if (*v337 != v38)
            {
              objc_enumerationMutation(v32);
            }

            v40 = *(*(&v336 + 1) + 8 * i1);
            v41 = objc_msgSend_reason(v40, v35, v36);
            if (v41 == 2)
            {
              if (objc_opt_respondsToSelector())
              {
                v44 = objc_msgSend_zoneID(v40, v46, v47);
                objc_msgSend_syncEngine_zoneWithIDWasDeletedDueToUserEncryptedDataReset_(v11, v48, engineCopy, v44);
                goto LABEL_34;
              }
            }

            else if (v41 == 1)
            {
              if (objc_opt_respondsToSelector())
              {
                v44 = objc_msgSend_zoneID(v40, v42, v43);
                objc_msgSend_syncEngine_zoneWithIDWasPurged_(v11, v45, engineCopy, v44);
                goto LABEL_34;
              }
            }

            else if (v41)
            {
              continue;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }

            v44 = objc_msgSend_zoneID(v40, v35, v36);
            objc_msgSend_syncEngine_zoneWithIDWasDeleted_(v11, v49, engineCopy, v44);
LABEL_34:
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v336, v359, 16);
        }

        while (v37);
      }

      goto LABEL_152;
  }

LABEL_165:

  v283 = *MEMORY[0x1E69E9840];
}

- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context
{
  v67 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  contextCopy = context;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v65 = 2112;
    v66 = contextCopy;
    _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%@ about to get next record change batch for context: %@", buf, 0x16u);
  }

  v11 = objc_msgSend_options(contextCopy, v9, v10);
  v14 = objc_msgSend_scope(v11, v12, v13);

  v17 = objc_msgSend_dataSource(self, v15, v16);
  if (v17)
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = objc_msgSend_zoneIDs(v14, v18, v19);
      v22 = objc_msgSend_syncEngine_nextBatchOfRecordsToModifyForZoneIDs_(v17, v21, engineCopy, v20);

      objc_msgSend_setCustomBatch_(v22, v23, 1);
      v24 = [CKSyncEngineRecordZoneChangeBatch alloc];
      v27 = objc_msgSend_recordsToSave(v22, v25, v26);
      v30 = objc_msgSend_recordIDsToDelete(v22, v28, v29);
      isAtomic = objc_msgSend_isAtomic(v22, v31, v32);
      v35 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_atomicByZone_(v24, v34, v27, v30, isAtomic);
    }

    else
    {
      v36 = objc_opt_new();
      v39 = objc_msgSend_state(engineCopy, v37, v38);
      v42 = objc_msgSend_pendingRecordZoneChanges(v39, v40, v41);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1886537DC;
      v61[3] = &unk_1E70C0278;
      v62 = v14;
      v44 = objc_msgSend_CKFilter_(v42, v43, v61);

      v45 = [CKSyncEngineRecordZoneChangeBatch alloc];
      v54 = MEMORY[0x1E69E9820];
      v55 = 3221225472;
      v56 = sub_188653824;
      v57 = &unk_1E70C02A0;
      v58 = v17;
      v46 = engineCopy;
      v59 = v46;
      v60 = v36;
      v22 = v36;
      v35 = objc_msgSend_initWithPendingChanges_recordProvider_(v45, v47, v44, &v54);
      v50 = objc_msgSend_state(v46, v48, v49, v54, v55, v56, v57);
      objc_msgSend_removePendingRecordZoneChanges_(v50, v51, v22);

      v27 = v62;
    }
  }

  else
  {
    v35 = 0;
  }

  v52 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  v10 = objc_msgSend_dataSource(self, v8, v9);
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      ChangesForZoneID = objc_msgSend_syncEngine_shouldFetchChangesForZoneID_(v10, v11, engineCopy, dCopy);
    }

    else
    {
      ChangesForZoneID = 1;
    }
  }

  else
  {
    ChangesForZoneID = 0;
  }

  return ChangesForZoneID;
}

- (BOOL)syncEngine:(id)engine shouldFetchAssetContentsForZoneID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  v10 = objc_msgSend_dataSource(self, v8, v9);
  if (objc_opt_respondsToSelector())
  {
    AssetContentsForZoneID = objc_msgSend_syncEngine_shouldFetchAssetContentsForZoneID_(v10, v11, engineCopy, dCopy);
  }

  else
  {
    AssetContentsForZoneID = 1;
  }

  return AssetContentsForZoneID;
}

- (id)syncEngine:(id)engine relatedApplicationBundleIdentifiersForZoneIDs:(id)ds recordIDs:(id)iDs
{
  engineCopy = engine;
  dsCopy = ds;
  iDsCopy = iDs;
  v13 = objc_msgSend_dataSource(self, v11, v12);
  if (objc_opt_respondsToSelector())
  {
    v15 = objc_msgSend_syncEngine_relatedApplicationBundleIdentifiersForZoneIDs_recordIDs_(v13, v14, engineCopy, dsCopy, iDsCopy);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CKSyncEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end