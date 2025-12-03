@interface AAPIntentsInfoSyncHandler
- (id)_pbLocalizedProjectsForVocabularyInfoDictionary:(id)dictionary;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info;
- (void)dealloc;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation AAPIntentsInfoSyncHandler

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPIntentsInfoSyncHandler;
  [(AAPIntentsInfoSyncHandler *)&v3 dealloc];
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info
{
  if ([info count] >= 1 && (objc_msgSend(validity, "isEqualToString:", @"IntentsInfo") & 1) == 0)
  {
    [info resetWithValidity:@"IntentsInfo"];
  }

  if (self->_extensions)
  {
    sub_11F34(a2, self, info);
  }

  v11 = [objc_msgSend(objc_msgSend(info "appMetadata")];
  self->_appBundleId = v11;
  if (v11)
  {
    self->_extensions = objc_alloc_init(NSMutableArray);
    v12 = [LSApplicationProxy applicationProxyForIdentifier:self->_appBundleId];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    plugInKitPlugins = [v12 plugInKitPlugins];
    v14 = [plugInKitPlugins countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      v17 = INIntentsServiceExtensionPointName;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(plugInKitPlugins);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          if ([objc_msgSend(v19 "protocol")])
          {
            [(NSMutableArray *)self->_extensions addObject:v19];
          }
        }

        v15 = [plugInKitPlugins countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    v20 = [INAppInfo appInfoWithAppProxy:v12];
    self->_appInfo = v20;
    if (![-[INAppInfo supportedIntents](v20 "supportedIntents")])
    {
      v21 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        appBundleId = self->_appBundleId;
        *buf = 136315394;
        v29 = "[AAPIntentsInfoSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:]";
        v30 = 2112;
        v31 = appBundleId;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: The app %@ no longer supports any intents", buf, 0x16u);
      }

      if ([info count] >= 1)
      {
        [info resetWithValidity:@"IntentsInfo"];
      }
    }
  }

  else
  {
    v23 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_11F9C(v23);
    }
  }
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  if ([-[INAppInfo supportedIntents](self->_appInfo "supportedIntents")])
  {
    anchorCopy = anchor;
    supportedIntents = [(INAppInfo *)self->_appInfo supportedIntents];
    if (![supportedIntents count])
    {
      v8 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_12020(self, v8);
      }
    }

    actionsRestrictedWhileLocked = [(INAppInfo *)self->_appInfo actionsRestrictedWhileLocked];
    supportedMediaCategories = [(INAppInfo *)self->_appInfo supportedMediaCategories];
    v11 = [-[NSMutableArray firstObject](self->_extensions "firstObject")];
    if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = [LSApplicationProxy applicationProxyForIdentifier:self->_appBundleId];
    }

    selfCopy = self;
    infoCopy = info;
    v51 = supportedMediaCategories;
    v50 = actionsRestrictedWhileLocked;
    if ([v12 bundleURL])
    {
      v13 = +[NSBundle bundleWithURL:](NSBundle, "bundleWithURL:", [v12 bundleURL]);
    }

    else
    {
      v13 = 0;
    }

    localizations = [(NSBundle *)v13 localizations];
    v55 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](localizations, "count")}];
    obj = localizations;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v15 = [(NSArray *)localizations countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v74;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v74 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v73 + 1) + 8 * i);
          v20 = [(NSBundle *)v13 URLForResource:@"AppIntentVocabulary" withExtension:@"plist" subdirectory:0 localization:v19];
          if (v20)
          {
            v21 = [[NSDictionary alloc] initWithContentsOfURL:v20];
            if (v21)
            {
              [v55 setObject:v21 forKey:v19];
            }
          }
        }

        v16 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v16);
    }

    v22 = objc_alloc_init(_INPBAppBundleInfo);
    v23 = objc_alloc_init(_INPBIntentSupport);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v24 = [supportedIntents countByEnumeratingWithState:&v69 objects:v80 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v70;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v70 != v26)
          {
            objc_enumerationMutation(supportedIntents);
          }

          v28 = *(*(&v69 + 1) + 8 * j);
          v29 = objc_alloc_init(_INPBIntentType);
          [v29 setType:v28];
          [v23 addIntentsSupported:v29];
        }

        v25 = [supportedIntents countByEnumeratingWithState:&v69 objects:v80 count:16];
      }

      while (v25);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v30 = [v50 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v66;
      do
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v66 != v32)
          {
            objc_enumerationMutation(v50);
          }

          v34 = *(*(&v65 + 1) + 8 * k);
          v35 = objc_alloc_init(_INPBIntentType);
          [v35 setType:v34];
          [v23 addIntentsRestrictedWhileLocked:v35];
        }

        v31 = [v50 countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v31);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v36 = [v51 countByEnumeratingWithState:&v61 objects:v78 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v62;
      do
      {
        for (m = 0; m != v37; m = m + 1)
        {
          if (*v62 != v38)
          {
            objc_enumerationMutation(v51);
          }

          [v23 addSupportedMediaCategories:*(*(&v61 + 1) + 8 * m)];
        }

        v37 = [v51 countByEnumeratingWithState:&v61 objects:v78 count:16];
      }

      while (v37);
    }

    [v22 addIntentSupport:v23];
    v40 = [(AAPIntentsInfoSyncHandler *)selfCopy _pbLocalizedProjectsForVocabularyInfoDictionary:INVocabulariesByLocaleByAddingInvocationPhrases()];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = [v40 countByEnumeratingWithState:&v57 objects:v77 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v58;
      do
      {
        for (n = 0; n != v42; n = n + 1)
        {
          if (*v58 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [v22 addLocalizedProjects:*(*(&v57 + 1) + 8 * n)];
        }

        v42 = [v40 countByEnumeratingWithState:&v57 objects:v77 count:16];
      }

      while (v42);
    }

    data = [v22 data];
    CC_SHA1([data bytes], objc_msgSend(data, "length"), md);
    v46 = [NSMutableString stringWithCapacity:40];
    for (ii = 0; ii != 20; ++ii)
    {
      [(NSMutableString *)v46 appendFormat:@"%02x", md[ii]];
    }

    if (([(NSMutableString *)v46 isEqualToString:anchorCopy]& 1) != 0)
    {
      v48 = 0;
    }

    else
    {
      v49 = objc_alloc_init(SAIntentGroupProtobufMessage);
      [v49 setData:data];
      [v49 setTypeName:@"sirikit.apps.AppBundleInfo"];
      v48 = objc_alloc_init(SAIntentGroupAceAppIntentPolicyAndVocab);
      [v48 setAceAppBundleInfo:v49];
      [v48 setIdentifier:{+[NSURL URLWithString:](NSURL, "URLWithString:", selfCopy->_appBundleId)}];
    }

    [infoCopy setObject:v48];
    [infoCopy setPostAnchor:v46];
    [infoCopy setIsDelete:0];
  }

  else
  {
    [info setObject:0];
    [info setIsDelete:0];

    [info setPostAnchor:0];
  }
}

