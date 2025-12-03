@interface CKAllowedSharingOptions
+ (CKAllowedSharingOptions)standardOptions;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)resolvedOptionsFromOptions:(id)options forExistingShare:(id)share;
+ (void)initialize;
- (BOOL)_optionsGroupsOnlyContainsSingleOptionInPermissionArrayAndWhoCanAccessArray:(id)array;
- (CKAllowedSharingOptions)initWithAllowedParticipantPermissionOptions:(CKSharingParticipantPermissionOption)allowedParticipantPermissionOptions allowedParticipantAccessOptions:(CKSharingParticipantAccessOption)allowedParticipantAccessOptions;
- (CKAllowedSharingOptions)initWithCoder:(id)coder;
- (id)_uncachedCollaborationOptionsGroupsFromAllowedOptions;
- (id)_uncachedShareOptionsFromAllowedOptions;
- (id)collaborationOptionsGroupsFromAllowedOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)shareOptionsFromAllowedOptions;
- (void)_addOptions:(id)options toExistingGroupWithID:(id)d inOptionsGroups:(id)groups;
- (void)_removeOptionGroupWithID:(id)d fromOptionsGroups:(id)groups;
- (void)_resolveCollaborationOptionsGroupsForExistingShare:(id)share;
- (void)_selectOptionWithIdentifier:(id)identifier inGroups:(id)groups;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKAllowedSharingOptions

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKAllowedSharingOptions)initWithAllowedParticipantPermissionOptions:(CKSharingParticipantPermissionOption)allowedParticipantPermissionOptions allowedParticipantAccessOptions:(CKSharingParticipantAccessOption)allowedParticipantAccessOptions
{
  v7.receiver = self;
  v7.super_class = CKAllowedSharingOptions;
  result = [(CKAllowedSharingOptions *)&v7 init];
  if (result)
  {
    result->_allowedParticipantPermissionOptions = allowedParticipantPermissionOptions;
    result->_allowedParticipantAccessOptions = allowedParticipantAccessOptions;
    result->_supportAllowingAccessRequests = 0;
  }

  return result;
}

+ (CKAllowedSharingOptions)standardOptions
{
  v2 = [CKAllowedSharingOptions alloc];
  v4 = objc_msgSend_initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptions_(v2, v3, 3, 3);

  return v4;
}

- (id)_uncachedShareOptionsFromAllowedOptions
{
  v3 = objc_msgSend_collaborationOptionsGroupsFromAllowedOptions(self, a2, v2);
  v4 = CKSharingSummaryStringFromOptionsGroups(v3);
  v5 = v4;
  v6 = &stru_1EFA32970;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v9 = objc_msgSend_shareOptionsWithOptionsGroups_summary_(MEMORY[0x1E697B720], v8, v3, v7);

  return v9;
}

- (id)shareOptionsFromAllowedOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mutableShareOptions = selfCopy->_mutableShareOptions;
  if (!mutableShareOptions)
  {
    v6 = objc_msgSend__uncachedShareOptionsFromAllowedOptions(selfCopy, v3, v4);
    v7 = selfCopy->_mutableShareOptions;
    selfCopy->_mutableShareOptions = v6;

    mutableShareOptions = selfCopy->_mutableShareOptions;
  }

  v8 = mutableShareOptions;
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)_uncachedCollaborationOptionsGroupsFromAllowedOptions
{
  v144[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_allowedParticipantPermissionOptions(self, v5, v6);
  v8 = v7;
  if ((v7 & 2) != 0)
  {
    v9 = objc_alloc(MEMORY[0x1E697B708]);
    v16 = CKLocalizedString(@"COLLABORATION_OPTIONS_PERMISSION_RW", &stru_1EFA32970, v10, v11, v12, v13, v14, v15, v137);
    v18 = objc_msgSend_initWithTitle_identifier_(v9, v17, v16, @"CKSharingPermissionCanMakeChangesOptionID");

    v141 = v18;
    objc_msgSend_addObject_(v4, v19, v18);
    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v141 = 0;
  if (v7)
  {
LABEL_5:
    v20 = objc_alloc(MEMORY[0x1E697B708]);
    v27 = CKLocalizedString(@"COLLABORATION_OPTIONS_PERMISSION_RO", &stru_1EFA32970, v21, v22, v23, v24, v25, v26, v137);
    v29 = objc_msgSend_initWithTitle_identifier_(v20, v28, v27, @"CKSharingPermissionViewOnlyOptionID");

    objc_msgSend_addObject_(v4, v30, v29);
  }

LABEL_6:
  v31 = objc_alloc(MEMORY[0x1E697B718]);
  v38 = CKLocalizedString(@"COLLABORATION_OPTIONS_PERMISSION_TITLE", &stru_1EFA32970, v32, v33, v34, v35, v36, v37, v137);
  v40 = objc_msgSend_initWithTitle_identifier_footer_options_(v31, v39, v38, @"CKSharingPermissionGroupID", 0, v4);

  v41 = objc_opt_new();
  v44 = objc_msgSend_allowedParticipantAccessOptions(self, v42, v43);
  v45 = 0;
  v140 = v4;
  if ((v44 & 2) != 0)
  {
    v46 = objc_alloc(MEMORY[0x1E697B708]);
    v53 = CKLocalizedString(@"COLLABORATION_OPTIONS_ACCESS_INVITED", &stru_1EFA32970, v47, v48, v49, v50, v51, v52, selfCopy);
    v55 = objc_msgSend_initWithTitle_identifier_(v46, v54, v53, @"CKSharingAccessSpecifiedRecipientsOnlyOptionID");

    objc_msgSend_addObject_(v41, v56, v55);
    v45 = 0;
    if (objc_msgSend_supportAllowingAddedParticipantsToInviteOthers(self, v57, v58) && v55 && v141)
    {
      v59 = objc_alloc(MEMORY[0x1E697B708]);
      v66 = CKLocalizedString(@"COLLABORATION_OPTIONS_ADDING_PEOPLE_ALLOW_OTHERS", &stru_1EFA32970, v60, v61, v62, v63, v64, v65, selfCopy);
      v69 = objc_msgSend_identifier(v55, v67, v68);
      v144[0] = v69;
      objc_msgSend_identifier(v141, v70, v71);
      selfCopy = self;
      v72 = v41;
      v74 = v73 = v40;
      v144[1] = v74;
      v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v75, v144, 2);
      v45 = objc_msgSend_initWithTitle_identifier_subtitle_selected_requiredOptionsIdentifiers_(v59, v77, v66, @"CKSharingAllowOthersToInviteOptionID", 0, 1, v76);

      v40 = v73;
      v41 = v72;
      self = selfCopy;
    }

    v4 = v140;
  }

  if (v44)
  {
    v78 = objc_alloc(MEMORY[0x1E697B708]);
    v85 = CKLocalizedString(@"COLLABORATION_OPTIONS_ACCESS_ANYONE", &stru_1EFA32970, v79, v80, v81, v82, v83, v84, selfCopy);
    v87 = objc_msgSend_initWithTitle_identifier_(v78, v86, v85, @"CKSharingAccessAnyoneWithLinkOptionID");

    objc_msgSend_addObject_(v41, v88, v87);
  }

  v89 = objc_alloc(MEMORY[0x1E697B718]);
  v96 = CKLocalizedString(@"COLLABORATION_OPTIONS_ACCESS_TITLE", &stru_1EFA32970, v90, v91, v92, v93, v94, v95, selfCopy);
  v98 = objc_msgSend_initWithTitle_identifier_footer_options_(v89, v97, v96, @"CKSharingWhoCanAccessGroupID", 0, v41);

  objc_msgSend_addObject_(v3, v99, v98);
  objc_msgSend_addObject_(v3, v100, v40);
  if (v45)
  {
    if (objc_msgSend__optionsGroupsOnlyContainsSingleOptionInPermissionArrayAndWhoCanAccessArray_(self, v101, v3))
    {
      v109 = CKLocalizedString(@"COLLABORATION_OPTIONS_PERMISSION_TITLE", &stru_1EFA32970, v103, v104, v105, v106, v107, v108, v139);
    }

    else
    {
      v109 = 0;
    }

    v110 = objc_alloc(MEMORY[0x1E697B710]);
    v143 = v45;
    v112 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v111, &v143, 1);
    v114 = objc_msgSend_initWithTitle_identifier_footer_options_(v110, v113, v109, @"CKSharingAllowOthersToInviteGroupID", 0, v112);

    objc_msgSend_addObject_(v3, v115, v114);
    v4 = v140;
  }

  if (objc_msgSend_supportAllowingAccessRequests(self, v101, v102))
  {
    v118 = objc_alloc(MEMORY[0x1E697B708]);
    v125 = CKLocalizedString(@"COLLABORATION_OPTIONS_ALLOW_ACCESS_REQUESTS_TITLE", &stru_1EFA32970, v119, v120, v121, v122, v123, v124, v139);
    v127 = objc_msgSend_initWithTitle_identifier_selected_(v118, v126, v125, @"CKSharingAllowAccessRequestsOptionID", 0);

    v128 = objc_alloc(MEMORY[0x1E697B710]);
    v142 = v127;
    v130 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v129, &v142, 1);
    v132 = objc_msgSend_initWithTitle_identifier_footer_options_(v128, v131, 0, @"CKSharingAllowAccessRequestsGroupID", 0, v130);

    objc_msgSend_addObject_(v3, v133, v132);
  }

  v134 = objc_msgSend_copy(v3, v116, v117);

  v135 = *MEMORY[0x1E69E9840];

  return v134;
}

