@interface PHLibraryScopeChangeRequest
+ (id)changeRequestForLibraryScope:(id)a3;
+ (id)creationRequestForOwnedLibraryScopeInPreviewStateWithTitle:(id)a3;
+ (void)_expungeLibraryScopes:(id)a3 ignorePhotosctlExpungeOverride:(BOOL)a4;
+ (void)trashLibraryScopes:(id)a3;
+ (void)untrashLibraryScopes:(id)a3;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSDate)creationDate;
- (NSString)title;
- (PHLibraryScope)originalLibraryScope;
- (PHLibraryScopeChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHLibraryScopeChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedLibraryScope;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)lastParticipantAssetTrashNotificationDate;
- (id)rulesData;
- (id)scopeIdentifier;
- (id)trashedDate;
- (int64_t)scopeType;
- (signed)autoSharePolicy;
- (signed)exitState;
- (signed)localPublishState;
- (signed)participantCloudUpdateState;
- (signed)previewState;
- (signed)scopeSyncingState;
- (signed)status;
- (void)_updateParticipantCloudUpdateStateIfNecessary;
- (void)addParticipants:(id)a3;
- (void)addPreviewAssetsSuggestedByPhotos:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)markAssetsAsRejectedByPhotosSuggester:(id)a3;
- (void)moveToPersonalLibrary:(id)a3;
- (void)moveToSharedLibrary:(id)a3;
- (void)rejectPreviewAssetsSuggestedByPhotos:(id)a3;
- (void)removeParticipants:(id)a3;
- (void)removePreviewAssetsSuggestedByPhotos:(id)a3;
- (void)setAutoSharePolicy:(signed __int16)a3;
- (void)setCreationDate:(id)a3;
- (void)setExitState:(signed __int16)a3;
- (void)setLastParticipantAssetTrashNotificationDate:(id)a3;
- (void)setLocalPublishState:(signed __int16)a3;
- (void)setParticipantCloudUpdateState:(signed __int16)a3;
- (void)setPreviewState:(signed __int16)a3;
- (void)setRulesData:(id)a3;
- (void)setScopeIdentifier:(id)a3;
- (void)setScopeSyncingState:(signed __int16)a3;
- (void)setScopeType:(int64_t)a3;
- (void)setStatus:(signed __int16)a3;
- (void)setTitle:(id)a3;
- (void)setTrashedDate:(id)a3;
- (void)unRejectPreviewAssetsSuggestedByPhotos:(id)a3;
- (void)updateWithCustomRules:(id)a3;
@end

@implementation PHLibraryScopeChangeRequest

