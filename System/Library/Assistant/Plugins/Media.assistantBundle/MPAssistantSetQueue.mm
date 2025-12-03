@interface MPAssistantSetQueue
- (void)_performMediaItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion;
- (void)_performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:(BOOL)run onlyPlayableItems:(BOOL)items onlyLocalItems:(BOOL)localItems completion:(id)completion;
- (void)_performRadioStationSetQueueAsDryRun:(BOOL)run completion:(id)completion;
- (void)_performStoreItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion;
- (void)_performWithCompletion:(id)completion;
- (void)_playAlbumFromMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion;
- (void)_playMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
- (void)sendQueue:(id)queue toDestination:(id)destination shouldResync:(BOOL)resync completion:(id)completion;
@end

@implementation MPAssistantSetQueue

- (void)sendQueue:(id)queue toDestination:(id)destination shouldResync:(BOOL)resync completion:(id)completion
{
  queueCopy = queue;
  destinationCopy = destination;
  completionCopy = completion;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2334F750C;
  v28[3] = &unk_2789DB8F0;
  v13 = queueCopy;
  v29 = v13;
  selfCopy = self;
  resyncCopy = resync;
  v31 = completionCopy;
  v14 = completionCopy;
  v15 = MEMORY[0x2383A14D0](v28);
  v16 = dispatch_queue_create("com.apple.mediaPlayer.assistant.setQueue.sendCommand", 0);
  v17 = [destinationCopy mutableCopy];
  [v17 setSingleGroup:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334F76C4;
  v22[3] = &unk_2789DB940;
  v23 = destinationCopy;
  selfCopy2 = self;
  v26 = v13;
  v27 = v15;
  v25 = v17;
  v18 = v13;
  v19 = v17;
  v20 = v15;
  v21 = destinationCopy;
  MEMORY[0x2383A0F90](v16, v22);
}

- (void)_playMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion
{
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2334F7DE8;
  v16[3] = &unk_2789DB8A0;
  v16[4] = self;
  v17 = itemsCopy;
  v18 = dCopy;
  v19 = completionCopy;
  runCopy = run;
  v13 = completionCopy;
  v14 = dCopy;
  v15 = itemsCopy;
  sub_2334F7DE8(v16, 0);
}

- (void)_playAlbumFromMediaItems:(id)items contextID:(id)d dryRun:(BOOL)run completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSetQueue *)self aceId];
    v14 = sub_233505670(@"Set Queue", aceId);
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
    v30 = itemsCopy;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: find album with pid %{public}@", buf, 0x16u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2334F8844;
  v22[3] = &unk_2789DB8A0;
  v22[4] = self;
  v23 = itemsCopy;
  v24 = dCopy;
  v25 = completionCopy;
  runCopy = run;
  v18 = completionCopy;
  v19 = dCopy;
  v20 = itemsCopy;
  sub_2334F8844(v22, 0);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:(BOOL)run onlyPlayableItems:(BOOL)items onlyLocalItems:(BOOL)localItems completion:(id)completion
{
  localItemsCopy = localItems;
  itemsCopy = items;
  runCopy = run;
  v177 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mediaItems = [(MPAssistantSetQueue *)self mediaItems];
  identifier = [mediaItems identifier];

  refId = [(MPAssistantSetQueue *)self refId];
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
  v134 = completionCopy;
  v159 = v134;
  v132 = refId;
  v158 = v132;
  v161 = runCopy;
  v135 = MEMORY[0x2383A14D0](v157);
  scheme = [identifier scheme];
  LODWORD(refId) = [scheme isEqualToString:@"x-sampplaylist"];

  if (refId)
  {
    obj = [MEMORY[0x277CD5E38] playlistsQuery];
    if (self->_userIdentity)
    {
      v11 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [obj setMediaLibrary:v11];
    }

    lastPathComponent = [identifier lastPathComponent];
    if (![lastPathComponent length])
    {
      v82 = objc_alloc(MEMORY[0x277D47208]);
      array = [v82 initWithErrorCode:*MEMORY[0x277D48648]];
      (*(v134 + 2))(v134, 1, array);
      goto LABEL_89;
    }

    v12 = [MEMORY[0x277CD5E30] predicateWithValue:lastPathComponent forProperty:*MEMORY[0x277CD58F0]];
    [obj addFilterPredicate:v12];

    objc_storeStrong(v163 + 5, obj);
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId = [(MPAssistantSetQueue *)self aceId];
      v14 = sub_233505670(@"Set Queue", aceId);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v14;
    }

    array = _MPLogCategoryAssistant();
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_requestAceHash;
      collections = [obj collections];
      firstObject = [collections firstObject];
      *buf = 138543618;
      v174 = v17;
      v175 = 2114;
      v176 = firstObject;
      _os_log_impl(&dword_2334D9000, array, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: playlist %{public}@", buf, 0x16u);
    }

    goto LABEL_98;
  }

  scheme2 = [identifier scheme];
  v21 = [scheme2 isEqualToString:@"x-sampmeditem"];

  if (!v21)
  {
    scheme3 = [identifier scheme];
    v59 = [scheme3 isEqualToString:@"x-sampcollection-album"];

    if (!v59)
    {
LABEL_99:
      v135[2]();
      goto LABEL_100;
    }

    v60 = MEMORY[0x277CCABB0];
    lastPathComponent2 = [identifier lastPathComponent];
    obj = [v60 numberWithLongLong:{objc_msgSend(lastPathComponent2, "longLongValue")}];

    if (![obj longLongValue])
    {
      if (![(NSString *)self->_requestAceHash length])
      {
        aceId2 = [(MPAssistantSetQueue *)self aceId];
        v97 = sub_233505670(@"Set Queue", aceId2);
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
      lastPathComponent = [v101 initWithErrorCode:*MEMORY[0x277D48648]];
      (*(v134 + 2))(v134, 0, lastPathComponent);
      goto LABEL_90;
    }

    lastPathComponent = objc_alloc_init(MEMORY[0x277CD5E38]);
    if (self->_userIdentity)
    {
      v62 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [lastPathComponent setMediaLibrary:v62];
    }

    [lastPathComponent setIgnoreSystemFilterPredicates:1];
    [lastPathComponent setShouldIncludeNonLibraryEntities:1];
    v63 = [MEMORY[0x277CD5E30] predicateWithValue:obj forProperty:*MEMORY[0x277CD5890]];
    [lastPathComponent addFilterPredicate:v63];

    v64 = MEMORY[0x277CCABB0];
    items = [lastPathComponent items];
    firstObject2 = [items firstObject];
    v67 = *MEMORY[0x277CD56C8];
    v68 = [firstObject2 valueForProperty:*MEMORY[0x277CD56C8]];
    array = [v64 numberWithUnsignedLongLong:{objc_msgSend(v68, "unsignedLongLongValue")}];

    longLongValue = [array longLongValue];
    v70 = self->_requestAceHash;
    if (!longLongValue)
    {
      if (![(NSString *)v70 length])
      {
        aceId3 = [(MPAssistantSetQueue *)self aceId];
        v120 = sub_233505670(@"Set Queue", aceId3);
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
      aceId4 = [(MPAssistantSetQueue *)self aceId];
      v72 = sub_233505670(@"Set Queue", aceId4);
      v73 = self->_requestAceHash;
      self->_requestAceHash = v72;
    }

    v74 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = self->_requestAceHash;
      items2 = [lastPathComponent items];
      firstObject3 = [items2 firstObject];
      *buf = 138543618;
      v174 = v75;
      v175 = 2114;
      v176 = firstObject3;
      _os_log_impl(&dword_2334D9000, v74, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: pilot item %{public}@", buf, 0x16u);
    }

    albumsQuery = [MEMORY[0x277CD5E38] albumsQuery];
    if (self->_userIdentity)
    {
      v79 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [albumsQuery setMediaLibrary:v79];
    }

    [albumsQuery setIgnoreSystemFilterPredicates:1];
    [albumsQuery setShouldIncludeNonLibraryEntities:1];
    v80 = [MEMORY[0x277CD5E30] predicateWithValue:array forProperty:v67];
    [albumsQuery addFilterPredicate:v80];

    v81 = v163[5];
    v163[5] = albumsQuery;

LABEL_98:
    goto LABEL_99;
  }

  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  lastPathComponent = [(MPAssistantSetQueue *)self mediaItems];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  items3 = [lastPathComponent items];
  v23 = [items3 countByEnumeratingWithState:&v153 objects:v172 count:16];
  if (v23)
  {
    v24 = *v154;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v154 != v24)
        {
          objc_enumerationMutation(items3);
        }

        identifier2 = [*(*(&v153 + 1) + 8 * i) identifier];
        if (sub_23350261C(identifier2) == 3)
        {
          lastPathComponent3 = [identifier2 lastPathComponent];
          longLongValue2 = [lastPathComponent3 longLongValue];

          if (!longLongValue2)
          {
            goto LABEL_23;
          }

          v29 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue2];
          [obj addObject:v29];
        }

        else
        {
          if (![(NSString *)self->_requestAceHash length])
          {
            aceId5 = [(MPAssistantSetQueue *)self aceId];
            v31 = sub_233505670(@"Set Queue", aceId5);
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
            v176 = identifier2;
            _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_ERROR, "Set Queue (store) <%{public}@>: content origin %{public}@", buf, 0x16u);
          }
        }

