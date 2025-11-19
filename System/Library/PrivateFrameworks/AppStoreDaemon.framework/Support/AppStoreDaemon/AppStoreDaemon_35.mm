uint64_t sub_1003B2CE8(uint64_t a1, void *a2)
{
  v2 = sub_10031A6D8(a2, *(a1 + 32), *(a1 + 40));
  v3 = 0;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error removing install attribution params: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

unint64_t sub_1003B2DD0(uint64_t a1, void *a2)
{
  v2 = sub_10031C4C4(a2, *(a1 + 32));
  v3 = 0;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error removing install attribution pingbacks: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

void sub_1003B2ED4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = sub_1003C8EE4(v13, *(a1 + 32));
  if (v3)
  {
    v4 = +[_TtC9appstored12SkannerEvent postbackTypePending];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v6 = sub_1003C73F0(v13, *(a1 + 32));
    if (v6)
    {
      v7 = +[_TtC9appstored12SkannerEvent postbackTypeRealized];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [NSNumber numberWithInteger:v6[21]];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

void sub_1003B2FC8(uint64_t a1, id a2)
{
  v3 = sub_1003C7364(a2, *(a1 + 32));
  v4 = [v3 count];

  if (!v4)
  {
    v5 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
    [v5 completeStoryForAdvertisedAppAdamID:objc_msgSend(*(a1 + 32) completionHandler:{"longLongValue"), &stru_100526DD0}];
  }
}

void sub_1003B307C(uint64_t a1, void *a2)
{
  v3 = sub_1003C8EE4(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
}

id sub_1003B3298(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1003B32D0(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"clip_ref_source");
    v1 = vars8;
  }

  return a1;
}

id sub_1003B3308(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"clip_ref_type");
    v1 = vars8;
  }

  return a1;
}

id sub_1003B3340(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E51C(a1, @"clip_third_party_with_no_app_referrer");
    v1 = vars8;
  }

  return a1;
}

id sub_1003B33BC(void *a1)
{
  if (a1)
  {
    v1 = [a1 parameterForKey:AMSBuyParamPropertyAppExtVrsId];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v3 = 0;
        goto LABEL_8;
      }

      v2 = [v1 stringValue];
    }

    v3 = v2;
LABEL_8:

    goto LABEL_9;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id sub_1003B346C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 parameterForKey:a2];
    if (v2)
    {
      v6 = 0;
      v3 = [NSScanner scannerWithString:v2];
      v4 = 0;
      if ([v3 scanUnsignedLongLong:&v6])
      {
        v4 = [NSNumber numberWithUnsignedLongLong:v6];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1003B35AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  if ([v9 count] != 1 && objc_msgSend(v9, "count") != 2)
  {
    if (a5)
    {
      [v9 count];
      ASDErrorWithUserInfoAndFormat();
      *a5 = v68 = 0;
    }

    else
    {
      v68 = 0;
    }

    goto LABEL_77;
  }

  v90 = a5;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [v10 account];
  v13 = [v12 ams_DSID];
  [v11 setObject:v13 forKeyedSubscript:@"account_id"];

  v14 = [v10 bundleURL];
  [v11 setObject:v14 forKeyedSubscript:@"bundle_url"];

  v15 = [v10 clientInfo];
  v16 = [v15 bundleIdentifier];
  [v11 setObject:v16 forKeyedSubscript:@"client_id"];

  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 clientType]);
  [v11 setObject:v17 forKeyedSubscript:@"client_type"];

  v18 = [v10 logCode];
  [v11 setObject:v18 forKeyedSubscript:?];

  v19 = [v10 externalID];
  [v11 setObject:v19 forKeyedSubscript:@"external_id"];

  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 priority]);
  [v11 setObject:v20 forKeyedSubscript:@"priority"];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 updateType]);
  [v11 setObject:v21 forKeyedSubscript:@"update_type"];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 suppressDialogs]);
  [v11 setObject:v22 forKeyedSubscript:@"supress_dialogs"];

  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isTVProvider]);
  [v11 setObject:v23 forKeyedSubscript:@"tv_provider"];

  v24 = [v10 qosMetricsFields];
  [v11 setObject:v24 forKeyedSubscript:@"metrics_fields"];

  [v11 setObject:&off_1005483E8 forKeyedSubscript:@"phase"];
  if ([v10 isArcade])
  {
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"arcade"];
  }

  v25 = [v10 purchase];
  v26 = [v25 isDefaultBrowser];

  if (v26)
  {
    v27 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v10 logKey];
      *buf = 138412290;
      v94 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Will configure as default browser upon successful installation", buf, 0xCu);
    }

    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"default_browser"];
  }

  v29 = sub_1003B6560();
  v31 = v29;
  if (v8)
  {
    v33 = objc_getProperty(v8, v30, 336, 1);
    if (v33)
    {
      v34 = objc_getProperty(v8, v32, 336, 1);
      sub_1003B69B0(v31, v34);

      v35 = [NSNumber numberWithDouble:v33[2]];
      [v11 setObject:v35 forKeyedSubscript:@"optimal_download_start"];

      v36 = [NSNumber numberWithInteger:llround((v33[1] - v33[2]) / 60.0)];
      [v11 setObject:v36 forKeyedSubscript:@"optimal_download_duration"];
    }

    if (v31)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v33 = 0;
    if (v29)
    {
LABEL_13:
      v37 = [*(v31 + 8) copy];
      goto LABEL_14;
    }
  }

  v37 = 0;
LABEL_14:
  [v11 setObject:v37 forKeyedSubscript:@"policy"];

  v38 = [v10 coordinator];
  v39 = [v38 uniqueIdentifier];
  [v11 setObject:v39 forKeyedSubscript:@"coordinator_id"];

  v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 coordinatorIntent]);
  [v11 setObject:v40 forKeyedSubscript:@"coordinator_intent"];

  if ([v10 isRemoteInstall])
  {
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"remote_install"];
  }

  v91 = v31;
  v41 = sub_1003E2F24(MIStoreMetadata, v8);
  v42 = [v10 account];
  if (v42)
  {
    sub_1003E38F0(v41, v42);
  }

  sub_1003E39A0(v41, v10);
  v92 = 0;
  v43 = sub_1003E364C(v41, &v92);
  v44 = v92;
  if (!v43)
  {
    v66 = ASDErrorWithUnderlyingErrorAndDescription();

    v44 = v66;
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_38:
    v67 = [v10 companionBundleID];
    [v11 setObject:v67 forKeyedSubscript:@"companion_bundle_id"];

    Property = 0;
    goto LABEL_23;
  }

  [v11 setObject:v43 forKeyedSubscript:@"store_metadata"];
  if (!v8)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((*(v8 + 14) & 1) == 0)
  {
    v46 = [v10 companionBundleID];
    [v11 setObject:v46 forKeyedSubscript:@"companion_bundle_id"];
  }

  Property = objc_getProperty(v8, v45, 208, 1);
LABEL_23:
  v48 = Property;

  if (v48)
  {
    if (v8)
    {
      v50 = objc_getProperty(v8, v49, 208, 1);
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
    [v11 setObject:v51 forKeyedSubscript:@"install_verification_token"];
  }

  v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 autoInstallOverride]);
  [v11 setObject:v52 forKeyedSubscript:@"auto_install_override"];

  if ([v10 clientType] == 1)
  {
    if (v8)
    {
      v54 = objc_getProperty(v8, v53, 72, 1);
      v56 = v54;
      if (v54)
      {
        v54 = objc_getProperty(v54, v55, 144, 1);
      }
    }

    else
    {
      v56 = 0;
      v54 = 0;
    }

    v57 = v54;
    v58 = sub_1002BAB8C(v57);

    if (v58)
    {
      v59 = [v10 bundleID];
      v60 = [ApplicationProxy proxyForBundleID:v59];

      if (v60 && ![v60[15] isPlaceholder])
      {
        v61 = &off_100548400;
      }

      else
      {
        v61 = &off_100548418;
      }

      [v11 setObject:v61 forKeyedSubscript:@"metrics_install_type"];
      v65 = @"DIS";
      v64 = v11;
      v63 = @"log_code";
      goto LABEL_51;
    }

    [v11 setObject:&off_100548430 forKeyedSubscript:@"metrics_install_type"];
    v69 = @"VPP";
    v70 = v11;
    v71 = @"log_code";
LABEL_54:
    [v70 setObject:v69 forKeyedSubscript:v71];
    goto LABEL_55;
  }

  v62 = [v10 metricsType];

  if (!v62)
  {
    if (v8)
    {
      if (*(v8 + 8))
      {
        v71 = @"metrics_install_type";
        v69 = &off_100548448;
LABEL_53:
        v70 = v11;
        goto LABEL_54;
      }

      if (*(v8 + 19) & 1) != 0 || (*(v8 + 17))
      {
        v71 = @"metrics_install_type";
        v69 = &off_100548460;
        goto LABEL_53;
      }
    }

    v71 = @"metrics_install_type";
    v69 = &off_100548478;
    goto LABEL_53;
  }

  v60 = [v10 metricsType];
  v63 = @"metrics_install_type";
  v64 = v11;
  v65 = v60;
LABEL_51:
  [v64 setObject:v65 forKeyedSubscript:v63];

LABEL_55:
  v72 = [v10 recoveryCount];

  if (v72)
  {
    v73 = [v10 recoveryCount];
    [v11 setObject:v73 forKeyedSubscript:@"recovery_count"];
  }

  if (v44)
  {
    if (v90)
    {
      v74 = v44;
      v68 = 0;
      *v90 = v44;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v75 = [AppInstall alloc];
    v76 = [v10 checkStoreQueueReason];
    v68 = sub_100408284(v75, v8, v9, v76);

    v77 = [v10 refreshInstallID];

    if (v77)
    {
      v78 = [v10 refreshInstallID];
      [v68 setDatabaseID:{objc_msgSend(v78, "longLongValue")}];
    }

    if ([v10 expectedSoftwarePlatform])
    {
      v79 = [v10 expectedSoftwarePlatform];
      if (v8)
      {
        v80 = *(v8 + 37);
      }

      else
      {
        v80 = 0;
      }

      if (v79 != v80)
      {
        v81 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v87 = [v10 logKey];
          v88 = v87;
          if (v8)
          {
            v89 = *(v8 + 37);
          }

          else
          {
            v89 = 0;
          }

          *buf = 138412546;
          v94 = v87;
          v95 = 2048;
          v96 = v89;
          _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "[%@] Dropping incorrectly generated receipt - unexpected product type '%ld'", buf, 0x16u);
        }

        sub_10023E000(v68, 0, @"receipt");
      }
    }

    else
    {
      v82 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = [v10 logKey];
        v84 = v83;
        if (v8)
        {
          v85 = *(v8 + 37);
        }

        else
        {
          v85 = 0;
        }

        *buf = 138412546;
        v94 = v83;
        v95 = 2048;
        v96 = v85;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "[%@] Expected platform wasn't set, hope we have the right type of receipt for '%ld'!", buf, 0x16u);
      }
    }

    if (v68)
    {
      [v68[2] addEntriesFromDictionary:v11];
    }
  }

LABEL_77:

  return v68;
}

void sub_1003B4154(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

id *sub_1003B48EC(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2;
  v5 = sub_1003BBF50();
  v6 = v4;
  v7 = v5;
  v15.receiver = a1;
  v15.super_class = UpdatesResponse;
  v8 = objc_msgSendSuper2(&v15, "init");
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 2, a2);
    objc_storeStrong(v9 + 1, v5);
    v10 = [v6 objectForKeyedSubscript:@"rolloutDeferred"];

    if (v10)
    {
      v11 = sub_100237838(v9[2], @"rolloutDeferred");
      v12 = v9[3];
      v9[3] = v11;
    }
  }

  v13 = v9;
  return v13;
}

id *sub_1003B4A00(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100237DCC(a1[2], @"storePlatformData.software-update-slimmed-lockup.results");
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003B4B20;
    v7[3] = &unk_100526E50;
    v7[4] = v1;
    v8 = objc_alloc_init(ASDCoastGuard);
    v9 = v3;
    v4 = v3;
    v5 = v8;
    [v2 enumerateKeysAndObjectsUsingBlock:v7];
    v1 = [v4 copy];
  }

  return v1;
}

void sub_1003B4B20(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = a3;
  v140 = a2;
  if (!v5)
  {
    v148 = 0;
    goto LABEL_109;
  }

  v7 = objc_opt_new();
  v164[0] = @"artistName";
  v164[1] = @"bundleId";
  v164[2] = @"buyParams";
  v164[3] = @"currentVersionReleaseDateTime";
  v164[4] = @"kind";
  v164[5] = @"name";
  v164[6] = @"releaseDate";
  v164[7] = @"whatsNew";
  v164[8] = @"url";
  [NSArray arrayWithObjects:v164 count:9];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v8 = v157 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v154 objects:v163 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v155;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v155 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v154 + 1) + 8 * i);
        v14 = sub_1002380D8(v6, v13);
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v154 objects:v163 count:16];
    }

    while (v10);
  }

  v162[0] = @"hasMessagesExtension";
  v162[1] = @"isFirstParty";
  v162[2] = @"isHiddenFromSpringboard";
  v162[3] = @"isIOSBinaryMacOSCompatible";
  v162[4] = @"requiresRosetta";
  v162[5] = @"runsOnIntel";
  v162[6] = @"runsOnAppleSilicon";
  [NSArray arrayWithObjects:v162 count:7];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = v153 = 0u;
  v15 = [obj countByEnumeratingWithState:&v150 objects:v161 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v151;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v151 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v150 + 1) + 8 * j);
        v20 = sub_10023790C(v6, v19);
        [v7 setObject:v20 forKeyedSubscript:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v150 objects:v161 count:16];
    }

    while (v16);
  }

  v21 = sub_1002380D8(v6, @"id");
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v140;
  }

  [v7 setObject:v23 forKeyedSubscript:@"id"];

  context = objc_autoreleasePoolPush();
  v24 = [v7 objectForKeyedSubscript:@"id"];
  if (v24)
  {
    v25 = [v7 objectForKeyedSubscript:@"id"];
    v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 longLongValue]);
  }

  else
  {
    v26 = 0;
  }

  v27 = v4;

  v28 = [v7 objectForKeyedSubscript:@"bundleId"];
  v160 = 0;
  if (!v26)
  {
    v29 = 0;
LABEL_26:
    if (v28)
    {
      v29 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v28 allowPlaceholder:1 error:&v160];
    }

    goto LABEL_28;
  }

  v29 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v26 error:{"unsignedLongLongValue"), &v160}];
  if (!v29)
  {
    goto LABEL_26;
  }

LABEL_28:
  v30 = [v29 appClipMetadata];

  if (v30)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_app_clip"];
    v31 = [v29 bundleIdentifier];
    [v7 setObject:v31 forKeyedSubscript:@"bundleId"];
  }

  v141 = v29;
  if ([v29 isArcadeApp])
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isArcade"];
  }

  if (!v28 && ((+[AMSDevice deviceIsAppleTV](AMSDevice, "deviceIsAppleTV") & 1) != 0 || +[AMSDevice deviceIsAppleWatch]))
  {
    v32 = [v29 bundleIdentifier];
    [v7 setObject:v32 forKeyedSubscript:@"bundleId"];
  }

  v131 = [v7 objectForKeyedSubscript:@"artistName"];
  v132 = v28;
  if (!v131 && v28)
  {
    v33 = [v29 iTunesMetadata];
    v34 = [v33 artistName];
    [v7 setObject:v34 forKeyedSubscript:@"artistName"];
  }

  if (!v30 && ([v29 isPlaceholder] & 1) == 0)
  {
    if ([v29 applicationHasMIDBasedSINF])
    {
      v35 = [v29 iTunesMetadata];
      v36 = +[UpdatesManager isTVProviderApp:](UpdatesManager, "isTVProviderApp:", [v35 storeItemIdentifier]);

      if ((v36 & 1) == 0)
      {
        [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_per_device"];
      }
    }
  }

  v37 = sub_10040CF04(v29);
  v38 = [v37 isB2BCustomApp];

  if (v38)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_b2b_custom_app"];
  }

  v139 = v26;
  if ([v29 isPlaceholder] && objc_msgSend(v29, "placeholderFailureReason") == 4)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_offloaded"];
  }

  v39 = *(v5 + 8);
  v130 = [v29 iTunesMetadata];
  v129 = [v130 variantID];
  v40 = sub_100228F7C(VariantDescriptor, v129);
  v128 = [v29 iTunesMetadata];
  v41 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v128 versionIdentifier]);
  v136 = v39;
  v42 = v6;
  v43 = v40;
  v138 = v41;
  objc_opt_self();
  sub_100237778(v42, @"updateFileSizeInfo");
  v134 = v8;
  v135 = v6;
  v44 = v139;
  v4 = v27;
  v137 = v45 = v42;
  if (v137)
  {
    v46 = v137;
    v47 = v43;
    v144 = v138;
    objc_opt_self();
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v146 = sub_100396BF0(v46);
    v48 = [v146 countByEnumeratingWithState:&v170 objects:&v165 count:16];
    if (v48)
    {
      v49 = v48;
      v119 = v46;
      v120 = v43;
      v122 = v42;
      v124 = v7;
      v126 = v4;
      v50 = *v171;
      v51 = @"variants";
      v52 = &stru_100526ED8;
      while (2)
      {
        v53 = 0;
        v142 = v49;
        do
        {
          if (*v171 != v50)
          {
            objc_enumerationMutation(v146);
          }

          v54 = *(*(&v170 + 1) + 8 * v53);
          v55 = sub_100237778(v54, v51);
          v56 = sub_100396BF0(v55);
          v57 = sub_1004022E4(v56, v52);

          if ([v57 containsObject:v47])
          {
            v58 = sub_100237D58(v54, @"deltaSizeByExternalVersionId");
            [v144 stringValue];
            v59 = v50;
            v60 = v47;
            v61 = v52;
            v63 = v62 = v51;
            v64 = sub_10023790C(v58, v63);

            v51 = v62;
            v52 = v61;
            v47 = v60;
            v50 = v59;
            v49 = v142;

            if (v64)
            {

              goto LABEL_61;
            }
          }

          v53 = v53 + 1;
        }

        while (v49 != v53);
        v49 = [v146 countByEnumeratingWithState:&v170 objects:&v165 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }

      v64 = 0;
LABEL_61:
      v7 = v124;
      v4 = v126;
      v44 = v139;
      v43 = v120;
      v45 = v122;
      v46 = v119;
    }

    else
    {
      v64 = 0;
    }

    v6 = v135;
    if (v64)
    {
      goto LABEL_88;
    }
  }

  v65 = sub_100237778(v45, @"fileSizeInfo");
  if (v65)
  {
    v121 = v43;
    v123 = v45;
    v125 = v7;
    v127 = v4;
    v66 = v65;
    v67 = v136;
    objc_opt_self();
    v143 = v66;
    v145 = objc_alloc_init(NSMutableDictionary);
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v147 = sub_100396BF0(v66);
    v68 = [v147 countByEnumeratingWithState:&v170 objects:&v165 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v171;
      do
      {
        for (k = 0; k != v69; k = k + 1)
        {
          if (*v171 != v70)
          {
            objc_enumerationMutation(v147);
          }

          v72 = *(*(&v170 + 1) + 8 * k);
          v73 = sub_100237778(v72, @"variants");
          v74 = sub_100396BF0(v73);
          v75 = sub_1004022E4(v74, &stru_100526EF8);

          v76 = sub_1002294E0(VariantDescriptor, v67, v75);
          if (v76)
          {
            v77 = sub_10023790C(v72, @"size");
            if (v77)
            {
              [v145 setObject:v77 forKeyedSubscript:v76];
            }
          }
        }

        v69 = [v147 countByEnumeratingWithState:&v170 objects:&v165 count:16];
      }

      while (v69);
    }

    v78 = [v145 allKeys];
    if (v78)
    {
      v79 = sub_1002294E0(VariantDescriptor, v67, v78);
      v45 = v123;
      if (v79)
      {
        v64 = [v145 objectForKeyedSubscript:v79];
      }

      else
      {
        v64 = 0;
      }

      v4 = v127;
      v6 = v135;
      v44 = v139;
    }

    else
    {
      v64 = 0;
      v4 = v127;
      v6 = v135;
      v44 = v139;
      v45 = v123;
    }

    v7 = v125;
    v43 = v121;
    if (v64)
    {
      goto LABEL_88;
    }
  }

  v80 = sub_100237D58(v45, @"fileSizeByDevice");
  if (!v80)
  {
    goto LABEL_89;
  }

  v81 = v80;
  v82 = v136;
  objc_opt_self();
  v83 = [v82 productVariants];

  if (!v83 || (v165 = _NSConcreteStackBlock, v166 = 3221225472, v167 = sub_1003B5DA0, v168 = &unk_100526EB8, v169 = v81, sub_10036FCAC(v83, &v165), v64 = objc_claimAutoreleasedReturnValue(), v169, !v64))
  {
    v64 = sub_10023790C(v81, @"universal");
  }

  if (v64)
  {
LABEL_88:
    *&v170 = @"universal";
    v165 = v64;
    v84 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v170 count:1, v119];
  }

  else
  {
LABEL_89:
    v84 = &__NSDictionary0__struct;
  }

  [v7 setObject:v84 forKeyedSubscript:@"fileSizeByDevice"];
  objc_autoreleasePoolPop(context);
  v85 = sub_100237D58(v45, @"artwork");
  v86 = sub_1003B5C10(v85);
  [v7 setObject:v86 forKeyedSubscript:@"artwork"];

  v87 = sub_100237D58(v45, @"ovalArtwork");
  v88 = sub_1003B5C10(v87);
  [v7 setObject:v88 forKeyedSubscript:@"ovalArtwork"];

  v89 = sub_100237778(v45, @"deviceFamilies");
  [v7 setObject:v89 forKeyedSubscript:@"deviceFamilies"];

  v165 = @"contentRatingsBySystem";
  v166 = @"appsApple";
  v167 = @"value";
  v90 = [NSArray arrayWithObjects:&v165 count:3];
  v91 = sub_100396BB8(v90);
  v92 = sub_100237A3C(v45, v91);

  if (v92)
  {
    v159 = v92;
    v160 = @"appsApple";
    v158 = @"value";
    v93 = [NSDictionary dictionaryWithObjects:&v159 forKeys:&v158 count:1];
    *&v170 = v93;
    v94 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v160 count:1];
    [v7 setObject:v94 forKeyedSubscript:@"contentRatingsBySystem"];
  }

  v95 = v7;
  v96 = sub_100237778(v45, @"offers");
  v97 = v96;
  if (v96)
  {
    v98 = sub_10036FBC8(v96, &stru_100526E90);
    v99 = v98;
    if (v98)
    {
      v100 = sub_100237778(v98, @"assets");
      v101 = [v100 firstObject];
      objc_opt_class();
      v102 = v101;
      if (objc_opt_isKindOfClass())
      {
        v103 = v102;
      }

      else
      {
        v103 = 0;
      }

      v106 = sub_10023790C(v103, @"size");
      [v95 setObject:v106 forKeyedSubscript:ASDLookupPropertyFileSize];

      v107 = sub_1002380D8(v99, @"buyParams");
      if (!v107)
      {
        v107 = sub_1002380D8(v99, @"action-params");
      }

      [v95 setObject:v107 forKeyedSubscript:{ASDLookupPropertyBuyParams, v119}];
      v108 = sub_100237D58(v99, @"version");
      v109 = v108;
      if (v108)
      {
        v110 = sub_1002380D8(v108, @"display");
        [v95 setObject:v110 forKeyedSubscript:ASDLookupPropertyDisplayVersion];

        v111 = sub_10023790C(v109, @"externalId");
        [v95 setObject:v111 forKeyedSubscript:ASDLookupPropertyExternalVersionIdentifier];
      }
    }
  }

  else
  {
    v99 = sub_10023790C(v45, @"versionId");
    if (!v99)
    {
      v104 = sub_1002380D8(v45, @"versionId");
      v105 = v104;
      if (v104)
      {
        v99 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v104 longLongValue]);
      }

      else
      {
        v99 = 0;
      }
    }

    [v95 setObject:v99 forKeyedSubscript:{ASDLookupPropertyExternalVersionIdentifier, v119}];
  }

  v148 = [v95 copy];