- (PHLibraryScope)originalLibraryScope
{
  WeakRetained = objc_loadWeakRetained(&self->_originalLibraryScope);

  return WeakRetained;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v205[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(PHChangeRequest *)self helper];
  v178 = 0;
  v10 = [v9 applyMutationsToManagedObject:v7 error:&v178];
  v11 = v178;

  if (v10)
  {
    v12 = [(PHLibraryScopeChangeRequest *)self participantsAddedToLibraryScope];
    if ([v12 count])
    {
    }

    else
    {
      v13 = [(PHLibraryScopeChangeRequest *)self participantsRemovedFromLibraryScope];
      v14 = [v13 count];

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = MEMORY[0x1E69BE4E8];
    v16 = [(PHLibraryScopeChangeRequest *)self participantsAddedToLibraryScope];
    [v15 informRapportToAddShareParticipantUUIDs:v16 photoLibrary:v8];

    v17 = MEMORY[0x1E69BE4E8];
    v18 = [(PHLibraryScopeChangeRequest *)self participantsRemovedFromLibraryScope];
    v19 = [v8 libraryBundle];
    [v17 informRapportToRemoveShareParticipantUUIDs:v18 photoLibraryBundle:v19];
  }

LABEL_6:
  v20 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PHLibraryScopeChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke;
  aBlock[3] = &unk_1E75A82B0;
  v21 = v8;
  v177 = v21;
  v22 = _Block_copy(aBlock);
  if (!v10)
  {
    v97 = 0;
    goto LABEL_95;
  }

  v23 = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyAddedToLibraryScope];
  v24 = [v23 count];

  v144 = self;
  v145 = v22;
  if (v24)
  {
    v25 = MEMORY[0x1E69BE540];
    v26 = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyAddedToLibraryScope];
    v27 = [v25 assetsWithUUIDs:v26 options:1 inLibrary:v21];
    v28 = v22[2](v22, v27);

    v29 = [v20 currentUserParticipant];
    if (!v29)
    {
      v111 = MEMORY[0x1E696ABC0];
      v204 = *MEMORY[0x1E696A578];
      v205[0] = @"Attempting to move assets to a LibraryScope that doesn't have a current user participant. This is an invalid action.";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v205 forKeys:&v204 count:1];
      v110 = [v111 ph_errorWithDomain:@"PHPhotosErrorDomain" code:8506 userInfo:v30];
      goto LABEL_93;
    }

    v30 = v29;
    v143 = v21;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v28 = v28;
    v31 = [v28 countByEnumeratingWithState:&v172 objects:v203 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v173;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v173 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v172 + 1) + 8 * i);
          if (([v35 canPerformEditOperation:102] & 1) == 0)
          {
            v105 = MEMORY[0x1E696ABC0];
            v201 = *MEMORY[0x1E696A578];
            v106 = MEMORY[0x1E696AEC0];
            v107 = [v35 uuid];
            v108 = [v106 stringWithFormat:@"Attempting to move asset %@ that cannot be moved to shared library. Check with -[PHAsset canPerformEditOperation:PHAssetEditOperationMoveToSharedLibrary] first", v107];
            v202 = v108;
            v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
            v110 = [v105 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v109];

            v11 = v28;
            goto LABEL_86;
          }

          v36 = [MEMORY[0x1E695DFD8] setWithObject:v30];
          [v35 setLibraryScope:v20 withContributors:v36];

          [v35 libraryScopeShareState];
          PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue();
          PLLibraryScopeAssetResetValues();
          PLLibraryScopeAssetSetSuggestedByClientType();
          PLLibraryScopeAssetSetUserManuallyAddedState();
          [v20 libraryScopeIsActive];
          PLLibraryScopeAssetSetAddToSharedZoneState();
        }

        v32 = [v28 countByEnumeratingWithState:&v172 objects:v203 count:16];
      }

      while (v32);
    }

    self = v144;
  }

  v37 = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyRemovedFromLibraryScope];
  v38 = [v37 count];

  if (v38)
  {
    v39 = MEMORY[0x1E69BE540];
    v40 = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyRemovedFromLibraryScope];
    v143 = v21;
    v41 = [v39 assetsWithUUIDs:v40 options:1 inLibrary:v21];
    v42 = v145[2](v145, v41);

    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v30 = v42;
    v43 = [v30 countByEnumeratingWithState:&v168 objects:v200 count:16];
    if (!v43)
    {
      goto LABEL_27;
    }

    v44 = v43;
    v45 = *v169;
    while (1)
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v169 != v45)
        {
          objc_enumerationMutation(v30);
        }

        v47 = *(*(&v168 + 1) + 8 * j);
        if (![v47 canPerformEditOperation:103])
        {
          v112 = MEMORY[0x1E696ABC0];
          v198 = *MEMORY[0x1E696A578];
          v113 = MEMORY[0x1E696AEC0];
          v114 = [v47 uuid];
          v115 = [v113 stringWithFormat:@"Attempting to move asset %@ that cannot be moved to personal library. Check with -[PHAsset canPerformEditOperation:PHAssetEditOperationMoveToPersonalLibrary] first", v114];
          v199 = v115;
          v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
          v110 = [v112 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v116];

          v11 = v114;
          v28 = v30;
LABEL_86:
          self = v144;
LABEL_87:
          v21 = v143;
          goto LABEL_92;
        }

        [v47 removeLibraryScopeAndContributors];
        [v47 libraryScopeShareState];
        PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue();
        PLLibraryScopeAssetResetValues();
        PLLibraryScopeAssetSetSuggestedByClientType();
        PLLibraryScopeAssetSetUserManuallyRejectedState();
        PLLibraryScopeAssetSetAddToSharedZoneState();
      }

      v44 = [v30 countByEnumeratingWithState:&v168 objects:v200 count:16];
      if (!v44)
      {
LABEL_27:

        v21 = v143;
        self = v144;
        break;
      }
    }
  }

  v48 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedAddedToLibraryScope];
  v49 = [v48 count];

  if (v49)
  {
    v50 = MEMORY[0x1E69BE540];
    v51 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedAddedToLibraryScope];
    v52 = [v50 assetsWithUUIDs:v51 options:1 inLibrary:v21];
    v53 = v145[2](v145, v52);

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v30 = v53;
    v54 = [v30 countByEnumeratingWithState:&v164 objects:v197 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v165;
      do
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v165 != v56)
          {
            objc_enumerationMutation(v30);
          }

          v58 = *(*(&v164 + 1) + 8 * k);
          if (![v58 canPerformEditOperation:102])
          {
            v117 = MEMORY[0x1E696ABC0];
            v195 = *MEMORY[0x1E696A578];
            v118 = MEMORY[0x1E696AEC0];
            v119 = [v58 uuid];
            v120 = [v118 stringWithFormat:@"Attempting to move asset %@ that cannot be moved to shared library. Check with -[PHAsset canPerformEditOperation:PHAssetEditOperationMoveToSharedLibrary] first", v119];
            v196 = v120;
            v121 = MEMORY[0x1E695DF20];
            v122 = &v196;
            v123 = &v195;
            goto LABEL_91;
          }

          PLLibraryScopeAssetRemoveSuggestedByClientType();
          PLLibraryScopeAssetSetSuggestedByClientType();
          PLLibraryScopeAssetSetAddToSharedZoneState();
        }

        v55 = [v30 countByEnumeratingWithState:&v164 objects:v197 count:16];
      }

      while (v55);
    }

    self = v144;
  }

  v59 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRemovedFromLibraryScope];
  v60 = [v59 count];

  if (v60)
  {
    v61 = MEMORY[0x1E69BE540];
    v62 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRemovedFromLibraryScope];
    v63 = [v61 assetsWithUUIDs:v62 options:1 inLibrary:v21];
    v64 = v145[2](v145, v63);

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v30 = v64;
    v65 = [v30 countByEnumeratingWithState:&v160 objects:v194 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v161;
      do
      {
        for (m = 0; m != v66; ++m)
        {
          if (*v161 != v67)
          {
            objc_enumerationMutation(v30);
          }

          v69 = *(*(&v160 + 1) + 8 * m);
          [v69 libraryScopeShareState];
          if (PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue() == -1)
          {
            v117 = MEMORY[0x1E696ABC0];
            v192 = *MEMORY[0x1E696A578];
            v124 = MEMORY[0x1E696AEC0];
            v119 = [v69 uuid];
            v120 = [v124 stringWithFormat:@"Attempting to remove an asset %@ that is not in a suggested state", v119];
            v193 = v120;
            v121 = MEMORY[0x1E695DF20];
            v122 = &v193;
            v123 = &v192;
            goto LABEL_91;
          }

          PLLibraryScopeAssetRemoveSuggestedByClientType();
          PLLibraryScopeAssetSetAddToSharedZoneState();
        }

        v66 = [v30 countByEnumeratingWithState:&v160 objects:v194 count:16];
      }

      while (v66);
    }

    self = v144;
  }

  v70 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRejectedFromLibraryScope];
  v71 = [v70 count];

  if (!v71)
  {
    goto LABEL_58;
  }

  v72 = MEMORY[0x1E69BE540];
  v73 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRejectedFromLibraryScope];
  v74 = [v72 assetsWithUUIDs:v73 options:1 inLibrary:v21];
  v75 = v145[2](v145, v74);

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v30 = v75;
  v76 = [v30 countByEnumeratingWithState:&v156 objects:v191 count:16];
  if (!v76)
  {
    goto LABEL_57;
  }

  v77 = v76;
  v78 = *v157;
  do
  {
    for (n = 0; n != v77; ++n)
    {
      if (*v157 != v78)
      {
        objc_enumerationMutation(v30);
      }

      v80 = *(*(&v156 + 1) + 8 * n);
      [v80 libraryScopeShareState];
      if (PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue() == -1)
      {
        v117 = MEMORY[0x1E696ABC0];
        v189 = *MEMORY[0x1E696A578];
        v125 = MEMORY[0x1E696AEC0];
        v119 = [v80 uuid];
        v120 = [v125 stringWithFormat:@"Attempting to reject an asset %@ that is not in a suggested state", v119];
        v190 = v120;
        v121 = MEMORY[0x1E695DF20];
        v122 = &v190;
        v123 = &v189;
LABEL_91:
        v126 = [v121 dictionaryWithObjects:v122 forKeys:v123 count:1];
        v110 = [v117 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v126];

        v11 = v119;
        v28 = v30;
        self = v144;
LABEL_92:
        v22 = v145;
LABEL_93:

        v97 = 0;
        v11 = v110;
        goto LABEL_94;
      }

      PLLibraryScopeAssetSetUserManuallyRejectedState();
      PLLibraryScopeAssetSetAddToSharedZoneState();
    }

    v77 = [v30 countByEnumeratingWithState:&v156 objects:v191 count:16];
  }

  while (v77);
