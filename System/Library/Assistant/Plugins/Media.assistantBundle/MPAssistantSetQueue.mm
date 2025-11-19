@interface MPAssistantSetQueue
- (void)_performMediaItemsSetQueueAsDryRun:(BOOL)a3 completion:(id)a4;
- (void)_performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:(BOOL)a3 onlyPlayableItems:(BOOL)a4 onlyLocalItems:(BOOL)a5 completion:(id)a6;
- (void)_performRadioStationSetQueueAsDryRun:(BOOL)a3 completion:(id)a4;
- (void)_performStoreItemsSetQueueAsDryRun:(BOOL)a3 completion:(id)a4;
- (void)_performWithCompletion:(id)a3;
- (void)_playAlbumFromMediaItems:(id)a3 contextID:(id)a4 dryRun:(BOOL)a5 completion:(id)a6;
- (void)_playMediaItems:(id)a3 contextID:(id)a4 dryRun:(BOOL)a5 completion:(id)a6;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
- (void)sendQueue:(id)a3 toDestination:(id)a4 shouldResync:(BOOL)a5 completion:(id)a6;
@end

@implementation MPAssistantSetQueue

- (void)sendQueue:(id)a3 toDestination:(id)a4 shouldResync:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334F750C;
  v28[3] = &unk_2789DB8F0;
  v13 = v10;
  v29 = v13;
  v30 = self;
  v32 = a5;
  v31 = v12;
  v14 = v12;
  v15 = MEMORY[0x2383A14D0](v28);
  v16 = dispatch_queue_create("com.apple.mediaPlayer.assistant.setQueue.sendCommand", 0);
  v17 = [v11 mutableCopy];
  [v17 setSingleGroup:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334F76C4;
  v22[3] = &unk_2789DB940;
  v23 = v11;
  v24 = self;
  v26 = v13;
  v27 = v15;
  v25 = v17;
  v18 = v13;
  v19 = v17;
  v20 = v15;
  v21 = v11;
  MEMORY[0x2383A0F90](v16, v22);
}

- (void)_playMediaItems:(id)a3 contextID:(id)a4 dryRun:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2334F7DE8;
  v16[3] = &unk_2789DB8A0;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = a5;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  sub_2334F7DE8(v16, 0);
}

