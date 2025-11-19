@interface AAPSyncMetaDataItemUpdate
- (AAPSyncMetaDataItemUpdate)initWithAppId:(id)a3 appProxy:(id)a4 anchor:(id)a5 configuration:(id)a6;
- (id)scrapeAppInfo;
- (id)valueForGenericParser:(id)a3 withDefaultGenerator:(id)a4 withErrorKeyDescriptor:(id)a5;
- (id)valueForPlistEntry:(id *)a3 inBundle:(__CFBundle *)a4 withInfo:(id)a5 entitlements:(id)a6;
- (id)valuesForEntries:(id *)a3 inPlistAtURL:(id)a4;
- (id)valuesForInfoPlistEntries:(id *)a3 inBundle:(__CFBundle *)a4 withEntitlements:(id)a5 forLocalization:(id)a6 ignoringDefaultValues:(id)a7;
- (id)valuesForLocalInfoPlistEntries:(id *)a3 inBundle:(__CFBundle *)a4 withEntitlements:(id)a5 ignoringDefaultValues:(id)a6;
- (void)_validate;
- (void)dealloc;
@end

@implementation AAPSyncMetaDataItemUpdate

- (AAPSyncMetaDataItemUpdate)initWithAppId:(id)a3 appProxy:(id)a4 anchor:(id)a5 configuration:(id)a6
{
  v11.receiver = self;
  v11.super_class = AAPSyncMetaDataItemUpdate;
  v9 = [(AAPSyncMetaDataItemUpdate *)&v11 init:a3];
  if (v9)
  {
    v9->_appId = [a3 copy];
    v9->_appProxy = a4;
    v9->_anchor = [a5 copy];
    [(AAPSyncMetaDataItemUpdate *)v9 _validate];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncMetaDataItemUpdate;
  [(AAPSyncMetaDataItemUpdate *)&v3 dealloc];
}

- (void)_validate
{
  if (!self->_appId)
  {
    sub_10B70();
  }

  if (!self->_appProxy)
  {
    sub_10BC4();
  }

  if (!self->_anchor)
  {
    sub_10C18();
  }

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  appId = self->_appId;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10C6C();
  }

  appProxy = self->_appProxy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10CC8();
  }

  anchor = self->_anchor;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10D24();
  }
}

- (id)valueForGenericParser:(id)a3 withDefaultGenerator:(id)a4 withErrorKeyDescriptor:(id)a5
{
  if (!a3)
  {
    sub_10D80();
  }

  if (!a5)
  {
    sub_10DDC();
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_6DB4;
  v30 = sub_6DC4;
  v31 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_6DD0;
  v25[3] = &unk_20A08;
  v25[4] = &v26;
  v9 = (*(a3 + 2))(a3, v25);
  v10 = v27[5];
  if (v9)
  {
    if (v10)
    {
      v11 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        v12 = (*(a5 + 2))(a5);
        appId = self->_appId;
        v14 = v27[5];
        *buf = 136316162;
        v33 = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
        v34 = 2114;
        v35 = v12;
        v36 = 2112;
        v37 = appId;
        v38 = 2114;
        v39 = v14;
        v40 = 2112;
        v41 = v9;
        _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: parsing encountered errors for %{public}@ (%@) but managed to recover -> errors=%{public}@ parsed=%@", buf, 0x34u);
      }
    }

    goto LABEL_18;
  }

  if (!v10 || (v15 = AFSiriLogContextPlugin, !os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR)))
  {
    if (a4)
    {
      goto LABEL_12;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v22 = (*(a5 + 2))(a5);
  v23 = self->_appId;
  v24 = v27[5];
  *buf = 136315906;
  v33 = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
  v34 = 2114;
  v35 = v22;
  v36 = 2112;
  v37 = v23;
  v38 = 2114;
  v39 = v24;
  _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: parsing failed for %{public}@ (%@) -> %{public}@", buf, 0x2Au);
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_12:
  v9 = (*(a4 + 2))(a4);
  v16 = AFSiriLogContextPlugin;
  v17 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (!v9)
  {
    if (v17)
    {
      v20 = (*(a5 + 2))(a5);
      sub_10E38(v20, self, buf, v16);
    }

    goto LABEL_17;
  }

  if (v17)
  {
    v18 = (*(a5 + 2))(a5);
    v19 = self->_appId;
    *buf = 136315906;
    v33 = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
    v34 = 2114;
    v35 = v18;
    v36 = 2112;
    v37 = v19;
    v38 = 2112;
    v39 = v9;
    _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: falling back to defaultGenerator value for %{public}@ (%@) -> %@", buf, 0x2Au);
  }

LABEL_18:

  _Block_object_dispose(&v26, 8);
  return v9;
}

- (id)valueForPlistEntry:(id *)a3 inBundle:(__CFBundle *)a4 withInfo:(id)a5 entitlements:(id)a6
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6F28;
  v9[3] = &unk_20A30;
  v9[5] = a6;
  v9[6] = a3;
  v9[4] = a5;
  var4 = a3->var4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6F9C;
  v8[3] = &unk_20A50;
  v8[4] = a3;
  return [(AAPSyncMetaDataItemUpdate *)self valueForGenericParser:v9 withDefaultGenerator:var4 withErrorKeyDescriptor:v8];
}

