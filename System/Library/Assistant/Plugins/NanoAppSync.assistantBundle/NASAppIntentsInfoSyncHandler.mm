@interface NASAppIntentsInfoSyncHandler
- (NASAppIntentsInfoSyncHandler)init;
- (id)_pbLocalizedProjectsForVocabularyInfoDictionary:(id)dictionary;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation NASAppIntentsInfoSyncHandler

- (id)_pbLocalizedProjectsForVocabularyInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v56 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v57 = dictionaryCopy;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = [dictionaryCopy allKeys];
  v58 = [obj countByEnumeratingWithState:&v114 objects:v125 count:16];
  if (v58)
  {
    v54 = _INIntentTypePhrasesKey;
    v55 = *v115;
    v68 = _INIntentVocabularyExamplesKey;
    v69 = _INIntentTypeKey;
    v53 = _INIntentSlotVocabularyPoliciesKey;
    v67 = _INIntentSlotNamesKey;
    v66 = _INIntentSlotVocabularyValuesKey;
    v77 = _INIntentSlotVocabularyIdentifierKey;
    v76 = _INIntentSlotVocabularySynonymsKey;
    v85 = _INIntentSlotVocabularyPhraseKey;
    v84 = _INIntentSlotVocabularyPronunciationKey;
    v83 = _INIntentSlotVocabularyExamplesKey;
    do
    {
      v4 = 0;
      do
      {
        if (*v115 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v4;
        v5 = *(*(&v114 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v6 = [v57 objectForKey:v5];
        v7 = objc_alloc_init(_INPBLocalizedProject);
        v8 = objc_alloc_init(_INPBLanguageTag);
        [v8 setTag:v5];
        v59 = v8;
        v60 = v7;
        [v7 setLanguage:v8];
        v9 = objc_alloc_init(_INPBIntentVocabulary);
        v63 = v6;
        v10 = [v6 nas_arrayValueForKey:v54 expectedContainingObjectsType:objc_opt_class()];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v65 = v10;
        v11 = [v10 countByEnumeratingWithState:&v110 objects:v124 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v111;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v111 != v13)
              {
                objc_enumerationMutation(v65);
              }

              v15 = *(*(&v110 + 1) + 8 * i);
              v16 = objc_alloc_init(_INPBIntentTypePhrases);
              v17 = objc_alloc_init(_INPBIntentType);
              v18 = [v15 nas_stringValueForKey:v69];
              [v17 setType:v18];

              [v16 setIntentType:v17];
              v19 = [v15 nas_arrayValueForKey:v68 expectedContainingObjectsType:objc_opt_class()];
              v106 = 0u;
              v107 = 0u;
              v108 = 0u;
              v109 = 0u;
              v20 = [v19 countByEnumeratingWithState:&v106 objects:v123 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v107;
                do
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v107 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    [v16 addIntentVocabularyExamples:*(*(&v106 + 1) + 8 * j)];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v106 objects:v123 count:16];
                }

                while (v21);
              }

              [v9 addIntentTypePhrases:v16];
            }

            v12 = [v65 countByEnumeratingWithState:&v110 objects:v124 count:16];
          }

          while (v12);
        }

        v24 = [v63 nas_arrayValueForKey:v53 expectedContainingObjectsType:objc_opt_class()];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v64 = v24;
        v72 = [v24 countByEnumeratingWithState:&v102 objects:v122 count:16];
        if (v72)
        {
          v70 = *v103;
          v71 = v9;
          do
          {
            v25 = 0;
            do
            {
              if (*v103 != v70)
              {
                objc_enumerationMutation(v64);
              }

              v74 = v25;
              v26 = *(*(&v102 + 1) + 8 * v25);
              v27 = objc_alloc_init(_INPBIntentSlotVocabularyPolicy);
              v28 = [v26 nas_arrayValueForKey:v67 expectedContainingObjectsType:objc_opt_class()];
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              v29 = [v28 countByEnumeratingWithState:&v98 objects:v121 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v99;
                do
                {
                  for (k = 0; k != v30; k = k + 1)
                  {
                    if (*v99 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    [v27 addIntentSlotNames:*(*(&v98 + 1) + 8 * k)];
                  }

                  v30 = [v28 countByEnumeratingWithState:&v98 objects:v121 count:16];
                }

                while (v30);
              }

              v73 = v28;
              v33 = [v26 nas_arrayValueForKey:v66 expectedContainingObjectsType:objc_opt_class()];
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v75 = v33;
              v80 = [v33 countByEnumeratingWithState:&v94 objects:v120 count:16];
              if (v80)
              {
                v78 = *v95;
                v79 = v27;
                do
                {
                  v34 = 0;
                  do
                  {
                    if (*v95 != v78)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v82 = v34;
                    v35 = *(*(&v94 + 1) + 8 * v34);
                    v36 = objc_alloc_init(_INPBIntentSlotVocabularyConcept);
                    v81 = [v35 nas_stringValueForKey:v77];
                    [v36 setIdentifier:?];
                    v37 = [v35 nas_arrayValueForKey:v76 expectedContainingObjectsType:objc_opt_class()];
                    v90 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v93 = 0u;
                    v38 = [v37 countByEnumeratingWithState:&v90 objects:v119 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v91;
                      do
                      {
                        for (m = 0; m != v39; m = m + 1)
                        {
                          if (*v91 != v40)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v42 = *(*(&v90 + 1) + 8 * m);
                          v43 = objc_alloc_init(_INPBIntentSlotVocabularyValue);
                          v44 = [v42 nas_stringValueForKey:v85];
                          [v43 setPhrase:v44];

                          v45 = [v42 nas_stringValueForKey:v84];
                          [v43 setPronunciation:v45];

                          v46 = [v42 nas_arrayValueForKey:v83 expectedContainingObjectsType:objc_opt_class()];
                          v86 = 0u;
                          v87 = 0u;
                          v88 = 0u;
                          v89 = 0u;
                          v47 = [v46 countByEnumeratingWithState:&v86 objects:v118 count:16];
                          if (v47)
                          {
                            v48 = v47;
                            v49 = *v87;
                            do
                            {
                              for (n = 0; n != v48; n = n + 1)
                              {
                                if (*v87 != v49)
                                {
                                  objc_enumerationMutation(v46);
                                }

                                [v43 addExamples:*(*(&v86 + 1) + 8 * n)];
                              }

                              v48 = [v46 countByEnumeratingWithState:&v86 objects:v118 count:16];
                            }

                            while (v48);
                          }

                          [v36 addSynonyms:v43];
                        }

                        v39 = [v37 countByEnumeratingWithState:&v90 objects:v119 count:16];
                      }

                      while (v39);
                    }

                    v27 = v79;
                    [v79 addIntentSlotVocabularyConcepts:v36];

                    v34 = v82 + 1;
                  }

                  while ((v82 + 1) != v80);
                  v80 = [v75 countByEnumeratingWithState:&v94 objects:v120 count:16];
                }

                while (v80);
              }

              v9 = v71;
              [v71 addIntentSlotVocabularyPolicies:v27];

              v25 = v74 + 1;
            }

            while ((v74 + 1) != v72);
            v72 = [v64 countByEnumeratingWithState:&v102 objects:v122 count:16];
          }

          while (v72);
        }

        [v60 setIntentVocabulary:v9];
        [v56 addObject:v60];

        objc_autoreleasePoolPop(context);
        v4 = v62 + 1;
      }

      while ((v62 + 1) != v58);
      v58 = [obj countByEnumeratingWithState:&v114 objects:v125 count:16];
    }

    while (v58);
  }

  return v56;
}

