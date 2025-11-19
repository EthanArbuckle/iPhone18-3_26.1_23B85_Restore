@interface MPAssistantAddMediaItemsToPlaylist
+ (void)_notifyAssistantWithError:(id)a3 requestHash:(id)a4 completion:(id)a5;
+ (void)_notifyAssistantWithString:(id)a3 requestHash:(id)a4 completion:(id)a5;
- (void)_addItemsToCloudLibrary:(id)a3;
- (void)_addItemsToLocalLibrary:(id)a3;
- (void)_appendItemToCloudPlaylist:(id)a3 completion:(id)a4;
- (void)_appendItemsToCloudPlaylist:(id)a3 completion:(id)a4;
- (void)_appendToPlaylistWithCompletion:(id)a3;
- (void)_prependItemsToCloudPlaylist:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantAddMediaItemsToPlaylist

- (void)_prependItemsToCloudPlaylist:(id)a3 completion:(id)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v70 = a3;
  v69 = a4;
  if (![(NSString *)self->_requestAceHash length])
  {
    v6 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v7 = sub_233505670(@"Add Media Items To Playlist", v6);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v7;
  }

  v9 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_requestAceHash;
    *buf = 138543362;
    v97 = v10;
    _os_log_impl(&dword_2334D9000, v9, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: head insertion", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CD5D78] controllerWithUserIdentity:self->_userIdentity];
  cloudController = self->_cloudController;
  v68 = 72;
  self->_cloudController = v11;

  v79 = [MEMORY[0x277CD5D80] cloudItemIDListForPlaylist:v70];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
  v74 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v74)
  {
    v13 = 0;
    v73 = *v92;
    v77 = *MEMORY[0x277CD5898];
    v78 = *MEMORY[0x277CD58A0];
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v92 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v91 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = sub_23350261C(v16);

        if (v17 == 3)
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v76 = [v15 items];
          v18 = [v76 countByEnumeratingWithState:&v87 objects:v100 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v88;
            do
            {
              v21 = 0;
              v22 = v13;
              do
              {
                if (*v88 != v20)
                {
                  objc_enumerationMutation(v76);
                }

                v23 = [*(*(&v87 + 1) + 8 * v21) identifier];
                v24 = [v23 lastPathComponent];
                v25 = [v24 longLongValue];

                if (![(NSString *)self->_requestAceHash length])
                {
                  v26 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                  v27 = sub_233505670(@"Add Media Items To Playlist", v26);
                  v28 = self->_requestAceHash;
                  self->_requestAceHash = v27;
                }

                v29 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = self->_requestAceHash;
                  *buf = 138543618;
                  v97 = v30;
                  v98 = 2048;
                  v99 = v25;
                  _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend store: %lld", buf, 0x16u);
                }

                v13 = v22 + 1;
                [v79 insertCloudItemID:v25 idType:1 atIndex:v22];
                ++v21;
                ++v22;
              }

              while (v19 != v21);
              v19 = [v76 countByEnumeratingWithState:&v87 objects:v100 count:16];
            }

            while (v19);
          }
        }

        else
        {
          v72 = i;
          v31 = [v15 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v76 = v31;
          v75 = [v31 items];
          v32 = [v75 countByEnumeratingWithState:&v83 objects:v95 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v84;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v84 != v34)
                {
                  objc_enumerationMutation(v75);
                }

                v36 = *(*(&v83 + 1) + 8 * j);
                v37 = [v36 valueForProperty:v78];
                v38 = [v37 longLongValue];

                v39 = [v36 valueForProperty:v77];
                v40 = [v39 unsignedLongLongValue];

                if (v40)
                {
                  if (![(NSString *)self->_requestAceHash length])
                  {
                    v41 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                    v42 = sub_233505670(@"Add Media Items To Playlist", v41);
                    v43 = self->_requestAceHash;
                    self->_requestAceHash = v42;
                  }

                  v44 = _MPLogCategoryAssistant();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    v45 = self->_requestAceHash;
                    *buf = 138543618;
                    v97 = v45;
                    v98 = 2048;
                    v99 = v40;
                    _os_log_impl(&dword_2334D9000, v44, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend saga: %lld", buf, 0x16u);
                  }

                  [v79 insertCloudItemID:v40 idType:0 atIndex:v13++];
                }

                else
                {
                  v46 = [(NSString *)self->_requestAceHash length];
                  if (v38)
                  {
                    if (!v46)
                    {
                      v47 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                      v48 = sub_233505670(@"Add Media Items To Playlist", v47);
                      v49 = self->_requestAceHash;
                      self->_requestAceHash = v48;
                    }

                    v50 = _MPLogCategoryAssistant();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      v51 = self->_requestAceHash;
                      *buf = 138543618;
                      v97 = v51;
                      v98 = 2048;
                      v99 = v38;
                      _os_log_impl(&dword_2334D9000, v50, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend adam: %lld", buf, 0x16u);
                    }

                    [v79 insertCloudItemID:v38 idType:1 atIndex:v13++];
                  }

                  else
                  {
                    if (!v46)
                    {
                      v52 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                      v53 = sub_233505670(@"Add Media Items To Playlist", v52);
                      v54 = self->_requestAceHash;
                      self->_requestAceHash = v53;
                    }

                    v55 = _MPLogCategoryAssistant();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      v56 = self->_requestAceHash;
                      *buf = 138543618;
                      v97 = v56;
                      v98 = 2114;
                      v99 = v36;
                      _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_ERROR, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend failed: %{public}@", buf, 0x16u);
                    }
                  }
                }
              }

              v33 = [v75 countByEnumeratingWithState:&v83 objects:v95 count:16];
            }

            while (v33);
          }

          i = v72;
        }
      }

      v74 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v74);
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v57 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v58 = sub_233505670(@"Add Media Items To Playlist", v57);
    v59 = self->_requestAceHash;
    self->_requestAceHash = v58;
  }

  v60 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = self->_requestAceHash;
    *buf = 138543362;
    v97 = v61;
    _os_log_impl(&dword_2334D9000, v60, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: rewrite playlist", buf, 0xCu);
  }

  v62 = [(NSString *)self->_requestAceHash copy];
  v63 = *(&self->super.super.super.super.super.isa + v68);
  v64 = [v70 persistentID];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_2334DFF3C;
  v80[3] = &unk_2789DAC48;
  v81 = v62;
  v82 = v69;
  v65 = v69;
  v66 = v62;
  [v63 setPlaylistProperties:0 trackList:v79 forPlaylistWithPersistentID:v64 completionHandler:v80];

  v67 = *MEMORY[0x277D85DE8];
}