LABEL_23:
      }

      v23 = [items3 countByEnumeratingWithState:&v153 objects:v172 count:16];
    }

    while (v23);
  }

  if (![obj count])
  {
    identifier3 = [lastPathComponent identifier];
    v84 = identifier3 == 0;

    if (!v84)
    {
      identifier4 = [lastPathComponent identifier];
      lastPathComponent4 = [identifier4 lastPathComponent];
      longLongValue3 = [lastPathComponent4 longLongValue];

      if (longLongValue3)
      {
        v88 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue3];
        [obj addObject:v88];
      }
    }
  }

  if (![obj count])
  {
    v89 = objc_alloc(MEMORY[0x277D47208]);
    array = [v89 initWithErrorCode:*MEMORY[0x277D48648]];
    (*(v134 + 2))(v134, 1, array);
    goto LABEL_89;
  }

  array = [MEMORY[0x277CBEB18] array];
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
  v130 = localItemsCopy || itemsCopy;
  if (localItemsCopy)
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
          aceId6 = [(MPAssistantSetQueue *)self aceId];
          v91 = sub_233505670(@"Set Queue", aceId6);
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
      items4 = [v37 items];
      LOBYTE(v42) = [items4 count] == 0;

      if (v42)
      {
        if (![(NSString *)self->_requestAceHash length])
        {
          aceId7 = [(MPAssistantSetQueue *)self aceId];
          v103 = sub_233505670(@"Set Queue", aceId7);
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
      items5 = [v37 items];
      v49 = [items5 countByEnumeratingWithState:&v145 objects:v168 count:16];
      if (v49)
      {
        v50 = *v146;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v146 != v50)
            {
              objc_enumerationMutation(items5);
            }

            [array addObject:*(*(&v145 + 1) + 8 * k)];
          }

          v49 = [items5 countByEnumeratingWithState:&v145 objects:v168 count:16];
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

  if ([array count]!= 1)
  {
    v109 = [objc_alloc(MEMORY[0x277CD5E38]) initWithEntities:array entityType:0];
    v110 = v163[5];
    v163[5] = v109;

    if (self->_userIdentity)
    {
      v111 = [MEMORY[0x277CD5E10] deviceMediaLibraryWithUserIdentity:?];
      [v163[5] setMediaLibrary:v111];
    }

    if (![(NSString *)self->_requestAceHash length])
    {
      aceId8 = [(MPAssistantSetQueue *)self aceId];
      v113 = sub_233505670(@"Set Queue", aceId8);
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
    aceId9 = [(MPAssistantSetQueue *)self aceId];
    v53 = sub_233505670(@"Set Queue", aceId9);
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
    v176 = array;
    _os_log_impl(&dword_2334D9000, v55, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: album from %{public}@", buf, 0x16u);
  }

  v57 = [objc_alloc(MEMORY[0x277CD5DF0]) initWithItems:array];
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = sub_2334FAA74;
  v142[3] = &unk_2789DB760;
  v143 = v135;
  v144 = v134;
  [(MPAssistantSetQueue *)self _playAlbumFromMediaItems:v57 contextID:v132 dryRun:runCopy completion:v142];

  v37 = v143;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
LABEL_100:

  _Block_object_dispose(&v162, 8);
  v118 = *MEMORY[0x277D85DE8];
}

- (void)_performStoreItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion
{
  completionCopy = completion;
  mediaItems = [(MPAssistantSetQueue *)self mediaItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2334FAB84;
  v10[3] = &unk_2789DB710;
  v11 = mediaItems;
  v12 = completionCopy;
  v10[4] = self;
  runCopy = run;
  v8 = mediaItems;
  v9 = completionCopy;
  sub_2334FAB84(v10, 0);
}

- (void)_performMediaItemsSetQueueAsDryRun:(BOOL)run completion:(id)completion
{
  runCopy = run;
  completionCopy = completion;
  mediaItems = [(MPAssistantSetQueue *)self mediaItems];
  identifier = [mediaItems identifier];
  refId = [(MPAssistantSetQueue *)self refId];
  v10 = [mediaItems MPMediaItemQueryOnlyPlayableItems:1 withUserIdentity:self->_userIdentity plugin:@"Set Queue" hash:self->_requestAceHash];
  if ([v10 _countOfItems])
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2334FBE48;
    v34[3] = &unk_2789DB738;
    v30 = v10;
    v35 = v30;
    v11 = identifier;
    v36 = v11;
    v37 = mediaItems;
    selfCopy = self;
    v12 = refId;
    v39 = v12;
    v41 = runCopy;
    v29 = completionCopy;
    v40 = v29;
    v13 = MEMORY[0x2383A14D0](v34);
    scheme = [v11 scheme];
    if ([scheme isEqualToString:@"x-sampmeditem"])
    {
      v27 = v12;
      v28 = runCopy;
      [v30 items];
      v15 = v13;
      v16 = mediaItems;
      v17 = v10;
      v18 = refId;
      v19 = identifier;
      v21 = v20 = completionCopy;
      v22 = [v21 count];

      completionCopy = v20;
      identifier = v19;
      refId = v18;
      v10 = v17;
      mediaItems = v16;
      v13 = v15;

      if (v22 == 1)
      {
        collections = [v30 collections];
        firstObject = [collections firstObject];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_2334FBF74;
        v31[3] = &unk_2789DB760;
        v32 = v15;
        v33 = v29;
        [(MPAssistantSetQueue *)self _playAlbumFromMediaItems:firstObject contextID:v27 dryRun:v28 completion:v31];

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
  (*(completionCopy + 2))(completionCopy, v26);

LABEL_9:
}

- (void)_performRadioStationSetQueueAsDryRun:(BOOL)run completion:(id)completion
{
  completionCopy = completion;
  mediaItems = [(MPAssistantSetQueue *)self mediaItems];
  identifier = [mediaItems identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2334FC074;
  v11[3] = &unk_2789DB710;
  v12 = identifier;
  v13 = completionCopy;
  v11[4] = self;
  runCopy = run;
  v9 = identifier;
  v10 = completionCopy;
  sub_2334FC074(v11, 0);
}

- (void)_performWithCompletion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mediaItems = [(MPAssistantSetQueue *)self mediaItems];
  identifier = [mediaItems identifier];

  scheme = [identifier scheme];
  v8 = scheme;
  if (!scheme)
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId = [(MPAssistantSetQueue *)self aceId];
      v17 = sub_233505670(@"Set Queue", aceId);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v17;
    }

    v19 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v20 = self->_requestAceHash;
    dryRun = [(MPAssistantSetQueue *)self dryRun];
    v22 = &stru_2848D4AE0;
    *buf = 138543874;
    v63 = v20;
    v64 = 2114;
    if (dryRun)
    {
      v22 = @" ⚠️ DRY RUN";
    }

    v65 = identifier;
    v66 = 2114;
    v67 = v22;
    v23 = "Set Queue (invalid) <%{public}@>: invoke with identifier %{public}@%{public}@";
    goto LABEL_16;
  }

  if ([scheme isEqualToString:@"x-sampradio"])
  {
    if (![(NSString *)self->_requestAceHash length])
    {
      aceId2 = [(MPAssistantSetQueue *)self aceId];
      v10 = sub_233505670(@"Set Queue", aceId2);
      v11 = self->_requestAceHash;
      self->_requestAceHash = v10;
    }

    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_requestAceHash;
      dryRun2 = [(MPAssistantSetQueue *)self dryRun];
      v15 = &stru_2848D4AE0;
      *buf = 138543874;
      v63 = v13;
      v64 = 2114;
      if (dryRun2)
      {
        v15 = @" ⚠️ DRY RUN";
      }

      v65 = identifier;
      v66 = 2114;
      v67 = v15;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Set Queue (radio) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
    }

    [(MPAssistantSetQueue *)self _performRadioStationSetQueueAsDryRun:[(MPAssistantSetQueue *)self dryRun] completion:completionCopy];
    goto LABEL_51;
  }

  v26 = sub_23350261C(identifier);
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
        aceId3 = [(MPAssistantSetQueue *)self aceId];
        v28 = sub_233505670(@"Set Queue", aceId3);
        v29 = self->_requestAceHash;
        self->_requestAceHash = v28;
      }

      v30 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_requestAceHash;
        dryRun3 = [(MPAssistantSetQueue *)self dryRun];
        v33 = &stru_2848D4AE0;
        *buf = 138543874;
        v63 = v31;
        v64 = 2114;
        if (dryRun3)
        {
          v33 = @" ⚠️ DRY RUN";
        }

        v65 = identifier;
        v66 = 2114;
        v67 = v33;
        _os_log_impl(&dword_2334D9000, v30, OS_LOG_TYPE_DEFAULT, "Set Queue (local) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
      }

      [(MPAssistantSetQueue *)self _performMediaItemsSetQueueAsDryRun:[(MPAssistantSetQueue *)self dryRun] completion:completionCopy];
      goto LABEL_51;
    }

    if (![(NSString *)self->_requestAceHash length])
    {
      aceId4 = [(MPAssistantSetQueue *)self aceId];
      v46 = sub_233505670(@"Set Queue", aceId4);
      v47 = self->_requestAceHash;
      self->_requestAceHash = v46;
    }

    v19 = _MPLogCategoryAssistant();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v24 = objc_alloc(MEMORY[0x277D47208]);
      v25 = [v24 initWithErrorCode:*MEMORY[0x277D48638]];
      completionCopy[2](completionCopy, v25);

      goto LABEL_51;
    }

    v48 = self->_requestAceHash;
    dryRun4 = [(MPAssistantSetQueue *)self dryRun];
    v50 = &stru_2848D4AE0;
    *buf = 138543874;
    v63 = v48;
    v64 = 2114;
    if (dryRun4)
    {
      v50 = @" ⚠️ DRY RUN";
    }

    v65 = identifier;
    v66 = 2114;
    v67 = v50;
    v23 = "Set Queue (invalid) <%{public}@>: invoke with invalid origin identifier %{public}@%{public}@";