LABEL_57:

  self = v144;
LABEL_58:
  v81 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope];
  v82 = [v81 count];

  if (!v82)
  {
    goto LABEL_69;
  }

  v83 = MEMORY[0x1E69BE540];
  v84 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope];
  v85 = [v83 assetsWithUUIDs:v84 options:1 inLibrary:v21];
  v86 = v145[2](v145, v85);

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v30 = v86;
  v87 = [v30 countByEnumeratingWithState:&v152 objects:v188 count:16];
  if (!v87)
  {
    goto LABEL_68;
  }

  v88 = v87;
  v89 = *v153;
  v143 = v21;
  while (2)
  {
    v90 = self;
    v91 = 0;
    while (2)
    {
      if (*v153 != v89)
      {
        objc_enumerationMutation(v30);
      }

      v92 = *(*(&v152 + 1) + 8 * v91);
      [v92 libraryScopeShareState];
      if ((PLLibraryScopeAssetGetUserManuallyRejectedStateFromShareStateValue() & 1) == 0)
      {
        v132 = MEMORY[0x1E696ABC0];
        v186 = *MEMORY[0x1E696A578];
        v133 = MEMORY[0x1E696AEC0];
        v134 = [v92 uuid];
        v135 = [v133 stringWithFormat:@"Attempting to unreject an asset %@ that is not in a manually rejected state", v134];
        v187 = v135;
        v136 = MEMORY[0x1E695DF20];
        v137 = &v187;
        v138 = &v186;
LABEL_109:
        v142 = [v136 dictionaryWithObjects:v137 forKeys:v138 count:1];
        v110 = [v132 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v142];

        v11 = v134;
        v28 = v30;
        self = v90;
        goto LABEL_87;
      }

      if (PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue() == -1)
      {
        v132 = MEMORY[0x1E696ABC0];
        v184 = *MEMORY[0x1E696A578];
        v139 = MEMORY[0x1E696AEC0];
        v134 = [v92 uuid];
        v135 = [v139 stringWithFormat:@"Attempting to unreject an asset %@ that does not have a suggested bit set", v134];
        v185 = v135;
        v136 = MEMORY[0x1E695DF20];
        v137 = &v185;
        v138 = &v184;
        goto LABEL_109;
      }

      PLLibraryScopeAssetSetAddToSharedZoneState();
      PLLibraryScopeAssetSetUserManuallyRejectedState();
      if (v88 != ++v91)
      {
        continue;
      }

      break;
    }

    v88 = [v30 countByEnumeratingWithState:&v152 objects:v188 count:16];
    self = v90;
    v21 = v143;
    if (v88)
    {
      continue;
    }

    break;
  }