- (void)_appendItemsToCloudPlaylist:(id)a3 completion:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v73 = a4;
  if (![(NSString *)self->_requestAceHash length])
  {
    v7 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v8 = sub_233505670(@"Add Media Items To Playlist", v7);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v8;
  }

  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_requestAceHash;
    *buf = 138543362;
    v100 = v11;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: tail insertion", buf, 0xCu);
  }

  v12 = [MEMORY[0x277CD5D78] controllerWithUserIdentity:self->_userIdentity];
  cloudController = self->_cloudController;
  v72 = 72;
  self->_cloudController = v12;

  v74 = v6;
  v14 = [MEMORY[0x277CD5D80] cloudItemIDListForPlaylist:v6];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
  v78 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v78)
  {
    v77 = *v95;
    v81 = *MEMORY[0x277CD5898];
    v82 = *MEMORY[0x277CD58A0];
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v95 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v94 + 1) + 8 * i);
        v17 = [v16 identifier];
        v18 = sub_23350261C(v17);

        if (v18 != 3)
        {
          v76 = i;
          v31 = [v16 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v80 = v31;
          v79 = [v31 items];
          v32 = [v79 countByEnumeratingWithState:&v86 objects:v98 count:16];
          if (!v32)
          {
            goto LABEL_49;
          }

          v33 = v32;
          v34 = *v87;
          while (1)
          {
            v35 = 0;
            do
            {
              if (*v87 != v34)
              {
                objc_enumerationMutation(v79);
              }

              v36 = *(*(&v86 + 1) + 8 * v35);
              v37 = [v36 valueForProperty:v82];
              v38 = [v37 longLongValue];

              v39 = [v36 valueForProperty:v81];
              v40 = [v39 unsignedLongLongValue];

              if (v40)
              {
                if (![(NSString *)self->_requestAceHash length])
                {
                  v41 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                  v42 = sub_233505670(@"Add Media Items To Playlist", v41);
                  v43 = self->_requestAceHash;
                  self->_requestAceHash = v42;
                }

                v44 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = self->_requestAceHash;
                  *buf = 138543618;
                  v100 = v45;
                  v101 = 2048;
                  v102 = v40;
                  _os_log_impl(&dword_2334D9000, v44, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: append saga: %lld", buf, 0x16u);
                }

                v46 = v14;
                v47 = v40;
                v48 = 0;
LABEL_40:
                [v46 addCloudItemID:v47 idType:v48];
                goto LABEL_41;
              }

              v49 = [(NSString *)self->_requestAceHash length];
              if (v38)
              {
                if (!v49)
                {
                  v50 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                  v51 = sub_233505670(@"Add Media Items To Playlist", v50);
                  v52 = self->_requestAceHash;
                  self->_requestAceHash = v51;
                }

                v53 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = self->_requestAceHash;
                  *buf = 138543618;
                  v100 = v54;
                  v101 = 2048;
                  v102 = v38;
                  _os_log_impl(&dword_2334D9000, v53, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: append adam: %lld", buf, 0x16u);
                }

                v46 = v14;
                v47 = v38;
                v48 = 1;
                goto LABEL_40;
              }

              if (!v49)
              {
                v55 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                v56 = sub_233505670(@"Add Media Items To Playlist", v55);
                v57 = self->_requestAceHash;
                self->_requestAceHash = v56;
              }

              v58 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v59 = self->_requestAceHash;
                *buf = 138543618;
                v100 = v59;
                v101 = 2114;
                v102 = v36;
                _os_log_impl(&dword_2334D9000, v58, OS_LOG_TYPE_ERROR, "Add Media Items To Playlist (cloud items) <%{public}@>: append failed: %{public}@", buf, 0x16u);
              }

LABEL_41:
              ++v35;
            }

            while (v33 != v35);
            v60 = [v79 countByEnumeratingWithState:&v86 objects:v98 count:16];
            v33 = v60;
            if (!v60)
            {
LABEL_49:

              i = v76;
              goto LABEL_50;
            }
          }
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v80 = [v16 items];
        v19 = [v80 countByEnumeratingWithState:&v90 objects:v103 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v91;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v91 != v21)
              {
                objc_enumerationMutation(v80);
              }

              v23 = [*(*(&v90 + 1) + 8 * j) identifier];
              v24 = [v23 lastPathComponent];
              v25 = [v24 longLongValue];

              if (![(NSString *)self->_requestAceHash length])
              {
                v26 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                v27 = sub_233505670(@"Add Media Items To Playlist", v26);
                v28 = self->_requestAceHash;
                self->_requestAceHash = v27;
              }

              v29 = _MPLogCategoryAssistant();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = self->_requestAceHash;
                *buf = 138543618;
                v100 = v30;
                v101 = 2048;
                v102 = v25;
                _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: append store: %lld", buf, 0x16u);
              }

              [v14 addCloudItemID:v25 idType:1];
            }

            v20 = [v80 countByEnumeratingWithState:&v90 objects:v103 count:16];
          }

          while (v20);
        }

