@interface CKContactFetcher
+ (id)contactForUserIdentity:(id)identity contactStore:(id)store;
@end

@implementation CKContactFetcher

+ (id)contactForUserIdentity:(id)identity contactStore:(id)store
{
  v218 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  storeCopy = store;
  v9 = sub_1886A64AC(storeCopy, v7, v8);
  if (!identityCopy || !v9)
  {
    v65 = sub_1886A658C(identityCopy);
    goto LABEL_106;
  }

  if (storeCopy)
  {
    v12 = storeCopy;
    v15 = v12;
LABEL_5:
    v16 = sub_1886A6B04(v12, v13, v14);
    v19 = v16;
    if (v16)
    {
      goto LABEL_6;
    }

    v70 = dispatch_semaphore_create(0);
    v200 = 0;
    v201 = &v200;
    v202 = 0x2020000000;
    LOBYTE(v203) = 0;
    *&v213 = 0;
    *(&v213 + 1) = &v213;
    v214 = 0x3032000000;
    v215 = sub_1883EE24C;
    v216 = sub_1883EF7CC;
    v217 = 0;
    v194[0] = MEMORY[0x1E69E9820];
    v194[1] = 3221225472;
    v195 = sub_1886A6B6C;
    v196 = &unk_1E70C1A88;
    v198 = &v200;
    v199 = &v213;
    v71 = v70;
    v197 = v71;
    v68 = v15;
    v72 = v194;
    if (objc_opt_respondsToSelector())
    {
      [v68 requestAccessForEntityType:0 completionHandler:v72];
    }

    else
    {
      v195(v72, 0, 0);
    }

    v73 = dispatch_time(0, 10000000000);
    v74 = dispatch_semaphore_wait(v71, v73);
    if (v74)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v75 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1883EA000, v75, OS_LOG_TYPE_ERROR, "Timed out waiting for store access authorization.", buf, 2u);
      }

      v65 = sub_1886A658C(identityCopy);
      v19 = 0;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v65 = ck_log_facility_ck;
      v76 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO);
      if (v76)
      {
        v79 = *(v201 + 24);
        v80 = *(*(&v213 + 1) + 40);
        *buf = 67109378;
        v210 = v79;
        v211 = 2112;
        v212 = v80;
        _os_log_impl(&dword_1883EA000, v65, OS_LOG_TYPE_INFO, "RequestWeakLinkedStoreAccess results: granted = %d, error = %@", buf, 0x12u);
      }

      v19 = sub_1886A6B04(v76, v77, v78);
    }

    _Block_object_dispose(&v213, 8);
    _Block_object_dispose(&v200, 8);

    if (!v74)
    {
LABEL_6:
      if (v19 == 3)
      {
        v200 = 0;
        v201 = &v200;
        v202 = 0x2020000000;
        v20 = qword_1ED4B6548;
        v203 = qword_1ED4B6548;
        if (!qword_1ED4B6548)
        {
          *&v213 = MEMORY[0x1E69E9820];
          *(&v213 + 1) = 3221225472;
          v214 = sub_1886A733C;
          v215 = &unk_1E70BBE90;
          v216 = &v200;
          v21 = sub_1886A6E64(v16, v17, v18);
          v22 = dlsym(v21, "CNContactGivenNameKey");
          *(*(v216 + 1) + 24) = v22;
          qword_1ED4B6548 = *(*(v216 + 1) + 24);
          v20 = v201[3];
        }

        _Block_object_dispose(&v200, 8);
        if (!v20)
        {
          identityCopy = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v23, v24);
          v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v164, "NSString *getCNContactGivenNameKey(void)");
          v166 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(identityCopy, v167, v165, @"CKContactFetcher.m", 25, @"%s", v166);

          goto LABEL_114;
        }

        v25 = *v20;
        v20 = v25;
        v207 = v25;
        v200 = 0;
        v201 = &v200;
        v202 = 0x2020000000;
        v28 = qword_1ED4B6550;
        v203 = qword_1ED4B6550;
        if (!qword_1ED4B6550)
        {
          *&v213 = MEMORY[0x1E69E9820];
          *(&v213 + 1) = 3221225472;
          v214 = sub_1886A738C;
          v215 = &unk_1E70BBE90;
          v216 = &v200;
          v29 = sub_1886A6E64(v25, v26, v27);
          v30 = dlsym(v29, "CNContactFamilyNameKey");
          *(*(v216 + 1) + 24) = v30;
          qword_1ED4B6550 = *(*(v216 + 1) + 24);
          v28 = v201[3];
        }

        _Block_object_dispose(&v200, 8);
        if (!v28)
        {
          identityCopy = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v31, v32);
          v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v168, "NSString *getCNContactFamilyNameKey(void)");
          v170 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(identityCopy, v171, v169, @"CKContactFetcher.m", 26, @"%s", v170);

          goto LABEL_114;
        }

        v208 = *v28;
        v33 = MEMORY[0x1E695DEC8];
        v34 = v208;
        v180 = objc_msgSend_arrayWithObjects_count_(v33, v35, &v207, 2);

        v4 = 0x1E695D000uLL;
        v181 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37);
        v182 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39);
        v183 = objc_msgSend_lookupInfo(identityCopy, v40, v41);
        v44 = objc_msgSend_emailAddress(v183, v42, v43);
        v47 = objc_msgSend_length(v44, v45, v46) == 0;

        if (v47)
        {
          goto LABEL_53;
        }

        v51 = sub_1886A6BDC(v48, v49, v50);
        v54 = objc_msgSend_emailAddress(v183, v52, v53);
        v20 = objc_msgSend_predicateForContactsMatchingEmailAddress_(v51, v55, v54);

        if (!v20)
        {
          if (ck_log_initialization_predicate == -1)
          {
            goto LABEL_50;
          }

          goto LABEL_115;
        }

        v57 = objc_msgSend_addObject_(v182, v56, v20);
        v200 = 0;
        v201 = &v200;
        v202 = 0x2020000000;
        v60 = qword_1ED4B6558;
        v203 = qword_1ED4B6558;
        if (!qword_1ED4B6558)
        {
          *&v213 = MEMORY[0x1E69E9820];
          *(&v213 + 1) = 3221225472;
          v214 = sub_1886A74A4;
          v215 = &unk_1E70BBE90;
          v216 = &v200;
          v61 = sub_1886A6E64(v57, v58, v59);
          v62 = dlsym(v61, "CNContactEmailAddressesKey");
          *(*(v216 + 1) + 24) = v62;
          qword_1ED4B6558 = *(*(v216 + 1) + 24);
          v60 = v201[3];
        }

        _Block_object_dispose(&v200, 8);
        if (!v60)
        {
          identityCopy = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v63, v64);
          v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v172, "NSString *getCNContactEmailAddressesKey(void)");
          v174 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(identityCopy, v175, v173, @"CKContactFetcher.m", 23, @"%s", v174);

          goto LABEL_114;
        }

        if (*v60)
        {
          objc_msgSend_addObject_(v181, v63, *v60);
        }

        while (1)
        {

LABEL_53:
          v82 = objc_msgSend_phoneNumber(v183, v49, v50);
          v85 = objc_msgSend_length(v82, v83, v84) == 0;

          if (v85)
          {
            break;
          }

          v89 = sub_1886A6CBC(v86, v87, v88);
          v92 = objc_msgSend_phoneNumber(v183, v90, v91);
          v94 = objc_msgSend_phoneNumberWithStringValue_(v89, v93, v92);

          if (!v94)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v109 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
            {
              v110 = v109;
              v113 = objc_msgSend_phoneNumber(v183, v111, v112);
              LODWORD(v213) = 138412290;
              *(&v213 + 4) = v113;
              _os_log_error_impl(&dword_1883EA000, v110, OS_LOG_TYPE_ERROR, "Failed to create CNPhoneNumber object from string: %@", &v213, 0xCu);
            }

            goto LABEL_70;
          }

          v98 = sub_1886A6BDC(v95, v96, v97);
          v20 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(v98, v99, v94);
          if (!v20)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v114 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
            {
              v160 = v114;
              v163 = objc_msgSend_phoneNumber(v183, v161, v162);
              LODWORD(v213) = 138412290;
              *(&v213 + 4) = v163;
              _os_log_error_impl(&dword_1883EA000, v160, OS_LOG_TYPE_ERROR, "Failed to create CNContact predicate for phone number: %@", &v213, 0xCu);
            }

