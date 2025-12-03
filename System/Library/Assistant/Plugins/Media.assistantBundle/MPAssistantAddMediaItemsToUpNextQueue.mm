@interface MPAssistantAddMediaItemsToUpNextQueue
- (id)_createLocalLibraryPlaybackQueueWithCollection:(id)collection error:(id *)error;
- (id)_createPlaybackQueueWithCollection:(id)collection error:(id *)error;
- (id)_createStoreTracklistPlaybackQueueWithCollection:(id)collection error:(id *)error;
- (void)_perform:(id)_perform;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaItemsToUpNextQueue

- (id)_createStoreTracklistPlaybackQueueWithCollection:(id)collection error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = collectionCopy;
  items = [collectionCopy items];
  v7 = [items countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(items);
        }

        identifier = [*(*(&v47 + 1) + 8 * i) identifier];
        if (sub_23350261C(identifier) == 3)
        {
          lastPathComponent = [identifier lastPathComponent];
          longLongValue = [lastPathComponent longLongValue];

          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
          [v42 addObject:v14];
        }

        else
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            aceId = [(MPAssistantAddMediaItemsToUpNextQueue *)self aceId];
            v16 = sub_233505670(@"Add Media Items To Up Next Queue", aceId);
            requestAceHash = self->_requestAceHash;
            self->_requestAceHash = v16;
          }

          v14 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = self->_requestAceHash;
            *buf = 138543618;
            v52 = v18;
            v53 = 2114;
            v54 = identifier;
            _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (storetrack) <%{public}@>: unknown origin for %{public}@", buf, 0x16u);
          }
        }
      }

      v8 = [items countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v8);
  }

  if (![v42 count])
  {
    identifier2 = [v41 identifier];

    if (identifier2)
    {
      identifier3 = [v41 identifier];
      lastPathComponent2 = [identifier3 lastPathComponent];
      longLongValue2 = [lastPathComponent2 longLongValue];

      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue2];
      [v42 addObject:v23];
    }
  }

  emptyIdentifierSet = [MEMORY[0x277CD5DA0] emptyIdentifierSet];
  identifier4 = [v41 identifier];
  scheme = [identifier4 scheme];
  v27 = [scheme isEqualToString:@"x-sampplaylist"];

  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277CD5DA0]);
    identityKind = [MEMORY[0x277CD5F08] identityKind];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2334E30DC;
    v45[3] = &unk_2789DB7B0;
    v30 = &v46;
    v46 = v41;
    v31 = v45;
  }

  else
  {
    identifier5 = [v41 identifier];
    scheme2 = [identifier5 scheme];
    v34 = [scheme2 isEqualToString:@"x-sampcollection-album"];

    if (!v34)
    {
      goto LABEL_22;
    }

    v28 = objc_alloc(MEMORY[0x277CD5DA0]);
    identityKind = [MEMORY[0x277CD5E48] identityKind];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2334E3168;
    v43[3] = &unk_2789DB7B0;
    v30 = &v44;
    v44 = v41;
    v31 = v43;
  }

  v35 = [v28 initWithSource:@"MPCAssistant" modelKind:identityKind block:v31];

  emptyIdentifierSet = v35;