- (void)_playAlbumFromMediaItems:(id)a3 contextID:(id)a4 dryRun:(BOOL)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (![(NSString *)self->_requestAceHash length])
  {
    v13 = [(MPAssistantSetQueue *)self aceId];
    v14 = sub_233505670(@"Set Queue", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_requestAceHash;
    *buf = 138543618;
    v28 = v17;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: find album with pid %{public}@", buf, 0x16u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334F8844;
  v22[3] = &unk_2789DB8A0;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a5;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  sub_2334F8844(v22, 0);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:(BOOL)a3 onlyPlayableItems:(BOOL)a4 onlyLocalItems:(BOOL)a5 completion:(id)a6
{
  v136 = a5;
  v129 = a4;
  v133 = a3;
  v177 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = [(MPAssistantSetQueue *)self mediaItems];
  v139 = [v8 identifier];

  v9 = [(MPAssistantSetQueue *)self refId];
  v162 = 0;
  v163 = &v162;
  v164 = 0x3032000000;
  v165 = sub_2334FA878;
  v166 = sub_2334FA888;
  v167 = 0;
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = sub_2334FA890;
  v157[3] = &unk_2789DB828;
  v160 = &v162;
  v157[4] = self;
  v134 = v7;
  v159 = v134;
  v132 = v9;
  v158 = v132;
  v161 = v133;
  v135 = MEMORY[0x2383A14D0](v157);
  v10 = [v139 scheme];
  LODWORD(v9) = [v10 isEqualToString:@"x-sampplaylist"];

  if (v9)
  {
    obj = [MEMORY[0x277CD5E38] playlistsQuery];
    if (self->_userIdentity)
    {
      v11 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [obj setMediaLibrary:v11];
    }

    v138 = [v139 lastPathComponent];
    if (![v138 length])
    {
      v82 = objc_alloc(MEMORY[0x277D47208]);
      v16 = [v82 initWithErrorCode:*MEMORY[0x277D48648]];
      (*(v134 + 2))(v134, 1, v16);
      goto LABEL_89;
    }

    v12 = [MEMORY[0x277CD5E30] predicateWithValue:v138 forProperty:*MEMORY[0x277CD58F0]];
    [obj addFilterPredicate:v12];

    objc_storeStrong(v163 + 5, obj);
    if (![(NSString *)self->_requestAceHash length])
    {
      v13 = [(MPAssistantSetQueue *)self aceId];
      v14 = sub_233505670(@"Set Queue", v13);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v14;
    }

    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_requestAceHash;
      v18 = [obj collections];
      v19 = [v18 firstObject];
      *buf = 138543618;
      v174 = v17;
      v175 = 2114;
      v176 = v19;
      _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: playlist %{public}@", buf, 0x16u);
    }

    goto LABEL_98;
  }

  v20 = [v139 scheme];
  v21 = [v20 isEqualToString:@"x-sampmeditem"];

  if (!v21)
  {
    v58 = [v139 scheme];
    v59 = [v58 isEqualToString:@"x-sampcollection-album"];

    if (!v59)
    {
LABEL_99:
      v135[2]();
      goto LABEL_100;
    }

    v60 = MEMORY[0x277CCABB0];
    v61 = [v139 lastPathComponent];
    obj = [v60 numberWithLongLong:{objc_msgSend(v61, "longLongValue")}];

    if (![obj longLongValue])
    {
      if (![(NSString *)self->_requestAceHash length])
      {
        v96 = [(MPAssistantSetQueue *)self aceId];
        v97 = sub_233505670(@"Set Queue", v96);
        v98 = self->_requestAceHash;
        self->_requestAceHash = v97;
      }

      v99 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        v100 = self->_requestAceHash;
        *buf = 138543362;
        v174 = v100;
        _os_log_impl(&dword_2334D9000, v99, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no identifier received", buf, 0xCu);
      }

      v101 = objc_alloc(MEMORY[0x277D47208]);
      v138 = [v101 initWithErrorCode:*MEMORY[0x277D48648]];
      (*(v134 + 2))(v134, 0, v138);
      goto LABEL_90;
    }

    v138 = objc_alloc_init(MEMORY[0x277CD5E38]);
    if (self->_userIdentity)
    {
      v62 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [v138 setMediaLibrary:v62];
    }

    [v138 setIgnoreSystemFilterPredicates:1];
    [v138 setShouldIncludeNonLibraryEntities:1];
    v63 = [MEMORY[0x277CD5E30] predicateWithValue:obj forProperty:*MEMORY[0x277CD5890]];
    [v138 addFilterPredicate:v63];

    v64 = MEMORY[0x277CCABB0];
    v65 = [v138 items];
    v66 = [v65 firstObject];
    v67 = *MEMORY[0x277CD56C8];
    v68 = [v66 valueForProperty:*MEMORY[0x277CD56C8]];
    v16 = [v64 numberWithUnsignedLongLong:{objc_msgSend(v68, "unsignedLongLongValue")}];

    v69 = [v16 longLongValue];
    v70 = self->_requestAceHash;
    if (!v69)
    {
      if (![(NSString *)v70 length])
      {
        v119 = [(MPAssistantSetQueue *)self aceId];
        v120 = sub_233505670(@"Set Queue", v119);
        v121 = self->_requestAceHash;
        self->_requestAceHash = v120;
      }

      v122 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v123 = self->_requestAceHash;
        *buf = 138543618;
        v174 = v123;
        v175 = 2114;
        v176 = obj;
        _os_log_impl(&dword_2334D9000, v122, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no local item %{public}@.", buf, 0x16u);
      }

      v124 = objc_alloc(MEMORY[0x277D47208]);
      v57 = [v124 initWithErrorCode:*MEMORY[0x277D48640]];
      (*(v134 + 2))(v134, 1, v57);
      goto LABEL_88;
    }

    if (![(NSString *)v70 length])
    {
      v71 = [(MPAssistantSetQueue *)self aceId];
      v72 = sub_233505670(@"Set Queue", v71);
      v73 = self->_requestAceHash;
      self->_requestAceHash = v72;
    }

    v74 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = self->_requestAceHash;
      v76 = [v138 items];
      v77 = [v76 firstObject];
      *buf = 138543618;
      v174 = v75;
      v175 = 2114;
      v176 = v77;
      _os_log_impl(&dword_2334D9000, v74, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: pilot item %{public}@", buf, 0x16u);
    }

    v78 = [MEMORY[0x277CD5E38] albumsQuery];
    if (self->_userIdentity)
    {
      v79 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [v78 setMediaLibrary:v79];
    }

    [v78 setIgnoreSystemFilterPredicates:1];
    [v78 setShouldIncludeNonLibraryEntities:1];
    v80 = [MEMORY[0x277CD5E30] predicateWithValue:v16 forProperty:v67];
    [v78 addFilterPredicate:v80];

    v81 = v163[5];
    v163[5] = v78;

LABEL_98:
    goto LABEL_99;
  }

  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v138 = [(MPAssistantSetQueue *)self mediaItems];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v22 = [v138 items];
  v23 = [v22 countByEnumeratingWithState:&v153 objects:v172 count:16];
  if (v23)
  {
    v24 = *v154;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v154 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [*(*(&v153 + 1) + 8 * i) identifier];
        if (sub_23350261C(v26) == 3)
        {
          v27 = [v26 lastPathComponent];
          v28 = [v27 longLongValue];

          if (!v28)
          {
            goto LABEL_23;
          }

          v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
          [obj addObject:v29];
        }

        else
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            v30 = [(MPAssistantSetQueue *)self aceId];
            v31 = sub_233505670(@"Set Queue", v30);
            v32 = self->_requestAceHash;
            self->_requestAceHash = v31;
          }

          v29 = _MPLogCategoryAssistant();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v33 = self->_requestAceHash;
            *buf = 138543618;
            v174 = v33;
            v175 = 2114;
            v176 = v26;
            _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: content origin %{public}@", buf, 0x16u);
          }
        }