LABEL_69:

LABEL_70:
            break;
          }

          v101 = objc_msgSend_addObject_(v182, v100, v20);
          v200 = 0;
          v201 = &v200;
          v202 = 0x2020000000;
          v104 = qword_1ED4B6560;
          v203 = qword_1ED4B6560;
          if (!qword_1ED4B6560)
          {
            *&v213 = MEMORY[0x1E69E9820];
            *(&v213 + 1) = 3221225472;
            v214 = sub_1886A75BC;
            v215 = &unk_1E70BBE90;
            v216 = &v200;
            v105 = sub_1886A6E64(v101, v102, v103);
            v106 = dlsym(v105, "CNContactPhoneNumbersKey");
            *(*(v216 + 1) + 24) = v106;
            qword_1ED4B6560 = *(*(v216 + 1) + 24);
            v104 = v201[3];
          }

          _Block_object_dispose(&v200, 8);
          if (v104)
          {
            if (*v104)
            {
              objc_msgSend_addObject_(v181, v107, *v104);
            }

            goto LABEL_69;
          }

          identityCopy = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v107, v108);
          v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v176, "NSString *getCNContactPhoneNumbersKey(void)");
          v178 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(identityCopy, v179, v177, @"CKContactFetcher.m", 24, @"%s", v178);

