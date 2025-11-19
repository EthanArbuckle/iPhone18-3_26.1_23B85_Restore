@interface MPAssistantAddMediaItemsToLibrary
- (BOOL)_addMediaItemsToLibrarySupported;
- (int64_t)_extractAtomID;
- (void)_performAddMediaItemsWithCompletion:(id)a3;
- (void)_performWithCompletion:(id)a3;
- (void)_requestCompanionToAddMediaItemsForOrigin:(void *)a3 withCompletion:(id)a4;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantAddMediaItemsToLibrary

- (void)_performAddMediaItemsWithCompletion:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MPAssistantAddMediaItemsToLibrary *)self _extractAtomID];
  if (v5)
  {
    v6 = v5;
    if (![(NSString *)self->_requestAceHash length])
    {
      v7 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
      v8 = sub_233505670(@"Add Media Items To Library", v7);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v8;
    }

    v10 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_requestAceHash;
      *buf = 138543618;
      v31 = v11;
      v32 = 2048;
      v33 = v6;
      _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (cloud) <%{public}@>: Will add store item %lld", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CD5D78] controllerWithUserIdentity:self->_userIdentity];
    cloudController = self->_cloudController;
    self->_cloudController = v12;

    v14 = [(NSString *)self->_requestAceHash copy];
    v15 = self->_cloudController;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2334DE544;
    v25[3] = &unk_2789DAC20;
    v26 = v14;
    v29 = v6;
    v27 = self;
    v28 = v4;
    v16 = v14;
    [(MPCloudController *)v15 addStoreItemWithAdamID:v6 completionHandler:v25];

LABEL_13:
    goto LABEL_14;
  }

  if (v4)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v17 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
      v18 = sub_233505670(@"Add Media Items To Library", v17);
      v19 = self->_requestAceHash;
      self->_requestAceHash = v18;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_requestAceHash;
      v22 = [(SAMPAddMediaItemsToLibrary *)self mediaItems];
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Add Media Items To Library (companion) <%{public}@>: No adam IDs in %{public}@", buf, 0x16u);
    }

    v23 = objc_alloc(MEMORY[0x277D47208]);
    v16 = [v23 initWithErrorCode:*MEMORY[0x277D48638]];
    (*(v4 + 2))(v4, v16);
    goto LABEL_13;
  }

LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_requestCompanionToAddMediaItemsForOrigin:(void *)a3 withCompletion:(id)a4
{
  v36[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MPAssistantAddMediaItemsToLibrary *)self _extractAtomID];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v7];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334DEA48;
  v28[3] = &unk_2789DABF8;
  v9 = v8;
  v29 = v9;
  v10 = v6;
  v30 = v10;
  v11 = MEMORY[0x2383A14D0](v28);
  if (v7)
  {
    if (v10)
    {
      v12 = *MEMORY[0x277D27DC0];
      v35[0] = *MEMORY[0x277D27E10];
      v35[1] = v12;
      v36[0] = v9;
      v36[1] = @"com.apple.MediaAssistant.siri";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v14 = objc_alloc_init(MEMORY[0x277D27850]);
      [v14 setOrigin:a3];
      v15 = objc_alloc_init(MEMORY[0x277D27828]);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_2334DEAF8;
      v25[3] = &unk_2789DB350;
      v26 = v15;
      v27 = v11;
      v16 = v15;
      [v16 sendCommand:128 toDestination:v14 withOptions:v13 completion:v25];

LABEL_10:
    }
  }

  else if (v10)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v17 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
      v18 = sub_233505670(@"Add Media Items To Library", v17);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v18;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_requestAceHash;
      v22 = [(SAMPAddMediaItemsToLibrary *)self mediaItems];
      *buf = 138543618;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Add Media Items To Library (companion) <%{public}@>: No adam IDs in %{public}@", buf, 0x16u);
    }

    v23 = objc_alloc(MEMORY[0x277D47208]);
    v13 = [v23 initWithErrorCode:*MEMORY[0x277D48638]];
    (*(v10 + 2))(v10, v13);
    goto LABEL_10;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (int64_t)_extractAtomID
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(SAMPAddMediaItemsToLibrary *)self mediaItems];
  v4 = [v3 items];
  v5 = [v3 identifier];
  if (sub_23350261C(v5) == 3)
  {
    v6 = [v5 lastPathComponent];
    v7 = [v6 longLongValue];

    if (v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v8 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
      v9 = sub_233505670(@"Add Media Items To Library", v8);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v9;
    }

    v11 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_requestAceHash;
      v27 = 138543618;
      v28 = v12;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_ERROR, "Add Media Items To Library (extract) <%{public}@>: Unsupported origin for collection %{public}@", &v27, 0x16u);
    }
  }

  if ([v4 count] >= 2)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v13 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
      v14 = sub_233505670(@"Add Media Items To Library", v13);
      v15 = self->_requestAceHash;
      self->_requestAceHash = v14;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_requestAceHash;
      v27 = 138543618;
      v28 = v17;
      v29 = 2114;
      v30 = v4;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_ERROR, "Add Media Items To Library (extract) <%{public}@>: Cannot add multiple items %{public}@", &v27, 0x16u);
    }
  }

  v18 = [v4 firstObject];
  v19 = [v18 identifier];
  if (sub_23350261C(v19) == 3)
  {
    v20 = [v19 lastPathComponent];
    v7 = [v20 longLongValue];
  }

  else
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v21 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
      v22 = sub_233505670(@"Add Media Items To Library", v21);
      v23 = self->_requestAceHash;
      self->_requestAceHash = v22;
    }

    v20 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_requestAceHash;
      v27 = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_ERROR, "Add Media Items To Library (extract) <%{public}@>: Unsupported origin for entity %{public}@", &v27, 0x16u);
    }

    v7 = 0;
  }

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_addMediaItemsToLibrarySupported
{
  v2 = [MEMORY[0x277CD5D78] controllerWithUserIdentity:self->_userIdentity];
  [v2 becomeActiveAndWaitUntilDone:1];
  v3 = [v2 isCloudLibraryEnabled];

  return v3;
}

- (void)_performWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MPAssistantAddMediaItemsToLibrary *)self _addMediaItemsToLibrarySupported])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2334DEFE4;
    v10[3] = &unk_2789DB800;
    v11 = v4;
    v5 = v4;
    [(MPAssistantAddMediaItemsToLibrary *)self _performAddMediaItemsWithCompletion:v10];
    v6 = v11;
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2334DEFF4;
    v8[3] = &unk_2789DACC0;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    sub_2334DEFF4(v8, 0);
    v6 = v9;
  }
}

- (void)performWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantAddMediaItemsToLibrary *)self aceId];
    v6 = sub_233505670(@"Add Media Items To Library", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(SAMPAddMediaItemsToLibrary *)self mediaItems];
    v11 = [v10 dictionary];
    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Library (invoke) <%{public}@>: media items %{public}@", buf, 0x16u);
  }

  v12 = self->_requestAceHash;
  v13 = [(SAMPAddMediaItemsToLibrary *)self influencedUserSharedUserId];
  v14 = [(SAMPAddMediaItemsToLibrary *)self influencedUserSharedUserId];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2334DF2E4;
  v17[3] = &unk_2789DB648;
  v17[4] = self;
  v18 = v4;
  v15 = v4;
  sub_233506A24(@"Add Media Items To Library", v12, v13, v14, v17);

  v16 = *MEMORY[0x277D85DE8];
}

@end