- (BOOL)_optionsGroupsOnlyContainsSingleOptionInPermissionArrayAndWhoCanAccessArray:(id)array
{
  v36 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v4, &v31, v35, 16);
  if (v7)
  {
    v8 = 0;
    v30 = 0;
    v9 = *v32;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = objc_msgSend_identifier(v11, v5, v6);
        if (objc_msgSend_isEqualToString_(v12, v13, @"CKSharingPermissionGroupID"))
        {
          v16 = objc_msgSend_options(v11, v14, v15);
          v19 = objc_msgSend_count(v16, v17, v18);

          if (v19 == 1)
          {
            v30 = 1;
            continue;
          }
        }

        else
        {
        }

        v20 = objc_msgSend_identifier(v11, v5, v6);
        if (objc_msgSend_isEqualToString_(v20, v21, @"CKSharingWhoCanAccessGroupID"))
        {
          v24 = objc_msgSend_options(v11, v22, v23);
          v27 = objc_msgSend_count(v24, v25, v26) == 1;

          v8 |= v27;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v5, &v31, v35, 16);
      if (!v7)
      {
        LOBYTE(v7) = v30 & v8;
        break;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)collaborationOptionsGroupsFromAllowedOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mutableOptionsGroups = selfCopy->_mutableOptionsGroups;
  if (!mutableOptionsGroups)
  {
    v6 = objc_msgSend__uncachedCollaborationOptionsGroupsFromAllowedOptions(selfCopy, v3, v4);
    v7 = selfCopy->_mutableOptionsGroups;
    selfCopy->_mutableOptionsGroups = v6;

    mutableOptionsGroups = selfCopy->_mutableOptionsGroups;
  }

  v8 = mutableOptionsGroups;
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_resolveCollaborationOptionsGroupsForExistingShare:(id)share
{
  v99[1] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v7 = objc_msgSend_shareOptions(self, v5, v6);
  v10 = objc_msgSend_optionsGroups(v7, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  if (objc_msgSend_publicPermission(shareCopy, v14, v15) == 1)
  {
    objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v16, @"CKSharingAccessSpecifiedRecipientsOnlyOptionID", v13);
    v19 = objc_msgSend_participants(shareCopy, v17, v18);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22 >= 2)
    {
      if (objc_msgSend_allNonOwnerParticipantsHavePermission_(shareCopy, v23, 2))
      {
        objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v25, @"CKSharingPermissionViewOnlyOptionID", v13);
      }

      else if (objc_msgSend_allNonOwnerParticipantsHavePermission_(shareCopy, v25, 3))
      {
        objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v31, @"CKSharingPermissionCanMakeChangesOptionID", v13);
      }

      else
      {
        v32 = objc_alloc(MEMORY[0x1E697B708]);
        v39 = CKLocalizedString(@"COLLABORATION_OPTIONS_PERMISSION_MIXED", &stru_1EFA32970, v33, v34, v35, v36, v37, v38, v95);
        v41 = objc_msgSend_initWithTitle_identifier_selected_(v32, v40, v39, @"CKSharingPermissionMixedOptionID", 1);

        v99[0] = v41;
        v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v42, v99, 1);
        objc_msgSend__addOptions_toExistingGroupWithID_inOptionsGroups_(self, v44, v43, @"CKSharingPermissionGroupID", v13);
      }

      if (objc_msgSend_supportAllowingAddedParticipantsToInviteOthers(self, v26, v27))
      {
        if (objc_msgSend_allNonOwnerParticipantsHaveRole_(shareCopy, v45, 2))
        {
          objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v46, @"CKSharingAllowOthersToInviteOptionID", v13);
        }

        else
        {
          v47 = objc_alloc(MEMORY[0x1E697B708]);
          v54 = CKLocalizedString(@"COLLABORATION_OPTIONS_ADDING_PEOPLE_ONLY_YOU", &stru_1EFA32970, v48, v49, v50, v51, v52, v53, v95);
          v56 = objc_msgSend_initWithTitle_identifier_selected_(v47, v55, v54, @"CKSharingOnlyYouCanInviteOthersOptionID", 0);

          v57 = objc_alloc(MEMORY[0x1E697B708]);
          v64 = CKLocalizedString(@"COLLABORATION_OPTIONS_ADDING_PEOPLE_MIXED", &stru_1EFA32970, v58, v59, v60, v61, v62, v63, v96);
          v66 = objc_msgSend_initWithTitle_identifier_selected_(v57, v65, v64, @"CKSharingAllowOthersToInviteMixedOptionID", 1);

          v98[0] = v56;
          v98[1] = v66;
          v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v67, v98, 2);
          objc_msgSend__addOptions_toExistingGroupWithID_inOptionsGroups_(self, v69, v68, @"CKSharingAllowOthersToInviteGroupID", v13);
        }
      }

      else
      {
        objc_msgSend__removeOptionGroupWithID_fromOptionsGroups_(self, v45, @"CKSharingAllowOthersToInviteGroupID", v13);
      }
    }

    if (objc_msgSend_supportAllowingAccessRequests(self, v23, v24))
    {
      v71 = objc_alloc(MEMORY[0x1E697B708]);
      v78 = CKLocalizedString(@"COLLABORATION_OPTIONS_DISALLOW_ACCESS_REQUESTS_TITLE", &stru_1EFA32970, v72, v73, v74, v75, v76, v77, v95);
      v81 = objc_msgSend_allowsAccessRequests(shareCopy, v79, v80);
      v83 = objc_msgSend_initWithTitle_identifier_selected_(v71, v82, v78, @"CKSharingDisallowAccessRequestsOptionID", v81 ^ 1u);

      v97 = v83;
      v85 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v84, &v97, 1);
      objc_msgSend__addOptions_toExistingGroupWithID_inOptionsGroups_(self, v86, v85, @"CKSharingAllowAccessRequestsGroupID", v13);

      if (objc_msgSend_allowsAccessRequests(shareCopy, v87, v88))
      {
        objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v89, @"CKSharingAllowAccessRequestsOptionID", v13);
      }

      else
      {
        objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v89, @"CKSharingDisallowAccessRequestsOptionID", v13);
      }
    }

    else
    {
      objc_msgSend__removeOptionGroupWithID_fromOptionsGroups_(self, v70, @"CKSharingAllowAccessRequestsGroupID", v13);
    }
  }

  else
  {
    objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v16, @"CKSharingAccessAnyoneWithLinkOptionID", v13);
    if (objc_msgSend_publicPermission(shareCopy, v28, v29) == 3)
    {
      objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v30, @"CKSharingPermissionCanMakeChangesOptionID", v13);
    }

    else
    {
      objc_msgSend__selectOptionWithIdentifier_inGroups_(self, v30, @"CKSharingPermissionViewOnlyOptionID", v13);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mutableOptionsGroups = selfCopy->_mutableOptionsGroups;
  selfCopy->_mutableOptionsGroups = v13;
  v92 = v13;

  mutableShareOptions = selfCopy->_mutableShareOptions;
  selfCopy->_mutableShareOptions = 0;

  objc_sync_exit(selfCopy);
  v94 = *MEMORY[0x1E69E9840];
}