LABEL_22:
  v36 = objc_alloc(MEMORY[0x277D27888]);
  refId = [(MPAssistantAddMediaItemsToUpNextQueue *)self refId];
  v38 = [v36 initWithContextID:refId storeItemIDs:v42 collectionIdentifierSet:emptyIdentifierSet];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)_createLocalLibraryPlaybackQueueWithCollection:(id)collection error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v7 = [collectionCopy MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Up Next Queue" hash:self->_requestAceHash];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CD5E38]);
    items = [v7 items];
    v10 = [v8 initWithEntities:items entityType:0];

    v11 = objc_alloc(MEMORY[0x277D27868]);
    refId = [(MPAssistantAddMediaItemsToUpNextQueue *)self refId];
    error = [v11 initWithContextID:refId query:v10];
  }

  else if (error)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId = [(MPAssistantAddMediaItemsToUpNextQueue *)self aceId];
      v14 = sub_233505670(@"Add Media Items To Up Next Queue", aceId);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v14;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_requestAceHash;
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = collectionCopy;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (libraryqueue) <%{public}@>: collection %{public}@ does not exist", buf, 0x16u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Collection does not exist in library";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    *error = [v18 errorWithDomain:@"MPAssistantAddToUpNextErrorDomain" code:-1 userInfo:v19];

    error = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)_createPlaybackQueueWithCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  identifier = [collectionCopy identifier];
  scheme = [identifier scheme];
  if (!scheme)
  {
    goto LABEL_5;
  }

  v9 = sub_23350261C(identifier);
  if (v9 == 3)
  {
    v10 = [(MPAssistantAddMediaItemsToUpNextQueue *)self _createStoreTracklistPlaybackQueueWithCollection:collectionCopy error:error];
    goto LABEL_7;
  }

  if (v9 != 1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [(MPAssistantAddMediaItemsToUpNextQueue *)self _createLocalLibraryPlaybackQueueWithCollection:collectionCopy error:error];
LABEL_7:
  v11 = v10;
LABEL_8:

  return v11;
}

- (void)_perform:(id)_perform
{
  _performCopy = _perform;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334E385C;
  v28[3] = &unk_2789DACC0;
  v28[4] = self;
  v5 = _performCopy;
  v29 = v5;
  v6 = MEMORY[0x2383A14D0](v28);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2334E3BEC;
  v25[3] = &unk_2789DAD10;
  v7 = v6;
  v26 = v7;
  v8 = v5;
  v27 = v8;
  v9 = MEMORY[0x2383A14D0](v25);
  hashedRouteUIDs = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
  v11 = [hashedRouteUIDs count];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D27840]);
    hashedRouteUIDs2 = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2334E3DF0;
    v16[3] = &unk_2789DAD88;
    v17 = v12;
    selfCopy = self;
    v19 = v8;
    v20 = v9;
    v14 = v9;
    v15 = v12;
    [v15 decodeHashedRouteUIDs:hashedRouteUIDs2 completion:v16];
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2334E3CC0;
    v21[3] = &unk_2789DAE78;
    v21[4] = self;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v15 = v9;
    sub_2334E3CC0(v21, 0);
  }
}

- (void)performWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantAddMediaItemsToUpNextQueue *)self aceId];
    v6 = sub_233505670(@"Add Media Items To Up Next Queue", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
    v11 = [hashedRouteUIDs count];
    insertLocation = [(MPAssistantAddMediaItemsToUpNextQueue *)self insertLocation];
    mediaCollection = [(MPAssistantAddMediaItemsToUpNextQueue *)self mediaCollection];
    dictionary = [mediaCollection dictionary];
    *buf = 138544130;
    v25 = v9;
    v26 = 2048;
    v27 = v11;
    v28 = 2114;
    v29 = insertLocation;
    v30 = 2114;
    v31 = dictionary;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (invoke) <%{public}@>: %lu UIDs, insert location %{public}@, media collection %{public}@", buf, 0x2Au);
  }

  v15 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
  sub_2335057BC(@"Add Media Items To Up Next Queue", v15, hashedRouteUIDs2);

  v17 = self->_requestAceHash;
  speakerSharedUserId = [(MPAssistantAddMediaItemsToUpNextQueue *)self speakerSharedUserId];
  musicAccountSharedUserId = [(MPAssistantAddMediaItemsToUpNextQueue *)self musicAccountSharedUserId];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334E4B78;
  v22[3] = &unk_2789DB648;
  v22[4] = self;
  v23 = completionCopy;
  v20 = completionCopy;
  sub_233506A24(@"Add Media Items To Up Next Queue", v17, speakerSharedUserId, musicAccountSharedUserId, v22);

  v21 = *MEMORY[0x277D85DE8];
}

@end