LABEL_16:
    _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_ERROR, v23, buf, 0x20u);
    goto LABEL_17;
  }

  sharedUserIdFromPlayableMusicAccount = [(MPAssistantSetQueue *)self sharedUserIdFromPlayableMusicAccount];
  if ([sharedUserIdFromPlayableMusicAccount length])
  {
    assetInfo = [(MPAssistantSetQueue *)self assetInfo];
    v36 = [assetInfo length];

    if (!v36)
    {
      if (![(NSString *)self->_requestAceHash length])
      {
        aceId5 = [(MPAssistantSetQueue *)self aceId];
        v38 = sub_233505670(@"Set Queue", aceId5);
        v39 = self->_requestAceHash;
        self->_requestAceHash = v38;
      }

      v40 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_requestAceHash;
        dryRun5 = [(MPAssistantSetQueue *)self dryRun];
        v43 = &stru_2848D4AE0;
        *buf = 138543874;
        v63 = v41;
        v64 = 2114;
        if (dryRun5)
        {
          v43 = @" ⚠️ DRY RUN";
        }

        v65 = identifier;
        v66 = 2114;
        v67 = v43;
        _os_log_impl(&dword_2334D9000, v40, OS_LOG_TYPE_DEFAULT, "Set Queue (localstore) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
      }

      dryRun6 = [(MPAssistantSetQueue *)self dryRun];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_2334FD034;
      v59[3] = &unk_2789DB698;
      v59[4] = self;
      v60 = identifier;
      v61 = completionCopy;
      [(MPAssistantSetQueue *)self _performMediaItemsSetQueueFromStoreIdentifiersAsDryRun:dryRun6 onlyPlayableItems:1 onlyLocalItems:0 completion:v59];

      goto LABEL_51;
    }
  }

  else
  {
  }

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId6 = [(MPAssistantSetQueue *)self aceId];
    v52 = sub_233505670(@"Set Queue", aceId6);
    v53 = self->_requestAceHash;
    self->_requestAceHash = v52;
  }

  v54 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = self->_requestAceHash;
    dryRun7 = [(MPAssistantSetQueue *)self dryRun];
    v57 = &stru_2848D4AE0;
    *buf = 138543874;
    v63 = v55;
    v64 = 2114;
    if (dryRun7)
    {
      v57 = @" ⚠️ DRY RUN";
    }

    v65 = identifier;
    v66 = 2114;
    v67 = v57;
    _os_log_impl(&dword_2334D9000, v54, OS_LOG_TYPE_DEFAULT, "Set Queue (store) <%{public}@>: invoke with identifier %{public}@%{public}@", buf, 0x20u);
  }

  [(MPAssistantSetQueue *)self _performStoreItemsSetQueueAsDryRun:[(MPAssistantSetQueue *)self dryRun] completion:completionCopy];
