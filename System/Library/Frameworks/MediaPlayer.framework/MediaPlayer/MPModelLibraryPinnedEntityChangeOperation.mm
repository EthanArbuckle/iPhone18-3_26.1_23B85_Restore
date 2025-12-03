@interface MPModelLibraryPinnedEntityChangeOperation
- (BOOL)_canAppendPin;
- (BOOL)_canMovePin;
- (BOOL)_validateRequestIdentifiers:(id)identifiers class:(Class)class;
- (id)_errorFromICError:(id)error;
- (void)_runRequestWithMediaLibrary:(id)library identifiers:(id)identifiers persistentID:(int64_t)d class:(Class)class;
- (void)execute;
@end

@implementation MPModelLibraryPinnedEntityChangeOperation

- (id)_errorFromICError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E69E4198]];

  if (!v6)
  {
    v8 = 0;
    goto LABEL_18;
  }

  code = [errorCopy code];
  v8 = 0;
  if (code <= -8404)
  {
    if (code == -8406)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = @"local update failed";
      v11 = 5;
      goto LABEL_17;
    }

    if (code != -8405)
    {
      if (code != -8404)
      {
        goto LABEL_18;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = @"cannot add more pins";
      v11 = 4;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (code <= -8402)
  {
    if (code == -8403)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = @"cannot add more pins";
      v11 = 3;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (code == -8400)
  {
LABEL_14:
    v9 = MEMORY[0x1E696ABC0];
    v10 = @"cloud library not enabled";
    v11 = 2;
    goto LABEL_17;
  }

  if (code != -8401)
  {
    goto LABEL_18;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = @"cloud library not enabled";
  v11 = 1;
LABEL_17:
  v8 = [v9 msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:v11 underlyingError:0 debugDescription:v10];
LABEL_18:
  v12 = os_log_create("com.apple.amp.mediaplayer", "Pinning_Oversize");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with IC error=%{public}@, MP error =%{public}@", &v14, 0x20u);
  }

  return v8;
}

- (BOOL)_canMovePin
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = MEMORY[0x1E69B34E0];
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v5 = [v3 musicLibraryForUserAccount:userIdentity];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MPModelLibraryPinnedEntityChangeOperation__canMovePin__block_invoke;
  v12[3] = &unk_1E767B1A0;
  v12[4] = &v13;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v12];
  if ([(MPModelLibraryPinnedEntityChangeRequest *)self->_request position]< 0 || (v6 = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request position], v6 >= v14[3]))
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v14[3];
      position = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request position];
      *buf = 67109376;
      v18 = v9;
      v19 = 1024;
      v20 = position;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Cannot move pin - currentPinCount=%d, requestPosition=%d", buf, 0xEu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __56__MPModelLibraryPinnedEntityChangeOperation__canMovePin__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT COUNT() FROM library_pins"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

- (BOOL)_canAppendPin
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = MEMORY[0x1E69B34E0];
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v4 = [v2 musicLibraryForUserAccount:userIdentity];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__MPModelLibraryPinnedEntityChangeOperation__canAppendPin__block_invoke;
  v11[3] = &unk_1E767B1A0;
  v11[4] = &v12;
  [v4 databaseConnectionAllowingWrites:0 withBlock:v11];
  v5 = v13[3];
  sagaMaximumLibraryPinCount = [v4 sagaMaximumLibraryPinCount];
  if (v5 >= sagaMaximumLibraryPinCount)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sagaMaximumLibraryPinCount2 = [v4 sagaMaximumLibraryPinCount];
      v9 = v13[3];
      *buf = 67109376;
      v17 = sagaMaximumLibraryPinCount2;
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Cannot add pin - sagaMaximumLibraryPinCount=%d, currentPinCount=%d", buf, 0xEu);
    }
  }

  _Block_object_dispose(&v12, 8);
  return v5 < sagaMaximumLibraryPinCount;
}

void __58__MPModelLibraryPinnedEntityChangeOperation__canAppendPin__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT COUNT() FROM library_pins"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ValueForFirstRowAndColumn];
}