LABEL_109:

  v112 = v148;
  if (v148)
  {
    v113 = [[AppUpdateMemoryEntity alloc] initWithUpdateDictionary:v148];
    v114 = v113;
    if (v113)
    {
      v115 = *(v4 + 40);
      v116 = [(AppUpdateMemoryEntity *)v113 itemID];
      v117 = [v116 unsignedLongLongValue];
      v118 = [(AppUpdateMemoryEntity *)v114 evid];
      LOBYTE(v115) = [v115 isUnrepairableAppWithItemID:v117 externalVersionID:{objc_msgSend(v118, "unsignedLongLongValue")}];

      if ((v115 & 1) == 0)
      {
        [*(v4 + 48) addObject:v114];
      }
    }

    v112 = v148;
  }
}

id sub_1003B5C10(void *a1)
{
  v1 = a1;
  v2 = sub_1002380D8(v1, @"url");
  v3 = sub_10023790C(v1, @"height");
  v4 = sub_10023790C(v1, @"width");

  v5 = 0;
  if ([v2 length] && v3 && v4)
  {
    v7[0] = @"url";
    v7[1] = @"height";
    v8[0] = v2;
    v8[1] = v3;
    v7[2] = @"width";
    v8[2] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  }

  return v5;
}

BOOL sub_1003B5D3C(id a1, NSObject *a2)
{
  v2 = sub_100279E60(a2);
  v3 = sub_1002380D8(v2, @"type");
  v4 = [v3 isEqualToString:@"update"];

  return v4;
}

void sub_1003B6144(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = a2;
    v7 = v4;
    v37 = v5;
    if (v5)
    {
      if ([v6 responseStatusCode] == 200)
      {
        v8 = [TFGetImageUploadUrlsResponse alloc];
        v9 = [v6 data];
        v10 = [(TFGetImageUploadUrlsResponse *)v8 initWithData:v9];

        if (v10)
        {
          v11 = v10;
          uploadUrls = v10->_uploadUrls;
        }

        else
        {
          v11 = 0;
          uploadUrls = 0;
        }

        v13 = uploadUrls;
        v14 = [(NSMutableArray *)v13 count];
        v15 = *(v37 + 42);
        v16 = sub_10020272C(v15);
        v17 = [v16 imagesData];
        v18 = [v17 count];

        if (v14 == v18)
        {
          v19 = objc_opt_new();
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v35 = v7;
          v36 = v6;
          v34 = v11;
          if (v11)
          {
            v20 = v11->_uploadUrls;
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v40;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v40 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v39 + 1) + 8 * i);
                v27 = [[NSURL alloc] initWithString:v26];
                if (v27)
                {
                  [v19 addObject:v27];
                }

                else
                {
                  v28 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    v38 = *(v37 + 42);
                    v29 = sub_1002026B0(v38);
                    *buf = 138412546;
                    v44 = v29;
                    v45 = 2114;
                    v46 = v26;
                    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%@]: Unable to create a valid URL with the provided string %{public}@", buf, 0x16u);
                  }
                }
              }

              v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v23);
          }

          v30 = [v19 copy];
          v31 = *(v37 + 58);
          *(v37 + 58) = v30;

          v7 = v35;
          v35[2](v35, 0);

          v6 = v36;
          v11 = v34;
        }

        else
        {
          v33 = ASDErrorWithDescription();
          v7[2](v7, v33);
        }
      }

      else
      {
        [v6 responseStatusCode];
        v32 = ASDErrorWithDescription();
        v7[2](v7, v32);
      }
    }
  }
}

void *sub_1003B6560()
{
  objc_opt_self();
  v0 = sub_1003B65C4([AppInstallPolicy alloc], &__NSDictionary0__struct);
  sub_1003B6638(v0, 1);
  sub_1003B66A8(v0, 62);

  return v0;
}

void *sub_1003B65C4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AppInstallPolicy;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 mutableCopy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

void sub_1003B6638(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    [*(a1 + 8) setObject:v3 forKeyedSubscript:@"ntwk"];
  }
}

void sub_1003B66A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithUnsignedInteger:a2];
    [*(a1 + 8) setObject:v3 forKeyedSubscript:@"imsk"];
  }
}

id *sub_1003B6718(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"conr"];
    v2 = [v1 integerValue];

    return v2;
  }

  return result;
}

void sub_1003B6764(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    [*(a1 + 8) setObject:v3 forKeyedSubscript:@"conr"];
  }
}

id *sub_1003B67D4(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"cell"];
    v2 = [v1 integerValue];

    return v2;
  }

  return result;
}

void sub_1003B6820(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    [*(a1 + 8) setObject:v3 forKeyedSubscript:@"cell"];
  }
}

id *sub_1003B6890(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"imsk"];
    v2 = [v1 unsignedIntegerValue];

    return v2;
  }

  return result;
}

double *sub_1003B68DC(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 8) objectForKeyedSubscript:@"odts"];
    v3 = [*(a1 + 8) objectForKeyedSubscript:@"odte"];
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v10 = 0;
    }

    else
    {
      v6 = [TimeWindow alloc];
      [v2 doubleValue];
      v8 = v7;
      [v4 doubleValue];
      v10 = sub_1003BBAC8(v6, v8, v9);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1003B69B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v7 = v3;
    if (v3)
    {
      v5 = [NSNumber numberWithDouble:v3[2]];
      [*(a1 + 8) setObject:v5 forKeyedSubscript:@"odts"];

      v6 = [NSNumber numberWithDouble:v7[1]];
      [*(a1 + 8) setObject:v6 forKeyedSubscript:@"odte"];
    }

    else
    {
      [*(a1 + 8) setObject:0 forKeyedSubscript:@"odts"];
      [*(a1 + 8) setObject:0 forKeyedSubscript:@"odte"];
    }

    v4 = v7;
  }
}

id *sub_1003B6A94(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"migr"];
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

id *sub_1003B6AE0(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"ntwk"];
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

id *sub_1003B6B2C(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"powr"];
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

void sub_1003B6B78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    [*(a1 + 8) setObject:v3 forKeyedSubscript:@"powr"];
  }
}

id *sub_1003B6BE8(id *result)
{
  if (result)
  {
    v1 = [result[1] objectForKeyedSubscript:@"term"];
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

void sub_1003B6C34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    [*(a1 + 8) setObject:v3 forKeyedSubscript:@"term"];
  }
}

uint64_t sub_1003B6D5C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isExpensive])
  {
    v5 = sub_1003B67D4(v4);
    if (v5 <= 4 && ((1 << v5) & 0x15) != 0)
    {
      goto LABEL_7;
    }
  }

  if ([v3 isConstrained])
  {
    v6 = sub_1003B6718(v4);
    if (v6 <= 4 && ((1 << v6) & 0x15) != 0)
    {
      goto LABEL_7;
    }
  }

  v8 = [v3 interfaceType];
  v9 = sub_1003B6890(v4);
  if (!v9)
  {
    goto LABEL_24;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_7;
      }

LABEL_26:
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = sub_1003B6F18(v8);
        v13 = 138543362;
        v14 = v12;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Returning no match, encountered new interface type: %{public}@", &v13, 0xCu);
      }

      goto LABEL_7;
    }

    if ((v9 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if (v8 == 2)
  {
    if ((v9 & 2) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  if (v8 == 3)
  {
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  if (v8 != 4)
  {
    goto LABEL_26;
  }

  if ((v9 & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v7 = 1;
LABEL_25:

  return v7;
}

__CFString *sub_1003B6F18(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [[NSString alloc] initWithFormat:@"unknown (%ld)", a1];
  }

  else
  {
    v1 = off_100526F18[a1];
  }

  return v1;
}

uint64_t sub_1003B6F84(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  if (v8 && [v8 length])
  {
    v11 = v8;
    v12 = v9;
    v13 = v10;
    v14 = objc_opt_self();
    v15 = sub_1003D2EBC(v12);
    v41 = v12;
    if (v15)
    {
      v47 = 0;
      v16 = sub_1003B7328(v14, v11, v15, v13, &v47);
      v17 = v47;
      if (v16)
      {
        v36 = v15;
        v37 = v10;
        v38 = v9;
        v39 = a5;
        v40 = v8;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = sub_1003D2D4C(v41);
        v19 = [v18 countByEnumeratingWithState:&v43 objects:buf count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v44;
          while (2)
          {
            v22 = 0;
            v23 = v17;
            do
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v43 + 1) + 8 * v22);
              v42 = v23;
              v25 = sub_1003B7328(v14, v11, v24, v13, &v42);
              v17 = v42;

              if (!v25)
              {

                a5 = v39;
                v8 = v40;
                v10 = v37;
                v9 = v38;
                v15 = v36;
                goto LABEL_20;
              }

              v22 = v22 + 1;
              v23 = v17;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v43 objects:buf count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v26 = 0;
        v27 = 1;
        a5 = v39;
        v8 = v40;
        v10 = v37;
        v9 = v38;
LABEL_21:

        v30 = v26;
        if (!a5)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v31 = sub_1003D0F60(v12);
      v32 = [NSString stringWithFormat:@"Invalid container for application: %@", v31];

      v17 = ASDErrorWithDescription();

      v15 = 0;
    }

LABEL_20:

    v33 = v17;
    v27 = 0;
    v26 = v17;
    goto LABEL_21;
  }

  v28 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v49 = v10;
    v50 = 2048;
    v51 = [v8 length];
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%@] Writing receipt failed - invalid or missing data (%{iec-bytes}lu)", buf, 0x16u);
  }

  v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Invalid or missing receipt data (%lu bytes)", [v8 length]);
  v30 = ASDErrorWithDescription();

  v27 = 0;
  if (a5)
  {
LABEL_22:
    if ((v27 & 1) == 0)
    {
      v34 = v30;
      *a5 = v30;
    }
  }

LABEL_24:

  return v27;
}

uint64_t sub_1003B7328(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_self();
  v10 = +[NSFileManager defaultManager];
  v35[0] = NSFileOwnerAccountName;
  v35[1] = NSFileGroupOwnerAccountName;
  v36[0] = @"mobile";
  v36[1] = @"mobile";
  v11 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v9;
    v29 = 2048;
    v30 = [v7 length];
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Writing receipt (%{iec-bytes}ld) to %{public}@", buf, 0x20u);
  }

  v13 = [v8 URLByDeletingLastPathComponent];
  v26 = 0;
  v14 = [v10 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v11 error:&v26];
  v15 = v26;
  v16 = v15;
  if (!v14 || (v25 = v15, v17 = 1, v18 = [v7 writeToURL:v8 options:1 error:&v25], v19 = v25, v16, v16 = v19, (v18 & 1) == 0))
  {
    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = [v7 length];
      *buf = 138413058;
      v28 = v9;
      v29 = 2048;
      v30 = v23;
      v31 = 2114;
      v32 = v8;
      v33 = 2114;
      v34 = v16;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%@] Error writing receipt (%{iec-bytes}ld) to %{public}@: %{public}@", buf, 0x2Au);
    }

    v17 = a5;
    if (a5)
    {
      v21 = [NSString stringWithFormat:@"Failed to write receipt to URL: %@", v8];
      *a5 = ASDErrorWithUnderlyingErrorAndDescription();

      v17 = 0;
    }
  }

  return v17;
}

sqlite3_stmt **sub_1003B7608(sqlite3_stmt **a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = SQLiteCursor;
    v5 = objc_msgSendSuper2(&v19, "init");
    a1 = v5;
    if (v5)
    {
      v6 = v4 ? v4[2] : 0;
      v5[6] = v6;
      objc_storeStrong(v5 + 7, a2);
      v7 = sqlite3_column_count(a1[6]);
      *(a1 + 2) = v7;
      v8 = [NSMutableArray arrayWithCapacity:v7];
      v9 = a1[5];
      a1[5] = v8;

      a1[2] = malloc_type_calloc(*(a1 + 2), 1uLL, 0x100004077774924uLL);
      if (*(a1 + 2) >= 1)
      {
        for (i = 0; i < *(a1 + 2); ++i)
        {
          v11 = a1[5];
          v12 = [NSString stringWithUTF8String:sqlite3_column_name(a1[6], i)];
          [(sqlite3_stmt *)v11 addObject:v12];

          v13 = sqlite3_column_decltype(a1[6], i);
          if (v13)
          {
            v14 = v13;
            if (!strcmp(v13, "DATETIME"))
            {
              *(a1[2] + i) = 1;
              continue;
            }

            if (!strcmp(v14, "JSON"))
            {
              v16 = a1[2];
              v17 = 2;
              goto LABEL_20;
            }

            if (!strcmp(v14, "UUID"))
            {
              v16 = a1[2];
              v17 = 3;
              goto LABEL_20;
            }

            if (!strcmp(v14, "URL"))
            {
              v16 = a1[2];
              v17 = 4;
              goto LABEL_20;
            }

            v15 = strcmp(v14, "STRING");
            v16 = a1[2];
            if (!v15)
            {
              v17 = 5;
LABEL_20:
              *(v16 + i) = v17;
              continue;
            }
          }

          else
          {
            v16 = a1[2];
          }

          *(v16 + i) = 0;
        }
      }
    }
  }

  return a1;
}

id sub_1003B786C(uint64_t a1, int a2)
{
  if (!a1 || sqlite3_column_type(*(a1 + 48), a2) == 5)
  {
    return 0;
  }

  v5 = sqlite3_column_blob(*(a1 + 48), a2);
  v6 = sqlite3_column_bytes(*(a1 + 48), a2);
  v7 = [NSData alloc];

  return [v7 initWithBytes:v5 length:v6];
}

id *sub_1003B7904(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[5] indexOfObject:v3];
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1003B786C(a1, v4);
    }
  }

  return a1;
}

id sub_1003B7960(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sqlite3_column_type(*(a1 + 48), a2);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = [NSNumber alloc];
      v6 = sqlite3_column_double(*(a1 + 48), a2);

      return [v5 initWithDouble:v6];
    }

    return 0;
  }

  v8 = [NSNumber alloc];
  v9 = sqlite3_column_int64(*(a1 + 48), a2);

  return [v8 initWithLongLong:v9];
}

id *sub_1003B7A30(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[5] indexOfObject:v3];
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1003B7960(a1, v4);
    }
  }

  return a1;
}

id sub_1003B7A8C(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (sqlite3_column_type(*(a1 + 48), a2) == 5)
  {
    return 0;
  }

  v4 = sqlite3_column_text(*(a1 + 48), a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [NSString alloc];

  return [v6 initWithUTF8String:v5];
}

id *sub_1003B7B08(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[5] indexOfObject:v3];
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1003B7A8C(a1, v4);
    }
  }

  return a1;
}

void *sub_1003B7B64(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[4];
    if (!v4)
    {
      v5 = [NSDictionary sharedKeySetForKeys:a1[5]];
      v6 = a1[4];
      a1[4] = v5;

      v4 = a1[4];
    }

    v7 = [NSMutableDictionary dictionaryWithSharedKeySet:v4];
    v8 = a1[5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003B7C70;
    v11[3] = &unk_100526F48;
    v12 = v3;
    v13 = v7;
    v14 = a1;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:v11];
    a1 = [v9 copy];
  }

  return a1;
}

void sub_1003B7C70(uint64_t a1, void *a2, unsigned int a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v7])
  {
    v6 = sub_1003B7CF4(*(a1 + 48), a3);
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

id sub_1003B7CF4(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || (a2 & 0x80000000) != 0)
  {
    if (!v3)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (*(v3 + 2) <= a2)
  {
LABEL_14:
    v11 = sqlite3_column_type(v3[6], a2);
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        v12 = [NSNumber numberWithLongLong:sqlite3_column_int64(*(v4 + 48), a2)];
        goto LABEL_23;
      }

      if (v11 == 2)
      {
        v12 = [NSNumber numberWithDouble:sqlite3_column_double(*(v4 + 48), a2)];
LABEL_23:
        v5 = v12;
        goto LABEL_24;
      }

LABEL_21:
      v12 = sub_1003B786C(v4, a2);
      goto LABEL_23;
    }

    if (v11 == 5)
    {
      goto LABEL_36;
    }

    if (v11 != 3)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = sub_1003B7A8C(v4, a2);
    goto LABEL_23;
  }

  v5 = 0;
  v6 = *(v3[2] + a2);
  if (v6 <= 2)
  {
    if (*(v3[2] + a2))
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          goto LABEL_24;
        }

        v7 = sub_1003B786C(v3, a2);
        if (v7)
        {
          v20 = 0;
          v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v20];
          v9 = v20;
          if (v8)
          {
LABEL_44:
            v5 = v8;

            goto LABEL_24;
          }

          v10 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v19 = [*(v4 + 40) objectAtIndexedSubscript:a2];
            *buf = 138543618;
            v22 = v19;
            v23 = 2114;
            v24 = v9;
          }
        }

        else
        {
          v9 = 0;
        }

        v8 = 0;
        goto LABEL_44;
      }

      v16 = sqlite3_column_type(v3[6], a2);
      if (v16 == 1)
      {
        v17 = [NSDate alloc];
        v18 = sqlite3_column_int64(*(v4 + 48), a2);
        goto LABEL_46;
      }

      if (v16 == 2)
      {
        v17 = [NSDate alloc];
        v18 = sqlite3_column_double(*(v4 + 48), a2);
LABEL_46:
        v12 = [v17 initWithTimeIntervalSinceReferenceDate:v18];
        goto LABEL_23;
      }

