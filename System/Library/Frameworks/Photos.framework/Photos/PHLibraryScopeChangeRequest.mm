@interface PHLibraryScopeChangeRequest
+ (id)changeRequestForLibraryScope:(id)scope;
+ (id)creationRequestForOwnedLibraryScopeInPreviewStateWithTitle:(id)title;
+ (void)_expungeLibraryScopes:(id)scopes ignorePhotosctlExpungeOverride:(BOOL)override;
+ (void)trashLibraryScopes:(id)scopes;
+ (void)untrashLibraryScopes:(id)scopes;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSDate)creationDate;
- (NSString)title;
- (PHLibraryScope)originalLibraryScope;
- (PHLibraryScopeChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHLibraryScopeChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedLibraryScope;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
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
- (void)addParticipants:(id)participants;
- (void)addPreviewAssetsSuggestedByPhotos:(id)photos;
- (void)encodeToXPCDict:(id)dict;
- (void)markAssetsAsRejectedByPhotosSuggester:(id)suggester;
- (void)moveToPersonalLibrary:(id)library;
- (void)moveToSharedLibrary:(id)library;
- (void)rejectPreviewAssetsSuggestedByPhotos:(id)photos;
- (void)removeParticipants:(id)participants;
- (void)removePreviewAssetsSuggestedByPhotos:(id)photos;
- (void)setAutoSharePolicy:(signed __int16)policy;
- (void)setCreationDate:(id)date;
- (void)setExitState:(signed __int16)state;
- (void)setLastParticipantAssetTrashNotificationDate:(id)date;
- (void)setLocalPublishState:(signed __int16)state;
- (void)setParticipantCloudUpdateState:(signed __int16)state;
- (void)setPreviewState:(signed __int16)state;
- (void)setRulesData:(id)data;
- (void)setScopeIdentifier:(id)identifier;
- (void)setScopeSyncingState:(signed __int16)state;
- (void)setScopeType:(int64_t)type;
- (void)setStatus:(signed __int16)status;
- (void)setTitle:(id)title;
- (void)setTrashedDate:(id)date;
- (void)unRejectPreviewAssetsSuggestedByPhotos:(id)photos;
- (void)updateWithCustomRules:(id)rules;
@end

@implementation PHLibraryScopeChangeRequest

- (PHLibraryScope)originalLibraryScope
{
  WeakRetained = objc_loadWeakRetained(&self->_originalLibraryScope);

  return WeakRetained;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v205[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v178 = 0;
  v10 = [helper applyMutationsToManagedObject:objectCopy error:&v178];
  v11 = v178;

  if (v10)
  {
    participantsAddedToLibraryScope = [(PHLibraryScopeChangeRequest *)self participantsAddedToLibraryScope];
    if ([participantsAddedToLibraryScope count])
    {
    }

    else
    {
      participantsRemovedFromLibraryScope = [(PHLibraryScopeChangeRequest *)self participantsRemovedFromLibraryScope];
      v14 = [participantsRemovedFromLibraryScope count];

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = MEMORY[0x1E69BE4E8];
    participantsAddedToLibraryScope2 = [(PHLibraryScopeChangeRequest *)self participantsAddedToLibraryScope];
    [v15 informRapportToAddShareParticipantUUIDs:participantsAddedToLibraryScope2 photoLibrary:libraryCopy];

    v17 = MEMORY[0x1E69BE4E8];
    participantsRemovedFromLibraryScope2 = [(PHLibraryScopeChangeRequest *)self participantsRemovedFromLibraryScope];
    libraryBundle = [libraryCopy libraryBundle];
    [v17 informRapportToRemoveShareParticipantUUIDs:participantsRemovedFromLibraryScope2 photoLibraryBundle:libraryBundle];
  }

LABEL_6:
  v20 = objectCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PHLibraryScopeChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke;
  aBlock[3] = &unk_1E75A82B0;
  v21 = libraryCopy;
  v177 = v21;
  v22 = _Block_copy(aBlock);
  if (!v10)
  {
    v97 = 0;
    goto LABEL_95;
  }

  assetUUIDsManuallyAddedToLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyAddedToLibraryScope];
  v24 = [assetUUIDsManuallyAddedToLibraryScope count];

  selfCopy = self;
  v145 = v22;
  if (v24)
  {
    v25 = MEMORY[0x1E69BE540];
    assetUUIDsManuallyAddedToLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyAddedToLibraryScope];
    v27 = [v25 assetsWithUUIDs:assetUUIDsManuallyAddedToLibraryScope2 options:1 inLibrary:v21];
    v28 = v22[2](v22, v27);

    currentUserParticipant = [v20 currentUserParticipant];
    if (!currentUserParticipant)
    {
      v111 = MEMORY[0x1E696ABC0];
      v204 = *MEMORY[0x1E696A578];
      v205[0] = @"Attempting to move assets to a LibraryScope that doesn't have a current user participant. This is an invalid action.";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v205 forKeys:&v204 count:1];
      v110 = [v111 ph_errorWithDomain:@"PHPhotosErrorDomain" code:8506 userInfo:v30];
      goto LABEL_93;
    }

    v30 = currentUserParticipant;
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
            uuid = [v35 uuid];
            v107 = [v106 stringWithFormat:@"Attempting to move asset %@ that cannot be moved to shared library. Check with -[PHAsset canPerformEditOperation:PHAssetEditOperationMoveToSharedLibrary] first", uuid];
            v202 = v107;
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

    self = selfCopy;
  }

  assetUUIDsManuallyRemovedFromLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyRemovedFromLibraryScope];
  v38 = [assetUUIDsManuallyRemovedFromLibraryScope count];

  if (v38)
  {
    v39 = MEMORY[0x1E69BE540];
    assetUUIDsManuallyRemovedFromLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsManuallyRemovedFromLibraryScope];
    v143 = v21;
    v41 = [v39 assetsWithUUIDs:assetUUIDsManuallyRemovedFromLibraryScope2 options:1 inLibrary:v21];
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
          uuid2 = [v47 uuid];
          v114 = [v113 stringWithFormat:@"Attempting to move asset %@ that cannot be moved to personal library. Check with -[PHAsset canPerformEditOperation:PHAssetEditOperationMoveToPersonalLibrary] first", uuid2];
          v199 = v114;
          v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
          v110 = [v112 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v116];

          v11 = uuid2;
          v28 = v30;