LABEL_51:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  helperCopy = helper;
  v8 = objc_alloc_init(MEMORY[0x277D27820]);
  availability = self->_availability;
  self->_availability = v8;

  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantSetQueue *)self aceId];
    v11 = sub_233505670(@"Set Queue", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v11;
  }

  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = self->_requestAceHash;
    hashedRouteUIDs = [(MPAssistantSetQueue *)self hashedRouteUIDs];
    v29 = [hashedRouteUIDs count];
    [(MPAssistantSetQueue *)self assetInfo];
    v31 = v33 = completionCopy;
    v14 = [v31 length] != 0;
    requesterSharedUserId = [(MPAssistantSetQueue *)self requesterSharedUserId];
    v16 = helperCopy;
    v17 = [requesterSharedUserId length] != 0;
    sharedUserIdFromPlayableMusicAccount = [(MPAssistantSetQueue *)self sharedUserIdFromPlayableMusicAccount];
    v19 = [sharedUserIdFromPlayableMusicAccount length] != 0;
    startPlaying = [(MPAssistantSetQueue *)self startPlaying];
    *buf = 138544642;
    v37 = v30;
    v38 = 2048;
    v39 = v29;
    v40 = 1024;
    v41 = v14;
    v42 = 1024;
    v43 = v17;
    helperCopy = v16;
    v44 = 1024;
    v45 = v19;
    v46 = 2114;
    v47 = startPlaying;
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Set Queue (invoke) <%{public}@>: %lu UIDs, asset info present %{BOOL}u, requester shared user id present %{BOOL}u, playable music account shared user id present %{BOOL}u, start %{public}@", buf, 0x32u);

    completionCopy = v33;
  }

  v21 = self->_requestAceHash;
  hashedRouteUIDs2 = [(MPAssistantSetQueue *)self hashedRouteUIDs];
  sub_2335057BC(@"Set Queue", v21, hashedRouteUIDs2);

  serviceHelper = self->_serviceHelper;
  self->_serviceHelper = helperCopy;
  v24 = helperCopy;

  v25 = sub_23350699C();
  v26 = dispatch_queue_create("com.apple.mediaPlayer.assistant.setQueue", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2334FD4DC;
  block[3] = &unk_2789DB670;
  block[4] = self;
  v35 = completionCopy;
  v27 = completionCopy;
  dispatch_group_notify(v25, v26, block);

  v28 = *MEMORY[0x277D85DE8];
}

@end