LABEL_36:
      v5 = 0;
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  switch(v6)
  {
    case 3u:
      v14 = sub_1003B7A8C(v3, a2);
      if (v14)
      {
        v15 = [[NSUUID alloc] initWithUUIDString:v14];
LABEL_39:
        v5 = v15;
LABEL_41:

        break;
      }

LABEL_40:
      v5 = 0;
      goto LABEL_41;
    case 4u:
      v14 = sub_1003B7A8C(v3, a2);
      if (v14)
      {
        v15 = [[NSURL alloc] initWithString:v14];
        goto LABEL_39;
      }

      goto LABEL_40;
    case 5u:
      goto LABEL_20;
  }

LABEL_24:

  return v5;
}

void sub_1003B8090(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAE20;
  qword_1005AAE20 = v1;
}

void sub_1003B8178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003B8220;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003B8220(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v13 = *(a1 + 40);
        v8 = [NSArray arrayWithObjects:&v13 count:1, v9];
        [v7 deliverNotifications:v8 withBarrierBlock:&stru_100526F68];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1003B8364(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003B8408;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

void sub_1003B8408(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v13 = *(a1 + 40);
        v8 = [NSArray arrayWithObjects:&v13 count:1, v9];
        [v7 deliverProgress:v8 withBarrierBlock:&stru_100526F88];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1003B854C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003B85F4;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

id sub_1003B85F4(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%@]: Registered notification client: %{public}@", &v7, 0x16u);
  }

  return [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
}

void sub_1003B86D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003B877C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003B877C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 40), a2, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  [v3 setObject:v2 forKeyedSubscript:v5];
}

void sub_1003B87F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003B8898;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

id sub_1003B8B1C()
{
  objc_opt_self();
  v2[0] = @"bundle_id";
  v2[1] = @"event_type";
  v2[2] = @"event_subtype";
  v2[3] = @"metrics_type";
  v2[4] = @"timestamp";
  v2[5] = @"payload";
  v2[6] = @"has_been_posted";
  v0 = [NSArray arrayWithObjects:v2 count:7];

  return v0;
}

id *sub_1003B8BE4(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = UpdatesBatchTask;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      v8 = [v7 logKey];
      v9 = a1[6];
      a1[6] = v8;

      v10 = objc_alloc_init(NSMutableArray);
      v11 = a1[8];
      a1[8] = v10;

      objc_storeStrong(a1 + 5, a2);
      v12 = [v7 requestToken];
      v13 = a1[7];
      a1[7] = v12;

      *(a1 + 72) = [v7 userInitiated];
    }
  }

  return a1;
}

void sub_1003B953C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1002AF17C([UpdatesTask alloc], v5, v6, *(*(a1 + 32) + 72));

  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, *(*(a1 + 32) + 48), 64);
  }

  v9 = *(a1 + 32);
  v70 = 0;
  v10 = [v9 runSubTask:v7 returningError:&v70];
  v11 = v70;
  if (v10)
  {
    v69 = *(a1 + 32);
    if (v7)
    {
      v12 = v7[9];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v60 = v5;
    if (v69)
    {
      v62 = v11;
      v63 = v7;
      v59 = v5;
      self = v13;
      v14 = sub_1003B4A00(&v13->isa);
      if (*(v69 + 72))
      {
        v15 = &stru_100529300;
      }

      else
      {
        v15 = @"background ";
      }

      v16 = v15;
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v69 + 48);
        v19 = [v14 count];
        v20 = [v60 ams_DSID];
        *buf = 138413058;
        v86 = v18;
        v87 = 2048;
        v88 = v19;
        v89 = 2114;
        v90 = v16;
        v91 = 2114;
        v92 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] ╒ Received %lu %{public}@server update(s) for account: %{public}@", buf, 0x2Au);
      }

      v58 = v16;

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v21 = v14;
      v22 = [v21 countByEnumeratingWithState:&v71 objects:v79 count:16];
      obj = v21;
      if (v22)
      {
        v23 = v22;
        v24 = *v72;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v72 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v71 + 1) + 8 * i);
            v27 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(v69 + 48);
              *buf = 138412546;
              v86 = v28;
              v87 = 2114;
              v88 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] ├ UPD %{public}@", buf, 0x16u);
            }
          }

          v21 = obj;
          v23 = [obj countByEnumeratingWithState:&v71 objects:v79 count:{16, v58}];
        }

        while (v23);
      }

      if (v13)
      {
        Property = objc_getProperty(v13, v29, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v11 = v62;
      v7 = v63;
      v31 = Property;

      if (v31)
      {
        if (v13)
        {
          v33 = objc_getProperty(v13, v32, 24, 1);
        }

        else
        {
          v33 = 0;
        }

        v34 = v33;
        v65 = objc_opt_new();
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v67 = v34;
        v35 = [v67 countByEnumeratingWithState:&v75 objects:buf count:16];
        v36 = v69;
        if (v35)
        {
          v37 = v35;
          v38 = *v76;
          v64 = *v76;
          do
          {
            v39 = 0;
            v66 = v37;
            do
            {
              if (*v76 != v38)
              {
                objc_enumerationMutation(v67);
              }

              v40 = *(*(&v75 + 1) + 8 * v39);
              v41 = objc_autoreleasePoolPush();
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v40 longLongValue] >= 1)
              {
                v42 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v40 longLongValue]);
                v43 = [ApplicationProxy proxyForItemID:v42];

                if (v43)
                {
                  v44 = objc_opt_new();
                  v45 = [v43[15] bundleIdentifier];
                  [v44 setObject:v45 forKeyedSubscript:@"bundleID"];

                  [v44 setObject:v40 forKeyedSubscript:@"itemID"];
                  [v65 addObject:v44];
                  v46 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    v47 = *(v36 + 48);
                    v48 = [v43[15] bundleIdentifier];
                    v49 = [v43[15] iTunesMetadata];
                    v50 = [v49 storeItemIdentifier];

                    *v80 = 138412802;
                    *&v80[4] = v47;
                    *&v80[12] = 2114;
                    *&v80[14] = v48;
                    *&v80[22] = 2048;
                    v81 = v50;
                    v36 = v69;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%@] ├ DEF { bundleID: %{public}@ itemID: %lld }", v80, 0x20u);
                  }
                }

                else
                {
                  v83 = @"itemID";
                  v84 = v40;
                  v51 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
                  [v65 addObject:v51];

                  v44 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = *(v36 + 48);
                    *v80 = 138412546;
                    *&v80[4] = v52;
                    *&v80[12] = 2114;
                    *&v80[14] = v40;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] Found deferred update but not proxy for itemID: %{public}@", v80, 0x16u);
                  }
                }

                v38 = v64;
                v37 = v66;
              }

              objc_autoreleasePoolPop(v41);
              v39 = v39 + 1;
            }

            while (v37 != v39);
            v37 = [v67 countByEnumeratingWithState:&v75 objects:buf count:16];
          }

          while (v37);
        }

        if ([v65 count])
        {
          v53 = sub_100200C1C(DiagnosticPublisher, *(v36 + 56));
          *v80 = _NSConcreteStackBlock;
          *&v80[8] = 3221225472;
          *&v80[16] = sub_1003BA014;
          v81 = &unk_10051B398;
          v82 = v65;
          sub_100200CAC(v53, 1101, v80);
        }

        v11 = v62;
        v7 = v63;
        v13 = self;
      }

      v54 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(v69 + 48);
        *buf = 138412290;
        v86 = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%@] ╘ ", buf, 0xCu);
      }

      v5 = v59;
      if (obj)
      {
        [*(v69 + 64) addObjectsFromArray:obj];
      }
    }
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v56 = *(*(a1 + 32) + 48);
      v57 = [v5 ams_DSID];
      *buf = 138412802;
      v86 = v56;
      v87 = 2114;
      v88 = v57;
      v89 = 2114;
      v90 = v11;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Failed to fetch updates for account: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }
}

void sub_1003B9D8C(uint64_t a1, void *a2)
{
  v3 = [a2 itemID];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

NSCopying *__cdecl sub_1003B9DEC(id a1, UpdatableApp *a2)
{
  v2 = [(UpdatableApp *)a2 storefrontID];
  if (sub_1002C68D0(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_100548490;
  }

  v4 = v3;

  return v3;
}

void sub_1003B9E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isEqualToNumber:&off_100548490] & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 downloaderDSID];
          if (sub_1002C68D0(v12))
          {
            v13 = [*(a1 + 32) ams_iTunesAccountWithDSID:v12];
          }

          else
          {
            v13 = 0;
          }

          v14 = [v11 purchaserDSID];
          v15 = v14;
          if (v13)
          {

LABEL_20:
            goto LABEL_21;
          }

          if (sub_1002C68D0(v14))
          {
            v13 = [*(a1 + 32) ams_iTunesAccountWithDSID:v15];

            if (v13)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = [*(a1 + 32) ams_activeiTunesAccount];
LABEL_21:
  (*(*(a1 + 40) + 16))();
}

void *sub_1003BA014(void *result, uint64_t a2)
{
  if (a2)
  {
    return [*(a2 + 8) setObject:result[4] forKeyedSubscript:@"deferredUpdates"];
  }

  return result;
}

id *sub_1003BA0A8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SQLiteDatabaseStoreMigrator;
    v8 = objc_msgSendSuper2(&v12, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      v9 = [v7 copy];
      v10 = a1[2];
      a1[2] = v9;

      *(a1 + 24) = 1;
    }
  }

  return a1;
}

void sub_1003BA14C(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      v9 = *(a1 + 8);
      v12 = 0;
      v10 = sub_10022C810(v9, v7, &v12, v8);
      v11 = v12;
      if ((v10 & 1) == 0 && a3)
      {
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }
}

void sub_1003BA1F0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1003BA14C(a1, a2, 1, 0);
  }
}

void sub_1003BA204(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1 && *(a1 + 24) == 1)
  {
    v10 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003BA2DC;
    v11[3] = &unk_1005270A0;
    v13 = a3;
    v11[4] = a1;
    v12 = v8;
    sub_10022C3C4(v10, v7, v11);
  }
}

uint64_t sub_1003BA2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 24) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

id *sub_1003BA348(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v26 = a3;
  objc_opt_self();
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    *&v7 = 138543362;
    v25 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = sub_100283920(v11);
        if (v12)
        {
          if (v11)
          {
            v13 = *(v11 + 104);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v15 = [ASDEnterpriseAppMetadata alloc];
            if (v11)
            {
              v16 = *(v11 + 104);
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;
            v18 = [NSURL URLWithString:v17];
            v19 = [v15 initWithManifestURL:v18];

            if (v11)
            {
              v20 = *(v11 + 207);
            }

            else
            {
              v20 = 0;
            }

            [v19 setHideUserPrompts:v20 & 1, v25];
          }

          else
          {
            v21 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v33 = v26;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Dropping requested enterprise manifest with missing URL", buf, 0xCu);
            }

            v19 = +[NSNull null];
          }

          [v5 setObject:v19 forKeyedSubscript:{v12, v25}];
        }

        else
        {
          v19 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v33 = v26;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}@] Dropping requested enterprise manifest with missing externalID", buf, 0xCu);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      v8 = v22;
    }

    while (v22);
  }

  v23 = sub_1003BA674([InstallEnterpriseAppsTask alloc], v5, 1, v26);

  return v23;
}

id *sub_1003BA674(id *a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = InstallEnterpriseAppsTask;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 5, a2);
      *(a1 + 48) = a3;
      objc_storeStrong(a1 + 7, a4);
    }
  }

  return a1;
}

id *sub_1003BA734(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = +[NSUUID UUID];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = sub_1003BA674([InstallEnterpriseAppsTask alloc], v6, 0, v5);

  return v14;
}

id sub_1003BA8D4(id *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = [a1[8] copy];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1003BAAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BAAD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003BAAF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 manifestURL];
    v8 = [v7 scheme];
    v9 = [v8 isEqualToString:@"itms-services"];

    if (v9)
    {
      v10 = sub_100258DEC(v7);
      v11 = [v10 objectForKeyedSubscript:@"action"];
      v12 = [v11 isEqualToString:@"download-manifest"];

      if ((v12 & 1) == 0)
      {
        v28 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v44 = *(*(a1 + 40) + 56);
          *buf = 138543618;
          v50 = v44;
          v51 = 2114;
          v52 = v7;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring, unsupported action for enterprise request: %{public}@", buf, 0x16u);
        }

        v29 = [NSString stringWithFormat:@"Ignoring, unsupported action for enterprise request: %@", v7];
        v30 = ASDErrorWithDescription();
        v31 = *(*(a1 + 48) + 8);
        v32 = *(v31 + 40);
        *(v31 + 40) = v30;

        v13 = v10;
        goto LABEL_36;
      }

      v13 = [v10 objectForKeyedSubscript:@"url"];
      if (v13)
      {
        v14 = [NSURL URLWithString:v13];

        if (v14)
        {
          v15 = [v10 objectForKeyedSubscript:@"digest"];

          v13 = v15;
          v7 = v14;
          goto LABEL_10;
        }

        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v47 = *(*(a1 + 40) + 56);
          *buf = 138543618;
          v50 = v47;
          v51 = 2114;
          v52 = 0;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring, invalid URL for enterprise request: %{public}@", buf, 0x16u);
        }

        v7 = [NSString stringWithFormat:@"Ignoring, invalid URL for enterprise request: %@", 0];
        v42 = ASDErrorWithDescription();
        v43 = *(*(a1 + 48) + 8);
        v37 = *(v43 + 40);
        *(v43 + 40) = v42;
      }

      else
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v46 = *(*(a1 + 40) + 56);
          *buf = 138543618;
          v50 = v46;
          v51 = 2114;
          v52 = v7;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring, missing URL for enterprise request: %{public}@", buf, 0x16u);
        }

        v37 = [NSString stringWithFormat:@"Ignoring, missing URL for enterprise request: %@", v7];
        v38 = ASDErrorWithDescription();
        v39 = *(*(a1 + 48) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;
      }

      v7 = v10;
      goto LABEL_36;
    }

    if (!v7)
    {
      v33 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v45 = *(*(a1 + 40) + 56);
        *buf = 138543362;
        v50 = v45;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring, invalid enterprise request with missing URL", buf, 0xCu);
      }

      v7 = [NSString stringWithFormat:@"Ignoring, invalid enterprise request with missing URL"];
      v34 = ASDErrorWithDescription();
      v35 = *(*(a1 + 48) + 8);
      v13 = *(v35 + 40);
      *(v35 + 40) = v34;
      goto LABEL_36;
    }

    v13 = 0;
LABEL_10:
    v16 = sub_100215460([UPPManifestDownloadTask alloc], v7);
    v18 = v16;
    if (v16)
    {
      objc_setProperty_atomic(v16, v17, *(*(a1 + 40) + 56), 106);
    }

    Property = *(*(a1 + 40) + 56);
    if (Property)
    {
      Property = objc_getProperty(Property, v17, 32, 1);
    }

    v20 = Property;
    v22 = v20;
    if (v18)
    {
      objc_setProperty_atomic(v18, v21, v20, 90);

      v18[74] = [v6 hideUserPrompts];
      objc_setProperty_atomic(v18, v23, v13, 98);
    }

    else
    {

      [v6 hideUserPrompts];
    }

    v24 = sub_100284B90();
    v48 = v18;
    v25 = [NSArray arrayWithObjects:&v48 count:1];
    if (v24)
    {
      [v24[1] addOperations:v25 waitUntilFinished:1];
    }

    if (v18)
    {
      if (v18[24])
      {
LABEL_22:
        [*(a1 + 32) addObject:v5];

LABEL_36:
        goto LABEL_37;
      }

      v27 = objc_getProperty(v18, v26, 32, 1);
    }

    else
    {
      v27 = 0;
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v27);
    goto LABEL_22;
  }

  [*(a1 + 32) addObject:v5];
LABEL_37:
}

void *sub_1003BB174(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v34.receiver = a1;
    v34.super_class = AppLedgerEvent;
    a1 = objc_msgSendSuper2(&v34, "init");
    if (a1)
    {
      v7 = sub_10029430C(v5);
      v8 = a1[7];
      a1[7] = v7;

      v9 = sub_1002943F0(v5);
      v10 = a1[1];
      a1[1] = v9;

      v11 = sub_100340328(v5, @"client_id");
      if (v11)
      {
        v12 = sub_100340328(v5, @"client_id");
      }

      else
      {
        v12 = &stru_100529300;
      }

      v13 = a1[8];
      a1[8] = v12;

      v14 = sub_100340154(v5, @"item_id");
      v15 = a1[6];
      a1[6] = v14;

      v16 = sub_100340328(v5, @"bundle_version");
      v17 = a1[2];
      a1[2] = v16;

      v18 = sub_100340154(v5, @"evid");
      v19 = a1[3];
      a1[3] = v18;

      v20 = sub_10023E604(v6, @"package_type");
      v21 = 2 * (v20 != 0);
      if (v20 == 1)
      {
        v21 = 1;
      }

      a1[9] = v21;
      v22 = [v5 valueForProperty:@"install_finished_timestamp"];
      objc_opt_class();
      v23 = v22;
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = +[NSDate now];
      }

      v26 = a1[4];
      a1[4] = v25;

      v27 = sub_100340328(v5, @"log_code");
      v28 = sub_1002942AC(v5);
      v29 = v27;
      if ([v29 isEqualToString:@"CLP"])
      {
        v30 = 10;
LABEL_20:

        a1[5] = v30;
        goto LABEL_21;
      }

      if ([v29 isEqualToString:@"BUY"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"LGY") & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"ABY"))
      {
        v30 = 11;
        goto LABEL_20;
      }

      if ([v29 isEqualToString:@"BYQ"])
      {
        v30 = 15;
        goto LABEL_20;
      }

      if (![v29 isEqualToString:@"DIS"])
      {
        if ([v29 isEqualToString:@"PTV"])
        {
          v32 = v28 == 0;
          v33 = 40;
LABEL_28:
          if (v32)
          {
            v30 = v33;
          }

          else
          {
            v30 = v33 + 1;
          }

          goto LABEL_20;
        }

        if (([v29 isEqualToString:@"VPP"] & 1) == 0 && !objc_msgSend(v29, "isEqualToString:", @"VPF"))
        {
          if ([v29 isEqualToString:@"RSD"])
          {
            v30 = 17;
          }

          else if ([v29 isEqualToString:@"RSP"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"RSR"))
          {
            v30 = 14;
          }

          else if ([v29 isEqualToString:@"RTV"])
          {
            v30 = 50;
          }

          else if ([v29 isEqualToString:@"SYS"])
          {
            v30 = 70;
          }

          else if ([v29 isEqualToString:@"APR"])
          {
            v30 = 1;
          }

          else if ([v29 isEqualToString:@"TFA"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"TFU"))
          {
            v30 = 20;
          }

          else if ([v29 isEqualToString:@"TFB"])
          {
            v30 = 22;
          }

          else if ([v29 isEqualToString:@"UPD"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"UPB") & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"AUB"))
          {
            v30 = 18;
          }

          else if ([v29 isEqualToString:@"UPA"] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", @"AUA"))
          {
            v30 = 19;
          }

          else if ([v29 isEqualToString:@"WRD"])
          {
            v30 = 60;
          }

          else
          {
            v30 = 0;
          }

          goto LABEL_20;
        }
      }

      v32 = v28 == 0;
      v33 = 30;
      goto LABEL_28;
    }
  }