LABEL_23:
      }

      v23 = [v22 countByEnumeratingWithState:&v153 objects:v172 count:16];
    }

    while (v23);
  }

  if (![obj count])
  {
    v83 = [v138 identifier];
    v84 = v83 == 0;

    if (!v84)
    {
      v85 = [v138 identifier];
      v86 = [v85 lastPathComponent];
      v87 = [v86 longLongValue];

      if (v87)
      {
        v88 = [MEMORY[0x277CCABB0] numberWithLongLong:v87];
        [obj addObject:v88];
      }
    }
  }

  if (![obj count])
  {
    v89 = objc_alloc(MEMORY[0x277D47208]);
    v16 = [v89 initWithErrorCode:*MEMORY[0x277D48648]];
    (*(v134 + 2))(v134, 1, v16);
    goto LABEL_89;
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = obj;
  v34 = [obj countByEnumeratingWithState:&v149 objects:v171 count:16];
  if (!v34)
  {
    goto LABEL_48;
  }

  v131 = *v150;
  v35 = MEMORY[0x277CD57A0];
  v127 = *MEMORY[0x277CD5888];
  v126 = *MEMORY[0x277CD58A0];
  v130 = v136 || v129;
  if (v136)
  {
    v35 = MEMORY[0x277CD5790];
  }

  v128 = *v35;
  while (2)
  {
    v125 = v34;
    for (j = 0; j != v125; ++j)
    {
      if (*v150 != v131)
      {
        objc_enumerationMutation(obj);
      }

      v140 = *(*(&v149 + 1) + 8 * j);
      v37 = objc_alloc_init(MEMORY[0x277CD5E38]);
      if (self->_userIdentity)
      {
        v38 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
        [v37 setMediaLibrary:v38];
      }

      [v37 setIgnoreSystemFilterPredicates:1];
      [v37 setShouldIncludeNonLibraryEntities:1];
      if (!v130 || ([MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:v128], (v137 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if (![(NSString *)self->_requestAceHash length])
        {
          v90 = [(MPAssistantSetQueue *)self aceId];
          v91 = sub_233505670(@"Set Queue", v90);
          v92 = self->_requestAceHash;
          self->_requestAceHash = v91;
        }

        v93 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v94 = self->_requestAceHash;
          *buf = 138543362;
          v174 = v94;
          _os_log_impl(&dword_2334D9000, v93, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no playable type set", buf, 0xCu);
        }

        v95 = [objc_alloc(MEMORY[0x277D47208]) initWithReason:@"no playable type set"];
        (*(v134 + 2))(v134, 1, v95);

        goto LABEL_86;
      }

      v39 = MEMORY[0x277CD5DB8];
      v40 = MEMORY[0x277CD5DC0];
      v41 = [MEMORY[0x277CD5E30] predicateWithValue:v140 forProperty:v127];
      v169[0] = v41;
      v42 = [MEMORY[0x277CD5E30] predicateWithValue:v140 forProperty:v126];
      v169[1] = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
      v44 = [v40 predicateMatchingPredicates:v43];
      v170[0] = v44;
      v170[1] = v137;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
      v46 = [v39 predicateMatchingPredicates:v45];

      [v37 addFilterPredicate:v46];
      v47 = [v37 items];
      LOBYTE(v42) = [v47 count] == 0;

      if (v42)
      {
        if (![(NSString *)self->_requestAceHash length])
        {
          v102 = [(MPAssistantSetQueue *)self aceId];
          v103 = sub_233505670(@"Set Queue", v102);
          v104 = self->_requestAceHash;
          self->_requestAceHash = v103;
        }

        v105 = _MPLogCategoryAssistant();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          v106 = self->_requestAceHash;
          *buf = 138543618;
          v174 = v106;
          v175 = 2114;
          v176 = v140;
          _os_log_impl(&dword_2334D9000, v105, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: no local item %{public}@", buf, 0x16u);
        }

        v107 = objc_alloc(MEMORY[0x277D47208]);
        v108 = [v107 initWithErrorCode:*MEMORY[0x277D48640]];
        (*(v134 + 2))(v134, 1, v108);

LABEL_86:
        v57 = obj;
        goto LABEL_87;
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v48 = [v37 items];
      v49 = [v48 countByEnumeratingWithState:&v145 objects:v168 count:16];
      if (v49)
      {
        v50 = *v146;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v146 != v50)
            {
              objc_enumerationMutation(v48);
            }

            [v16 addObject:*(*(&v145 + 1) + 8 * k)];
          }

          v49 = [v48 countByEnumeratingWithState:&v145 objects:v168 count:16];
        }

        while (v49);
      }
    }

    v34 = [obj countByEnumeratingWithState:&v149 objects:v171 count:16];
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_48:

  if ([v16 count]!= 1)
  {
    v109 = [objc_alloc(MEMORY[0x277CD5E38]) initWithEntities:v16 entityType:0];
    v110 = v163[5];
    v163[5] = v109;

    if (self->_userIdentity)
    {
      v111 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [v163[5] setMediaLibrary:v111];
    }

    if (![(NSString *)self->_requestAceHash length])
    {
      v112 = [(MPAssistantSetQueue *)self aceId];
      v113 = sub_233505670(@"Set Queue", v112);
      v114 = self->_requestAceHash;
      self->_requestAceHash = v113;
    }

    v115 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = self->_requestAceHash;
      v117 = v163[5];
      *buf = 138543618;
      v174 = v116;
      v175 = 2114;
      v176 = v117;
      _os_log_impl(&dword_2334D9000, v115, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: queue from %{public}@", buf, 0x16u);
    }

    goto LABEL_98;
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v52 = [(MPAssistantSetQueue *)self aceId];
    v53 = sub_233505670(@"Set Queue", v52);
    v54 = self->_requestAceHash;
    self->_requestAceHash = v53;
  }

  v55 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = self->_requestAceHash;
    *buf = 138543618;
    v174 = v56;
    v175 = 2114;
    v176 = v16;
    _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: album from %{public}@", buf, 0x16u);
  }

  v57 = [objc_alloc(MEMORY[0x277CD5DF0]) initWithItems:v16];
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = sub_2334FAA74;
  v142[3] = &unk_2789DB760;
  v143 = v135;
  v144 = v134;
  [(MPAssistantSetQueue *)self _playAlbumFromMediaItems:v57 contextID:v132 dryRun:v133 completion:v142];

  v37 = v143;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
LABEL_100:

  _Block_object_dispose(&v162, 8);
  v118 = *MEMORY[0x277D85DE8];
}