LABEL_50:
      }

      v78 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v78);
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v61 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v62 = sub_233505670(@"Add Media Items To Playlist", v61);
    v63 = self->_requestAceHash;
    self->_requestAceHash = v62;
  }

  v64 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = self->_requestAceHash;
    *buf = 138543362;
    v100 = v65;
    _os_log_impl(&dword_2334D9000, v64, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: rewrite playlist", buf, 0xCu);
  }

  v66 = [(NSString *)self->_requestAceHash copy];
  v67 = *(&self->super.super.super.super.super.isa + v72);
  v68 = [v74 persistentID];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = sub_2334E0840;
  v83[3] = &unk_2789DAC48;
  v84 = v66;
  v85 = v73;
  v69 = v73;
  v70 = v66;
  [v67 setPlaylistProperties:0 trackList:v14 forPlaylistWithPersistentID:v68 completionHandler:v83];

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_appendItemToCloudPlaylist:(id)a3 completion:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(NSString *)self->_requestAceHash length])
  {
    v8 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v9 = sub_233505670(@"Add Media Items To Playlist", v8);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v9;
  }

  v11 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_requestAceHash;
    *buf = 138543362;
    v64 = v12;
    _os_log_impl(&dword_2334D9000, v11, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: tail insertion", buf, 0xCu);
  }

  v13 = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
  v14 = [v13 objectAtIndex:0];

  v15 = [MEMORY[0x277CD5D78] controllerWithUserIdentity:self->_userIdentity];
  cloudController = self->_cloudController;
  self->_cloudController = v15;

  v17 = [v14 identifier];
  v18 = sub_23350261C(v17);

  if (v18 == 3)
  {
    v19 = [v14 items];
    v20 = [v19 objectAtIndex:0];
    v21 = [v20 identifier];

    if (![(NSString *)self->_requestAceHash length])
    {
      v22 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
      v23 = sub_233505670(@"Add Media Items To Playlist", v22);
      v24 = self->_requestAceHash;
      self->_requestAceHash = v23;
    }

    v25 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_requestAceHash;
      *buf = 138543618;
      v64 = v26;
      v65 = 2114;
      v66 = v21;
      _os_log_impl(&dword_2334D9000, v25, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append store: %{public}@", buf, 0x16u);
    }

    v27 = [v21 lastPathComponent];
    v28 = [v27 longLongValue];

    v29 = [(NSString *)self->_requestAceHash copy];
  }

  else
  {
    v30 = [v14 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];
    v31 = [v30 items];
    v32 = [v31 objectAtIndex:0];

    if (![(NSString *)self->_requestAceHash length])
    {
      v33 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
      v34 = sub_233505670(@"Add Media Items To Playlist", v33);
      v35 = self->_requestAceHash;
      self->_requestAceHash = v34;
    }

    v36 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_requestAceHash;
      *buf = 138543618;
      v64 = v37;
      v65 = 2114;
      v66 = v32;
      _os_log_impl(&dword_2334D9000, v36, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append: %{public}@", buf, 0x16u);
    }

    v38 = [v32 valueForProperty:*MEMORY[0x277CD58A0]];
    v28 = [v38 longLongValue];

    v39 = [v32 valueForProperty:*MEMORY[0x277CD5898]];
    v40 = [v39 unsignedLongLongValue];

    v29 = [(NSString *)self->_requestAceHash copy];
    if (v40)
    {
      if (![(NSString *)self->_requestAceHash length])
      {
        v41 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
        v42 = sub_233505670(@"Add Media Items To Playlist", v41);
        v43 = self->_requestAceHash;
        self->_requestAceHash = v42;
      }

      v44 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = self->_requestAceHash;
        *buf = 138543618;
        v64 = v45;
        v65 = 2048;
        v66 = v40;
        _os_log_impl(&dword_2334D9000, v44, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append saga: %llu", buf, 0x16u);
      }

      v46 = self->_cloudController;
      v47 = [v6 persistentID];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = sub_2334E0F98;
      v60[3] = &unk_2789DAC48;
      v29 = v29;
      v61 = v29;
      v62 = v7;
      [(MPCloudController *)v46 addItemWithSagaID:v40 toPlaylistWithPersistentID:v47 completionHandler:v60];

      v48 = v61;
      goto LABEL_27;
    }
  }

  if (!v28)
  {
    [MPAssistantAddMediaItemsToPlaylist _notifyAssistantWithString:@"Unknown item type" requestHash:self->_requestAceHash completion:v7];
    goto LABEL_29;
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v49 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v50 = sub_233505670(@"Add Media Items To Playlist", v49);
    v51 = self->_requestAceHash;
    self->_requestAceHash = v50;
  }

  v52 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = self->_requestAceHash;
    *buf = 138543618;
    v64 = v53;
    v65 = 2048;
    v66 = 0;
    _os_log_impl(&dword_2334D9000, v52, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append adam: %llu", buf, 0x16u);
  }

  v54 = self->_cloudController;
  v55 = [v6 persistentID];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2334E0FB0;
  v57[3] = &unk_2789DAC48;
  v29 = v29;
  v58 = v29;
  v59 = v7;
  [(MPCloudController *)v54 addStoreItemWithAdamID:v28 toPlaylistWithPersistentID:v55 completionHandler:v57];

  v48 = v58;
