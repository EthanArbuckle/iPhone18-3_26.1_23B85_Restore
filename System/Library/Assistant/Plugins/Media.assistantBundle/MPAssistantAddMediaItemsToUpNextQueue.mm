@interface MPAssistantAddMediaItemsToUpNextQueue
- (id)_createLocalLibraryPlaybackQueueWithCollection:(id)a3 error:(id *)a4;
- (id)_createPlaybackQueueWithCollection:(id)a3 error:(id *)a4;
- (id)_createStoreTracklistPlaybackQueueWithCollection:(id)a3 error:(id *)a4;
- (void)_perform:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantAddMediaItemsToUpNextQueue

- (id)_createStoreTracklistPlaybackQueueWithCollection:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = v5;
  v6 = [v5 items];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v47 + 1) + 8 * i) identifier];
        if (sub_23350261C(v11) == 3)
        {
          v12 = [v11 lastPathComponent];
          v13 = [v12 longLongValue];

          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
          [v42 addObject:v14];
        }

        else
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            v15 = [(MPAssistantAddMediaItemsToUpNextQueue *)self aceId];
            v16 = sub_233505670(@"Add Media Items To Up Next Queue", v15);
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
            v54 = v11;
            _os_log_impl(&dword_2334D9000, v14, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (storetrack) <%{public}@>: unknown origin for %{public}@", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v8);
  }

  if (![v42 count])
  {
    v19 = [v41 identifier];

    if (v19)
    {
      v20 = [v41 identifier];
      v21 = [v20 lastPathComponent];
      v22 = [v21 longLongValue];

      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
      [v42 addObject:v23];
    }
  }

  v24 = [MEMORY[0x277CD5DA0] emptyIdentifierSet];
  v25 = [v41 identifier];
  v26 = [v25 scheme];
  v27 = [v26 isEqualToString:@"x-sampplaylist"];

  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277CD5DA0]);
    v29 = [MEMORY[0x277CD5F08] identityKind];
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
    v32 = [v41 identifier];
    v33 = [v32 scheme];
    v34 = [v33 isEqualToString:@"x-sampcollection-album"];

    if (!v34)
    {
      goto LABEL_22;
    }

    v28 = objc_alloc(MEMORY[0x277CD5DA0]);
    v29 = [MEMORY[0x277CD5E48] identityKind];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2334E3168;
    v43[3] = &unk_2789DB7B0;
    v30 = &v44;
    v44 = v41;
    v31 = v43;
  }

  v35 = [v28 initWithSource:@"MPCAssistant" modelKind:v29 block:v31];

  v24 = v35;
LABEL_22:
  v36 = objc_alloc(MEMORY[0x277D27888]);
  v37 = [(MPAssistantAddMediaItemsToUpNextQueue *)self refId];
  v38 = [v36 initWithContextID:v37 storeItemIDs:v42 collectionIdentifierSet:v24];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)_createLocalLibraryPlaybackQueueWithCollection:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Up Next Queue" hash:self->_requestAceHash];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CD5E38]);
    v9 = [v7 items];
    v10 = [v8 initWithEntities:v9 entityType:0];

    v11 = objc_alloc(MEMORY[0x277D27868]);
    v12 = [(MPAssistantAddMediaItemsToUpNextQueue *)self refId];
    a4 = [v11 initWithContextID:v12 query:v10];
  }

  else if (a4)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v13 = [(MPAssistantAddMediaItemsToUpNextQueue *)self aceId];
      v14 = sub_233505670(@"Add Media Items To Up Next Queue", v13);
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
      v27 = v6;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Add Media Items To Up Next Queue (libraryqueue) <%{public}@>: collection %{public}@ does not exist", buf, 0x16u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Collection does not exist in library";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    *a4 = [v18 errorWithDomain:@"MPAssistantAddToUpNextErrorDomain" code:-1 userInfo:v19];

    a4 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)_createPlaybackQueueWithCollection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v7 scheme];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = sub_23350261C(v7);
  if (v9 == 3)
  {
    v10 = [(MPAssistantAddMediaItemsToUpNextQueue *)self _createStoreTracklistPlaybackQueueWithCollection:v6 error:a4];
    goto LABEL_7;
  }

  if (v9 != 1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [(MPAssistantAddMediaItemsToUpNextQueue *)self _createLocalLibraryPlaybackQueueWithCollection:v6 error:a4];
LABEL_7:
  v11 = v10;
LABEL_8:

  return v11;
}

- (void)_perform:(id)a3
{
  v4 = a3;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334E385C;
  v28[3] = &unk_2789DACC0;
  v28[4] = self;
  v5 = v4;
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
  v10 = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
  v11 = [v10 count];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D27840]);
    v13 = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2334E3DF0;
    v16[3] = &unk_2789DAD88;
    v17 = v12;
    v18 = self;
    v19 = v8;
    v20 = v9;
    v14 = v9;
    v15 = v12;
    [v15 decodeHashedRouteUIDs:v13 completion:v16];
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

- (void)performWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantAddMediaItemsToUpNextQueue *)self aceId];
    v6 = sub_233505670(@"Add Media Items To Up Next Queue", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
    v11 = [v10 count];
    v12 = [(MPAssistantAddMediaItemsToUpNextQueue *)self insertLocation];
    v13 = [(MPAssistantAddMediaItemsToUpNextQueue *)self mediaCollection];
    v14 = [v13 dictionary];
    *buf = 138544130;
    v25 = v9;
    v26 = 2048;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Up Next Queue (invoke) <%{public}@>: %lu UIDs, insert location %{public}@, media collection %{public}@", buf, 0x2Au);
  }

  v15 = self->_requestAceHash;
  v16 = [(MPAssistantAddMediaItemsToUpNextQueue *)self hashedRouteUIDs];
  sub_2335057BC(@"Add Media Items To Up Next Queue", v15, v16);

  v17 = self->_requestAceHash;
  v18 = [(MPAssistantAddMediaItemsToUpNextQueue *)self speakerSharedUserId];
  v19 = [(MPAssistantAddMediaItemsToUpNextQueue *)self musicAccountSharedUserId];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334E4B78;
  v22[3] = &unk_2789DB648;
  v22[4] = self;
  v23 = v4;
  v20 = v4;
  sub_233506A24(@"Add Media Items To Up Next Queue", v17, v18, v19, v22);

  v21 = *MEMORY[0x277D85DE8];
}

@end