LABEL_21:

  return a1;
}

void *sub_1003BB60C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = AppLedgerEvent;
    v7 = objc_msgSendSuper2(&v21, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, a3);
      v8 = [v5 bundleIdentifier];
      v9 = a1[1];
      a1[1] = v8;

      v10 = [v5 iTunesMetadata];
      v11 = a1[8];
      a1[8] = @"com.apple.AppStore";

      v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 storeItemIdentifier]);
      v13 = a1[6];
      a1[6] = v12;

      v14 = [v5 bundleVersion];
      v15 = a1[2];
      a1[2] = v14;

      v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 versionIdentifier]);
      v17 = a1[3];
      a1[3] = v16;

      a1[9] = 0;
      v18 = +[NSDate now];
      v19 = a1[4];
      a1[4] = v18;

      a1[5] = 80;
    }
  }

  return a1;
}

void *sub_1003BB76C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = AppLedgerEvent;
    v7 = objc_msgSendSuper2(&v23, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, a3);
      v8 = [v5 bundleIdentifier];
      v9 = a1[1];
      a1[1] = v8;

      v10 = [v5 iTunesMetadata];
      v11 = [v5 iTunesMetadata];
      v12 = [v11 sourceApp];
      v13 = a1[8];
      a1[8] = v12;

      v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 storeItemIdentifier]);
      v15 = a1[6];
      a1[6] = v14;

      v16 = [v5 bundleVersion];
      v17 = a1[2];
      a1[2] = v16;

      v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 versionIdentifier]);
      v19 = a1[3];
      a1[3] = v18;

      a1[9] = 0;
      v20 = +[NSDate now];
      v21 = a1[4];
      a1[4] = v20;

      a1[5] = 90;
    }
  }

  return a1;
}

id sub_1003BB960(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 dataContainerURL];
    v3 = [v2 URLByAppendingPathComponent:@"StoreKit" isDirectory:1];

    if (v3)
    {
      if ([v1 isProfileValidated])
      {
        v4 = @"sandboxReceipt";
      }

      else
      {
        v4 = @"receipt";
      }

      v1 = [v3 URLByAppendingPathComponent:v4 isDirectory:0];
    }

    else
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = [v1 bundleIdentifier];
        v8 = 138543362;
        v9 = v7;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "(LSBundleRecord) Couldn't create receiptURL, no dataContainerURL was returned: %{public}@", &v8, 0xCu);
      }

      v1 = 0;
    }
  }

  return v1;
}

double *sub_1003BBAC8(double *result, double a2, double a3)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = TimeWindow;
    result = objc_msgSendSuper2(&v5, "init");
    if (result)
    {
      result[1] = a3;
      result[2] = a2;
    }
  }

  return result;
}

uint64_t sub_1003BBB20(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = +[NSDate date];
    [v2 timeIntervalSinceReferenceDate];
    v4 = v3;

    if (*(v1 + 16) <= v4)
    {
      if (*(v1 + 8) >= v4)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1003BBF50()
{
  objc_opt_self();
  if (qword_1005AAE30 != -1)
  {
    dispatch_once(&qword_1005AAE30, &stru_100527180);
  }

  v0 = qword_1005AAE38;

  return v0;
}

void sub_1003BBFA8(id a1)
{
  v1 = [Device alloc];
  if (v1)
  {
    v14.receiver = v1;
    v14.super_class = Device;
    v2 = objc_msgSendSuper2(&v14, "init");
    if (v2)
    {
      if (sub_100383448())
      {
        v3 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "HRN mode is enabled", buf, 2u);
        }
      }

      v4 = +[AMSDevice productVersion];
      v5 = v2[3];
      v2[3] = v4;

      objc_opt_self();
      *buf = 0u;
      memset(v18, 0, sizeof(v18));
      v16 = 37;
      if (sysctlbyname("kern.bootsessionuuid", buf, &v16, 0, 0) < 0)
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to get kern.bootsessionuuid", v15, 2u);
        }

        v9 = 0;
      }

      else
      {
        v6 = [NSUUID alloc];
        v7 = [NSString alloc];
        v8 = [v7 initWithBytesNoCopy:buf length:v16 - 1 encoding:4 freeWhenDone:0];
        v9 = [v6 initWithUUIDString:v8];
      }

      v10 = v2[4];
      v2[4] = v9;

      v11 = MGCopyAnswer();
      v12 = v2[2];
      v2[2] = v11;
    }
  }

  else
  {
    v2 = 0;
  }

  v13 = qword_1005AAE38;
  qword_1005AAE38 = v2;
}

void sub_1003BC30C(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v7 = [v4 productVariants];
    if ([v7 count])
    {
      v5 = [v7 componentsJoinedByString:@" "];
      [a1 setValue:v5 forHTTPHeaderField:@"X-Apple-TA-Device"];
    }

    else
    {
      [a1 setValue:0 forHTTPHeaderField:@"X-Apple-TA-Device"];
    }

    v6 = [v4 iOSSupportVersion];

    [a1 setValue:0 forHTTPHeaderField:@"X-Apple-TA-OS-Version"];
  }
}

id sub_1003BC9A0()
{
  objc_opt_self();
  if (qword_1005AAE48 != -1)
  {
    dispatch_once(&qword_1005AAE48, &stru_1005271A0);
  }

  v0 = qword_1005AAE40;

  return v0;
}

void sub_1003BC9F8(id a1)
{
  v1 = objc_alloc_init(InstallAttributionService);
  v2 = qword_1005AAE40;
  qword_1005AAE40 = v1;
}

id sub_1003BD50C(id result)
{
  if (result)
  {
    v1 = sub_100003B90();
    v2 = [v1 processInfo];
    v3 = [v2 bundleIdentifier];

    v4 = [v3 isEqualToString:@"com.apple.asclient"];
    return v4;
  }

  return result;
}

void sub_1003BD744(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1003A575C(InstallAttributionManager, v3))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1003BD800(*(a1 + 32), *(a1 + 40));
  }

  v4 = sub_1003A4EE0();
  sub_1003AD6C8(v4, *(a1 + 40), v6, v3);

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

id sub_1003BD800(uint64_t a1, void *a2)
{
  if (a1)
  {
    v10 = 0;
    v2 = a2;
    v3 = [LSApplicationRecord alloc];
    v4 = [v2 unsignedLongLongValue];

    v5 = [v3 initWithStoreItemIdentifier:v4 error:&v10];
    v6 = v5;
    if (v5)
    {
      v7 = sub_100268548(v5);
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v10;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to find app record: %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1003BDA88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1003A575C(InstallAttributionManager, v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1003BD800(*(a1 + 32), *(a1 + 40));
  }

  v5 = sub_1003A4EE0();
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003BDBA0;
  v9[3] = &unk_10051B548;
  v10 = *(a1 + 64);
  sub_1003ADF24(v5, v7, v6, v8, v4, 0, v3, v9);
}

uint64_t sub_1003BDBA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1003BDD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_1003A575C(InstallAttributionManager, v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1003BD800(*(a1 + 32), *(a1 + 40));
  }

  v5 = sub_1003A4EE0();
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003BDE28;
  v10[3] = &unk_10051B548;
  v11 = *(a1 + 64);
  sub_1003ADF24(v5, v7, v6, v8, v4, v9, v3, v10);
}

uint64_t sub_1003BDE28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1003BE1D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  v5 = [v3 appAdamId];
  v6 = sub_1002C68FC(v5);

  if ((v6 & 1) == 0)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Advertised app ID is not a valid integer value.", &v24, 2u);
    }

    goto LABEL_19;
  }

  v7 = [v4 sourceAppAdamId];
  v8 = sub_1002C68FC(v7);

  if ((v8 & 1) == 0)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Source app ID is not a valid integer value.", &v24, 2u);
    }

    goto LABEL_19;
  }

  v9 = [v4 interactionType];

  if (v9)
  {
    v10 = [v4 interactionType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Interaction type is not a valid string value.", &v24, 2u);
      }

LABEL_19:

      a1 = ASDErrorWithDescription();
      goto LABEL_20;
    }
  }

  v12 = [v4 version];
  v13 = ASDInstallAttributionVersionCreateFromString();

  a1 = 0;
  if (v13 <= 199)
  {
    if (!v13)
    {
      goto LABEL_32;
    }

    if (v13 != 100)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if ((v13 - 200) < 3)
  {
LABEL_25:
    v16 = [v4 campaignId];
    v17 = sub_1002C68FC(v16);

    if (v17)
    {
      v18 = sub_1003A4EE0();
      v19 = [v4 campaignId];
      v20 = sub_1003A69D0(v18, [v19 integerValue]);
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if (v13 != 400)
  {
    if (v13 != 300)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v21 = [v4 sourceIdentifier];
  v22 = sub_1002C68FC(v21);

  if (v22)
  {
    v18 = sub_1003A4EE0();
    v19 = [v4 sourceIdentifier];
    v20 = sub_1003A67D0(v18, [v19 integerValue]);
LABEL_27:
    a1 = v20;

    if (!a1)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  a1 = ASDErrorWithDescription();
  if (!a1)
  {
    goto LABEL_20;
  }

LABEL_33:
  v23 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412290;
    v25 = a1;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Found error while checking for unexepected input: %@", &v24, 0xCu);
  }

LABEL_20:

  return a1;
}

void sub_1003BE5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003A4EE0();
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) sourceAppBundleId];
  v8 = sub_1003A8124(v4, v5, v6, [*(a1 + 40) overrideCampaignLimit], v3);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

_BYTE *sub_1003BE8FC(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v7 = a5;
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  v10 = [StoreItemResponse alloc];
  v11 = v9;
  v113 = v8;
  v12 = v7;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_75;
  }

  v133.receiver = v10;
  v133.super_class = StoreItemResponse;
  v13 = objc_msgSendSuper2(&v133, "init");
  if (!v13)
  {
LABEL_75:
    v104 = v113;
    goto LABEL_76;
  }

  v112 = v12;
  v14 = sub_1002380D8(v11, @"page-type");
  v13[16] = [v14 isEqualToString:@"preorder-success"];

  [v11 objectForKey:@"more"];
  v114 = v11;
  v111 = v115 = v13;
  if (v111)
  {
    v15 = objc_alloc_init(NSMutableArray);
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v16 = sub_100396BF0(v111);
    v17 = [v16 countByEnumeratingWithState:&v129 objects:v141 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v130;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v130 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v129 + 1) + 8 * i);
          v22 = sub_10023790C(v21, @"endId");
          v23 = sub_10023790C(v21, @"startId");
          v24 = v23;
          if (v22)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            [v15 addObject:v23];
            [v15 addObject:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v129 objects:v141 count:16];
      }

      while (v18);
    }

    v26 = [v15 copy];
    v13 = v115;
    v27 = *(v115 + 11);
    *(v115 + 11) = v26;
  }

  v28 = sub_10023790C(v11, @"failureType");
  if (v28)
  {
    v29 = [v11 objectForKey:@"customerMessage"];
    v30 = sub_1003BF460(v28, v29);
    v31 = *(v13 + 7);
    *(v13 + 7) = v30;
  }

  v108 = v28;
  v110 = sub_100237778(v11, @"failed-items");
  if (v110)
  {
    v116 = objc_alloc_init(NSMutableDictionary);
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = sub_100396BF0(v110);
    v32 = [obj countByEnumeratingWithState:&v125 objects:v140 count:{16, v28}];
    if (v32)
    {
      v33 = v32;
      v34 = *v126;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v126 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v125 + 1) + 8 * j);
          v37 = sub_10023790C(v36, @"item-id");
          v38 = sub_10023790C(v36, @"failureType");
          v39 = sub_1002380D8(v36, @"customerMessage");
          v40 = sub_1003BF460(v38, v39);

          if (v37)
          {
            v41 = v40 == 0;
          }

          else
          {
            v41 = 1;
          }

          if (!v41)
          {
            [v116 setObject:v40 forKeyedSubscript:v37];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
      }

      while (v33);
    }

    v42 = [v116 copy];
    v13 = v115;
    v43 = *(v115 + 1);
    *(v115 + 1) = v42;

    v11 = v114;
  }

  v44 = sub_100237B38(v11, @"keybag");
  v45 = *(v13 + 9);
  *(v13 + 9) = v44;

  v46 = sub_10023790C(v11, @"dsPersonId");
  v47 = *(v13 + 3);
  *(v13 + 3) = v46;

  v48 = sub_100237778(v11, @"songList");
  if (!v48)
  {
    v48 = sub_100237778(v11, @"items");
  }

  v49 = [v11 objectForKeyedSubscript:{@"optimalDownloadPeriod", v108}];
  v50 = v49;
  if (v49)
  {
    v52 = sub_1002380D8(v49, @"startTime");
    v53 = [v52 componentsSeparatedByString:@":"];
    v54 = sub_100237FA0(v50, @"durationInMinutes", 0);
    v51 = 0;
    if ([v53 count] == 2 && v54 >= 1)
    {
      v55 = [v53 firstObject];
      v56 = [v55 integerValue];

      v57 = [v53 lastObject];
      v58 = [v57 integerValue];

      v59 = [_TtC9appstored22StoreItemResponseSwift nextOptimalDownloadWindowWithHour:v56 minute:v58 duration:(60 * v54)];
      if (v59)
      {
        v60 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = [v59 startDate];
          v62 = [v59 endDate];
          *buf = 138543618;
          v137 = v61;
          v138 = 2114;
          v139 = v62;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Received optimal download window of %{public}@ to %{public}@", buf, 0x16u);
        }

        v63 = [TimeWindow alloc];
        v64 = [v59 startDate];
        [v64 timeIntervalSinceReferenceDate];
        v66 = v65;
        v67 = [v59 endDate];
        [v67 timeIntervalSinceReferenceDate];
        v51 = sub_1003BBAC8(v63, v66, v68);
      }

      else
      {
        v51 = 0;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  v117 = v50;

  obja = objc_opt_new();
  v69 = objc_opt_new();
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v70 = v48;
  v71 = [v70 countByEnumeratingWithState:&v121 objects:buf count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v122;
    do
    {
      v74 = 0;
      do
      {
        if (*v122 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = sub_1003852B0([StoreItem alloc], *(*(&v121 + 1) + 8 * v74), a4);
        v77 = v75;
        if (v75)
        {
          v78 = objc_getProperty(v75, v76, 216, 1);
          if (v78)
          {
            v80 = v78;
            v81 = objc_getProperty(v77, v79, 96, 1);

            if (v81)
            {
              v82 = objc_getProperty(v77, v79, 96, 1);
              v84 = objc_getProperty(v77, v83, 216, 1);
              [obja setObject:v82 forKeyedSubscript:v84];
            }
          }

          objc_setProperty_atomic(v77, v79, v51, 336);
        }

        [v69 addObject:v77];

        v74 = v74 + 1;
      }

      while (v72 != v74);
      v85 = [v70 countByEnumeratingWithState:&v121 objects:buf count:16];
      v72 = v85;
    }

    while (v85);
  }

  v86 = [v69 copy];
  v13 = v115;
  v87 = *(v115 + 8);
  *(v115 + 8) = v86;

  v11 = v114;
  if (v114)
  {
    v115[17] = sub_1002378BC(v114, @"cancel-purchase-batch", 0);
    v88 = sub_1002378BC(v114, @"trigger-download", 0);
  }

  else
  {
    v88 = 0;
    v115[17] = 0;
  }

  v115[18] = v88;
  v89 = sub_100237D58(v114, @"metrics");
  v90 = *(v115 + 10);
  *(v115 + 10) = v89;

  v91 = sub_100237778(v114, @"duAnonymousPings");
  v92 = v91;
  if (v91)
  {
    v93 = sub_100396CC8(v91);
    v94 = sub_1004024C4(v93, &stru_100527278);
    v95 = *(v115 + 4);
    *(v115 + 4) = v94;
  }

  if (sub_1003A575C(InstallAttributionManager, v112))
  {
    v96 = sub_100237D58(v114, @"ad-network");
    v97 = *(v115 + 15);
    *(v115 + 15) = v96;
  }

  else
  {
    v98 = sub_100237D58(v114, @"ad-networks");
    v97 = v98;
    if (v98)
    {
      v99 = sub_1002380D8(v98, @"error");
      if (v99)
      {
        v100 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          *v134 = 138543362;
          v135 = v99;
          _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Multi pingbacks error:%{public}@", v134, 0xCu);
        }

        v101 = v99;
        v13 = v115;
        v102 = *(v115 + 14);
        *(v115 + 14) = v101;
      }

      else
      {
        v103 = sub_1002380D8(v97, @"url");
        v102 = *(v115 + 13);
        *(v115 + 13) = v103;
      }
    }
  }

  v104 = v113;
  v105 = [v113 valueForHTTPHeaderField:@"x-apple-date-generated"];
  v106 = *(v13 + 5);
  *(v13 + 5) = v105;

  v12 = v112;
LABEL_76:

  return v13;
}

StoreItemResponse *sub_1003BF384(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  v7 = [StoreItemResponse alloc];
  v8 = v6;
  v9 = v5;
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = StoreItemResponse;
    v10 = objc_msgSendSuper2(&v12, "init");
    v7 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_error, a2);
      objc_storeStrong(&v7->_accountID, a3);
    }
  }

  return v7;
}

id sub_1003BF460(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  if (v3)
  {
    [v3 integerValue];
  }

  v5 = ASDErrorWithTitleAndMessage();

  return v5;
}

id sub_1003BF514(id result)
{
  if (result)
  {
    return sub_1002378BC(result, @"trigger-download", 0);
  }

  return result;
}

id sub_1003BF604(uint64_t a1, void *a2, int a3, int a4)
{
  v5 = a2;
  objc_opt_self();
  v6 = [v5 isUpdate];
  v7 = [v5 name];
  v8 = [v5 bytes];
  [v5 isRemaining];
  v9 = [v5 logKey];
  v10 = v7;
  v11 = v9;
  v12 = objc_opt_self();
  v13 = objc_alloc_init(AMSDialogRequest);
  v14 = [v11 description];

  [v13 setLogKey:v14];
  if (v6)
  {
    if (v10 && [v10 length])
    {
      v15 = ASDLocalizedString();
      v16 = [NSString stringWithFormat:v15, v10];
      [v13 setTitle:v16];
    }

    else
    {
      v15 = ASDLocalizedString();
      [v13 setTitle:v15];
    }

    v19 = sub_1003BFD58(v12, v8);
    [v13 setMessage:v19];

    v20 = sub_1003BFB78(v12, a4);
    [v13 setButtonActions:v20];

    v21 = [v13 buttonActions];
    v22 = [v21 lastObject];
    [v13 setDefaultAction:v22];

    v23 = @"cellularLimitUpdate";
    v24 = @"cellularLimitUpdateRoaming";
  }

  else
  {
    if (v10 && [v10 length])
    {
      v17 = ASDLocalizedString();
      v18 = [NSString stringWithFormat:v17, v10];
      [v13 setTitle:v18];
    }

    else
    {
      v17 = ASDLocalizedString();
      [v13 setTitle:v17];
    }

    v25 = sub_1003BFD58(v12, v8);
    [v13 setMessage:v25];

    v26 = sub_1003BFB78(v12, 1);
    [v13 setButtonActions:v26];

    v27 = [v13 buttonActions];
    v28 = [v27 lastObject];
    [v13 setDefaultAction:v28];

    v23 = @"cellularLimitDownload";
    v24 = @"cellularLimitDownloadRoaming";
  }

  if (a3)
  {
    v29 = v24;
  }

  else
  {
    v29 = v23;
  }

  sub_100406DAC(v13, v29);

  return v13;
}

id sub_1003BF980(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v10 = a6;
  v11 = objc_opt_self();
  v12 = objc_alloc_init(AMSDialogRequest);
  v13 = [v10 description];

  [v12 setLogKey:v13];
  v14 = ASDLocalizedString();
  [v12 setTitle:v14];

  if (a3 || a2)
  {
    v15 = ASDLocalizedString();
    v16 = [_TtC9appstored17EvaluatorDownload formatSize:a2];
    v17 = [NSString stringWithFormat:v15, v16];
    [v12 setMessage:v17];
  }

  else
  {
    v15 = ASDLocalizedString();
    [v12 setMessage:v15];
  }

  v18 = sub_1003BFB78(v11, a5);
  [v12 setButtonActions:v18];

  v19 = [v12 buttonActions];
  v20 = [v19 lastObject];
  [v12 setDefaultAction:v20];

  if (a4)
  {
    v21 = @"cellularLimitUpdatesRoaming";
  }

  else
  {
    v21 = @"cellularLimitUpdates";
  }

  sub_100406DAC(v12, v21);

  return v12;
}