LABEL_27:

LABEL_29:
  v56 = *MEMORY[0x277D85DE8];
}

- (void)_addItemsToCloudLibrary:(id)a3
{
  v15 = a3;
  v4 = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
  v5 = [v4 count];

  v6 = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
  v7 = [v6 objectAtIndex:0];
  v8 = [v7 items];
  v9 = [v8 count];

  v10 = [(SAMPAddMediaItemsToPlaylist *)self insertLocation];
  v11 = [v10 isEqualToString:*MEMORY[0x277D48570]];

  v12 = [(SAMPAddMediaItemsToPlaylist *)self playlist];
  v13 = [v12 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];

  v14 = v13;
  if (v5 == 1 && v9 == 1 && v11)
  {
    [(MPAssistantAddMediaItemsToPlaylist *)self _appendItemToCloudPlaylist:v14 completion:v15];
  }

  else if (v11)
  {
    [(MPAssistantAddMediaItemsToPlaylist *)self _appendItemsToCloudPlaylist:v14 completion:v15];
  }

  else
  {
    [(MPAssistantAddMediaItemsToPlaylist *)self _prependItemsToCloudPlaylist:v14 completion:v15];
  }
}

- (void)_addItemsToLocalLibrary:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v4 = [(SAMPAddMediaItemsToPlaylist *)self playlist];
  v5 = [v4 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
  v8 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v77;
    v60 = *MEMORY[0x277CD5888];
    v59 = *MEMORY[0x277CD58A0];
    v54 = *v77;
    v55 = v6;
    do
    {
      v11 = 0;
      v56 = v9;
      do
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * v11);
        v13 = [v12 identifier];
        v14 = sub_23350261C(v13);

        if (v14 == 3)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v15 = [v12 items];
          v63 = [v15 countByEnumeratingWithState:&v72 objects:v86 count:16];
          if (v63)
          {
            v58 = v11;
            v61 = *v73;
            v62 = v15;
            do
            {
              for (i = 0; i != v63; ++i)
              {
                if (*v73 != v61)
                {
                  objc_enumerationMutation(v15);
                }

                v17 = [*(*(&v72 + 1) + 8 * i) identifier];
                v18 = [v17 lastPathComponent];
                v19 = [v18 longLongValue];

                if (![(NSString *)self->_requestAceHash length])
                {
                  v20 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
                  v21 = sub_233505670(@"Add Media Items To Playlist", v20);
                  requestAceHash = self->_requestAceHash;
                  self->_requestAceHash = v21;
                }

                v23 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = self->_requestAceHash;
                  *buf = 138543618;
                  v83 = v24;
                  v84 = 2048;
                  v85 = v19;
                  _os_log_impl(&dword_2334D9000, v23, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: add adam ID: %lld", buf, 0x16u);
                }

                v25 = self;

                v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v19];
                v27 = MEMORY[0x277CD5DC0];
                v28 = [MEMORY[0x277CD5E30] predicateWithValue:v26 forProperty:v60];
                v81[0] = v28;
                v29 = [MEMORY[0x277CD5E30] predicateWithValue:v26 forProperty:v59];
                v81[1] = v29;
                v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
                v31 = [v27 predicateMatchingPredicates:v30];

                v32 = [MEMORY[0x277CD5E38] songsQuery];
                [v32 addFilterPredicate:v31];
                [v32 setEntityLimit:1];
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v33 = [v32 items];
                v34 = [v33 countByEnumeratingWithState:&v68 objects:v80 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v69;
                  do
                  {
                    for (j = 0; j != v35; ++j)
                    {
                      if (*v69 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      [v7 addObject:*(*(&v68 + 1) + 8 * j)];
                    }

                    v35 = [v33 countByEnumeratingWithState:&v68 objects:v80 count:16];
                  }

                  while (v35);
                }

                v15 = v62;
                self = v25;
              }

              v63 = [v62 countByEnumeratingWithState:&v72 objects:v86 count:16];
            }

            while (v63);
            v10 = v54;
            v6 = v55;
            v9 = v56;
            v11 = v58;
          }
        }

        else
        {
          v15 = [v12 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];
          v38 = [v15 items];
          [v7 addObjectsFromArray:v38];
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v9);
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v39 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v40 = sub_233505670(@"Add Media Items To Playlist", v39);
    v41 = self->_requestAceHash;
    self->_requestAceHash = v40;
  }

  v42 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->_requestAceHash;
    v44 = [v7 count];
    *buf = 138543618;
    v83 = v43;
    v84 = 2048;
    v85 = v44;
    _os_log_impl(&dword_2334D9000, v42, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: items to add: %lu", buf, 0x16u);
  }

  v45 = [(SAMPAddMediaItemsToPlaylist *)self insertLocation];
  v46 = [v45 isEqualToString:*MEMORY[0x277D48568]];

  if (v46)
  {
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v47 addObjectsFromArray:v7];
    v48 = [v6 items];
    [v47 addObjectsFromArray:v48];

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_2334E1888;
    v66[3] = &unk_2789DB918;
    v66[4] = self;
    v49 = v53;
    v67 = v53;
    [v6 replaceItems:v47 completion:v66];
  }

  else
  {
    v50 = [(SAMPAddMediaItemsToPlaylist *)self insertLocation];
    v51 = [v50 isEqualToString:*MEMORY[0x277D48570]];

    if (v51)
    {
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_2334E1A28;
      v64[3] = &unk_2789DB918;
      v64[4] = self;
      v49 = v53;
      v65 = v53;
      [v6 appendItems:v7 completion:v64];
    }

    else
    {
      v49 = v53;
      [MPAssistantAddMediaItemsToPlaylist _notifyAssistantWithString:@"Uexpected insertion order requested." requestHash:self->_requestAceHash completion:v53];
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_appendToPlaylistWithCompletion:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMPAddMediaItemsToPlaylist *)self playlist];
  v6 = [v5 MPMediaItemCollectionRepresentationWithUserIdentity:self->_userIdentity plugin:@"Add Media Items To Playlist" hash:self->_requestAceHash];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collection object was not a playlist. Unable to add tracks to something that is not a playlist."];
    if (![(NSString *)self->_requestAceHash length])
    {
      v15 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
      v16 = sub_233505670(@"Add Media Items To Playlist", v15);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v16;
    }

    v18 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_requestAceHash;
      v30 = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_ERROR, "Add Media Items To Playlist (append) <%{public}@>: failed: %{public}@", &v30, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v7];
    goto LABEL_15;
  }

  v7 = [v6 valueForProperty:*MEMORY[0x277CD5928]];
  if (![v7 BOOLValue])
  {
    v21 = objc_alloc(MEMORY[0x277D47208]);
    v20 = [v21 initWithErrorCode:*MEMORY[0x277D485F0]];
LABEL_15:
    v22 = v20;
    v23 = [v20 dictionary];
    v4[2](v4, v23);

    goto LABEL_16;
  }

  v8 = [(MPAssistantAddMediaItemsToPlaylist *)self _isSagaAuthenticated];
  v9 = [(NSString *)self->_requestAceHash length];
  if (v8)
  {
    if (!v9)
    {
      v10 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
      v11 = sub_233505670(@"Add Media Items To Playlist", v10);
      v12 = self->_requestAceHash;
      self->_requestAceHash = v11;
    }

    v13 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_requestAceHash;
      v30 = 138543362;
      v31 = v14;
      _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (append) <%{public}@>: iCML available", &v30, 0xCu);
    }

    [(MPAssistantAddMediaItemsToPlaylist *)self _addItemsToCloudLibrary:v4];
  }

  else
  {
    if (!v9)
    {
      v25 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
      v26 = sub_233505670(@"Add Media Items To Playlist", v25);
      v27 = self->_requestAceHash;
      self->_requestAceHash = v26;
    }

    v28 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_requestAceHash;
      v30 = 138543362;
      v31 = v29;
      _os_log_impl(&dword_2334D9000, v28, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (append) <%{public}@>: local library", &v30, 0xCu);
    }

    [(MPAssistantAddMediaItemsToPlaylist *)self _addItemsToLocalLibrary:v4];
  }

LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v6 = sub_233505670(@"Add Media Items To Playlist", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(SAMPAddMediaItemsToPlaylist *)self insertLocation];
    v11 = [(SAMPAddMediaItemsToPlaylist *)self mediaItems];
    v12 = [(SAMPAddMediaItemsToPlaylist *)self playlist];
    v13 = [v12 dictionary];
    *buf = 138544130;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (invoke) <%{public}@>: insert location %{public}@, media item %{public}@, playlist %{public}@", buf, 0x2Au);
  }

  v14 = self->_requestAceHash;
  v15 = [(SAMPAddMediaItemsToPlaylist *)self influencedUserSharedUserId];
  v16 = [(SAMPAddMediaItemsToPlaylist *)self influencedUserSharedUserId];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2334E2150;
  v19[3] = &unk_2789DB648;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  sub_233506A24(@"Add Media Items To Playlist", v14, v15, v16, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(NSString *)self->_requestAceHash length])
  {
    v3 = [(MPAssistantAddMediaItemsToPlaylist *)self aceId];
    v4 = sub_233505670(@"Add Media Items To Playlist", v3);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v4;
  }

  v6 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_requestAceHash;
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2334D9000, v6, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (dealloc) <%{public}@>: dealloced", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = MPAssistantAddMediaItemsToPlaylist;
  [(MPAssistantAddMediaItemsToPlaylist *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_notifyAssistantWithError:(id)a3 requestHash:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = a5;
    v10 = [v8 stringWithFormat:@"%@", a3];
    v11 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:v10];
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 dictionary];
      *buf = 138543874;
      v19 = @"Add Media Items To Playlist";
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "%{public}@ (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v14 = MEMORY[0x277D47218];
  v15 = a5;
  v11 = objc_alloc_init(v14);
  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v11 dictionary];
    *buf = 138543874;
    v19 = @"Add Media Items To Playlist";
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x20u);
LABEL_6:
  }

  v16 = [v11 dictionary];
  (*(a5 + 2))(a5, v16);

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_notifyAssistantWithString:(id)a3 requestHash:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = MEMORY[0x277D47208];
    v10 = a5;
    v11 = [[v9 alloc] initWithReason:v7];
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 dictionary];
      v20 = 138543874;
      v21 = @"Add Media Items To Playlist";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v13;
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_2334D9000, v14, v15, "%{public}@ (completion) <%{public}@>: notifying assistant %{public}@", &v20, 0x20u);
    }
  }

  else
  {
    v16 = MEMORY[0x277D47218];
    v17 = a5;
    v11 = objc_alloc_init(v16);
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 dictionary];
      v20 = 138543874;
      v21 = @"Add Media Items To Playlist";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v13;
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  v18 = [v11 dictionary];
  (*(a5 + 2))(a5, v18);

  v19 = *MEMORY[0x277D85DE8];
}

@end