- (id)valuesForInfoPlistEntries:(id *)a3 inBundle:(__CFBundle *)a4 withEntitlements:(id)a5 forLocalization:(id)a6 ignoringDefaultValues:(id)a7
{
  v13 = objc_alloc_init(NSMutableSet);
  if (a3->var0)
  {
    v14 = a3 + 1;
    do
    {
      [v13 addObject:?];
      var0 = v14->var0;
      ++v14;
    }

    while (var0);
  }

  if (![v13 count])
  {
    goto LABEL_25;
  }

  if (a6)
  {
    FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
    if (!FilteredLocalizedInfoPlist)
    {
      v17 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_10EA8(a6, self, v17);
      }

LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    FilteredLocalizedInfoPlist = _CFBundleCreateFilteredInfoPlist();
    if (!FilteredLocalizedInfoPlist)
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_10F44();
      }

      goto LABEL_25;
    }
  }

  v18 = FilteredLocalizedInfoPlist;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    if (a3->var0)
    {
      v31 = a6;
      *&v20 = 136316162;
      v30 = v20;
      do
      {
        v21 = [(AAPSyncMetaDataItemUpdate *)self valueForPlistEntry:a3 inBundle:a4 withInfo:v18 entitlements:a5, v30];
        if (v21)
        {
          v22 = v21;
          if ([v21 isEqual:{objc_msgSend(a7, "objectForKey:", a3->var0)}])
          {
            v23 = AFSiriLogContextPlugin;
            if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
            {
              v24 = a3->var0;
              appId = self->_appId;
              *buf = v30;
              v33 = "[AAPSyncMetaDataItemUpdate valuesForInfoPlistEntries:inBundle:withEntitlements:forLocalization:ignoringDefaultValues:]";
              v34 = 2114;
              v35 = v24;
              v36 = 2112;
              v37 = appId;
              v38 = 2114;
              v39 = v31;
              v40 = 2112;
              v41 = v22;
              _os_log_debug_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: not setting value for key=%{public}@ (%@) for localization (%{public}@) because it is the same as the default -> %@", buf, 0x34u);
            }
          }

          else
          {
            [v19 setObject:v22 forKey:a3->var0];
          }
        }

        v26 = a3[1].var0;
        ++a3;
      }

      while (v26);
    }
  }

  else
  {
    v27 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      v33 = "[AAPSyncMetaDataItemUpdate valuesForInfoPlistEntries:inBundle:withEntitlements:forLocalization:ignoringDefaultValues:]";
      v34 = 2114;
      v29 = &stru_210F8;
      *buf = 136315906;
      if (a6)
      {
        v29 = a6;
      }

      v35 = v29;
      v36 = 2112;
      v37 = self;
      v38 = 2112;
      v39 = v18;
      _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: could not understand %{public}@ info file data for metaDataItem=%@ -> %@", buf, 0x2Au);
    }

    v19 = 0;
  }