- (void)syncDidEnd
{
  nanoAppBundleId = self->_nanoAppBundleId;
  self->_nanoAppBundleId = 0;

  nanoAppInfo = self->_nanoAppInfo;
  self->_nanoAppInfo = 0;
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  anchorCopy = anchor;
  infoCopy = info;
  group = self->_group;
  v9 = dispatch_time(0, 3000000000);
  dispatch_group_wait(group, v9);
  nanoAppInfo = self->_nanoAppInfo;
  if (nanoAppInfo)
  {
    v62 = infoCopy;
    v64 = anchorCopy;
    v11 = [(NSDictionary *)nanoAppInfo objectForKey:ACXIntentsSupportedAggregateKey];
    v12 = [NSSet setWithArray:v11];

    v13 = [(NSDictionary *)self->_nanoAppInfo objectForKey:ACXIntentsRestrictedWhileLockedAggregateKey];
    v14 = [NSSet setWithArray:v13];

    selfCopy = self;
    v61 = [(NSDictionary *)self->_nanoAppInfo objectForKey:ACXContainerAppBundleIdKey];
    v15 = [LSApplicationProxy applicationProxyForIdentifier:?];
    bundleURL = [v15 bundleURL];
    v60 = v15;
    if (bundleURL)
    {
      v56 = v12;
      v57 = v14;
      v16 = [NSBundle alloc];
      bundleURL2 = [v15 bundleURL];
      v18 = [v16 initWithURL:bundleURL2];

      localizations = [v18 localizations];
      v65 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(localizations, "count")}];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v20 = localizations;
      v21 = [v20 countByEnumeratingWithState:&v78 objects:v85 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v79;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v79 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v78 + 1) + 8 * i);
            v26 = [v18 URLForResource:@"IntentVocabulary" withExtension:@"plist" subdirectory:0 localization:v25];
            if (v26)
            {
              v27 = [[NSDictionary alloc] initWithContentsOfURL:v26];
              if (v27)
              {
                [v65 setObject:v27 forKey:v25];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v78 objects:v85 count:16];
        }

        while (v22);
      }

      v12 = v56;
      v14 = v57;
    }

    else
    {
      v65 = 0;
    }

    v28 = objc_alloc_init(_INPBAppBundleInfo);
    v29 = objc_alloc_init(_INPBIntentSupport);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v30 = v12;
    v31 = [v30 countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v75;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v75 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v74 + 1) + 8 * j);
          v36 = objc_alloc_init(_INPBIntentType);
          [v36 setType:v35];
          [v29 addIntentsSupported:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v32);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v37 = v14;
    v38 = [v37 countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v71;
      do
      {
        for (k = 0; k != v39; k = k + 1)
        {
          if (*v71 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v70 + 1) + 8 * k);
          v43 = objc_alloc_init(_INPBIntentType);
          [v43 setType:v42];
          [v29 addIntentsRestrictedWhileLocked:v43];
        }

        v39 = [v37 countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v39);
    }

    [v28 addIntentSupport:v29];
    v44 = [(NASAppIntentsInfoSyncHandler *)selfCopy _pbLocalizedProjectsForVocabularyInfoDictionary:v65];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v67;
      do
      {
        for (m = 0; m != v46; m = m + 1)
        {
          if (*v67 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [v28 addLocalizedProjects:*(*(&v66 + 1) + 8 * m)];
        }

        v46 = [v44 countByEnumeratingWithState:&v66 objects:v82 count:16];
      }

      while (v46);
    }

    data = [v28 data];
    CC_SHA1([data bytes], objc_msgSend(data, "length"), md);
    v50 = [NSMutableString stringWithCapacity:40];
    for (n = 0; n != 20; ++n)
    {
      [v50 appendFormat:@"%02x", md[n]];
    }

    if ([v50 isEqualToString:v64])
    {
      infoCopy = v62;
      [v62 setObject:0];
    }

    else
    {
      v52 = objc_alloc_init(SAIntentGroupProtobufMessage);
      [v52 setData:data];
      v58 = v52;
      [v52 setTypeName:@"sirikit.apps.AppBundleInfo"];
      v53 = objc_alloc_init(SAIntentGroupAceAppIntentPolicyAndVocab);
      [v53 setAceAppBundleInfo:v52];
      v54 = [[NSString alloc] initWithFormat:@"x-apple-siri://nano/%@", selfCopy->_nanoAppBundleId];
      v55 = [NSURL URLWithString:v54];
      [v53 setIdentifier:v55];

      infoCopy = v62;
      [v62 setObject:v53];
    }

    [infoCopy setPostAnchor:v50];
    [infoCopy setIsDelete:0];

    anchorCopy = v64;
  }

  else
  {
    [infoCopy setObject:0];
    [infoCopy setIsDelete:0];
    [infoCopy setPostAnchor:0];
  }
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info
{
  validityCopy = validity;
  infoCopy = info;
  dispatch_group_enter(self->_group);
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1F54;
  v15[3] = &unk_8338;
  v16 = validityCopy;
  v17 = infoCopy;
  selfCopy = self;
  v19 = a2;
  v13 = infoCopy;
  v14 = validityCopy;
  dispatch_async(queue, v15);
}

- (NASAppIntentsInfoSyncHandler)init
{
  v8.receiver = self;
  v8.super_class = NASAppIntentsInfoSyncHandler;
  v2 = [(NASAppIntentsInfoSyncHandler *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Nano Intents Sync", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v5;
  }

  return v2;
}

@end