id sub_1003BFB78(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = objc_alloc_init(AMSDialogAction);
  v4 = ASDLocalizedString();
  [v3 setTitle:v4];

  [v3 setIdentifier:@"CelularDataPromptActionDownloadNow"];
  sub_10022DA8C(v3, @"download");
  v5 = objc_alloc_init(AMSDialogAction);
  if (a2)
  {
    objc_opt_self();
    MGGetBoolAnswer();
    v6 = ASDLocalizedString();
    [v5 setTitle:v6];

    [v5 setIdentifier:@"CelularDataPromptActionDownloadLater"];
    [v5 setStyle:2];
    sub_10022DA8C(v5, @"later");
    v12 = v5;
    v7 = &v12;
  }

  else
  {
    v8 = ASDLocalizedString();
    [v5 setTitle:v8];

    [v5 setIdentifier:@"CellularDataPromptActionCancel"];
    [v5 setStyle:2];
    sub_10022DA8C(v5, @"cancel");
    v11 = v5;
    v7 = &v11;
  }

  v7[1] = v3;
  v9 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  return v9;
}

id sub_1003BFD58(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  ASDLocalizedString();
  if (a2)
    v3 = {;
    v4 = [_TtC9appstored17EvaluatorDownload formatSize:a2];
    v5 = [NSString stringWithFormat:v3, v4];
  }

  else
    v5 = {;
  }

  return v5;
}

id sub_1003C021C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = sub_1003C02BC(PurchaseHistoryDatabaseSession, a2);
    v4 = [v2 connection];
    v2 = sub_1002D4220(PurchaseHistoryAppEntity, @"ROWID", v3, v4);
  }

  return v2;
}

id sub_1003C02BC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"purchaser_dsid", [v2 accountID]);
  [v3 addObject:v4];

  v5 = [v2 genreID];

  if (v5)
  {
    v6 = [v2 genreID];
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"genre_id" equalToValue:v6];
    [v3 addObject:v7];
  }

  if ([v2 includeArcade] == 2)
  {
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"media_kind" value:&off_1005484A8 comparisonType:2];
    [v3 addObject:v8];
  }

  if ([v2 isFirstParty] == 2)
  {
    v9 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 isFirstParty] != 1)
    {
      goto LABEL_10;
    }

    v9 = &__kCFBooleanTrue;
  }

  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"first_party" equalToValue:v9];
  [v3 addObject:v10];

LABEL_10:
  if ([v2 isHidden] == 2)
  {
    v11 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 isHidden] != 1)
    {
      goto LABEL_15;
    }

    v11 = &__kCFBooleanTrue;
  }

  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"hidden" equalToValue:v11];
  [v3 addObject:v12];

LABEL_15:
  if ([v2 currentlyOptedInForMacOSEligibility] == 2)
  {
    v13 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 currentlyOptedInForMacOSEligibility] != 1)
    {
      goto LABEL_20;
    }

    v13 = &__kCFBooleanTrue;
  }

  v14 = [SQLiteComparisonPredicate predicateWithProperty:@"is_ios_binary_macos_available" equalToValue:v13];
  [v3 addObject:v14];

LABEL_20:
  if ([v2 optedInForMacOSEligibility] == 2)
  {
    v15 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 optedInForMacOSEligibility] != 1)
    {
      goto LABEL_25;
    }

    v15 = &__kCFBooleanTrue;
  }

  v16 = [SQLiteComparisonPredicate predicateWithProperty:@"is_ios_binary_macos_compatible" equalToValue:v15];
  [v3 addObject:v16];

LABEL_25:
  if ([v2 currentlyOptedInForXROSEligibility] == 2)
  {
    v17 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 currentlyOptedInForXROSEligibility] != 1)
    {
      goto LABEL_30;
    }

    v17 = &__kCFBooleanTrue;
  }

  v18 = [SQLiteComparisonPredicate predicateWithProperty:@"currently_opted_in_for_ros_eligibility" equalToValue:v17];
  [v3 addObject:v18];

LABEL_30:
  if ([v2 optedInForXROSEligibility] == 2)
  {
    v19 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 optedInForXROSEligibility] != 1)
    {
      goto LABEL_35;
    }

    v19 = &__kCFBooleanTrue;
  }

  v20 = [SQLiteComparisonPredicate predicateWithProperty:@"opted_in_for_ros_eligibility" equalToValue:v19];
  [v3 addObject:v20];

LABEL_35:
  if ([v2 supportsCurrentDevice] == 1)
  {
    v21 = [SQLiteComparisonPredicate predicateWithProperty:@"watch_app_watch_only" equalToValue:&__kCFBooleanFalse];
    v61[0] = v21;
    v22 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_ipad" equalToValue:&__kCFBooleanTrue];
    v60[0] = v22;
    v23 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_iphone" equalToValue:&__kCFBooleanTrue];
    v60[1] = v23;
    v24 = [NSArray arrayWithObjects:v60 count:2];
    v25 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v24];
    v61[1] = v25;
    v26 = [NSArray arrayWithObjects:v61 count:2];
    v27 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v26];
    [v3 addObject:v27];
  }

  if ([v2 supportsRealityDevice] == 2)
  {
    v28 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 supportsRealityDevice] != 1)
    {
      goto LABEL_42;
    }

    v28 = &__kCFBooleanTrue;
  }

  v29 = [SQLiteComparisonPredicate predicateWithProperty:@"supports_reality_device" equalToValue:v28];
  [v3 addObject:v29];

LABEL_42:
  v30 = [v2 searchTerm];

  if (v30)
  {
    v31 = [v2 searchTerm];
    v32 = [SQLiteComparisonPredicate predicateWithProperty:@"long_title" value:v31 comparisonType:7];
    [v3 addObject:v32];
  }

  v33 = [v2 storeIDs];
  if (v33)
  {
    v34 = v33;
    v35 = [v2 storeIDs];
    v36 = [v35 count];

    if (v36)
    {
      v37 = [v2 storeIDs];
      v38 = [SQLiteContainsPredicate containsPredicateWithProperty:@"store_item_id" values:v37];
      [v3 addObject:v38];
    }
  }

  v39 = [v2 bundleIDs];
  if (v39)
  {
    v40 = v39;
    v41 = [v2 bundleIDs];
    v42 = [v41 count];

    if (v42)
    {
      v43 = [v2 bundleIDs];
      v44 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:v43];
      [v3 addObject:v44];
    }
  }

  if ([v2 isEligibleForGamesApp] == 2)
  {
    v45 = &__kCFBooleanFalse;
  }

  else
  {
    if ([v2 isEligibleForGamesApp] != 1)
    {
      goto LABEL_55;
    }

    v45 = &__kCFBooleanTrue;
  }

  v46 = [SQLiteComparisonPredicate predicateWithProperty:@"is_eligible_for_games_app" equalToValue:v45];
  [v3 addObject:v46];

LABEL_55:
  if ([v2 isPreorder] == 2)
  {
    v47 = [SQLiteComparisonPredicate predicateWithProperty:@"is_preorder" equalToValue:&__kCFBooleanFalse];
    [v3 addObject:v47];

    if ([v2 includeArcade] == 1)
    {
      goto LABEL_62;
    }

    v48 = [SQLiteComparisonPredicate predicateWithProperty:@"media_kind" value:&off_1005484A8 comparisonType:2];
    goto LABEL_60;
  }

  if ([v2 isPreorder] == 1)
  {
    v48 = [SQLiteComparisonPredicate predicateWithProperty:@"is_preorder" equalToValue:&__kCFBooleanTrue];
LABEL_60:
    v49 = v48;
    [v3 addObject:v48];
LABEL_61:

    goto LABEL_62;
  }

  if ([v2 includeArcade] != 1)
  {
    v49 = [SQLiteComparisonPredicate predicateWithProperty:@"media_kind" value:&off_1005484A8 comparisonType:2];
    v52 = [SQLiteComparisonPredicate predicateWithProperty:@"media_kind" value:&off_1005484A8 comparisonType:1];
    v53 = [SQLiteComparisonPredicate predicateWithProperty:@"is_preorder" equalToValue:&__kCFBooleanTrue];
    v59[0] = v52;
    v59[1] = v53;
    v54 = [NSArray arrayWithObjects:v59 count:2];
    v55 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v54];

    v58[0] = v49;
    v58[1] = v55;
    v56 = [NSArray arrayWithObjects:v58 count:2];
    v57 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v56];

    [v3 addObject:v57];
    goto LABEL_61;
  }

LABEL_62:
  v50 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v3];

  return v50;
}