- (BOOL)_validateRequestIdentifiers:(id)identifiers class:(Class)class
{
  identifiersCopy = identifiers;
  library = [identifiersCopy library];
  persistentID = [library persistentID];

  if (!persistentID)
  {
    if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
    {
      personalizedStore = [identifiersCopy personalizedStore];
      if ([personalizedStore cloudID])
      {
        v8 = 1;
LABEL_21:

        goto LABEL_22;
      }

      universalStore = [identifiersCopy universalStore];
      if (![universalStore adamID])
      {
        universalStore2 = [identifiersCopy universalStore];
        subscriptionAdamID = [universalStore2 subscriptionAdamID];
        goto LABEL_19;
      }
    }

    else
    {
      if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
      {
        personalizedStore = [identifiersCopy personalizedStore];
        cloudAlbumID = [personalizedStore cloudAlbumID];
      }

      else
      {
        if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
        {
          if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
          {
            v8 = 0;
            goto LABEL_22;
          }

          personalizedStore = [identifiersCopy universalStore];
          universalStore = [personalizedStore globalPlaylistID];
          if (![universalStore length])
          {
            universalStore2 = [identifiersCopy personalizedStore];
            subscriptionAdamID = [universalStore2 cloudID];
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        personalizedStore = [identifiersCopy personalizedStore];
        cloudAlbumID = [personalizedStore cloudArtistID];
      }

      universalStore = cloudAlbumID;
      if (![cloudAlbumID length])
      {
        universalStore2 = [identifiersCopy universalStore];
        subscriptionAdamID = [universalStore2 adamID];
LABEL_19:
        v8 = subscriptionAdamID != 0;

        goto LABEL_20;
      }
    }

LABEL_16:
    v8 = 1;
LABEL_20:

    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8;
}

- (void)_runRequestWithMediaLibrary:(id)library identifiers:(id)identifiers persistentID:(int64_t)d class:(Class)class
{
  v89[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  identifiersCopy = identifiers;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__31249;
  v87 = __Block_byref_object_dispose__31250;
  v88 = 0;
  if (d)
  {
    if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
    {
      personalizedStore = [identifiersCopy personalizedStore];
      cloudID = [personalizedStore cloudID];

      v13 = [MEMORY[0x1E695DFD8] setWithObjects:{@"isInMyLibrary", @"storeSagaID", 0}];
      v14 = [libraryCopy itemWithPersistentID:d verifyExistence:0];
      cloudAlbumID = v14;
      if (v14)
      {
        v16 = [v14 valuesForProperties:v13];
        v17 = [v16 objectForKey:@"isInMyLibrary"];
        bOOLValue = [v17 BOOLValue];

        v19 = [v16 objectForKey:@"storeSagaID"];
        longLongValue = [v19 longLongValue];

        if (bOOLValue)
        {
          if (cloudID)
          {
            v21 = 1;
          }

          else
          {
            v21 = longLongValue == 0;
          }

          v23 = !v21 || cloudID == longLongValue;

          v24 = 0;
          if (v23)
          {
            v25 = 1;
LABEL_16:
            v64 = v25;
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        v24 = 0;
      }

      else
      {
        v24 = 0;
        v16 = 0;
      }

LABEL_41:

LABEL_42:
      v39 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v39, OS_LOG_TYPE_ERROR, "Not running library pinning operation as entity does not exist in the library", buf, 2u);
      }

      v40 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:2 debugDescription:@"request not supported"];
      v41 = v84[5];
      v84[5] = v40;

      responseHandler = self->_responseHandler;
      if (responseHandler)
      {
        responseHandler[2](responseHandler, v84[5]);
      }

      [(MPAsyncOperation *)self finishWithError:v84[5]];
      goto LABEL_47;
    }

    if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
    {
      personalizedStore2 = [identifiersCopy personalizedStore];
      cloudAlbumID = [personalizedStore2 cloudAlbumID];

      v34 = [libraryCopy collectionInLibraryWithPersistentID:d groupingType:1];
      if (v34)
      {
        v13 = [MEMORY[0x1E695DFD8] setWithObject:@"albumCloudLibraryID"];
        v16 = [v34 valuesForProperties:v13];
        v24 = [v16 objectForKey:@"albumCloudLibraryID"];
        if (![cloudAlbumID length] && objc_msgSend(v24, "length") || (objc_msgSend(cloudAlbumID, "isEqualToString:", v24) & 1) != 0)
        {
          v50 = 4;
LABEL_66:
          v64 = v50;

          longLongValue = 0;
LABEL_67:
          userIdentity = [(MPAsyncOperation *)self userIdentity];
          v30 = [MPCloudController controllerWithUserIdentity:userIdentity];

          operation = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request operation];
          if (operation > 1)
          {
            if (operation != 2)
            {
              if (operation == 3)
              {
                if ((v64 - 1) >= 2)
                {
                  defaultAction = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request defaultAction];
                  if (v64 == 3)
                  {
                    v76[0] = MEMORY[0x1E69E9820];
                    v76[1] = 3221225472;
                    v76[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_8;
                    v76[3] = &unk_1E767D2A0;
                    v76[4] = self;
                    [v30 updatePinnedLibraryArtistWithPersistentID:d cloudArtistID:v24 defaultAction:defaultAction completion:v76];
                  }

                  else
                  {
                    v75[0] = MEMORY[0x1E69E9820];
                    v75[1] = 3221225472;
                    v75[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_9;
                    v75[3] = &unk_1E767D2A0;
                    v75[4] = self;
                    [v30 updatePinnedLibraryAlbumWithPersistentID:d cloudAlbumID:v24 defaultAction:defaultAction completion:v75];
                  }
                }

                else
                {
                  defaultAction2 = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request defaultAction];
                  v77[0] = MEMORY[0x1E69E9820];
                  v77[1] = 3221225472;
                  v77[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_7;
                  v77[3] = &unk_1E767D2A0;
                  v77[4] = self;
                  [v30 updatePinnedLibraryEntityWithPersistentID:d cloudID:longLongValue type:v64 defaultAction:defaultAction2 completion:v77];
                }
              }

              goto LABEL_21;
            }

            if ([(MPModelLibraryPinnedEntityChangeOperation *)self _canMovePin])
            {
              if ((v64 - 1) >= 2)
              {
                position = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request position];
                if (v64 == 3)
                {
                  v73[0] = MEMORY[0x1E69E9820];
                  v73[1] = 3221225472;
                  v73[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_11;
                  v73[3] = &unk_1E767D2A0;
                  v73[4] = self;
                  [v30 movePinnedArtistWithPersistentID:d cloudArtistID:v24 toPosition:position completion:v73];
                }

                else
                {
                  v72[0] = MEMORY[0x1E69E9820];
                  v72[1] = 3221225472;
                  v72[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_12;
                  v72[3] = &unk_1E767D2A0;
                  v72[4] = self;
                  [v30 movePinnedAlbumWithPersistentID:d cloudAlbumID:v24 toPosition:position completion:v72];
                }
              }

              else
              {
                position2 = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request position];
                v74[0] = MEMORY[0x1E69E9820];
                v74[1] = 3221225472;
                v74[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_10;
                v74[3] = &unk_1E767D2A0;
                v74[4] = self;
                [v30 movePinnedEntityWithPersistentID:d cloudID:longLongValue type:v64 toPosition:position2 completion:v74];
              }

              goto LABEL_21;
            }

            v59 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:2 debugDescription:@"cannot move entity"];
            v60 = v84[5];
            v84[5] = v59;
          }

          else
          {
            if (operation)
            {
              if (operation == 1)
              {
                if ((v64 - 1) >= 2)
                {
                  if (v64 == 3)
                  {
                    v79[0] = MEMORY[0x1E69E9820];
                    v79[1] = 3221225472;
                    v79[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_5;
                    v79[3] = &unk_1E767D2A0;
                    v79[4] = self;
                    [v30 removePinnedArtistWithPersistentID:d cloudArtistID:v24 completion:v79];
                  }

                  else
                  {
                    v78[0] = MEMORY[0x1E69E9820];
                    v78[1] = 3221225472;
                    v78[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_6;
                    v78[3] = &unk_1E767D2A0;
                    v78[4] = self;
                    [v30 removePinnedAlbumWithPersistentID:d cloudAlbumID:v24 completion:v78];
                  }
                }

                else
                {
                  v79[5] = MEMORY[0x1E69E9820];
                  v79[6] = 3221225472;
                  v79[7] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_4;
                  v79[8] = &unk_1E767D2A0;
                  v79[9] = self;
                  [v30 removePinnedEntityWithPersistentID:d cloudID:longLongValue type:? completion:?];
                }
              }

              goto LABEL_21;
            }

            if ([(MPModelLibraryPinnedEntityChangeOperation *)self _canAppendPin])
            {
              if ((v64 - 1) >= 2)
              {
                defaultAction3 = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request defaultAction];
                if (v64 == 3)
                {
                  v81[0] = MEMORY[0x1E69E9820];
                  v81[1] = 3221225472;
                  v81[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_2;
                  v81[3] = &unk_1E767D2A0;
                  v81[4] = self;
                  [v30 pinLibraryArtistWithPersistentID:d cloudArtistID:v24 defaultAction:defaultAction3 completion:v81];
                }

                else
                {
                  v80[0] = MEMORY[0x1E69E9820];
                  v80[1] = 3221225472;
                  v80[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_3;
                  v80[3] = &unk_1E767D2A0;
                  v80[4] = self;
                  [v30 pinLibraryAlbumWithPersistentID:d cloudAlbumID:v24 defaultAction:defaultAction3 completion:v80];
                }
              }

              else
              {
                defaultAction4 = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request defaultAction];
                v82[0] = MEMORY[0x1E69E9820];
                v82[1] = 3221225472;
                v82[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke;
                v82[3] = &unk_1E767D2A0;
                v82[4] = self;
                [v30 pinLibraryEntityWithPersistentID:d cloudID:longLongValue type:v64 defaultAction:defaultAction4 completion:v82];
              }

LABEL_21:

              goto LABEL_47;
            }

            v57 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:3 debugDescription:@"cannot add more pins"];
            v58 = v84[5];
            v84[5] = v57;
          }

          v61 = self->_responseHandler;
          if (v61)
          {
            v61[2](v61, v84[5]);
          }

          [(MPAsyncOperation *)self finishWithError:v84[5]];
          goto LABEL_21;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
      {
        if (-[objc_class isSubclassOfClass:](class, "isSubclassOfClass:", objc_opt_class()) && ([identifiersCopy personalizedStore], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "cloudID"), v43, objc_msgSend(libraryCopy, "playlistWithPersistentID:", d), (v45 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v13 = [MEMORY[0x1E695DFD8] setWithObjects:{@"isInMyLibrary", @"storeCloudID", 0}];
          v16 = [v45 valuesForProperties:v13];
          v46 = [v16 objectForKey:@"storeCloudID"];
          longLongValue = [v46 longLongValue];

          if (v44)
          {
            v47 = 1;
          }

          else
          {
            v47 = longLongValue == 0;
          }

          v49 = !v47 || v44 == longLongValue;

          v24 = 0;
          if (v49)
          {
            v25 = 2;
            goto LABEL_16;
          }
        }

        else
        {
          v24 = 0;
          v13 = 0;
          v16 = 0;
        }

        goto LABEL_42;
      }

      personalizedStore3 = [identifiersCopy personalizedStore];
      cloudAlbumID = [personalizedStore3 cloudArtistID];

      v34 = [libraryCopy collectionInLibraryWithPersistentID:d groupingType:3];
      if (v34)
      {
        v13 = [MEMORY[0x1E695DFD8] setWithObject:@"albumArtistCloudUniversalLibraryID"];
        v16 = [v34 valuesForProperties:v13];
        v24 = [v16 objectForKey:@"albumArtistCloudUniversalLibraryID"];
        if (![cloudAlbumID length] && objc_msgSend(v24, "length") || (objc_msgSend(cloudAlbumID, "isEqualToString:", v24) & 1) != 0)
        {
          v50 = 3;
          goto LABEL_66;
        }

LABEL_40:

        goto LABEL_41;
      }
    }

    v24 = 0;
    v13 = 0;
    v16 = 0;
    goto LABEL_40;
  }

  canRerunRequest = self->_canRerunRequest;
  v27 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
  v28 = v27;
  if (canRerunRequest)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "Entity to pin does not have a persistentID, trying to locate it in the database with store identifiers", buf, 2u);
    }

    self->_canRerunRequest = 0;
    userIdentity2 = [(MPAsyncOperation *)self userIdentity];
    v30 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:userIdentity2];

    v31 = objc_alloc_init(MPStoreLibraryMappingRequestOperation);
    [(MPStoreLibraryMappingRequestOperation *)v31 setLibraryView:v30];
    [(MPStoreLibraryMappingRequestOperation *)v31 setModelClass:class];
    v89[0] = identifiersCopy;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:1];
    [(MPStoreLibraryMappingRequestOperation *)v31 setIdentifierSets:v32];

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_32;
    v66[3] = &unk_1E767B178;
    v66[4] = self;
    v67 = identifiersCopy;
    v68 = libraryCopy;
    v69 = &v83;
    classCopy = class;
    [(MPStoreLibraryMappingRequestOperation *)v31 setResponseHandler:v66];
    [(NSOperationQueue *)self->_operationQueue addOperation:v31];

    v16 = 0;
    v13 = 0;
    v24 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_ERROR, "Not running library pinning operation as entity could not be found.", buf, 2u);
  }

  v35 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:2 debugDescription:@"request not supported"];
  v36 = v84[5];
  v84[5] = v35;

  v37 = self->_responseHandler;
  if (v37)
  {
    v37[2](v37, v84[5]);
  }

  [(MPAsyncOperation *)self finishWithError:v84[5]];
  v16 = 0;
  v13 = 0;
  v24 = 0;
LABEL_47:

  _Block_object_dispose(&v83, 8);
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_10(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorFromICError:a2];
  v4 = *(a1 + 32);
  v5 = v4[36];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __104__MPModelLibraryPinnedEntityChangeOperation__runRequestWithMediaLibrary_identifiers_persistentID_class___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "Not running library pinning operation as mapping operation finished with error=%{public}@", &v18, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = v7[36];
    if (v8)
    {
      (*(v8 + 16))(v7[36], v5);
      v7 = *(a1 + 32);
    }

    [v7 finishWithError:v5];
  }

  else
  {
    v9 = [a2 libraryIdentifierSetForIdentifierSet:*(a1 + 40)];
    v10 = [v9 library];
    v11 = [v10 persistentID];

    if (v11)
    {
      [*(a1 + 32) _runRequestWithMediaLibrary:*(a1 + 48) identifiers:*(a1 + 40) persistentID:v11 class:*(a1 + 64)];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Not running library pinning operation as entity could not be found by the library mapping request.", &v18, 2u);
      }

      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:2 debugDescription:@"request not supported"];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = *(a1 + 32);
      v17 = v16[36];
      if (v17)
      {
        (*(v17 + 16))(v16[36], *(*(*(a1 + 56) + 8) + 40));
        v16 = *(a1 + 32);
      }

      [v16 finishWithError:*(*(*(a1 + 56) + 8) + 40)];
    }
  }
}