- (void)_selectOptionWithIdentifier:(id)identifier inGroups:(id)groups
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = groups;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v34, v39, 16);
  if (v28)
  {
    v27 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v9;
        v10 = *(*(&v34 + 1) + 8 * v9);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = objc_msgSend_options(v10, v7, v8);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v38, 16);
        if (v13)
        {
          v16 = v13;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v11);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              v20 = objc_msgSend_identifier(v19, v14, v15);
              isEqualToString = objc_msgSend_isEqualToString_(v20, v21, identifierCopy);

              if (isEqualToString)
              {
                objc_msgSend_setSelected_(v19, v14, 1);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = objc_msgSend_identifier(v19, v14, v15);
                  objc_msgSend_setSelectedOptionIdentifier_(v10, v24, v23);
                }
              }
            }

            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v30, v38, 16);
          }

          while (v16);
        }

        v9 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v34, v39, 16);
    }

    while (v28);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_removeOptionGroupWithID:(id)d fromOptionsGroups:(id)groups
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  groupsCopy = groups;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(groupsCopy, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(groupsCopy);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = objc_msgSend_identifier(v15, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(v16, v17, dCopy);

        if (isEqualToString)
        {
          v19 = v15;

          v12 = v19;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(groupsCopy, v9, &v21, v25, 16);
    }

    while (v11);
    if (v12)
    {
      objc_msgSend_removeObject_(groupsCopy, v9, v12);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_addOptions:(id)options toExistingGroupWithID:(id)d inOptionsGroups:(id)groups
{
  v75 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  dCopy = d;
  groupsCopy = groups;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(groupsCopy, v11, &v69, v74, 16);
  if (v12)
  {
    v15 = v12;
    v64 = optionsCopy;
    v16 = 0;
    v17 = *v70;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v70 != v17)
        {
          objc_enumerationMutation(groupsCopy);
        }

        v19 = *(*(&v69 + 1) + 8 * i);
        v20 = objc_msgSend_identifier(v19, v13, v14);
        isEqualToString = objc_msgSend_isEqualToString_(v20, v21, dCopy);

        if (isEqualToString)
        {
          v23 = v19;

          v16 = v23;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(groupsCopy, v13, &v69, v74, 16);
    }

    while (v15);
    optionsCopy = v64;
    if (v16)
    {
      v24 = objc_msgSend_title(v16, v13, v14);
      v27 = objc_msgSend_identifier(v16, v25, v26);
      v29 = objc_msgSend_isEqualToString_(v27, v28, @"CKSharingAllowOthersToInviteGroupID");

      if (v29 && (objc_msgSend__optionsGroupsOnlyContainsSingleOptionInPermissionArrayAndWhoCanAccessArray_(self, v30, groupsCopy) & 1) == 0)
      {
        v37 = CKLocalizedString(@"COLLABORATION_OPTIONS_ADDING_PEOPLE_TITLE", &stru_1EFA32970, v31, v32, v33, v34, v35, v36, v63);

        v24 = v37;
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v38 = v64;
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v65, v73, 16);
      if (v40)
      {
        v43 = v40;
        v44 = 0;
        v45 = *v66;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v66 != v45)
            {
              objc_enumerationMutation(v38);
            }

            v47 = *(*(&v65 + 1) + 8 * j);
            if (objc_msgSend_isSelected(v47, v41, v42))
            {
              v48 = v47;

              v44 = v48;
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v65, v73, 16);
        }

        while (v43);
      }

      else
      {
        v44 = 0;
      }

      v49 = objc_alloc(MEMORY[0x1E697B718]);
      v52 = objc_msgSend_options(v16, v50, v51);
      v54 = objc_msgSend_arrayByAddingObjectsFromArray_(v52, v53, v38);
      v56 = objc_msgSend_initWithTitle_identifier_footer_options_(v49, v55, v24, dCopy, 0, v54);

      if (v44)
      {
        v59 = objc_msgSend_identifier(v44, v57, v58);
        objc_msgSend_setSelectedOptionIdentifier_(v56, v60, v59);
      }

      objc_msgSend_removeObject_(groupsCopy, v57, v16);
      objc_msgSend_addObject_(groupsCopy, v61, v56);

      optionsCopy = v64;
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

+ (id)resolvedOptionsFromOptions:(id)options forExistingShare:(id)share
{
  shareCopy = share;
  v8 = objc_msgSend_copy(options, v6, v7);
  if (objc_msgSend_publicPermission(shareCopy, v9, v10) != 1)
  {
    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v8, v11, 0);
LABEL_9:
    objc_msgSend_setSupportAllowingAccessRequests_(v8, v18, 0);
    goto LABEL_10;
  }

  v13 = objc_msgSend_currentUserParticipant(shareCopy, v11, v12);
  v16 = objc_msgSend_role(v13, v14, v15);

  if ((v16 - 1) >= 2)
  {
    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v8, v17, 0);
  }

  if (objc_msgSend_allNonOwnerParticipantsHavePermission_(shareCopy, v17, 2))
  {
    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v8, v18, 0);
  }

  if ((v16 - 1) >= 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  objc_msgSend__resolveCollaborationOptionsGroupsForExistingShare_(v8, v18, shareCopy);

  return v8;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"UTCollaborationOptionsType";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v5, 1);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v8 = objc_opt_class();
  v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v9, v8, dataCopy, error);

  return v10;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"UTCollaborationOptionsType";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v5, 1);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = 0;
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v6, self, 1, &v10);
  v8 = v10;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7, v8);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_allowedParticipantPermissionOptions(self, v4, v5);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, v6, @"CKSharingAllowedParticipantPermissionOptionsKey");
  v10 = objc_msgSend_allowedParticipantAccessOptions(self, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, v10, @"CKSharingAllowedParticipantAccessOptionsKey");
  v14 = objc_msgSend_supportAllowingAddedParticipantsToInviteOthers(self, v12, v13);
  objc_msgSend_encodeBool_forKey_(coderCopy, v15, v14, @"CKSharingSupportAllowingAddedParticipantsToInviteOthersKey");
  v18 = objc_msgSend_shareOptions(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"CKSharingCollaborationShareOptionsKey");

  v22 = objc_msgSend_shareOptions(self, v20, v21);
  v25 = objc_msgSend_optionsGroups(v22, v23, v24);
  objc_msgSend_encodeObject_forKey_(coderCopy, v26, v25, @"CKSharingCollaborationOptionsGroupsKey");

  v29 = objc_msgSend_supportAllowingAccessRequests(self, v27, v28);
  objc_msgSend_encodeBool_forKey_(coderCopy, v30, v29, @"CKSharingSupportAllowingAccessRequestsKey");
}