- (void)_performStoreItemsSetQueueAsDryRun:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MPAssistantSetQueue *)self mediaItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334FAB84;
  v10[3] = &unk_2789DB710;
  v11 = v7;
  v12 = v6;
  v10[4] = self;
  v13 = a3;
  v8 = v7;
  v9 = v6;
  sub_2334FAB84(v10, 0);
}

- (void)_performMediaItemsSetQueueAsDryRun:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MPAssistantSetQueue *)self mediaItems];
  v8 = [v7 identifier];
  v9 = [(MPAssistantSetQueue *)self refId];
  v10 = [v7 MPMediaItemQueryOnlyPlayableItems:1 withUserIdentity:self->_userIdentity plugin:@"Set Queue" hash:self->_requestAceHash];
  if ([v10 _countOfItems])
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2334FBE48;
    v34[3] = &unk_2789DB738;
    v30 = v10;
    v35 = v30;
    v11 = v8;
    v36 = v11;
    v37 = v7;
    v38 = self;
    v12 = v9;
    v39 = v12;
    v41 = v4;
    v29 = v6;
    v40 = v29;
    v13 = MEMORY[0x2383A14D0](v34);
    v14 = [v11 scheme];
    if ([v14 isEqualToString:@"x-sampmeditem"])
    {
      v27 = v12;
      v28 = v4;
      [v30 items];
      v15 = v13;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = v8;
      v21 = v20 = v6;
      v22 = [v21 count];

      v6 = v20;
      v8 = v19;
      v9 = v18;
      v10 = v17;
      v7 = v16;
      v13 = v15;

      if (v22 == 1)
      {
        v23 = [v30 collections];
        v24 = [v23 firstObject];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_2334FBF74;
        v31[3] = &unk_2789DB760;
        v32 = v15;
        v33 = v29;
        [(MPAssistantSetQueue *)self _playAlbumFromMediaItems:v24 contextID:v27 dryRun:v28 completion:v31];

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13[2](v13);
    goto LABEL_8;
  }

  v25 = objc_alloc(MEMORY[0x277D47208]);
  v26 = [v25 initWithErrorCode:*MEMORY[0x277D48640]];
  (*(v6 + 2))(v6, v26);

LABEL_9:
}