LABEL_86:
          self = selfCopy;
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
        self = selfCopy;
        break;
      }
    }
  }

  assetUUIDsPhotosSuggestedAddedToLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedAddedToLibraryScope];
  v49 = [assetUUIDsPhotosSuggestedAddedToLibraryScope count];

  if (v49)
  {
    v50 = MEMORY[0x1E69BE540];
    assetUUIDsPhotosSuggestedAddedToLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedAddedToLibraryScope];
    v52 = [v50 assetsWithUUIDs:assetUUIDsPhotosSuggestedAddedToLibraryScope2 options:1 inLibrary:v21];
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
            uuid3 = [v58 uuid];
            v119 = [v118 stringWithFormat:@"Attempting to move asset %@ that cannot be moved to shared library. Check with -[PHAsset canPerformEditOperation:PHAssetEditOperationMoveToSharedLibrary] first", uuid3];
            v196 = v119;
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

    self = selfCopy;
  }

  assetUUIDsPhotosSuggestedRemovedFromLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRemovedFromLibraryScope];
  v60 = [assetUUIDsPhotosSuggestedRemovedFromLibraryScope count];

  if (v60)
  {
    v61 = MEMORY[0x1E69BE540];
    assetUUIDsPhotosSuggestedRemovedFromLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRemovedFromLibraryScope];
    v63 = [v61 assetsWithUUIDs:assetUUIDsPhotosSuggestedRemovedFromLibraryScope2 options:1 inLibrary:v21];
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
            uuid3 = [v69 uuid];
            v119 = [v124 stringWithFormat:@"Attempting to remove an asset %@ that is not in a suggested state", uuid3];
            v193 = v119;
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

    self = selfCopy;
  }

  assetUUIDsPhotosSuggestedRejectedFromLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRejectedFromLibraryScope];
  v71 = [assetUUIDsPhotosSuggestedRejectedFromLibraryScope count];

  if (!v71)
  {
    goto LABEL_58;
  }

  v72 = MEMORY[0x1E69BE540];
  assetUUIDsPhotosSuggestedRejectedFromLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedRejectedFromLibraryScope];
  v74 = [v72 assetsWithUUIDs:assetUUIDsPhotosSuggestedRejectedFromLibraryScope2 options:1 inLibrary:v21];
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
        uuid3 = [v80 uuid];
        v119 = [v125 stringWithFormat:@"Attempting to reject an asset %@ that is not in a suggested state", uuid3];
        v190 = v119;
        v121 = MEMORY[0x1E695DF20];
        v122 = &v190;
        v123 = &v189;