- (CKAllowedSharingOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CKAllowedSharingOptions;
  v6 = [(CKAllowedSharingOptions *)&v25 init];
  if (v6)
  {
    v6->_allowedParticipantPermissionOptions = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"CKSharingAllowedParticipantPermissionOptionsKey");
    v6->_allowedParticipantAccessOptions = objc_msgSend_decodeIntegerForKey_(coderCopy, v7, @"CKSharingAllowedParticipantAccessOptionsKey");
    v6->_supportAllowingAddedParticipantsToInviteOthers = objc_msgSend_decodeBoolForKey_(coderCopy, v8, @"CKSharingSupportAllowingAddedParticipantsToInviteOthersKey");
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v10, v9, @"CKSharingCollaborationShareOptionsKey");
    mutableShareOptions = v6->_mutableShareOptions;
    v6->_mutableShareOptions = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v13, v18, v14, v15, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v20, v19, @"CKSharingCollaborationOptionsGroupsKey");
    mutableOptionsGroups = v6->_mutableOptionsGroups;
    v6->_mutableOptionsGroups = v21;

    v6->_supportAllowingAccessRequests = objc_msgSend_decodeBoolForKey_(coderCopy, v23, @"CKSharingSupportAllowingAccessRequestsKey");
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKAllowedSharingOptions);
  v4->_allowedParticipantPermissionOptions = objc_msgSend_allowedParticipantPermissionOptions(self, v5, v6);
  v4->_allowedParticipantAccessOptions = objc_msgSend_allowedParticipantAccessOptions(self, v7, v8);
  v4->_supportAllowingAddedParticipantsToInviteOthers = objc_msgSend_supportAllowingAddedParticipantsToInviteOthers(self, v9, v10);
  v13 = objc_msgSend_mutableShareOptions(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  mutableShareOptions = v4->_mutableShareOptions;
  v4->_mutableShareOptions = v16;

  v20 = objc_msgSend_mutableOptionsGroups(self, v18, v19);
  v23 = objc_msgSend_CKDeepCopy(v20, v21, v22);
  mutableOptionsGroups = v4->_mutableOptionsGroups;
  v4->_mutableOptionsGroups = v23;

  v4->_supportAllowingAccessRequests = objc_msgSend_supportAllowingAccessRequests(self, v25, v26);
  return v4;
}

@end