- (void)_performRadioStationSetQueueAsDryRun:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MPAssistantSetQueue *)self mediaItems];
  v8 = [v7 identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334FC074;
  v11[3] = &unk_2789DB710;
  v12 = v8;
  v13 = v6;
  v11[4] = self;
  v14 = a3;
  v9 = v8;
  v10 = v6;
  sub_2334FC074(v11, 0);
}

- (void)_performWithCompletion:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MPAssistantSetQueue *)self mediaItems];
  v6 = [v5 identifier];

  v7 = [v6 scheme];
  v8 = v7;
  if (!v7)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v16 = [(MPAssistantSetQueue *)self aceId];
      v17 = sub_233505670(@"Set Queue", v16);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v17;
    }

    v19 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v20 = self->_requestAceHash;
    v21 = [(MPAssistantSetQueue *)self dryRun];
    v22 = &stru_2848D4AE0;
    *buf = 138543874;
    v63 = v20;
    v64 = 2114;
    if (v21)
    {
      v22 = @" ⚠️ DRY RUN";
    }

    v65 = v6;
    v66 = 2114;
    v67 = v22;
    v23 = "Set Queue (invalid) <%{public}@>: invoke with identifier %{public}@%{public}@";
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"x-sampradio"])
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      v9 = [(MPAssistantSetQueue *)self aceId];
      v10 = sub_233505670(@"Set Queue", v9);
      v11 = self->_requestAceHash;
      self->_requestAceHash = v10;
    }

    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_requestAceHash;
      v14 = [(MPAssistantSetQueue *)self dryRun];
      v15 = &stru_2848D4AE0;
      *buf = 138543874;
      v63 = v13;
      v64 = 2114;
      if (v14)
      {
        v15 = @" ⚠️ DRY RUN";
      }

      v65 = v6;
      v66 = 2114;
      v67 = v15;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Set Queue (radio) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
    }

    [(MPAssistantSetQueue *)self _performRadioStationSetQueueAsDryRun:[(MPAssistantSetQueue *)self dryRun] completion:v4];
    goto LABEL_51;
  }

  v26 = sub_23350261C(v6);
  if (v26 == 4)
  {
    goto LABEL_21;
  }

  if (v26 != 3)
  {
    if (v26 == 1)
    {
LABEL_21:
      if (![(NSString *)self->_requestAceHash length])
      {
        v27 = [(MPAssistantSetQueue *)self aceId];
        v28 = sub_233505670(@"Set Queue", v27);
        v29 = self->_requestAceHash;
        self->_requestAceHash = v28;
      }

      v30 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_requestAceHash;
        v32 = [(MPAssistantSetQueue *)self dryRun];
        v33 = &stru_2848D4AE0;
        *buf = 138543874;
        v63 = v31;
        v64 = 2114;
        if (v32)
        {
          v33 = @" ⚠️ DRY RUN";
        }

        v65 = v6;
        v66 = 2114;
        v67 = v33;
        _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
      }

      [(MPAssistantSetQueue *)self _performMediaItemsSetQueueAsDryRun:[(MPAssistantSetQueue *)self dryRun] completion:v4];
      goto LABEL_51;
    }

    if (![(NSString *)self->_requestAceHash length])
    {
      v45 = [(MPAssistantSetQueue *)self aceId];
      v46 = sub_233505670(@"Set Queue", v45);
      v47 = self->_requestAceHash;
      self->_requestAceHash = v46;
    }

    v19 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v24 = objc_alloc(MEMORY[0x277D47208]);
      v25 = [v24 initWithErrorCode:*MEMORY[0x277D48638]];
      v4[2](v4, v25);

      goto LABEL_51;
    }

    v48 = self->_requestAceHash;
    v49 = [(MPAssistantSetQueue *)self dryRun];
    v50 = &stru_2848D4AE0;
    *buf = 138543874;
    v63 = v48;
    v64 = 2114;
    if (v49)
    {
      v50 = @" ⚠️ DRY RUN";
    }

    v65 = v6;
    v66 = 2114;
    v67 = v50;
    v23 = "Set Queue (invalid) <%{public}@>: invoke with invalid origin identifier %{public}@%{public}@";