- (void)execute
{
  v29 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "Not running library pinning operation as feature is not enabled", &v25, 2u);
    }

    identifiers = 0;
    v6 = 0;
    entity = 0;
    v12 = @"feature not enabled";
LABEL_24:

    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:2 debugDescription:v12];
    if (v10)
    {
LABEL_25:
      userIdentity = v10;
      responseHandler = self->_responseHandler;
      if (responseHandler)
      {
        responseHandler[2](responseHandler, userIdentity);
      }

      [(MPAsyncOperation *)self finishWithError:userIdentity];
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  request = self->_request;
  if (!request || ([(MPModelLibraryPinnedEntityChangeRequest *)request entity], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_request;
      v25 = 138543362;
      v26 = v13;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "Not running library pinning operation as the request=%{public}@ is not valid", &v25, 0xCu);
    }

    identifiers = 0;
    v6 = 0;
    entity = 0;
    v12 = @"missing parameters to run request";
    goto LABEL_24;
  }

  entity = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request entity];
  v6 = objc_opt_class();
  identifiers = [entity identifiers];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    anyObject = [entity anyObject];
    v6 = objc_opt_class();
  }

  if (([(MPModelLibraryPinnedEntityChangeRequest *)v6 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(MPModelLibraryPinnedEntityChangeRequest *)v6 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(MPModelLibraryPinnedEntityChangeRequest *)v6 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(MPModelLibraryPinnedEntityChangeRequest *)v6 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v9 = _MPLogCategoryPinning();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = v6;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Not running library pinning operation as entity is not supported (class=%{public}@)", &v25, 0xCu);
    }

    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryPinnedEntityChangeRequestErrorDomain" code:2 debugDescription:@"request not supported"];
    if (v10)
    {
      goto LABEL_25;
    }
  }

  if (!identifiers || ![(MPModelLibraryPinnedEntityChangeOperation *)self _validateRequestIdentifiers:identifiers class:v6])
  {
    v11 = os_log_create("com.apple.amp.mediaplayer", "Pinning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = identifiers;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "Not running library pinning operation as there are no valid identifiers=%{public}@", &v25, 0xCu);
    }

    v12 = @"request not supported";
    goto LABEL_24;
  }

LABEL_28:
  self->_canRerunRequest = 1;
  library = [(MPModelLibraryPinnedEntityChangeRequest *)identifiers library];
  persistentID = [library persistentID];

  if (!self->_operationQueue)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = self->_operationQueue;
    self->_operationQueue = v18;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.MediaPlayer.MPModelLibraryPinnedEntityChangeOperation.operationQueue"];
    v20 = self->_operationQueue;
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    -[NSOperationQueue setQualityOfService:](v20, "setQualityOfService:", [currentThread qualityOfService]);
  }

  v22 = os_log_create("com.apple.amp.mediaplayer", "Pinning_Oversize");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(MPModelLibraryPinnedEntityChangeRequest *)self->_request description];
    v25 = 138543618;
    v26 = v23;
    v27 = 2114;
    v28 = identifiers;
    _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "Running library pinning operation for %{public}@, identifiers=%{public}@", &v25, 0x16u);
  }

  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v24 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];
  [(MPModelLibraryPinnedEntityChangeOperation *)self _runRequestWithMediaLibrary:v24 identifiers:identifiers persistentID:persistentID class:v6];

LABEL_33:
}

@end