LABEL_68:

LABEL_69:
  v93 = [(PHLibraryScopeChangeRequest *)self assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope];
  v94 = [v93 count];

  if (v94)
  {
    v95 = MEMORY[0x1E69BE540];
    v96 = [(PHLibraryScopeChangeRequest *)self assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope];
    v97 = 1;
    v98 = [v95 assetsWithUUIDs:v96 options:1 inLibrary:v21];
    v99 = v145[2](v145, v98);

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v30 = v99;
    v100 = [v30 countByEnumeratingWithState:&v148 objects:v183 count:16];
    if (v100)
    {
      v101 = v100;
      v143 = v21;
      v90 = self;
      v102 = *v149;
      while (2)
      {
        for (ii = 0; ii != v101; ++ii)
        {
          if (*v149 != v102)
          {
            objc_enumerationMutation(v30);
          }

          v104 = *(*(&v148 + 1) + 8 * ii);
          [v104 libraryScopeShareState];
          if ((PLLibraryScopeAssetGetUserManuallyRejectedStateFromShareStateValue() & 1) != 0 || PLLibraryScopeAssetGetRejectedByPhotosSuggesterFromShareStateValue())
          {
            v132 = MEMORY[0x1E696ABC0];
            v181 = *MEMORY[0x1E696A578];
            v140 = MEMORY[0x1E696AEC0];
            v134 = [v104 uuid];
            v135 = [v140 stringWithFormat:@"PhotosSuggester is attempting to reject an asset %@ that is already in a rejected state", v134];
            v182 = v135;
            v136 = MEMORY[0x1E695DF20];
            v137 = &v182;
            v138 = &v181;
            goto LABEL_109;
          }

          if ((PLLibraryScopeAssetGetAddToSharedZoneStateFromShareStateValue() & 1) != 0 || [v104 hasLibraryScope])
          {
            v132 = MEMORY[0x1E696ABC0];
            v179 = *MEMORY[0x1E696A578];
            v141 = MEMORY[0x1E696AEC0];
            v134 = [v104 uuid];
            v135 = [v141 stringWithFormat:@"PhotosSuggester is attempting to reject an asset %@ that is already added to shared zone", v134];
            v180 = v135;
            v136 = MEMORY[0x1E695DF20];
            v137 = &v180;
            v138 = &v179;
            goto LABEL_109;
          }

          PLLibraryScopeAssetRemoveSuggestedByClientType();
          PLLibraryScopeAssetSetAddToSharedZoneState();
          PLLibraryScopeAssetSetUserManuallyRejectedState();
          PLLibraryScopeAssetSetPhotosSuggesterRejectedState();
        }

        v101 = [v30 countByEnumeratingWithState:&v148 objects:v183 count:16];
        v97 = 1;
        if (v101)
        {
          continue;
        }

        break;
      }

      v28 = v30;
      self = v90;
      v21 = v143;
    }

    else
    {
      v28 = v30;
    }

    v22 = v145;
LABEL_94:
  }

  else
  {
    v97 = 1;
    v22 = v145;
  }

LABEL_95:

  if (v97)
  {
    v127 = [(PHLibraryScopeChangeRequest *)self participantsHelper];
    v147 = v11;
    v128 = [v127 applyMutationsToManagedObject:v20 error:&v147];
    v129 = v147;

    v11 = v129;
  }

  else
  {
    v128 = 0;
  }

  if (a5 && (v128 & 1) == 0)
  {
    v130 = v11;
    *a5 = v11;
  }

  return v128;
}