LABEL_16:
    _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_ERROR, v23, buf, 0x20u);
    goto LABEL_17;
  }

  v34 = [(MPAssistantSetQueue *)self sharedUserIdFromPlayableMusicAccount];
  if ([v34 length])
  {
    v35 = [(MPAssistantSetQueue *)self assetInfo];
    v36 = [v35 length];

    if (!v36)
    {
      if (![(NSString *)self->_requestAceHash length])
      {
        v37 = [(MPAssistantSetQueue *)self aceId];
        v38 = sub_233505670(@"Set Queue", v37);
        v39 = self->_requestAceHash;
        self->_requestAceHash = v38;
      }

      v40 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_requestAceHash;
        v42 = [(MPAssistantSetQueue *)self dryRun];
        v43 = &stru_2848D4AE0;
        *buf = 138543874;
        v63 = v41;
        v64 = 2114;
        if (v42)
        {
          v43 = @" ⚠️ DRY RUN";
        }

        v65 = v6;
        v66 = 2114;
        v67 = v43;
        _os_log_impl(&dword_2334D9000, v40, OS_LOG_TYPE_DEFAULT, "Set Queue (localstore) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
      }

      v44 = [(MPAssistantSetQueue *)self dryRun];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_2334FD034;
      v59[3] = &unk_2789DB698;
      v59[4] = self;
      v60 = v6;
      v61 = v4;
      [(MPAssistantSetQueue *)self _performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:v44 onlyPlayableItems:1 onlyLocalItems:0 completion:v59];

      goto LABEL_51;
    }
  }

  else
  {
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    v51 = [(MPAssistantSetQueue *)self aceId];
    v52 = sub_233505670(@"Set Queue", v51);
    v53 = self->_requestAceHash;
    self->_requestAceHash = v52;
  }

  v54 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = self->_requestAceHash;
    v56 = [(MPAssistantSetQueue *)self dryRun];
    v57 = &stru_2848D4AE0;
    *buf = 138543874;
    v63 = v55;
    v64 = 2114;
    if (v56)
    {
      v57 = @" ⚠️ DRY RUN";
    }

    v65 = v6;
    v66 = 2114;
    v67 = v57;
    _os_log_impl(&dword_2334D9000, v54, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
  }

  [(MPAssistantSetQueue *)self _performStoreItemsSetQueueAsDryRun:[(MPAssistantSetQueue *)self dryRun] completion:v4];