id sub_1003C0B84(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 accountID]);
    v8 = sub_1003C1400(a1, v7);

    if (![v8 unsignedLongValue])
    {
      v35 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = v45;
        v47 = objc_opt_class();
        v48 = v47;
        v49 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 accountID]);
        *buf = 138412802;
        v66 = v45;
        v67 = 2114;
        v68 = v47;
        v69 = 2112;
        v70 = v49;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%@]: [%{public}@]: No data found for account: %@", buf, 0x20u);
      }

      v36 = ASDErrorWithDescription();
      v37 = 0;
      if (!a3)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v9 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:objc_opt_class()];
    v11 = sub_1003C02BC(PurchaseHistoryDatabaseSession, v6);
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v10, v11, 56);
    }

    v12 = [v6 sortOptions];
    if (v12)
    {
      v13 = v12;
      v14 = [v6 sortOptions];
      v15 = [v14 count];

      if (v15)
      {
        self = v9;
        v51 = a1;
        v52 = v8;
        v56 = objc_alloc_init(NSMutableArray);
        v55 = objc_alloc_init(NSMutableArray);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v53 = v6;
        obj = [v6 sortOptions];
        v16 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v60;
          v19 = kASDPurchaseHistoryQuerySortOptionDate;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v60 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v59 + 1) + 8 * i);
              v22 = [v21 name];
              objc_opt_self();
              if ([v22 isEqualToString:v19])
              {
                v23 = @"date_purchased";
              }

              else
              {
                v24 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v26 = objc_opt_class();
                  *buf = 138412546;
                  v66 = v26;
                  v67 = 2112;
                  v68 = v22;
                  v27 = v26;
                  _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@]: Unknown sort option: %@", buf, 0x16u);
                }

                v23 = 0;
              }

              if (v23)
              {
                [v56 addObject:v23];
                if ([v21 ascending])
                {
                  v25 = @"ASC";
                }

                else
                {
                  v25 = @"DESC";
                }

                [v55 addObject:v25];
              }
            }

            v17 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
          }

          while (v17);
        }

        v9 = self;
        if (self)
        {
          objc_setProperty_nonatomic_copy(self, v28, v56, 48);
          objc_setProperty_nonatomic_copy(self, v29, v55, 40);
        }

        v6 = v53;
        a1 = v51;
        v8 = v52;
      }
    }

    v30 = [v6 properties];
    if (!v30)
    {
      v63[0] = @"app_icon_artwork_url";
      v63[1] = @"app_icon_artwork_token";
      v63[2] = @"app_icon_compatible_artwork_url";
      v63[3] = @"bundle_id";
      v63[4] = @"content_rating_flags";
      v63[5] = @"circular_app_icon_artwork_url";
      v63[6] = @"circular_app_icon_artwork_token";
      v63[7] = @"circular_app_icon_compatible_artwork_url";
      v63[8] = @"circular_icon_url";
      v63[9] = @"date_purchased";
      v63[10] = @"developer_name";
      v63[11] = @"family_shared";
      v63[12] = @"first_party";
      v63[13] = @"has_messages_extension";
      v63[14] = @"hidden";
      v63[15] = @"hidden_from_springboard";
      v63[16] = @"icon_url_template";
      v63[17] = @"is_32_bit_only";
      v63[18] = @"is_ios_binary_macos_available";
      v63[19] = @"currently_opted_in_for_ros_eligibility";
      v63[20] = @"is_ios_binary_macos_compatible";
      v63[21] = @"opted_in_for_ros_eligibility";
      v63[22] = @"is_eligible_for_games_app";
      v63[23] = @"is_preorder";
      v63[24] = @"long_title";
      v63[25] = @"media_kind";
      v63[26] = @"oval_icon_url_template";
      v63[27] = @"preflight_package_url";
      v63[28] = @"product_url";
      v63[29] = @"purchaser_dsid";
      v63[30] = @"redownload_params";
      v63[31] = @"required_capabilities";
      v63[32] = @"store_item_id";
      v63[33] = @"supports_ipad";
      v63[34] = @"supports_iphone";
      v63[35] = @"supports_mac";
      v63[36] = @"supports_reality_device";
      v63[37] = @"purchase_token";
      v63[38] = @"locker_item_id";
      v63[39] = @"genre_id";
      v63[40] = @"genre_name";
      v63[41] = @"watch_app_delivered_in_ios_app";
      v63[42] = @"watch_app_runs_independently";
      v63[43] = @"watch_app_watch_only";
      v63[44] = @"supports_layered_image";
      v63[45] = @"has_p3";
      v63[46] = @"title";
      v38 = [NSArray arrayWithObjects:v63 count:47];
      v34 = [v38 mutableCopy];

      v32 = NSComparisonPredicate_ptr;
      goto LABEL_50;
    }

    v31 = v30;
    v32 = NSComparisonPredicate_ptr;
    v33 = [[NSMutableArray alloc] initWithCapacity:5];
    v34 = v33;
    if (v31)
    {
      [v33 addObject:@"bundle_id"];
      if ((v31 & 2) == 0)
      {
LABEL_30:
        if ((v31 & 4) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_44;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_30;
    }

    [v34 addObject:@"date_purchased"];
    if ((v31 & 4) == 0)
    {
LABEL_31:
      if ((v31 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }

LABEL_44:
    [v34 addObject:@"is_eligible_for_games_app"];
    if ((v31 & 8) == 0)
    {
LABEL_32:
      if ((v31 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_46;
    }

LABEL_45:
    [v34 addObject:@"hidden_from_springboard"];
    if ((v31 & 0x10) == 0)
    {
LABEL_33:
      if ((v31 & 0x20) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }

LABEL_46:
    [v34 addObject:@"long_title"];
    if ((v31 & 0x20) == 0)
    {
LABEL_34:
      if ((v31 & 0x40) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_48;
    }

LABEL_47:
    [v34 addObject:@"media_kind"];
    if ((v31 & 0x40) == 0)
    {
LABEL_35:
      if ((v31 & 0x80) == 0)
      {
LABEL_50:
        v39 = objc_alloc_init(v32[246]);
        v40 = [SQLiteQuery alloc];
        v41 = [a1 connection];
        v42 = [(SQLiteQuery *)v40 initOnConnection:v41 descriptor:v9];

        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1003C14A0;
        v57[3] = &unk_100521638;
        v37 = v39;
        v58 = v37;
        [v42 enumeratePersistentIDsAndProperties:v34 usingBlock:v57];

        v36 = 0;
        if (!a3)
        {
LABEL_53:
          v43 = [v37 copy];

          goto LABEL_54;
        }

LABEL_51:
        if (v36)
        {
          *a3 = v36;
        }

        goto LABEL_53;
      }

LABEL_49:
      [v34 addObject:@"store_item_id"];
      goto LABEL_50;
    }

LABEL_48:
    [v34 addObject:@"redownload_params"];
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v43 = 0;
LABEL_54:

  return v43;
}

id sub_1003C1400(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100301CF0(PurchaseHistoryDatabaseSession, a2);
    v4 = sub_1003C1E2C(a1, v3);

    if (v4)
    {
      v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue]);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1003C14A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v53 = objc_alloc_init(ASDPurchaseHistoryApp);
  v5 = [v4 objectForKeyedSubscript:@"app_icon_artwork_url"];
  [v53 setAppIconArtworkURLString:v5];

  v6 = [v4 objectForKeyedSubscript:@"app_icon_artwork_token"];
  [v53 setAppIconArtworkToken:v6];

  v7 = [v4 objectForKeyedSubscript:@"app_icon_compatible_artwork_url"];
  [v53 setAppIconCompatibleArtworkURLString:v7];

  v8 = [v4 objectForKeyedSubscript:@"bundle_id"];
  [v53 setBundleID:v8];

  v9 = [v4 objectForKeyedSubscript:@"content_rating_flags"];
  [v53 setContentRatingFlags:{objc_msgSend(v9, "integerValue")}];

  v10 = [v4 objectForKeyedSubscript:@"circular_app_icon_artwork_url"];
  [v53 setCircularAppIconArtworkURLString:v10];

  v11 = [v4 objectForKeyedSubscript:@"circular_app_icon_artwork_token"];
  [v53 setCircularAppIconArtworkToken:v11];

  v12 = [v4 objectForKeyedSubscript:@"circular_icon_url"];
  [v53 setCircularIconURLString:v12];

  v13 = [v4 objectForKeyedSubscript:@"circular_app_icon_compatible_artwork_url"];
  [v53 setCircularAppIconCompatibleArtworkURLString:v13];

  v14 = [v4 objectForKeyedSubscript:@"date_purchased"];
  [v53 setDatePurchased:v14];

  v15 = [v4 objectForKeyedSubscript:@"developer_name"];
  [v53 setDeveloperName:v15];

  v16 = [v4 objectForKeyedSubscript:@"family_shared"];
  [v53 setFamilyShared:{objc_msgSend(v16, "BOOLValue")}];

  v17 = [v4 objectForKeyedSubscript:@"first_party"];
  [v53 setFirstParty:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [v4 objectForKeyedSubscript:@"has_messages_extension"];
  [v53 setHasMessagesExtension:{objc_msgSend(v18, "BOOLValue")}];

  v19 = [v4 objectForKeyedSubscript:@"hidden"];
  [v53 setHidden:{objc_msgSend(v19, "BOOLValue")}];

  v20 = [v4 objectForKeyedSubscript:@"hidden_from_springboard"];
  [v53 setHiddenFromSpringboard:{objc_msgSend(v20, "BOOLValue")}];

  v21 = [v4 objectForKeyedSubscript:@"icon_url_template"];
  [v53 setIconURLString:v21];

  v22 = [v4 objectForKeyedSubscript:@"media_kind"];
  [v53 setIsArcade:{objc_msgSend(v22, "unsignedIntValue") == 0x40000}];

  v23 = [v4 objectForKeyedSubscript:@"is_32_bit_only"];
  [v53 setIs32BitOnly:{objc_msgSend(v23, "BOOLValue")}];

  v24 = [v4 objectForKeyedSubscript:@"is_ios_binary_macos_available"];
  [v53 setCurrentlyOptedInForMacOSEligibility:{objc_msgSend(v24, "BOOLValue")}];

  v25 = [v4 objectForKeyedSubscript:@"currently_opted_in_for_ros_eligibility"];
  [v53 setCurrentlyOptedInForXROSEligibility:{objc_msgSend(v25, "BOOLValue")}];

  v26 = [v4 objectForKeyedSubscript:@"is_ios_binary_macos_compatible"];
  [v53 setOptedInForMacOSEligibility:{objc_msgSend(v26, "BOOLValue")}];

  v27 = [v4 objectForKeyedSubscript:@"opted_in_for_ros_eligibility"];
  [v53 setOptedInForXROSEligibility:{objc_msgSend(v27, "BOOLValue")}];

  v28 = [v4 objectForKeyedSubscript:@"is_eligible_for_games_app"];
  [v53 setIsEligibleForGamesApp:{objc_msgSend(v28, "BOOLValue")}];

  v29 = [v4 objectForKeyedSubscript:@"is_preorder"];
  [v53 setIsPreorder:{objc_msgSend(v29, "BOOLValue")}];

  v30 = [v4 objectForKeyedSubscript:@"long_title"];
  [v53 setLongTitle:v30];

  v31 = [v4 objectForKeyedSubscript:@"media_kind"];
  [v53 setMediaKind:{objc_msgSend(v31, "unsignedIntValue")}];

  v32 = [v4 objectForKeyedSubscript:@"oval_icon_url_template"];
  [v53 setOvalIconURLString:v32];

  v33 = [v4 objectForKeyedSubscript:@"preflight_package_url"];
  [v53 setPreflightPackageURL:v33];

  v34 = [v4 objectForKeyedSubscript:@"product_url"];
  [v53 setProductURL:v34];

  v35 = [v4 objectForKeyedSubscript:@"purchaser_dsid"];
  [v53 setPurchaserDSID:{objc_msgSend(v35, "longLongValue")}];

  v36 = [v4 objectForKeyedSubscript:@"redownload_params"];
  [v53 setRedownloadParams:v36];

  v37 = [v4 objectForKeyedSubscript:@"required_capabilities"];
  [v53 setRequiredCapabilities:v37];

  v38 = [v4 objectForKeyedSubscript:@"store_item_id"];
  [v53 setStoreItemID:{objc_msgSend(v38, "longLongValue")}];

  v39 = [v4 objectForKeyedSubscript:@"supports_ipad"];
  [v53 setSupportsIPad:{objc_msgSend(v39, "BOOLValue")}];

  v40 = [v4 objectForKeyedSubscript:@"supports_iphone"];
  [v53 setSupportsIPhone:{objc_msgSend(v40, "BOOLValue")}];

  v41 = [v4 objectForKeyedSubscript:@"supports_mac"];
  [v53 setSupportsMac:{objc_msgSend(v41, "BOOLValue")}];

  v42 = [v4 objectForKeyedSubscript:@"supports_reality_device"];
  [v53 setSupportsRealityDevice:{objc_msgSend(v42, "BOOLValue")}];

  v43 = [v4 objectForKeyedSubscript:@"purchase_token"];
  [v53 setPurchaseToken:{objc_msgSend(v43, "unsignedIntValue")}];

  v44 = [v4 objectForKeyedSubscript:@"locker_item_id"];
  [v53 setLockerItemID:{objc_msgSend(v44, "unsignedLongLongValue")}];

  v45 = [v4 objectForKeyedSubscript:@"genre_id"];
  [v53 setGenreID:{objc_msgSend(v45, "longLongValue")}];

  v46 = [v4 objectForKeyedSubscript:@"genre_name"];
  [v53 setGenreName:v46];

  v47 = [v4 objectForKeyedSubscript:@"watch_app_delivered_in_ios_app"];
  [v53 setWatchAppDeliveredIniOSApp:{objc_msgSend(v47, "BOOLValue")}];

  v48 = [v4 objectForKeyedSubscript:@"watch_app_runs_independently"];
  [v53 setWatchAppRunsIndependently:{objc_msgSend(v48, "BOOLValue")}];

  v49 = [v4 objectForKeyedSubscript:@"watch_app_watch_only"];
  [v53 setWatchOnly:{objc_msgSend(v49, "BOOLValue")}];

  v50 = [v4 objectForKeyedSubscript:@"supports_layered_image"];
  [v53 setSupportsLayeredImage:{objc_msgSend(v50, "BOOLValue")}];

  v51 = [v4 objectForKeyedSubscript:@"has_p3"];
  [v53 setHasP3:{objc_msgSend(v51, "BOOLValue")}];

  v52 = [v4 objectForKeyedSubscript:@"title"];

  [v53 setTitle:v52];
  [*(a1 + 32) addObject:v53];
}

id sub_1003C1D08(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_1003C1DB4(PurchaseHistoryDatabaseSession, a2);
    v4 = sub_1003C1E2C(a1, v3);

    if (objc_opt_respondsToSelector())
    {
      [v4 doubleValue];
      v5 = [NSDate dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1003C1DB4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NSString stringWithFormat:@"%@%@", @"LastForceRefreshedTimestampPropertyKey", v2];

  return v3;
}

id sub_1003C1E2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1003C200C;
  v15 = sub_1003C201C;
  v16 = 0;
  v4 = *(a1 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C2024;
  v8[3] = &unk_10051DEB8;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  sub_10022C3C4(v4, @"SELECT value FROM purchase_history_db_properties WHERE key = ?", v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_1003C1F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003C1F60(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100301AA4(PurchaseHistoryDatabaseSession, a2);
    v4 = sub_1003C1E2C(a1, v3);

    if (objc_opt_respondsToSelector())
    {
      [v4 doubleValue];
      v5 = [NSDate dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1003C200C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003C2024(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003C20C8;
  v5[3] = &unk_10051D4F0;
  v5[4] = *(a1 + 40);
  sub_100214814(v4, v5);
}

void sub_1003C20C8(uint64_t a1, void *a2)
{
  v3 = sub_1003B7CF4(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void *sub_1003C213C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ODRBundleTagManifest;
    v5 = objc_msgSendSuper2(&v9, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = +[NSDate date];
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

void *sub_1003C21D0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      v16 = 0;
      goto LABEL_31;
    }

    v7 = v5;
    objc_opt_self();
    v32 = 0;
    v8 = [NSData dataWithContentsOfURL:v7 options:0 error:&v32];

    v9 = v32;
    v10 = v9;
    if (!v8)
    {
      v35 = NSUnderlyingErrorKey;
      cf[0] = v9;
      v17 = [NSDictionary dictionaryWithObjects:cf forKeys:&v35 count:1];
      if (a3)
      {
        [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:101 userInfo:v17];
        *a3 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      v19 = v10;
      goto LABEL_27;
    }

    v11 = v8;
    objc_opt_self();
    v35 = 0;
    cf[0] = 0;
    [NSSet setWithObject:@"NSBundleResourceRequestTags"];
    Filtered = _CFPropertyListCreateFiltered();

    if (Filtered)
    {
      v13 = CFGetTypeID(cf[0]);
      if (v13 == CFDictionaryGetTypeID())
      {
        v14 = cf[0];
        v15 = v10;
        goto LABEL_17;
      }

      v33 = NSDebugDescriptionErrorKey;
      v34 = @"Manifest is not a dictionary";
      v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    }

    else if (v35)
    {
      v33 = NSUnderlyingErrorKey;
      v34 = v35;
      v18 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      CFRelease(v35);
    }

    else
    {
      v18 = 0;
    }

    v15 = [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:101 userInfo:v18];
    v20 = v15;

    v14 = 0;
LABEL_17:
    v19 = v15;

    if (v14)
    {
      v17 = v14;
      objc_opt_self();
      v21 = +[NSMutableDictionary dictionary];
      v22 = [v17 objectForKeyedSubscript:@"NSBundleResourceRequestTags"];

      if (v22)
      {
        cf[0] = _NSConcreteStackBlock;
        cf[1] = 3221225472;
        cf[2] = sub_1003C26EC;
        cf[3] = &unk_1005272A8;
        v23 = v21;
        v37 = v23;
        [v22 enumerateKeysAndObjectsUsingBlock:cf];

        v16 = [v23 copy];
      }

      else
      {
        v35 = NSDebugDescriptionErrorKey;
        cf[0] = @"Manifest has no tags";
        v25 = [NSDictionary dictionaryWithObjects:cf forKeys:&v35 count:1];
        if (a3)
        {
          *a3 = [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:101 userInfo:v25];
        }

        v16 = 0;
      }
    }

    else
    {
      v35 = NSUnderlyingErrorKey;
      cf[0] = v19;
      v24 = [NSDictionary dictionaryWithObjects:cf forKeys:&v35 count:1];
      if (a3)
      {
        *a3 = [NSError errorWithDomain:_NSBundleResourceRequestErrorDomain code:101 userInfo:v24];
      }

      v17 = 0;
      v16 = 0;
    }

LABEL_27:

    if (v16)
    {
      v26 = sub_1003C213C(a1, v16);
      if (!v26)
      {
LABEL_33:
        a1 = v26;

        goto LABEL_34;
      }

      v27 = +[NSFileManager defaultManager];
      v28 = [v7 path];
      a1 = [v27 attributesOfItemAtPath:v28 error:0];

      if (a1)
      {
        v29 = [a1 fileModificationDate];
        v30 = v26[2];
        v26[2] = v29;
      }

LABEL_32:

      goto LABEL_33;
    }

LABEL_31:
    v26 = 0;
    goto LABEL_32;
  }

LABEL_34:

  return a1;
}

id *sub_1003C26B8(id *a1)
{
  if (a1)
  {
    a1 = [a1[1] allKeys];
    v1 = vars8;
  }

  return a1;
}

void sub_1003C26EC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"NSAssetPacks"];
  if (!v5)
  {
    v5 = +[NSArray array];
  }

  [*(a1 + 32) setObject:v5 forKey:v6];
}

id sub_1003C27BC()
{
  objc_opt_self();
  if (qword_1005AAE58 != -1)
  {
    dispatch_once(&qword_1005AAE58, &stru_1005272C8);
  }

  v0 = qword_1005AAE50;

  return v0;
}

void sub_1003C2814(id a1)
{
  v1 = [AppInstallsDatabaseStore alloc];
  v5 = sub_1001C0DF0();
  v2 = sub_1001C0EC4(v5);
  v3 = [(SQLiteDatabaseStore *)v1 initWithDatabase:v2];
  v4 = qword_1005AAE50;
  qword_1005AAE50 = v3;
}

uint64_t sub_1003C29DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_1003FACA0();
    if (v5)
    {
      objc_storeWeak(v5 + 2, v7);
    }

    if (v6[2](v6, v5))
    {
      if (v5)
      {
        Property = objc_getProperty(v5, v8, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v10 = Property;
      sub_1003C2BF4(a1, v10);

      v11 = [v5 connection];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1003C3368;
      v13[3] = &unk_10051B570;
      v13[4] = a1;
      v14 = v5;
      sub_10022C30C(v11, v13);

      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1003C2BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3[5] copy];
    }

    else
    {
      v5 = 0;
    }

    v67 = v4;
    if ([v5 count])
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v77;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v77 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v76 + 1) + 8 * i);
            v12 = sub_1003649C8();
            sub_100365318(v12, v11);
          }

          v8 = [v6 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v8);
      }

      v4 = v67;
    }

    p_info = PersonalizationManager.info;
    v62 = v5;
    if (v4)
    {
      if (*(v4 + 145) == 1)
      {
        v14 = +[BagService appstoredService];
        [v14 recentBagWithCompletionHandler:&stru_100527380];

        v4 = v67;
      }

      if (v4[17])
      {
        v15 = sub_1002C0D84();
        sub_1002C13BC(v15, v67[17]);

        v4 = v67;
      }

      LOBYTE(v65) = *(v4 + 146);
      BYTE4(v65) = *(v4 + 147);
      v16 = v4;
      v17 = [v4[1] copy];

      v18 = NSComparisonPredicate_ptr;
      if (v17)
      {
        v63 = +[NSMutableArray array];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v19 = [v16[1] copy];
        v20 = [v19 keyEnumerator];

        obj = v20;
        v21 = [v20 countByEnumeratingWithState:&v72 objects:v81 count:16];
        v4 = v16;
        if (v21)
        {
          v22 = v21;
          v23 = *v73;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v73 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v72 + 1) + 8 * j);
              v26 = [v4[1] copy];
              v27 = [v26 objectForKeyedSubscript:v25];

              v28 = [v4[3] copy];
              v29 = [v28 objectForKeyedSubscript:v25];

              v30 = [v4[2] copy];
              v31 = [v30 objectForKeyedSubscript:v25];

              if (v27)
              {
                v32 = sub_1002BB3F0();
                v33 = [v27 integerValue];
                v34 = [v29 integerValue];
                v35 = [v31 integerValue];
                v36 = v34;
                v4 = v67;
                LODWORD(v33) = sub_1002BB548(v32, v25, v33, v36, v35);

                if (v33)
                {
                  [v63 addObject:v25];
                  v65 = 0x100000001;
                }
              }
            }

            v22 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
          }

          while (v22);
        }

        if ([v63 count])
        {
          v37 = sub_1002A20A8(ASDNotification, v63);
          v38 = sub_100003984();
          sub_1003B8178(v38, v37);

          v4 = v67;
        }

        v5 = v62;
        p_info = (PersonalizationManager + 32);
        v18 = NSComparisonPredicate_ptr;
      }

      else
      {
        v4 = v16;
      }

      if (*(v4 + 148) == 1)
      {
        v39 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Auto updates completed", &buf, 2u);
        }

        v40 = [p_info + 466 sharedManager];
        [v40 postProcessBackgroundUpdateMetrics];

        v4 = v67;
      }

      if (*(v4 + 144) == 1)
      {
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Restore completed", &buf, 2u);
        }

        v42 = [p_info + 466 sharedManager];
        [v42 performPostRestoreUpdatesCheck];

        v4 = v67;
      }

      v43 = [v4[15] copy];

      if (v43)
      {
        v44 = [v4[15] copy];
        v45 = objc_alloc_init(v18[246]);
        v46 = sub_1003C27BC();
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v84 = sub_1003C3E10;
        v85 = &unk_10051FD88;
        v47 = v44;
        v86 = v47;
        v87 = v45;
        v48 = v45;
        [v46 readUsingSession:&buf];

        v49 = [v48 copy];
        if ([v49 count])
        {
          v50 = sub_1002856D4();
          sub_100287B80(v50, v49);
        }

        v4 = v67;
      }

      v51 = [v4[10] copy];
    }

    else
    {
      v65 = 0;
      v51 = 0;
    }

    if ([v51 count])
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v64 = v51;
      v52 = v51;
      v53 = [v52 countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v69;
        do
        {
          for (k = 0; k != v54; k = k + 1)
          {
            if (*v69 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v68 + 1) + 8 * k);
            v58 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v57;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Finishing progress for bundleID: %{public}@", &buf, 0xCu);
            }

            v59 = sub_1003649C8();
            sub_100366260(v59, v57, @"Install complete");
          }

          v54 = [v52 countByEnumeratingWithState:&v68 objects:v80 count:16];
        }

        while (v54);
      }

      v4 = v67;
      v5 = v62;
      v51 = v64;
      p_info = PersonalizationManager.info;
    }

    if (v65)
    {
      v60 = [p_info + 466 sharedManager];
      [v60 noteUpdatesStateChanged:@"Updates complete" logKey:0];
    }

    if ((v65 & 0x100000000) != 0)
    {
      v61 = [p_info + 466 sharedManager];
      [v61 reloadApplicationBadgeWithReason:@"Updates complete"];
    }
  }
}

void sub_1003C3368(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = Property;
  sub_1003C33CC(v3, v4);
}

void sub_1003C33CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    sub_100256788(v3, &stru_1005273C0);
    sub_100256834(v4, &stru_100527400);
    sub_1002568E0(v4, &stru_100527420);
    if (v4)
    {
      v5 = [v4[11] copy];

      if (v5)
      {
        v6 = [v4[11] copy];
        v7 = [v6 allObjects];
        [_TtC9appstored13MetricsBridge enqueueAppInstallationEventsWithEvents:v7];
      }

      v8 = [v4[12] copy];

      if (v8)
      {
        v9 = sub_1002AB1B0();
        v10 = [v4[12] copy];
        v11 = [v10 allObjects];
        sub_1002ABA10(v9, v11);
      }

      v12 = [v4[13] copy];

      if (v12)
      {
        v13 = [v4[13] copy];
        v14 = +[NSNotificationCenter defaultCenter];
        [v14 postNotificationName:@"LegacyNotifications" object:v13];
      }

      v15 = [v4[14] copy];

      if (v15)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v16 = [v4[14] copy];
        v17 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v45;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v45 != v19)
              {
                objc_enumerationMutation(v16);
              }

              sub_1003F25C4(Analytics, *(*(&v44 + 1) + 8 * i), 16);
            }

            v18 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v18);
        }
      }

      obj = [v4[9] copy];
      if (obj)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v21)
        {
          v22 = v21;
          v38 = *v41;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v41 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v40 + 1) + 8 * j);
              v25 = [v24 objectForKeyedSubscript:@"bundle_id"];
              v26 = [v24 objectForKeyedSubscript:@"failure_error"];
              v27 = [v24 objectForKeyedSubscript:@"gizmo_pairing_id"];
              v28 = +[ACXDeviceConnection sharedDeviceConnection];
              v39 = 0;
              v29 = [v28 installRequestFailedForApp:v25 onDeviceWithPairingID:v27 failureReason:v26 wasUserInitiated:0 error:&v39];
              v30 = v39;

              if ((v29 & 1) == 0)
              {
                v31 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v49 = v25;
                  v50 = 2114;
                  v51 = v30;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to inform AppConduit about %{public}@ install failing: %{public}@", buf, 0x16u);
                }
              }
            }

            v22 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v22);
        }
      }

      v32 = [v4[4] copy];
      if (v32)
      {
        v33 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v36 = [v32 count];
          *buf = 134218242;
          v49 = v36;
          v50 = 2112;
          v51 = v32;
          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Starting %lu async task(s): %@", buf, 0x16u);
        }

        v34 = sub_100284B90();
        v35 = v34;
        if (v34)
        {
          [*(v34 + 8) addOperations:v32 waitUntilFinished:0];
        }
      }
    }

    else
    {
      v32 = 0;
      obj = 0;
    }
  }
}

void sub_1003C3948(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_1003FACA0();
  if (v4)
  {
    objc_storeWeak(v4 + 2, v3);
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1003C3A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003FACA0();
  if (v3)
  {
    objc_storeWeak(v3 + 2, v4);
  }

  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

void sub_1003C3B20(dispatch_queue_t **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_class();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003C3BD8;
    v5[3] = &unk_100527340;
    v5[4] = a1;
    v6 = v3;
    sub_1002013E4(a1[1], a1, v4, v5);
  }
}

uint64_t sub_1003C3BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003FACA0();
  if (v3)
  {
    objc_storeWeak(v3 + 2, v4);
  }

  v6 = (*(*(a1 + 40) + 16))();
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v3)
    {
      Property = objc_getProperty(v3, v5, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    sub_1003C2BF4(v7, v9);

    v10 = [v3 connection];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003C3D1C;
    v12[3] = &unk_10051B570;
    v12[4] = *(a1 + 32);
    v13 = v3;
    sub_10022C30C(v10, v12);
  }

  return v6;
}

void sub_1003C3D1C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = Property;
  sub_1003C33CC(v3, v4);
}

void sub_1003C3D80(id a1, RecentBag *a2, NSError *a3)
{
  if (a2)
  {
    v3 = a2;
    v6 = [[_TtC9appstored19AppDownloadDoneTask alloc] initWithBag:v3];

    v4 = sub_100284B90();
    v5 = v4;
    if (v4)
    {
      [*(v4 + 8) addOperation:v6];
    }
  }
}

void sub_1003C3E10(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [AppInstallEntity alloc];
        v10 = [v8 longLongValue];
        v11 = [v3 connection];
        v12 = [(SQLiteEntity *)v9 initWithPersistentID:v10 onConnection:v11];

        v13 = [RestoreAppInstall alloc];
        v14 = +[RestoreAppInstall defaultProperties];
        v15 = [(SQLiteMemoryEntity *)v13 initWithDatabaseEntity:v12 properties:v14];

        if (v15)
        {
          [*(a1 + 40) addObject:v15];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_1003C3FB0(id a1, lib_IXAppInstallCoordinatorTag *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v13 = 0;
  v6 = sub_100248D24(IXAppInstallCoordinator, v4, &v13);
  v7 = v13;
  v8 = ASDLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v9)
    {
      *buf = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failing coordinator: %{public}@ failed, couldn't be found error: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v9)
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failing coordinator: %{public}@ with reason: %{public}@", buf, 0x16u);
  }

  v12 = v7;
  v10 = sub_100249ACC(v6, v5, &v12);
  v8 = v12;

  if ((v10 & 1) == 0)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failing coordinator: %{public}@ failed, error occurred: %{public}@", buf, 0x16u);
    }

    v7 = 0;
LABEL_10:

    v8 = v7;
  }
}

void sub_1003C41A8(id a1, lib_IXAppInstallCoordinatorTag *a2)
{
  v2 = a2;
  v10 = 0;
  v3 = sub_100248D24(IXAppInstallCoordinator, v2, &v10);
  v4 = v10;
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v6)
    {
      *buf = 138543618;
      v12 = v2;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pausing coordinator: %{public}@ failed, couldn't be found error: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v6)
  {
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pausing coordinator: %{public}@", buf, 0xCu);
  }

  v9 = v4;
  v7 = [(lib_IXAppInstallCoordinatorTag *)v3 pauseWithError:&v9];
  v5 = v9;

  if ((v7 & 1) == 0)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Pausing coordinator: %{public}@ failed, error occurred: %{public}@", buf, 0x16u);
    }

    v4 = 0;