id __80__PHLibraryScopeChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v4 addObject:{v10, v17}];
        if ([v10 isPartOfBurst])
        {
          v11 = MEMORY[0x1E69BE2B0];
          v12 = [v10 avalancheUUID];
          v13 = [*(a1 + 32) managedObjectContext];
          v14 = [v11 assetsWithAvalancheUUID:v12 sourceType:1 inManagedObjectContext:v13];

          [v4 addObjectsFromArray:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 allObjects];

  return v15;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v49[13] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v40 = 0;
  v11 = [v10 allowMutationToManagedObject:v8 propertyKey:v9 error:&v40];
  v12 = v40;

  if (v11)
  {
    v49[0] = @"title";
    v49[1] = @"autoSharePolicy";
    v49[2] = @"rulesData";
    v49[3] = @"participantCloudUpdateState";
    v49[4] = @"scopeSyncingState";
    v49[5] = @"status";
    v49[6] = @"scopeType";
    v49[7] = @"localPublishState";
    v49[8] = @"scopeIdentifier";
    v49[9] = @"previewState";
    v49[10] = @"exitState";
    v49[11] = @"trashedDate";
    v49[12] = @"lastParticipantAssetTrashNotificationDate";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:13];
    if (-[PHChangeRequest isNewRequest](self, "isNewRequest") || ([v13 containsObject:v9] & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on key %@", v9];
      v48 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v17];

      v14 = 0;
      v12 = v18;
    }
  }

  else
  {
    v14 = 0;
  }

  if (([v9 isEqualToString:@"autoSharePolicy"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"rulesData"))
  {
    v19 = v8;
    v20 = [(PHChangeRequest *)self helper];
    v21 = [v20 mutations];
    v22 = [v21 objectForKey:@"autoSharePolicy"];

    if (v22)
    {
      v23 = [v22 intValue];
    }

    else
    {
      v23 = [v19 autoSharePolicy];
    }

    if (v23 == 2 && v14)
    {
      v25 = [(PHLibraryScopeChangeRequest *)self rulesData];

      if (!v25)
      {
        v26 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E696A578];
        v46 = @"AutoSharePolicy set to CustomRuleShare but customRulesData is NOT set. This is an invalid configuration. Use updateWithCustomRules: to add custom rules.";
        v27 = MEMORY[0x1E695DF20];
        v28 = &v46;
        v29 = &v45;
LABEL_25:
        v32 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
        v33 = [v26 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v32];

        v12 = v32;
LABEL_26:

        LOBYTE(v14) = 0;
        v12 = v33;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      if (v23 == 2 || !v14)
      {
        goto LABEL_28;
      }

      v31 = [(PHLibraryScopeChangeRequest *)self rulesData];

      if (v31)
      {
        v26 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A578];
        v44 = @"AutoSharePolicy NOT set to CustomRuleShare but customRulesData is set. This is an invalid configuration. Use updateWithCustomRules: to remove all rules.";
        v27 = MEMORY[0x1E695DF20];
        v28 = &v44;
        v29 = &v43;
        goto LABEL_25;
      }
    }

    LOBYTE(v14) = 1;
    goto LABEL_28;
  }

  if (![v9 isEqualToString:@"previewState"])
  {
    goto LABEL_30;
  }

  v36 = v8;
  v37 = [v36 status] == 2 && objc_msgSend(v36, "localPublishState") == 2;
  v38 = [v36 status] == 1 && objc_msgSend(v36, "localPublishState") == 0;
  if (!v37 && v14 && !v38)
  {
    v39 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42 = @"Unable to set previewState on a LibraryScope that's not in pending intiviation state.";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v33 = [v39 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v22];
    goto LABEL_26;
  }

LABEL_29:

LABEL_30:
  if (a5 && !v14)
  {
    v34 = v12;
    *a5 = v12;
  }

  return v14;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69BE4E8];
  v7 = a3;
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [(PHLibraryScopeChangeRequest *)self creationDate];
  v10 = [(PHLibraryScopeChangeRequest *)self title];
  v11 = [v6 createOwnedShareWithUUID:v8 creationDate:v9 title:v10 unitTestMode:self->_runningAsUnitTest inPhotoLibrary:v7];

  if (a4 && !v11)
  {
    *a4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v11;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__30917;
  v26 = __Block_byref_object_dispose__30918;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v8 = 1;
  v21 = 1;
  if (!self->_runningAsUnitTest)
  {
    if (([v6 isCloudPhotoLibraryEnabled] & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
    {
      *(v19 + 24) = 0;
      v9 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29[0] = @"Unable to insert a new LibraryScope since iCPL is disabled";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v11 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v10];
      v12 = v23[5];
      v23[5] = v11;
    }

    if (*(v19 + 24) == 1)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __68__PHLibraryScopeChangeRequest_validateInsertIntoPhotoLibrary_error___block_invoke;
      v14[3] = &unk_1E75AA678;
      v15 = v7;
      v16 = &v18;
      v17 = &v22;
      [v15 performBlockAndWait:v14];

      v8 = *(v19 + 24);
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    if ((v8 & 1) == 0)
    {
      *a4 = v23[5];
      v8 = *(v19 + 24);
    }
  }

LABEL_11:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v8 & 1;
}

void __68__PHLibraryScopeChangeRequest_validateInsertIntoPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE4E8];
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v4 = [*(a1 + 32) managedObjectContext];
  v5 = [v2 sharesWithPredicate:v3 fetchLimit:0 inManagedObjectContext:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 status] == 1 || objc_msgSend(v11, "status") == 3)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          v12 = MEMORY[0x1E696ABC0];
          v21 = *MEMORY[0x1E696A578];
          v22 = @"Unable to insert a new LibraryScope as a owned or accepted LibraryScope already exists";
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          v14 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v13];
          v15 = *(*(a1 + 48) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v14;

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)updateWithCustomRules:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [v6 _pl_map:&__block_literal_global_30928];
    v5 = [MEMORY[0x1E69BE508] dataForLibraryScopeRules:v4];
    [(PHLibraryScopeChangeRequest *)self setRulesData:v5];
  }

  else
  {
    [(PHLibraryScopeChangeRequest *)self setRulesData:0];
  }
}