LABEL_51:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D27820]);
  availability = self->_availability;
  self->_availability = v8;

  if (![(NSString *)self->_requestAceHash length])
  {
    v10 = [(MPAssistantSetQueue *)self aceId];
    v11 = sub_233505670(@"Set Queue", v10);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v11;
  }

  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = self->_requestAceHash;
    v32 = [(MPAssistantSetQueue *)self hashedRouteUIDs];
    v29 = [v32 count];
    [(MPAssistantSetQueue *)self assetInfo];
    v31 = v33 = v6;
    v14 = [v31 length] != 0;
    v15 = [(MPAssistantSetQueue *)self requesterSharedUserId];
    v16 = v7;
    v17 = [v15 length] != 0;
    v18 = [(MPAssistantSetQueue *)self sharedUserIdFromPlayableMusicAccount];
    v19 = [v18 length] != 0;
    v20 = [(MPAssistantSetQueue *)self startPlaying];
    *buf = 138544642;
    v37 = v30;
    v38 = 2048;
    v39 = v29;
    v40 = 1024;
    v41 = v14;
    v42 = 1024;
    v43 = v17;
    v7 = v16;
    v44 = 1024;
    v45 = v19;
    v46 = 2114;
    v47 = v20;
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Set Queue (invoke) <%{public}@>: %lu UIDs, asset info present %{BOOL}u, requester shared user id present %{BOOL}u, playable music account shared user id present %{BOOL}u, start %{public}@", buf, 0x32u);

    v6 = v33;
  }

  v21 = self->_requestAceHash;
  v22 = [(MPAssistantSetQueue *)self hashedRouteUIDs];
  sub_2335057BC(@"Set Queue", v21, v22);

  serviceHelper = self->_serviceHelper;
  self->_serviceHelper = v7;
  v24 = v7;

  v25 = sub_23350699C();
  v26 = dispatch_queue_create("com.apple.mediaPlayer.assistant.setQueue", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334FD4DC;
  block[3] = &unk_2789DB670;
  block[4] = self;
  v35 = v6;
  v27 = v6;
  dispatch_group_notify(v25, v26, block);

  v28 = *MEMORY[0x277D85DE8];
}

@end