LABEL_10:

    v5 = v4;
  }
}

void sub_1003C4380(id a1, lib_IXAppInstallCoordinatorTag *a2)
{
  v2 = a2;
  v10 = 0;
  v3 = sub_100248D24(IXAppInstallCoordinator, v2, &v10);
  v4 = v10;
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v6)
    {
      *buf = 138543618;
      v12 = v2;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resuming coordinator: %{public}@ failed, couldn't be found error: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (v6)
  {
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resuming coordinator: %{public}@", buf, 0xCu);
  }

  v9 = v4;
  v7 = [(lib_IXAppInstallCoordinatorTag *)v3 resumeWithError:&v9];
  v5 = v9;

  if ((v7 & 1) == 0)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Resuming coordinator: %{public}@ failed, error occurred: %{public}@", buf, 0x16u);
    }

    v4 = 0;
LABEL_10:

    v5 = v4;
  }
}

void sub_1003C4558(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

void sub_1003C4F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C4F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003C4F3C(uint64_t a1, void *a2)
{
  Property = a2;
  v8 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 120, 1);
  }

  v5 = Property;
  v6 = [v5 asd_galetteMode];

  if ((v6 - 1) <= 1)
  {
    v7 = sub_1003D0F60(v8);
    if (v7)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
    }
  }
}

uint64_t sub_1003C4FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setNeedsThirdPartyPurchasesConfirmationForBundleID:{*(*(&v10 + 1) + 8 * v8), v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 1;
}

id sub_1003C5100(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [AMSPurchase alloc];
  v4 = [v2 purchaseType];
  v5 = [v2 buyParams];
  v6 = [v3 initWithPurchaseType:v4 buyParams:v5];

  v7 = [v2 account];
  [v6 setAccount:v7];

  v8 = [v2 additionalHeaders];
  v9 = [v8 copy];
  [v6 setAdditionalHeaders:v9];

  v10 = [v2 originalPurchaserDSID];
  [v6 setOwnerAccountId:v10];

  v11 = [v2 isUserInitiated];
  [v6 setUserInitiated:v11];
  [v6 setSendBlindedData:v11];
  if (v11)
  {
    v45[0] = @"type01";
    v45[1] = @"type02";
    v12 = [NSArray arrayWithObjects:v45 count:2];
    [v6 setBuySignatureTypes:v12];

    v43 = @"type02";
    v42[0] = AMSFinalizedBlindPublicInputComponentAdamID;
    v42[1] = AMSFinalizedBlindPublicInputComponentIsRedownload;
    v42[2] = AMSFinalizedBlindPublicInputComponentTimestamp;
    v13 = [NSArray arrayWithObjects:v42 count:3];
    v44 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v15 = [v6 buyParams];
    [v15 setObject:v14 forKeyedSubscript:AMSBuyParamPropertyPublicInputComponents];
  }

  [v6 setUseJSONContentType:{objc_msgSend(v2, "useJSONContentType")}];
  [v6 setIgnoreRequirePasswordRestriction:{objc_msgSend(v2, "ignoreRequirePasswordRestriction")}];
  v16 = [v2 presentingSceneIdentifier];
  [v6 setPresentingSceneIdentifier:v16];

  [v6 setIsExceptionRequest:{objc_msgSend(v2, "shouldAskForRatingException")}];
  [v6 setAgeRatingValue:{objc_msgSend(v2, "ageRatingValue")}];
  v17 = [v2 forceAskToBuyReason] - 1;
  if (v17 <= 2)
  {
    [v6 setForceAskToBuyReason:**(&off_1005274E0 + v17)];
  }

  v18 = [v2 metricsOverlay];
  if (v18)
  {
  }

  else
  {
    v19 = [v2 qosMetricsFields];

    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v20 = objc_alloc_init(NSMutableDictionary);
  v21 = [v2 qosMetricsFields];

  if (v21)
  {
    v22 = [v2 bag];
    v23 = [_TtC9appstored20AppInstallationEvent metricsOverlayWithPurchaseInfo:v2 bag:v22];

    [v20 addEntriesFromDictionary:v23];
  }

  v24 = [v2 metricsOverlay];

  if (v24)
  {
    v25 = [v2 metricsOverlay];
    [v20 addEntriesFromDictionary:v25];
  }

  [v6 setMetricsOverlay:v20];

LABEL_13:
  v26 = [v2 performanceMetricsOverlay];
  [v6 setPerformanceMetricsOverlay:v26];

  v27 = [v2 clientInfo];
  v28 = [v2 presentingSceneBundleIdentifier];

  if (v28)
  {
    if (!v27)
    {
      v27 = sub_10000479C();
    }

    v29 = [v2 presentingSceneBundleIdentifier];
    [v27 setProxyAppBundleID:v29];
  }

  [v6 setClientInfo:v27];

  v30 = [_TtC9appstored6LogKey alloc];
  v31 = [v2 logCode];
  v32 = [v2 externalID];
  v33 = [v2 bundleID];
  v34 = [v2 itemID];
  v35 = [(LogKey *)v30 initWithBatchLogKey:0 logCode:v31 externalID:v32 bundleID:v33 itemID:v34];

  v36 = [(LogKey *)v35 description];
  [v6 setLogUUID:v36];

  if ((v11 & 1) == 0)
  {
    [v6 setIgnoreRequirePasswordRestriction:1];
    v37 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = v35;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@] Updating non user initiated purchase password restriction", &v40, 0xCu);
    }
  }

  if ([v2 updateType])
  {
    [v6 setIgnoreRequirePasswordRestriction:1];
    v38 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = v35;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%@] Ignoring require password restriction for update", &v40, 0xCu);
    }
  }

  return v6;
}

BOOL sub_1003C5740(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = [result connection];
    v3 = sub_1002D3DF0(InstallAttributionParamsDatabaseEntity, v2, 0);

    if (v3)
    {
      return 1;
    }

    v4 = [v1 connection];
    v5 = sub_1002D3DF0(InstallAttributionPingbackDatabaseEntity, v4, 0);

    if (v5)
    {
      return 1;
    }

    v6 = [v1 connection];
    v7 = sub_1002D3DF0(InstallAttributionImpressionDatabaseEntity, v6, 0);

    if (v7)
    {
      return 1;
    }

    else
    {
      v8 = [v1 connection];
      v9 = sub_1002D3DF0(InstallAttributionPingbackFetchInfoDatabaseEntity, v8, 0);

      return v9 != 0;
    }
  }

  return result;
}

BOOL sub_1003C5868(_BOOL8 a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"source_app_adam_id", [a2 unsignedLongLongValue]);
    v4 = [v2 connection];
    v5 = sub_1002D3F5C(InstallAttributionImpressionDatabaseEntity, v4, v3);

    v2 = [v5 countOfEntities] > 0;
  }

  return v2;
}

id sub_1003C5914(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v3 longLongValue]);
    v6 = [a1 connection];
    v20 = @"timestamp";
    v7 = [NSArray arrayWithObjects:&v20 count:1];
    v19 = @"DESC";
    v8 = [NSArray arrayWithObjects:&v19 count:1];
    v9 = sub_1002D470C(InstallAttributionWebParamsDatabaseEntity, v6, v5, v7, v8);

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1003C5B6C;
    v17 = sub_1003C5B7C;
    v18 = objc_opt_new();
    v10 = sub_100278EE8();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003C5B84;
    v12[3] = &unk_100520768;
    v12[4] = &v13;
    [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:v12];

    a1 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_1003C5B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C5B6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003C5B84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = objc_opt_new();
  v5 = [v4 objectForKeyedSubscript:@"app_adam_id"];
  sub_100232B60(v13, v5);

  v6 = [v4 objectForKeyedSubscript:@"ad_network_registrable_domain"];
  sub_100232B70(v13, v6);

  v7 = [v4 objectForKeyedSubscript:@"impression_id"];
  sub_10024D43C(v13, v7);

  v8 = [v4 objectForKeyedSubscript:@"source_web_registrable_domain"];
  sub_10024BCA0(v13, v8);

  v9 = [v4 objectForKeyedSubscript:@"version"];
  sub_100232B80(v13, v9);

  v10 = [v4 objectForKeyedSubscript:@"timestamp"];
  sub_100232B90(v13, v10);

  v11 = [v4 objectForKeyedSubscript:@"attribution_context"];

  v12 = [v11 integerValue];
  if (v13)
  {
    v13[7] = v12;
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v13];
}

id sub_1003C5D20(id a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"ad_network_id" equalToValue:v5];

    v12[0] = v6;
    v12[1] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    v10 = sub_1003C5E6C(v3, v9, 0);
    v3 = [v10 firstObject];
  }

  return v3;
}

id sub_1003C5E6C(id a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = objc_opt_new();
    v8 = [v3 connection];
    v9 = sub_1002D4680(InstallAttributionParamsDatabaseEntity, v8, v6, v5);

    v10 = sub_10023F760();
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1003C5FC8;
    v16 = &unk_100522FA8;
    v17 = v7;
    v18 = v3;
    v11 = v7;
    [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:&v13];

    v3 = [NSArray arrayWithArray:v11, v13, v14, v15, v16];
  }

  return v3;
}

void sub_1003C5FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  if (!v4)
  {
    goto LABEL_23;
  }

  v25 = objc_alloc_init(InstallAttributionParams);
  v6 = [v5 objectForKeyedSubscript:@"app_adam_id"];
  sub_100232B60(v25, v6);

  v7 = [v5 objectForKeyedSubscript:@"ad_network_id"];
  sub_100232B70(v25, v7);

  v8 = [v5 objectForKeyedSubscript:@"impression_id"];
  sub_100232B80(v25, v8);

  v9 = [v5 objectForKeyedSubscript:@"timestamp"];
  sub_100232BC0(v25, v9);

  v10 = [v5 objectForKeyedSubscript:@"attribution_signature"];
  sub_100232BD0(v25, v10);

  v11 = [v5 objectForKeyedSubscript:@"source_app_adam_id"];
  sub_100232BA0(v25, v11);

  v12 = [v5 objectForKeyedSubscript:@"fidelity_type"];
  v13 = [v12 integerValue];
  if (v25)
  {
    v25->_fidelityType = v13;
  }

  v14 = [v5 objectForKeyedSubscript:@"version"];
  sub_100232BE0(v25, v14);

  v15 = [v5 objectForKeyedSubscript:@"local_timestamp"];
  sub_1002401FC(v25, v15);

  v16 = [v5 objectForKeyedSubscript:@"interaction_type"];
  sub_100240104(v25, v16);

  v17 = [v5 objectForKeyedSubscript:@"environment"];
  sub_100240114(v25, v17);

  v18 = sub_10023FAA8(v25);
  if (v18 <= 199)
  {
    if (!v18)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[SKAdNetwork]: Unknown version found while unpacking impression params from database entity dictionary", buf, 2u);
      }

      goto LABEL_13;
    }

    if (v18 != 100)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((v18 - 200) < 3)
  {
LABEL_11:
    v19 = [v5 objectForKeyedSubscript:@"campaign_id"];
    v20 = [v19 integerValue];
    if (v25)
    {
      v25->_campaignId = v20;
    }

    goto LABEL_13;
  }

  if (v18 == 400)
  {
    v21 = [v5 objectForKeyedSubscript:@"source_identifier"];
    v22 = [v21 integerValue];
    if (v25)
    {
      v25->_sourceIdentifier = v22;

      if (v25->_fidelityType != 1)
      {
        goto LABEL_14;
      }

      v23 = [v5 objectForKeyedSubscript:@"web_impression_id"];
      objc_storeStrong(&v25->_webImpressionId, v23);

      v24 = [v5 objectForKeyedSubscript:@"source_domain"];
      objc_storeStrong(&v25->_sourceDomain, v24);

      v19 = [v5 objectForKeyedSubscript:@"private_browsing_session_id"];
      objc_storeStrong(&v25->_privateBrowsingSessionId, v19);
LABEL_13:

      goto LABEL_14;
    }

LABEL_23:
    v25 = 0;
    goto LABEL_14;
  }

  if (v18 == 300)
  {
    goto LABEL_11;
  }

LABEL_14:

  [v3 addObject:v25];
}

id sub_1003C6370(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 unsignedLongLongValue]);
    v4 = [v2 connection];
    v5 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v4, v3);

    v6 = [v5 countOfEntities];
    return v6;
  }

  return result;
}

id sub_1003C641C(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 unsignedLongLongValue]);
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"environment" equalToValue:@"development"];
    v10[0] = v3;
    v10[1] = v4;
    v5 = [NSArray arrayWithObjects:v10 count:2];
    v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

    v7 = [v2 connection];
    v8 = sub_1002D3F5C(InstallAttributionParamsDatabaseEntity, v7, v6);

    v2 = [v8 countOfEntities];
  }

  return v2;
}

id sub_1003C6568(id a1, void *a2)
{
  v22 = a2;
  if (a1)
  {
    v39[0] = @"app_adam_id";
    v39[1] = @"ad_network_id";
    v39[2] = @"campaign_id";
    v39[3] = @"source_identifier";
    v39[4] = @"impression_id";
    v39[5] = @"web_impression_id";
    v39[6] = @"timestamp";
    v39[7] = @"attribution_signature";
    v39[8] = @"source_app_adam_id";
    v39[9] = @"source_domain";
    v39[10] = @"version";
    v39[11] = @"local_timestamp";
    v39[12] = @"fidelity_type";
    v39[13] = @"interaction_type";
    v39[14] = @"environment";
    v39[15] = @"private_browsing_session_id";
    v23 = [NSArray arrayWithObjects:v39 count:16];
    v24 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v22 unsignedLongLongValue]);
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_1003C5B6C;
    v31 = sub_1003C5B7C;
    v32 = objc_opt_new();
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"fidelity_type" equalToValue:&off_1005484C0];
    v38[0] = v24;
    v38[1] = v3;
    v20 = v3;
    v4 = [NSArray arrayWithObjects:v38 count:2];
    v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v4];

    v5 = [a1 connection];
    v37 = @"local_timestamp";
    v6 = [NSArray arrayWithObjects:&v37 count:1];
    v36 = @"DESC";
    v7 = [NSArray arrayWithObjects:&v36 count:1];
    v8 = sub_1002D470C(InstallAttributionParamsDatabaseEntity, v5, v21, v6, v7);

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1003C6A78;
    v26[3] = &unk_100520768;
    v26[4] = &v27;
    [v8 enumeratePersistentIDsAndProperties:v23 usingBlock:v26];
    v9 = [v28[5] count];
    v10 = v28[5];
    if (v9 == 6)
    {
      a1 = v10;
    }

    else
    {
      v19 = [v10 count];
      v11 = [SQLiteComparisonPredicate predicateWithProperty:@"fidelity_type" equalToValue:&off_1005484D8];
      v35[0] = v24;
      v35[1] = v11;
      v12 = [NSArray arrayWithObjects:v35 count:2];
      v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

      v14 = [a1 connection];
      v34 = @"local_timestamp";
      v15 = [NSArray arrayWithObjects:&v34 count:1];
      v33 = @"DESC";
      v16 = [NSArray arrayWithObjects:&v33 count:1];
      v17 = sub_1002D470C(InstallAttributionParamsDatabaseEntity, v14, v13, v15, v16);

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1003C6DB0;
      v25[3] = &unk_10051CEE0;
      v25[4] = &v27;
      v25[5] = 6 - v19;
      [v17 enumeratePersistentIDsAndProperties:v23 usingBlock:v25];
      a1 = v28[5];
    }

    _Block_object_dispose(&v27, 8);
  }

  return a1;
}

void sub_1003C6A78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v29 = a3;
  v8 = objc_alloc_init(InstallAttributionParams);
  v9 = [v29 objectForKeyedSubscript:@"app_adam_id"];
  sub_100232B60(v8, v9);

  v10 = [v29 objectForKeyedSubscript:@"ad_network_id"];
  sub_100232B70(v8, v10);

  v11 = [v29 objectForKeyedSubscript:@"version"];
  sub_100232BE0(v8, v11);

  if (v8 && (v12 = v8->_version) != 0 && (v13 = v12, v14 = ASDInstallAttributionVersionCreateFromString(), v13, v14 >= 400))
  {
    v15 = [v29 objectForKeyedSubscript:@"source_identifier"];
    v8->_sourceIdentifier = [v15 integerValue];

    v16 = [v29 objectForKeyedSubscript:@"web_impression_id"];
    sub_100232B90(v8, v16);
  }

  else
  {
    v16 = [v29 objectForKeyedSubscript:@"campaign_id"];
    v17 = [v16 integerValue];
    if (v8)
    {
      v8->_campaignId = v17;
    }
  }

  v18 = [v29 objectForKeyedSubscript:@"impression_id"];
  sub_100232B80(v8, v18);

  v19 = [v29 objectForKeyedSubscript:@"timestamp"];
  sub_100232BC0(v8, v19);

  v20 = [v29 objectForKeyedSubscript:@"attribution_signature"];
  sub_100232BD0(v8, v20);

  v21 = [v29 objectForKeyedSubscript:@"source_app_adam_id"];
  sub_100232BA0(v8, v21);

  v22 = [v29 objectForKeyedSubscript:@"source_domain"];
  sub_100232BB0(v8, v22);

  v23 = [v29 objectForKeyedSubscript:@"private_browsing_session_id"];
  sub_10024020C(v8, v23);

  v24 = [v29 objectForKeyedSubscript:@"local_timestamp"];
  sub_1002401FC(v8, v24);

  v25 = [v29 objectForKeyedSubscript:@"fidelity_type"];
  v26 = [v25 integerValue];
  if (v8)
  {
    v8->_fidelityType = v26;
  }

  v27 = [v29 objectForKeyedSubscript:@"interaction_type"];
  sub_100240104(v8, v27);

  v28 = [v29 objectForKeyedSubscript:@"environment"];
  sub_100240114(v8, v28);

  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  if (a4 == 5)
  {
    *a5 = 1;
  }
}

void sub_1003C6DB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v27 = a3;
  v8 = objc_alloc_init(InstallAttributionParams);
  v9 = [v27 objectForKeyedSubscript:@"app_adam_id"];
  sub_100232B60(v8, v9);

  v10 = [v27 objectForKeyedSubscript:@"ad_network_id"];
  sub_100232B70(v8, v10);

  v11 = [v27 objectForKeyedSubscript:@"version"];
  sub_100232BE0(v8, v11);

  if (v8 && (v12 = v8->_version) != 0 && (v13 = v12, v14 = ASDInstallAttributionVersionCreateFromString(), v13, v14 >= 400))
  {
    v15 = [v27 objectForKeyedSubscript:@"source_identifier"];
    v16 = [v15 integerValue];
    v17 = 32;
  }

  else
  {
    v15 = [v27 objectForKeyedSubscript:@"campaign_id"];
    v16 = [v15 integerValue];
    if (!v8)
    {
      goto LABEL_8;
    }

    v17 = 24;
  }

  *(&v8->super.isa + v17) = v16;
LABEL_8:

  v18 = [v27 objectForKeyedSubscript:@"impression_id"];
  sub_100232B80(v8, v18);

  v19 = [v27 objectForKeyedSubscript:@"timestamp"];
  sub_100232BC0(v8, v19);

  v20 = [v27 objectForKeyedSubscript:@"attribution_signature"];
  sub_100232BD0(v8, v20);

  v21 = [v27 objectForKeyedSubscript:@"source_app_adam_id"];
  sub_100232BA0(v8, v21);

  v22 = [v27 objectForKeyedSubscript:@"local_timestamp"];
  sub_1002401FC(v8, v22);

  v23 = [v27 objectForKeyedSubscript:@"fidelity_type"];
  v24 = [v23 integerValue];
  if (v8)
  {
    v8->_fidelityType = v24;
  }

  v25 = [v27 objectForKeyedSubscript:@"interaction_type"];
  sub_100240104(v8, v25);

  v26 = [v27 objectForKeyedSubscript:@"environment"];
  sub_100240114(v8, v26);

  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  if (*(a1 + 40) == a4 + 1)
  {
    *a5 = 1;
  }
}