LABEL_26:
  return v19;
}

- (id)valuesForLocalInfoPlistEntries:(id *)a3 inBundle:(__CFBundle *)a4 withEntitlements:(id)a5 ignoringDefaultValues:(id)a6
{
  v6 = -1;
  v7 = a3;
  do
  {
    var0 = v7->var0;
    ++v7;
    ++v6;
  }

  while (var0);
  if (v6 && (v9 = CFBundleCopyBundleLocalizations(a4)) != 0)
  {
    v10 = v9;
    v11 = [[NSMutableDictionary alloc] initWithCapacity:v6];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = [(__CFArray *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v29)
    {
      v23 = *v36;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [(AAPSyncMetaDataItemUpdate *)self valuesForInfoPlistEntries:a3 inBundle:a4 withEntitlements:a5 forLocalization:v13 ignoringDefaultValues:a6, v23];
          if ([v14 count])
          {
            v30 = i;
            CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v13);
            if (!CanonicalLocaleIdentifierFromString)
            {
              CanonicalLocaleIdentifierFromString = v13;
            }

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v32;
              do
              {
                for (j = 0; j != v17; j = j + 1)
                {
                  if (*v32 != v18)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v20 = *(*(&v31 + 1) + 8 * j);
                  v21 = [v11 objectForKey:v20];
                  if (!v21)
                  {
                    v21 = [[NSMutableDictionary alloc] initWithCapacity:{-[__CFArray count](v10, "count")}];
                    [v11 setObject:v21 forKey:v20];
                  }

                  [v21 setObject:objc_msgSend(v14 forKey:{"objectForKey:", v20), CanonicalLocaleIdentifierFromString}];
                }

                v17 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v17);
            }

            i = v30;
          }
        }

        v29 = [(__CFArray *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)valuesForEntries:(id *)a3 inPlistAtURL:(id)a4
{
  if (a4)
  {
    v7 = objc_alloc_init(NSMutableSet);
    if (a3->var0)
    {
      v8 = a3 + 1;
      do
      {
        [v7 addObject:?];
        var0 = v8->var0;
        ++v8;
      }

      while (var0);
    }

    if ([v7 count])
    {
      v20 = 0;
      v10 = [[NSData alloc] initWithContentsOfURL:a4 options:1 error:&v20];
      if (v10)
      {
        v11 = v10;
        _CFPropertyListCreateFiltered();
        v14 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
        {
          sub_10FB8(a4, self, v14);
        }
      }

      else
      {
        v13 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
        {
          appId = self->_appId;
          v18 = [v20 domain];
          v19 = [v20 code];
          *buf = 136316418;
          v22 = "[AAPSyncMetaDataItemUpdate valuesForEntries:inPlistAtURL:]";
          v23 = 2112;
          v24 = a4;
          v25 = 2112;
          v26 = appId;
          v27 = 2114;
          v28 = v18;
          v29 = 2048;
          v30 = v19;
          v31 = 2112;
          v32 = v20;
          _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: could not load plist file at url='%@' (%@) -> {%{public}@:%li}%@", buf, 0x3Eu);
        }
      }
    }
  }

  else
  {
    v12 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_11044(self, v12);
    }
  }

  return 0;
}

- (id)scrapeAppInfo
{
  v4 = objc_alloc_init(SAAppInfo);
  v5 = objc_autoreleasePoolPush();
  [v4 setIdentifier:AAPSyncInfoIdentifierForAppId(self->_appId)];
  v6 = [(LSApplicationProxy *)self->_appProxy bundleURL];
  cf = _CFBundleCreateUnique();
  if (cf)
  {
    v83[0] = kCFBundleIdentifierKey;
    v83[1] = "setAppId:";
    v83[2] = &stru_20A90;
    v83[3] = AAPPlistStringParser;
    v83[4] = 0;
    v83[5] = kCFBundleVersionKey;
    v83[6] = "setAppVersion:";
    v83[7] = &stru_20A90;
    v83[8] = AAPPlistStringParser;
    v83[9] = 0;
    v83[10] = _kCFBundleShortVersionStringKey;
    v83[12] = 0;
    v83[11] = 0;
    v83[13] = AAPPlistStringParser;
    v83[14] = 0;
    v83[15] = kCFBundleNameKey;
    v83[16] = "setAppName:";
    v83[17] = &stru_20A90;
    v83[18] = AAPPlistStringParser;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_8334;
    v47[3] = &unk_20AF8;
    v47[4] = v6;
    v83[19] = v47;
    v83[20] = @"CFBundleDisplayName";
    v83[21] = "setDisplayAppName:";
    v83[22] = &stru_20A90;
    v83[23] = AAPPlistStringParser;
    v83[24] = 0;
    v83[25] = @"CFBundleSpokenName";
    v83[26] = "setSpokenName:";
    v83[27] = &stru_20A90;
    v83[28] = AAPPlistStringParser;
    v83[29] = 0;
    v83[30] = _INAlternativeAppNamesKey;
    v83[31] = "setAppNameSynonyms:";
    v83[32] = &stru_20A90;
    v83[33] = AAPAlternativeAppNamesParser;
    v83[34] = 0;
    v83[35] = _kCFBundleURLTypesKey;
    v83[36] = "setSupportedSchemes:";
    v83[37] = &stru_20A90;
    v83[38] = AAPPlistURLTypesSchemesParser;
    v83[39] = 0;
    v83[40] = @"SiriSupport";
    v83[41] = "setSiriSupport:";
    v83[42] = &stru_20A90;
    v83[43] = AAPPlistSiriSupportParser;
    v83[44] = 0;
    v83[45] = @"SBStarkLaunchModes";
    v83[46] = "setStarkSupport:";
    v83[47] = &stru_20A90;
    v83[48] = AAPPlistStarkSupportParser;
    v83[49] = 0;
    v83[50] = @"CFBundleCarDisplayName";
    v83[51] = "setCarPlayAlternativeDisplayName:";
    v83[52] = &stru_20A90;
    v83[53] = AAPPlistStringParser;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    v45 = v83;
    v46 = 0;
    v79[0] = kCFBundleNameKey;
    v79[1] = "setAppNameMap:";
    v79[2] = &stru_20A90;
    v79[3] = AAPPlistStringParser;
    v79[4] = 0;
    v79[5] = @"CFBundleDisplayName";
    v79[6] = "setDisplayAppNameMap:";
    v79[7] = &stru_20A90;
    v79[8] = AAPPlistStringParser;
    v79[9] = 0;
    v79[10] = @"CFBundleSpokenName";
    v79[11] = "setSpokenNameMap:";
    v79[12] = &stru_20A90;
    v79[13] = AAPPlistStringParser;
    v79[14] = 0;
    v79[15] = @"CFBundleCarDisplayName";
    v79[16] = "setCarPlayAlternativeDisplayNameMap:";
    v79[17] = &stru_20A90;
    v79[18] = AAPPlistStringParser;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v43 = v79;
    v44 = 0;
    v75[0] = @"itemId";
    v75[1] = "setAdamId:";
    v75[2] = &stru_20A90;
    v75[3] = AAPPlistStringFromNumberParser;
    v75[4] = 0;
    v75[5] = @"itemName";
    v75[6] = "setSpotlightName:";
    v75[7] = &stru_20A90;
    v75[8] = AAPPlistStringParser;
    v75[9] = 0;
    v75[10] = @"artistName";
    v75[11] = "setProviderName:";
    v75[12] = &stru_20A90;
    v75[13] = AAPPlistStringParser;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v41 = v75;
    v42 = 0;
    v49 = "setAppIdentifyingInfo:";
    v50 = &stru_20A90;
    v51 = AAPAggregateSyncIdentityParser;
    v52 = 0;
    v53 = "setBetaApp:";
    v54 = &stru_20AD0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_8360;
    v40[3] = &unk_20AF8;
    v40[4] = self;
    v55 = 0;
    v56 = v40;
    v57 = "setSupportsUniversalSearchSubscription:";
    v58 = &stru_20AD0;
    v59 = AAPUniversalSearchParser;
    v60 = 0;
    v61 = "setHasSiriIntegration:";
    v62 = &stru_20AD0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_8390;
    v39[3] = &unk_20AF8;
    v39[4] = self;
    v63 = 0;
    v64 = v39;
    v65 = "setAppNameSynonymsMap:";
    v66 = &stru_20A90;
    v67 = AAPAlternativeAppNamesMapParser;
    v68 = 0;
    v69 = "setNowPlayingAppWithBrowsableContent:";
    v70 = &stru_20A90;
    v71 = AAPPlistBrowsableMediaParser;
    v74 = 0;
    v73 = 0u;
    v72 = 0u;
    v7 = [(LSApplicationProxy *)self->_appProxy entitlements];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_110D4();
      }
    }

    v8 = [(AAPSyncMetaDataItemUpdate *)self valuesForInfoPlistEntries:v45 inBundle:cf withEntitlements:v7 forLocalization:0 ignoringDefaultValues:0];
    v46 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = [v8 objectForKey:kCFBundleIdentifierKey];
      if ([v10 isEqualToString:self->_appId])
      {
        v32 = a2;
        v33 = v5;
        v34 = v7;
        v44 = [(AAPSyncMetaDataItemUpdate *)self valuesForLocalInfoPlistEntries:v43 inBundle:cf withEntitlements:v7 ignoringDefaultValues:v9];
        if ([-[LSApplicationProxy applicationType](self->_appProxy "applicationType")])
        {
          v42 = -[AAPSyncMetaDataItemUpdate valuesForEntries:inPlistAtURL:](self, "valuesForEntries:inPlistAtURL:", v75, [-[LSApplicationProxy bundleContainerURL](self->_appProxy "bundleContainerURL")]);
        }

        v35 = self;
        v11 = 0;
        v12 = &v45;
        v48[0] = &v45;
        v48[1] = &v43;
        v48[2] = &v41;
        v48[3] = 0;
        do
        {
          v13 = *v12;
          if (**v12)
          {
            v14 = 0;
            v15 = v12[1];
            v16 = 5;
            v17 = *v12;
            do
            {
              v18 = v17[2];
              if (v18)
              {
                v19 = v17[1];
                if (!v19)
                {
                  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:v32 file:self lineNumber:@"AAPSyncMetaDataItemUpdate.m" description:472, @"no selector defined for setter of key=%@", *v17];
                  v19 = v17[1];
                  v18 = v17[2];
                  v21 = *v17;
                }

                (*(v18 + 16))(v18, v4, v19, [v15 objectForKey:?]);
                v13 = *v12;
              }

              ++v14;
              v17 = &v13[5 * v14];
              v20 = v13[v16];
              v16 += 5;
            }

            while (v20);
          }

          v12 = v48[++v11];
        }

        while (v12);
        if (v50)
        {
          v22 = 0;
          v23 = v46;
          v24 = v44;
          v25 = v42;
          v26 = &v49;
          do
          {
            if (!*v26)
            {
              sub_11244();
            }

            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_83F0;
            v38[3] = &unk_20B20;
            v38[4] = v23;
            v38[5] = v24;
            v38[6] = v25;
            v38[7] = v34;
            v38[8] = v26;
            v38[9] = cf;
            v27 = v26[3];
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_841C;
            v37[3] = &unk_20A50;
            v37[4] = v26;
            [(AAPSyncMetaDataItemUpdate *)v35 valueForGenericParser:v38 withDefaultGenerator:v27 withErrorKeyDescriptor:v37];
            v28 = *v26;
            (*(v26[1] + 2))();
            ++v22;
            v29 = v26[5];
            v26 += 4;
          }

          while (v29);
        }

        v5 = v33;
      }

      else
      {
        v30 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          if (v30)
          {
            sub_11154();
          }
        }

        else if (v30)
        {
          sub_111D0();
        }
      }
    }

    CFRelease(cf);
  }

  else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
  {
    sub_112A0();
  }

  objc_autoreleasePoolPop(v5);
  return v4;
}

@end