LABEL_114:
          __break(1u);
LABEL_115:
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
LABEL_50:
          v81 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            v156 = v81;
            v159 = objc_msgSend_emailAddress(v183, v157, v158);
            LODWORD(v213) = 138412290;
            *(&v213 + 4) = v159;
            _os_log_error_impl(&dword_1883EA000, v156, OS_LOG_TYPE_ERROR, "Failed to create CNContact predicate for email address: %@", &v213, 0xCu);
          }
        }

        if (objc_msgSend_count(v182, v87, v88))
        {
          v117 = objc_msgSend_mutableCopy(v180, v115, v116);
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v118 = v181;
          v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v119, &v190, v206, 16);
          if (v121)
          {
            v122 = *v191;
            do
            {
              for (i = 0; i != v121; ++i)
              {
                if (*v191 != v122)
                {
                  objc_enumerationMutation(v118);
                }

                v124 = *(*(&v190 + 1) + 8 * i);
                if ((objc_msgSend_containsObject_(v117, v120, v124) & 1) == 0)
                {
                  objc_msgSend_addObject_(v117, v120, v124);
                }
              }

              v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v120, &v190, v206, 16);
            }

            while (v121);
          }

          v127 = objc_msgSend_array(*(v4 + 3952), v125, v126);
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v128 = v182;
          v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v129, &v186, v205, 16);
          if (v131)
          {
            v132 = *v187;
            while (2)
            {
              for (j = 0; j != v131; ++j)
              {
                if (*v187 != v132)
                {
                  objc_enumerationMutation(v128);
                }

                v134 = *(*(&v186 + 1) + 8 * j);
                v185 = 0;
                v135 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v15, v130, v134, v117, &v185);
                v136 = v185;
                if (v136)
                {
                  v138 = 1;
                }

                else
                {
                  v138 = v135 == 0;
                }

                if (v138)
                {
                  v152 = v136;
                  if (ck_log_initialization_predicate != -1)
                  {
                    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                  }

                  v153 = ck_log_facility_ck;
                  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v213) = 138412290;
                    *(&v213 + 4) = v152;
                    _os_log_error_impl(&dword_1883EA000, v153, OS_LOG_TYPE_ERROR, "Failed to fetch contacts from contact store: %@", &v213, 0xCu);
                  }

                  v65 = sub_1886A658C(identityCopy);

                  goto LABEL_101;
                }

                objc_msgSend_addObjectsFromArray_(v127, v137, v135);
              }

              v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v130, &v186, v205, 16);
              if (v131)
              {
                continue;
              }

              break;
            }
          }

          if (objc_msgSend_count(v127, v139, v140) >= 2)
          {
            v143 = objc_msgSend_sortDescriptorWithKey_ascending_selector_(MEMORY[0x1E696AEB0], v141, @"familyName", 1, sel_localizedCaseInsensitiveCompare_);
            v145 = objc_msgSend_sortDescriptorWithKey_ascending_selector_(MEMORY[0x1E696AEB0], v144, @"givenName", 1, sel_localizedCaseInsensitiveCompare_);
            v147 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v146, @"identifier", 1);
            v204[0] = v143;
            v204[1] = v145;
            v204[2] = v147;
            v149 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v148, v204, 3);
            objc_msgSend_sortUsingDescriptors_(v127, v150, v149);
          }

          v151 = objc_msgSend_firstObject(v127, v141, v142);
          if (v151)
          {
            v152 = v151;
            v65 = v152;
          }

          else
          {
            v65 = sub_1886A658C(identityCopy);
            v152 = 0;
          }

LABEL_101:
        }

        else
        {
          v65 = sub_1886A658C(identityCopy);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v69 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v213) = 0;
          _os_log_error_impl(&dword_1883EA000, v69, OS_LOG_TYPE_ERROR, "Contacts access denied or restricted. Returning synthetic contact.", &v213, 2u);
        }

        v65 = sub_1886A658C(identityCopy);
      }

      v68 = v15;
    }

    goto LABEL_105;
  }

  v66 = sub_1886A64AC(v9, v10, v11);
  if (v66)
  {
    v12 = objc_alloc_init(v66);
    v15 = v12;
    if (v12)
    {
      goto LABEL_5;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v67 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v213) = 0;
    _os_log_error_impl(&dword_1883EA000, v67, OS_LOG_TYPE_ERROR, "CNContactStore not available. Returning synthetic contact.", &v213, 2u);
  }

  v65 = sub_1886A658C(identityCopy);
  v68 = 0;
LABEL_105:

LABEL_106:
  v154 = *MEMORY[0x1E69E9840];

  return v65;
}

@end