- (void)removeParticipants:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHLibraryScopeChangeRequest *)self participantsHelper];
  [v5 removeParticipants:v4 toChangeRequest:self];

  [(PHLibraryScopeChangeRequest *)self _updateParticipantCloudUpdateStateIfNecessary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        participantsRemovedFromLibraryScope = self->_participantsRemovedFromLibraryScope;
        v12 = [*(*(&v15 + 1) + 8 * v10) uuid];
        v13 = [(NSArray *)participantsRemovedFromLibraryScope arrayByAddingObject:v12];
        v14 = self->_participantsRemovedFromLibraryScope;
        self->_participantsRemovedFromLibraryScope = v13;

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [PHShareParticipantChangeRequest deleteShareParticipants:v6];
}

- (void)addParticipants:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHLibraryScopeChangeRequest *)self participantsHelper];
  [v5 addParticipants:v4 toChangeRequest:self];

  [(PHLibraryScopeChangeRequest *)self _updateParticipantCloudUpdateStateIfNecessary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        participantsAddedToLibraryScope = self->_participantsAddedToLibraryScope;
        v12 = [*(*(&v15 + 1) + 8 * v10) uuid];
        v13 = [(NSArray *)participantsAddedToLibraryScope arrayByAddingObject:v12];
        v14 = self->_participantsAddedToLibraryScope;
        self->_participantsAddedToLibraryScope = v13;

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_updateParticipantCloudUpdateStateIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_originalLibraryScope);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_originalLibraryScope);
    v6 = [v5 publishState];

    if (v6 == 2)
    {

      [(PHLibraryScopeChangeRequest *)self setParticipantCloudUpdateState:1];
    }
  }
}

- (void)markAssetsAsRejectedByPhotosSuggester:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = self->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope;
    self->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)unRejectPreviewAssetsSuggestedByPhotos:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = self->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope;
    self->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)rejectPreviewAssetsSuggestedByPhotos:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsPhotosSuggestedRejectedFromLibraryScope = self->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope;
    self->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)removePreviewAssetsSuggestedByPhotos:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsPhotosSuggestedRemovedFromLibraryScope = self->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope;
    self->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)addPreviewAssetsSuggestedByPhotos:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsPhotosSuggestedAddedToLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsPhotosSuggestedAddedToLibraryScope = self->_assetUUIDsPhotosSuggestedAddedToLibraryScope;
    self->_assetUUIDsPhotosSuggestedAddedToLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)moveToPersonalLibrary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsManuallyRemovedFromLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsManuallyRemovedFromLibraryScope = self->_assetUUIDsManuallyRemovedFromLibraryScope;
    self->_assetUUIDsManuallyRemovedFromLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)moveToSharedLibrary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:v11];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [(NSArray *)self->_assetUUIDsManuallyAddedToLibraryScope arrayByAddingObjectsFromArray:v5];
    assetUUIDsManuallyAddedToLibraryScope = self->_assetUUIDsManuallyAddedToLibraryScope;
    self->_assetUUIDsManuallyAddedToLibraryScope = v13;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)setAutoSharePolicy:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];
  [v8 setObject:v6 forKeyedSubscript:@"autoSharePolicy"];

  if (v3 != 2)
  {

    [(PHLibraryScopeChangeRequest *)self updateWithCustomRules:0];
  }
}

- (signed)autoSharePolicy
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"autoSharePolicy"];

  if (v5)
  {
    v6 = [v5 intValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_originalLibraryScope);
    v6 = [WeakRetained autoSharePolicy];
  }

  return v6;
}

- (void)setExitState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"exitState"];
}

- (signed)exitState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"exitState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setLocalPublishState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"localPublishState"];
}

- (signed)localPublishState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"localPublishState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setScopeType:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"scopeType"];
}

- (int64_t)scopeType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"scopeType"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setStatus:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"status"];
}

- (signed)status
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"status"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setScopeSyncingState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"scopeSyncingState"];
}

- (signed)scopeSyncingState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"scopeSyncingState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setPreviewState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"previewState"];
}

- (signed)previewState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"previewState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setParticipantCloudUpdateState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"participantCloudUpdateState"];
}

- (signed)participantCloudUpdateState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"participantCloudUpdateState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setLastParticipantAssetTrashNotificationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"lastParticipantAssetTrashNotificationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"lastParticipantAssetTrashNotificationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"lastParticipantAssetTrashNotificationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"lastParticipantAssetTrashNotificationDate"];
  }
}

- (id)lastParticipantAssetTrashNotificationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"lastParticipantAssetTrashNotificationDate"];

  return v5;
}

- (void)setTrashedDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"trashedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"trashedDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"trashedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"trashedDate"];
  }
}

- (id)trashedDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"trashedDate"];

  return v5;
}

- (void)setScopeIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"scopeIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"scopeIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"scopeIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"scopeIdentifier"];
  }
}

- (id)scopeIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"scopeIdentifier"];

  return v5;
}

- (void)setRulesData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"rulesData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"rulesData"];
  }

  else
  {
    [v6 removeObjectForKey:@"rulesData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"rulesData"];
  }
}

- (id)rulesData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"rulesData"];

  return v5;
}

- (void)setCreationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"creationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationDate"];

  return v5;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedLibraryScope
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

  v5 = [(PHLibraryScopeChangeRequest *)self participantsHelper];
  [v5 encodeToXPCDict:xdict];

  xpc_dictionary_set_BOOL(xdict, "runningAsUnitTest", self->_runningAsUnitTest);
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
  PLXPCDictionarySetArray();
}

- (PHLibraryScopeChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v34 = a4;
  v33 = a5;
  v35.receiver = self;
  v35.super_class = PHLibraryScopeChangeRequest;
  v9 = [(PHChangeRequest *)&v35 init];
  if (v9)
  {
    v10 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v9 request:v34 clientAuthorization:v33];
    helper = v9->super._helper;
    v9->super._helper = v10;

    v12 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" xpcDict:v8 changeRequestHelper:v9->super._helper];
    participantsHelper = v9->_participantsHelper;
    v9->_participantsHelper = v12;

    v9->_runningAsUnitTest = xpc_dictionary_get_BOOL(v8, "runningAsUnitTest");
    v14 = PLArrayFromXPCDictionary();
    assetUUIDsManuallyAddedToLibraryScope = v9->_assetUUIDsManuallyAddedToLibraryScope;
    v9->_assetUUIDsManuallyAddedToLibraryScope = v14;

    v16 = PLArrayFromXPCDictionary();
    assetUUIDsManuallyRemovedFromLibraryScope = v9->_assetUUIDsManuallyRemovedFromLibraryScope;
    v9->_assetUUIDsManuallyRemovedFromLibraryScope = v16;

    v18 = PLArrayFromXPCDictionary();
    assetUUIDsPhotosSuggestedAddedToLibraryScope = v9->_assetUUIDsPhotosSuggestedAddedToLibraryScope;
    v9->_assetUUIDsPhotosSuggestedAddedToLibraryScope = v18;

    v20 = PLArrayFromXPCDictionary();
    assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v9->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope;
    v9->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v20;

    v22 = PLArrayFromXPCDictionary();
    assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v9->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope;
    v9->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v22;

    v24 = PLArrayFromXPCDictionary();
    assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v9->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope;
    v9->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v24;

    v26 = PLArrayFromXPCDictionary();
    assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v9->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope;
    v9->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v26;

    v28 = PLArrayFromXPCDictionary();
    participantsAddedToLibraryScope = v9->_participantsAddedToLibraryScope;
    v9->_participantsAddedToLibraryScope = v28;

    v30 = PLArrayFromXPCDictionary();
    participantsRemovedFromLibraryScope = v9->_participantsRemovedFromLibraryScope;
    v9->_participantsRemovedFromLibraryScope = v30;

    if (v9->_runningAsUnitTest || v9->_assetUUIDsManuallyAddedToLibraryScope || v9->_assetUUIDsManuallyRemovedFromLibraryScope || v9->_assetUUIDsPhotosSuggestedAddedToLibraryScope || v9->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope || v9->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope || v9->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope || v9->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope || v9->_participantsAddedToLibraryScope || v9->_participantsRemovedFromLibraryScope)
    {
      [(PHChangeRequestHelper *)v9->super._helper setMutated:1, 64];
      [v34 recordUpdateRequest:v9];
    }
  }

  return v9;
}

- (PHLibraryScopeChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PHLibraryScopeChangeRequest;
  v8 = [(PHChangeRequest *)&v24 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" changeRequestHelper:v8->super._helper];
    participantsHelper = v8->_participantsHelper;
    v8->_participantsHelper = v11;

    v8->_runningAsUnitTest = MEMORY[0x19EAF1E50]();
    assetUUIDsManuallyAddedToLibraryScope = v8->_assetUUIDsManuallyAddedToLibraryScope;
    v14 = MEMORY[0x1E695E0F0];
    v8->_assetUUIDsManuallyAddedToLibraryScope = MEMORY[0x1E695E0F0];

    assetUUIDsManuallyRemovedFromLibraryScope = v8->_assetUUIDsManuallyRemovedFromLibraryScope;
    v8->_assetUUIDsManuallyRemovedFromLibraryScope = v14;

    assetUUIDsPhotosSuggestedAddedToLibraryScope = v8->_assetUUIDsPhotosSuggestedAddedToLibraryScope;
    v8->_assetUUIDsPhotosSuggestedAddedToLibraryScope = v14;

    assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v8->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope;
    v8->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v14;

    assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v8->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope;
    v8->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v14;

    assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v8->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope;
    v8->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v14;

    assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v8->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope;
    v8->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v14;

    participantsAddedToLibraryScope = v8->_participantsAddedToLibraryScope;
    v8->_participantsAddedToLibraryScope = v14;

    participantsRemovedFromLibraryScope = v8->_participantsRemovedFromLibraryScope;
    v8->_participantsRemovedFromLibraryScope = v14;
  }

  return v8;
}