- (void)syncDidEnd
{
  self->_extensions = 0;

  self->_appBundleId = 0;
  self->_appInfo = 0;
}

- (id)_pbLocalizedProjectsForVocabularyInfoDictionary:(id)dictionary
{
  v53 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dictionary, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = [dictionary allKeys];
  v54 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (v54)
  {
    v51 = *v108;
    v50 = _INIntentTypePhrasesKey;
    v62 = _INIntentTypeKey;
    v61 = _INIntentVocabularyExamplesKey;
    v49 = _INIntentSlotVocabularyPoliciesKey;
    v59 = _INIntentSlotVocabularyValuesKey;
    v60 = _INIntentSlotNamesKey;
    v69 = _INIntentSlotVocabularyRequiresUserIdentificationKey;
    v70 = _INIntentSlotVocabularyIdentifierKey;
    v68 = _INIntentSlotVocabularySynonymsKey;
    v78 = _INIntentSlotVocabularyPhraseKey;
    v77 = _INIntentSlotVocabularyPronunciationKey;
    v76 = _INIntentSlotVocabularyExamplesKey;
    do
    {
      v3 = 0;
      do
      {
        if (*v108 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v3;
        v4 = *(*(&v107 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v5 = [dictionary objectForKey:v4];
        v6 = objc_alloc_init(_INPBLocalizedProject);
        v7 = objc_alloc_init(_INPBLanguageTag);
        [v7 setTag:v4];
        v55 = v6;
        [v6 setLanguage:v7];
        v8 = objc_alloc_init(_INPBIntentVocabulary);
        v74 = v5;
        v9 = [v5 aap_arrayValueForKey:v50 expectedContainingObjectsType:objc_opt_class()];
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v103 objects:v117 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v104;
          do
          {
            v13 = 0;
            do
            {
              if (*v104 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v103 + 1) + 8 * v13);
              v15 = objc_alloc_init(_INPBIntentTypePhrases);
              v16 = objc_alloc_init(_INPBIntentType);
              [v16 setType:{objc_msgSend(v14, "aap_stringValueForKey:", v62)}];
              [v15 setIntentType:v16];
              v17 = [v14 aap_arrayValueForKey:v61 expectedContainingObjectsType:objc_opt_class()];
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v18 = [v17 countByEnumeratingWithState:&v99 objects:v116 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v100;
                do
                {
                  v21 = 0;
                  do
                  {
                    if (*v100 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    [v15 addIntentVocabularyExamples:*(*(&v99 + 1) + 8 * v21)];
                    v21 = v21 + 1;
                  }

                  while (v19 != v21);
                  v19 = [v17 countByEnumeratingWithState:&v99 objects:v116 count:16];
                }

                while (v19);
              }

              [v8 addIntentTypePhrases:v15];
              v13 = v13 + 1;
            }

            while (v13 != v11);
            v11 = [v9 countByEnumeratingWithState:&v103 objects:v117 count:16];
          }

          while (v11);
        }

        v22 = [v74 aap_arrayValueForKey:v49 expectedContainingObjectsType:objc_opt_class()];
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v58 = v22;
        v65 = [v22 countByEnumeratingWithState:&v95 objects:v115 count:16];
        if (v65)
        {
          v63 = *v96;
          v64 = v8;
          do
          {
            v23 = 0;
            do
            {
              if (*v96 != v63)
              {
                objc_enumerationMutation(v58);
              }

              v66 = v23;
              v24 = *(*(&v95 + 1) + 8 * v23);
              v25 = objc_alloc_init(_INPBIntentSlotVocabularyPolicy);
              v26 = [v24 aap_arrayValueForKey:v60 expectedContainingObjectsType:objc_opt_class()];
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v27 = [v26 countByEnumeratingWithState:&v91 objects:v114 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v92;
                do
                {
                  v30 = 0;
                  do
                  {
                    if (*v92 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    [v25 addIntentSlotNames:*(*(&v91 + 1) + 8 * v30)];
                    v30 = v30 + 1;
                  }

                  while (v28 != v30);
                  v28 = [v26 countByEnumeratingWithState:&v91 objects:v114 count:16];
                }

                while (v28);
              }

              v31 = [v24 aap_arrayValueForKey:v59 expectedContainingObjectsType:objc_opt_class()];
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v67 = v31;
              v73 = [v31 countByEnumeratingWithState:&v87 objects:v113 count:16];
              if (v73)
              {
                v71 = *v88;
                v72 = v25;
                do
                {
                  v32 = 0;
                  do
                  {
                    if (*v88 != v71)
                    {
                      objc_enumerationMutation(v67);
                    }

                    v75 = v32;
                    v33 = *(*(&v87 + 1) + 8 * v32);
                    v34 = objc_alloc_init(_INPBIntentSlotVocabularyConcept);
                    [v34 setIdentifier:{objc_msgSend(v33, "aap_stringValueForKey:", v70)}];
                    [v34 setRequiresUserIdentification:{objc_msgSend(v33, "aap_BOOLValueForKey:", v69)}];
                    v35 = [v33 aap_arrayValueForKey:v68 expectedContainingObjectsType:objc_opt_class()];
                    v83 = 0u;
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v36 = [v35 countByEnumeratingWithState:&v83 objects:v112 count:16];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = *v84;
                      do
                      {
                        v39 = 0;
                        do
                        {
                          if (*v84 != v38)
                          {
                            objc_enumerationMutation(v35);
                          }

                          v40 = *(*(&v83 + 1) + 8 * v39);
                          v41 = objc_alloc_init(_INPBIntentSlotVocabularyValue);
                          [v41 setPhrase:{objc_msgSend(v40, "aap_stringValueForKey:", v78)}];
                          [v41 setPronunciation:{objc_msgSend(v40, "aap_stringValueForKey:", v77)}];
                          v42 = [v40 aap_arrayValueForKey:v76 expectedContainingObjectsType:objc_opt_class()];
                          v79 = 0u;
                          v80 = 0u;
                          v81 = 0u;
                          v82 = 0u;
                          v43 = [v42 countByEnumeratingWithState:&v79 objects:v111 count:16];
                          if (v43)
                          {
                            v44 = v43;
                            v45 = *v80;
                            do
                            {
                              v46 = 0;
                              do
                              {
                                if (*v80 != v45)
                                {
                                  objc_enumerationMutation(v42);
                                }

                                [v41 addExamples:*(*(&v79 + 1) + 8 * v46)];
                                v46 = v46 + 1;
                              }

                              while (v44 != v46);
                              v44 = [v42 countByEnumeratingWithState:&v79 objects:v111 count:16];
                            }

                            while (v44);
                          }

                          [v34 addSynonyms:v41];
                          v39 = v39 + 1;
                        }

                        while (v39 != v37);
                        v37 = [v35 countByEnumeratingWithState:&v83 objects:v112 count:16];
                      }

                      while (v37);
                    }

                    v25 = v72;
                    [v72 addIntentSlotVocabularyConcepts:v34];
                    v32 = v75 + 1;
                  }

                  while ((v75 + 1) != v73);
                  v73 = [v67 countByEnumeratingWithState:&v87 objects:v113 count:16];
                }

                while (v73);
              }

              v8 = v64;
              [v64 addIntentSlotVocabularyPolicies:v25];
              v23 = v66 + 1;
            }

            while ((v66 + 1) != v65);
            v65 = [v58 countByEnumeratingWithState:&v95 objects:v115 count:16];
          }

          while (v65);
        }

        [v55 setIntentVocabulary:v8];
        [v53 addObject:v55];
        objc_autoreleasePoolPop(context);
        v3 = v57 + 1;
      }

      while ((v57 + 1) != v54);
      v54 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
    }

    while (v54);
  }

  return v53;
}

@end