id sub_1003C707C(id a1, uint64_t a2, char a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"app_bundle_id" equalToValue:a2];
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"app_adam_id" equalToLongLong:0];
    v7 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:1];
    v8 = v7;
    if (a3)
    {
      v17[0] = v5;
      v17[1] = v6;
      v17[2] = v7;
      v9 = v17;
      v10 = 3;
    }

    else
    {
      v16[0] = v5;
      v16[1] = v6;
      v9 = v16;
      v10 = 2;
    }

    v11 = [NSArray arrayWithObjects:v9 count:v10];
    v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

    v15 = @"local_timestamp";
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    v3 = sub_1003C7208(v3, v12, v13);
  }

  return v3;
}

id sub_1003C7208(id a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = objc_opt_new();
    v8 = [v3 connection];
    v9 = sub_1002D4680(InstallAttributionPingbackDatabaseEntity, v8, v6, v5);

    v10 = sub_1003DBF54();
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1003C93B8;
    v16 = &unk_100522FA8;
    v17 = v3;
    v18 = v7;
    v11 = v7;
    [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:&v13];

    v3 = [NSArray arrayWithArray:v11, v13, v14, v15, v16, v17];
  }

  return v3;
}

id sub_1003C7364(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
    v2 = sub_1003C7208(v2, v3, 0);
  }

  return v2;
}

InstallAttributionPingback *sub_1003C73F0(InstallAttributionPingback *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [a2 longLongValue]);
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:1];
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"is_winning_pingback" equalToLongLong:1];
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"is_developer_pingback" equalToLongLong:0];
    v28[0] = v3;
    v28[1] = v4;
    v28[2] = v5;
    v28[3] = v6;
    v7 = [NSArray arrayWithObjects:v28 count:4];
    v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

    v9 = [(InstallAttributionPingback *)v2 connection];
    v10 = sub_1002D4034(InstallAttributionPingbackDatabaseEntity, v9, v8);

    v11 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v21 = v4;
      v22 = v3;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (sub_1003C7698(v2, v17, v11))
          {
            v18 = sub_1003DBF54();
            v19 = [v17 getValuesForProperties:v18];

            v2 = sub_1003C7988(v2, v19);

            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v2 = 0;
LABEL_12:
      v4 = v21;
      v3 = v22;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1003C7698(uint64_t a1, void *a2, void *a3)
{
  v40 = a3;
  if (!a1)
  {
    v22 = 0;
    v23 = v40;
    goto LABEL_22;
  }

  v5 = a2;
  v6 = sub_100340154(v5, @"conversion_value_timestamp");
  v7 = sub_1003402E8(v5, @"postback_sequence_index");
  v8 = +[BagService appstoredService];
  v9 = [v8 lastBag];
  v10 = [v9 stringForKey:@"install-attribution-conversion-window-lengths"];
  v11 = v10;
  v12 = @"0:2-3:7-8:35";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v5 objectForKeyedSubscript:@"environment"];

  v15 = [_TtC9appstored21SKANEnvironmentHelper windowDurationOverrideForEnvironment:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;

    v13 = v17;
  }

  v18 = sub_1002C5904(v13);
  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v18 objectAtIndexedSubscript:1];
  if (v7 > [v19 count])
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[SKAdNetwork: Postback sequence index is larger than max conversion windows. Aborting.", buf, 2u);
    }

    v22 = 0;
    v23 = v40;
    goto LABEL_21;
  }

  v38 = v14;
  v24 = [v19 objectAtIndexedSubscript:v7];
  v25 = [v24 integerValue];

  v26 = [v20 objectAtIndexedSubscript:v7];
  v27 = [v26 integerValue];

  v39 = v6;
  [v6 doubleValue];
  v29 = [NSDate dateWithTimeIntervalSince1970:v28 / 1000.0];
  v30 = v29;
  v31 = 86400 * v25;
  if (v16)
  {
    v31 = v25;
    v32 = v27;
  }

  else
  {
    v32 = 86400 * v27;
  }

  v33 = [v29 dateByAddingTimeInterval:v31];
  v34 = [v30 dateByAddingTimeInterval:v32];
  v23 = v40;
  v35 = [v40 compare:v34];
  v36 = v35 == 1;
  if (!v7)
  {
    goto LABEL_17;
  }

  if (v35 != 1)
  {
    v36 = [v40 compare:v33] + 1 == 0;
LABEL_17:
    v22 = !v36;
    goto LABEL_20;
  }

  v22 = 0;
LABEL_20:

  v14 = v38;
  v6 = v39;
LABEL_21:

LABEL_22:
  return v22;
}

InstallAttributionPingback *sub_1003C7988(InstallAttributionPingback *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = objc_alloc_init(InstallAttributionPingback);
    v4 = [v3 objectForKeyedSubscript:@"app_adam_id"];
    sub_100232B70(a1, v4);

    v5 = [v3 objectForKeyedSubscript:@"app_bundle_id"];
    sub_10024D43C(a1, v5);

    v6 = [v3 objectForKeyedSubscript:@"ad_network_id"];
    sub_10024BCA0(a1, v6);

    v7 = [v3 objectForKeyedSubscript:@"campaign_id"];
    v8 = [v7 integerValue];
    if (a1)
    {
      a1->_campaignId = v8;
    }

    v9 = [v3 objectForKeyedSubscript:@"source_identifier"];
    sub_100232BC0(a1, v9);

    v10 = [v3 objectForKeyedSubscript:@"transaction_id"];
    sub_100232B90(a1, v10);

    v11 = [v3 objectForKeyedSubscript:@"attribution_signature"];
    sub_100232BA0(a1, v11);

    v12 = [v3 objectForKeyedSubscript:@"source_app_adam_id"];
    sub_100232BB0(a1, v12);

    v13 = [v3 objectForKeyedSubscript:@"source_domain"];
    sub_100232BD0(a1, v13);

    v14 = [v3 objectForKeyedSubscript:@"conversion_value"];
    v15 = [v14 integerValue];
    if (a1)
    {
      a1->_conversionValue = v15;
    }

    v16 = [v3 objectForKeyedSubscript:@"coarse_conversion_value"];
    sub_1002401FC(a1, v16);

    v17 = [v3 objectForKeyedSubscript:@"conversion_value_timestamp"];
    sub_100232BF0(a1, v17);

    v18 = [v3 objectForKeyedSubscript:@"pingback_url"];
    sub_100240104(a1, v18);

    v19 = [v3 objectForKeyedSubscript:@"redownload"];
    v20 = [v19 BOOLValue];
    if (a1)
    {
      a1->_redownload = v20;
    }

    v21 = [v3 objectForKeyedSubscript:@"registered"];
    v22 = [v21 BOOLValue];
    if (a1)
    {
      a1->_registered = v22;
    }

    v23 = [v3 objectForKeyedSubscript:@"retry_count"];
    v24 = [v23 integerValue];
    if (a1)
    {
      a1->_retryCount = v24;
    }

    v25 = [v3 objectForKeyedSubscript:@"retry_timestamp"];
    sub_10024020C(a1, v25);

    v26 = [v3 objectForKeyedSubscript:@"version"];
    sub_10024BB8C(a1, v26);

    v27 = [v3 objectForKeyedSubscript:@"local_timestamp"];
    sub_10024BCB0(a1, v27);

    v28 = [v3 objectForKeyedSubscript:@"maturity_timestamp"];
    sub_10024BCC0(a1, v28);

    v29 = [v3 objectForKeyedSubscript:@"fidelity_type"];
    v30 = [v29 integerValue];
    if (a1)
    {
      a1->_fidelityType = v30;
    }

    v31 = [v3 objectForKeyedSubscript:@"is_winning_pingback"];
    v32 = [v31 BOOLValue];
    if (a1)
    {
      a1->_didWin = v32;
    }

    v33 = [v3 objectForKeyedSubscript:@"postback_sequence_index"];
    v34 = [v33 integerValue];
    if (a1)
    {
      a1->_postbackSequenceIndex = v34;
    }

    v35 = [v3 objectForKeyedSubscript:@"is_developer_pingback"];
    v36 = [v35 BOOLValue];
    if (a1)
    {
      a1->_isDeveloperPingback = v36;
    }

    v37 = [v3 objectForKeyedSubscript:@"is_locked"];
    v38 = [v37 BOOLValue];
    if (a1)
    {
      a1->_isLocked = v38;

      v39 = [v3 objectForKeyedSubscript:@"environment"];
      sub_10024D44C(a1, v39);

      v40 = a1->_version;
      if (v40)
      {
        v41 = ASDInstallAttributionVersionCreateFromString() > 399;
        goto LABEL_23;
      }
    }

    else
    {

      v46 = [v3 objectForKeyedSubscript:@"environment"];
      sub_10024D44C(0, v46);

      v40 = 0;
    }

    v41 = 0;
LABEL_23:

    v42 = [v3 objectForKeyedSubscript:@"should_send_conversion_value"];
    v43 = [v42 BOOLValue];
    if (v41)
    {
      if (a1)
      {
        a1->_shouldSendFineConversionValue = v43;
      }

      v42 = [v3 objectForKeyedSubscript:@"should_send_coarse_conversion_value"];
      v43 = [v42 BOOLValue];
      if (!a1)
      {
        goto LABEL_31;
      }

      v44 = 10;
    }

    else
    {
      if (!a1)
      {
LABEL_31:

        goto LABEL_32;
      }

      v44 = 8;
    }

    *(&a1->super.isa + v44) = v43;
    goto LABEL_31;
  }

LABEL_32:

  return a1;
}

id sub_1003C7EC4(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:1];
    v1 = sub_1003C7208(v1, v2, 0);
  }

  return v1;
}

id sub_1003C7F38(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:1];
    v5 = sub_1003C805C(v3);

    v9[0] = v4;
    v9[1] = v5;
    v6 = [NSArray arrayWithObjects:v9 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

    v2 = sub_1003C7208(v2, v7, 0);
  }

  return v2;
}

id sub_1003C805C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 containsObject:@"development"])
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"environment" equalToValue:@"development"];
    [v2 addObject:v3];
  }

  if ([v1 containsObject:@"production"])
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"environment" equalToValue:@"production"];
    [v2 addObject:v4];

    v5 = [SQLiteNullPredicate isNullPredicateWithProperty:@"environment"];
    [v2 addObject:v5];
  }

  v6 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v2];

  return v6;
}

id sub_1003C8188(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v35 = a3;
  if (a1)
  {
    v34 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:1];
    v33 = sub_1003C805C(v35);
    v70[0] = v34;
    v70[1] = v33;
    v6 = [NSArray arrayWithObjects:v70 count:2];
    v32 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

    v7 = [a1 connection];
    v69 = @"local_timestamp";
    v8 = [NSArray arrayWithObjects:&v69 count:1];
    v68 = @"ASC";
    v9 = [NSArray arrayWithObjects:&v68 count:1];
    v31 = sub_1002D470C(InstallAttributionPingbackDatabaseEntity, v7, v32, v8, v9);

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_1003C5B6C;
    v41 = sub_1003C5B7C;
    v42 = objc_opt_new();
    v10 = sub_1003DBF54();
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1003C88D8;
    v36[3] = &unk_100527500;
    v36[4] = a1;
    v36[5] = &v37;
    [v31 enumeratePersistentIDsAndProperties:v10 usingBlock:v36];

    v11 = v38[5];
    v12 = v5;
    v13 = v11;
    v14 = sub_10036FF4C(v13, &stru_100527520);
    v15 = sub_10036FF4C(v13, &stru_100527540);

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1003C89E4;
    v46[3] = &unk_100527568;
    v16 = v12;
    v47 = v16;
    v17 = sub_10036FF4C(v14, v46);

    v18 = [v16 dateByAddingTimeInterval:-86400.0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1003C8A6C;
    v43[3] = &unk_100527590;
    v19 = v16;
    v44 = v19;
    v45 = v18;
    v30 = v18;
    v20 = sub_10036FF4C(v15, v43);

    v21 = [NSMutableArray arrayWithArray:v17];
    [v21 addObjectsFromArray:v20];
    [v21 sortUsingComparator:&stru_1005275B0];
    v22 = sub_10036FF4C(v21, &stru_1005275D0);
    v23 = sub_10036FF4C(v21, &stru_1005275F0);
    v24 = sub_10036FF4C(v21, &stru_100527610);
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = sub_1003C5B6C;
    v66 = sub_1003C5B7C;
    v67 = objc_opt_new();
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_1003C5B6C;
    v60 = sub_1003C5B7C;
    v61 = objc_opt_new();
    if (v25)
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1003C9414;
      v55[3] = &unk_100527638;
      v55[4] = &v62;
      v55[5] = &v56;
      [v25 enumerateObjectsUsingBlock:v55];
    }

    if (v26)
    {
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = sub_1003C5B6C;
      v53 = sub_1003C5B7C;
      v54 = objc_opt_new();
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1003C9528;
      v48[3] = &unk_100527638;
      v48[4] = &v49;
      v48[5] = &v56;
      [v26 enumerateObjectsUsingBlock:v48];
      [v63[5] unionSet:*(v50 + 40)];
      _Block_object_dispose(&v49, 8);
    }

    if (v27)
    {
      v49 = _NSConcreteStackBlock;
      v50 = 3221225472;
      v51 = sub_1003C963C;
      v52 = &unk_100527638;
      v53 = &v62;
      v54 = &v56;
      [v27 enumerateObjectsUsingBlock:&v49];
    }

    v28 = v57[5];
    _Block_object_dispose(&v56, 8);

    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void sub_1003C8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose((v14 - 240), 8);
  _Block_object_dispose((v14 - 192), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003C88D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1003C7988(*(a1 + 32), a3);
  [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
}

BOOL sub_1003C893C(id a1, InstallAttributionPingback *a2)
{
  if (!a2)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = a2->_version;
  if (!v2)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_4;
  }

  v3 = ASDInstallAttributionVersionCreateFromString() > 399;
LABEL_4:

  return v3;
}

BOOL sub_1003C8990(id a1, InstallAttributionPingback *a2)
{
  if (!a2)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = a2->_version;
  if (!v2)
  {
LABEL_6:
    v3 = 1;
    goto LABEL_4;
  }

  v3 = ASDInstallAttributionVersionCreateFromString() < 400;
LABEL_4:

  return v3;
}

BOOL sub_1003C89E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 152);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 doubleValue];
  v6 = [NSDate dateWithTimeIntervalSince1970:v5 / 1000.0];

  v7 = [v6 compare:*(a1 + 32)] != 1;
  return v7;
}

BOOL sub_1003C8A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[22];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [_TtC9appstored21SKANEnvironmentHelper pingbackDelayOverrideForEnvironment:v6];

  if (!v7 || ([*(a1 + 32) dateByAddingTimeInterval:{-objc_msgSend(v7, "integerValue")}], v8 = objc_claimAutoreleasedReturnValue(), (v9 = v8) == 0))
  {
    v8 = 0;
    v9 = *(a1 + 40);
  }

  v10 = v9;
  if (v4)
  {
    v11 = v4[13];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v12 doubleValue];
  v14 = [NSDate dateWithTimeIntervalSince1970:v13 / 1000.0];

  v15 = [v14 compare:v10];
  return v15 != 1;
}

int64_t sub_1003C8B90(id a1, id a2, id a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = *(a2 + 18);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    v7 = v4[18];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v6 compare:v8];
  return v9;
}

BOOL sub_1003C8C10(id a1, InstallAttributionPingback *a2)
{
  v2 = a2;
  v3 = v2 && v2->_didWin && !v2->_isDeveloperPingback;

  return v3;
}

BOOL sub_1003C8C58(id a1, InstallAttributionPingback *a2)
{
  v2 = a2;
  v3 = v2 && v2->_didWin && v2->_isDeveloperPingback;

  return v3;
}

BOOL sub_1003C8CB8(_BOOL8 a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v18 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v3 longLongValue]);
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"registered" equalToLongLong:1];
    v20[0] = v18;
    v20[1] = v4;
    v5 = [NSArray arrayWithObjects:v20 count:2];
    v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

    v7 = [v3 longLongValue];
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"app_adam_id" equalToLongLong:v7];
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"is_registered" equalToLongLong:1];
    v19[0] = v8;
    v19[1] = v9;
    v10 = [NSArray arrayWithObjects:v19 count:2];
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

    v12 = [v2 connection];
    v13 = sub_1002D3DF0(InstallAttributionPingbackDatabaseEntity, v12, v6);

    v14 = [v2 connection];
    v15 = sub_1002D3DF0(SKANGhostbackEntity, v14, v11);
    v16 = v13 | v15;

    v2 = v16 != 0;
  }

  return v2;
}

id sub_1003C8EE4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v3 longLongValue]);
    v6 = [a1 connection];
    v7 = sub_1002D3F5C(SKANGhostbackEntity, v6, v5);

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1003C5B6C;
    v15 = sub_1003C5B7C;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003C9080;
    v10[3] = &unk_10051B010;
    v10[4] = &v11;
    [v7 enumerateMemoryEntitiesUsingBlock:v10];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1003C9068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003C90B8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"app_adam_id", [v3 longLongValue]);
    v6 = [a1 connection];
    v7 = sub_1002D3F5C(SKANTokenEntity, v6, v5);

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1003C5B6C;
    v15 = sub_1003C5B7C;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003C9254;
    v10[3] = &unk_10051B010;
    v10[4] = &v11;
    [v7 enumerateMemoryEntitiesUsingBlock:v10];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1003C923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003C928C(id a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = objc_opt_new();
    v8 = [v3 connection];
    v9 = sub_1002D4680(SKANGhostbackEntity, v8, v6, v5);

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003C93AC;
    v11[3] = &unk_10051B038;
    v3 = v7;
    v12 = v3;
    [v9 enumerateMemoryEntitiesUsingBlock:v11];
  }

  return v3;
}

void sub_1003C93B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1003C7988(*(a1 + 32), a3);
  [*(a1 + 40) addObject:v4];
}

void sub_1003C9414(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = *(v3 + 4);
    v5 = v10[22];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v5;
  v7 = [_TtC9appstored21SKANEnvironmentHelper shouldUseDevelopmentSettingsForEnvironment:v6];

  if (v10 && (v8 = v10[15]) != 0)
  {
    if (v8 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_10024C5C0(v10);
    }
  }

  else
  {
    v9 = 1;
  }

  if (![*(*(*(a1 + 32) + 8) + 40) containsObject:v4] && ((v7 | v9) & 1) != 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

void sub_1003C9528(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = *(v3 + 4);
    v5 = v10[22];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v5;
  v7 = [_TtC9appstored21SKANEnvironmentHelper shouldUseDevelopmentSettingsForEnvironment:v6];

  if (v10 && (v8 = v10[15]) != 0)
  {
    if (v8 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_10024C5C0(v10);
    }
  }

  else
  {
    v9 = 1;
  }

  if (![*(*(*(a1 + 32) + 8) + 40) containsObject:v4] && ((v7 | v9) & 1) != 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

void sub_1003C963C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = *(v3 + 4);
    v5 = v10[22];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v5;
  v7 = [_TtC9appstored21SKANEnvironmentHelper shouldUseDevelopmentSettingsForEnvironment:v6];

  if (v10 && (v8 = v10[15]) != 0)
  {
    if (v8 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_10024C5C0(v10);
    }
  }

  else
  {
    v9 = 1;
  }

  if (![*(*(*(a1 + 32) + 8) + 40) containsObject:v4] && ((v7 | v9) & 1) != 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

void sub_1003C9768()
{
  objc_opt_self();
  if (qword_1005AAE60 != -1)
  {

    dispatch_once(&qword_1005AAE60, &stru_100527658);
  }
}

void sub_1003C97B8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1005AAE70;
  qword_1005AAE70 = v1;

  v3 = qword_1005AAE70;
  if (qword_1005AAE70)
  {
    v4 = @"com.apple.storekitservice";
    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.storekitservice"];

    [v5 setDelegate:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_1005AAE68;
  qword_1005AAE68 = v5;

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting StoreKit Service", v8, 2u);
  }

  [qword_1005AAE68 resume];
}

void sub_1003CA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003CA394(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1003CA3AC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection to %{public}@ invalidated", &v7, 0x16u);
  }

  return [*(*(*(a1 + 48) + 8) + 40) setExportedObject:0];
}

void sub_1003CA494(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection to %{public}@ interrupted", &v6, 0x16u);
  }
}