- (id)initForNewObject
{
  v18.receiver = self;
  v18.super_class = PHLibraryScopeChangeRequest;
  v2 = [(PHChangeRequest *)&v18 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" changeRequestHelper:v2->super._helper];
    participantsHelper = v2->_participantsHelper;
    v2->_participantsHelper = v5;

    v2->_runningAsUnitTest = MEMORY[0x19EAF1E50]();
    assetUUIDsManuallyAddedToLibraryScope = v2->_assetUUIDsManuallyAddedToLibraryScope;
    v8 = MEMORY[0x1E695E0F0];
    v2->_assetUUIDsManuallyAddedToLibraryScope = MEMORY[0x1E695E0F0];

    assetUUIDsManuallyRemovedFromLibraryScope = v2->_assetUUIDsManuallyRemovedFromLibraryScope;
    v2->_assetUUIDsManuallyRemovedFromLibraryScope = v8;

    assetUUIDsPhotosSuggestedAddedToLibraryScope = v2->_assetUUIDsPhotosSuggestedAddedToLibraryScope;
    v2->_assetUUIDsPhotosSuggestedAddedToLibraryScope = v8;

    assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v2->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope;
    v2->_assetUUIDsPhotosSuggestedRemovedFromLibraryScope = v8;

    assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v2->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope;
    v2->_assetUUIDsPhotosSuggestedRejectedFromLibraryScope = v8;

    assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v2->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope;
    v2->_assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = v8;

    assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v2->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope;
    v2->_assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = v8;

    participantsAddedToLibraryScope = v2->_participantsAddedToLibraryScope;
    v2->_participantsAddedToLibraryScope = v8;

    participantsRemovedFromLibraryScope = v2->_participantsRemovedFromLibraryScope;
    v2->_participantsRemovedFromLibraryScope = v8;
  }

  return v2;
}

+ (void)_expungeLibraryScopes:(id)a3 ignorePhotosctlExpungeOverride:(BOOL)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  +[PHPhotoLibrary assertTransaction];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = MEMORY[0x1E695DF30];
          v20 = *MEMORY[0x1E695D940];
          v21 = MEMORY[0x1E696AEC0];
          v22 = NSStringFromSelector(a2);
          v23 = [v21 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHLibraryScope", v12, v22];
          v24 = [v19 exceptionWithName:v20 reason:v23 userInfo:0];
          v25 = v24;

          objc_exception_throw(v24);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PHObjectDeleteRequest *)PHLibraryScopeDeleteRequest deleteRequestForObject:*(*(&v26 + 1) + 8 * j)];
        [v18 setOperation:2];
        if (PLIsInternalTool() && !a4)
        {
          [v18 setPhotosctlExpungeOverride:1];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }
}

+ (void)untrashLibraryScopes:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = MEMORY[0x1E695DF30];
          v18 = *MEMORY[0x1E695D940];
          v19 = MEMORY[0x1E696AEC0];
          v20 = NSStringFromSelector(a2);
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHLibraryScope", v10, v20];
          v22 = [v17 exceptionWithName:v18 reason:v21 userInfo:0];
          v23 = v22;

          objc_exception_throw(v22);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(PHObjectDeleteRequest *)PHLibraryScopeDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:1];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (void)trashLibraryScopes:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = MEMORY[0x1E695DF30];
          v18 = *MEMORY[0x1E695D940];
          v19 = MEMORY[0x1E696AEC0];
          v20 = NSStringFromSelector(a2);
          v21 = [v19 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type PHLibraryScope", v10, v20];
          v22 = [v17 exceptionWithName:v18 reason:v21 userInfo:0];
          v23 = v22;

          objc_exception_throw(v22);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(PHObjectDeleteRequest *)PHLibraryScopeDeleteRequest deleteRequestForObject:*(*(&v24 + 1) + 8 * j)];
        [v16 setOperation:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }
}

+ (id)creationRequestForOwnedLibraryScopeInPreviewStateWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[PHLibraryScopeChangeRequest alloc] initForNewObject];
  [v4 setTitle:v3];

  v5 = [MEMORY[0x1E695DF00] date];
  [v4 setCreationDate:v5];

  [v4 setPreviewState:1];

  return v4;
}

+ (id)changeRequestForLibraryScope:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHLibraryScopeChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHLibraryScopeChangeRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHLibraryScopeChangeRequest *)v7 setOriginalLibraryScope:v3];
    v8 = [(PHLibraryScopeChangeRequest *)v7 participantsHelper];
    [v8 setOriginalShare:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end