LABEL_91:
        v126 = [v121 dictionaryWithObjects:v122 forKeys:v123 count:1];
        v110 = [v117 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v126];

        v11 = uuid3;
        v28 = v30;
        self = selfCopy;
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

  self = selfCopy;
LABEL_58:
  assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope];
  v82 = [assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope count];

  if (!v82)
  {
    goto LABEL_69;
  }

  v83 = MEMORY[0x1E69BE540];
  assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope];
  v85 = [v83 assetsWithUUIDs:assetUUIDsPhotosSuggestedUnRejectedFromLibraryScope2 options:1 inLibrary:v21];
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
    selfCopy3 = self;
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
        uuid4 = [v92 uuid];
        v134 = [v133 stringWithFormat:@"Attempting to unreject an asset %@ that is not in a manually rejected state", uuid4];
        v187 = v134;
        v136 = MEMORY[0x1E695DF20];
        v137 = &v187;
        v138 = &v186;
LABEL_109:
        v142 = [v136 dictionaryWithObjects:v137 forKeys:v138 count:1];
        v110 = [v132 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v142];

        v11 = uuid4;
        v28 = v30;
        self = selfCopy3;
        goto LABEL_87;
      }

      if (PLLibraryScopeAssetGetSuggestedByClientTypeFromShareStateValue() == -1)
      {
        v132 = MEMORY[0x1E696ABC0];
        v184 = *MEMORY[0x1E696A578];
        v139 = MEMORY[0x1E696AEC0];
        uuid4 = [v92 uuid];
        v134 = [v139 stringWithFormat:@"Attempting to unreject an asset %@ that does not have a suggested bit set", uuid4];
        v185 = v134;
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
    self = selfCopy3;
    v21 = v143;
    if (v88)
    {
      continue;
    }

    break;
  }

LABEL_68:

LABEL_69:
  assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope = [(PHLibraryScopeChangeRequest *)self assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope];
  v94 = [assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope count];

  if (v94)
  {
    v95 = MEMORY[0x1E69BE540];
    assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope2 = [(PHLibraryScopeChangeRequest *)self assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope];
    v97 = 1;
    v98 = [v95 assetsWithUUIDs:assetUUIDsAssetsMarkedRejectedByPhotosSuggesterFromLibraryScope2 options:1 inLibrary:v21];
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
      selfCopy3 = self;
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
            uuid4 = [v104 uuid];
            v134 = [v140 stringWithFormat:@"PhotosSuggester is attempting to reject an asset %@ that is already in a rejected state", uuid4];
            v182 = v134;
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
            uuid4 = [v104 uuid];
            v134 = [v141 stringWithFormat:@"PhotosSuggester is attempting to reject an asset %@ that is already added to shared zone", uuid4];
            v180 = v134;
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
      self = selfCopy3;
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
    participantsHelper = [(PHLibraryScopeChangeRequest *)self participantsHelper];
    v147 = v11;
    v128 = [participantsHelper applyMutationsToManagedObject:v20 error:&v147];
    v129 = v147;

    v11 = v129;
  }

  else
  {
    v128 = 0;
  }

  if (error && (v128 & 1) == 0)
  {
    v130 = v11;
    *error = v11;
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

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v49[13] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  helper = [(PHChangeRequest *)self helper];
  v40 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v40];
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
    if (-[PHChangeRequest isNewRequest](self, "isNewRequest") || ([v13 containsObject:keyCopy] & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on key %@", keyCopy];
      v48 = keyCopy;
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

  if (([keyCopy isEqualToString:@"autoSharePolicy"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"rulesData"))
  {
    v19 = objectCopy;
    helper2 = [(PHChangeRequest *)self helper];
    mutations = [helper2 mutations];
    v22 = [mutations objectForKey:@"autoSharePolicy"];

    if (v22)
    {
      intValue = [v22 intValue];
    }

    else
    {
      intValue = [v19 autoSharePolicy];
    }

    if (intValue == 2 && v14)
    {
      rulesData = [(PHLibraryScopeChangeRequest *)self rulesData];

      if (!rulesData)
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
      if (intValue == 2 || !v14)
      {
        goto LABEL_28;
      }

      rulesData2 = [(PHLibraryScopeChangeRequest *)self rulesData];

      if (rulesData2)
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

  if (![keyCopy isEqualToString:@"previewState"])
  {
    goto LABEL_30;
  }

  v36 = objectCopy;
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
  if (error && !v14)
  {
    v34 = v12;
    *error = v12;
  }

  return v14;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v6 = MEMORY[0x1E69BE4E8];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  creationDate = [(PHLibraryScopeChangeRequest *)self creationDate];
  title = [(PHLibraryScopeChangeRequest *)self title];
  v11 = [v6 createOwnedShareWithUUID:uuid creationDate:creationDate title:title unitTestMode:self->_runningAsUnitTest inPhotoLibrary:libraryCopy];

  if (error && !v11)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v11;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v7 = libraryCopy;
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
    if (([libraryCopy isCloudPhotoLibraryEnabled] & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
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
      if (!error)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
      if (!error)
      {
        goto LABEL_11;
      }
    }

    if ((v8 & 1) == 0)
    {
      *error = v23[5];
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

- (void)updateWithCustomRules:(id)rules
{
  rulesCopy = rules;
  if ([rulesCopy count])
  {
    v4 = [rulesCopy _pl_map:&__block_literal_global_30928];
    v5 = [MEMORY[0x1E69BE508] dataForLibraryScopeRules:v4];
    [(PHLibraryScopeChangeRequest *)self setRulesData:v5];
  }

  else
  {
    [(PHLibraryScopeChangeRequest *)self setRulesData:0];
  }
}

- (void)removeParticipants:(id)participants
{
  v20 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  participantsHelper = [(PHLibraryScopeChangeRequest *)self participantsHelper];
  [participantsHelper removeParticipants:participantsCopy toChangeRequest:self];

  [(PHLibraryScopeChangeRequest *)self _updateParticipantCloudUpdateStateIfNecessary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = participantsCopy;
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
        uuid = [*(*(&v15 + 1) + 8 * v10) uuid];
        v13 = [(NSArray *)participantsRemovedFromLibraryScope arrayByAddingObject:uuid];
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

- (void)addParticipants:(id)participants
{
  v20 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  participantsHelper = [(PHLibraryScopeChangeRequest *)self participantsHelper];
  [participantsHelper addParticipants:participantsCopy toChangeRequest:self];

  [(PHLibraryScopeChangeRequest *)self _updateParticipantCloudUpdateStateIfNecessary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = participantsCopy;
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
        uuid = [*(*(&v15 + 1) + 8 * v10) uuid];
        v13 = [(NSArray *)participantsAddedToLibraryScope arrayByAddingObject:uuid];
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
    publishState = [v5 publishState];

    if (publishState == 2)
    {

      [(PHLibraryScopeChangeRequest *)self setParticipantCloudUpdateState:1];
    }
  }
}

- (void)markAssetsAsRejectedByPhotosSuggester:(id)suggester
{
  v20 = *MEMORY[0x1E69E9840];
  suggesterCopy = suggester;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = suggesterCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)unRejectPreviewAssetsSuggestedByPhotos:(id)photos
{
  v20 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = photosCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)rejectPreviewAssetsSuggestedByPhotos:(id)photos
{
  v20 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = photosCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)removePreviewAssetsSuggestedByPhotos:(id)photos
{
  v20 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = photosCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)addPreviewAssetsSuggestedByPhotos:(id)photos
{
  v20 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = photosCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)moveToPersonalLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = libraryCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)moveToSharedLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = libraryCopy;
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

        localIdentifier = [*(*(&v15 + 1) + 8 * v10) localIdentifier];
        v12 = [PHObject uuidFromLocalIdentifier:localIdentifier];
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

- (void)setAutoSharePolicy:(signed __int16)policy
{
  policyCopy = policy;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v6 = [MEMORY[0x1E696AD98] numberWithShort:policyCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v6 forKeyedSubscript:@"autoSharePolicy"];

  if (policyCopy != 2)
  {

    [(PHLibraryScopeChangeRequest *)self updateWithCustomRules:0];
  }
}

- (signed)autoSharePolicy
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"autoSharePolicy"];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_originalLibraryScope);
    intValue = [WeakRetained autoSharePolicy];
  }

  return intValue;
}

- (void)setExitState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"exitState"];
}

- (signed)exitState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"exitState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setLocalPublishState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"localPublishState"];
}

- (signed)localPublishState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"localPublishState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setScopeType:(int64_t)type
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"scopeType"];
}

- (int64_t)scopeType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"scopeType"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setStatus:(signed __int16)status
{
  statusCopy = status;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:statusCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"status"];
}

- (signed)status
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"status"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setScopeSyncingState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"scopeSyncingState"];
}

- (signed)scopeSyncingState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"scopeSyncingState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setPreviewState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"previewState"];
}

- (signed)previewState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"previewState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setParticipantCloudUpdateState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"participantCloudUpdateState"];
}

- (signed)participantCloudUpdateState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"participantCloudUpdateState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setLastParticipantAssetTrashNotificationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"lastParticipantAssetTrashNotificationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"lastParticipantAssetTrashNotificationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"lastParticipantAssetTrashNotificationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"lastParticipantAssetTrashNotificationDate"];
  }
}

- (id)lastParticipantAssetTrashNotificationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"lastParticipantAssetTrashNotificationDate"];

  return v5;
}

- (void)setTrashedDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"trashedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"trashedDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"trashedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"trashedDate"];
  }
}

- (id)trashedDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"trashedDate"];

  return v5;
}

- (void)setScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"scopeIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"scopeIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"scopeIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"scopeIdentifier"];
  }
}

- (id)scopeIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"scopeIdentifier"];

  return v5;
}

- (void)setRulesData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"rulesData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"rulesData"];
  }

  else
  {
    [mutations removeObjectForKey:@"rulesData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"rulesData"];
  }
}

- (id)rulesData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"rulesData"];

  return v5;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"creationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationDate"];

  return v5;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (titleCopy)
  {
    [mutations setObject:titleCopy forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedLibraryScope
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  participantsHelper = [(PHLibraryScopeChangeRequest *)self participantsHelper];
  [participantsHelper encodeToXPCDict:xdict];

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

- (PHLibraryScopeChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v35.receiver = self;
  v35.super_class = PHLibraryScopeChangeRequest;
  v9 = [(PHChangeRequest *)&v35 init];
  if (v9)
  {
    v10 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v9 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v9->super._helper;
    v9->super._helper = v10;

    v12 = [(PHRelationshipChangeRequestHelper *)[PHShareParticipantRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"participants" xpcDict:dictCopy changeRequestHelper:v9->super._helper];
    participantsHelper = v9->_participantsHelper;
    v9->_participantsHelper = v12;

    v9->_runningAsUnitTest = xpc_dictionary_get_BOOL(dictCopy, "runningAsUnitTest");
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
      [requestCopy recordUpdateRequest:v9];
    }
  }

  return v9;
}

- (PHLibraryScopeChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v24.receiver = self;
  v24.super_class = PHLibraryScopeChangeRequest;
  v8 = [(PHChangeRequest *)&v24 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

+ (void)_expungeLibraryScopes:(id)scopes ignorePhotosctlExpungeOverride:(BOOL)override
{
  v36 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  +[PHPhotoLibrary assertTransaction];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = scopesCopy;
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
        if (PLIsInternalTool() && !override)
        {
          [v18 setPhotosctlExpungeOverride:1];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }
}

+ (void)untrashLibraryScopes:(id)scopes
{
  v34 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = scopesCopy;
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

+ (void)trashLibraryScopes:(id)scopes
{
  v34 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  +[PHPhotoLibrary assertTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = scopesCopy;
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

+ (id)creationRequestForOwnedLibraryScopeInPreviewStateWithTitle:(id)title
{
  titleCopy = title;
  initForNewObject = [[PHLibraryScopeChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:titleCopy];

  date = [MEMORY[0x1E695DF00] date];
  [initForNewObject setCreationDate:date];

  [initForNewObject setPreviewState:1];

  return initForNewObject;
}

+ (id)changeRequestForLibraryScope:(id)scope
{
  scopeCopy = scope;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHLibraryScopeChangeRequest alloc];
    uuid = [scopeCopy uuid];
    objectID = [scopeCopy objectID];
    v7 = [(PHLibraryScopeChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHLibraryScopeChangeRequest *)v7 setOriginalLibraryScope:scopeCopy];
    participantsHelper = [(PHLibraryScopeChangeRequest *)v7 participantsHelper];
    [participantsHelper setOriginalShare:scopeCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end